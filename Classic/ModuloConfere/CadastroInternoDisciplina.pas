unit CadastroInternoDisciplina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloInterno, FMTBcd, DB, DBClient, Provider, SqlExpr, ImgList,
  ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Mask, Buttons,
  ToolWin, jpeg, dbcgrids, Menus, adpDBDateTimePicker;

type
  TFrmCadastroInternoDisciplina = class(TFrmModeloInterno)
    TabSheetDisciplina: TTabSheet;
    PageControlDisciplina: TPageControl;
    faltasdisciplinares: TTabSheet;
    TabSheet20: TTabSheet;
    GroupBox1: TGroupBox;
    DBGrid5: TDBGrid;
    DBLookupComboBoxartigoperfil: TDBLookupComboBox;
    Label8: TLabel;
    Dsvincfaltadisciplinar: TDataSource;
    Cdsvincfaltadisciplinar: TClientDataSet;
    Cdsvincfaltadisciplinarfalta_disciplinar: TStringField;
    CdsvincfaltadisciplinarID_FALTA_DISCIPLINAR: TIntegerField;
    CdsvincfaltadisciplinarID_VINC_FALTA_DISCIPLINAR: TIntegerField;
    CdsvincfaltadisciplinarID_INTERNO: TIntegerField;
    CdsvincfaltadisciplinarDATA_INCIDENCIA: TSQLTimeStampField;
    CdsvincfaltadisciplinarDATA_REABILITACAO: TSQLTimeStampField;
    CdsvincfaltadisciplinarOBS: TStringField;
    Dspvincpfaltadisciplinar: TDataSetProvider;
    Sqlvincfaltadisciplinar: TSQLQuery;
    dsvincartigoperfil: TDataSource;
    cdsvincartigoperfil: TClientDataSet;
    DSPvincartigoperfil: TDataSetProvider;
    SQLvincartigoperfil: TSQLQuery;
    SQLcalcfaltadisciplinar: TSQLQuery;
    DSPcalcfaltadisciplinar: TDataSetProvider;
    CDScalcfaltadisciplinar: TClientDataSet;
    DScalcfaltadisciplinar: TDataSource;
    SQLHISTORICO_interno: TSQLQuery;
    DSPHISTORICO_interno: TDataSetProvider;
    CDSHISTORICO_interno: TClientDataSet;
    CDSHISTORICO_internoIDHISTORICO_INTERNO: TIntegerField;
    CDSHISTORICO_internoDESCRICAO: TStringField;
    CDSHISTORICO_internoDATA_HORA: TSQLTimeStampField;
    CDSHISTORICO_internoIDINTERNO: TIntegerField;
    CDSHISTORICO_internoSTATUS: TStringField;
    CDSHISTORICO_internoMOTIVO_SAIDA: TStringField;
    CDSHISTORICO_internoIDPROCEDENCIA: TIntegerField;
    CDSHISTORICO_internoIDUP: TIntegerField;
    CDSHISTORICO_internoSETOR: TStringField;
    CDSHISTORICO_internoID_FUNCIONARIO: TIntegerField;
    DSHISTORICO_interno: TDataSource;
    CdsvincfaltadisciplinarCONCLUSAOCD: TStringField;
    CdsvincfaltadisciplinarNUMERO_PDI: TStringField;
    CdsvincfaltadisciplinarDATA_CONDENACAO: TSQLTimeStampField;
    CdsvincfaltadisciplinarRESULTADO: TStringField;
    CdsvincfaltadisciplinarDATA_RESULTADO: TSQLTimeStampField;
    PopupMenuIsolamento: TPopupMenu;
    Liberar1: TMenuItem;
    CdsvincfaltadisciplinarDT_INICIO_ISOLAMENTO: TSQLTimeStampField;
    CdsvincfaltadisciplinarDT_FIM_ISOLAMENTO: TSQLTimeStampField;
    CdsvincfaltadisciplinarQTDE_DIAS_ISOLAMENTO: TIntegerField;
    CdsvincfaltadisciplinarSTATUS: TStringField;
    Excluir1: TMenuItem;
    CdsvincfaltadisciplinarID_UP: TIntegerField;
    CDSHISTORICO_internoTIPO_HISTORICO: TStringField;
    SQLhistoricoelogio: TSQLQuery;
    dsphistoricoelogio: TDataSetProvider;
    cdshistoricoelogio: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    SQLTimeStampField1: TSQLTimeStampField;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField4: TStringField;
    IntegerField5: TIntegerField;
    StringField5: TStringField;
    dshistoricoelogio: TDataSource;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Label51: TLabel;
    Label56: TLabel;
    DateTimePickerelogio: TDateTimePicker;
    Memoelogio: TMemo;
    DBGrid2: TDBGrid;
    DBMemo2: TDBMemo;
    BitBtn2: TBitBtn;
    Label53: TLabel;
    DateTimePickerHistorico: TDateTimePicker;
    MemoDescricao: TMemo;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    EditarFalta1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Dsfaltadisciplinar: TDataSource;
    Cdsfaltadisciplinar: TClientDataSet;
    Dspfaltadisciplinar: TDataSetProvider;
    Sqlfaltadisciplinar: TSQLQuery;
    SqlExecute: TSQLQuery;
    TabSheet1: TTabSheet;
    DBComboBox6: TDBComboBox;
    Label70: TLabel;
    Label120: TLabel;
    DBLookupComboBoxfaltadisciplinar: TDBLookupComboBox;
    Memo1: TMemo;
    Label16: TLabel;
    Editpdi: TEdit;
    Label121: TLabel;
    DateTimePickerdataincidencia: TDateTimePicker;
    Label17: TLabel;
    ComboBoxconclusao: TComboBox;
    Label15: TLabel;
    Editcondenacao: TEdit;
    Label26: TLabel;
    Editreabilitacao: TEdit;
    btnBuscar: TButton;
    SpeedButton12: TSpeedButton;
    Label41: TLabel;
    ComboBoxresultado: TComboBox;
    Editresultado: TEdit;
    Label29: TLabel;
    Label50: TLabel;
    Editqtdedias: TEdit;
    Label42: TLabel;
    Editinicioisolamento: TEdit;
    Label122: TLabel;
    Memoobs: TMemo;
    BitBtn1: TBitBtn;
    DBGrid6: TDBGrid;
    Label14: TLabel;
    ComboBoxtipoprocedimento: TComboBox;
    Label57: TLabel;
    Editprocedimento: TEdit;
    Label58: TLabel;
    Editnprocedimento: TEdit;
    CdsvincfaltadisciplinarNUMERO: TStringField;
    CdsvincfaltadisciplinarDATA_INSTAURACAO: TSQLTimeStampField;
    CdsvincfaltadisciplinarTIPO: TStringField;
    Label59: TLabel;
    DBEdit15: TDBEdit;
    DBEdit36: TDBEdit;
    Label77: TLabel;
    Label60: TLabel;
    DBEdit38: TDBEdit;
    EditDataInstPortaria: TEdit;
    Label61: TLabel;
    SqlvincfaltadisciplinarID_VINC_FALTA_DISCIPLINAR: TIntegerField;
    SqlvincfaltadisciplinarID_FALTA_DISCIPLINAR: TIntegerField;
    SqlvincfaltadisciplinarID_INTERNO: TIntegerField;
    SqlvincfaltadisciplinarDATA_INCIDENCIA: TSQLTimeStampField;
    SqlvincfaltadisciplinarDATA_REABILITACAO: TSQLTimeStampField;
    SqlvincfaltadisciplinarOBS: TStringField;
    SqlvincfaltadisciplinarCONCLUSAOCD: TStringField;
    SqlvincfaltadisciplinarNUMERO_PDI: TStringField;
    SqlvincfaltadisciplinarDATA_CONDENACAO: TSQLTimeStampField;
    SqlvincfaltadisciplinarRESULTADO: TStringField;
    SqlvincfaltadisciplinarDATA_RESULTADO: TSQLTimeStampField;
    SqlvincfaltadisciplinarDT_INICIO_ISOLAMENTO: TSQLTimeStampField;
    SqlvincfaltadisciplinarDT_FIM_ISOLAMENTO: TSQLTimeStampField;
    SqlvincfaltadisciplinarQTDE_DIAS_ISOLAMENTO: TIntegerField;
    SqlvincfaltadisciplinarSTATUS: TStringField;
    SqlvincfaltadisciplinarID_UP: TIntegerField;
    SqlvincfaltadisciplinarNUMERO: TStringField;
    SqlvincfaltadisciplinarDATA_INSTAURACAO: TSQLTimeStampField;
    SqlvincfaltadisciplinarTIPO: TStringField;
    SqlvincfaltadisciplinarDATA_INST_PORTARIA: TSQLTimeStampField;
    CdsvincfaltadisciplinarDATA_INST_PORTARIA: TSQLTimeStampField;
    ComboBoxNatureza: TComboBox;
    Label62: TLabel;
    RadioGroup1: TRadioGroup;
    Label48: TLabel;
    Editfimisolamento: TEdit;
    Label67: TLabel;
    Label68: TLabel;
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBComboBox6KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid6DblClick(Sender: TObject);
    procedure EditqtdediasExit(Sender: TObject);
    procedure Liberar1Click(Sender: TObject);
    procedure DsvincfaltadisciplinarDataChange(Sender: TObject;
      Field: TField);
    procedure BitBtn1Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EditarFalta1Click(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure CdsvincfaltadisciplinarCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure CancelarClick(Sender: TObject);
    procedure PageControlModeloCadastroChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroInternoDisciplina: TFrmCadastroInternoDisciplina;

implementation

uses DmPrincipal, CadastroFaltasDisciplinares, Lib, ConclusaoCD,
  SituacaoDisciplinar, VincFaltaDisiciplinar, ModeloCadastro;

{$R *.dfm}

procedure TFrmCadastroInternoDisciplina.Button4Click(Sender: TObject);
var
  temporeabilitacao: Integer;
begin

  inherited;
  if DBLookupComboBoxfaltadisciplinar.Text = '' then
  begin
    showmessage('Digite a Falta Disciplinar!');
    exit;
  end;

  if Editpdi.Text = '' then
  begin
    showmessage('Digite o Número do PDI!');
    exit;
  end;

  //  if Dsfaltadisciplinar.DataSet.Locate('id_falta_disciplinar', DBLookupComboBoxfaltadisciplinar.KeyValue, []) = true then
  temporeabilitacao := Dsfaltadisciplinar.DataSet.fieldbyname('temporeabilitacao').AsInteger;

  DScalcfaltadisciplinar.DataSet.close;
  SQLcalcfaltadisciplinar.params[0].value := temporeabilitacao;
  SQLcalcfaltadisciplinar.params[1].value := DateTimePickerdataincidencia.Date;
  DScalcfaltadisciplinar.DataSet.Open;

  if not Dsvincfaltadisciplinar.DataSet.Active then
    Dsvincfaltadisciplinar.DataSet.Open;

  {Lancando na tabela de vinculo interno/faltadisciplinar}
  Dsvincfaltadisciplinar.DataSet.Append;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('ID_vinc_falta_disciplinar').AsInteger := 0;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('id_interno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('id_falta_disciplinar').AsInteger := DBLookupComboBoxfaltadisciplinar.KeyValue;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_incidencia').AsString := FormatDateTime('dd/mm/yyyy', DateTimePickerdataincidencia.Date);
  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_reabilitacao').AsString := Editreabilitacao.TEXT;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_condenacao').AsString := Editcondenacao.TEXT;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('obs').AsString := memoobs.text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('conclusaocd').AsString := ComboBoxconclusao.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('numero_pdi').AsString := Editpdi.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('resultado').AsString := ComboBoxresultado.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_resultado').AsString := Editresultado.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('dt_inicio_isolamento').AsString := Editinicioisolamento.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('dt_fim_isolamento').AsString := Editfimisolamento.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('qtde_dias_isolamento').AsString := Editqtdedias.Text;

  Dsvincfaltadisciplinar.DataSet.Post;

  DBLookupComboBoxfaltadisciplinar.KeyValue := null;
  Editreabilitacao.Text := '';
  Editcondenacao.Text := '';
  memoobs.Text := '';
  Editcondenacao.Text := '';
  Editpdi.Text := '';
  ComboBoxresultado.Text := '';
  ComboBoxconclusao.Text := '';
  DateTimePickerdataincidencia.Date := Date;

