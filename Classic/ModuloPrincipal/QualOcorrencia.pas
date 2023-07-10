unit QualOcorrencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloFormulario, ExtCtrls, FMTBcd, SqlExpr, Provider, DB,
  DBClient, Grids, DBGrids, StdCtrls, Buttons, jpeg;

type
  TFrmQualOcorrencia = class(TFrmModeloFormulario)
    DBGridOcorrencia: TDBGrid;
    DsOcorrencia: TDataSource;
    CdsOcorrencia: TClientDataSet;
    DspOcorrencia: TDataSetProvider;
    SqlOcorrencia: TSQLQuery;
    SqlQuestionamento: TSQLQuery;
    DspQuestionamento: TDataSetProvider;
    CdsQuestionamento: TClientDataSet;
    DsQuestionamento: TDataSource;
    Panel1: TPanel;
    BitBtnConfirma: TBitBtn;
    BitBtnCancela: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure DBGridOcorrenciaDblClick(Sender: TObject);
    procedure BitBtnCancelaClick(Sender: TObject);
    procedure BitBtnConfirmaClick(Sender: TObject);
  private
    IDMOV_OCORRENCIA: Integer;
    procedure QuestionandoOcorrencia;
    procedure MovimentoPessoas;
    function JaTemEstaOcorrencia: boolean;

    { Private declarations }
  public
    Data_Ocorrencia1, Data_Ocorrencia2: TDateTime;
    IDMOV_PROCEDIMENTOS, IDPROCEDIMENTOS: Integer;
    { Public declarations }
  end;

var
  FrmQualOcorrencia: TFrmQualOcorrencia;

implementation

uses DmPrincipal, Lib, InformandoOcorrencia;

{$R *.dfm}

procedure TFrmQualOcorrencia.FormShow(Sender: TObject);
begin
  inherited;
  SqlOcorrencia.ParamByName('IDPROCEDIMENTOS').AsInteger := IDPROCEDIMENTOS;
  DsOcorrencia.DataSet.Close;
  DsOcorrencia.DataSet.Open;

  Self.Height := Self.Height + DsOcorrencia.DataSet.RecordCount * 21;
  PanelTitulo.Caption := Caption;

end;

procedure TFrmQualOcorrencia.DBGridOcorrenciaDblClick(Sender: TObject);
begin
  inherited;
  QuestionandoOcorrencia;
end;

