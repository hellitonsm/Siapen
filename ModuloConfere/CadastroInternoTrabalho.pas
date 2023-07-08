unit CadastroInternoTrabalho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloInterno, FMTBcd, DB, DBClient, Provider, SqlExpr, ImgList,
  ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Mask, Buttons,
  ToolWin, Menus, jpeg, dbcgrids, adpDBDateTimePicker;

type
  TFrmCadastroInternoTrabalho = class(TFrmModeloInterno)
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label53: TLabel;
    DateTimePickerHistorico: TDateTimePicker;
    MemoDescricao: TMemo;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    SQLHISTORICO_interno: TSQLQuery;
    DSPHISTORICO_interno: TDataSetProvider;
    CDSHISTORICO_interno: TClientDataSet;
    DSHISTORICO_interno: TDataSource;
    TabSheet3: TTabSheet;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    DBGrid3: TDBGrid;
    dscalc_trabalho: TDataSource;
    cdscalc_trabalho: TClientDataSet;
    dspcalc_trabalho: TDataSetProvider;
    SQLcalc_trabalho: TSQLQuery;
    PopupMenuIsolamento: TPopupMenu;
    Liberar1: TMenuItem;
    SQLhistorico_trabalho: TSQLQuery;
    dsphistorico_trabalho: TDataSetProvider;
    cdshistorico_trabalho: TClientDataSet;
    dshistorico_trabalho: TDataSource;
    cdshistorico_trabalhoID_HISTORICO_TRABALHO: TIntegerField;
    cdshistorico_trabalhoDESCRICAO: TStringField;
    cdshistorico_trabalhoDATA: TSQLTimeStampField;
    cdshistorico_trabalhoID_FUNCIONARIO: TIntegerField;
    cdshistorico_trabalhoID_INTERNO: TIntegerField;
    cdshistorico_trabalhoID_SETOR_TRABALHO: TIntegerField;
    cdshistorico_trabalhoID_FUNCAO_INTERNO: TIntegerField;
    cdshistorico_trabalhoOBS: TStringField;
    cdshistorico_trabalhoDOCUMENTO: TStringField;
    cdshistorico_trabalhoID_LOCAL_TRABALHO: TIntegerField;
    cdshistorico_trabalhoDATA_SAIDA: TSQLTimeStampField;
    cdshistorico_trabalhoMOTIVO_SAIDA: TStringField;
    cdshistorico_trabalhoSetorTrabalho: TStringField;
    cdshistorico_trabalhoLocalTrabalho: TStringField;
    cdshistorico_trabalhoFuno: TStringField;
    PageControl1: TPageControl;
    TabSheet4: TTabSheet;
    Label16: TLabel;
    Label17: TLabel;
    Label26: TLabel;
    GroupBox1: TGroupBox;
    CHDomingo: TCheckBox;
    CHsabado: TCheckBox;
    Button3: TButton;
    PageControl3: TPageControl;
    TabSheet6: TTabSheet;
    DBGrid2: TDBGrid;
    DateTimePickerdatainicial: TDateTimePicker;
    DateTimePickerdatafinal: TDateTimePicker;
    Editdiastrabalhado: TEdit;
    Button2: TButton;
    TabSheet7: TTabSheet;
    Label41: TLabel;
    DateTimePickerdtinicialcertidao: TDateTimePicker;
    Label42: TLabel;
    BitBtn1: TBitBtn;
    Editdiastrabalhadocertidao: TEdit;
    Editdiasremidocertidao: TEdit;
    Editsaldoanterior: TEdit;
    Editsaldoproximo: TEdit;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    dscertidao_trabalho: TDataSource;
    cdscertidao_trabalho: TClientDataSet;
    dspcertidao_trabalho: TDataSetProvider;
    SQLcertidao_trabalho: TSQLQuery;
    DBGrid4: TDBGrid;
    adpDBDateTimePickerdtfinalcertidao: TadpDBDateTimePicker;
    BitBtn2: TBitBtn;
    Label29: TLabel;
    Edittotaltrabalhado: TEdit;
    cdshistorico_trabalhoDOCUMENTO_DESCLASSIFICACAO: TStringField;
    PopupMenuexcluirremissao: TPopupMenu;
    ExcluirRegistro1: TMenuItem;
    PopupMenuexcluiratestado: TPopupMenu;
    ExcluirRegistro2: TMenuItem;
    Label48: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label8: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton12: TSpeedButton;
    DBEditdtsetor: TDBEdit;
    DBLookupComboBoxsetortrabalho: TDBLookupComboBox;
    DBEditobstrabalho: TDBEdit;
    DBLookupComboBoxfuncaointerno: TDBLookupComboBox;
    DBEditdoctrabalho: TDBEdit;
    DBLookupComboBoxlocaltrabalho: TDBLookupComboBox;
    TabSheet8: TTabSheet;
    Label60: TLabel;
    DBEditentradasemanal: TDBEdit;
    Label61: TLabel;
    DBEditsaidasemanal: TDBEdit;
    Label62: TLabel;
    DBEdit22: TDBEdit;
    Label67: TLabel;
    DBEditentradasaidao: TDBEdit;
    Label68: TLabel;
    DBEditsaidasaidao: TDBEdit;
    Label70: TLabel;
    DBEditentradasabado: TDBEdit;
    Label71: TLabel;
    DBEditsaidasabado: TDBEdit;
    Label72: TLabel;
    DBEditentradadomingo: TDBEdit;
    Label73: TLabel;
    DBEditsaidadomingo: TDBEdit;
    Label75: TLabel;
    DBEdit41: TDBEdit;
    Label74: TLabel;
    DBComboBoxtipoatividade: TDBComboBox;
    EditarTrabalho1: TMenuItem;
    GroupBox2: TGroupBox;
    Label76: TLabel;
    DBEdit15: TDBEdit;
    Label77: TLabel;
    DBEdit21: TDBEdit;
    Label81: TLabel;
    DBEdit23: TDBEdit;
    Label84: TLabel;
    DBEdit30: TDBEdit;
    Label85: TLabel;
    DBEdit36: TDBEdit;
    Label86: TLabel;
    DBEdit37: TDBEdit;
    Label87: TLabel;
    DBEdit38: TDBEdit;
    Label88: TLabel;
    DBEdit39: TDBEdit;
    Label89: TLabel;
    DBEdit40: TDBEdit;
    Label90: TLabel;
    DBEdit42: TDBEdit;
    BtnCopiar: TButton;
    DeletarRegistro1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure DBGridConsultaDblClick(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Liberar1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure PageControlPrincipalChange(Sender: TObject);
    procedure ExcluirRegistro2Click(Sender: TObject);
    procedure ExcluirRegistro1Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure EditarTrabalho1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure CancelarClick(Sender: TObject);
    procedure EditdiastrabalhadoKeyPress(Sender: TObject; var Key: Char);
    procedure EditsaldoanteriorKeyPress(Sender: TObject; var Key: Char);
    procedure EditdiastrabalhadocertidaoKeyPress(Sender: TObject;
      var Key: Char);
    procedure EdittotaltrabalhadoKeyPress(Sender: TObject; var Key: Char);
    procedure EditdiasremidocertidaoKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditsaldoproximoKeyPress(Sender: TObject; var Key: Char);
    procedure PageControlModeloCadastroChange(Sender: TObject);
    procedure BtnCopiarClick(Sender: TObject);
    procedure DeletarRegistro1Click(Sender: TObject);
  private
    sttrabalho: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroInternoTrabalho: TFrmCadastroInternoTrabalho;

implementation

uses DmPrincipal, Lib, CadastroFuncaoInterno, CadastroSetorTrablalho,
  CadastroLocalTrabalho, ModeloCadastro, MotivoDispensaTrabalho,
  ConclusaoCD;

{$R *.dfm}

procedure TFrmCadastroInternoTrabalho.Button1Click(Sender: TObject);
begin
  inherited;
  DSHISTORICO_interno.DataSet.Append;
  DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
  DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsString :=
    FormatDateTime('dd/mm/yyyy', DateTimePickerHistorico.Date);
  DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString := MemoDescricao.Lines.Text;
  DSHISTORICO_interno.DataSet.fieldbyname('setor').AsString := 'Trabalho';
  DSHISTORICO_interno.DataSet.fieldbyname('ID_FUNCIONARIO').AsInteger :=
    GLOBAL_ID_FUNCIONARIO;
  DSHISTORICO_interno.DataSet.Post;

  DM.SQLConnect.ExecuteDirect('EXECUTE PROCEDURE set_context(' + inttostr(GLOBAL_ID_FUNCIONARIO) + ')');
  //TClientDataSet(DSHISTORICO_interno.DataSet).ApplyUpdates(0);

  MemoDescricao.Lines.Clear;

end;

procedure TFrmCadastroInternoTrabalho.FormShow(Sender: TObject);
begin
  inherited;

  DSHISTORICO_interno.DataSet.Close;
  DSHISTORICO_interno.DataSet.OPEN;

  dshistorico_trabalho.DataSet.Close;
  dshistorico_trabalho.DataSet.OPEN;

  dm.DslocalTrabalho.DataSet.Close;
  dm.DslocalTrabalho.DataSet.OPEN;

  DSCALC_TRABALHO.DataSet.Close;
  DSCALC_TRABALHO.DataSet.OPEN;

  dscertidao_trabalho.DataSet.Close;
  dscertidao_trabalho.DataSet.OPEN;

  DM.DsSetorTrabalho.DataSet.Close;
  DM.DsSetorTrabalho.DataSet.OPEN;

  DateTimePickerHistorico.Date := Date;

end;

procedure TFrmCadastroInternoTrabalho.SalvarClick(Sender: TObject);
var
  iErro, ierro1: integer;
begin

  DsCadastro.DataSet.Fieldbyname('ID_FUNCIONARIO').AsInteger := GLOBAL_ID_FUNCIONARIO;

  if PageControlPrincipal.CanFocus then
    PageControlPrincipal.SetFocus;

  {if DsCadastro.DataSet.Fieldbyname('idsetor_trabalho').AsString = '' then
  begin
    showmessage('Digite o Setor de Trabalho!');
    exit;
  end;}

  {Inserir Historico Setor Trabalho}
  if (sttrabalho <> DBLookupComboBoxsetortrabalho.Text) and
    (DsCadastro.DataSet.Fieldbyname('idsetor_trabalho').AsString <> '') then
  begin
    { if DsCadastro.DataSet.Fieldbyname('data_setor').AsString = '' then
     begin
       showmessage('Digite a Data do Setor!');
       exit;
     end; }

    dshistorico_trabalho.DataSet.Append;
    dshistorico_trabalho.DataSet.fieldbyname('id_historico_trabalho').AsInteger := 0;
    dshistorico_trabalho.DataSet.fieldbyname('id_interno').AsInteger := DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
    dshistorico_trabalho.DataSet.fieldbyname('data').AsString := DsCadastro.DataSet.Fieldbyname('data_setor').AsString;
    dshistorico_trabalho.DataSet.fieldbyname('id_funcionario').AsInteger := GLOBAL_ID_FUNCIONARIO;
    dshistorico_trabalho.DataSet.fieldbyname('id_setor_trabalho').AsInteger := DBLookupComboBoxsetortrabalho.KeyValue;
    if DBLookupComboBoxlocaltrabalho.Text <> '' then
      dshistorico_trabalho.DataSet.fieldbyname('id_local_trabalho').AsInteger := DBLookupComboBoxlocaltrabalho.KeyValue;
    if DBLookupComboBoxfuncaointerno.Text <> '' then
      dshistorico_trabalho.DataSet.fieldbyname('id_funcao_interno').AsInteger := DBLookupComboBoxfuncaointerno.KeyValue;
    dshistorico_trabalho.DataSet.fieldbyname('documento').AsString := DsCadastro.DataSet.fieldbyname('doc_trabalho').AsString;
    dshistorico_trabalho.DataSet.fieldbyname('obs').AsString := DsCadastro.DataSet.fieldbyname('obstrabalho').AsString;
    dshistorico_trabalho.DataSet.Post;

  end;

  inherited;

  DSHISTORICO_interno.DataSet.Close;
  DSHISTORICO_interno.DataSet.OPEN;

  DSHISTORICO_trabalho.DataSet.Close;
  DSHISTORICO_trabalho.DataSet.OPEN;

  dscalc_trabalho.DataSet.Close;
  dscalc_trabalho.DataSet.OPEN;

  dscertidao_trabalho.DataSet.Close;
  dscertidao_trabalho.DataSet.OPEN;

end;

procedure TFrmCadastroInternoTrabalho.Button2Click(Sender: TObject);
var
  naoremir: string;

begin
  naoremir := '';

  if CHDomingo.Checked = True then
    naoremir := naoremir + '0';

  if CHsabado.Checked = True then
    naoremir := naoremir + '6';

  Editdiastrabalhado.text :=
    inttostr(DiasUteis(DateTimePickerdatainicial.datetime
    , DateTimePickerdatafinal.datetime, naoremir));

  // Editdiasremido.Text := floattostrf(((strtofloat(editdiastrabalhado.Text)) / 3), ffNumber, 12, 2);

end;

procedure TFrmCadastroInternoTrabalho.Button3Click(Sender: TObject);
begin
  inherited;

  if Editdiastrabalhado.Text = '' then
  begin
    showmessage('Pressione Botão Calcular!');
    exit;
  end;

  DSCALC_TRABALHO.DataSet.Append;
  DSCALC_TRABALHO.DataSet.fieldbyname('idcalc_setor_trabalho').AsInteger := 0;
  DSCALC_TRABALHO.DataSet.fieldbyname('id_interno').AsInteger := DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  DSCALC_TRABALHO.DataSet.fieldbyname('data_inicial').AsString := formatdatetime('dd/mm/yyyy', DateTimePickerdatainicial.date);
  DSCALC_TRABALHO.DataSet.fieldbyname('data_final').AsString := formatdatetime('dd/mm/yyyy', DateTimePickerdatafinal.date);
  DSCALC_TRABALHO.DataSet.fieldbyname('qtdediastrabalhado').AsString := Editdiastrabalhado.text;
  //  DSCALC_TRABALHO.DataSet.fieldbyname('qtdediasremido').AsString := Editdiasremido.Text;
  DSCALC_TRABALHO.DataSet.Post;

  Editdiastrabalhado.Text := '';
  //  Editdiasremido.Text := '';

end;

procedure TFrmCadastroInternoTrabalho.EditarClick(Sender: TObject);
begin

  DBEditdtsetor.Field.EditMask := '99\/99\/9999;1;_';

  if (dshistorico_trabalho.DataSet.RecordCount <= 0) and (DBLookupComboBoxsetortrabalho.Text <> '') then
  begin
    inherited;
    SalvarClick(nil);
    exit;
  end;

  sttrabalho := DBLookupComboBoxsetortrabalho.Text;

  if sttrabalho <> '' then
  begin
    DBEditdtsetor.Enabled := false;
    DBEditobstrabalho.Enabled := false;
    DBEditdoctrabalho.Enabled := false;
    DBLookupComboBoxfuncaointerno.Enabled := false;
    DBLookupComboBoxsetortrabalho.Enabled := False;
    DBLookupComboBoxlocaltrabalho.Enabled := false;
    DBComboBoxtipoatividade.Enabled := false;
  end
  else
  begin
    DBEditdtsetor.Enabled := true;
    DBEditobstrabalho.Enabled := true;
    DBEditdoctrabalho.Enabled := true;
    DBLookupComboBoxfuncaointerno.Enabled := true;
    DBLookupComboBoxsetortrabalho.Enabled := true;
    DBLookupComboBoxlocaltrabalho.Enabled := true;
    DBComboBoxtipoatividade.Enabled := true;
  end;

  inherited;

end;

procedure TFrmCadastroInternoTrabalho.DBGridConsultaDblClick(
  Sender: TObject);
begin
  inherited;

  DBEditdtsetor.Field.EditMask := '99\/99\/9999;1;_';

  if (dshistorico_trabalho.DataSet.RecordCount <= 0) and (DBLookupComboBoxsetortrabalho.Text <> '') then
  begin
    SalvarClick(nil);
    exit;
  end;

  sttrabalho := DBLookupComboBoxsetortrabalho.Text;

  if sttrabalho <> '' then
  begin
    DBEditdtsetor.Enabled := false;
    DBEditobstrabalho.Enabled := false;
    DBEditdoctrabalho.Enabled := false;
    DBLookupComboBoxfuncaointerno.Enabled := false;
    DBLookupComboBoxsetortrabalho.Enabled := False;
    DBLookupComboBoxlocaltrabalho.Enabled := false;
    DBComboBoxtipoatividade.Enabled := false;
  end
  else
  begin
    DBEditdtsetor.Enabled := true;
    DBEditobstrabalho.Enabled := true;
    DBEditdoctrabalho.Enabled := true;
    DBLookupComboBoxfuncaointerno.Enabled := true;
    DBLookupComboBoxsetortrabalho.Enabled := true;
    DBLookupComboBoxlocaltrabalho.Enabled := true;
    DBComboBoxtipoatividade.Enabled := true;
  end;

end;

procedure TFrmCadastroInternoTrabalho.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  Frmcadastrofuncaointerno := TFrmcadastrofuncaointerno.Create(Application);
  Frmcadastrofuncaointerno.ShowModal;
  FreeAndNil(Frmcadastrofuncaointerno);

  DM.DSFUNCAOINTERNO.DataSet.Close;
  DM.DSFUNCAOINTERNO.DataSet.OPEN;

end;

procedure TFrmCadastroInternoTrabalho.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  Frmcadastrosetortrabalho := TFrmcadastrosetortrabalho.Create(Application);
  Frmcadastrosetortrabalho.ShowModal;
  FreeAndNil(Frmcadastrosetortrabalho);

  DM.DsSetorTrabalho.DataSet.Close;
  DM.DsSetorTrabalho.DataSet.OPEN;
end;

procedure TFrmCadastroInternoTrabalho.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  Frmcadastrolocaltrabalho := TFrmcadastrolocaltrabalho.Create(Application);
  Frmcadastrolocaltrabalho.ShowModal;
  FreeAndNil(Frmcadastrolocaltrabalho);

  DM.DslocalTrabalho.DataSet.Close;
  DM.DslocalTrabalho.DataSet.OPEN;

end;

procedure TFrmCadastroInternoTrabalho.Liberar1Click(Sender: TObject);
begin
  inherited;

  if not ContemValor('E', PERMISSAO_TRABALHO) then
  begin
    ShowMessage('Você não tem permissão para realizar esta operação!');
    Exit;
  end;

  if dshistorico_trabalho.DataSet.FieldByName('data_saida').asstring <> '' then
  begin
    ShowMessage('Trabalho já liberado!');
    exit;
  end;

  if MessageDlg('Confirma liberação de Trabalho?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin

    Frmmotivodispensatrabalho := TFrmmotivodispensatrabalho.Create(Self);
    Frmmotivodispensatrabalho.ShowModal;

    dshistorico_trabalho.DataSet.Edit;
    dshistorico_trabalho.DataSet.FieldByName('DOCUMENTO_DESCLASSIFICACAO').AsString := FrmMotivoDispensaTrabalho.Editdocumento.text;
    dshistorico_trabalho.DataSet.FieldByName('data_saida').AsString := formatdatetime('dd/mm/yyyy', FrmMotivoDispensaTrabalho.adpDBDateTimePickerdtsaida.Date);
    dshistorico_trabalho.DataSet.FieldByName('motivo_saida').AsString := FrmMotivoDispensaTrabalho.Memo1.text;
    dshistorico_trabalho.DataSet.Post;

    DsCadastro.DataSet.FieldByName('DOC_TRABALHO').asstring := '';
    DsCadastro.DataSet.FieldByName('DATA_SETOR').asstring := '';
    DsCadastro.DataSet.FieldByName('ID_FUNCAOINTERNO').asstring := '';
    DsCadastro.DataSet.FieldByName('ID_LOCAL_TRABALHO').asstring := '';
    DsCadastro.DataSet.FieldByName('IDSETOR_TRABALHO').asstring := '';
    DsCadastro.DataSet.FieldByName('OBSTRABALHO').asstring := '';
    DsCadastro.DataSet.FieldByName('TIPO_ATIVIDADE').asstring := '';

    DBEditdtsetor.Enabled := true;
    DBEditobstrabalho.Enabled := true;
    DBEditdoctrabalho.Enabled := true;
    DBLookupComboBoxfuncaointerno.Enabled := true;
    DBLookupComboBoxsetortrabalho.Enabled := true;
    DBLookupComboBoxlocaltrabalho.Enabled := true;

    FreeAndNil(Frmmotivodispensatrabalho);

  end;

end;

procedure TFrmCadastroInternoTrabalho.BitBtn1Click(Sender: TObject);
var
  diastrabalhado, saldoanterior, diastrabalhadoanterior, diastrabalhadototal: integer;
begin
  inherited;

  diastrabalhado := 0;
  saldoanterior := 0;
  diastrabalhadoanterior := 0;
  diastrabalhadototal := 0;

  dm.SqlExecute.SQL.Text := 'select * from calc_setor_trabalho c where  c.id_interno = ' +
    DsCadastro.DataSet.fieldbyname('id_interno').asstring + ' and c.data_inicial >= '
    + qs(formatdatetime('mm/dd/yyyy', DateTimePickerdtinicialcertidao.Date))
    + ' and c.data_final <= ' + qs(formatdatetime('mm/dd/yyyy', adpDBDateTimePickerdtfinalcertidao.date));

  dm.DsExecute.DataSet.close;
  dm.DsExecute.DataSet.Open;

  if dm.DsExecute.DataSet.RecordCount > 0 then
  begin
    dm.DsExecute.DataSet.First;
    while not dm.DsExecute.DataSet.eof do
    begin
      diastrabalhado := diastrabalhado + dm.DsExecute.DataSet.fieldbyname('qtdediastrabalhado').asinteger;

      dm.DsExecute.DataSet.Next;
    end;
    dm.DsExecute.DataSet.Close;

    dm.SqlExecute.SQL.Text := 'select * from calc_setor_trabalho c where  c.id_interno = ' +
      DsCadastro.DataSet.fieldbyname('id_interno').asstring + ' and c.data_inicial < '
      + qs(formatdatetime('mm/dd/yyyy', DateTimePickerdtinicialcertidao.Date));

    dm.DsExecute.DataSet.close;
    dm.DsExecute.DataSet.Open;

    if dm.DsExecute.DataSet.RecordCount > 0 then
    begin
      dm.DsExecute.DataSet.First;
      while not dm.DsExecute.DataSet.eof do
      begin

        diastrabalhadoanterior := diastrabalhadoanterior + dm.DsExecute.DataSet.fieldbyname('qtdediastrabalhado').asinteger;

        dm.DsExecute.DataSet.Next;
      end;
      dm.DsExecute.DataSet.Close;
    end;

    Editsaldoanterior.Text := inttostr(diastrabalhadoanterior mod 3);
    if Editsaldoanterior.Text <> '' then
      diastrabalhadototal := (diastrabalhado + (strtoint(Editsaldoanterior.Text)))
    else
      diastrabalhadototal := diastrabalhado;
    Editdiastrabalhadocertidao.text := inttostr(diastrabalhado);
    Edittotaltrabalhado.Text := inttostr(diastrabalhadototal);
    Editdiasremidocertidao.Text := inttostr(diastrabalhadototal div 3);
    Editsaldoproximo.Text := inttostr(diastrabalhadototal mod 3);

  end;
end;

procedure TFrmCadastroInternoTrabalho.BitBtn2Click(Sender: TObject);
begin
  inherited;

  if Editdiastrabalhadocertidao.Text = '' then
  begin
    showmessage('Dias Trabalhado Inválido!');
    exit;
  end;

  dscertidao_trabalho.DataSet.Append;
  dscertidao_trabalho.DataSet.fieldbyname('id_atestado_trabalho').AsInteger := 0;
  dscertidao_trabalho.DataSet.fieldbyname('id_interno').AsInteger := DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  dscertidao_trabalho.DataSet.fieldbyname('data_inicial').AsString := formatdatetime('dd/mm/yyyy', DateTimePickerdtinicialcertidao.date);
  dscertidao_trabalho.DataSet.fieldbyname('data_final').AsString := formatdatetime('dd/mm/yyyy', adpDBDateTimePickerdtfinalcertidao.date);
  dscertidao_trabalho.DataSet.fieldbyname('dias_trabalhado').AsString := Editdiastrabalhadocertidao.text;
  dscertidao_trabalho.DataSet.fieldbyname('dias_remido').AsString := Editdiasremidocertidao.text;
  dscertidao_trabalho.DataSet.fieldbyname('saldo_anterior').AsString := Editsaldoanterior.text;
  dscertidao_trabalho.DataSet.fieldbyname('total_dias').AsString := Edittotaltrabalhado.text;
  dscertidao_trabalho.DataSet.fieldbyname('saldo_proxima').AsString := Editsaldoproximo.Text;
  dscertidao_trabalho.DataSet.Post;

  Editdiastrabalhadocertidao.Text := '';
  Editdiasremidocertidao.Text := '';
  Editsaldoanterior.Text := '';
  Editsaldoproximo.Text := '';
  Edittotaltrabalhado.Text := '';
end;

procedure TFrmCadastroInternoTrabalho.PageControlPrincipalChange(
  Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex := 0;
end;

procedure TFrmCadastroInternoTrabalho.ExcluirRegistro2Click(
  Sender: TObject);
begin
  inherited;

  if not ContemValor('D', PERMISSAO_TRABALHO) then
  begin
    ShowMessage('Você não tem permissão para Excluir!');
    Exit;
  end;

  if dscertidao_trabalho.DataSet.IsEmpty then
  begin
    showmessage('Não há Atestado Cadastrado!');
    exit;
  end;

  if MessageDlg('Deseja excluir Horas Cadastradas ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dscertidao_trabalho.DataSet.Delete;
  end;
end;

procedure TFrmCadastroInternoTrabalho.ExcluirRegistro1Click(
  Sender: TObject);
begin
  inherited;
  if dscalc_trabalho.DataSet.IsEmpty then
  begin
    showmessage('Não há Dias Cadastrados!.');
    exit;
  end;

  if MessageDlg('Deseja excluir Horas Cadastradas ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dscalc_trabalho.DataSet.Delete;
  end;
end;

procedure TFrmCadastroInternoTrabalho.SpeedButton12Click(Sender: TObject);
begin
  Frmcadastrosetortrabalho := TFrmcadastrosetortrabalho.Create(Application);
  Frmcadastrosetortrabalho.ShowModal;
  FreeAndNil(Frmcadastrosetortrabalho);

  DM.DsSetorTrabalho.DataSet.Close;
  DM.DsSetorTrabalho.DataSet.OPEN;
end;

procedure TFrmCadastroInternoTrabalho.TabSheet1Show(Sender: TObject);
begin
  inherited;
  PageControl2.ActivePageIndex := 0;
end;

procedure TFrmCadastroInternoTrabalho.EditarTrabalho1Click(
  Sender: TObject);
begin
  inherited;

  if not ContemValor('E', PERMISSAO_TRABALHO) then
  begin
    ShowMessage('Você não tem permissão para realizar esta operação!');
    Exit;
  end;

  DBEditdtsetor.Enabled := true;
  DBEditobstrabalho.Enabled := true;
  DBEditdoctrabalho.Enabled := true;
  DBLookupComboBoxfuncaointerno.Enabled := true;
  DBLookupComboBoxsetortrabalho.Enabled := true;
  DBLookupComboBoxlocaltrabalho.Enabled := true;
  DBComboBoxtipoatividade.Enabled := true;

  showmessage('ATENÇÃO!! Qualquer alteração deverá ser feita também no grid !');

end;

procedure TFrmCadastroInternoTrabalho.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_TRABALHO)
    and not ContemValor('E', PERMISSAO_TRABALHO)
    and not ContemValor('D', PERMISSAO_TRABALHO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_TRABALHO)
    and not ContemValor('E', PERMISSAO_TRABALHO)
    and not ContemValor('D', PERMISSAO_TRABALHO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_TRABALHO)
    and ContemValor('E', PERMISSAO_TRABALHO)
    and not ContemValor('D', PERMISSAO_TRABALHO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_TRABALHO)
    and ContemValor('E', PERMISSAO_TRABALHO)
    and ContemValor('D', PERMISSAO_TRABALHO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_TRABALHO)
    and not ContemValor('E', PERMISSAO_TRABALHO)
    and ContemValor('D', PERMISSAO_TRABALHO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_TRABALHO)
    and not ContemValor('E', PERMISSAO_TRABALHO)
    and ContemValor('D', PERMISSAO_TRABALHO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_TRABALHO)
    and ContemValor('E', PERMISSAO_TRABALHO)
    and not ContemValor('D', PERMISSAO_TRABALHO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroInternoTrabalho.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_TRABALHO)
    and not ContemValor('E', PERMISSAO_TRABALHO)
    and not ContemValor('D', PERMISSAO_TRABALHO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_TRABALHO)
    and not ContemValor('E', PERMISSAO_TRABALHO)
    and not ContemValor('D', PERMISSAO_TRABALHO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_TRABALHO)
    and ContemValor('E', PERMISSAO_TRABALHO)
    and not ContemValor('D', PERMISSAO_TRABALHO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_TRABALHO)
    and ContemValor('E', PERMISSAO_TRABALHO)
    and ContemValor('D', PERMISSAO_TRABALHO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_TRABALHO)
    and not ContemValor('E', PERMISSAO_TRABALHO)
    and ContemValor('D', PERMISSAO_TRABALHO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_TRABALHO)
    and not ContemValor('E', PERMISSAO_TRABALHO)
    and ContemValor('D', PERMISSAO_TRABALHO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_TRABALHO)
    and ContemValor('E', PERMISSAO_TRABALHO)
    and not ContemValor('D', PERMISSAO_TRABALHO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroInternoTrabalho.CancelarClick(Sender: TObject);
begin
  inherited;

  DSHISTORICO_interno.DataSet.Close;
  DSHISTORICO_interno.DataSet.Open;

  DSHISTORICO_trabalho.DataSet.Close;
  DSHISTORICO_trabalho.DataSet.Open;

  dscalc_trabalho.DataSet.Close;
  dscalc_trabalho.DataSet.Open;

  dscertidao_trabalho.DataSet.Close;
  dscertidao_trabalho.DataSet.Open;

end;

procedure TFrmCadastroInternoTrabalho.EditdiastrabalhadoKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  SoNumeros(Key);
end;

procedure TFrmCadastroInternoTrabalho.EditsaldoanteriorKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  SoNumeros(Key);
end;

procedure TFrmCadastroInternoTrabalho.EditdiastrabalhadocertidaoKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  SoNumeros(Key);
end;

procedure TFrmCadastroInternoTrabalho.EdittotaltrabalhadoKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  SoNumeros(Key);
end;

procedure TFrmCadastroInternoTrabalho.EditdiasremidocertidaoKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  SoNumeros(Key);
end;

procedure TFrmCadastroInternoTrabalho.EditsaldoproximoKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  SoNumeros(Key);
end;

procedure TFrmCadastroInternoTrabalho.PageControlModeloCadastroChange(
  Sender: TObject);
begin
  //inherited;
  if PageControlModeloCadastro.ActivePageIndex = 1 then
  begin
    CancelarClick(nil);
  end;
end;

procedure TFrmCadastroInternoTrabalho.BtnCopiarClick(Sender: TObject);
begin
  inherited;

  DsCadastro.DataSet.FieldByName('HORARIO_SAIDA_DOMINGO').Value :=
    DsCadastro.DataSet.FieldByName('HORARIO_SAIDA_SEMANAL').Value;
  DsCadastro.DataSet.FieldByName('HORARIO_SAIDA_SEG').Value :=
    DsCadastro.DataSet.FieldByName('HORARIO_SAIDA_SEMANAL').Value;
  DsCadastro.DataSet.FieldByName('HORARIO_SAIDA_TER').Value :=
    DsCadastro.DataSet.FieldByName('HORARIO_SAIDA_SEMANAL').Value;
  DsCadastro.DataSet.FieldByName('HORARIO_SAIDA_QUA').Value :=
    DsCadastro.DataSet.FieldByName('HORARIO_SAIDA_SEMANAL').Value;
  DsCadastro.DataSet.FieldByName('HORARIO_SAIDA_QUI').Value :=
    DsCadastro.DataSet.FieldByName('HORARIO_SAIDA_SEMANAL').Value;
  DsCadastro.DataSet.FieldByName('HORARIO_SAIDA_SEX').Value :=
    DsCadastro.DataSet.FieldByName('HORARIO_SAIDA_SEMANAL').Value;
  DsCadastro.DataSet.FieldByName('HORARIO_SAIDA_SABADO').Value :=
    DsCadastro.DataSet.FieldByName('HORARIO_SAIDA_SEMANAL').Value;

  DsCadastro.DataSet.FieldByName('HORARIO_ENTRADA_DOMINGO').Value :=
    DsCadastro.DataSet.FieldByName('HORARIO_ENTRADA_SEMANAL').Value;
  DsCadastro.DataSet.FieldByName('HORARIO_ENTRADA_SEG').Value :=
    DsCadastro.DataSet.FieldByName('HORARIO_ENTRADA_SEMANAL').Value;
  DsCadastro.DataSet.FieldByName('HORARIO_ENTRADA_TER').Value :=
    DsCadastro.DataSet.FieldByName('HORARIO_ENTRADA_SEMANAL').Value;
  DsCadastro.DataSet.FieldByName('HORARIO_ENTRADA_QUA').Value :=
    DsCadastro.DataSet.FieldByName('HORARIO_ENTRADA_SEMANAL').Value;
  DsCadastro.DataSet.FieldByName('HORARIO_ENTRADA_QUI').Value :=
    DsCadastro.DataSet.FieldByName('HORARIO_ENTRADA_SEMANAL').Value;
  DsCadastro.DataSet.FieldByName('HORARIO_ENTRADA_SEX').Value :=
    DsCadastro.DataSet.FieldByName('HORARIO_ENTRADA_SEMANAL').Value;
  DsCadastro.DataSet.FieldByName('HORARIO_ENTRADA_SABADO').Value :=
    DsCadastro.DataSet.FieldByName('HORARIO_ENTRADA_SEMANAL').Value;

end;

procedure TFrmCadastroInternoTrabalho.DeletarRegistro1Click(
  Sender: TObject);
begin
  inherited;
  if not ContemValor('E', PERMISSAO_TRABALHO) then
  begin
    ShowMessage('Você não tem permissão para realizar esta operação!');
    Exit;
  end;
  if dshistorico_trabalho.DataSet.IsEmpty then
  begin
    showmessage('Não há Portarias Cadastradas!.');
    exit;
  end;

  if MessageDlg('Deseja excluir a Portaria Cadastrada?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dshistorico_trabalho.DataSet.Delete;
  end;
end;

end.