end;

procedure TFrmCadastroInternoDisciplina.FormShow(Sender: TObject);
begin
  inherited;
  DSvincartigoperfil.DataSet.Close;
  DSvincartigoperfil.DataSet.OPEN;

  //  Dsfaltadisciplinar.DataSet.Close;
  //  Dsfaltadisciplinar.DataSet.Open;

  Dsvincfaltadisciplinar.DataSet.Close;
  Dsvincfaltadisciplinar.DataSet.OPEN;

  PageControlDisciplina.ActivePageIndex := 0;
  DateTimePickerdataincidencia.Date := Date;

  DSHISTORICO_interno.DataSet.Close;
  DSHISTORICO_interno.DataSet.OPEN;

  dshistoricoelogio.DataSet.Close;
  dshistoricoelogio.DataSet.OPEN;

  DateTimePickerHistorico.Date := Date;
  DateTimePickerelogio.Date := Date;

end;

procedure TFrmCadastroInternoDisciplina.EditarClick(Sender: TObject);
begin
  inherited;
  PageControlDisciplina.ActivePageIndex := 0;

end;

procedure TFrmCadastroInternoDisciplina.SalvarClick(Sender: TObject);
var
  iErro, ierro1: integer;
begin

  try
    StatusBar1.Panels[1].Text := 'SALVANDO';
    Novo.Enabled := True;
    Editar.Enabled := True;
    Excluir.Enabled := True;
    Salvar.Enabled := False;
    Cancelar.Enabled := False;

    if DsCadastro.DataSet.State in [dsedit, dsinsert] then
      DsCadastro.DataSet.Post;

    if Dsvincfaltadisciplinar.DataSet.State in [dsedit, dsinsert] then
      Dsvincfaltadisciplinar.DataSet.Post;

    if dsvincartigoperfil.DataSet.State in [dsedit, dsinsert] then
      dsvincartigoperfil.DataSet.Post;

    if DSHISTORICO_interno.DataSet.State in [dsedit, dsinsert] then
      DSHISTORICO_interno.DataSet.Post;

    if dshistoricoelogio.DataSet.State in [dsedit, dsinsert] then
      dshistoricoelogio.DataSet.Post;

    IniciaTransCadastro;

    iErro := TClientDataSet(DsCadastro.DataSet).ApplyUpdates(0)
      + TClientDataSet(dsvincartigoperfil.DataSet).ApplyUpdates(0)
      + TClientDataSet(Dsvincfaltadisciplinar.DataSet).ApplyUpdates(0)
      + TClientDataSet(DSHISTORICO_interno.DataSet).ApplyUpdates(0)
      + TClientDataSet(dshistoricoelogio.DataSet).ApplyUpdates(0);

    if iErro = 0 then
      finalizaTransCadastro
    else
      CancelaTransCadastro;
    StatusBar1.Panels[1].Text := '...';
    DsCadastro.DataSet.Refresh;
    PanelCadastro.Enabled := False;
  except
    ShowMessage('Erro na transação');
  end;
  CorNosCampos;
  PageControlPrincipal.ActivePageIndex := 0;

  Dsvincfaltadisciplinar.DataSet.Close;
  Dsvincfaltadisciplinar.DataSet.OPEN;

  dsvincartigoperfil.DataSet.Close;
  dsvincartigoperfil.DataSet.OPEN;

  DSHISTORICO_interno.DataSet.Close;
  DSHISTORICO_interno.DataSet.OPEN;

  dshistoricoelogio.DataSet.Close;
  dshistoricoelogio.DataSet.Open

