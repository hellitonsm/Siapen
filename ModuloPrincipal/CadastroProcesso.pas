unit CadastroProcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, ToolWin, ExtCtrls, DBCtrls,
  Mask, Buttons, jpeg, frxCtrls, adpDBDateTimePicker;

type
  TFrmCadastroProcesso = class(TFrmModeloCadastro)
    dsvincartigo: TDataSource;
    cdsvincartigo: TClientDataSet;
    dspvincartigo: TDataSetProvider;
    SQLvincartigo: TSQLQuery;
    cdsvincartigoID_VINC_ARTIGO: TIntegerField;
    cdsvincartigoID_ARTIGO: TIntegerField;
    cdsvincartigoID_PROCESSO: TIntegerField;
    cdsvincartigoArtigos: TStringField;
    SqlLista: TSQLQuery;
    DspLista: TDataSetProvider;
    CdsLista: TClientDataSet;
    DsLista: TDataSource;
    SqlConsulta: TSQLQuery;
    DspConsulta: TDataSetProvider;
    CdsConsulta: TClientDataSet;
    DsConsulta: TDataSource;
    PageControlProcesso: TPageControl;
    TabSheet1: TTabSheet;
    Label139: TLabel;
    Label150: TLabel;
    Label162: TLabel;
    Label153: TLabel;
    Label152: TLabel;
    Label151: TLabel;
    Label154: TLabel;
    Label4: TLabel;
    DBLookupComboBoxCOMARCA: TDBLookupComboBox;
    PageControlGeralProcessos: TPageControl;
    TabSheet2: TTabSheet;
    Label3: TLabel;
    SpeedButton4: TSpeedButton;
    DBGridArtigos: TDBGrid;
    DBLookupComboBoxartigo: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    DBNavigator2: TDBNavigator;
    TabSheet3: TTabSheet;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    TabSheetCondenacao: TTabSheet;
    PanelCondenado: TPanel;
    Label75: TLabel;
    Label74: TLabel;
    Label73: TLabel;
    DBEdit7: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    adpDBDateTimePickerDataCondenacao: TadpDBDateTimePicker;
    SqlDocumentos: TSQLQuery;
    DspDocumentos: TDataSetProvider;
    CdsDocumentos: TClientDataSet;
    DsDocumentos: TDataSource;
    DBGridDocumentos: TDBGrid;
    BtnIncluirDocDigitalizado: TBitBtn;
    BtnVisuzalizarDocDigitalizador: TBitBtn;
    OpenDialogDoc: TOpenDialog;
    SaveDialogDoc: TSaveDialog;
    DBText1: TDBText;
    Label9: TLabel;
    BtnLimpaPena: TButton;
    BtnCalcular: TBitBtn;
    TabSheetInquerito: TTabSheet;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label2: TLabel;
    dbeditcodigo: TDBEdit;
    Label7: TLabel;
    DBLookupComboBoxNomeInterno: TDBLookupComboBox;
    Label155: TLabel;
    TabSheet4: TTabSheet;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit15: TDBEdit;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit16: TDBEdit;
    CdsConsultaNOME_INTERNO: TStringField;
    CdsConsultaNPROCESSO: TStringField;
    CdsConsultaIDPROCESSO: TIntegerField;
    CdsConsultaIDINTERNO: TIntegerField;
    CdsConsultaSITUACAOJURIDICA: TStringField;
    CdsConsultaNUMERO_INQUERITO: TStringField;
    CdsConsultaRGI: TStringField;
    TabSheet5: TTabSheet;
    PanelEventos: TPanel;
    DBGridEventos: TDBGrid;
    SqlEventos: TSQLQuery;
    DspEventos: TDataSetProvider;
    CdsEventos: TClientDataSet;
    DsEventos: TDataSource;
    DsTipoEventos: TDataSource;
    BtnEventos: TButton;
    SqlTipoEventos: TSQLQuery;
    DspTipoEventos: TDataSetProvider;
    CdsTipoEventos: TClientDataSet;
    CdsCadastroIDTIPO_EVENTO_PROCESSO: TIntegerField;
    CdsCadastroDESCRICAO: TStringField;
    DBEdit4: TDBEdit;
    Label72: TLabel;
    TabSheet6: TTabSheet;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BtnComutacao: TButton;
    SqlComutacao: TSQLQuery;
    DspComutacao: TDataSetProvider;
    CdsComutacao: TClientDataSet;
    DsComutacao: TDataSource;
    LabelComutacao: TLabel;
    TimerComutacao: TTimer;
    BtnBuscarIP: TButton;
    BtnBuscaInterno: TButton;
    Label38: TLabel;
    DBComboBox2: TDBComboBox;
    Label29: TLabel;
    DBComboBox1: TDBComboBox;
    PageControlCondenacao: TPageControl;
    TabSheet7: TTabSheet;
    DBRadioGroup2: TDBRadioGroup;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label31: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    adpDBDateTimePicker5: TadpDBDateTimePicker;
    TabSheet8: TTabSheet;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label30: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    adpDBDateTimePicker4: TadpDBDateTimePicker;
    DBRadioGroup1: TDBRadioGroup;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    SqlDetracao: TSQLQuery;
    DspDetracao: TDataSetProvider;
    CdsDetracao: TClientDataSet;
    DsDetracao: TDataSource;
    SqlInterrupcao: TSQLQuery;
    DspInterrupcao: TDataSetProvider;
    CdsInterrupcao: TClientDataSet;
    DsInterrupcao: TDataSource;
    SqlRemicao: TSQLQuery;
    DspRemicao: TDataSetProvider;
    CdsRemicao: TClientDataSet;
    DsRemicao: TDataSource;
    TabSheet11: TTabSheet;
    DBGrid7: TDBGrid;
    DBGrid8: TDBGrid;
    DBGrid9: TDBGrid;
    Panel2: TPanel;
    BtnDetrcao: TBitBtn;
    Panel3: TPanel;
    BtnInterrupcao: TBitBtn;
    Panel4: TPanel;
    BtnRemicao: TBitBtn;
    Label32: TLabel;
    Label33: TLabel;
    BtnLinhaTempo: TButton;
    Label6: TLabel;
    MemoLinhaTempo: TRichEdit;
    Label34: TLabel;
    adpDBDateTimePickerFinalPena: TadpDBDateTimePicker;
    SqlDelegacia: TSQLQuery;
    DspDelegacia: TDataSetProvider;
    CdsDelegacia: TClientDataSet;
    DsDelegacia: TDataSource;
    DBLookupComboBoxDelegacia: TDBLookupComboBox;
    SpeedButton2: TSpeedButton;
    DBEdit18: TDBEdit;
    Label35: TLabel;
    Label36: TLabel;
    DBLookupComboBoxCIDADE_INQUERITO: TDBLookupComboBox;
    SpeedButton3: TSpeedButton;
    SqlCidadeInquerito: TSQLQuery;
    DSpCidadeInquerito: TDataSetProvider;
    CdsCidadeInquerito: TClientDataSet;
    DsCidadeInquerito: TDataSource;
    DBComboBox3: TDBComboBox;
    Button1: TButton;
    Button2: TButton;
    DBComboBox4: TDBComboBox;
    DBComboBox5: TDBComboBox;
    DBComboBox6: TDBComboBox;
    DBEditDATA_PROCESSO: TDBEdit;
    DBEditDATA_INQUERITO: TDBEdit;
    DBEditDATA_FATO_CONDENACAO: TDBEdit;
    DBEditDATA_PRISAO: TDBEdit;
    Label37: TLabel;
    DBLookupComboBoxVara: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    SqlCidadeVara: TSQLQuery;
    DspCidadeVara: TDataSetProvider;
    CdsCidadeVara: TClientDataSet;
    DsCidadeVara: TDataSource;
    SqlVara: TSQLQuery;
    DspVara: TDataSetProvider;
    CdsVara: TClientDataSet;
    DsVara: TDataSource;
    DBComboBox7: TDBComboBox;
    DBEdit21: TDBEdit;
    Button3: TButton;
    Label27: TLabel;
    DBEdit19: TDBEdit;
    DBEditDATA_PROCESSO_VEC: TDBEdit;
    Label28: TLabel;
    Label5: TLabel;
    DBComboBox8: TDBComboBox;
    CdsConsultaDATA_LIBERACAO: TSQLTimeStampField;
    DBMemo1: TDBMemo;
    DBEdit17: TDBEdit;
    Button4: TButton;
    DBComboBox9: TDBComboBox;
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox4KeyPress(Sender: TObject; var Key: Char);
    procedure NovoClick(Sender: TObject);
    procedure CdsCadastroBeforePost(DataSet: TDataSet);
    procedure SalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CdsCadastroBeforeEdit(DataSet: TDataSet);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure cdsvincartigoAfterInsert(DataSet: TDataSet);
    procedure CancelarClick(Sender: TObject);
    procedure BtnIncluirDocDigitalizadoClick(Sender: TObject);
    procedure BtnVisuzalizarDocDigitalizadorClick(Sender: TObject);
    procedure CdsDocumentosAfterInsert(DataSet: TDataSet);
    procedure BtnLimpaPenaClick(Sender: TObject);
    procedure CdsCadastroAfterInsert(DataSet: TDataSet);
    procedure DBGridDocumentosCellClick(Column: TColumn);
    procedure BtnCalcularClick(Sender: TObject);
    procedure BtnEventosClick(Sender: TObject);
    procedure BtnComutacaoClick(Sender: TObject);
    procedure TimerComutacaoTimer(Sender: TObject);
    procedure BtnBuscarIPClick(Sender: TObject);
    procedure BtnBuscaInternoClick(Sender: TObject);
    procedure BtnDetrcaoClick(Sender: TObject);
    procedure BtnInterrupcaoClick(Sender: TObject);
    procedure BtnRemicaoClick(Sender: TObject);
    procedure BtnLinhaTempoClick(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBLookupComboBoxDelegaciaClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBLookupComboBoxVaraClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    procedure PreencheCombos;
    { Private declarations }
  public
    ID_INTERNO: integer;
    { Public declarations }
  end;

var
  FrmCadastroProcesso: TFrmCadastroProcesso;

implementation

uses Lib, DmPrincipal, CadastroProcedencia, CadastroArtigo,
  VisualizadorOLE, EventoProcesso, Comutacao, ConsultaGeral, Remicao,
  Interrupcao, Detracao, CadastroDestino, CadastroCidade;

{$R *.dfm}

procedure TFrmCadastroProcesso.SpeedButton4Click(Sender: TObject);
begin

  if (PERMISSAO_ARTIGOPENAL = '') or (PERMISSAO_ARTIGOPENAL = 'R') then
  begin
    ShowMessage('Você não possui permissão para acessar o cadastro Artigo Penal!');
    Exit;
  end;

  inherited;

  Frmcadastroartigo := TFrmcadastroartigo.Create(Application);
  Frmcadastroartigo.ShowModal;
  FreeAndNil(Frmcadastroartigo);

  DM.Dsartigo.DataSet.Close;
  DM.Dsartigo.DataSet.OPEN;

end;

procedure TFrmCadastroProcesso.FormShow(Sender: TObject);
var
  sInterno: string;
begin
  inherited;

  if ID_INTERNO > 0 then
  begin
    DBLookupComboBoxNomeInterno.Enabled := false;
    BtnBuscaInterno.Enabled := false;
    sInterno := ' and i.id_interno = ' + inttostr(ID_INTERNO);
  end;

  SqlConsulta.SQL.Text :=
    'select '
    + 'i.nome_interno, '
    + 'p.nprocesso, '
    + 'p.idprocesso, '
    + 'p.SITUACAOJURIDICA, '
    + 'p.NUMERO_INQUERITO, '
    + 'p.IDINTERNO, '
    + 'i.rgi, '
    + 'p.data_liberacao '
    + 'from processo p '
    + 'join interno i on p.idinterno = i.id_interno '
    + 'where i.id_up = ' + inttostr(GLOBAL_ID_UP)
    + sInterno
    + 'order by i.nome_interno ';

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

  DM.Dsartigo.DataSet.close;
  DM.Dsartigo.DataSet.open;

  DSvincartigo.DataSet.close;
  DSvincartigo.DataSet.open;

  dm.DSCIDADE.DataSet.Close;
  DM.DSCIDADE.DataSet.Open;

  DM.DsInterno.DataSet.Close;
  DM.SqlInterno.Params[0].Value := GLOBAL_ID_UP;
  DM.DsInterno.DataSet.Open;

  DsDocumentos.DataSet.Close;
  DsDocumentos.DataSet.Open;

  DsTipoEventos.DataSet.Close;
  DsTipoEventos.DataSet.Open;

  DsEventos.DataSet.Close;
  DsEventos.DataSet.Open;

  DsComutacao.DataSet.Close;
  DsComutacao.DataSet.Open;

  PageControlProcesso.ActivePageIndex := 0;
  PageControlGeralProcessos.ActivePageIndex := 0;

  DsDetracao.DataSet.Close;
  DsDetracao.DataSet.Open;

  DsInterrupcao.DataSet.Close;
  DsInterrupcao.DataSet.Open;

  DsRemicao.DataSet.Close;
  DsRemicao.DataSet.Open;

  DsCidadeInquerito.DataSet.Close;
  DsCidadeInquerito.DataSet.OPEN;

  DsDelegacia.DataSet.Close;
  DsDelegacia.DataSet.Open;

  //  DBEditDATA_PROCESSO.Field.EditMask := '99\/99\/9999;1;';
  //  DBEditDATA_INQUERITO.Field.EditMask := '99\/99\/9999;1;_';
  //  DBEditDATA_FATO_CONDENACAO.Field.EditMask := '99\/99\/9999;1;';
  //  DBEditDATA_PRISAO.Field.EditMask := '99\/99\/9999;1;_';
  //  DBEditDATA_PROCESSO_VEC.Field.EditMask := '99\/99\/9999;1;';

  DsCidadeVara.DataSet.Close;
  DsCidadeVara.DataSet.OPEN;

  DsVara.DataSet.Close;
  DsVara.DataSet.Open;

  dm.dsdestino.DataSet.Close;
  dm.dsdestino.DataSet.Open;


end;

procedure TFrmCadastroProcesso.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if DBLookupComboBoxartigo.KeyValue > 0 then
  begin

    DSvincartigo.DataSet.Append;
    DSvincartigo.DataSet.fieldbyname('id_artigo').AsInteger := DBLookupComboBoxartigo.KeyValue;
    DSvincartigo.DataSet.Post;

  end;

  DBLookupComboBoxartigo.KeyValue := null;

end;

procedure TFrmCadastroProcesso.DBComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := #0;
end;

procedure TFrmCadastroProcesso.DBComboBox2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := #0;
end;

procedure TFrmCadastroProcesso.DBComboBox3KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := #0;
end;

procedure TFrmCadastroProcesso.DBComboBox4KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := #0;
end;

procedure TFrmCadastroProcesso.NovoClick(Sender: TObject);
begin
  inherited;
  PageControlCondenacao.ActivePageIndex := 0;

  if ID_INTERNO > 0 then
  begin
    DsCadastro.DataSet.fieldbyname('IDINTERNO').AsInteger := ID_INTERNO;
  end;

  PreencheCombos();
  //  frxComboBoxJustica.Text := '';
    //  frxComboBoxPrisao.Text := '';
  //  frxComboBoxReu.Text := '';
//  frxComboBoxSituacao.Text := '';
  //  frxComboBoxDelegacia.Text := '';
//  frxComboBoxMotivoPrisao.Text := '';
//  frxComboBoxTipoCrime.Text := '';
//  frxComboBoxMotivoLiberacao.text := '';


  DsCadastro.DataSet.fieldbyname('IDPROCESSO').AsInteger := DBGenerator('ID_PROCESSO');
  DsCadastro.DataSet.fieldbyname('DATA_INQUERITO').AsDateTime := Date;
  DsCadastro.DataSet.fieldbyname('DATA_PRISAO').AsDateTime := Date;
  DsCadastro.DataSet.fieldbyname('DATA_FATO_CONDENACAO').AsDateTime := Date;
//  DsCadastro.DataSet.fieldbyname('DATA_INICIO_CONDENACAO').AsDateTime := Date;
  DsCadastro.DataSet.fieldbyname('SITUACAOJURIDICA').AsString := 'INQUÉRITO POLICIAL';

end;

procedure TFrmCadastroProcesso.CdsCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;

  //  DataSet.FieldByName('TIPOJUSTICA').AsString := UpperCase(frxComboBoxJustica.Text);
//  DataSet.FieldByName('PRISAO').AsString := UpperCase(frxComboBoxPrisao.Text);
  //  DataSet.FieldByName('REU').AsString := UpperCase(frxComboBoxReu.Text);
//  DataSet.FieldByName('SITUACAOJURIDICA').AsString := UpperCase(frxComboBoxSituacao.Text);
  //  DataSet.FieldByName('DELEGACIA').AsString := UpperCase(frxComboBoxDelegacia.Text);
//  DataSet.FieldByName('MOTIVO_PRISAO').AsString := UpperCase(frxComboBoxMotivoPrisao.Text);
//  DataSet.FieldByName('TIPO_CRIME').AsString := UpperCase(frxComboBoxTipoCrime.Text);
//  DataSet.FieldByName('MOTIVO_LIBERACAO').AsString := UpperCase(frxComboBoxMotivoLiberacao.Text);

end;

procedure TFrmCadastroProcesso.PreencheCombos();
begin

  //  if frxComboBoxJustica.items.Count > 1 then
  exit;

  Screen.Cursor := crSQLWait;

  try

    //    SqlLista.SQL.Text := 'select distinct upper(TIPOJUSTICA) as tipojustica from processo';
    //
    //    frxComboBoxJustica.Items.Clear;
    //
    //    with DsLista.DataSet do
    //    begin
    //
    //      frxComboBoxJustica.Items.Add('JUSTIÇA COMUM');
    //      frxComboBoxJustica.Items.Add('JUSTIÇA FEDERAL');
    //      frxComboBoxJustica.Items.Add('JUSTIÇA MILITAR');
    //
    //      Open;
    //      while not EOF do
    //      begin
    //        if not ContemValor(FieldByName('tipojustica').AsString, 'JUSTIÇA COMUM,JUSTIÇA FEDERAL,JUSTIÇA MILITAR') then
    //          frxComboBoxJustica.Items.Add(FieldByName('tipojustica').AsString);
    //        Next;
    //      end;
    //      close;
    //    end;
    //
        ////////////////////////////////////
    //    SqlLista.SQL.Text := 'select distinct upper(PRISAO) AS PRISAO from processo ';
    //
    //    frxComboBoxPrisao.Items.Clear;
    //
    //    with DsLista.DataSet do
    //    begin
    //
    //      frxComboBoxPrisao.Items.Add('FLAGRANTE');
    //      frxComboBoxPrisao.Items.Add('CUMPRIMENTO DE SENTENÇA');
    //      frxComboBoxPrisao.Items.Add('MANDADO DE PRISÃO PREVENTIVA');
    //      frxComboBoxPrisao.Items.Add('MANDADO DE PRISÃO TEMPORÁRIA');
    //      frxComboBoxPrisao.Items.Add('MANDADO DE PRISÃO PROVISÓRIO');
    //      frxComboBoxPrisao.Items.Add('DECORRENTE DE SENTENÇA DE PRONÚNCIA');
    //      frxComboBoxPrisao.Items.Add('SENTEÇA PENAL RECORRÍVEL');
    //
    //      Open;
    //      while not EOF do
    //      begin
    //        if not ContemValor(FieldByName('PRISAO').AsString, 'FLAGRANTE,CUMPRIMENTO DE SENTENÇA,MANDADO DE PRISÃO PREVENTIVA,'
    //          + 'MANDADO DE PRISÃO PROVISÓRIO,MANDADO DE PRISÃO PROVISÓRIO,DECORRENTE DE SENTENÇA DE PRONÚNCIA,SENTEÇA PENAL RECORRÍVEL') then
    //          frxComboBoxPrisao.Items.Add(FieldByName('PRISAO').AsString);
    //        Next;
    //      end;
    //      close;
    //    end;
    //
        ////////////////////////////////////
    //    SqlLista.SQL.Text := 'select distinct upper(reu) AS REU from processo ';
    //
    //    frxComboBoxReu.Items.Clear;
    //
    //    with DsLista.DataSet do
    //    begin
    //
    //      frxComboBoxReu.Items.Add('PRIMÁRIO');
    //      frxComboBoxReu.Items.Add('REINCIDENTE');
    //      frxComboBoxReu.Items.Add('TECNICAMENTE PRIMÁRIO');
    //
    //      Open;
    //      while not EOF do
    //      begin
    //        if not ContemValor(FieldByName('reu').AsString, 'PRIMÁRIO,REINCIDENTE,TECNICAMENTE PRIMÁRIO') then
    //          frxComboBoxReu.Items.Add(FieldByName('reu').AsString);
    //        Next;
    //      end;
    //      close;
    //    end;
    //
    //    ////////////////////////////////////
    //    SqlLista.SQL.Text := 'select distinct upper(SITUACAOJURIDICA) AS SITUACAOJURIDICA from processo ';
    //
    //    frxComboBoxSituacao.Items.Clear;
    //
    //    with DsLista.DataSet do
    //    begin
    //
    //      frxComboBoxSituacao.Items.Add('CONDENADO');
    //      frxComboBoxSituacao.Items.Add('PROCESSADO');
    //      frxComboBoxSituacao.Items.Add('INQUÉRITO POLICIAL');
    //      frxComboBoxSituacao.Items.Add('PROCESSO LIBERADO');
    //
    //      Open;
    //
    //      while not EOF do
    //      begin
    //        if not ContemValor(FieldByName('SITUACAOJURIDICA').AsString, 'CONDENADO,PROCESSADO,INQUÉRITO POLICIAL') then
    //          frxComboBoxSituacao.Items.Add(FieldByName('SITUACAOJURIDICA').AsString);
    //        Next;
    //      end;
    //
    //      close;
    //
    //    end;
    //
        ////////////////////////////////////
    //    SqlLista.SQL.Text := 'select distinct upper(DELEGACIA) AS DELEGACIA from processo ';
    //    frxComboBoxDelegacia.Items.Clear;
    //    with DsLista.DataSet do
    //    begin
    //      Open;
    //      while not EOF do
    //      begin
    //        frxComboBoxDelegacia.Items.Add(FieldByName('DELEGACIA').AsString);
    //        Next;
    //      end;
    //      close;
    //    end;
    //
        ////////////////////////////////////
    //    SqlLista.SQL.Text := 'select distinct upper(MOTIVO_PRISAO) AS MOTIVO_PRISAO from processo ';
    //    frxComboBoxMotivoPrisao.Items.Clear;
    //    with DsLista.DataSet do
    //    begin
    //      Open;
    //      while not EOF do
    //      begin
    //        frxComboBoxMotivoPrisao.Items.Add(FieldByName('MOTIVO_PRISAO').AsString);
    //        Next;
    //      end;
    //      close;
    //    end;
    //
        ////////////////////////////////////
    //    SqlLista.SQL.Text := 'select distinct upper(TIPO_CRIME) AS TIPO_CRIME from processo ';
    //    frxComboBoxTipoCrime.Items.Clear;
    //    with DsLista.DataSet do
    //    begin
    //      Open;
    //      while not EOF do
    //      begin
    //        frxComboBoxTipoCrime.Items.Add(FieldByName('TIPO_CRIME').AsString);
    //        Next;
    //      end;
    //      close;
    //    end;
    //
        ////////////////////////////////////
    //    SqlLista.SQL.Text := 'select distinct upper(MOTIVO_LIBERACAO) AS MOTIVO_LIBERACAO from processo ';
    //    frxComboBoxMotivoLiberacao.Items.Clear;
    //    with DsLista.DataSet do
    //    begin
    //      Open;
    //      while not EOF do
    //      begin
    //        frxComboBoxMotivoLiberacao.Items.Add(FieldByName('MOTIVO_LIBERACAO').AsString);
    //        Next;
    //      end;
    //      close;
    //    end;
  except
  end;

  Screen.Cursor := crDefault;

end;

procedure TFrmCadastroProcesso.SalvarClick(Sender: TObject);
begin

  PageControlModeloCadastro.SetFocus;

  if DsCadastro.DataSet.FieldByName('IDINTERNO').AsInteger <= 0 then
  begin
    ShowMessage('Informe o interno!');
    exit;
  end;

  //  DsCadastro.DataSet.FieldByName('TIPOJUSTICA').AsString := UpperCase(frxComboBoxJustica.Text);
  //  DsCadastro.DataSet.FieldByName('PRISAO').AsString := UpperCase(frxComboBoxPrisao.Text);
  //  DsCadastro.DataSet.FieldByName('REU').AsString := UpperCase(frxComboBoxReu.Text);
  //  DsCadastro.DataSet.FieldByName('SITUACAOJURIDICA').AsString := UpperCase(frxComboBoxSituacao.Text);
    //  DsCadastro.DataSet.FieldByName('DELEGACIA').AsString := UpperCase(frxComboBoxDelegacia.Text);
  //  DsCadastro.DataSet.FieldByName('MOTIVO_PRISAO').AsString := UpperCase(frxComboBoxMotivoPrisao.Text);
  //  DsCadastro.DataSet.FieldByName('TIPO_CRIME').AsString := UpperCase(frxComboBoxTipoCrime.Text);
  //  DsCadastro.DataSet.FieldByName('MOTIVO_LIBERACAO').AsString := UpperCase(frxComboBoxMotivoLiberacao.Text);

  //  if ContemValor('CONDEN', UPPERCASE(frxComboBoxSituacao.Text)) then
  //  begin
  //    if DsCadastro.DataSet.FieldByName('TOTAL_PENA_ANO').AsInteger <= 0 then
  //    begin
  //      if DsCadastro.DataSet.FieldByName('TOTAL_PENA_MES').AsInteger <= 0 then
  //      begin
  //        if DsCadastro.DataSet.FieldByName('TOTAL_PENA_DIA').AsInteger <= 0 then
  //        begin
  //          ShowMessage('Informe a condenação do interno!');
  //          exit;
  //        end;
  //      end;
  //    end;
  //
  //    if DsCadastro.DataSet.FieldByName('PROGRESSAO_REGIME').AsVariant = null then
  //    begin
  //      ShowMessage('Informe o calculo para progressão de regime!');
  //      exit;
  //    end;
  //
  //    if DsCadastro.DataSet.FieldByName('LIVRAMENTO_CONDICIONAL').AsVariant = null then
  //    begin
  //      ShowMessage('Informe o calculo para livramento condicional!');
  //      exit;
  //    end;
  //
  //    if DsCadastro.DataSet.FieldByName('DATA_INICIO_CONDENACAO').AsVariant = null then
  //    begin
  //      ShowMessage('Informe a data do inicio da condenação!');
  //      exit;
  //    end;
  //

  if DsCadastro.DataSet.FieldByName('PROGRESSAO_REGIME').AsVariant <> null then
    if DsCadastro.DataSet.FieldByName('LIVRAMENTO_CONDICIONAL').AsVariant <> null then
      BtnCalcularClick(nil);

  inherited;

  PageControlProcesso.ActivePageIndex := 0;
  PageControlGeralProcessos.ActivePageIndex := 0;
  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

end;

procedure TFrmCadastroProcesso.FormCreate(Sender: TObject);
begin

  inherited;
  ID_INTERNO := 0;
  SqlConsulta.Params[0].Value := GLOBAL_ID_UP;
  MemoLinhaTempo.Lines.Clear;

  //  DsConsulta.DataSet.Close;
  //  DsConsulta.DataSet.Open;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_PROCESSOCONDENACAO)
    and not ContemValor('E', PERMISSAO_PROCESSOCONDENACAO)
    and not ContemValor('D', PERMISSAO_PROCESSOCONDENACAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PROCESSOCONDENACAO)
    and not ContemValor('E', PERMISSAO_PROCESSOCONDENACAO)
    and not ContemValor('D', PERMISSAO_PROCESSOCONDENACAO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PROCESSOCONDENACAO)
    and ContemValor('E', PERMISSAO_PROCESSOCONDENACAO)
    and not ContemValor('D', PERMISSAO_PROCESSOCONDENACAO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PROCESSOCONDENACAO)
    and ContemValor('E', PERMISSAO_PROCESSOCONDENACAO)
    and ContemValor('D', PERMISSAO_PROCESSOCONDENACAO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PROCESSOCONDENACAO)
    and not ContemValor('E', PERMISSAO_PROCESSOCONDENACAO)
    and ContemValor('D', PERMISSAO_PROCESSOCONDENACAO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PROCESSOCONDENACAO)
    and not ContemValor('E', PERMISSAO_PROCESSOCONDENACAO)
    and ContemValor('D', PERMISSAO_PROCESSOCONDENACAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PROCESSOCONDENACAO)
    and ContemValor('E', PERMISSAO_PROCESSOCONDENACAO)
    and not ContemValor('D', PERMISSAO_PROCESSOCONDENACAO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroProcesso.CdsCadastroBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  //  frxComboBoxJustica.Text := UpperCase(DsCadastro.DataSet.FieldByName('TIPOJUSTICA').AsString);
  //  frxComboBoxPrisao.Text := UpperCase(DsCadastro.DataSet.FieldByName('PRISAO').AsString);
  //  frxComboBoxReu.Text := UpperCase(DsCadastro.DataSet.FieldByName('REU').AsString);
  //  frxComboBoxSituacao.Text := UpperCase(DsCadastro.DataSet.FieldByName('SITUACAOJURIDICA').AsString);
  //  frxComboBoxDelegacia.Text := UpperCase(DsCadastro.DataSet.FieldByName('DELEGACIA').AsString);
  //  frxComboBoxMotivoPrisao.Text := UpperCase(DsCadastro.DataSet.FieldByName('MOTIVO_PRISAO').AsString);
  //  frxComboBoxTipoCrime.Text := UpperCase(DsCadastro.DataSet.FieldByName('TIPO_CRIME').AsString);
  //  frxComboBoxMotivoLiberacao.Text := UpperCase(DsCadastro.DataSet.FieldByName('MOTIVO_LIBERACAO').AsString);

  PreencheCombos();

end;

procedure TFrmCadastroProcesso.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  with DsCadastro.dataset do
  begin
    TimerComutacao.Enabled := False;

    if not active then
      exit;

    if IsEmpty then
      exit;

    TimerComutacao.Enabled := not DsComutacao.DataSet.IsEmpty;

    LabelComutacao.Visible := false;

    if (state in [dsedit, dsinsert]) then
      exit;

    //    frxComboBoxJustica.Text := UpperCase(DsCadastro.DataSet.FieldByName('TIPOJUSTICA').AsString);
    //    frxComboBoxPrisao.Text := UpperCase(DsCadastro.DataSet.FieldByName('PRISAO').AsString);
    //    frxComboBoxReu.Text := UpperCase(DsCadastro.DataSet.FieldByName('REU').AsString);
    //    frxComboBoxSituacao.Text := UpperCase(DsCadastro.DataSet.FieldByName('SITUACAOJURIDICA').AsString);
        //    frxComboBoxDelegacia.Text := UpperCase(DsCadastro.DataSet.FieldByName('DELEGACIA').AsString);
    //    frxComboBoxMotivoPrisao.Text := UpperCase(DsCadastro.DataSet.FieldByName('MOTIVO_PRISAO').AsString);
    //    frxComboBoxTipoCrime.Text := UpperCase(DsCadastro.DataSet.FieldByName('TIPO_CRIME').AsString);
    //    frxComboBoxMotivoLiberacao.Text := UpperCase(DsCadastro.DataSet.FieldByName('MOTIVO_LIBERACAO').AsString);
    //    PanelCondenado.Enabled := ContemValor('CONDEN', UPPERCASE(frxComboBoxSituacao.Text));

  end;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_PROCESSOCONDENACAO)
    and not ContemValor('E', PERMISSAO_PROCESSOCONDENACAO)
    and not ContemValor('D', PERMISSAO_PROCESSOCONDENACAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PROCESSOCONDENACAO)
    and not ContemValor('E', PERMISSAO_PROCESSOCONDENACAO)
    and not ContemValor('D', PERMISSAO_PROCESSOCONDENACAO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PROCESSOCONDENACAO)
    and ContemValor('E', PERMISSAO_PROCESSOCONDENACAO)
    and not ContemValor('D', PERMISSAO_PROCESSOCONDENACAO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PROCESSOCONDENACAO)
    and ContemValor('E', PERMISSAO_PROCESSOCONDENACAO)
    and ContemValor('D', PERMISSAO_PROCESSOCONDENACAO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PROCESSOCONDENACAO)
    and not ContemValor('E', PERMISSAO_PROCESSOCONDENACAO)
    and ContemValor('D', PERMISSAO_PROCESSOCONDENACAO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PROCESSOCONDENACAO)
    and not ContemValor('E', PERMISSAO_PROCESSOCONDENACAO)
    and ContemValor('D', PERMISSAO_PROCESSOCONDENACAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PROCESSOCONDENACAO)
    and ContemValor('E', PERMISSAO_PROCESSOCONDENACAO)
    and not ContemValor('D', PERMISSAO_PROCESSOCONDENACAO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroProcesso.cdsvincartigoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DSvincartigo.DataSet.fieldbyname('ID_vinc_artigo').AsInteger := 0;
  DSvincartigo.DataSet.fieldbyname('id_processo').AsInteger :=
    DsCadastro.DataSet.fieldbyname('idprocesso').AsInteger;

end;

procedure TFrmCadastroProcesso.CancelarClick(Sender: TObject);
begin
  inherited;
  PageControlProcesso.ActivePageIndex := 0;
  PageControlGeralProcessos.ActivePageIndex := 0;

end;

procedure TFrmCadastroProcesso.BtnIncluirDocDigitalizadoClick(
  Sender: TObject);
var
  s_mensagem: array[0..1000] of Char;
begin
  inherited;

  try
    if not (DsDocumentos.DataSet.State in [dsedit, dsinsert]) then
    begin
      DsDocumentos.DataSet.Append;
    end
    else
    begin
      if OpenDialogDoc.Execute then
      begin
        DsDocumentos.DataSet.FieldByName('DESCRICAO').AsString := ExtractFileName(OpenDialogDoc.FileName);
        try
          self.enabled := false;
          SalvarBlobDatabase(DsDocumentos, 'DOCUMENTOS', OpenDialogDoc.FileName);
          DsDocumentos.DataSet.Post;
        except
        end;
        Self.Enabled := true;
      end;
    end;

    Self.SetFocus;

  except
    ShowMessage('Não gravou, tente novamente!');
  end;

end;

procedure TFrmCadastroProcesso.BtnVisuzalizarDocDigitalizadorClick(
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

  if not DsDocumentos.DataSet.Active then
    Exit;

  if DsDocumentos.DataSet.IsEmpty then
    Exit;

  if DsDocumentos.DataSet.fieldbyname('IDDOCUMENTOS_PROCESSO').AsInteger <= 0 then
  begin
    showmessage('Não pode visualizar antes de salvar dados do interno.');
    exit;
  end;

  Dir := GLOBAL_MEUS_DOCUMENTOS + '\view\' + IntToStr(GLOBAL_ID_FUNCIONARIO) + '\';

  if not DirectoryExists(Dir) then
    ForceDirectories(Dir);

  nome_arquivo := Dir + DsDocumentos.DataSet.FieldByName('DESCRICAO').AsString;

  (DsDocumentos.DataSet.FieldByName('DOCUMENTOS') as TBlobField).SaveToFile(nome_arquivo);
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

procedure TFrmCadastroProcesso.CdsDocumentosAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DsDocumentos.DataSet.fieldbyname('IDDOCUMENTOS_PROCESSO').AsInteger := DBGenerator('IDDOCUMENTOS_PROCESSO');
  DsDocumentos.DataSet.fieldbyname('IDPROCESSO').AsInteger :=
    DsCadastro.DataSet.fieldbyname('IDPROCESSO').AsInteger;

  if OpenDialogDoc.Execute then
  begin
    DsDocumentos.DataSet.FieldByName('DESCRICAO').AsString := ExtractFileName(OpenDialogDoc.FileName);
    try
      self.enabled := false;
      SalvarBlobDatabase(DsDocumentos, 'DOCUMENTOS', OpenDialogDoc.FileName);
      DsDocumentos.DataSet.Post;
    except
    end;
    Self.Enabled := true;
  end;

end;

procedure TFrmCadastroProcesso.BtnLimpaPenaClick(Sender: TObject);
begin
  inherited;

  if Application.MessageBox('Limpar os dados da condenação?',
    'Confirme.', mb_YesNo + Mb_IconQuestion) = idYes then
  begin

    DsCadastro.DataSet.fieldbyname('TOTAL_PENA_ANO').AsVariant := null;
    DsCadastro.DataSet.fieldbyname('TOTAL_PENA_MES').AsVariant := null;
    DsCadastro.DataSet.fieldbyname('TOTAL_PENA_DIA').AsVariant := null;
    DsCadastro.DataSet.fieldbyname('PROGRESSAO_REGIME').AsVariant := null;
    DsCadastro.DataSet.fieldbyname('LIVRAMENTO_CONDICIONAL').AsVariant := null;

    DsCadastro.DataSet.fieldbyname('ANO_PROGRESSAO').AsVariant := null;
    DsCadastro.DataSet.fieldbyname('MES_PROGRESSAO').AsVariant := null;
    DsCadastro.DataSet.fieldbyname('DIA_PROGRESSAO').AsVariant := null;
    DsCadastro.DataSet.fieldbyname('ANO_CONDICIONAL').AsVariant := null;
    DsCadastro.DataSet.fieldbyname('MES_CONDICIONAL').AsVariant := null;
    DsCadastro.DataSet.fieldbyname('DIA_CONDICIONAL').AsVariant := null;

    //    if ContemValor('CONDEN', UPPERCASE(frxComboBoxSituacao.Text)) then
    begin

//      if CdsCadastro.FieldByName('DATA_INICIO_CONDENACAO').AsVariant = null then
//      begin
//        CdsCadastro.FieldByName('DATA_INICIO_CONDENACAO').AsDateTime :=
//          CdsCadastro.FieldByName('DATA_PRISAO').AsDateTime;
//      end;

      if dscadastro.dataset.fieldbyname('DATA_FATO_CONDENACAO').AsVariant = null then
      begin
        CdsCadastro.FieldByName('DATA_FATO_CONDENACAO').AsDateTime :=
          CdsCadastro.FieldByName('DATA_PRISAO').AsDateTime;
      end;

    end;
  end;

end;

procedure TFrmCadastroProcesso.CdsCadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DsCadastro.DataSet.fieldbyname('idprocesso').AsInteger := DBGenerator('id_processo');
end;

procedure TFrmCadastroProcesso.DBGridDocumentosCellClick(Column: TColumn);
begin
  inherited;
  BtnVisuzalizarDocDigitalizadorClick(nil);
end;

procedure TFrmCadastroProcesso.BtnCalcularClick(Sender: TObject);
var
  vAno, vMes, vDia: integer;
  DataProgressao, DataCondicional: TDate;
begin
  inherited;

  if DsCadastro.DataSet.FieldByname('PROGRESSAO_REGIME').Asstring = '' then
  begin
    ShowMessage('Informe a Progressão de Regime.');
    exit;
  end;

  if DsCadastro.DataSet.FieldByname('LIVRAMENTO_CONDICIONAL').Asstring = '' then
  begin
    ShowMessage('Informe o Livramento Condicional.');
    exit;
  end;

  ExecucaoPenalProgressao(
    DsCadastro.DataSet.FieldByname('DATA_INICIO_CONDENACAO').AsDateTime,
    DsCadastro.DataSet.FieldByname('TOTAL_PENA_ANO').AsInteger,
    DsCadastro.DataSet.FieldByname('TOTAL_PENA_MES').AsInteger,
    DsCadastro.DataSet.FieldByname('TOTAL_PENA_DIA').AsInteger,
    DsCadastro.DataSet.FieldByname('PROGRESSAO_REGIME').AsInteger,
    vAno, vMes, vDia);

  DsCadastro.DataSet.fieldbyname('ANO_PROGRESSAO').AsVariant := vAno;
  DsCadastro.DataSet.fieldbyname('MES_PROGRESSAO').AsVariant := vMes;
  DsCadastro.DataSet.fieldbyname('DIA_PROGRESSAO').AsVariant := vDia;

  DataMaisAnoMesDia(DsCadastro.DataSet.FieldByname('DATA_INICIO_CONDENACAO').AsDateTime,
    DsCadastro.DataSet.FieldByname('ANO_PROGRESSAO').AsInteger,
    DsCadastro.DataSet.FieldByname('MES_PROGRESSAO').AsInteger,
    DsCadastro.DataSet.FieldByname('DIA_PROGRESSAO').AsInteger,
    DataProgressao);

  DsCadastro.DataSet.FieldByname('DATA_PROGRESSAO').AsDateTime := DataProgressao;

  ExecucaoPenalCondicional(
    DsCadastro.DataSet.FieldByname('DATA_INICIO_CONDENACAO').AsDateTime,
    DsCadastro.DataSet.FieldByname('TOTAL_PENA_ANO').AsInteger,
    DsCadastro.DataSet.FieldByname('TOTAL_PENA_MES').AsInteger,
    DsCadastro.DataSet.FieldByname('TOTAL_PENA_DIA').AsInteger,
    DsCadastro.DataSet.FieldByname('LIVRAMENTO_CONDICIONAL').AsInteger,
    vAno, vMes, vDia);

  DsCadastro.DataSet.fieldbyname('ANO_CONDICIONAL').AsVariant := vAno;
  DsCadastro.DataSet.fieldbyname('MES_CONDICIONAL').AsVariant := vMes;
  DsCadastro.DataSet.fieldbyname('DIA_CONDICIONAL').AsVariant := vDia;

  DataMaisAnoMesDia(DsCadastro.DataSet.FieldByname('DATA_INICIO_CONDENACAO').AsDateTime,
    DsCadastro.DataSet.FieldByname('ANO_CONDICIONAL').AsInteger,
    DsCadastro.DataSet.FieldByname('MES_CONDICIONAL').AsInteger,
    DsCadastro.DataSet.FieldByname('DIA_CONDICIONAL').AsInteger,
    DataCondicional);

  DsCadastro.DataSet.FieldByname('DATA_CONDICIONAL').AsDateTime := DataCondicional;

end;

procedure TFrmCadastroProcesso.BtnEventosClick(Sender: TObject);
begin
  inherited;

  if DsCadastro.DataSet.State in [dsinsert] then
  begin
    showmessage('Para cadastrar um evento o registro de I/P/C tem que está em edição.');
    exit;
  end;

  FrmEventoProcesso := TFrmEventoProcesso.Create(Application);
  FrmEventoProcesso.SqlCadastro.ParamByName('IDPROCESSO').AsInteger :=
    DsCadastro.DataSet.FieldByname('IDPROCESSO').AsInteger;
  FrmEventoProcesso.ShowModal;
  FreeAndNil(FrmEventoProcesso);

  DsEventos.DataSet.Close;
  DsEventos.DataSet.Open;

end;

procedure TFrmCadastroProcesso.BtnComutacaoClick(Sender: TObject);
begin
  inherited;

  if DsCadastro.DataSet.State in [dsinsert] then
  begin
    showmessage('Para cadastrar uma comutação o registro de I/P/C tem que está em edição.');
    exit;
  end;


  //  if not ContemValor('CONDEN', DsCadastro.DataSet.fieldbyname('SITUACAOJURIDICA').AsString) then
  //  begin
  //    ShowMessage('Situação Jurídica não é condenado.');
  //    exit;
  //  end;

  FrmComutacao := TFrmComutacao.Create(Application);
  FrmComutacao.SqlCadastro.ParamByName('ID_INTERNO').AsInteger :=
    DsCadastro.DataSet.FieldByname('IDINTERNO').AsInteger;
  FrmComutacao.ShowModal;
  FreeAndNil(FrmComutacao);

  DsComutacao.DataSet.Close;
  DsComutacao.DataSet.Open;

end;

procedure TFrmCadastroProcesso.TimerComutacaoTimer(Sender: TObject);
begin
  inherited;
  LabelComutacao.Visible := not LabelComutacao.Visible;
end;

procedure TFrmCadastroProcesso.BtnBuscarIPClick(Sender: TObject);
var
  sSql: string;
  processo: variant;
begin
  inherited;

  if DBLookupComboBoxNomeInterno.KeyValue = null then
  begin
    showmessage('TEm que informar o interno.');
    exit;
  end;

  SSQL := 'SELECT ' +
    'P.IDPROCESSO CODIGO, ' +
    'P.NUMERO_INQUERITO, ' +
    'P.DATA_INQUERITO, ' +
    'P.DATA_PRISAO, ' +
    'P.DELEGACIA, ' +
    'P.MOTIVO_PRISAO, ' +
    'P.DISPOSITIVO_LEGAL, ' +
    'P.ID_CIDADE_INQUERITO, ' +
    'P.ID_DESTINO_DELEGACIA, ' +
    'P.TIPO_CRIME, P.OBSERVACAO ' +
    'FROM PROCESSO P ' +
    'WHERE UPPER(SITUACAOJURIDICA) LIKE ''INQ%'' ' +
    ' AND P.IDINTERNO = ' + inttostr(DBLookupComboBoxNomeInterno.KeyValue) +
    ' ORDER BY P.NUMERO_INQUERITO';

  processo := BuscaGeral(nil, '', sSql, 100, 100, self.Width, 400);

  if VarToStrDef(processo, '') <> '' then
  begin
    if assigned(FrmConsultaGeral) then
    begin
      with DsCadastro.DataSet do
      begin
        fieldbyname('NUMERO_INQUERITO').AsVariant := FrmConsultaGeral.DsConsulta.DataSet.FieldByName('NUMERO_INQUERITO').AsVariant;
        fieldbyname('DATA_INQUERITO').AsVariant := FrmConsultaGeral.DsConsulta.DataSet.FieldByName('DATA_INQUERITO').AsVariant;
        fieldbyname('DATA_PRISAO').AsVariant := FrmConsultaGeral.DsConsulta.DataSet.FieldByName('DATA_PRISAO').AsVariant;
        fieldbyname('DELEGACIA').AsVariant := FrmConsultaGeral.DsConsulta.DataSet.FieldByName('DELEGACIA').AsVariant;
        fieldbyname('MOTIVO_PRISAO').AsVariant := FrmConsultaGeral.DsConsulta.DataSet.FieldByName('MOTIVO_PRISAO').AsVariant;
        fieldbyname('DISPOSITIVO_LEGAL').AsVariant := FrmConsultaGeral.DsConsulta.DataSet.FieldByName('DISPOSITIVO_LEGAL').AsVariant;
        fieldbyname('TIPO_CRIME').AsVariant := FrmConsultaGeral.DsConsulta.DataSet.FieldByName('TIPO_CRIME').AsVariant;
        fieldbyname('OBSERVACAO').AsVariant := FrmConsultaGeral.DsConsulta.DataSet.FieldByName('OBSERVACAO').AsVariant;
        fieldbyname('ID_CIDADE_INQUERITO').AsVariant := FrmConsultaGeral.DsConsulta.DataSet.FieldByName('ID_CIDADE_INQUERITO').AsVariant;
        fieldbyname('ID_DESTINO_DELEGACIA').AsVariant := FrmConsultaGeral.DsConsulta.DataSet.FieldByName('ID_DESTINO_DELEGACIA').AsVariant;

        //        frxComboBoxMotivoPrisao.Text := UpperCase(DsCadastro.DataSet.FieldByName('MOTIVO_PRISAO').AsString);
//        frxComboBoxTipoCrime.Text := UpperCase(DsCadastro.DataSet.FieldByName('TIPO_CRIME').AsString);

      end;
    end;
  end;

end;

procedure TFrmCadastroProcesso.BtnBuscaInternoClick(Sender: TObject);
var
  interno: variant;
begin
  inherited;

  interno := BuscaGeral(nil, 'INTERNO', '', 100, 100, self.Width, 400);
  if VarToStrDef(interno, '') <> '' then
    DBLookupComboBoxNomeInterno.KeyValue := interno;

end;

procedure TFrmCadastroProcesso.BtnDetrcaoClick(Sender: TObject);
begin
  inherited;

  FrmDetracao := TFrmDetracao.Create(Application);
  FrmDetracao.ID_INTERNO := DsCadastro.Dataset.FieldByname('IDINTERNO').AsInteger;
  FrmDetracao.DsConsulta.DataSet.Filter := 'ID_INTERNO = ' + DsCadastro.Dataset.FieldByname('IDINTERNO').asstring;
  FrmDetracao.DsConsulta.DataSet.Filtered := true;
  FrmDetracao.DBLookupComboBoxNomeInterno.Enabled := False;
  FrmDetracao.ShowModal;

  freeandnil(FrmDetracao);

  DsDetracao.DataSet.Close;
  DsDetracao.DataSet.Open;

end;

procedure TFrmCadastroProcesso.BtnInterrupcaoClick(Sender: TObject);
begin
  inherited;

  FrmInterrupcao := TFrmInterrupcao.Create(Application);
  FrmInterrupcao.ID_INTERNO := DsCadastro.Dataset.FieldByname('IDINTERNO').AsInteger;
  FrmInterrupcao.DsConsulta.DataSet.Filter := 'ID_INTERNO = ' + DsCadastro.Dataset.FieldByname('IDINTERNO').asstring;
  FrmInterrupcao.DsConsulta.DataSet.Filtered := true;
  FrmInterrupcao.DBLookupComboBoxNomeInterno.Enabled := False;
  FrmInterrupcao.ShowModal;
  freeandnil(FrmInterrupcao);

  DsInterrupcao.DataSet.Close;
  DsInterrupcao.DataSet.Open;

end;

procedure TFrmCadastroProcesso.BtnRemicaoClick(Sender: TObject);
begin
  inherited;
  FrmRemicao := TFrmRemicao.Create(Application);
  FrmRemicao.ID_INTERNO := DsCadastro.Dataset.FieldByname('IDINTERNO').AsInteger;
  FrmRemicao.DsConsulta.DataSet.Filter := 'ID_INTERNO = ' + DsCadastro.Dataset.FieldByname('IDINTERNO').asstring;
  FrmRemicao.DsConsulta.DataSet.Filtered := true;
  FrmRemicao.DBLookupComboBoxNomeInterno.Enabled := False;
  FrmRemicao.ShowModal;
  freeandnil(FrmRemicao);

  DsRemicao.DataSet.Close;
  DsRemicao.DataSet.Open;

end;

procedure TFrmCadastroProcesso.BtnLinhaTempoClick(Sender: TObject);
var
  vDataInicial, vDataCalc, vDataDetracao: TDate;
  vDias: integer;
  vAno, vMes, vDia: integer;
  tAno, tMes, tDia: integer;
begin
  inherited;
  BtnCalcularClick(nil);
  MemoLinhaTempo.Lines.Clear;

  if CdsCadastro.FieldByName('DATA_PRISAO').AsVariant = null then
  begin
    TabSheetInquerito.show;
    if DBEditDATA_PRISAO.canfocus then
      DBEditDATA_PRISAO.setfocus;
    showmessage('Por favor informar data da prisão.');
    exit;
  end;

//  if CdsCadastro.FieldByName('DATA_INICIO_CONDENACAO').AsVariant = null then
//  begin
//    CdsCadastro.FieldByName('DATA_INICIO_CONDENACAO').AsDateTime :=
//      CdsCadastro.FieldByName('DATA_PRISAO').AsDateTime;
//  end;

  tAno := CdsCadastro.FieldByName('TOTAL_PENA_ANO').AsInteger;
  tMes := CdsCadastro.FieldByName('TOTAL_PENA_MES').AsInteger;
  tDia := CdsCadastro.FieldByName('TOTAL_PENA_DIA').AsInteger;

  //CONDENAÇÃO
  MemoLinhaTempo.Lines.Add('LINHA DE TEMPO');
  MemoLinhaTempo.SelAttributes.Color := clMaroon;
  MemoLinhaTempo.Lines.Add('¦--CONDENAÇÃO........: '
    + formatfloat('00', tano) + 'a, '
    + formatfloat('00', tmes) + 'm, '
    + formatfloat('00', tdia) + 'd ');

  //PROGRESSÃO DE REGIME
  MemoLinhaTempo.SelAttributes.Color := clGreen;
  MemoLinhaTempo.Lines.Add('¦--PROGRESSÃO........: '
    + formatfloat('00', CdsCadastro.FieldByName('ANO_PROGRESSAO').AsInteger) + 'a, '
    + formatfloat('00', CdsCadastro.FieldByName('MES_PROGRESSAO').AsInteger) + 'm, '
    + formatfloat('00', CdsCadastro.FieldByName('DIA_PROGRESSAO').AsInteger) + 'd ');

  //CONDICIONAL
  MemoLinhaTempo.SelAttributes.Color := clBlue;
  MemoLinhaTempo.Lines.Add('¦--CONDICIONAL.......: '
    + formatfloat('00', CdsCadastro.FieldByName('ANO_CONDICIONAL').AsInteger) + 'a, '
    + formatfloat('00', CdsCadastro.FieldByName('MES_CONDICIONAL').AsInteger) + 'm, '
    + formatfloat('00', CdsCadastro.FieldByName('DIA_CONDICIONAL').AsInteger) + 'd ');

  //detração
  MemoLinhaTempo.SelAttributes.Color := clNavy;
  if not CdsDetracao.IsEmpty then
  begin
    CdsDetracao.First;
    while not CdsDetracao.eof do
    begin

      MemoLinhaTempo.Lines.Add('¦--DETRAÇÃO .........: '
        + formatfloat('00', CdsDetracao.FieldByName('ANO').AsInteger) + 'a, '
        + formatfloat('00', CdsDetracao.FieldByName('MES').AsInteger) + 'm, '
        + formatfloat('00', CdsDetracao.FieldByName('DIA').AsInteger) + 'd ');

      SubtrairTempo(tano, tmes, tdia,
        CdsDetracao.FieldByName('ANO').AsInteger,
        CdsDetracao.FieldByName('MES').AsInteger,
        CdsDetracao.FieldByName('DIA').AsInteger, tano, tmes, tdia);

      MemoLinhaTempo.SelAttributes.Color := clMaroon;
      MemoLinhaTempo.Lines.Add('¦--PENA A CUMPRIR....: '
        + formatfloat('00', tano) + 'a, '
        + formatfloat('00', tmes) + 'm, '
        + formatfloat('00', tdia) + 'd ');
      MemoLinhaTempo.SelAttributes.Color := clNavy;

      CdsDetracao.next;
    end;
  end;

  //remição
  MemoLinhaTempo.SelAttributes.Color := clNavy;
  if not CdsRemicao.IsEmpty then
  begin
    CdsRemicao.First;
    while not CdsRemicao.eof do
    begin

      MemoLinhaTempo.Lines.Add('¦--REMIÇÃO...........: '
        + formatfloat('00', CdsRemicao.FieldByName('DIAS_REMIDOS').AsInteger) + ' dias. ');

      SubtrairTempo(tano, tmes, tdia,
        0,
        0,
        CdsRemicao.FieldByName('DIAS_REMIDOS').AsInteger, tano, tmes, tdia);

      MemoLinhaTempo.SelAttributes.Color := clMaroon;
      MemoLinhaTempo.Lines.Add('¦--PENA A CUMPRIR....: '
        + formatfloat('00', tano) + 'a, '
        + formatfloat('00', tmes) + 'm, '
        + formatfloat('00', tdia) + 'd ');
      MemoLinhaTempo.SelAttributes.Color := clNavy;

      CdsRemicao.next;
    end;
  end;

  //Interrupção
  if not CdsInterrupcao.IsEmpty then
  begin
    CdsInterrupcao.First;
    while not CdsInterrupcao.eof do
    begin

      MemoLinhaTempo.SelAttributes.Color := clRed;
      MemoLinhaTempo.Lines.Add('¦--INTERRUPÇÃO.......: '
        + formatfloat('00', CdsInterrupcao.FieldByName('ANO').AsInteger) + 'a, '
        + formatfloat('00', CdsInterrupcao.FieldByName('MES').AsInteger) + 'm, '
        + formatfloat('00', CdsInterrupcao.FieldByName('DIA').AsInteger) + 'd ');

      SomarTempo(tano, tmes, tdia,
        CdsInterrupcao.FieldByName('ANO').AsInteger,
        CdsInterrupcao.FieldByName('MES').AsInteger,
        CdsInterrupcao.FieldByName('DIA').AsInteger, tano, tmes, tdia);

      MemoLinhaTempo.SelAttributes.Color := clMaroon;
      MemoLinhaTempo.Lines.Add('¦--PENA A CUMPRIR....: '
        + formatfloat('00', tano) + 'a, '
        + formatfloat('00', tmes) + 'm, '
        + formatfloat('00', tdia) + 'd ');
      MemoLinhaTempo.SelAttributes.Color := clNavy;

      CdsInterrupcao.next;
    end;
  end;

  MemoLinhaTempo.Lines.Add('¦--INICIO CONDENAÇÃO:' + CdsCadastro.FieldByName('DATA_INICIO_CONDENACAO').AsString);

  vDataInicial := CdsCadastro.FieldByName('DATA_INICIO_CONDENACAO').AsDateTime;
  vDataCalc := vDataInicial;
  vDias := 1;
  while (vDataCalc <= date) do
  begin
    CalcEntreDatas(vDataInicial, vDataCalc, vAno, vMes, vDia);
    MemoLinhaTempo.SelAttributes.Color := clNavy;
    MemoLinhaTempo.Lines.Add('¦--' + formatdatetime('dd-mm-yy', vDataCalc)
      + ' = ' + formatfloat('00', vAno) + 'a, ' + formatfloat('00', vMes) + 'm, ' + formatfloat('00', vDia) + 'd preso.');
    vDias := vDias + 1;
    vDataCalc := vDataCalc + 1;
  end;

  MemoLinhaTempo.SelAttributes.Color := clBlue;
  MemoLinhaTempo.Lines.Add('¦--PENA PAGA.........: '
    + formatfloat('00', vano) + 'a, '
    + formatfloat('00', vmes) + 'm, '
    + formatfloat('00', vdia) + 'd ');

  SubtrairTempo(tano, tmes, tdia, vAno, vMes, vDia, tano, tmes, tdia);
  MemoLinhaTempo.SelAttributes.Color := clMaroon;
  MemoLinhaTempo.Lines.Add('¦--PENA A CUMPRIR....: '
    + formatfloat('00', tano) + 'a, '
    + formatfloat('00', tmes) + 'm, '
    + formatfloat('00', tdia) + 'd ');

  //PROGRESSÃO DE REGIME
  MemoLinhaTempo.SelAttributes.Color := clBlack;
  DataMaisAnoMesDia(DsCadastro.DataSet.FieldByname('DATA_INICIO_CONDENACAO').AsDateTime,
    CdsCadastro.FieldByName('ANO_PROGRESSAO').AsInteger,
    CdsCadastro.FieldByName('MES_PROGRESSAO').AsInteger,
    CdsCadastro.FieldByName('DIA_PROGRESSAO').AsInteger,
    vDataCalc);
  MemoLinhaTempo.Lines.Add('¦--PROGRESSÃO........: ' + formatdatetime('dd-mm-yyyy', vDataCalc));

  CdsCadastro.FieldByName('DATA_PROGRESSAO').AsDateTime := vDataCalc;

  //CONDICIONAL
  MemoLinhaTempo.SelAttributes.Color := clBlack;
  DataMaisAnoMesDia(DsCadastro.DataSet.FieldByname('DATA_INICIO_CONDENACAO').AsDateTime,
    CdsCadastro.FieldByName('ANO_CONDICIONAL').AsInteger,
    CdsCadastro.FieldByName('MES_CONDICIONAL').AsInteger,
    CdsCadastro.FieldByName('DIA_CONDICIONAL').AsInteger,
    vDataCalc);
  MemoLinhaTempo.Lines.Add('¦--CONDICIONAL.......: ' + formatdatetime('dd-mm-yyyy', vDataCalc));

  CdsCadastro.FieldByName('DATA_CONDICIONAL').AsDateTime := vDataCalc;

  //FINAL DA PENA
  MemoLinhaTempo.SelAttributes.Color := clBlack;
  DataMaisAnoMesDia(DsCadastro.DataSet.FieldByname('DATA_INICIO_CONDENACAO').AsDateTime,
    tano,
    tmes,
    tdia,
    vDataCalc);
  MemoLinhaTempo.Lines.Add('¦--FINAL DA PENA.....: ' + formatdatetime('dd-mm-yyyy', vDataCalc));

  CdsCadastro.FieldByName('DATA_FINAL_PENA').AsDateTime := vDataCalc;

end;

procedure TFrmCadastroProcesso.EditarClick(Sender: TObject);
begin
  inherited;
  PageControlCondenacao.ActivePageIndex := 0;
end;

procedure TFrmCadastroProcesso.SpeedButton1Click(Sender: TObject);
begin
  inherited;

  //Verificando se o usuário tem a permissão de acesso ao cadastro.
  if (PERMISSAO_VARAEXECUCAO = '') or (PERMISSAO_VARAEXECUCAO = 'R') then
  begin
    ShowMessage('Você não possui permissão para acessar o cadastro de Vara de Execução!');
    Exit;
  end;

  if DBLookupComboBoxCOMARCA.KeyValue = null then
  begin
    showmessage('Informe a COMARCA.');
    EXIT;
  end;


  FrmCadastroDestino := TFrmCadastrodestino.Create(Application);
  FrmCadastrodestino.TIPO_PADRAO := 'VARA';
  FrmCadastrodestino.ID_CIDADE := DBLookupComboBoxCOMARCA.KeyValue;
  FrmCadastrodestino.ShowModal;
  FreeAndNil(FrmCadastrodestino);

  DsVara.DataSet.Close;
  DsVara.DataSet.OPEN;

end;

procedure TFrmCadastroProcesso.SpeedButton2Click(Sender: TObject);
begin
  inherited;

  //Verificando se o usuário tem a permissão de acesso ao cadastro.
  if (PERMISSAO_DESTINO = '') or (PERMISSAO_DESTINO = 'R') then
  begin
    ShowMessage('Você não possui permissão para acessar o cadastro de Destinos!');
    Exit;
  end;

  if DBLookupComboBoxCIDADE_INQUERITO.KeyValue = null then
  begin
    showmessage('Informe a Cidade do Inquérito.');
    EXIT;
  end;

  FrmCadastroDestino := TFrmCadastrodestino.Create(Application);
  FrmCadastrodestino.TIPO_PADRAO := 'DELEGACIA';
  FrmCadastrodestino.ID_CIDADE := DBLookupComboBoxCIDADE_INQUERITO.KeyValue;
  FrmCadastrodestino.ShowModal;
  FreeAndNil(FrmCadastrodestino);

  DsDelegacia.DataSet.Close;
  DsDelegacia.DataSet.OPEN;

end;

procedure TFrmCadastroProcesso.DBLookupComboBoxDelegaciaClick(
  Sender: TObject);
begin
  inherited;
  DsCadastro.dataset.fieldbyname('DELEGACIA').AsString := DBLookupComboBoxDelegacia.Text;

end;

procedure TFrmCadastroProcesso.SpeedButton3Click(Sender: TObject);
begin
  inherited;

  //Verificando se o usuário tem a permissão de acesso ao cadastro.
  if (PERMISSAO_CIDADE = '') or (PERMISSAO_CIDADE = 'R') then
  begin
    ShowMessage('Você não possui permissão para acessar o cadastro de Cidades!');
    Exit;
  end;

  FrmCadastroCidade := TFrmCadastroCidade.create(Application);
  FrmCadastroCidade.showmodal;
  FreeAndNil(FrmCadastroCidade);

  DsCidadeInquerito.DataSet.Close;
  DsCidadeInquerito.DataSet.OPEN;

end;

procedure TFrmCadastroProcesso.Button1Click(Sender: TObject);
var
  id: variant;
begin

  id := BuscaGeral(nil, '', 'SELECT DISTINCT UPPER(DISPOSITIVO_LEGAL) AS CODIGO '
    + ' FROM PROCESSO'
    + ' WHERE COALESCE(DISPOSITIVO_LEGAL,'''')<>'''' '
    + ' ORDER BY 1', 100, 100, 800, 400);

  if VarToStrDef(id, '') <> '' then
    DsCadastro.DataSet.FieldByName('DISPOSITIVO_LEGAL').AsString := VarToStrDef(id, '');

end;

procedure TFrmCadastroProcesso.Button2Click(Sender: TObject);
var
  id: variant;
begin

  id := BuscaGeral(nil, '', 'SELECT DISTINCT UPPER(TIPO_CRIME) AS CODIGO '
    + ' FROM PROCESSO'
    + ' WHERE COALESCE(TIPO_CRIME,'''')<>'''' '
    + ' ORDER BY 1', 100, 100, 800, 400);

  if VarToStrDef(id, '') <> '' then
    DsCadastro.DataSet.FieldByName('TIPO_CRIME').AsString := VarToStrDef(id, '');

end;

procedure TFrmCadastroProcesso.DBLookupComboBoxVaraClick(Sender: TObject);
begin
  inherited;

  DsCadastro.dataset.fieldbyname('VARA').AsString := DBLookupComboBoxVara.Text;

end;

procedure TFrmCadastroProcesso.Button3Click(Sender: TObject);
var
  id: variant;
begin

  id := BuscaGeral(nil, '', 'SELECT DISTINCT UPPER(MOTIVO_LIBERACAO) AS CODIGO '
    + ' FROM PROCESSO'
    + ' WHERE COALESCE(MOTIVO_LIBERACAO,'''')<>'''' '
    + ' ORDER BY 1', 100, 100, 800, 400);

  if VarToStrDef(id, '') <> '' then
    DsCadastro.DataSet.FieldByName('MOTIVO_LIBERACAO').AsString := VarToStrDef(id, '');

end;

procedure TFrmCadastroProcesso.Button4Click(Sender: TObject);
var
  id: variant;
begin

  id := BuscaGeral(nil, '', 'SELECT ID_ARTIGO AS CODIGO, ARTIGO '
    + ' FROM ARTIGO '
    + ' ORDER BY ARTIGO', 100, 100, 800, 400);

  if VarToStrDef(id, '') <> '' then
  begin
    DBLookupComboBoxartigo.KeyValue := strtoint(VarToStrDef(id, '0'));
    DSvincartigo.DataSet.Append;
    DSvincartigo.DataSet.fieldbyname('id_artigo').AsInteger := DBLookupComboBoxartigo.KeyValue;
    DSvincartigo.DataSet.Post;
  end;

end;

end.

