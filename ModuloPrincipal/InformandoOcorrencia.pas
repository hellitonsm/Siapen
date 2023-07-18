unit InformandoOcorrencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloFormulario, ExtCtrls, ComCtrls, Grids, DBGrids, FMTBcd,
  SqlExpr, DB, DBClient, Provider, StdCtrls, DBCtrls, Mask, Buttons, StrUtils,
  jpeg;

type
  TFrmInformandoOcorrencia = class(TFrmModeloFormulario)
    DBGrid1: TDBGrid;
    PageControlResposta: TPageControl;
    TabSheetPreDefinido: TTabSheet;
    TabSheetTextoCurto: TTabSheet;
    TabSheetTextoLongo: TTabSheet;
    DspMovOcorrenciaQuest: TDataSetProvider;
    CdsMovOcorrenciaQuest: TClientDataSet;
    DsMovOcorrenciaQuest: TDataSource;
    SqlMovOcorrenciaQuest: TSQLQuery;
    DBRadioGroupPreDefinido: TDBRadioGroup;
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Panel1: TPanel;
    BitBtnConfirma: TBitBtn;
    DBNavigator1: TDBNavigator;
    DBMemo1: TDBMemo;
    SqlMovVis: TSQLQuery;
    DspMovVis: TDataSetProvider;
    CdsMovVis: TClientDataSet;
    CdsMovVisIDMOV_PROCEDIMENTOS_VIS: TIntegerField;
    CdsMovVisIDMOV_PROCEDIMENTOS: TIntegerField;
    CdsMovVisIDVISITANTE: TIntegerField;
    CdsMovVisVISITANTE: TStringField;
    DsMovVis: TDataSource;
    DsMovInt: TDataSource;
    CdsMovInt: TClientDataSet;
    CdsMovIntIDMOV_PROCEDIMENTOS_INT: TIntegerField;
    CdsMovIntIDMOV_PROCEDIMENTOS: TIntegerField;
    CdsMovIntIDINTERNO: TIntegerField;
    CdsMovIntINTERNO: TStringField;
    DspMovInt: TDataSetProvider;
    SqlMovInt: TSQLQuery;
    SqlMovFunc: TSQLQuery;
    DspMovFunc: TDataSetProvider;
    CdsMovFunc: TClientDataSet;
    CdsMovFuncIDMOV_PROCEDIMENTOS_FUNC: TIntegerField;
    CdsMovFuncIDMOV_PROCEDIMENTOS: TIntegerField;
    CdsMovFuncIDFUNCIONARIO: TIntegerField;
    CdsMovFuncFUNCIONARIO: TStringField;
    DsMovFunc: TDataSource;
    DsMovAdv: TDataSource;
    CdsMovAdv: TClientDataSet;
    CdsMovAdvIDMOV_PROCEDIMENTOS_ADV: TIntegerField;
    CdsMovAdvIDMOV_PROCEDIMENTOS: TIntegerField;
    CdsMovAdvIDADVOGADO: TIntegerField;
    CdsMovAdvADVOGADO: TStringField;
    DspMovAdv: TDataSetProvider;
    SqlMovAdv: TSQLQuery;
    TabSheetPessoas: TTabSheet;
    PageControlPrincipal: TPageControl;
    TabSheetInterno: TTabSheet;
    DBGridInterno: TDBGrid;
    Panel2: TPanel;
    DBLookupComboBoxInterno: TDBLookupComboBox;
    BtnInserirInterno: TButton;
    BtnDeletarInterno: TButton;
    TabSheetAdvogado: TTabSheet;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    DBLookupComboBoxAdvogado: TDBLookupComboBox;
    BtnInserirAdvogado: TButton;
    BtnDeletarAdvogado: TButton;
    TabSheetFuncionario: TTabSheet;
    DBGrid3: TDBGrid;
    Panel4: TPanel;
    DBLookupComboBoxFuncionario: TDBLookupComboBox;
    BtnInserirFuncionario: TButton;
    BtnDeletarFuncionario: TButton;
    TabSheetVisitante: TTabSheet;
    DBGrid4: TDBGrid;
    Panel5: TPanel;
    DBLookupComboBoxVisitante: TDBLookupComboBox;
    BtnInserirVisitante: TButton;
    BtnDeletarVisitante: TButton;
    CdsMovOcorrenciaQuestIDMOV_OCORRENCIA_QUEST: TIntegerField;
    CdsMovOcorrenciaQuestIDMOV_OCORRENCIA: TIntegerField;
    CdsMovOcorrenciaQuestIDQUESTIONAMENTO: TIntegerField;
    CdsMovOcorrenciaQuestPERGUNTA: TStringField;
    CdsMovOcorrenciaQuestTIPO_RESPOSTA: TStringField;
    CdsMovOcorrenciaQuestRESPOSTA: TStringField;
    CdsMovOcorrenciaQuestRESPOSTA_DEFAULT: TStringField;
    CdsMovOcorrenciaQuestVISIVEL: TStringField;
    SqlQuestionamento: TSQLQuery;
    DspQuestionamento: TDataSetProvider;
    CdsQuestionamento: TClientDataSet;
    DsQuestionamento: TDataSource;
    BitBtnCancela: TBitBtn;
    procedure DsMovOcorrenciaQuestDataChange(Sender: TObject;
      Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtnConfirmaClick(Sender: TObject);
    procedure BtnInserirInternoClick(Sender: TObject);
    procedure BtnDeletarInternoClick(Sender: TObject);
    procedure BtnInserirAdvogadoClick(Sender: TObject);
    procedure BtnDeletarAdvogadoClick(Sender: TObject);
    procedure BtnInserirFuncionarioClick(Sender: TObject);
    procedure BtnDeletarFuncionarioClick(Sender: TObject);
    procedure BtnInserirVisitanteClick(Sender: TObject);
    procedure BtnDeletarVisitanteClick(Sender: TObject);
    procedure CdsMovOcorrenciaQuestCalcFields(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtnCancelaClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    IDMOV_OCORRENCIA_QUEST: Integer;
    IDMOV_PROCEDIMENTOS, IDMOV_PROCEDIMENTOS_PRINCIPAL: Integer;
    vRespostas: string;
    JaConfirmando: boolean;
    function ValidaPreenchimento(vMensagem: boolean = true): Boolean;
    procedure PreenchendoRespostaInterno;
    procedure PreenchendoRespostaAdvogado;
    procedure PreenchendoRespostaFunconario;
    procedure PreenchendoRespostaVisitante;
    procedure MovimentoPessoas;
    { Private declarations }
  public
    IDMOV_OCORRENCIA: Integer;
    IDPROCEDIMENTO_NOVO: Integer;
    PROCEDIMENTO_TEM_DATA: string;
    { Public declarations }
  end;

var
  FrmInformandoOcorrencia: TFrmInformandoOcorrencia;

implementation

uses DmPrincipal, Lib;

{$R *.dfm}

procedure TFrmInformandoOcorrencia.DsMovOcorrenciaQuestDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  with DsMovOcorrenciaQuest.DataSet do
  begin

    if not active then
      Exit;

    if IsEmpty then
      Exit;

    if IDMOV_OCORRENCIA_QUEST <> FieldByName('IDMOV_OCORRENCIA_QUEST').AsInteger then
    begin

      IDMOV_OCORRENCIA_QUEST := FieldByName('IDMOV_OCORRENCIA_QUEST').AsInteger;

      if FieldByName('TIPO_RESPOSTA').AsString = 'Pré Definido' then
      begin
        DBRadioGroupPreDefinido.Items.Text := FieldByName('resposta_default').AsString;
        DBRadioGroupPreDefinido.Values.Text := FieldByName('resposta_default').AsString;
        TabSheetPreDefinido.TabVisible := True;
        TabSheetTextoCurto.TabVisible := False;
        TabSheetTextoLongo.TabVisible := False;
        TabSheetPessoas.TabVisible := False;
        if DBRadioGroupPreDefinido.CanFocus then
          DBRadioGroupPreDefinido.SetFocus;
      end;

      if FieldByName('TIPO_RESPOSTA').AsString = 'Texto Curto' then
      begin
        TabSheetPreDefinido.TabVisible := False;
        TabSheetTextoCurto.TabVisible := True;
        TabSheetTextoLongo.TabVisible := False;
        TabSheetPessoas.TabVisible := False;
        if DBEdit1.CanFocus then
          DBEdit1.SetFocus;
      end;

      if FieldByName('TIPO_RESPOSTA').AsString = 'Texto Longo' then
      begin
        TabSheetPreDefinido.TabVisible := False;
        TabSheetTextoCurto.TabVisible := False;
        TabSheetTextoLongo.TabVisible := True;
        TabSheetPessoas.TabVisible := False;
        if FieldByName('resposta_default').AsString <> '' then
        begin
          if FieldByName('resposta').AsString = '' then
          begin
            Edit;
            FieldByName('resposta').AsString := FieldByName('resposta_default').AsString;
            Post;
          end;
        end;
        if DBMemo1.CanFocus then
          DBMemo1.SetFocus;
      end;

      if FieldByName('TIPO_RESPOSTA').AsString = 'Nome do Interno' then
      begin
        TabSheetPreDefinido.TabVisible := False;
        TabSheetTextoCurto.TabVisible := False;
        TabSheetTextoLongo.TabVisible := False;
        TabSheetPessoas.TabVisible := True;
        TabSheetInterno.TabVisible := True;
        TabSheetAdvogado.TabVisible := False;
        TabSheetFuncionario.TabVisible := False;
        TabSheetVisitante.TabVisible := False;
        if DBLookupComboBoxInterno.CanFocus then
          DBLookupComboBoxInterno.SetFocus;
      end;

      if FieldByName('TIPO_RESPOSTA').AsString = 'Nome do Advogado' then
      begin
        TabSheetPreDefinido.TabVisible := False;
        TabSheetTextoCurto.TabVisible := False;
        TabSheetTextoLongo.TabVisible := False;
        TabSheetPessoas.TabVisible := True;
        TabSheetInterno.TabVisible := False;
        TabSheetAdvogado.TabVisible := True;
        TabSheetFuncionario.TabVisible := False;
        TabSheetVisitante.TabVisible := False;
        if DBLookupComboBoxAdvogado.CanFocus then
          DBLookupComboBoxAdvogado.SetFocus;
      end;

      if FieldByName('TIPO_RESPOSTA').AsString = 'Nome do Visitante' then
      begin
        TabSheetPreDefinido.TabVisible := False;
        TabSheetTextoCurto.TabVisible := False;
        TabSheetTextoLongo.TabVisible := False;
        TabSheetPessoas.TabVisible := True;
        TabSheetInterno.TabVisible := False;
        TabSheetAdvogado.TabVisible := False;
        TabSheetFuncionario.TabVisible := False;
        TabSheetVisitante.TabVisible := True;
        if DBLookupComboBoxVisitante.CanFocus then
          DBLookupComboBoxVisitante.SetFocus;
      end;

      if FieldByName('TIPO_RESPOSTA').AsString = 'Nome do Funcionário' then
      begin
        TabSheetPreDefinido.TabVisible := False;
        TabSheetTextoCurto.TabVisible := False;
        TabSheetTextoLongo.TabVisible := False;
        TabSheetPessoas.TabVisible := True;
        TabSheetInterno.TabVisible := False;
        TabSheetAdvogado.TabVisible := False;
        TabSheetFuncionario.TabVisible := True;
        TabSheetVisitante.TabVisible := False;
        if DBLookupComboBoxFuncionario.CanFocus then
          DBLookupComboBoxFuncionario.SetFocus;
      end;

    end;

  end;
end;

procedure TFrmInformandoOcorrencia.FormCreate(Sender: TObject);
begin

  JaConfirmando := false;
  IDMOV_OCORRENCIA_QUEST := 0;
  IDPROCEDIMENTO_NOVO := 0;
  inherited;
  PageControlResposta.ActivePageIndex := 0;
  TabSheetPreDefinido.TabVisible := False;
  TabSheetTextoCurto.TabVisible := False;
  TabSheetTextoLongo.TabVisible := False;

  PageControlPrincipal.ActivePageIndex := 0;

end;

procedure TFrmInformandoOcorrencia.FormShow(Sender: TObject);
begin
  inherited;

  SqlMovInt.ParamByName('IDMOV_OCORRENCIA').AsInteger := IDMOV_OCORRENCIA;
  SqlMovAdv.ParamByName('IDMOV_OCORRENCIA').AsInteger := IDMOV_OCORRENCIA;
  SqlMovFunc.ParamByName('IDMOV_OCORRENCIA').AsInteger := IDMOV_OCORRENCIA;
  SqlMovVis.ParamByName('IDMOV_OCORRENCIA').AsInteger := IDMOV_OCORRENCIA;

  DsMovAdv.DataSet.Close;
  DsMovAdv.DataSet.Open;

  DsMovFunc.DataSet.Close;
  DsMovFunc.DataSet.Open;

  DsMovInt.DataSet.Close;
  DsMovInt.DataSet.Open;

  DsMovVis.DataSet.Close;
  DsMovVis.DataSet.Open;

  dm.DsAdvogado.DataSet.Close;
  dm.DsAdvogado.DataSet.Open;

  dm.DsFuncionario.DataSet.Close;
  dm.DsFuncionario.DataSet.Open;

  dm.DsInterno.DataSet.Close;
  dm.DsInterno.DataSet.Open;

  dm.DsVisitante.DataSet.Close;
  dm.DsVisitante.DataSet.Open;

  DM.DsProcedimentos.DataSet.Close;
  DM.DsProcedimentos.DataSet.Open;

  SqlMovOcorrenciaQuest.ParamByName('IDMOV_OCORRENCIA').AsInteger := IDMOV_OCORRENCIA;
  DsMovOcorrenciaQuest.DataSet.Close;
  DsMovOcorrenciaQuest.DataSet.Open;
  PanelTitulo.Caption := Caption;

  Self.Height := Self.Height - 20 + DsMovOcorrenciaQuest.DataSet.RecordCount * 21;

end;

function TFrmInformandoOcorrencia.ValidaPreenchimento(vMensagem: boolean): Boolean;
begin
  with DsMovOcorrenciaQuest.DataSet do
  begin

    if not active then
      Exit;

    if IsEmpty then
      Exit;

    Result := True;

    vRespostas := '';
    First;
    while not eof do
    begin
      if vRespostas = '' then
        vRespostas := FieldByName('PERGUNTA').AsString + #13 + ' -' + FieldByName('RESPOSTA').AsString
      else
        vRespostas := vRespostas + '; ' + #10#13 + FieldByName('PERGUNTA').AsString + #13 + ' -' + FieldByName('RESPOSTA').AsString;
      if Trim(FieldByName('RESPOSTA').AsString) = '' then
      begin
        Result := False;
        if vMensagem then
          ShowMessage('Informe-> ' + FieldByName('PERGUNTA').AsString);
        Break;
      end;
      Next;
    end;

  end;
end;

procedure TFrmInformandoOcorrencia.BitBtnConfirmaClick(Sender: TObject);
var
  texto: Pchar;
  sData: string;
  DataProcedimento: TDateTime;
begin
  inherited;

  if JaConfirmando then
    exit;

  if ValidaPreenchimento() then
  begin

    JaConfirmando := true;

    texto := PChar(vRespostas);
    if Application.MessageBox(texto,
      'Ao confirmar será finalizado o registro.', mb_YesNo + Mb_IconQuestion) = idYes then
    begin

      //laço para quanto tem PROCEDIMENTO_NOVO
      if IDPROCEDIMENTO_NOVO > 0 then
      begin
        if DM.DsProcedimentos.DataSet.Locate('IDPROCEDIMENTOS', IDPROCEDIMENTO_NOVO, []) then
        begin
          //laço para quanto tem PROCEDIMENTO_NOVO
          if not DataValida(GLOBAL_ULTIMA_DATA_PROCEDIMENTO) then
            GLOBAL_ULTIMA_DATA_PROCEDIMENTO := FormatDateTime('DD/MM/YYYY', DATE);
          //laço para quanto tem PROCEDIMENTO_NOVO
          if PROCEDIMENTO_TEM_DATA = 'S' then
          begin

            DataProcedimento := InformarData(GLOBAL_ULTIMA_DATA_PROCEDIMENTO, 'do Procedimento');
            GLOBAL_ULTIMA_DATA_PROCEDIMENTO := FormatDateTime('DD/MM/YYYY', DataProcedimento);

            DM.SqlExecute.SQL.Text := 'select idmov_procedimentos from mov_procedimentos where idprocedimentos = ' + inttostr(IDPROCEDIMENTO_NOVO)
              + ' and coalesce(st,''A'') = ''A'' '
              + ' and id_up = ' + inttostr(GLOBAL_ID_UP)
              + ' and data = ' + qs(FormatDateTime('DD.MM.YYYY', DataProcedimento));

          end
          else
          begin
            DM.SqlExecute.SQL.Text := 'select idmov_procedimentos from mov_procedimentos where idprocedimentos = ' + inttostr(IDPROCEDIMENTO_NOVO)
              + ' and coalesce(st,''A'') = ''A'' '
              + ' and id_up = ' + inttostr(GLOBAL_ID_UP)
              + ' and data is null ';
          end;

          //laço para quanto tem PROCEDIMENTO_NOVO
          dm.DsExecute.DataSet.Close;
          dm.DsExecute.DataSet.Open;
          if dm.DsExecute.DataSet.IsEmpty then
          begin
            IDMOV_PROCEDIMENTOS_PRINCIPAL := DBGenerator('IDMOV_PROCEDIMENTOS');
            DM.SQLConnect.Execsql(
              'insert into mov_procedimentos (idmov_procedimentos, idprocedimentos, data, hora_inicial, ' +
              'hora_final, observacao, st, data_encerramento, motivo_encerramento, id_up, idmov_ocorrencia_origem) ' +
              'values (' + inttostr(IDMOV_PROCEDIMENTOS_PRINCIPAL) + ', ' + inttostr(IDPROCEDIMENTO_NOVO) + ', '
              + ifthen(PROCEDIMENTO_TEM_DATA = 'S', qs(FormatDateTime('DD.MM.YYYY', DataProcedimento)), 'null') +
              ', null, null, ' + qs('ORIGEM DA OCORRENCIA: ' + Caption) +
              ', ''A'', null, null, ' +
              inttostr(GLOBAL_ID_UP) + ', ' +
              inttostr(IDMOV_OCORRENCIA) + ')');
          end
          else
          begin
            IDMOV_PROCEDIMENTOS_PRINCIPAL := dm.DsExecute.DataSet.fieldbyname('IDMOV_PROCEDIMENTOS').AsInteger;
          end;

          IDMOV_PROCEDIMENTOS := DBGenerator('IDMOV_PROCEDIMENTOS');
          //laço para quanto tem PROCEDIMENTO_NOVO
          DM.SQLConnect.Execsql(
            'insert into mov_procedimentos (idmov_procedimentos,idmov_procedimentos_principal, idprocedimentos, data, hora_inicial, ' +
            'hora_final, observacao, st, data_encerramento, motivo_encerramento, id_up, idmov_ocorrencia_origem) ' +
            'values (' + inttostr(IDMOV_PROCEDIMENTOS) + ', ' + inttostr(IDMOV_PROCEDIMENTOS_PRINCIPAL) + ', '
            + inttostr(IDPROCEDIMENTO_NOVO) + ', '
            + ifthen(PROCEDIMENTO_TEM_DATA = 'S', qs(FormatDateTime('DD.MM.YYYY', DataProcedimento)), 'null') +
            ', null, null, ' + qs(vRespostas) +
            ', ''A'', null, null, ' +
            inttostr(GLOBAL_ID_UP) + ', ' +
            inttostr(IDMOV_OCORRENCIA) + ')');

          MovimentoPessoas;

        end;
      end;

      IniciaTransMovimento;
      if TClientDataSet(DsMovOcorrenciaQuest.DataSet).ApplyUpdates(0) = 0 then
        FinalizaTransMovimento
      else
      begin
        CancelaTransMovimento;
        ShowMessage('Não pode salvar o movimento.');
      end;
      Close;
    end;
  end;
end;

procedure TFrmInformandoOcorrencia.BtnInserirInternoClick(Sender: TObject);
begin
  inherited;

  if DBLookupComboBoxInterno.KeyValue > 0 then
  begin
    with DsMovInt.DataSet do
    begin
      Append;
      FieldByName('IDMOV_OCORRENCIA_INT').AsInteger := 0;
      FieldByName('IDMOV_OCORRENCIA').AsInteger := IDMOV_OCORRENCIA;
      FieldByName('IDINTERNO').AsInteger := DBLookupComboBoxInterno.KeyValue;
      Post;
    end;
  end
  else
  begin
    ShowMessage('Informe o interno.');
  end;

  PreenchendoRespostaInterno;
end;

procedure TFrmInformandoOcorrencia.BtnDeletarInternoClick(Sender: TObject);
begin
  inherited;
  with DsMovInt.DataSet do
  begin

    if not Active then
      Exit;

    if IsEmpty then
      Exit;

    Delete;

  end;
  PreenchendoRespostaInterno;

end;

procedure TFrmInformandoOcorrencia.BtnInserirAdvogadoClick(
  Sender: TObject);
begin
  inherited;

  if DBLookupComboBoxAdvogado.KeyValue > 0 then
  begin
    with DsMovAdv.DataSet do
    begin
      Append;
      FieldByName('IDMOV_OCORRENCIA_ADV').AsInteger := 0;
      FieldByName('IDMOV_OCORRENCIA').AsInteger := IDMOV_OCORRENCIA;
      FieldByName('IDADVOGADO').AsInteger := DBLookupComboBoxAdvogado.KeyValue;
      Post;
    end;
  end
  else
  begin
    ShowMessage('Informe o advogado.');
  end;
  PreenchendoRespostaAdvogado;

end;

procedure TFrmInformandoOcorrencia.BtnDeletarAdvogadoClick(
  Sender: TObject);
begin
  inherited;

  with DsMovAdv.DataSet do
  begin

    if not Active then
      Exit;

    if IsEmpty then
      Exit;

    Delete;

  end;
  PreenchendoRespostaAdvogado;

end;

procedure TFrmInformandoOcorrencia.BtnInserirFuncionarioClick(
  Sender: TObject);
begin
  inherited;

  if DBLookupComboBoxFuncionario.KeyValue > 0 then
  begin
    with DsMovFunc.DataSet do
    begin
      Append;
      FieldByName('IDMOV_OCORRENCIA_FUNC').AsInteger := 0;
      FieldByName('IDMOV_OCORRENCIA').AsInteger := IDMOV_OCORRENCIA;
      FieldByName('IDFUNCIONARIO').AsInteger := DBLookupComboBoxFuncionario.KeyValue;
      Post;
    end;
  end
  else
  begin
    ShowMessage('Informe o funcionário.');
  end;

  PreenchendoRespostaFunconario;

end;

procedure TFrmInformandoOcorrencia.BtnDeletarFuncionarioClick(
  Sender: TObject);
begin
  inherited;
  with DsMovFunc.DataSet do
  begin

    if not Active then
      Exit;

    if IsEmpty then
      Exit;

    Delete;

  end;
  PreenchendoRespostaFunconario;

end;

procedure TFrmInformandoOcorrencia.BtnInserirVisitanteClick(
  Sender: TObject);
begin
  inherited;

  if DBLookupComboBoxVisitante.KeyValue > 0 then
  begin
    with DsMovVis.DataSet do
    begin
      Append;
      FieldByName('IDMOV_OCORRENCIA_VIS').AsInteger := 0;
      FieldByName('IDMOV_OCORRENCIA').AsInteger := IDMOV_OCORRENCIA;
      FieldByName('IDVISITANTE').AsInteger := DBLookupComboBoxVisitante.KeyValue;
      Post;
    end;
  end
  else
  begin
    ShowMessage('Informe o visitante.');
  end;

  PreenchendoRespostaVisitante;

end;

procedure TFrmInformandoOcorrencia.BtnDeletarVisitanteClick(
  Sender: TObject);
begin
  inherited;

  with DsMovVis.DataSet do
  begin

    if not Active then
      Exit;

    if IsEmpty then
      Exit;

    Delete;

  end;

  PreenchendoRespostaVisitante;

end;

procedure TFrmInformandoOcorrencia.PreenchendoRespostaInterno();
var
  resp_pessoa: string;
begin
  resp_pessoa := '';
  with DsMovInt.DataSet do
  begin
    if active then
    begin
      if not IsEmpty then
      begin
        First;
        while not eof do
        begin
          if resp_pessoa = '' then
            resp_pessoa := FieldByName('INTERNO').AsString
          else
            resp_pessoa := resp_pessoa + ' / ' + FieldByName('INTERNO').AsString;
          Next;
        end;
      end;
    end;
  end;
  if not (DsMovOcorrenciaQuest.DataSet.state in [dsedit]) then
    DsMovOcorrenciaQuest.DataSet.edit;
  DsMovOcorrenciaQuest.DataSet.FieldByName('RESPOSTA').AsString := resp_pessoa;
  DsMovOcorrenciaQuest.DataSet.Post;

end;

procedure TFrmInformandoOcorrencia.PreenchendoRespostaAdvogado();
var
  resp_pessoa: string;
begin
  resp_pessoa := '';
  with DsMovAdv.DataSet do
  begin
    if active then
    begin
      if not IsEmpty then
      begin
        First;
        while not eof do
        begin
          if resp_pessoa = '' then
            resp_pessoa := FieldByName('ADVOGADO').AsString
          else
            resp_pessoa := resp_pessoa + ' / ' + FieldByName('ADVOGADO').AsString;
          Next;
        end;
      end;
    end;
  end;

  if not (DsMovOcorrenciaQuest.DataSet.state in [dsedit]) then
    DsMovOcorrenciaQuest.DataSet.edit;
  DsMovOcorrenciaQuest.DataSet.FieldByName('RESPOSTA').AsString := resp_pessoa;
  DsMovOcorrenciaQuest.DataSet.post;

end;

procedure TFrmInformandoOcorrencia.PreenchendoRespostaFunconario();
var
  resp_pessoa: string;
begin
  resp_pessoa := '';
  with DsMovFunc.DataSet do
  begin
    if active then
    begin
      if not IsEmpty then
      begin
        First;
        while not eof do
        begin
          if resp_pessoa = '' then
            resp_pessoa := FieldByName('FUNCIONARIO').AsString
          else
            resp_pessoa := resp_pessoa + ' / ' + FieldByName('FUNCIONARIO').AsString;
          Next;
        end;
      end;
    end;
  end;

  if not (DsMovOcorrenciaQuest.DataSet.state in [dsedit]) then
    DsMovOcorrenciaQuest.DataSet.edit;
  DsMovOcorrenciaQuest.DataSet.FieldByName('RESPOSTA').AsString := resp_pessoa;
  DsMovOcorrenciaQuest.DataSet.post;

end;

procedure TFrmInformandoOcorrencia.PreenchendoRespostaVisitante();
var
  resp_pessoa: string;
begin
  resp_pessoa := '';
  with DsMovVis.DataSet do
  begin
    if active then
    begin
      if not IsEmpty then
      begin
        First;
        while not eof do
        begin
          if resp_pessoa = '' then
            resp_pessoa := FieldByName('VISITANTE').AsString
          else
            resp_pessoa := resp_pessoa + ' / ' + FieldByName('VISITANTE').AsString;
          Next;
        end;
      end;
    end;
  end;

  if not (DsMovOcorrenciaQuest.DataSet.state in [dsedit]) then
    DsMovOcorrenciaQuest.DataSet.edit;
  DsMovOcorrenciaQuest.DataSet.FieldByName('RESPOSTA').AsString := resp_pessoa;
  DsMovOcorrenciaQuest.DataSet.post;

end;

procedure TFrmInformandoOcorrencia.CdsMovOcorrenciaQuestCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('visivel').AsString := DataSet.FieldByName('pergunta').AsString + ' ' + DataSet.FieldByName('resposta').AsString;
end;

procedure TFrmInformandoOcorrencia.MovimentoPessoas();
begin

  //laço para quanto tem PROCEDIMENTO_NOVO
  SqlQuestionamento.SQL.Text := 'select * from mov_ocorrencia_adv where IDMOV_OCORRENCIA = ' + IntToStr(IDMOV_OCORRENCIA);
  with DsQuestionamento.DataSet do
  begin
    Close;
    Open;
    if not IsEmpty then
    begin
      First;
      while not Eof do
      begin
        DM.SQLConnect.Execsql(
          'insert into mov_procedimentos_adv (idmov_procedimentos_adv, idmov_procedimentos, idadvogado) ' +
          'values (0, ' + inttostr(IDMOV_PROCEDIMENTOS) + ', ' +
          FieldByname('idadvogado').AsString + ')');
        Next;
      end;
    end;
  end;

  //laço para quanto tem PROCEDIMENTO_NOVO
  SqlQuestionamento.SQL.Text := 'select * from mov_ocorrencia_func where IDMOV_OCORRENCIA = ' + IntToStr(IDMOV_OCORRENCIA);
  with DsQuestionamento.DataSet do
  begin
    Close;
    Open;
    if not IsEmpty then
    begin
      First;
      while not Eof do
      begin
        DM.SQLConnect.Execsql(
          'insert into mov_procedimentos_func (idmov_procedimentos_func, idmov_procedimentos, idfuncionario) ' +
          'values (0, ' + inttostr(IDMOV_OCORRENCIA) + ', ' +
          FieldByname('idfuncionario').AsString + ')');
        Next;
      end;
    end;
  end;

  //laço para quanto tem PROCEDIMENTO_NOVO
  SqlQuestionamento.SQL.Text := 'select * from mov_ocorrencia_int where IDMOV_OCORRENCIA = ' + IntToStr(IDMOV_OCORRENCIA);
  with DsQuestionamento.DataSet do
  begin
    Close;
    Open;
    if not IsEmpty then
    begin
      First;
      while not Eof do
      begin
        DM.SQLConnect.Execsql(
          'insert into mov_procedimentos_int (idmov_procedimentos_int, idmov_procedimentos, idinterno) ' +
          'values (0, ' + inttostr(IDMOV_PROCEDIMENTOS) + ', ' +
          FieldByname('idinterno').AsString + ')');
        Next;
      end;
    end;
  end;

  //laço para quanto tem PROCEDIMENTO_NOVO
  SqlQuestionamento.SQL.Text := 'select * from mov_ocorrencia_vis where IDMOV_OCORRENCIA = ' + IntToStr(IDMOV_OCORRENCIA);
  with DsQuestionamento.DataSet do
  begin
    Close;
    Open;
    if not IsEmpty then
    begin
      First;
      while not Eof do
      begin
        DM.SQLConnect.Execsql(
          'insert into mov_procedimentos_vis (idmov_procedimentos_vis, idmov_procedimentos, idvisitante) ' +
          'values (0, ' + inttostr(IDMOV_PROCEDIMENTOS) + ', ' +
          FieldByname('idvisitante').AsString + ')');
        Next;
      end;
    end;
  end;

end;

procedure TFrmInformandoOcorrencia.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;

  if not ValidaPreenchimento(False) then
  begin

    CanClose := False;

    if Application.MessageBox('Abortar lançamento?',
      'Confirme', mb_YesNo + Mb_IconQuestion) = idYes then
    begin

      DsMovVis.DataSet.Close;
      DsMovInt.DataSet.Close;
      DsMovFunc.DataSet.Close;
      DsMovAdv.DataSet.Close;

      DM.SQLConnect.Execsql('delete from mov_ocorrencia_quest where idmov_ocorrencia = ' + IntToStr(IDMOV_OCORRENCIA));
      DM.SQLConnect.Execsql('delete from mov_ocorrencia where idmov_ocorrencia = ' + IntToStr(IDMOV_OCORRENCIA));

      CanClose := True;

    end;

  end
  else
  begin
    if not JaConfirmando then
      BitBtnConfirmaClick(nil);
  end;

end;

procedure TFrmInformandoOcorrencia.BitBtnCancelaClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrmInformandoOcorrencia.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

  if (State = [gdSelected]) then
  begin
    TDBGrid(Sender).Canvas.Brush.color := $00854F3F;
    TDBGrid(Sender).Canvas.Font.Color := clWhite;
    TDBGrid(Sender).Canvas.FillRect(rect);
    TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
  end;

end;

end.

