unit CadastroInternoJuridico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloInterno, FMTBcd, DB, DBClient, Provider, SqlExpr, ImgList,
  ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Mask, Buttons,
  ToolWin, jpeg, dbcgrids, adpDBDateTimePicker, Menus;

type
  TFrmCadastroInternoJuridico = class(TFrmModeloInterno)
    TabSheetjuridico: TTabSheet;
    DBRadioGroup3: TDBRadioGroup;
    SpeedButton3: TSpeedButton;
    TabSheet1: TTabSheet;
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
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    SqlDsControlePermanencia: TSQLQuery;
    DspDsControlePermanencia: TDataSetProvider;
    CdsDsControlePermanencia: TClientDataSet;
    DsControlePermanencia: TDataSource;
    SqlPermanenciaScaner: TSQLQuery;
    DspPermanenciaScaner: TDataSetProvider;
    CdsPermanenciaScaner: TClientDataSet;
    DsPermanenciaScaner: TDataSource;
    OpenDialog1: TOpenDialog;
    BtnIncluirDocDigitalizado: TBitBtn;
    BtnVisuzalizarDocDigitalizador: TBitBtn;
    TabSheet3: TTabSheet;
    PageControl2: TPageControl;
    TabSheet9: TTabSheet;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label139: TLabel;
    Label150: TLabel;
    Label151: TLabel;
    Label152: TLabel;
    Label153: TLabel;
    Label154: TLabel;
    Label155: TLabel;
    Label162: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBGrid2: TDBGrid;
    EditArtigo: TEdit;
    EditObservacaoCondenacao: TEdit;
    EditAno: TEdit;
    EditMes: TEdit;
    EditDia: TEdit;
    DBLookupComboBox11: TDBLookupComboBox;
    Editguia: TEdit;
    Editvara: TEdit;
    ComboBoxprisao: TComboBox;
    ComboBoxreu: TComboBox;
    Editprocesso: TEdit;
    ComboBox1: TComboBox;
    cbbJustica: TComboBox;
    TabSheet4: TTabSheet;
    Label8: TLabel;
    Label14: TLabel;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DBNavigator2: TDBNavigator;
    DBGrid3: TDBGrid;
    OpenDialogDoc: TOpenDialog;
    SaveDialogDoc: TSaveDialog;
    CDSHISTORICO_internoFuncionrio: TStringField;
    TabSheetCalcularExecucaoPenal: TTabSheet;
    BitBtn15: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Label48: TLabel;
    DsCalculoPena: TDataSource;
    CdsCalculoPena: TClientDataSet;
    DspCalculoPena: TDataSetProvider;
    SqlCalculoPena: TSQLQuery;
    Label60: TLabel;
    TabSheet5: TTabSheet;
    Editconcedido: TEdit;
    Label61: TLabel;
    Label62: TLabel;
    Label70: TLabel;
    Label76: TLabel;
    Memoobsbeneficio: TMemo;
    ComboBoxbeneficio: TComboBox;
    DateTimePickerdtbeneficio: TDateTimePicker;
    DBGrid4: TDBGrid;
    Button1: TButton;
    SQLbeneficio: TSQLQuery;
    DSPbeneficio: TDataSetProvider;
    cdsbeneficio: TClientDataSet;
    dsbeneficio: TDataSource;
    cdsbeneficioID_BENEFICIOS: TIntegerField;
    cdsbeneficioBENEFICIO: TStringField;
    cdsbeneficioDATA_BENEFICIO: TSQLTimeStampField;
    cdsbeneficioCONCEDIDO: TStringField;
    cdsbeneficioDATA_REVOGACAO: TSQLTimeStampField;
    cdsbeneficioMOTIVO_REVOGACAO: TStringField;
    cdsbeneficioOBS: TStringField;
    cdsbeneficioID_INTERNO: TIntegerField;
    DBMemo1: TDBMemo;
    Label77: TLabel;
    Label29: TLabel;
    DateTimePickhistorico: TDateTimePicker;
    Label41: TLabel;
    Memohistorico: TMemo;
    BitBtn6: TBitBtn;
    DBGrid5: TDBGrid;
    DBMemohistorico: TDBMemo;
    CDSHISTORICO_internoTIPO_HISTORICO: TStringField;
    PageControlCalculo: TPageControl;
    TabSheet6: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    SqlCondenacao: TSQLQuery;
    DspCondenacao: TDataSetProvider;
    CdsCondenacao: TClientDataSet;
    DsCondenacao: TDataSource;
    DBGrid6: TDBGrid;
    SqlDetracao: TSQLQuery;
    DspDetracao: TDataSetProvider;
    CdsDetracao: TClientDataSet;
    DsDetracao: TDataSource;
    DBGrid7: TDBGrid;
    SqlInterrupcao: TSQLQuery;
    DspInterrupcao: TDataSetProvider;
    CdsInterrupcao: TClientDataSet;
    DsInterrupcao: TDataSource;
    DBGrid8: TDBGrid;
    DBGrid9: TDBGrid;
    SqlRemicao: TSQLQuery;
    DspRemicao: TDataSetProvider;
    CdsRemicao: TClientDataSet;
    DsRemicao: TDataSource;
    TabSheet12: TTabSheet;
    SqlLinhaTempo: TSQLQuery;
    DspLinhaTempo: TDataSetProvider;
    CdsLinhaTempo: TClientDataSet;
    DsLinhaTempo: TDataSource;
    DBGridLinhaTempo: TDBGrid;
    Panel1: TPanel;
    BtnCalcular: TBitBtn;
    DBEditANO: TDBEdit;
    Label81: TLabel;
    DBImage2: TDBImage;
    TabSheet13: TTabSheet;
    Label42: TLabel;
    Label50: TLabel;
    DBEdit21: TDBEdit;
    Label51: TLabel;
    DBEdit36: TDBEdit;
    Label53: TLabel;
    DBEdit37: TDBEdit;
    DBComboBox6: TDBComboBox;
    BitBtn7: TBitBtn;
    TabSheet14: TTabSheet;
    DsComutacao: TDataSource;
    CdsComutacao: TClientDataSet;
    DspComutacao: TDataSetProvider;
    SqlComutacao: TSQLQuery;
    DBGrid10: TDBGrid;
    RadioGroupVerLinha: TRadioGroup;
    DBEditMES: TDBEdit;
    DBEditDIA: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label15: TLabel;
    DBEditDataInicio: TDBEdit;
    Label57: TLabel;
    DBEdit23: TDBEdit;
    Label58: TLabel;
    DBMemo4: TDBMemo;
    Label56: TLabel;
    DBEdit22: TDBEdit;
    Label26: TLabel;
    DBEdit30: TDBEdit;
    DBEditDataFim: TDBEdit;
    Label16: TLabel;
    DBGrid11: TDBGrid;
    Label17: TLabel;
    DBComboBox7: TDBComboBox;
    DBRadioGroupConflito: TDBRadioGroup;
    DBEditNumConflito: TDBEdit;
    DBMemoObsConflito: TDBMemo;
    LbNumConflito: TLabel;
    DBRadioGroupStatusConflito: TDBRadioGroup;
    LbObsConflito: TLabel;
    DBNavigator3: TDBNavigator;
    GroupBox1: TGroupBox;
    LbMSG2: TLabel;
    LbMSG1: TLabel;
    DBEditNumOficioPrazo: TDBEdit;
    LbNumOficioPrazo: TLabel;
    DbRgEnviadoOficioPrazo: TDBRadioGroup;
    GbOficioPrazo: TGroupBox;
    procedure SpeedButton3Click(Sender: TObject);
    procedure cbbJusticaKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxsituacaojuridicaKeyPress(Sender: TObject;
      var Key: Char);
    procedure ComboBoxprisaoKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxreuKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBComboBox5KeyPress(Sender: TObject; var Key: Char);
    procedure BtnIncluirDocDigitalizadoClick(Sender: TObject);
    procedure BtnVisuzalizarDocDigitalizadorClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure CdsDsControlePermanenciaAfterInsert(DataSet: TDataSet);
    procedure CdsDsControlePermanenciaAfterPost(DataSet: TDataSet);
    procedure DsControlePermanenciaDataChange(Sender: TObject;
      Field: TField);
    procedure DsPermanenciaScanerDataChange(Sender: TObject;
      Field: TField);
    procedure CdsPermanenciaScanerAfterInsert(DataSet: TDataSet);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
      Index: Integer);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure CDSHISTORICO_internoAfterInsert(DataSet: TDataSet);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure PageControlPrincipalChange(Sender: TObject);
    procedure BtnCalcularClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure DBGridConsultaDblClick(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure BitBtn7Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure DBGrid11DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure PageControlModeloCadastroChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure DBRadioGroupConflitoChange(Sender: TObject);
    procedure DBRadioGroupConflitoClick(Sender: TObject);
    procedure DBEditDataInicioKeyPress(Sender: TObject; var Key: Char);
    procedure DBEditDataInicioExit(Sender: TObject);
    procedure DBEditDataFimExit(Sender: TObject);
    procedure DBEditDataFimKeyPress(Sender: TObject; var Key: Char);
    procedure DbRgEnviadoOficioPrazoChange(Sender: TObject);
    procedure DbRgEnviadoOficioPrazoClick(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroInternoJuridico: TFrmCadastroInternoJuridico;

implementation

uses Lib, DmPrincipal, ModeloCadastro, PermaneciaScaner,
  SelecionarAutosPermanencia, CadastroAdvogado, VisualizadorOLE,
  CadastroProcesso, Detracao, Interrupcao, Remicao, RevogacaoBeneficio,
  CancelarSaidao, Comutacao, CadastroNacionalidade;

{$R *.dfm}

procedure TFrmCadastroInternoJuridico.SpeedButton3Click(Sender: TObject);
begin
  inherited;

  DsCadastro.DataSet.FieldByName('MEDIDASEGURANCA').AsVariant := null;
  DsCadastro.DataSet.FieldByName('TIPOPROCESSO').AsVariant := null;

end;

{function TFrmCadastroInternoJuridico.CriarSituacaoJuridica(): Boolean;
begin
 CDSsituacaojuridica.CreateDataSet;
 CDSsituacaojuridica.Open;

 CDSsituacaojuridica.Append;
 CDSsituacaojuridica.FieldByName('idsituacaojuridica').AsInteger := CDSsituacaojuridica.RecordCount + 1;
 CDSsituacaojuridica.FieldByName('situacaojuridica').AsString := 'Processado';
 CDSsituacaojuridica.Post;

 CDSsituacaojuridica.Append;
 CDSsituacaojuridica.FieldByName('idsituacaojuridica').AsInteger := CDSsituacaojuridica.RecordCount + 1;
 CDSsituacaojuridica.FieldByName('situacaojuridica').AsString := 'Condenado';
 CDSsituacaojuridica.Post;
end;}

procedure TFrmCadastroInternoJuridico.cbbJusticaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := #0;
end;

procedure TFrmCadastroInternoJuridico.ComboBoxsituacaojuridicaKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  Key := #0;
end;

procedure TFrmCadastroInternoJuridico.ComboBoxprisaoKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  Key := #0;
end;

procedure TFrmCadastroInternoJuridico.ComboBoxreuKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := #0;
end;

procedure TFrmCadastroInternoJuridico.FormShow(Sender: TObject);
begin
  inherited;

  DsComutacao.DataSet.Close;
  DsComutacao.DataSet.Open;

  DSHISTORICO_interno.DataSet.Close;
  DSHISTORICO_interno.DataSet.OPEN;

  dsbeneficio.DataSet.Close;
  dsbeneficio.DataSet.OPEN;

  DM.DSADVOGADO.DataSet.Close;
  DM.DSADVOGADO.DataSet.OPEN;

  DScontrolepermanencia.DataSet.Close;
  DScontrolepermanencia.DataSet.Open;

  DsPermanenciaScaner.DataSet.Close;
  DsPermanenciaScaner.DataSet.Open;

//  DBEditDataInicio.Field.EditMask := '99\/99\/9999;1;_';
//  DBEditDataFim.Field.EditMask := '99\/99\/9999;1;_';

  PageControl1.ActivePageIndex := 0;
  PageControlCalculo.ActivePageIndex := 0;

  DsCondenacao.DataSet.Close;
  DsCondenacao.DataSet.Open;

  DsDetracao.DataSet.Close;
  DsDetracao.DataSet.Open;

  DsInterrupcao.DataSet.Close;
  DsInterrupcao.DataSet.Open;

  DsRemicao.DataSet.Close;
  DsRemicao.DataSet.Open;

  DsLinhaTempo.DataSet.Close;
  DsLinhaTempo.DataSet.Open;

  if not ContemValor('D', PERMISSAO_JURIDICA) then
  begin
    DBNavigator2.VisibleButtons := DBNavigator2.VisibleButtons - [nbDelete];
    DBNavigator3.VisibleButtons := DBNavigator3.VisibleButtons - [nbDelete];
    LbMSG1.Visible := False;
    LbMSG2.Visible := False;
  end;

end;

procedure TFrmCadastroInternoJuridico.DBComboBox5KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := #0;
end;

procedure TFrmCadastroInternoJuridico.BtnIncluirDocDigitalizadoClick(Sender: TObject);
var
  s_mensagem: array[0..1000] of Char;
begin
  inherited;

  try
    if not (DsPermanenciaScaner.DataSet.State in [dsedit, dsinsert]) then
    begin
      if DsPermanenciaScaner.DataSet.IsEmpty then
      begin
        DsPermanenciaScaner.DataSet.Append;
      end
      else
      begin

        StrPCopy(s_mensagem, 'Substituir este registro (' + DsPermanenciaScaner.DataSet.FieldByName('DESCRICAO_PERMANENCIA').AsString + ')?');

        if Application.MessageBox(s_mensagem,
          'Confirme.', mb_YesNo + Mb_IconQuestion) = idYes then
        begin

          DsPermanenciaScaner.DataSet.Edit;
          if OpenDialogDoc.Execute then
          begin
            DsPermanenciaScaner.DataSet.FieldByName('DESCRICAO_PERMANENCIA').AsString := ExtractFileName(OpenDialogDoc.FileName);
            try
              self.enabled := false;
              SalvarBlobDatabase(DsPermanenciaScaner, 'DOC_SCANER', OpenDialogDoc.FileName);
              DsPermanenciaScaner.DataSet.Post;
            except
            end;
            Self.Enabled := true;
          end;
        end
        else
          DsPermanenciaScaner.DataSet.Append;

      end;
    end
    else
    begin
      if OpenDialogDoc.Execute then
      begin
        DsPermanenciaScaner.DataSet.FieldByName('DESCRICAO_PERMANENCIA').AsString := ExtractFileName(OpenDialogDoc.FileName);
        try
          self.enabled := false;
          SalvarBlobDatabase(DsPermanenciaScaner, 'DOC_SCANER', OpenDialogDoc.FileName);
          DsPermanenciaScaner.DataSet.Post;
        except
        end;
        Self.Enabled := true;
      end;
    end;

    Self.SetFocus;

  except
    ShowMessage('Não gravou, tente novamente!');
  end;

  //  FrmPermaneciaScaner := tFrmPermaneciaScaner.Create(Application);
  //
  //  FrmPermaneciaScaner.dsfiltroautos.DataSet.Close;
  //  FrmPermaneciaScaner.SQLfiltroautos.params[0].value := dscadastro.DataSet.fieldbyname('id_interno').AsInteger;
  //  FrmPermaneciaScaner.dsfiltroautos.DataSet.Open;
  //
  //  FrmPermaneciaScaner.ShowModal;
  //  FreeAndNil(FrmPermaneciaScaner);

end;

procedure TFrmCadastroInternoJuridico.BtnVisuzalizarDocDigitalizadorClick(Sender: TObject);
var
  nome_arquivo: string;
  Dir: string;
  liberado_acesso: Boolean;
  s_mensagem: array[0..1000] of Char;
  s_senha_digitada: string;
  s_senha_calculada: string;
begin
  inherited;

  if not DsPermanenciaScaner.DataSet.Active then
    Exit;

  if DsPermanenciaScaner.DataSet.IsEmpty then
    Exit;

  if DsPermanenciaScaner.DataSet.fieldbyname('ID_PERMANENCIA_SCANER').AsInteger <= 0 then
  begin
    showmessage('Não pode visualizar antes de salvar dados do interno.');
    exit;
  end;

  Dir := GLOBAL_MEUS_DOCUMENTOS + '\view\' + IntToStr(GLOBAL_ID_FUNCIONARIO) + '\';

  if not DirectoryExists(Dir) then
    ForceDirectories(Dir);

  nome_arquivo := Dir + DsPermanenciaScaner.DataSet.FieldByName('DESCRICAO_PERMANENCIA').AsString;

  (DsPermanenciaScaner.DataSet.FieldByName('DOC_SCANER') as TBlobField).SaveToFile(nome_arquivo);
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

  //  Frmselecionarautospermanencia := TFrmselecionarautospermanencia.Create(Application);
  //
  //  Frmselecionarautospermanencia.dsfiltroautos.DataSet.Close;
  //  Frmselecionarautospermanencia.SQLfiltroautos.params[0].value := dscadastro.DataSet.fieldbyname('id_interno').AsInteger;
  //  Frmselecionarautospermanencia.dsfiltroautos.DataSet.Open;
  //
  //  Frmselecionarautospermanencia.ShowModal;
  //  FreeAndNil(Frmselecionarautospermanencia);
end;

procedure TFrmCadastroInternoJuridico.btn2Click(Sender: TObject);
begin
  inherited;
  FrmCadastroadvogado := TFrmCadastroadvogado.create(Application);
  FrmCadastroadvogado.showmodal;
  FreeAndNil(FrmCadastroadvogado);
  CorNosCampos;

  DM.DSADVOGADO.DataSet.Close;
  DM.DSADVOGADO.DataSet.OPEN;

end;

procedure TFrmCadastroInternoJuridico.CdsDsControlePermanenciaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  DScontrolepermanencia.DataSet.fieldbyname('ID_controle_permanencia').AsInteger := DBGenerator('idcontrolepermanencia');
  DScontrolepermanencia.DataSet.fieldbyname('id_interno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;

end;

procedure TFrmCadastroInternoJuridico.CdsDsControlePermanenciaAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  DsCadastro.DataSet.FieldByName('data_permanencia').AsString := DScontrolepermanencia.DataSet.fieldbyname('data_final').AsString;
end;

procedure TFrmCadastroInternoJuridico.DsControlePermanenciaDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;

  with DsControlePermanencia.dataset do
  begin

    BtnIncluirDocDigitalizado.Enabled := False;

    if not active then
      exit;

    BtnIncluirDocDigitalizado.Enabled := not IsEmpty;

    if not (state in [dsedit, dsinsert]) then
      exit;

    BtnIncluirDocDigitalizado.Enabled := false;

    if fieldbyname('data_inicial').AsVariant <> null then
      if fieldbyname('diasautorizados').asinteger > 0 then
        if fieldbyname('data_final').AsString = '' then
          fieldbyname('data_final').AsDateTime := fieldbyname('data_inicial').AsDateTime + fieldbyname('diasautorizados').AsInteger;

   { if FieldByName('CONFLITO_COMPETENCIA').AsString = 'S' then
    begin
      LbNumConflito.Enabled := true;
      DBEditNumConflito.Enabled := true;
      DBRadioGroupStatusConflito.Enabled := true;
      LbObsConflito.Enabled := true;
      DBMemoObsConflito.Enabled := true;

      if FieldByName('CONFLITO_STATUS').AsVariant = null then
        DBRadioGroupStatusConflito.ItemIndex := 0;
    end
    else
    begin
      DBRadioGroupConflito.ItemIndex := 1;
      LbNumConflito.Enabled := false;
      DBEditNumConflito.Enabled := false;
      DBRadioGroupStatusConflito.Enabled := false;
      LbObsConflito.Enabled := false;
      DBMemoObsConflito.Enabled := false;
    end; }

  end;



end;

procedure TFrmCadastroInternoJuridico.DsPermanenciaScanerDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;

  with DsPermanenciaScaner.dataset do
  begin

    BtnVisuzalizarDocDigitalizador.Enabled := False;

    if not active then
      exit;

    BtnVisuzalizarDocDigitalizador.Enabled := not IsEmpty;

  end;

end;

procedure TFrmCadastroInternoJuridico.CdsPermanenciaScanerAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  DsPermanenciaScaner.DataSet.fieldbyname('ID_PERMANENCIA_SCANER').AsInteger := DBGenerator('idpermanencia_scaner');
  DsPermanenciaScaner.DataSet.fieldbyname('ID_CONTROLE_PERMANENCIA').AsInteger :=
    DsControlePermanencia.DataSet.fieldbyname('ID_CONTROLE_PERMANENCIA').AsInteger;

  if OpenDialogDoc.Execute then
  begin
    DsPermanenciaScaner.DataSet.FieldByName('DESCRICAO_PERMANENCIA').AsString := ExtractFileName(OpenDialogDoc.FileName);
    try
      self.enabled := false;
      SalvarBlobDatabase(DsPermanenciaScaner, 'DOC_SCANER', OpenDialogDoc.FileName);
      DsPermanenciaScaner.DataSet.Post;
    except
    end;
    Self.Enabled := true;
  end;
end;

procedure TFrmCadastroInternoJuridico.DBCtrlGrid1PaintPanel(
  DBCtrlGrid: TDBCtrlGrid; Index: Integer);
begin
  inherited;

  if Odd(DBCtrlGrid.DataSource.DataSet.RecNo) then
    DBCtrlGrid.Color := clWhite
  else
    DBCtrlGrid.Color := clSilver;

end;

procedure TFrmCadastroInternoJuridico.DBGrid3DblClick(Sender: TObject);
begin
  inherited;
  BtnVisuzalizarDocDigitalizadorClick(nil);
end;

procedure TFrmCadastroInternoJuridico.CDSHISTORICO_internoAfterInsert(
  DataSet: TDataSet);
begin
  inherited;

  DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
  DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsDateTime := date;
  DSHISTORICO_interno.DataSet.fieldbyname('setor').AsString := 'Juridíco';
  DSHISTORICO_interno.DataSet.fieldbyname('ID_FUNCIONARIO').AsInteger :=
    GLOBAL_ID_FUNCIONARIO;

end;

procedure TFrmCadastroInternoJuridico.BitBtn15Click(Sender: TObject);
begin

  if (PERMISSAO_PROCESSOCONDENACAO = '') or (PERMISSAO_PROCESSOCONDENACAO = 'R') then
  begin
    ShowMessage('Você não possui permissão para acessar o cadastro de Processos e Condenações!');
    Exit;
  end;

  inherited;

  FrmCadastroProcesso := TFrmCadastroProcesso.Create(Application);
  FrmCadastroProcesso.ID_INTERNO := DsCadastro.Dataset.FieldByname('ID_INTERNO').AsInteger;
  FrmCadastroProcesso.DsConsulta.DataSet.Filter := 'IDINTERNO = ' + DsCadastro.Dataset.FieldByname('ID_INTERNO').asstring;
  FrmCadastroProcesso.DsConsulta.DataSet.Filtered := true;
  FrmCadastroProcesso.DBLookupComboBoxNomeInterno.Enabled := False;
  FrmCadastroProcesso.ShowModal;
  freeandnil(FrmCadastroProcesso);

  DsCondenacao.DataSet.Close;
  DsCondenacao.DataSet.Open;

end;

procedure TFrmCadastroInternoJuridico.BitBtn1Click(Sender: TObject);
begin

  if (PERMISSAO_DETRACAO = '') or (PERMISSAO_DETRACAO = 'R') then
  begin
    ShowMessage('Você não possui permissão para acessar o cadastro de Detração!');
    Exit;
  end;

  inherited;

  FrmDetracao := TFrmDetracao.Create(Application);
  FrmDetracao.ID_INTERNO := DsCadastro.Dataset.FieldByname('ID_INTERNO').AsInteger;
  FrmDetracao.DsConsulta.DataSet.Filter := 'ID_INTERNO = ' + DsCadastro.Dataset.FieldByname('ID_INTERNO').asstring;
  FrmDetracao.DsConsulta.DataSet.Filtered := true;
  FrmDetracao.DBLookupComboBoxNomeInterno.Enabled := False;
  FrmDetracao.ShowModal;
  freeandnil(FrmDetracao);

  DsDetracao.DataSet.Close;
  DsDetracao.DataSet.Open;

end;

procedure TFrmCadastroInternoJuridico.BitBtn4Click(Sender: TObject);
begin

  if (PERMISSAO_INTERRUPCAO = '') or (PERMISSAO_INTERRUPCAO = 'R') then
  begin
    ShowMessage('Você não possui permissão para acessar o cadastro de Interrupção!');
    Exit;
  end;

  inherited;

  FrmInterrupcao := TFrmInterrupcao.Create(Application);
  FrmInterrupcao.ID_INTERNO := DsCadastro.Dataset.FieldByname('ID_INTERNO').AsInteger;
  FrmInterrupcao.DsConsulta.DataSet.Filter := 'ID_INTERNO = ' + DsCadastro.Dataset.FieldByname('ID_INTERNO').asstring;
  FrmInterrupcao.DsConsulta.DataSet.Filtered := true;
  FrmInterrupcao.DBLookupComboBoxNomeInterno.Enabled := False;
  FrmInterrupcao.ShowModal;
  freeandnil(FrmInterrupcao);

  DsInterrupcao.DataSet.Close;
  DsInterrupcao.DataSet.Open;

end;

procedure TFrmCadastroInternoJuridico.BitBtn5Click(Sender: TObject);
begin

  if (PERMISSAO_REMICAO = '') or (PERMISSAO_REMICAO = 'R') then
  begin
    ShowMessage('Você não possui permissão para acessar o cadastro de Remição!');
    Exit;
  end;

  inherited;

  FrmRemicao := TFrmRemicao.Create(Application);
  FrmRemicao.ID_INTERNO := DsCadastro.Dataset.FieldByname('ID_INTERNO').AsInteger;
  FrmRemicao.DsConsulta.DataSet.Filter := 'ID_INTERNO = ' + DsCadastro.Dataset.FieldByname('ID_INTERNO').asstring;
  FrmRemicao.DsConsulta.DataSet.Filtered := true;
  FrmRemicao.DBLookupComboBoxNomeInterno.Enabled := False;
  FrmRemicao.ShowModal;
  freeandnil(FrmRemicao);

  DsRemicao.DataSet.Close;
  DsRemicao.DataSet.Open;

end;

procedure TFrmCadastroInternoJuridico.PageControlPrincipalChange(
  Sender: TObject);
begin
  inherited;

  if PageControlPrincipal.ActivePage = TabSheetCalcularExecucaoPenal then
  begin
    BtnCalcular.OnClick(nil);
  end;

end;

procedure TFrmCadastroInternoJuridico.BtnCalcularClick(Sender: TObject);
begin
  inherited;

  try
    SqlLinhaTempo.ParamByName('id_interno').AsInteger :=
      DsCadastro.DataSet.FieldByName('id_interno').AsInteger;

    SqlLinhaTempo.ParamByName('ver_linha').AsString := 'N';
    if RadioGroupVerLinha.ItemIndex = 0 then
      SqlLinhaTempo.ParamByName('ver_linha').AsString := 'S';

    DsLinhaTempo.DataSet.Close;
    DsLinhaTempo.DataSet.Open;

    DsLinhaTempo.DataSet.Last;

    DsCadastro.DataSet.FieldByName('tempo_consolidado_ano').AsInteger :=
      DsLinhaTempo.DataSet.FieldByName('tempo_consolidado_ano').AsInteger;

    DsCadastro.DataSet.FieldByName('tempo_consolidado_mes').AsInteger :=
      DsLinhaTempo.DataSet.FieldByName('tempo_consolidado_mes').AsInteger;

    DsCadastro.DataSet.FieldByName('tempo_consolidado_dia').AsInteger :=
      DsLinhaTempo.DataSet.FieldByName('tempo_consolidado_dia').AsInteger;

    DsLinhaTempo.DataSet.first;

  except
  end;

  exit;

end;

procedure TFrmCadastroInternoJuridico.Button1Click(Sender: TObject);
begin
  inherited;
  dsbeneficio.DataSet.Append;
  dsbeneficio.DataSet.fieldbyname('ID_BENEFICIOS').AsInteger := 0;
  dsbeneficio.DataSet.fieldbyname('id_interno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  dsbeneficio.DataSet.fieldbyname('beneficio').AsString := ComboBoxbeneficio.text;
  dsbeneficio.DataSet.fieldbyname('concedido').AsString := Editconcedido.text;
  dsbeneficio.DataSet.fieldbyname('data_beneficio').AsString := formatdatetime('dd/mm/yyyy', DateTimePickerdtbeneficio.date);
  dsbeneficio.DataSet.fieldbyname('obs').AsString := Memoobsbeneficio.Text;
  dsbeneficio.DataSet.Post;

  ComboBoxbeneficio.Text := '';
  Editconcedido.Text := '';
  Memoobsbeneficio.Text := '';

end;

procedure TFrmCadastroInternoJuridico.EditarClick(Sender: TObject);
begin
  inherited;
  DateTimePickerdtbeneficio.Date := Date;
  DateTimePickhistorico.Date := Date;
end;

procedure TFrmCadastroInternoJuridico.DBGrid4DblClick(Sender: TObject);
begin
  inherited;
  if dsbeneficio.DataSet.FieldByName('motivo_revogacao').AsString = '' then
  begin

    Frmrevogacaobeneficio := TFrmrevogacaobeneficio.Create(Self);
    Frmrevogacaobeneficio.ShowModal;

    if MessageDlg('Confirma Revogacão?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      dsbeneficio.DataSet.Edit;
      dsbeneficio.DataSet.FieldByName('data_revogacao').Asstring := formatdatetime('dd/mm/yyyy', Frmrevogacaobeneficio.DateTimePicker1.date);
      dsbeneficio.DataSet.fieldbyname('motivo_revogacao').AsString := FrmRevogacaoBeneficio.Memo1.Text;
      dsbeneficio.DataSet.Post;
    end
    else
      ShowMessage('Transação Cancelada!');
  end
  else
  begin
    if MessageDlg('Confirma Cancelamento de Revogacão?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      dsbeneficio.DataSet.Edit;
      dsbeneficio.DataSet.fieldbyname('obs').AsString := dsbeneficio.DataSet.fieldbyname('obs').AsString +
        ' Benefício Revogado na data: ' + dsbeneficio.DataSet.FieldByName('data_revogacao').Asstring
        + ' Motivo: ' + dsbeneficio.DataSet.FieldByName('motivo_revogacao').Asstring
        + ' e Beneficio Reativado na data: ' + datetostr(date);
      dsbeneficio.DataSet.FieldByName('data_revogacao').Asstring := '';
      dsbeneficio.DataSet.fieldbyname('motivo_revogacao').AsString := '';
      dsbeneficio.DataSet.Post;
    end
    else
      ShowMessage('Transação Cancelada!');
  end
end;

procedure TFrmCadastroInternoJuridico.BitBtn6Click(Sender: TObject);
begin
  inherited;
  DSHISTORICO_interno.DataSet.Append;
  DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
  DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsString :=
    FormatDateTime('dd/mm/yyyy', DateTimePickhistorico.Date);
  DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString := Memohistorico.Lines.Text;
  DSHISTORICO_interno.DataSet.fieldbyname('setor').AsString := 'Jurídico';
  DSHISTORICO_interno.DataSet.fieldbyname('ID_FUNCIONARIO').AsInteger :=
    GLOBAL_ID_FUNCIONARIO;
  DSHISTORICO_interno.DataSet.Post;

  Memohistorico.Lines.Clear;
end;

procedure TFrmCadastroInternoJuridico.DBGridConsultaDblClick(
  Sender: TObject);
begin
  inherited;
  DateTimePickerdtbeneficio.Date := Date;
  DateTimePickhistorico.Date := Date;
end;

procedure TFrmCadastroInternoJuridico.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  with DsCadastro.DataSet do
  begin

    if not Active then
      Exit;

    if not (state in [dsedit, dsinsert]) then
      PageControlPrincipal.ActivePageIndex := 0;

  end;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_JURIDICA)
    and not ContemValor('E', PERMISSAO_JURIDICA)
    and not ContemValor('D', PERMISSAO_JURIDICA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_JURIDICA)
    and not ContemValor('E', PERMISSAO_JURIDICA)
    and not ContemValor('D', PERMISSAO_JURIDICA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_JURIDICA)
    and ContemValor('E', PERMISSAO_JURIDICA)
    and not ContemValor('D', PERMISSAO_JURIDICA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_JURIDICA)
    and ContemValor('E', PERMISSAO_JURIDICA)
    and ContemValor('D', PERMISSAO_JURIDICA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_JURIDICA)
    and not ContemValor('E', PERMISSAO_JURIDICA)
    and ContemValor('D', PERMISSAO_JURIDICA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_JURIDICA)
    and not ContemValor('E', PERMISSAO_JURIDICA)
    and ContemValor('D', PERMISSAO_JURIDICA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_JURIDICA)
    and ContemValor('E', PERMISSAO_JURIDICA)
    and not ContemValor('D', PERMISSAO_JURIDICA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroInternoJuridico.BitBtn7Click(Sender: TObject);
begin
  inherited;

  FrmComutacao := TFrmComutacao.Create(Application);
  FrmComutacao.SqlCadastro.ParamByName('ID_INTERNO').AsInteger :=
    DsCadastro.DataSet.FieldByname('ID_INTERNO').AsInteger;
  FrmComutacao.ShowModal;
  FreeAndNil(FrmComutacao);

  DsComutacao.DataSet.Close;
  DsComutacao.DataSet.Open;

end;

procedure TFrmCadastroInternoJuridico.btn1Click(Sender: TObject);
begin
  //Verificando se o usuário tem a permissão de acesso ao cadastro.
  if (PERMISSAO_CADASTRO = '') or (PERMISSAO_CADASTRO = 'R') then
  begin
    ShowMessage('Você não possui Permissão de Acesso ao menu de Cadastros!');
    Exit;
  end;
  inherited;
  FrmCadastronacionalidade := TFrmCadastronacionalidade.create(Application);
  FrmCadastronacionalidade.showmodal;
  FreeAndNil(FrmCadastronacionalidade);
  CorNosCampos;

  DM.DsPais.DataSet.Close;
  DM.DsPais.DataSet.OPEN;

end;

procedure TFrmCadastroInternoJuridico.DBGrid11DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if (State <> [gdSelected]) and (State <> [gdSelected, gdFocused]) then
  begin

    TDBGrid(Sender).Canvas.Font.Color := clBlack;

    if odd(TDBGrid(Sender).DataSource.DataSet.Recno) then
    begin
      TDBGrid(Sender).Canvas.Brush.color := cl3DLight;
    end
    else
    begin
      TDBGrid(Sender).Canvas.Brush.color := clWhite;
    end;

    TDBGrid(Sender).Canvas.FillRect(rect);
    TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);

  end
  else
  begin
    TDBGrid(Sender).Canvas.Brush.color := $00854F3F;
    TDBGrid(Sender).Canvas.Font.Color := clWhite;
    TDBGrid(Sender).Canvas.FillRect(rect);
    TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
  end;


end;

procedure TFrmCadastroInternoJuridico.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_JURIDICA)
    and not ContemValor('E', PERMISSAO_JURIDICA)
    and not ContemValor('D', PERMISSAO_JURIDICA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_JURIDICA)
    and not ContemValor('E', PERMISSAO_JURIDICA)
    and not ContemValor('D', PERMISSAO_JURIDICA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_JURIDICA)
    and ContemValor('E', PERMISSAO_JURIDICA)
    and not ContemValor('D', PERMISSAO_JURIDICA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_JURIDICA)
    and ContemValor('E', PERMISSAO_JURIDICA)
    and ContemValor('D', PERMISSAO_JURIDICA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_JURIDICA)
    and not ContemValor('E', PERMISSAO_JURIDICA)
    and ContemValor('D', PERMISSAO_JURIDICA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_JURIDICA)
    and not ContemValor('E', PERMISSAO_JURIDICA)
    and ContemValor('D', PERMISSAO_JURIDICA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_JURIDICA)
    and ContemValor('E', PERMISSAO_JURIDICA)
    and not ContemValor('D', PERMISSAO_JURIDICA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroInternoJuridico.CancelarClick(Sender: TObject);
begin
  inherited;

  DsControlePermanencia.DataSet.Close;
  DsControlePermanencia.DataSet.Open;

  DSHISTORICO_interno.DataSet.Close;
  DSHISTORICO_interno.DataSet.Open;

  dsbeneficio.DataSet.Close;
  dsbeneficio.DataSet.Open;
end;

procedure TFrmCadastroInternoJuridico.PageControlModeloCadastroChange(
  Sender: TObject);
begin
  //inherited;
  if PageControlModeloCadastro.ActivePageIndex = 1 then
  begin
    CancelarClick(nil);
  end;
end;

procedure TFrmCadastroInternoJuridico.SpeedButton1Click(Sender: TObject);
begin
  //Verificando se o usuário tem a permissão de acesso ao cadastro.
  if (PERMISSAO_CADASTRO = '') or (PERMISSAO_CADASTRO = 'R') then
  begin
    ShowMessage('Você não possui Permissão de Acesso ao menu de Cadastros!');
    Exit;
  end;
  inherited;
end;

procedure TFrmCadastroInternoJuridico.SpeedButton2Click(Sender: TObject);
begin
  //Verificando se o usuário tem a permissão de acesso ao cadastro.
  if (PERMISSAO_CADASTRO = '') or (PERMISSAO_CADASTRO = 'R') then
  begin
    ShowMessage('Você não possui Permissão de Acesso ao menu de Cadastros!');
    Exit;
  end;
  inherited;
end;

procedure TFrmCadastroInternoJuridico.SpeedButton8Click(Sender: TObject);
begin
  //Verificando se o usuário tem a permissão de acesso ao cadastro.
  if (PERMISSAO_CADASTRO = '') or (PERMISSAO_CADASTRO = 'R') then
  begin
    ShowMessage('Você não possui Permissão de Acesso ao menu de Cadastros!');
    Exit;
  end;
  inherited;
end;

procedure TFrmCadastroInternoJuridico.SpeedButton4Click(Sender: TObject);
begin
  //Verificando se o usuário tem a permissão de acesso ao cadastro.
  if (PERMISSAO_CADASTRO = '') or (PERMISSAO_CADASTRO = 'R') then
  begin
    ShowMessage('Você não possui Permissão de Acesso ao menu de Cadastros!');
    Exit;
  end;
  inherited;
end;

procedure TFrmCadastroInternoJuridico.SpeedButton5Click(Sender: TObject);
begin
  //Verificando se o usuário tem a permissão de acesso ao cadastro.
  if (PERMISSAO_CADASTRO = '') or (PERMISSAO_CADASTRO = 'R') then
  begin
    ShowMessage('Você não possui Permissão de Acesso ao menu de Cadastros!');
    Exit;
  end;
  inherited;
end;

procedure TFrmCadastroInternoJuridico.SpeedButton6Click(Sender: TObject);
begin
  //Verificando se o usuário tem a permissão de acesso ao cadastro.
  if (PERMISSAO_CADASTRO = '') or (PERMISSAO_CADASTRO = 'R') then
  begin
    ShowMessage('Você não possui Permissão de Acesso ao menu de Cadastros!');
    Exit;
  end;
  inherited;
end;

procedure TFrmCadastroInternoJuridico.SpeedButton7Click(Sender: TObject);
begin
  //Verificando se o usuário tem a permissão de acesso ao cadastro.
  if (PERMISSAO_CADASTRO = '') or (PERMISSAO_CADASTRO = 'R') then
  begin
    ShowMessage('Você não possui Permissão de Acesso ao menu de Cadastros!');
    Exit;
  end;
  inherited;
end;

procedure TFrmCadastroInternoJuridico.SpeedButton9Click(Sender: TObject);
begin
  //Verificando se o usuário tem a permissão de acesso ao cadastro.
  if (PERMISSAO_CADASTRO = '') or (PERMISSAO_CADASTRO = 'R') then
  begin
    ShowMessage('Você não possui Permissão de Acesso ao menu de Cadastros!');
    Exit;
  end;
  inherited;
end;

procedure TFrmCadastroInternoJuridico.SpeedButton11Click(Sender: TObject);
begin
  //Verificando se o usuário tem a permissão de acesso ao cadastro.
  if (PERMISSAO_CADASTRO = '') or (PERMISSAO_CADASTRO = 'R') then
  begin
    ShowMessage('Você não possui Permissão de Acesso ao menu de Cadastros!');
    Exit;
  end;
  inherited;
end;

procedure TFrmCadastroInternoJuridico.DBEdit19Exit(Sender: TObject);
begin
  inherited;
  if not ValidaCPF(DBEdit19.text) then
  begin
    ShowMessage('CPF Inválido!');
    DBEdit19.setfocus;
    Exit;
  end;
end;

procedure TFrmCadastroInternoJuridico.DBRadioGroupConflitoChange(
  Sender: TObject);
begin
  inherited;

  if DBRadioGroupConflito.ItemIndex = 0 then
  begin
    LbNumConflito.Enabled := true;
    DBEditNumConflito.Enabled := true;
    DBRadioGroupStatusConflito.Enabled := true;
    LbObsConflito.Enabled := true;
    DBMemoObsConflito.Enabled := true;

    if DBRadioGroupStatusConflito.ItemIndex = -1 then
      DBRadioGroupStatusConflito.ItemIndex := 0;
  end
  else
  begin
    LbNumConflito.Enabled := false;
    DBEditNumConflito.Enabled := false;
    DBRadioGroupStatusConflito.Enabled := false;
    LbObsConflito.Enabled := false;
    DBMemoObsConflito.Enabled := false;
  end;

  if DBEditNumConflito.CanFocus then
  begin
    DBEditNumConflito.SetFocus;
  end
  else
  begin
    if DBEdit23.CanFocus then
      DBEdit23.SetFocus;
  end;

end;

procedure TFrmCadastroInternoJuridico.DBRadioGroupConflitoClick(
  Sender: TObject);
begin
  inherited;
  if DBEditNumConflito.CanFocus then
  begin
    DBEditNumConflito.SetFocus;
  end
  else
  begin
    if DBEdit23.CanFocus then
      DBEdit23.SetFocus;
  end;
end;

procedure TFrmCadastroInternoJuridico.DBEditDataInicioKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  ValidaDataKeyPress(Sender, Key);
end;

procedure TFrmCadastroInternoJuridico.DBEditDataInicioExit(
  Sender: TObject);
begin
  inherited;
  ValidaDataExit(Sender);
end;

procedure TFrmCadastroInternoJuridico.DBEditDataFimExit(Sender: TObject);
begin
  inherited;
  ValidaDataExit(Sender);
end;

procedure TFrmCadastroInternoJuridico.DBEditDataFimKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  ValidaDataKeyPress(Sender, Key);
end;

procedure TFrmCadastroInternoJuridico.DbRgEnviadoOficioPrazoChange(
  Sender: TObject);
begin
  inherited;

  if DbRgEnviadoOficioPrazo.ItemIndex = 0 then
  begin
    LbNumOficioPrazo.Enabled := true;
    DBEditNumOficioPrazo.Enabled := true;
  end
  else
  begin
    LbNumOficioPrazo.Enabled := false;
    DBEditNumOficioPrazo.Enabled := false;
  end;

  if DBEditNumOficioPrazo.CanFocus then
  begin
    DBEditNumOficioPrazo.SetFocus;
  end
  else
  begin
    if DBEdit23.CanFocus then
      DBEdit23.SetFocus;
  end;

end;

procedure TFrmCadastroInternoJuridico.DbRgEnviadoOficioPrazoClick(
  Sender: TObject);
begin
  inherited;

  if DBEditNumOficioPrazo.CanFocus then
  begin
    DBEditNumOficioPrazo.SetFocus;
  end
  else
  begin
    if DBEdit23.CanFocus then
      DBEdit23.SetFocus;
  end;

end;

end.