end;

procedure TFrmCadastroInternoDisciplina.SpeedButton12Click(
  Sender: TObject);
begin
  inherited;
  Frmcadastrofaltasdisciplinares := TFrmcadastrofaltasdisciplinares.Create(Application);
  Frmcadastrofaltasdisciplinares.ShowModal;
  FreeAndNil(Frmcadastrofaltasdisciplinares);

  Dsfaltadisciplinar.DataSet.Close;
  Dsfaltadisciplinar.DataSet.OPEN;

end;

procedure TFrmCadastroInternoDisciplina.Button1Click(Sender: TObject);
begin
  inherited;

  DSHISTORICO_interno.DataSet.Append;
  DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
  DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsString :=
    FormatDateTime('dd/mm/yyyy', DateTimePickerHistorico.Date);
  DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString := MemoDescricao.Lines.Text;
  DSHISTORICO_interno.DataSet.fieldbyname('setor').AsString := 'Disciplina';
  DSHISTORICO_interno.DataSet.fieldbyname('ID_FUNCIONARIO').AsInteger := GLOBAL_ID_FUNCIONARIO;
  DSHISTORICO_interno.DataSet.Post;

  MemoDescricao.Lines.Clear;

end;

procedure TFrmCadastroInternoDisciplina.DBComboBox6KeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  Key := #0;
end;