function TFrmQualOcorrencia.JaTemEstaOcorrencia(): boolean;
begin

  DM.SqlExecute.SQL.Text :=

  'SELECT LIST(MIX.DESC_HORA,''; '') DESCRICAO ' +
    'FROM ' +
    '(SELECT MOV_OCORRENCIA.IDMOV_PROCEDIMENTOS, MOV_OCORRENCIA.IDOCORRENCIA, OCORRENCIA.MULTIPLOS_REGISTROS, ' +
    'OCORRENCIA.DESCRICAO||'' em ''||SUBSTR(MOV_OCORRENCIA.data,1,10)||'' (''||SUBSTR(MOV_OCORRENCIA.HORA,1,8)||''H)'' DESC_HORA ' +
    'FROM MOV_OCORRENCIA ' +
    'JOIN OCORRENCIA ON OCORRENCIA.IDOCORRENCIA=MOV_OCORRENCIA.IDOCORRENCIA ' +
    ' WHERE COALESCE(CAST(MOV_OCORRENCIA.DATA AS DATE),CURRENT_DATE) BETWEEN '+QS(FORMATDATETIME('DD.MM.YYYY', Data_Ocorrencia1))+' AND '+QS(FORMATDATETIME('DD.MM.YYYY', Data_Ocorrencia2))+' ' +
    'ORDER BY MOV_OCORRENCIA.DATA DESC, MOV_OCORRENCIA.HORA DESC ' +
    ') MIX ' +
    'WHERE MIX.IDMOV_PROCEDIMENTOS = ' + inttostr(IDMOV_PROCEDIMENTOS) +
    ' AND MIX.IDOCORRENCIA = ' + DsOcorrencia.DataSet.FieldByname('idocorrencia').AsString +
    ' AND COALESCE(MIX.MULTIPLOS_REGISTROS,''S'') = ''N'' ';

  with DM.DsExecute.DataSet do
  begin

    Close;
    Open;
    result := false;
    if not IsEmpty then
    begin
      if trim(FieldByName('DESCRICAO').AsString) <> '' then
      begin
        ShowMessage('Não pode ser lançada inumeras veses.' + #10#13 +' '+#10#13+ FieldByName('DESCRICAO').AsString);
        result := true;
      end;
    end;

  end;

end;

procedure TFrmQualOcorrencia.QuestionandoOcorrencia();
var
  texto: Pchar;
begin

  if JaTemEstaOcorrencia() then
    Exit;

  if DsOcorrencia.DataSet.IsEmpty then
    Exit;

  texto := pchar('Registrar ocorrencia de ' + DsOcorrencia.DataSet.FieldByname('descricao').AsString + '?');

  if Application.MessageBox(texto,
    'Ao confirmar será registrado o ocorrido.', mb_YesNo + Mb_IconQuestion) = idYes then
  begin

    IDMOV_OCORRENCIA := DBGenerator('IDMOV_OCORRENCIA');

    DM.SQLConnect.ExecuteDirect('insert into mov_ocorrencia (idmov_ocorrencia,idocorrencia,data,hora,descricao,idmov_procedimentos) ' +
      'values (' + inttostr(IDMOV_OCORRENCIA) + ',' + DsOcorrencia.DataSet.FieldByname('idocorrencia').AsString +
      ',cast(current_date as timestamp),current_time,' +
      Qs(DsOcorrencia.DataSet.FieldByname('descricao').AsString) + ',' + inttostr(IDMOV_PROCEDIMENTOS) + ')');

    SqlQuestionamento.SQL.Text := 'select * from questionamento where idocorrencia = ' + DsOcorrencia.DataSet.FieldByname('idocorrencia').AsString;
    with DsQuestionamento.DataSet do
    begin
      Close;
      Open;
      if not IsEmpty then
      begin

        First;
        while not Eof do
        begin
          DM.SQLConnect.ExecuteDirect(
            'insert into mov_ocorrencia_quest (idmov_ocorrencia_quest, idmov_ocorrencia, idquestionamento, pergunta, tipo_resposta, resposta_default) ' +
            'values (0, ' + inttostr(IDMOV_OCORRENCIA) + ', ' +
            FieldByname('idquestionamento').AsString + ', ' +
            Qs(FieldByname('pergunta').AsString) + ', ' +
            Qs(FieldByname('tipo_resposta').AsString) + ', ' +
            Qs(FieldByname('resposta').AsString) + ')');
          Next;
        end;

        MovimentoPessoas();
        FrmInformandoOcorrencia := TFrmInformandoOcorrencia.Create(Application);
        FrmInformandoOcorrencia.Caption := DsOcorrencia.DataSet.FieldByname('descricao').AsString;
        FrmInformandoOcorrencia.IDMOV_OCORRENCIA := IDMOV_OCORRENCIA;
        FrmInformandoOcorrencia.IDPROCEDIMENTO_NOVO := DsOcorrencia.DataSet.FieldByname('IDPROCEDIMENTO_NOVO').AsInteger;
        FrmInformandoOcorrencia.PROCEDIMENTO_TEM_DATA := DsOcorrencia.DataSet.FieldByname('PROCEDIMENTO_TEM_DATA').AsString;
        FrmInformandoOcorrencia.ShowModal;
        FreeAndNil(FrmInformandoOcorrencia);

      end
      else
      begin
        ShowMessage(DsOcorrencia.DataSet.FieldByname('descricao').AsString + ': Registro concluido com sucesso.');
      end;
      Close;
    end;

    Close;

  end;
end;

procedure TFrmQualOcorrencia.BitBtnCancelaClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrmQualOcorrencia.BitBtnConfirmaClick(Sender: TObject);
begin
  inherited;
  QuestionandoOcorrencia();
end;

procedure TFrmQualOcorrencia.MovimentoPessoas();
begin
  SqlQuestionamento.SQL.Text := 'select * from mov_procedimentos_adv where IDMOV_PROCEDIMENTOS = ' + IntToStr(IDMOV_PROCEDIMENTOS);
  with DsQuestionamento.DataSet do
  begin
    Close;
    Open;
    if not IsEmpty then
    begin
      First;
      while not Eof do
      begin
        DM.SQLConnect.ExecuteDirect(
          'insert into mov_ocorrencia_adv (idmov_ocorrencia_adv, idmov_ocorrencia, idadvogado) ' +
          'values (0, ' + inttostr(IDMOV_OCORRENCIA) + ', ' +
          FieldByname('idadvogado').AsString + ')');
        Next;
      end;
    end;
  end;

  SqlQuestionamento.SQL.Text := 'select * from mov_procedimentos_func where IDMOV_PROCEDIMENTOS = ' + IntToStr(IDMOV_PROCEDIMENTOS);
  with DsQuestionamento.DataSet do
  begin
    Close;
    Open;
    if not IsEmpty then
    begin
      First;
      while not Eof do
      begin
        DM.SQLConnect.ExecuteDirect(
          'insert into mov_ocorrencia_func (idmov_ocorrencia_func, idmov_ocorrencia, idfuncionario) ' +
          'values (0, ' + inttostr(IDMOV_OCORRENCIA) + ', ' +
          FieldByname('idfuncionario').AsString + ')');
        Next;
      end;
    end;
  end;

  SqlQuestionamento.SQL.Text := 'select * from mov_procedimentos_int where IDMOV_PROCEDIMENTOS = ' + IntToStr(IDMOV_PROCEDIMENTOS);
  with DsQuestionamento.DataSet do
  begin
    Close;
    Open;
    if not IsEmpty then
    begin
      First;
      while not Eof do
      begin
        DM.SQLConnect.ExecuteDirect(
          'insert into mov_ocorrencia_int (idmov_ocorrencia_int, idmov_ocorrencia, idinterno) ' +
          'values (0, ' + inttostr(IDMOV_OCORRENCIA) + ', ' +
          FieldByname('idinterno').AsString + ')');
        Next;
      end;
    end;
  end;

  SqlQuestionamento.SQL.Text := 'select * from mov_procedimentos_vis where IDMOV_PROCEDIMENTOS = ' + IntToStr(IDMOV_PROCEDIMENTOS);
  with DsQuestionamento.DataSet do
  begin
    Close;
    Open;
    if not IsEmpty then
    begin
      First;
      while not Eof do
      begin
        DM.SQLConnect.ExecuteDirect(
          'insert into mov_ocorrencia_vis (idmov_ocorrencia_vis, idmov_ocorrencia, idvisitante) ' +
          'values (0, ' + inttostr(IDMOV_OCORRENCIA) + ', ' +
          FieldByname('idvisitante').AsString + ')');
        Next;
      end;
    end;
  end;

end;

end.

