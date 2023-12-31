unit Detracao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls,
  ToolWin, adpDBDateTimePicker, Mask, Buttons;

type
  TFrmDetracao = class(TFrmModeloCadastro)
    Label2: TLabel;
    dbeditcodigo: TDBEdit;
    Label7: TLabel;
    DBLookupComboBoxNomeInterno: TDBLookupComboBox;
    Label4: TLabel;
    adpDBDateTimePicker1: TadpDBDateTimePicker;
    lbl7: TLabel;
    DBLookupComboBoxFuncionario: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    Label5: TLabel;
    adpDBDateTimePickerFinal: TadpDBDateTimePicker;
    Label6: TLabel;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label75: TLabel;
    DBEdit6: TDBEdit;
    Label74: TLabel;
    DBEdit5: TDBEdit;
    Label73: TLabel;
    DsConsulta: TDataSource;
    CdsConsulta: TClientDataSet;
    DspConsulta: TDataSetProvider;
    SqlConsulta: TSQLQuery;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    BtnIncluirDocDigitalizado: TBitBtn;
    BtnVisuzalizarDocDigitalizador: TBitBtn;
    DBText1: TDBText;
    SaveDialogDoc: TSaveDialog;
    OpenDialogDoc: TOpenDialog;
    adpDBDateTimePickerInicial: TadpDBDateTimePicker;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure CdsCadastroAfterInsert(DataSet: TDataSet);
    procedure NovoClick(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure SalvarClick(Sender: TObject);
    procedure BtnIncluirDocDigitalizadoClick(Sender: TObject);
    procedure BtnVisuzalizarDocDigitalizadorClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    procedure CalculaPeriodo;
    { Private declarations }
  public
    ID_INTERNO: integer;
    { Public declarations }
  end;

var
  FrmDetracao: TFrmDetracao;

implementation

uses DmPrincipal, Lib, VisualizadorOLE;

{$R *.dfm}

procedure TFrmDetracao.FormCreate(Sender: TObject);
begin
  inherited;

  ID_INTERNO := 0;
  SqlConsulta.Params[0].Value := GLOBAL_ID_UP;
  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

  DM.DsInterno.DataSet.Close;
  DM.SqlInterno.Params[0].Value := GLOBAL_ID_UP;
  DM.DsInterno.DataSet.Open;

  DM.dsfuncionario.DataSet.Close;
  DM.dsfuncionario.DataSet.OPEN;

  {Verifica as permiss�es que o usu�rio possui para esta tela
  e habilita ou n�o os respectivos bot�es.
  Estas verifica��es devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permiss�o referente � tela nas verifica��es abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_DETRACAO)
    and not ContemValor('E', PERMISSAO_DETRACAO)
    and not ContemValor('D', PERMISSAO_DETRACAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_DETRACAO)
    and not ContemValor('E', PERMISSAO_DETRACAO)
    and not ContemValor('D', PERMISSAO_DETRACAO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_DETRACAO)
    and ContemValor('E', PERMISSAO_DETRACAO)
    and not ContemValor('D', PERMISSAO_DETRACAO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_DETRACAO)
    and ContemValor('E', PERMISSAO_DETRACAO)
    and ContemValor('D', PERMISSAO_DETRACAO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_DETRACAO)
    and not ContemValor('E', PERMISSAO_DETRACAO)
    and ContemValor('D', PERMISSAO_DETRACAO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_DETRACAO)
    and not ContemValor('E', PERMISSAO_DETRACAO)
    and ContemValor('D', PERMISSAO_DETRACAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_DETRACAO)
    and ContemValor('E', PERMISSAO_DETRACAO)
    and not ContemValor('D', PERMISSAO_DETRACAO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmDetracao.CdsCadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DsCadastro.DataSet.fieldbyname('IDDETRACAO').AsInteger := 0;
  DsCadastro.DataSet.fieldbyname('DATA_LANCAMENTO').AsDateTime := Date;
  DsCadastro.DataSet.fieldbyname('ID_FUNCIONARIO').AsInteger :=
    GLOBAL_ID_FUNCIONARIO;

end;

procedure TFrmDetracao.NovoClick(Sender: TObject);
begin
  adpDBDateTimePickerInicial.Date := date - 2;
  adpDBDateTimePickerFinal.Date := date - 1;
  inherited;
  adpDBDateTimePickerInicial.MaxDate := date - 2;
  adpDBDateTimePickerFinal.MaxDate := date - 1;
  DsCadastro.DataSet.fieldbyname('DATA_INICIAL').AsDateTime := date - 2;
  DsCadastro.DataSet.fieldbyname('DATA_FINAL').AsDateTime := date - 1;

  if ID_INTERNO > 0 then
  begin
    DsCadastro.DataSet.fieldbyname('ID_INTERNO').AsInteger := ID_INTERNO;
  end;

end;

procedure TFrmDetracao.CalculaPeriodo();
var
  vAno, vMes, vDia: integer;
begin
  try
    if adpDBDateTimePickerInicial.Date >= adpDBDateTimePickerFinal.Date then
    begin

      if DsCadastro.DataSet.FieldByName('ano').AsInteger <> 0 then
        DsCadastro.DataSet.FieldByName('ano').AsInteger := 0;

      if DsCadastro.DataSet.FieldByName('mes').AsInteger <> 0 then
        DsCadastro.DataSet.FieldByName('mes').AsInteger := 0;

      if DsCadastro.DataSet.FieldByName('dia').AsInteger <> 0 then
        DsCadastro.DataSet.FieldByName('dia').AsInteger := 0;

      ShowMessage('Data inicial maior que final.');
      exit;
    end;

    CalcEntreDatas(adpDBDateTimePickerInicial.Date, adpDBDateTimePickerFinal.Date, vAno, vMes, vDia);

    DsCadastro.DataSet.FieldByName('ano').AsInteger := 0;
    DsCadastro.DataSet.FieldByName('mes').AsInteger := 0;
    DsCadastro.DataSet.FieldByName('dia').AsInteger := 0;

    if vAno <> DsCadastro.DataSet.FieldByName('ano').AsInteger then
      DsCadastro.DataSet.FieldByName('ano').AsInteger := vAno;

    if vMes <> DsCadastro.DataSet.FieldByName('mes').AsInteger then
      DsCadastro.DataSet.FieldByName('mes').AsInteger := vMes;

    if vDia <> DsCadastro.DataSet.FieldByName('dia').AsInteger then
      DsCadastro.DataSet.FieldByName('dia').AsInteger := vDia;

  except
  end;

end;

procedure TFrmDetracao.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  with DsCadastro.dataset do
  begin

    if not active then
      exit;

    if IsEmpty then
      exit;

    if not (state in [dsedit, dsinsert]) then
      exit;

  end;

  {Verifica as permiss�es que o usu�rio possui para esta tela
  e habilita ou n�o os respectivos bot�es.
  Estas verifica��es devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permiss�o referente � tela nas verifica��es abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_DETRACAO)
    and not ContemValor('E', PERMISSAO_DETRACAO)
    and not ContemValor('D', PERMISSAO_DETRACAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_DETRACAO)
    and not ContemValor('E', PERMISSAO_DETRACAO)
    and not ContemValor('D', PERMISSAO_DETRACAO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_DETRACAO)
    and ContemValor('E', PERMISSAO_DETRACAO)
    and not ContemValor('D', PERMISSAO_DETRACAO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_DETRACAO)
    and ContemValor('E', PERMISSAO_DETRACAO)
    and ContemValor('D', PERMISSAO_DETRACAO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_DETRACAO)
    and not ContemValor('E', PERMISSAO_DETRACAO)
    and ContemValor('D', PERMISSAO_DETRACAO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_DETRACAO)
    and not ContemValor('E', PERMISSAO_DETRACAO)
    and ContemValor('D', PERMISSAO_DETRACAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_DETRACAO)
    and ContemValor('E', PERMISSAO_DETRACAO)
    and not ContemValor('D', PERMISSAO_DETRACAO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmDetracao.SalvarClick(Sender: TObject);
begin
  CalculaPeriodo();
  if DsCadastro.DataSet.FieldByName('ID_INTERNO').AsInteger <= 0 then
  begin
    ShowMessage('Informe o interno!');
    exit;
  end;
  inherited;
  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;
end;

procedure TFrmDetracao.BtnIncluirDocDigitalizadoClick(Sender: TObject);
var
  s_mensagem: array[0..1000] of Char;
begin
  inherited;

  try
    if DsCadastro.DataSet.FieldByName('NOME_ARQUIVO').AsString <> '' then
    begin
      StrPCopy(s_mensagem, 'Substituir este registro (' + DsCadastro.DataSet.FieldByName('NOME_ARQUIVO').AsString + ')?');

      if Application.MessageBox(s_mensagem,
        'Confirme.', mb_YesNo + Mb_IconQuestion) = idYes then
      begin
        if OpenDialogDoc.Execute then
        begin
          DsCadastro.DataSet.FieldByName('NOME_ARQUIVO').AsString := ExtractFileName(OpenDialogDoc.FileName);
          try
            self.enabled := false;
            SalvarBlobDatabase(DsCadastro, 'ARQUIVO', OpenDialogDoc.FileName);
          except
          end;
          Self.Enabled := true;
        end;
      end;
    end
    else if OpenDialogDoc.Execute then
    begin
      DsCadastro.DataSet.FieldByName('NOME_ARQUIVO').AsString := ExtractFileName(OpenDialogDoc.FileName);
      try
        self.enabled := false;
        SalvarBlobDatabase(DsCadastro, 'ARQUIVO', OpenDialogDoc.FileName);
      except
      end;
      Self.Enabled := true;
    end;

    Self.SetFocus;

  except
    ShowMessage('N�o gravou, tente novamente!');
  end;

end;

procedure TFrmDetracao.BtnVisuzalizarDocDigitalizadorClick(
  Sender: TObject);
var
  nome_arquivo: string;
  Dir: string;
  liberado_acesso: Boolean;
  s_mensagem: array[0..1000] of Char;
  s_senha_digitada: string;
  s_senha_calculada: string;
begin
  inherited;

  if DsCadastro.DataSet.FieldByName('NOME_ARQUIVO').AsString = '' then
  begin
    showmessage('N�o existe arquivo.');
    exit;
  end;

  Dir := GLOBAL_MEUS_DOCUMENTOS + '\view\' + IntToStr(GLOBAL_ID_FUNCIONARIO) + '\';

  if not DirectoryExists(Dir) then
    ForceDirectories(Dir);

  nome_arquivo := Dir + DsCadastro.DataSet.FieldByName('NOME_ARQUIVO').AsString;

  (DsCadastro.DataSet.FieldByName('ARQUIVO') as TBlobField).SaveToFile(nome_arquivo);
  if FileExists(nome_arquivo) then
  begin

    FrmVisualizadorOLE := TFrmVisualizadorOLE.Create(Application);

    with FrmVisualizadorOLE do
    begin
      ObjectFileName := nome_arquivo;
      JaFez := false;
      ShowModal;
    end;

    FreeAndNil(FrmVisualizadorOLE);

  end;

  DeleteFile(nome_arquivo);

end;

procedure TFrmDetracao.Button1Click(Sender: TObject);
begin
  inherited;
  CalculaPeriodo();

end;

end.