procedure TFrmCadastroInternoDisciplina.DBGrid6DblClick(Sender: TObject);
var
  cod: integer;
begin
  {  cod := Dsvincfaltadisciplinar.DataSet.FieldByName('id_vinc_falta_disciplinar').AsInteger;

    if Dsvincfaltadisciplinar.DataSet.Locate('id_vinc_falta_disciplinar', cod, []) = true then
    begin

      if Dsvincfaltadisciplinar.DataSet.FieldByName('conclusaocd').AsString <> 'Concluido/Arquivado' then
      begin

        Frmconclusaocd := TFrmconclusaocd.Create(Self);
        Frmconclusaocd.ShowModal;

        if MessageDlg('Confirma Informação, Conclusão de PDI ' + FrmConclusaoCD.ComboBoxsituacaopdi.Text, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          Dsvincfaltadisciplinar.DataSet.Edit;
          Dsvincfaltadisciplinar.DataSet.FieldByName('conclusaocd').AsString := FrmConclusaoCD.ComboBoxsituacaopdi.Text;
          Dsvincfaltadisciplinar.DataSet.fieldbyname('data_reabilitacao').AsString := FrmConclusaoCD.Editdtreabilitacao.TEXT;
          Dsvincfaltadisciplinar.DataSet.fieldbyname('data_condenacao').AsString := FrmConclusaoCD.Editdtcondenacao.TEXT;
          Dsvincfaltadisciplinar.DataSet.fieldbyname('resultado').AsString := FrmConclusaoCD.ComboBox2.Text;
          Dsvincfaltadisciplinar.DataSet.fieldbyname('data_resultado').AsString := FrmConclusaoCD.Edit5.Text;
          Dsvincfaltadisciplinar.DataSet.Post;
        end
        else
          ShowMessage('Transação Cancelada!');
      end
      else
        ShowMessage('Conclusão Já Lançada!!');
    end;  }
end;

procedure TFrmCadastroInternoDisciplina.EditqtdediasExit(Sender: TObject);
begin
  inherited;
  Editfimisolamento.Text := datetostr(strtodatetime(Editinicioisolamento.Text) + StrToint(Editqtdedias.Text) - 1);
end;

procedure TFrmCadastroInternoDisciplina.Liberar1Click(Sender: TObject);
begin
  inherited;
  if Dsvincfaltadisciplinar.DataSet.FieldByName('status').asstring = '' then
  begin
    if MessageDlg('Confirma que o Isolamento Foi Cumprido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin

      Dsvincfaltadisciplinar.DataSet.edit;
      Dsvincfaltadisciplinar.DataSet.fieldbyname('status').AsString := 'CUMPRIDO';
      Dsvincfaltadisciplinar.DataSet.Post;
    end;
  end
  else
  begin
    if MessageDlg('Confirma Liberação da Pena?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin

      Dsvincfaltadisciplinar.DataSet.edit;
      Dsvincfaltadisciplinar.DataSet.fieldbyname('status').AsString := '';
      Dsvincfaltadisciplinar.DataSet.Post;
    end;
  end;

end;

procedure TFrmCadastroInternoDisciplina.DsvincfaltadisciplinarDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;

  {  with DsCadastro.DataSet do
    begin

      if not active then
        exit;

      if isempty then
        exit;

      if state in [dsedit] then
      begin
        if Dsvincfaltadisciplinar.DataSet.FieldByName('status').asString <> '' then
          Liberar1.caption := 'DESCUMPRIR PENA'
        else
          Liberar1.caption := 'CUMPRIR PENA'

      end;
    end;}
end;

procedure TFrmCadastroInternoDisciplina.BitBtn1Click(Sender: TObject);
var
  temporeabilitacao: Integer;
begin

  inherited;
  if DBLookupComboBoxfaltadisciplinar.Text = '' then
  begin
    showmessage('Digite a Falta Disciplinar!');
    exit;
  end;

  if Editpdi.Text = '' then
  begin
    showmessage('Digite o Número do Documento!');
    exit;
  end;

  // if DM.Dsfaltadisciplinar.DataSet.Locate('id_falta_disciplinar', DBLookupComboBoxfaltadisciplinar.KeyValue, []) = true then
  //   temporeabilitacao := Dm.Dsfaltadisciplinar.DataSet.fieldbyname('temporeabilitacao').AsInteger;

  // DScalcfaltadisciplinar.DataSet.close;
  // SQLcalcfaltadisciplinar.params[0].value := temporeabilitacao;
   //SQLcalcfaltadisciplinar.params[1].value := DateTimePickerdataincidencia.Date;
   //DScalcfaltadisciplinar.DataSet.Open;

  if not Dsvincfaltadisciplinar.DataSet.Active then
    Dsvincfaltadisciplinar.DataSet.Open;

  {Lancando na tabela de vinculo interno/faltadisciplinar}
  Dsvincfaltadisciplinar.DataSet.Append;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('ID_vinc_falta_disciplinar').AsInteger := 0;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('id_interno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('id_falta_disciplinar').AsInteger := DBLookupComboBoxfaltadisciplinar.KeyValue;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_incidencia').AsString := FormatDateTime('dd/mm/yyyy', DateTimePickerdataincidencia.Date);
  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_reabilitacao').AsString := Editreabilitacao.TEXT;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_condenacao').AsString := Editcondenacao.TEXT;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('obs').AsString := memoobs.text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('conclusaocd').AsString := ComboBoxconclusao.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('numero_pdi').AsString := Editpdi.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('resultado').AsString := ComboBoxresultado.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_resultado').AsString := Editresultado.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('dt_inicio_isolamento').AsString := Editinicioisolamento.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('dt_fim_isolamento').AsString := Editfimisolamento.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('qtde_dias_isolamento').AsString := Editqtdedias.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('id_up').AsInteger := GLOBAL_ID_UP;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('tipo').AsString := ComboBoxtipoprocedimento.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_instauracao').AsString := Editprocedimento.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('numero').AsString := Editnprocedimento.Text;
  dsvincfaltadisciplinar.DataSet.fieldbyname('data_inst_portaria').AsString := EditDataInstPortaria.Text;
  dsvincfaltadisciplinar.DataSet.fieldbyname('natureza').AsString := ComboBoxNatureza.Text;

  Dsvincfaltadisciplinar.DataSet.Post;

  DBLookupComboBoxfaltadisciplinar.KeyValue := null;
  Editreabilitacao.Text := '';
  Editcondenacao.Text := '';
  memoobs.Text := '';
  Editcondenacao.Text := '';
  Editpdi.Text := '';
  ComboBoxresultado.Text := '';
  ComboBoxconclusao.Text := '';
  DateTimePickerdataincidencia.Date := Date;
  Editinicioisolamento.Text := '';
  Editqtdedias.Text := '';
  Editfimisolamento.Text := '';
  memo1.Text := '';

end;

procedure TFrmCadastroInternoDisciplina.Excluir1Click(Sender: TObject);
begin
  inherited;
  if Dsvincfaltadisciplinar.DataSet.IsEmpty then
  begin
    showmessage('Não há PDI!.');
    exit;
  end;

  if MessageDlg('Deseja excluir PDI Nº: ' + Dsvincfaltadisciplinar.DataSet.fieldbyname('numero_pdi').AsString + '?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    Dsvincfaltadisciplinar.DataSet.Delete;
  end;

end;

procedure TFrmCadastroInternoDisciplina.BitBtn2Click(Sender: TObject);
begin
  inherited;
  dshistoricoelogio.DataSet.Append;
  dshistoricoelogio.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
  dshistoricoelogio.DataSet.fieldbyname('idinterno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  dshistoricoelogio.DataSet.fieldbyname('data_hora').AsString :=
    FormatDateTime('dd/mm/yyyy', DateTimePickerelogio.Date);
  dshistoricoelogio.DataSet.fieldbyname('descricao').AsString := Memoelogio.Lines.Text;
  dshistoricoelogio.DataSet.fieldbyname('setor').AsString := 'Disciplina';
  dshistoricoelogio.DataSet.fieldbyname('tipo_historico').AsString := 'Elogio';
  dshistoricoelogio.DataSet.fieldbyname('ID_FUNCIONARIO').AsInteger :=
    GLOBAL_ID_FUNCIONARIO;
  dshistoricoelogio.DataSet.Post;

  Memoelogio.Lines.Clear;

end;

procedure TFrmCadastroInternoDisciplina.EditarFalta1Click(Sender: TObject);
begin
  //inherited;

  Frmvincfaltadisiciplinar := TFrmvincfaltadisiciplinar.Create(self);

  FrmVincFaltaDisiciplinar.DsCadastro.DataSet.Close;
  FrmVincFaltaDisiciplinar.sqlCadastro.Params[0].value :=
    DSvincfaltadisciplinar.DataSet.fieldbyname('ID_vinc_falta_disciplinar').AsInteger;
  FrmVincFaltaDisiciplinar.DsCadastro.DataSet.open;

  Frmvincfaltadisiciplinar.ShowModal;
  FreeAndNil(Frmvincfaltadisiciplinar);

end;

procedure TFrmCadastroInternoDisciplina.btnBuscarClick(Sender: TObject);
var
  ID: variant;
  sSql: string;
begin
  inherited;

  Dsfaltadisciplinar.DataSet.Close;
  Dsfaltadisciplinar.DataSet.OPEN;

  sSql := 'SELECT ID_FALTA_DISCIPLINAR CODIGO, FALTA_DISCIPLINAR, TEMPOREABILITACAO, TIPOFALTA FROM FALTA_DISCIPLINAR ORDER BY FALTA_DISCIPLINAR ';

  GLOBAL_INDEX_DO_GRID := 1;
  ID := BuscaGeral(nil, '', sSql, 100, 100, 1000, 400);

  if VarToStrDef(ID, '') <> '' then
  begin

    Sqlfaltadisciplinar.sql.Text :=
      'SELECT f.falta_disciplinar||'' - Gravidade:''||f.tipofalta||'' - ''|| f.temporeabilitacao||'' Dias.'' as falta_disciplinar, ' +
      'f.id_falta_disciplinar ' +
      'FROM falta_disciplinar f ' +
      'where  id_falta_disciplinar = ' + VarToStrDef(ID, '-1') + ' ' +
      'order by f.falta_disciplinar ';

    Dsfaltadisciplinar.DataSet.Close;
    Dsfaltadisciplinar.DataSet.OPEN;

    DBLookupComboBoxfaltadisciplinar.KeyValue := ID;

  end;

  Memo1.Text := DBLookupComboBoxfaltadisciplinar.Text;

end;

procedure TFrmCadastroInternoDisciplina.CdsvincfaltadisciplinarCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  if DataSet.fieldbyname('ID_FALTA_DISCIPLINAR').AsString <> '' then
  begin

    SqlExecute.SQL.Text := 'SELECT FALTA_DISCIPLINAR FROM FALTA_DISCIPLINAR WHERE ID_FALTA_DISCIPLINAR=' +
      DataSet.fieldbyname('ID_FALTA_DISCIPLINAR').AsString;

    SqlExecute.Close;
    SqlExecute.Open;

    DataSet.fieldbyname('falta_disciplinar').AsString :=
      SqlExecute.FieldByName('FALTA_DISCIPLINAR').AsString;

  end;

end;

procedure TFrmCadastroInternoDisciplina.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_DISCIPLINA)
    and not ContemValor('E', PERMISSAO_DISCIPLINA)
    and not ContemValor('D', PERMISSAO_DISCIPLINA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_DISCIPLINA)
    and not ContemValor('E', PERMISSAO_DISCIPLINA)
    and not ContemValor('D', PERMISSAO_DISCIPLINA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_DISCIPLINA)
    and ContemValor('E', PERMISSAO_DISCIPLINA)
    and not ContemValor('D', PERMISSAO_DISCIPLINA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_DISCIPLINA)
    and ContemValor('E', PERMISSAO_DISCIPLINA)
    and ContemValor('D', PERMISSAO_DISCIPLINA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_DISCIPLINA)
    and not ContemValor('E', PERMISSAO_DISCIPLINA)
    and ContemValor('D', PERMISSAO_DISCIPLINA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_DISCIPLINA)
    and not ContemValor('E', PERMISSAO_DISCIPLINA)
    and ContemValor('D', PERMISSAO_DISCIPLINA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_DISCIPLINA)
    and ContemValor('E', PERMISSAO_DISCIPLINA)
    and not ContemValor('D', PERMISSAO_DISCIPLINA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroInternoDisciplina.DsCadastroDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_DISCIPLINA)
    and not ContemValor('E', PERMISSAO_DISCIPLINA)
    and not ContemValor('D', PERMISSAO_DISCIPLINA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_DISCIPLINA)
    and not ContemValor('E', PERMISSAO_DISCIPLINA)
    and not ContemValor('D', PERMISSAO_DISCIPLINA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_DISCIPLINA)
    and ContemValor('E', PERMISSAO_DISCIPLINA)
    and not ContemValor('D', PERMISSAO_DISCIPLINA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_DISCIPLINA)
    and ContemValor('E', PERMISSAO_DISCIPLINA)
    and ContemValor('D', PERMISSAO_DISCIPLINA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_DISCIPLINA)
    and not ContemValor('E', PERMISSAO_DISCIPLINA)
    and ContemValor('D', PERMISSAO_DISCIPLINA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_DISCIPLINA)
    and not ContemValor('E', PERMISSAO_DISCIPLINA)
    and ContemValor('D', PERMISSAO_DISCIPLINA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_DISCIPLINA)
    and ContemValor('E', PERMISSAO_DISCIPLINA)
    and not ContemValor('D', PERMISSAO_DISCIPLINA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroInternoDisciplina.CancelarClick(Sender: TObject);
begin
  inherited;

  Dsvincfaltadisciplinar.DataSet.Close;
  Dsvincfaltadisciplinar.DataSet.OPEN;

  dsvincartigoperfil.DataSet.Close;
  dsvincartigoperfil.DataSet.OPEN;

  DSHISTORICO_interno.DataSet.Close;
  DSHISTORICO_interno.DataSet.OPEN;

  dshistoricoelogio.DataSet.Close;
  dshistoricoelogio.DataSet.Open;
end;

procedure TFrmCadastroInternoDisciplina.PageControlModeloCadastroChange(
  Sender: TObject);
begin
  //inherited;
  if PageControlModeloCadastro.ActivePageIndex = 1 then
  begin
    CancelarClick(nil);
  end;
end;

end.

