unit CadastroInternos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ExtCtrls, ImgList, StdCtrls, Grids, DBGrids,
  FMTBcd, DB, DBClient, Provider, SqlExpr, Mask, DBCtrls, DBXpress,
  ModeloCadastro, Jpeg, Buttons;

type
  TFrmCadastroInternos = class(TFrmModeloCadastro)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    DBEditCodigo: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    TabSheet2: TTabSheet;
    Label10: TLabel;
    DBEditID_PROCEDENCIA: TDBEdit;
    DBEdit4: TDBEdit;
    DBLookupComboBoxID_PROCEDENCIA: TDBLookupComboBox;
    Label12: TLabel;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    Label19: TLabel;
    DBEdit5: TDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBLookupComboBoxIDNATURALIDADE: TDBLookupComboBox;
    Label20: TLabel;
    DBLookupComboBoxIDNACIONALIDADE: TDBLookupComboBox;
    DBLookupComboBoxIDRACA: TDBLookupComboBox;
    DBLookupComboBoxIDESCOLARIDADE: TDBLookupComboBox;
    TabSheet3: TTabSheet;
    Label28: TLabel;
    DBEdit10: TDBEdit;
    Label29: TLabel;
    DBEdit11: TDBEdit;
    Label30: TLabel;
    DBEdit12: TDBEdit;
    Label31: TLabel;
    DBEdit13: TDBEdit;
    Label32: TLabel;
    DBEdit14: TDBEdit;
    Label33: TLabel;
    Label34: TLabel;
    DBEdit16: TDBEdit;
    Label35: TLabel;
    DBEdit17: TDBEdit;
    DBLookupComboBoxIDCIDADE: TDBLookupComboBox;
    Label37: TLabel;
    DBEdit18: TDBEdit;
    Label38: TLabel;
    DBLookupComboBoxIDADVOGADO: TDBLookupComboBox;
    Label40: TLabel;
    DBEdit20: TDBEdit;
    Label41: TLabel;
    DBEdit21: TDBEdit;
    Label42: TLabel;
    DBEdit22: TDBEdit;
    Label13: TLabel;
    DBLookupComboBoxIDPROFISSAO: TDBLookupComboBox;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    Label18: TLabel;
    SpeedButton1: TSpeedButton;
    Label44: TLabel;
    DBEdit6: TDBEdit;
    Label45: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label43: TLabel;
    DBEdit7: TDBEdit;
    Label46: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    SpeedButton2: TSpeedButton;
    RadioGroupStatus: TRadioGroup;
    TabSheet4: TTabSheet;
    Label48: TLabel;
    DBEdit8: TDBEdit;
    Label49: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label50: TLabel;
    Label51: TLabel;
    DBEdit15: TDBEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    OpenDialog1: TOpenDialog;
    DBImageFOTOInterno: TDBImage;
    Label5: TLabel;
    DBEdit9: TDBEdit;
    Label24: TLabel;
    DBEdit19: TDBEdit;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit23: TDBEdit;
    Label27: TLabel;
    DBEdit24: TDBEdit;
    Label36: TLabel;
    DBEdit25: TDBEdit;
    DBComboBox1: TDBComboBox;
    SqlConsulta: TSQLQuery;
    DspConsulta: TDataSetProvider;
    CdsConsulta: TClientDataSet;
    DsConsulta: TDataSource;
    SqlSelectInterno: TSQLQuery;
    Label39: TLabel;
    DBEdit26: TDBEdit;
    Label47: TLabel;
    DBEdit27: TDBEdit;
    Label52: TLabel;
    DBEdit28: TDBEdit;
    DataSource1: TDataSource;
    TabSheet5: TTabSheet;
    SQLHISTORICO_interno: TSQLQuery;
    DSPHISTORICO_interno: TDataSetProvider;
    CDSHISTORICO_interno: TClientDataSet;
    DSHISTORICO_interno: TDataSource;
    CDSHISTORICO_internoIDHISTORICO_INTERNO: TIntegerField;
    CDSHISTORICO_internoDESCRICAO: TStringField;
    CDSHISTORICO_internoDATA_HORA: TSQLTimeStampField;
    CDSHISTORICO_internoIDINTERNO: TIntegerField;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    MaskEdit1: TMaskEdit;
    Label53: TLabel;
    Label54: TLabel;
    Button1: TButton;
    Label55: TLabel;
    DBEdit29: TDBEdit;
    DBMemo1: TDBMemo;
    TabSheet6: TTabSheet;
    FOTO: TLabel;
    DBImageFOTOPERFIL: TDBImage;
    DBImagetatuagem1: TDBImage;
    DBImageFOTO_SINAIS: TDBImage;
    DBImageFOTO_SINAIS1: TDBImage;
    DBImageFOTO_SINAIS2: TDBImage;
    DBImageFOTO_SINAIS3: TDBImage;
    DBImageFOTO_SINAIS4: TDBImage;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    CdsConsultaNOME_INTERNO: TStringField;
    CdsConsultaSIGLA: TStringField;
    CdsConsultaPAVILHAO: TStringField;
    CdsConsultaSOLARIO: TStringField;
    CdsConsultaCELA: TStringField;
    CdsConsultaID_INTERNO: TIntegerField;
    CdsConsultaIDPAVILHAO: TIntegerField;
    CdsConsultaIDGALERIA: TIntegerField;
    CdsConsultaIDSOLARIO: TIntegerField;
    Label56: TLabel;
    DBEdit30: TDBEdit;
    TabSheet7: TTabSheet;
    SQLHISTORICOEDUCACAO: TSQLQuery;
    DSPHISTORICOEDUCACAO: TDataSetProvider;
    CDSHISTORICOEDUCACAO: TClientDataSet;
    DSHISTORICOEDUCACAO: TDataSource;
    Label57: TLabel;
    MaskEdit2: TMaskEdit;
    Label58: TLabel;
    Edit8: TEdit;
    DBGrid2: TDBGrid;
    DBMemo2: TDBMemo;
    Button2: TButton;
    CDSHISTORICOEDUCACAOID_HISTORICO_ESTUDO: TIntegerField;
    CDSHISTORICOEDUCACAODATA_HISTORICO: TSQLTimeStampField;
    CDSHISTORICOEDUCACAOID_INTERNO: TIntegerField;
    CDSHISTORICOEDUCACAOHISTORICO: TStringField;
    Label59: TLabel;
    DBEdit31: TDBEdit;
    Label60: TLabel;
    Label61: TLabel;
    DBEdit33: TDBEdit;
    DBComboBox2: TDBComboBox;
    Label62: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label63: TLabel;
    DBEdit32: TDBEdit;
    Label64: TLabel;
    DBEdit34: TDBEdit;
    Label65: TLabel;
    DBEdit35: TDBEdit;
    Label66: TLabel;
    Label67: TLabel;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    TabSheet8: TTabSheet;
    Label68: TLabel;
    Label69: TLabel;
    DBEdit37: TDBEdit;
    Label70: TLabel;
    DBComboBox5: TDBComboBox;
    DBComboBox6: TDBComboBox;
    PageControl2: TPageControl;
    TabSheet9: TTabSheet;
    Label71: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label72: TLabel;
    DBGrid3: TDBGrid;
    EditArtigo: TEdit;
    EditObservacaoCondenacao: TEdit;
    Label73: TLabel;
    EditAno: TEdit;
    Label74: TLabel;
    EditMes: TEdit;
    Label75: TLabel;
    EditDia: TEdit;
    SQLCONDENACAO_INTERNO: TSQLQuery;
    DspCONDENACAO_INTERNO: TDataSetProvider;
    CdsCONDENACAO_INTERNO: TClientDataSet;
    DsCONDENACAO_INTERNO: TDataSource;
    CdsCONDENACAO_INTERNOIDCONDENACAO_INTERNO: TIntegerField;
    CdsCONDENACAO_INTERNOID_INTERNO: TIntegerField;
    CdsCONDENACAO_INTERNOARTIGO: TStringField;
    CdsCONDENACAO_INTERNOOBSERVACAO: TStringField;
    CdsCONDENACAO_INTERNOTOTAL_PENA_ANO: TIntegerField;
    CdsCONDENACAO_INTERNOTOTAL_PENA_MES: TIntegerField;
    CdsCONDENACAO_INTERNOTOTAL_PENA_DIA: TIntegerField;
    procedure NovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure EditLocalizarChange(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure DsConsultaDataChange(Sender: TObject; Field: TField);
    procedure RadioGroupStatusClick(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure DBImageFOTOInternoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBImageFOTOPERFILClick(Sender: TObject);
    procedure DBImagetatuagem1Click(Sender: TObject);
    procedure DBImageFOTO_SINAISClick(Sender: TObject);
    procedure DBImageFOTO_SINAIS1Click(Sender: TObject);
    procedure DBImageFOTO_SINAIS2Click(Sender: TObject);
    procedure DBImageFOTO_SINAIS3Click(Sender: TObject);
    procedure DBImageFOTO_SINAIS4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CorNosCampos;
    function IniciaTransCadastro: Boolean;
    function FinalizaTransCadastro: Boolean;
    function CancelaTransCadastro: Boolean;
    function ReeiniciaTransCadastro: Boolean;
  end;

var
  FrmCadastroInternos: TFrmCadastroInternos;

implementation

uses DmPrincipal, Lib, CadastroProcedencia, CadastroCondicaoInterno,
  CadastroCela, CadastroRaca, CadastroNacionalidade, CadastroNaturalidade,
  CadastroEscolaridade, CadastroAdvogado, CadastroProfissao;

{$R *.dfm}

procedure TFrmCadastroInternos.CorNosCampos();
var
  iComp: Integer;
begin

  for iComp := Low(CompDBEdit) to High(CompDBEdit) do
  begin
    if (CompDBEdit[iComp] <> nil) then
    begin
      if (Enabled) then
      begin
        with (CompDBEdit[iComp] as TDBEdit) do
        begin
          try
            if (DSCadastro.DataSet.State in [dsbrowse]) then
              Color := CorCompInativo
            else
              Color := CorCompAtivo;
          except
            CompDBEdit[iComp] := nil;
          end;
        end;
      end;
    end;
  end;

  for iComp := Low(CompLookupComboBox) to High(CompLookupComboBox) do
  begin
    if (CompLookupComboBox[iComp] <> nil) then
    begin
      with (CompLookupComboBox[iComp] as TDBLookupComboBox) do
      begin
        try
          if (DSCadastro.DataSet.State in [dsbrowse]) then
            Color := CorCompInativo
          else
            Color := CorCompAtivo;
        except
          CompLookupComboBox[iComp] := nil;
        end;
      end;
    end;
  end;

end;

function TFrmCadastroInternos.IniciaTransCadastro: Boolean;
begin
  try
    TD.TransactionID := 0;
    TD.IsolationLevel := xilREADCOMMITTED;
    DM.SQLConnect.StartTransaction(TD);
  except //se der erro para abrir uma TransCadastro
    begin //tente uma nova
      try
        Result := False;
        TD.TransactionID := TD.TransactionID + 1;
        TD.IsolationLevel := xilREADCOMMITTED;
        DM.SQLConnect.StartTransaction(TD);
      except
      end;
    end;
  end;
end;

function TFrmCadastroInternos.ReeiniciaTransCadastro: Boolean;
begin
  try
    FinalizaTransCadastro;
    TD.TransactionID := TD.TransactionID + 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    DM.SQLConnect.StartTransaction(TD);
  except
  end;
end;

function TFrmCadastroInternos.FinalizaTransCadastro: Boolean;
begin
  try
    Result := False;
    if DM.SQLConnect.InTransaction then
      DM.SQLConnect.Commit(TD);
    Result := True;
  except
  end;
end;

function TFrmCadastroInternos.CancelaTransCadastro: Boolean;
begin
  try
    if DM.SQLConnect.InTransaction then
      DM.SQLConnect.Rollback(TD);
  except
  end;
end;

procedure TFrmCadastroInternos.NovoClick(Sender: TObject);
begin
  inherited;
  dm.SqlExecute.SQL.Text := 'select gen_id (cod_up, 0) || gen_id (ID_INTERNO, 1) as ID from rdb$database';
  dm.DsExecute.DataSet.Close;
  dm.DsExecute.DataSet.Open;
  DsCadastro.DataSet.fieldbyname('ID_INTERNO').AsInteger := dm.DsExecute.DataSet.FieldByName('ID').AsInteger;
  dm.DsExecute.DataSet.Close;

  PageControl1.ActivePageIndex := 0;
  DsCadastro.DataSet.FieldByName('DATA_ENTRADA').AsDateTime := Date;
  DsCadastro.DataSet.FieldByName('ID_UP').AsInteger := GLOBAL_ID_UP;
  DsCadastro.DataSet.FieldByName('SEXO').AsString := 'M';
  DsCadastro.DataSet.FieldByName('ST').AsString := 'A';
  if DBEdit4.CanFocus then
    DBEdit4.SetFocus;
end;

procedure TFrmCadastroInternos.FormCreate(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex := 0;
  EditLocalizarChange(nil);

end;

procedure TFrmCadastroInternos.FormShow(Sender: TObject);
begin
  inherited;
  DM.DSCIDADE.DataSet.Close;
  DM.DSCIDADE.DataSet.OPEN;

  DM.DsUP.DataSet.Close;
  DM.DsUP.DataSet.OPEN;

  DM.DSSERIEESTUDO.DataSet.Close;
  DM.DSSERIEESTUDO.DataSet.OPEN;

  DM.DsProcedencia.DataSet.Close;
  DM.DsProcedencia.DataSet.OPEN;

  DM.DsCondicaoInterno.DataSet.Close;
  DM.DsCondicaoInterno.DataSet.OPEN;

  DM.DsDestino.DataSet.Close;
  DM.DsDestino.DataSet.OPEN;

  dm.DsSetorTrabalho.DataSet.Close;
  dm.DsSetorTrabalho.DataSet.OPEN;

  dm.DSFUNCAOINTERNO.DataSet.Close;
  dm.DSFUNCAOINTERNO.DataSet.OPEN;

  dm.DSNACIONALIDADE.DataSet.Close;
  dm.DSNACIONALIDADE.DataSet.OPEN;

  dm.DSRACA.DataSet.Close;
  dm.DSRACA.DataSet.OPEN;

  dm.DSESCOLARIDADE.DataSet.Close;
  dm.DSESCOLARIDADE.DataSet.OPEN;

  dm.DSADVOGADO.DataSet.Close;
  dm.DSADVOGADO.DataSet.OPEN;

  dm.DsProfissao.DataSet.Close;
  dm.DsProfissao.DataSet.OPEN;

  DSHISTORICO_interno.DataSet.Close;
  DSHISTORICO_interno.DataSet.OPEN;

  DSHISTORICOEDUCACAO.DataSet.Close;
  DSHISTORICOEDUCACAO.DataSet.OPEN;

  DsCONDENACAO_INTERNO.DataSet.close;
  DsCONDENACAO_INTERNO.DataSet.Open;

end;

procedure TFrmCadastroInternos.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FrmCadastroprocedencia := TFrmCadastroProcedencia.Create(Application);
  FrmCadastroProcedencia.ShowModal;
  FreeAndNil(FrmCadastroProcedencia);

  DM.DsProcedencia.DataSet.Close;
  DM.DsProcedencia.DataSet.OPEN;
end;

procedure TFrmCadastroInternos.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  FrmCadastroCondicaoInterno := TFrmCadastroCondicaoInterno.Create(Application);
  FrmCadastroCondicaoInterno.ShowModal;
  FreeAndNil(FrmCadastroCondicaoInterno);

  DM.DsCondicaoInterno.DataSet.Close;
  DM.DsCondicaoInterno.DataSet.OPEN;
end;

procedure TFrmCadastroInternos.EditLocalizarChange(Sender: TObject);
var
  Status: string;
begin
  inherited;

  case RadioGroupStatus.ItemIndex of
    0: Status := 'A';
    1: Status := 'I';
  end;

  sqlconsulta.sql.text := SqlSelectInterno.SQL.Text + ' where interno.id_up=' + inttostr(GLOBAL_ID_UP)
    + ' and interno.st = ' + qs(Status) + ' and nome_interno like '
    + qs(EditLocalizar.text + '%') + ' order by nome_interno ';

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

end;

procedure TFrmCadastroInternos.SalvarClick(Sender: TObject);
var
  iErro, ierro1: integer;
begin
  DsCadastro.DataSet.FieldByName('id_up').AsInteger := GLOBAL_ID_UP;
  DsCadastro.DataSet.Fieldbyname('ID_FUNCIONARIO').AsInteger := GLOBAL_ID_FUNCIONARIO;

  if DsCadastro.DataSet.State in [dsinsert] then
  begin
    if VerificaInternoExiste(DsCadastro.DataSet.fieldbyname('nome_interno').AsString,
      DsCadastro.DataSet.fieldbyname('mae').AsString) then
    begin
      ShowMessage('Interno com este Nome de Mãe, já existe no confere!');
      if MessageDlg('Continuar com o cadastro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        if MessageDlg('O registro poderá ficar duplicado, continuar?', mtConfirmation, [mbNo, mbYes], 0) <> mrYes then
        begin
          Exit;
        end;
      end;
    end;
  end;

  try
    StatusBar1.Panels[1].Text := 'SALVANDO';
    Novo.Enabled := True;
    Editar.Enabled := True;
    Excluir.Enabled := True;
    Salvar.Enabled := False;
    Cancelar.Enabled := False;

    if DsCadastro.DataSet.State in [dsedit, dsinsert] then
      DsCadastro.DataSet.Post;

    if DSHISTORICO_interno.DataSet.State in [dsedit, dsinsert] then
      DSHISTORICO_interno.DataSet.Post;

    if DSHISTORICOEDUCACAO.DataSet.State in [dsedit, dsinsert] then
      DSHISTORICOEDUCACAO.DataSet.Post;

    if DsCONDENACAO_INTERNO.DataSet.State in [dsedit, dsinsert] then
      DsCONDENACAO_INTERNO.DataSet.Post;

    IniciaTransCadastro;

    iErro := TClientDataSet(DsCadastro.DataSet).ApplyUpdates(0);
    iErro := iErro + TClientDataSet(DSHISTORICO_interno.DataSet).ApplyUpdates(0)
      + TClientDataSet(DSHISTORICOEDUCACAO.DataSet).ApplyUpdates(0)
      + TClientDataSet(DsCONDENACAO_INTERNO.DataSet).ApplyUpdates(0);

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
  PageControl1.ActivePageIndex := 0;

  DSHISTORICO_interno.DataSet.Close;
  DSHISTORICO_interno.DataSet.OPEN;

  DSHISTORICOEDUCACAO.DataSet.Close;
  DSHISTORICOEDUCACAO.DataSet.OPEN;
end;

procedure TFrmCadastroInternos.DsConsultaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  with DsConsulta.DataSet do
  begin

    if not Active then
      Exit;

    if IsEmpty then
    begin
      Exit;
    end;

    SqlCadastro.SQL.Text := 'SELECT * FROM INTERNO WHERE id_up=' + inttostr(GLOBAL_ID_UP) + ' and ID_INTERNO = ' +
      Fieldbyname('ID_INTERNO').AsString;
    DsCadastro.DataSet.Close;
    DsCadastro.DataSet.Open;

  end;

end;

procedure TFrmCadastroInternos.RadioGroupStatusClick(Sender: TObject);
begin
  inherited;
  EditLocalizar.Text := '';
  EditLocalizarChange(nil);
  if EditLocalizar.CanFocus then
    EditLocalizar.SetFocus;

end;

procedure TFrmCadastroInternos.EditarClick(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex := 0;

end;

procedure TFrmCadastroInternos.CancelarClick(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex := 0;

end;

procedure TFrmCadastroInternos.DBImageFOTOInternoClick(Sender: TObject);
var
  sOrigem, sDestino: string;
  JPeg: TJpegImage;
begin
  with DsCadastro.DataSet do
  begin
    if state in [dsedit, dsinsert] then
    begin
      if OpenDialog1.Execute then
      begin
        JPeg := TJPEGImage.Create;
        JPeg.LoadFromFile(ConverterBmpParaJPeg(JpgToBmp(OpenDialog1.FileName)));
        DBImageFOTOInterno.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end;
end;

procedure TFrmCadastroInternos.Button1Click(Sender: TObject);
begin
  inherited;
  DSHISTORICO_interno.DataSet.Append;
  DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
  DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsString := MaskEdit1.Text;
  DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString := Edit1.Text;
  DSHISTORICO_interno.DataSet.Post;

  Edit1.Text := '';
  MaskEdit1.Text := '';

end;

procedure TFrmCadastroInternos.DBImageFOTOPERFILClick(Sender: TObject);
var
  sOrigem, sDestino: string;
  JPeg: TJpegImage;
begin
  with DsCadastro.DataSet do
  begin
    if state in [dsedit, dsinsert] then
    begin
      if OpenDialog1.Execute then
      begin
        JPeg := TJPEGImage.Create;
        JPeg.LoadFromFile(ConverterBmpParaJPeg(JpgToBmp(OpenDialog1.FileName)));
        DBImageFOTOPERFIL.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end;

end;

procedure TFrmCadastroInternos.DBImagetatuagem1Click(Sender: TObject);
var
  sOrigem, sDestino: string;
  JPeg: TJpegImage;
begin
  with DsCadastro.DataSet do
  begin
    if state in [dsedit, dsinsert] then
    begin
      if OpenDialog1.Execute then
      begin
        JPeg := TJPEGImage.Create;
        JPeg.LoadFromFile(ConverterBmpParaJPeg(JpgToBmp(OpenDialog1.FileName)));
        DBImagetatuagem1.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end;

end;

procedure TFrmCadastroInternos.DBImageFOTO_SINAISClick(Sender: TObject);
var
  sOrigem, sDestino: string;
  JPeg: TJpegImage;
begin
  with DsCadastro.DataSet do
  begin
    if state in [dsedit, dsinsert] then
    begin
      if OpenDialog1.Execute then
      begin
        JPeg := TJPEGImage.Create;
        JPeg.LoadFromFile(ConverterBmpParaJPeg(JpgToBmp(OpenDialog1.FileName)));
        DBImageFOTO_SINAIS.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end;

end;

procedure TFrmCadastroInternos.DBImageFOTO_SINAIS1Click(Sender: TObject);
var
  sOrigem, sDestino: string;
  JPeg: TJpegImage;
begin
  with DsCadastro.DataSet do
  begin
    if state in [dsedit, dsinsert] then
    begin
      if OpenDialog1.Execute then
      begin
        JPeg := TJPEGImage.Create;
        JPeg.LoadFromFile(ConverterBmpParaJPeg(JpgToBmp(OpenDialog1.FileName)));
        DBImageFOTO_SINAIS1.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end;

end;

procedure TFrmCadastroInternos.DBImageFOTO_SINAIS2Click(Sender: TObject);
var
  sOrigem, sDestino: string;
  JPeg: TJpegImage;
begin
  with DsCadastro.DataSet do
  begin
    if state in [dsedit, dsinsert] then
    begin
      if OpenDialog1.Execute then
      begin
        JPeg := TJPEGImage.Create;
        JPeg.LoadFromFile(ConverterBmpParaJPeg(JpgToBmp(OpenDialog1.FileName)));
        DBImageFOTO_SINAIS2.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end;

end;

procedure TFrmCadastroInternos.DBImageFOTO_SINAIS3Click(Sender: TObject);
var
  sOrigem, sDestino: string;
  JPeg: TJpegImage;
begin
  with DsCadastro.DataSet do
  begin
    if state in [dsedit, dsinsert] then
    begin
      if OpenDialog1.Execute then
      begin
        JPeg := TJPEGImage.Create;
        JPeg.LoadFromFile(ConverterBmpParaJPeg(JpgToBmp(OpenDialog1.FileName)));
        DBImageFOTO_SINAIS3.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end;

end;

procedure TFrmCadastroInternos.DBImageFOTO_SINAIS4Click(Sender: TObject);
var
  sOrigem, sDestino: string;
  JPeg: TJpegImage;
begin
  with DsCadastro.DataSet do
  begin
    if state in [dsedit, dsinsert] then
    begin
      if OpenDialog1.Execute then
      begin
        JPeg := TJPEGImage.Create;
        JPeg.LoadFromFile(ConverterBmpParaJPeg(JpgToBmp(OpenDialog1.FileName)));
        DBImageFOTO_SINAIS4.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end;

end;

procedure TFrmCadastroInternos.Button2Click(Sender: TObject);
begin
  inherited;
  DSHISTORICOEDUCACAO.DataSet.Append;
  DSHISTORICOEDUCACAO.DataSet.fieldbyname('id_historico_estudo').AsInteger := 0;
  DSHISTORICOEDUCACAO.DataSet.fieldbyname('id_interno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  DSHISTORICOEDUCACAO.DataSet.fieldbyname('data_historico').AsString := MaskEdit2.Text;
  DSHISTORICOEDUCACAO.DataSet.fieldbyname('historico').AsString := Edit8.Text;
  DSHISTORICOEDUCACAO.DataSet.Post;

  Edit8.Text := '';
  MaskEdit2.Text := '';

end;

procedure TFrmCadastroInternos.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  FrmCadastroraca := TFrmCadastroraca.create(Application);
  frmcadastroraca.showmodal;
  FreeAndNil(FrmCadastroraca);

  DM.Dsraca.DataSet.Close;
  DM.Dsraca.DataSet.OPEN;

end;

procedure TFrmCadastroInternos.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  FrmCadastronacionalidade := TFrmCadastronacionalidade.create(Application);
  FrmCadastronacionalidade.showmodal;
  FreeAndNil(FrmCadastronacionalidade);

  DM.DSNACIONALIDADE.DataSet.Close;
  DM.DSNACIONALIDADE.DataSet.OPEN;
end;

procedure TFrmCadastroInternos.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  FrmCadastronaturalidade := TFrmCadastronaturalidade.create(Application);
  FrmCadastronaturalidade.showmodal;
  FreeAndNil(FrmCadastronaturalidade);

  DM.DSCIDADE.DataSet.Close;
  DM.DSCIDADE.DataSet.OPEN;

end;

procedure TFrmCadastroInternos.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  FrmCadastroescolaridade := TFrmCadastroescolaridade.create(Application);
  FrmCadastroescolaridade.showmodal;
  FreeAndNil(FrmCadastroescolaridade);

  DM.DSESCOLARIDADE.DataSet.Close;
  DM.DSESCOLARIDADE.DataSet.OPEN;

end;

procedure TFrmCadastroInternos.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  FrmCadastroadvogado := TFrmCadastroadvogado.create(Application);
  FrmCadastroadvogado.showmodal;
  FreeAndNil(FrmCadastroadvogado);

  DM.DSADVOGADO.DataSet.Close;
  DM.DSADVOGADO.DataSet.OPEN;
end;

procedure TFrmCadastroInternos.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  FrmCadastroprofissao := TFrmCadastroprofissao.create(Application);
  FrmCadastroprofissao.showmodal;
  FreeAndNil(FrmCadastroprofissao);

  DM.DsProfissao.DataSet.Close;
  DM.DsProfissao.DataSet.OPEN;
end;

procedure TFrmCadastroInternos.SpeedButton11Click(Sender: TObject);
begin
  inherited;
  FrmCadastronaturalidade := TFrmCadastronaturalidade.create(Application);
  FrmCadastronaturalidade.showmodal;
  FreeAndNil(FrmCadastronaturalidade);

  DM.DSCIDADE.DataSet.Close;
  DM.DSCIDADE.DataSet.OPEN;

end;

procedure TFrmCadastroInternos.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if not DsCONDENACAO_INTERNO.DataSet.Active then
    DsCONDENACAO_INTERNO.DataSet.Open;
  DsCONDENACAO_INTERNO.DataSet.Append;
  DsCONDENACAO_INTERNO.DataSet.fieldbyname('idCONDENACAO_INTERNO').AsInteger := 0;
  DsCONDENACAO_INTERNO.DataSet.fieldbyname('id_interno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  DsCONDENACAO_INTERNO.DataSet.fieldbyname('ARTIGO').AsString := EditArtigo.Text;
  DsCONDENACAO_INTERNO.DataSet.fieldbyname('OBSERVACAO').AsString := EditObservacaoCondenacao.Text;
  DsCONDENACAO_INTERNO.DataSet.fieldbyname('TOTAL_PENA_ANO').AsInteger := StrToIntDef(EditAno.Text, 0);
  DsCONDENACAO_INTERNO.DataSet.fieldbyname('TOTAL_PENA_MES').AsInteger := StrToIntDef(EditMES.Text, 0);
  DsCONDENACAO_INTERNO.DataSet.fieldbyname('TOTAL_PENA_DIA').AsInteger := StrToIntDef(EditDIA.Text, 0);
  DsCONDENACAO_INTERNO.DataSet.Post;

  EditArtigo.Text := '';
  EditObservacaoCondenacao.Text := '';
  EditANO.Text := '';
  EditMes.Text := '';
  EditDia.Text := '';

end;

end.

