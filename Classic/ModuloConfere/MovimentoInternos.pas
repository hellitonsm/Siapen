unit MovimentoInternos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ExtCtrls, ImgList, StdCtrls, Grids, DBGrids,
  FMTBcd, DB, DBClient, Provider, SqlExpr, Mask, DBCtrls, DBXpress,
  ModeloCadastro, Jpeg, Buttons, ModeloMovimentacao, frxClass, frxPreview,
  frxDBSet, adpDBDateTimePicker, Menus, pngimage;

type
  TFrmMovimentoInternos = class(TFrmModeloMovimentacao)
    PanelNome: TPanel;
    DBEditNome: TDBEdit;
    Label2: TLabel;
    Label8: TLabel;
    SqlSelectInterno: TSQLQuery;
    RadioGroupStatus: TRadioGroup;
    DBRadioGroupStatus: TDBRadioGroup;
    PageControlDadosInterno: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    PageControlEndereco: TPageControl;
    DBLookupComboBox1: TDBLookupComboBox;
    Label45: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBRadioGroupSexo: TDBRadioGroup;
    DBLookupComboBoxID_PROCEDENCIA: TDBLookupComboBox;
    Label12: TLabel;
    OpenDialog1: TOpenDialog;
    Label49: TLabel;
    Panel2: TPanel;
    DBImageFOTOInterno: TDBImage;
    TabSheet4: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    DBComboBoxMotivo: TDBComboBox;
    DBMemo1: TDBMemo;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    DSHISTORICO_interno: TDataSource;
    CDSHISTORICO_interno: TClientDataSet;
    CDSHISTORICO_internoIDHISTORICO_INTERNO: TIntegerField;
    CDSHISTORICO_internoDESCRICAO: TStringField;
    CDSHISTORICO_internoDATA_HORA: TSQLTimeStampField;
    CDSHISTORICO_internoIDINTERNO: TIntegerField;
    DSPHISTORICO_interno: TDataSetProvider;
    SQLHISTORICO_interno: TSQLQuery;
    Label9: TLabel;
    DBEditDocSaida: TDBEdit;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    SpeedButton1: TSpeedButton;
    SqlSelectInternoInativo: TSQLQuery;
    CDSHISTORICO_internoSTATUS: TStringField;
    CDSHISTORICO_internoMOTIVO_SAIDA: TStringField;
    CDSHISTORICO_internoIDPROCEDENCIA: TIntegerField;
    CDSHISTORICO_internoIDUP: TIntegerField;
    DBRadioGroup1: TDBRadioGroup;
    chkSoundex: TCheckBox;
    SqlSoundex: TSQLQuery;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    Label62: TLabel;
    DBEdit19: TDBEdit;
    TabSheetPavilhao: TTabSheet;
    TabSheetCela: TTabSheet;
    DBRadioGroupCela: TDBRadioGroup;
    TabSheetSolario: TTabSheet;
    DBRadioGroupSolario: TDBRadioGroup;
    TabSheetGaleria: TTabSheet;
    DBRadioGroupGaleria: TDBRadioGroup;
    DBRadioGroupPavilhao: TDBRadioGroup;
    SqlPavilhao: TSQLQuery;
    DspPavilhao: TDataSetProvider;
    CdsPavilhao: TClientDataSet;
    DsPavilhao: TDataSource;
    DsGaleria: TDataSource;
    CdsGaleria: TClientDataSet;
    DspGaleria: TDataSetProvider;
    SqlGaleria: TSQLQuery;
    SqlSolario: TSQLQuery;
    DspSolario: TDataSetProvider;
    CdsSolario: TClientDataSet;
    DsSolario: TDataSource;
    DsCela: TDataSource;
    CdsCela: TClientDataSet;
    DspCela: TDataSetProvider;
    SqlCela: TSQLQuery;
    Label14: TLabel;
    SqlConsultaBackup: TSQLQuery;
    RadioGroupTipoLocalizar: TRadioGroup;
    TabSheetMovimentacaoExterna: TTabSheet;
    DBGrid2: TDBGrid;
    SqlMovimentacaoExterna: TSQLQuery;
    DspMovimentacaoExterna: TDataSetProvider;
    CdsMovimentacaoExterna: TClientDataSet;
    DsMovimentacaoExterna: TDataSource;
    DataSaida: TadpDBDateTimePicker;
    DataEntrada: TadpDBDateTimePicker;
    DBLookupComboBoxCela: TDBLookupComboBox;
    LabelCela: TLabel;
    DBLookupComboBoxSolario: TDBLookupComboBox;
    LabelSolario: TLabel;
    DBLookupComboBoxGaleria: TDBLookupComboBox;
    LabelGaleria: TLabel;
    DBLookupComboBoxPavilhao: TDBLookupComboBox;
    LabelPavilhao: TLabel;
    TabSheet5: TTabSheet;
    BtnIncluirDocDigitalizado: TBitBtn;
    BtnVisuzalizarDocDigitalizador: TBitBtn;
    DBGrid3: TDBGrid;
    DsDocumentos: TDataSource;
    CdsDocumentos: TClientDataSet;
    DspDocumentos: TDataSetProvider;
    SqlDocumentos: TSQLQuery;
    OpenDialogDoc: TOpenDialog;
    SaveDialogDoc: TSaveDialog;
    ImageList1: TImageList;
    ToolBarSetores: TToolBar;
    ToolButtonInterno: TToolButton;
    ToolButtonProcessos: TToolButton;
    ToolButtonDisciplina: TToolButton;
    ToolButtonProcedDF: TToolButton;
    ToolButtonFiltrarCela: TToolButton;
    LabelTotal: TLabel;
    ToolButtonInteligencia: TToolButton;
    TabSheetMudancaCela: TTabSheet;
    SqlList_Mudanca_Cela: TSQLQuery;
    DspList_Mudanca_Cela: TDataSetProvider;
    DsList_Mudanca_Cela: TDataSource;
    DBGridMudanca: TDBGrid;
    CdsList_Mudanca_Cela: TClientDataSet;
    CdsList_Mudanca_CelaID_VINC_MUDANCA_CELA: TIntegerField;
    CdsList_Mudanca_CelaID_MUDANCA_CELA: TIntegerField;
    CdsList_Mudanca_CelaID_INTERNO: TIntegerField;
    CdsList_Mudanca_CelaID_PAVILHAO_ANTES: TIntegerField;
    CdsList_Mudanca_CelaID_GALERIA_ANTES: TIntegerField;
    CdsList_Mudanca_CelaID_SOLARIO_ANTES: TIntegerField;
    CdsList_Mudanca_CelaPAVILHAO_ANTES: TStringField;
    CdsList_Mudanca_CelaGALERIA_ANTES: TStringField;
    CdsList_Mudanca_CelaSOLARIO_ANTES: TStringField;
    CdsList_Mudanca_CelaCELA_ANTES: TStringField;
    CdsList_Mudanca_CelaPAVILHAO_NOVO: TStringField;
    CdsList_Mudanca_CelaGALERIA_NOVO: TStringField;
    CdsList_Mudanca_CelaSOLARIO_NOVO: TStringField;
    CdsList_Mudanca_CelaCELA_NOVO: TStringField;
    CdsList_Mudanca_CelaID_CELA_ANTES: TIntegerField;
    CdsList_Mudanca_CelaID_PAVILHAO_NOVO: TIntegerField;
    CdsList_Mudanca_CelaID_GALERIA_NOVO: TIntegerField;
    CdsList_Mudanca_CelaID_SOLARIO_NOVO: TIntegerField;
    CdsList_Mudanca_CelaID_CELA_NOVO: TIntegerField;
    CdsList_Mudanca_CelaINTERNO: TStringField;
    CdsList_Mudanca_CelaRGI: TStringField;
    SqlPavAntes: TSQLQuery;
    DspPavAntes: TDataSetProvider;
    CdsPavAntes: TClientDataSet;
    DsPavAntes: TDataSource;
    DsGalAntes: TDataSource;
    CdsGalAntes: TClientDataSet;
    DspGalAntes: TDataSetProvider;
    SqlGalAntes: TSQLQuery;
    SqlSolAntes: TSQLQuery;
    DspSolAntes: TDataSetProvider;
    CdsSolAntes: TClientDataSet;
    DsSolAntes: TDataSource;
    DsCelaAntes: TDataSource;
    CdsCelaAntes: TClientDataSet;
    DspCelaAntes: TDataSetProvider;
    SqlCelaAntes: TSQLQuery;
    CdsList_Mudanca_CelaCONFIRMADA: TStringField;
    BitBtn1: TBitBtn;
    SQLhistorico_trabalho: TSQLQuery;
    dsphistorico_trabalho: TDataSetProvider;
    cdshistorico_trabalho: TClientDataSet;
    dshistorico_trabalho: TDataSource;
    SQLhistorico_estudo: TSQLQuery;
    dsphistorico_estudo: TDataSetProvider;
    cdshistorico_estudo: TClientDataSet;
    dshistorico_estudo: TDataSource;
    Dsconspadrao: TDataSource;
    Cdsconspadrao: TClientDataSet;
    Dspconspadrao: TDataSetProvider;
    SQLconspadrao: TSQLQuery;
    SqlConsultaTodos: TSQLQuery;
    DBComboBox2: TDBComboBox;
    DBEditMotivoMudancaCela: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    DBEditDocumentoMudanca: TDBEdit;
    CdsVinc_Mudanca_Cela: TClientDataSet;
    DsVinc_Mudanca_Cela: TDataSource;
    DspVinc_Mudanca_Cela: TDataSetProvider;
    SqlVinc_Mudanca_Cela: TSQLQuery;
    DsMudancaCela: TDataSource;
    CdsMudancaCela: TClientDataSet;
    DspMudancaCela: TDataSetProvider;
    SqlMudancaCela: TSQLQuery;
    DBEditDataMudanca: TDBEdit;
    Label17: TLabel;
    CdsList_Mudanca_CelaMOTIVO_MOVIMENTACAO: TStringField;
    CdsList_Mudanca_CelaDATA: TSQLTimeStampField;
    Label18: TLabel;
    DBComboBox3: TDBComboBox;
    SqlTransferenciaInterno: TSQLQuery;
    DspTransferenciaInterno: TDataSetProvider;
    CdsTransferenciaInterno: TClientDataSet;
    DsTransferenciaInterno: TDataSource;
    Dsvinc_transferencia_interno: TDataSource;
    Cdsvinc_transferencia_interno: TClientDataSet;
    Cdsvinc_transferencia_internoID_VINC_TRANSFERENCIA_INTERNO: TIntegerField;
    Cdsvinc_transferencia_internoID_INTERNO: TIntegerField;
    Cdsvinc_transferencia_internoID_TRANSFERENCIA_INTERNO: TIntegerField;
    Cdsvinc_transferencia_internoInterno: TStringField;
    Cdsvinc_transferencia_internoRGI: TStringField;
    Cdsvinc_transferencia_internoID_FUNCIONARIO_CANCELAMENTO: TIntegerField;
    Cdsvinc_transferencia_internoSTATUS: TStringField;
    Cdsvinc_transferencia_internoDATA_CANCELAMENTO: TSQLTimeStampField;
    Cdsvinc_transferencia_internoMOTIVO_CANCELAMENTO: TStringField;
    Cdsvinc_transferencia_internoFuncionrio: TStringField;
    Dspvinc_transferencia_interno: TDataSetProvider;
    Sqlvinc_transferencia_interno: TSQLQuery;
    PageControlDestino: TPageControl;
    TabSheetDestino: TTabSheet;
    TabSheetUnidade: TTabSheet;
    DBLookupComboBoxUPDestino: TDBLookupComboBox;
    SqlUP: TSQLQuery;
    DspUP: TDataSetProvider;
    CdsUP: TClientDataSet;
    DsUP: TDataSource;
    DBLookupComboBoxDestino: TDBLookupComboBox;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    ComboBoxTipoDocumento: TComboBox;
    ToolButton1: TToolButton;
    Dsdigital: TDataSource;
    CDSdigital: TClientDataSet;
    DSPdigital: TDataSetProvider;
    SQLdigital: TSQLQuery;
    ToolButton2: TToolButton;
    DBLookupComboBoxSolicitanteVaga: TDBLookupComboBox;
    Label19: TLabel;
    procedure EditLocalizarChange(Sender: TObject);
    procedure DBRadioGroupPavilhaoChange(Sender: TObject);
    procedure DBRadioGroupGaleriaChange(Sender: TObject);
    procedure DBRadioGroupSolarioChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure DsConsultaDataChange(Sender: TObject; Field: TField);
    procedure SalvarClick(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure PageControlConsultaChange(Sender: TObject);
    procedure RadioGroupStatusClick(Sender: TObject);
    procedure ImagemonitoramentoClick(Sender: TObject);
    procedure DBComboBoxMotivoClick(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure EditLocalizarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CdsConsultaFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure CdsConsultaCalcFields(DataSet: TDataSet);
    procedure CancelarClick(Sender: TObject);
    procedure DBRadioGroupStatusChange(Sender: TObject);
    procedure BtnIncluirDocDigitalizadoClick(Sender: TObject);
    procedure BtnVisuzalizarDocDigitalizadorClick(Sender: TObject);
    procedure CdsDocumentosAfterInsert(DataSet: TDataSet);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure ToolButtonInternoClick(Sender: TObject);
    procedure ToolButtonProcessosClick(Sender: TObject);
    procedure ToolButtonDisciplinaClick(Sender: TObject);
    procedure ToolButtonProcedDFClick(Sender: TObject);
    procedure DBLookupComboBoxPavilhaoClick(Sender: TObject);
    procedure DBLookupComboBoxGaleriaClick(Sender: TObject);
    procedure DBLookupComboBoxSolarioClick(Sender: TObject);
    procedure ToolButtonFiltrarCelaClick(Sender: TObject);
    procedure ToolButtonInteligenciaClick(Sender: TObject);
    procedure CdsList_Mudanca_CelaCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBoxCelaClick(Sender: TObject);
    procedure DBComboBoxMotivoChange(Sender: TObject);
    procedure DBGridConsultaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure ToolButton1Click(Sender: TObject);
    procedure EditLocalizarClick(Sender: TObject);
    procedure RadioGroupTipoLocalizarClick(Sender: TObject);
    procedure ImagepolegaresquerdoClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure PageControlDadosInternoChange(Sender: TObject);
  private
    sFiltroCela: string;
    sCaptionCela: string;
    function RetornaDigital: string;
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
  FrmMovimentoInternos: TFrmMovimentoInternos;
  statusold, em_transito_old: string;
  idcela_old, idsolario_old, idgaleria_old, idpavilhao_old: string;
  cela_old, solario_old, galeria_old, pavilhao_old: string;

implementation

uses Lib, DmPrincipal, SituacaoDisciplinar, CadastroProcedencia,
  CadastroDestino, DateUtils, CadastroInternoJuridico, VisualizadorOLE,
  CadastroProcesso, CadastroInternoDisciplina, ConsultaProced, FiltroCela,
  CadastroInteligencia, CadastroInternos, Monitoramento_Eletronico,
  UnCaptDig, unCompBio, UnRecDig, FrmCapturaBiometria;

{$R *.dfm}

procedure TFrmMovimentoInternos.CorNosCampos();
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

function TFrmMovimentoInternos.IniciaTransCadastro: Boolean;
begin

  try
    TD.TransactionID := 0;
    TD.IsolationLevel := xilREADCOMMITTED;
    DM.SQLConnect.StartTransaction(TD);
    DM.SQLConnect.ExecuteDirect('EXECUTE PROCEDURE set_context(' + inttostr(GLOBAL_ID_FUNCIONARIO) + ')');
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

function TFrmMovimentoInternos.ReeiniciaTransCadastro: Boolean;
begin
  try
    FinalizaTransCadastro;
    TD.TransactionID := TD.TransactionID + 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    DM.SQLConnect.StartTransaction(TD);
  except
  end;
end;

function TFrmMovimentoInternos.FinalizaTransCadastro: Boolean;
begin
  try
    Result := False;
    if DM.SQLConnect.InTransaction then
      DM.SQLConnect.Commit(TD);
    Result := True;
  except
  end;
end;

function TFrmMovimentoInternos.CancelaTransCadastro: Boolean;
begin
  try
    if DM.SQLConnect.InTransaction then
      DM.SQLConnect.Rollback(TD);
  except
  end;
end;

procedure TFrmMovimentoInternos.EditLocalizarChange(Sender: TObject);
var
  Status, Campo: string;
begin
  inherited;

  case RadioGroupStatus.ItemIndex of
    0: Status := ' interno.st = ''A'' ';
    1: Status := ' 1 = 1 ';
    2: Status := ' 1 = 1 ';
  end;

  case RadioGroupTipoLocalizar.ItemIndex of
    0: Campo := 'RGI';
    1: Campo := 'NOME_INTERNO';
    2: Campo := 'ID_INTERNO';
  end;

  if RadioGroupStatus.ItemIndex = 2 then
  begin

    if (RadioGroupTipoLocalizar.ItemIndex = 0) or (RadioGroupTipoLocalizar.ItemIndex = 2) then
    begin
      SqlConsulta.SQL.Text := SqlConsultaTodos.sql.text
        + ' and interno.' + campo + ' = ' + qs(EditLocalizar.text)
        + ' order by interno.nome_interno ';
    end
    else
    begin
      SqlConsulta.SQL.Text := SqlConsultaTodos.sql.text
        + ' and interno.' + campo + ' = ' + qs(EditLocalizar.text + '%')
        + ' order by interno.nome_interno ';
    end;

  end
  else if RadioGroupStatus.ItemIndex = 1 then
  begin
    if (RadioGroupTipoLocalizar.ItemIndex = 0) or (RadioGroupTipoLocalizar.ItemIndex = 2) then
    begin
      SqlConsulta.SQL.Text := SqlConsultaTodos.sql.text
        + ' and interno.' + campo + ' = ' + qs(EditLocalizar.text)
        + ' order by interno.nome_interno ';
    end
    else
    begin
      SqlConsulta.SQL.Text := SqlConsultaTodos.sql.text
        + ' and interno.' + campo + ' like ' + qs(EditLocalizar.text + '%')
        + ' order by interno.nome_interno ';
    end;
  end
  else
  begin
    if (RadioGroupTipoLocalizar.ItemIndex = 0) or (RadioGroupTipoLocalizar.ItemIndex = 2) then
    begin
      SqlConsulta.SQL.Text := SqlConsultaBackup.sql.text
        + ' and ' + Status
        + ' and interno.id_up=' + inttostr(GLOBAL_ID_UP)
        + ' and interno.' + campo + ' = ' + qs(EditLocalizar.text) + sFiltroCela
        + ' order by interno.nome_interno ';
    end
    else
    begin
      SqlConsulta.SQL.Text := SqlConsultaBackup.sql.text
        + ' and ' + Status
        + ' and interno.id_up=' + inttostr(GLOBAL_ID_UP)
        + ' and interno.' + campo + ' like ' + qs(EditLocalizar.text + '%') + sFiltroCela
        + ' order by interno.nome_interno ';
    end;
  end;

  DsConsulta.DataSet.close;
  DsConsulta.DataSet.open;

  PageControlConsulta.ActivePageIndex := 0;
  PageControlDadosInterno.ActivePageIndex := 0;
  PageControlEndereco.ActivePageIndex := 0;

end;

procedure TFrmMovimentoInternos.DBRadioGroupPavilhaoChange(
  Sender: TObject);
begin
  inherited;
  if PageControlEndereco.Visible = false then
    Exit;

  if DsCadastro.dataset.state in [dsinsert] then
  begin
    DsCadastro.dataset.FieldByname('IDGALERIA').AsVariant := null;
    DsCadastro.dataset.FieldByname('IDSOLARIO').AsVariant := null;
    DsCadastro.dataset.FieldByname('IDCELA').AsVariant := null;
  end;

  if DsCadastro.dataset.state in [dsedit] then
  begin
    if (DsCadastro.dataset.FieldByname('IDPAVILHAO').OldValue <>
      DsCadastro.dataset.FieldByname('IDPAVILHAO').NewValue) then
    begin
      DsCadastro.dataset.FieldByname('IDGALERIA').AsVariant := null;
      DsCadastro.dataset.FieldByname('IDSOLARIO').AsVariant := null;
      DsCadastro.dataset.FieldByname('IDCELA').AsVariant := null;
    end;
  end;

  if DsCadastro.dataset.state in [dsedit] then
  begin
    if DsCadastro.dataset.FieldByname('IDPAVILHAO').AsVariant <>
      DsConsulta.dataset.FieldByname('IDPAVILHAO').AsVariant then
    begin
      DsCadastro.dataset.FieldByname('IDGALERIA').AsVariant := null;
      DsCadastro.dataset.FieldByname('IDSOLARIO').AsVariant := null;
      DsCadastro.dataset.FieldByname('IDCELA').AsVariant := null;
    end;
  end;

  DBRadioGroupGaleria.Items.Clear;
  DBRadioGroupGaleria.Values.Clear;

  DBRadioGroupSolario.Items.Clear;
  DBRadioGroupSolario.Values.Clear;

  DBRadioGroupCela.Items.Clear;
  DBRadioGroupCela.Values.Clear;

  if TDBRadioGroup(Sender).ItemIndex = -1 then
    exit;

  MontaGaleria(TDBRadioGroup(Sender).Values.Strings[TDBRadioGroup(Sender).ItemIndex], DBRadioGroupGaleria);
  DBRadioGroupGaleriaChange(DBRadioGroupGaleria);
  DBRadioGroupSolarioChange(DBRadioGroupSolario);

  if DsCadastro.dataset.state in [dsinsert, dsedit] then
    DsCadastro.dataset.fieldbyname('ID_UP').asinteger := GLOBAL_ID_UP;

end;

procedure TFrmMovimentoInternos.DBRadioGroupGaleriaChange(Sender: TObject);
begin
  inherited;
  if PageControlEndereco.Visible = false then
    Exit;
  if DsCadastro.dataset.state in [dsinsert] then
  begin
    DsCadastro.dataset.FieldByname('IDSOLARIO').AsVariant := null;
    DsCadastro.dataset.FieldByname('IDCELA').AsVariant := null;
  end;

  if DsCadastro.dataset.state in [dsedit] then
  begin
    if DsCadastro.dataset.FieldByname('IDGALERIA').AsVariant <>
      DsConsulta.dataset.FieldByname('IDGALERIA').AsVariant then
    begin
      DsCadastro.dataset.FieldByname('IDSOLARIO').AsVariant := null;
      DsCadastro.dataset.FieldByname('IDCELA').AsVariant := null;
    end;
  end;

  DBRadioGroupSolario.Items.Clear;
  DBRadioGroupSolario.Values.Clear;

  DBRadioGroupCela.Items.Clear;
  DBRadioGroupCela.Values.Clear;

  if TDBRadioGroup(Sender).ItemIndex = -1 then
    exit;
  MontaSolario(TDBRadioGroup(Sender).Values.Strings[TDBRadioGroup(Sender).ItemIndex], DBRadioGroupSolario);

end;

procedure TFrmMovimentoInternos.DBRadioGroupSolarioChange(Sender: TObject);
begin
  inherited;

  if PageControlEndereco.Visible = false then
    Exit;

  if DsCadastro.dataset.state in [dsinsert] then
  begin
    DsCadastro.dataset.FieldByname('IDCELA').AsVariant := null;
  end;

  if DsCadastro.dataset.state in [dsedit] then
  begin
    if DsCadastro.dataset.FieldByname('IDSOLARIO').AsVariant <>
      DsConsulta.dataset.FieldByname('IDSOLARIO').AsVariant then
    begin
      DsCadastro.dataset.FieldByname('IDCELA').AsVariant := null;
    end;
  end;

  DBRadioGroupCela.Items.Clear;
  DBRadioGroupCela.Values.Clear;

  if TDBRadioGroup(Sender).ItemIndex = -1 then
    exit;
  MontaCela(TDBRadioGroup(Sender).Values.Strings[TDBRadioGroup(Sender).ItemIndex], DBRadioGroupCela);

end;

procedure TFrmMovimentoInternos.FormCreate(Sender: TObject);
begin

  ToolButtonProcedDF.Visible := (GLOBAL_ACESSA_PROCED = 'S');
  ToolButtonInteligencia.Visible := ((PERMISSAO_INTELIGENCIA <> '') and (PERMISSAO_INTELIGENCIA <> 'R'));

  LabelPavilhao.Caption := GLOBAL_NIVEL_1;
  LabelGaleria.Caption := GLOBAL_NIVEL_2;
  LabelSolario.Caption := GLOBAL_NIVEL_3;
  LabelCela.Caption := GLOBAL_NIVEL_4;

  SqlPavilhao.SQL.Text := ' select * from pavilhao where id_up=' + inttostr(GLOBAL_ID_UP) + ' order by pavilhao';

  DsPavilhao.DataSet.Close;
  DsPavilhao.DataSet.Open;

  DsGaleria.DataSet.Close;
  DsGaleria.DataSet.Open;

  DsSolario.DataSet.Close;
  DsSolario.DataSet.Open;

  DsCela.DataSet.Close;
  DsCela.DataSet.Open;

  SqlPavAntes.SQL.Text := ' select * from pavilhao where id_up=' + inttostr(GLOBAL_ID_UP) + ' order by pavilhao';

  DsPavAntes.DataSet.Close;
  DsPavAntes.DataSet.Open;

  DsGalAntes.DataSet.Close;
  DsGalAntes.DataSet.Open;

  DsSolAntes.DataSet.Close;
  DsSolAntes.DataSet.Open;

  DsCelaAntes.DataSet.Close;
  DsCelaAntes.DataSet.Open;

  DataEntrada.MaxDate := date;
  DataSaida.MaxDate := date;
  SqlConsulta.sql.text := SqlConsultaBackup.sql.text + ' and interno.id_up=' + inttostr(GLOBAL_ID_UP) + ' order by interno.nome_interno ';
  MontaPavilhao(IntToStr(GLOBAL_ID_UP), DBRadioGroupPavilhao);
  PageControlEndereco.ActivePageIndex := 0;
  inherited;
  DM.DsCondicaoInterno.DataSet.Close;
  DM.DsCondicaoInterno.DataSet.OPEN;
  DM.DsProcedencia.DataSet.Close;
  DM.DsProcedencia.DataSet.OPEN;
  DM.DsDestino.DataSet.Close;
  DM.DsDestino.DataSet.OPEN;
  DM.DsSetorTrabalho.DataSet.Close;
  DM.DsSetorTrabalho.DataSet.OPEN;
  DSHISTORICO_interno.DataSet.Close;
  DSHISTORICO_interno.DataSet.OPEN;
  DM.DsUP.DataSet.Close;
  DM.DsUP.DataSet.OPEN;

  DsPavilhao.DataSet.Close;
  DsPavilhao.DataSet.Open;

  DsGaleria.DataSet.Close;
  DsGaleria.DataSet.Open;

  DsSolario.DataSet.Close;
  DsSolario.DataSet.Open;

  DsCela.DataSet.Close;
  DsCela.DataSet.Open;

  Dsdigital.DataSet.Close;
  Dsdigital.DataSet.Open;

  DBGridMudanca.Columns[2].Title.Caption := 'Saiu: ' + GLOBAL_NIVEL_1;
  DBGridMudanca.Columns[3].Title.Caption := 'Saiu: ' + GLOBAL_NIVEL_2;
  DBGridMudanca.Columns[4].Title.Caption := 'Saiu: ' + GLOBAL_NIVEL_3;
  DBGridMudanca.Columns[5].Title.Caption := 'Saiu: ' + GLOBAL_NIVEL_4;

  DBGridMudanca.Columns[6].Title.Caption := '> ' + GLOBAL_NIVEL_1;
  DBGridMudanca.Columns[7].Title.Caption := '> ' + GLOBAL_NIVEL_2;
  DBGridMudanca.Columns[8].Title.Caption := '> ' + GLOBAL_NIVEL_3;
  DBGridMudanca.Columns[9].Title.Caption := '> ' + GLOBAL_NIVEL_4;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_CONFERE)
    and not ContemValor('E', PERMISSAO_CONFERE)
    and not ContemValor('D', PERMISSAO_CONFERE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CONFERE)
    and not ContemValor('E', PERMISSAO_CONFERE)
    and not ContemValor('D', PERMISSAO_CONFERE) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CONFERE)
    and ContemValor('E', PERMISSAO_CONFERE)
    and not ContemValor('D', PERMISSAO_CONFERE) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CONFERE)
    and ContemValor('E', PERMISSAO_CONFERE)
    and ContemValor('D', PERMISSAO_CONFERE) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CONFERE)
    and not ContemValor('E', PERMISSAO_CONFERE)
    and ContemValor('D', PERMISSAO_CONFERE) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CONFERE)
    and not ContemValor('E', PERMISSAO_CONFERE)
    and ContemValor('D', PERMISSAO_CONFERE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CONFERE)
    and ContemValor('E', PERMISSAO_CONFERE)
    and not ContemValor('D', PERMISSAO_CONFERE) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmMovimentoInternos.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  with DsCadastro.DataSet do
  begin

    if not Active then
      Exit;

    if IsEmpty then
    begin
      Exit;
    end;

    if state in [dsedit, dsinsert] then
    begin
      PageControlModeloCadastro.Enabled := True;
      if PageControlEndereco.Visible = False then
      begin

        PageControlEndereco.Visible := True;
        MontaPavilhao(IntToStr(GLOBAL_ID_UP), DBRadioGroupPavilhao);
        DBRadioGroupPavilhaoChange(DBRadioGroupPavilhao);
        DBRadioGroupGaleriaChange(DBRadioGroupGaleria);
        DBRadioGroupSolarioChange(DBRadioGroupSolario);

      end;
    end
    else
    begin
      PageControlEndereco.Visible := False;
      PageControlModeloCadastro.Enabled := false;
      PageControlDadosInterno.activepageindex := 0;
    end;

    ToolBarSetores.Enabled := not (PageControlModeloCadastro.Enabled);

  end;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_CONFERE)
    and not ContemValor('E', PERMISSAO_CONFERE)
    and not ContemValor('D', PERMISSAO_CONFERE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CONFERE)
    and not ContemValor('E', PERMISSAO_CONFERE)
    and not ContemValor('D', PERMISSAO_CONFERE) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CONFERE)
    and ContemValor('E', PERMISSAO_CONFERE)
    and not ContemValor('D', PERMISSAO_CONFERE) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CONFERE)
    and ContemValor('E', PERMISSAO_CONFERE)
    and ContemValor('D', PERMISSAO_CONFERE) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CONFERE)
    and not ContemValor('E', PERMISSAO_CONFERE)
    and ContemValor('D', PERMISSAO_CONFERE) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CONFERE)
    and not ContemValor('E', PERMISSAO_CONFERE)
    and ContemValor('D', PERMISSAO_CONFERE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CONFERE)
    and ContemValor('E', PERMISSAO_CONFERE)
    and not ContemValor('D', PERMISSAO_CONFERE) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmMovimentoInternos.FormShow(Sender: TObject);
begin
  IniciaTelaAguarde();
  InterageTelaAguarde();
  inherited;
  InterageTelaAguarde();
  RadioGroupStatusClick(nil);

  DBGridConsulta.Columns[4].Title.Caption := GLOBAL_NIVEL_1;
  DBGridConsulta.Columns[5].Title.Caption := GLOBAL_NIVEL_2;
  DBGridConsulta.Columns[6].Title.Caption := GLOBAL_NIVEL_3;

  if GLOBAL_RGI = 'S' then
  begin
    Label4.Enabled := False;
    DBEdit3.Enabled := False;
  end;

  InterageTelaAguarde();
  DsDocumentos.DataSet.Close;
  DsDocumentos.DataSet.Open;

  InterageTelaAguarde();
  DsUP.DataSet.Close;
  DsUP.DataSet.Open;

  InterageTelaAguarde();
  DsTransferenciaInterno.DataSet.Close;
  DsTransferenciaInterno.DataSet.Open;

  InterageTelaAguarde();
  Dsvinc_transferencia_interno.DataSet.Close;
  Dsvinc_transferencia_interno.DataSet.Open;

  InterageTelaAguarde();
  dshistorico_trabalho.DataSet.Close;
  dshistorico_trabalho.DataSet.Open;

  InterageTelaAguarde();
  dshistorico_estudo.DataSet.Close;
  dshistorico_estudo.DataSet.Open;

  InterageTelaAguarde();
  DsMudancaCela.DataSet.Close;
  DsMudancaCela.DataSet.Open;

  DM.DSCIDADE.DataSet.Close;
  DM.DSCIDADE.DataSet.OPEN;

  InterageTelaAguarde();
  DsVinc_Mudanca_Cela.DataSet.Close;
  DsVinc_Mudanca_Cela.DataSet.Open;
  InterageTelaAguarde();

  FinalizaTelaAguarde;

  //  DBEdit1.Field.EditMask := '99\/99\/9999;1;_';
  //  DBEdit2.Field.EditMask := '99\/99\/9999;1;_';

end;

procedure TFrmMovimentoInternos.DsConsultaDataChange(Sender: TObject;
  Field: TField);
var
  relficha: string;
begin
  inherited;
  with DsConsulta.DataSet do
  begin

    if not Active then
    begin
      Exit;
    end;

    if IsEmpty then
    begin
      Exit;
    end;

    LabelTotal.Caption := '[Registro: ' + inttostr(recno) + ' de ' + inttostr(recordcount) + '  ]' + sCaptionCela;

  end;

end;

procedure TFrmMovimentoInternos.SalvarClick(Sender: TObject);
var
  sMovimento, disciplinar, sSqlExecute, MotivoSaida: string;
  iErro, LIMITE_POR_CELA: integer;
begin

  if DBEditNome.CanFocus then
    DBEditNome.SetFocus;

  if (DsCadastro.DataSet.state in [dsinsert]) and (DsCadastro.DataSet.FieldByName('ST').AsString <> 'A') then
  begin
    ShowMessage('Não pode INSERIR direto como inativo!' + #13#10 + 'Salve o registro depois mude para inativo.');
    EXIT;
  end;

  if DBEditNome.Text = '' then
  begin
    ShowMessage('Informe o Nome do Interno!');
    if DBEditNome.CanFocus then
      DBEditNome.SetFocus;
    Exit;
  end;

  if DBRadioGroupSexo.ItemIndex = -1 then
  begin
    ShowMessage('Informe o sexo!');
    if DBRadioGroupSexo.CanFocus then
      DBRadioGroupSexo.SetFocus;
    Exit;
  end;

  if DBRadioGroupStatus.ItemIndex = -1 then
  begin
    ShowMessage('Informe o Status!');
    if DBRadioGroupStatus.CanFocus then
      DBRadioGroupStatus.SetFocus;
    Exit;
  end;

  if DBEdit6.Text = '' then
  begin
    PageControlDadosInterno.ActivePageIndex := 0;
    ShowMessage('Digite o Nome da Mãe!');
    DBEdit6.SetFocus;
    exit;
  end;

  DsCadastro.DataSet.Fieldbyname('ID_FUNCIONARIO').AsInteger := GLOBAL_ID_FUNCIONARIO;

  if DsCadastro.DataSet.FieldByName('id_solicitante_vaga').asString = '' then
  begin
    PageControlDadosInterno.ActivePageIndex := 0;
    ShowMessage('Digite a Cidade/Estado Solicitante da Vaga!');
    if DBLookupComboBoxSolicitanteVaga.CanFocus then
      DBLookupComboBoxSolicitanteVaga.SetFocus;
    Exit;
  end;


  if (dscadastro.dataset.fieldbyname('ST').asstring = 'A') then
  begin

    if DsCadastro.DataSet.FieldByName('id_procedencia').AsString = '' then
    begin
      PageControlDadosInterno.ActivePageIndex := 0;
      ShowMessage('Digite a Procedência!');
      if DBLookupComboBoxID_PROCEDENCIA.CanFocus then
        DBLookupComboBoxID_PROCEDENCIA.SetFocus;
      Exit;
    end;

    if DataEntrada.Field.AsVariant = null then
    begin
      PageControlDadosInterno.ActivePageIndex := 0;
      ShowMessage('Digite a Data de Entrada!');
      if DataEntrada.canFocus then
        DataEntrada.SetFocus;
      Exit;
    end;

    if DBLookupComboBoxPavilhao.KeyValue = null then
    begin
      PageControlDadosInterno.ActivePageIndex := 1;
      ShowMessage('Informe o ' + GLOBAL_NIVEL_1 + '!');
      if DBLookupComboBoxPavilhao.canFocus then
        DBLookupComboBoxPavilhao.SetFocus;
      Exit;
    end;

    if DBLookupComboBoxGaleria.KeyValue = null then
    begin
      PageControlDadosInterno.ActivePageIndex := 1;
      ShowMessage('Informe o ' + GLOBAL_NIVEL_2 + '!');
      if DBLookupComboBoxGaleria.canFocus then
        DBLookupComboBoxGaleria.SetFocus;
      Exit;
    end;

    if DBLookupComboBoxSolario.KeyValue = null then
    begin
      PageControlDadosInterno.ActivePageIndex := 1;
      ShowMessage('Informe o ' + GLOBAL_NIVEL_3 + '!');
      if DBLookupComboBoxSolario.canFocus then
        DBLookupComboBoxSolario.SetFocus;
      Exit;
    end;

    if DBLookupComboBoxCela.KeyValue = null then
    begin
      PageControlDadosInterno.ActivePageIndex := 1;
      ShowMessage('Informe o ' + GLOBAL_NIVEL_4 + '!');
      if DBLookupComboBoxCela.canFocus then
        DBLookupComboBoxCela.SetFocus;
      Exit;
    end;

  end;

  {Atribuir RGI automático}
  if (GLOBAL_RGI = 'S') and (DsCadastro.DataSet.fieldbyname('rgi').AsString = '') then
  begin
    {selecionar o generator do RGI}
    dm.SqlExecute.SQL.Text := 'select gen_id (cod_up, 0) || gen_id (RGI, 1) as ID from rdb$database';
    dm.DsExecute.DataSet.Close;
    dm.DsExecute.DataSet.Open;
    {atribuir valor do generator ao campo rgi}
    DsCadastro.DataSet.fieldbyname('RGI').AsInteger :=
      dm.DsExecute.DataSet.FieldByName('ID').AsInteger;
  end;

  if DsCadastro.DataSet.fieldbyname('rgi').AsString = '' then
  begin
    PageControlDadosInterno.ActivePageIndex := 0;
    ShowMessage('Informe o RGI (Prontuário)!');
    if DBEdit3.canFocus then
      DBEdit3.SetFocus;
    Exit;
  end;

  if DsCadastro.DataSet.State in [dsinsert] then
  begin
    if VerificaInternoExiste(DsCadastro.DataSet.fieldbyname('nome_interno').AsString,
      DsCadastro.DataSet.fieldbyname('mae').AsString) then
    begin
      ShowMessage('INTERNO DUPLICADO!' + #13#13 + 'Já existe no Sistema um Interno com este nome e o mesmo nome de Mãe!');
      Exit;
    end;

    if VerificaRGIExiste(DsCadastro.DataSet.fieldbyname('rgi').AsString) then
    begin
      ShowMessage('Interno com este RGI (Prontuário): ' + DsCadastro.DataSet.fieldbyname('rgi').AsString + ', já existe!');
      Exit;
    end;
  end;


  {Saída do interno}
  if ((dscadastro.dataset.state in [dsedit]) and (DBRadioGroupStatus.ItemIndex = 1)) then
  begin

    if (dscadastro.dataset.fieldbyname('ST').asstring <> statusold) then
    begin

      if datasaida.Field.AsVariant = null then
      begin
        PageControlDadosInterno.ActivePageIndex := 2;
        ShowMessage('Digite a Data da Saída!');
        DataSaida.SetFocus;
        exit;
      end;

      if DBComboBoxMotivo.Text = '' then
      begin
        PageControlDadosInterno.ActivePageIndex := 2;
        ShowMessage('Digite o Motivo!');
        DBComboBoxMotivo.SetFocus;
        exit;
      end;

      if DBEditDocSaida.text = '' then
      begin
        PageControlDadosInterno.ActivePageIndex := 2;
        ShowMessage('Digite a CI/OF SAÍDA!');
        DBEditDocSaida.SetFocus;
        exit;
      end;

      if TabSheetDestino.TabVisible then
      begin
        if (DBLookupComboBoxDestino.Text = '') then
        begin
          PageControlDadosInterno.ActivePageIndex := 2;
          ShowMessage('Digite o Destino!');
          DBLookupComboBoxDestino.SetFocus;
          exit;
        end;
      end
      else
      begin
        if UpperCase(DBComboBoxMotivo.Text) = UpperCase('Transfêrencia de Presidio') then
          //        if TabSheetUnidade.TabVisible then
        begin
          if (DBLookupComboBoxUPDestino.Text = '') then
          begin
            PageControlDadosInterno.ActivePageIndex := 2;
            ShowMessage('Digite a Unidade de Destino!');
            if DBLookupComboBoxUPDestino.CanFocus then
              DBLookupComboBoxUPDestino.SetFocus;
            exit;
          end;

          if DBLookupComboBoxUPDestino.KeyValue = GLOBAL_ID_UP then
          begin
            if DBLookupComboBoxUPDestino.CanFocus then
              DBLookupComboBoxUPDestino.SetFocus;
            ShowMessage('Unidade prisional, não pode ser a mesma!');
            exit;
          end;

          SQLconspadrao.sql.text := 'select * from padrao where (id_pavilhao+id_galeria+id_solario+id_cela) is not null and cod_up ='
            + vartostrdef(DBLookupComboBoxUPDestino.KeyValue, '0');

          dsconspadrao.dataset.close;
          dsconspadrao.dataset.open;

          if dsconspadrao.dataset.IsEmpty then
          begin
            showmessage('Destino: ' + DBLookupComboBoxUPDestino.Text + ' não tem cela padrão! Transferência não pode ser realizada!');
            exit;
          end;

        end;
      end;

      {lANÇANDO A SAIDA DO INTERNO NO HISTÓRICO}
      DSHISTORICO_interno.DataSet.Append;
      DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
      DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
        DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
      DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsDateTime :=
        DsCadastro.DataSet.fieldbyname('data_saida').AsDateTime;

      if TabSheetDestino.TabVisible then
        DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString := 'Saída da Unidade Penal: ' +
          GLOBAL_NOME_UP + ', Destino: ' + DBLookupComboBoxDestino.Text +
          ', Motivo: ' +
          DBComboBoxMotivo.Text + ', Conforme ' + ComboBoxTipoDocumento.Text + ': ' + DBEditDocSaida.Text + '.'
      else
      begin
        if UpperCase(DBComboBoxMotivo.Text) = UpperCase('Transferência de Presidio') then
          //        if TabSheetUnidade.TabVisible then
        begin
          DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString := 'Saída da Unidade Penal: ' +
            GLOBAL_NOME_UP + ', Destino: ' + DBLookupComboBoxUPDestino.Text
            + ', Motivo: ' +
            DBComboBoxMotivo.Text + ', Conforme ' + ComboBoxTipoDocumento.Text + ': ' + DBEditDocSaida.Text + '.';
        end
        else
        begin
          DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString := 'Saída da Unidade Penal: ' +
            GLOBAL_NOME_UP + ', Destino: ' + DBLookupComboBoxUPDestino.Text
            + ', Motivo: ' +
            DBComboBoxMotivo.Text + ', Conforme ' + ComboBoxTipoDocumento.Text + ': ' + DBEditDocSaida.Text + '.';
        end;
      end;
      DSHISTORICO_interno.DataSet.fieldbyname('status').AsString := 'S';
      DSHISTORICO_interno.DataSet.fieldbyname('motivo_saida').AsString := DBComboBoxMotivo.Text;
      DSHISTORICO_interno.DataSet.fieldbyname('IDUP').AsInteger := DsCadastro.DataSet.fieldbyname('ID_UP').AsInteger;
      DSHISTORICO_interno.DataSet.Post;

      {Fazendo saida do interno na tabela historico_trabalho}
      SQLhistorico_trabalho.SQL.Text := 'select * from historico_trabalho where coalesce(data_saida,'' + '')='' + '' and id_interno =' +
        DsCadastro.DataSet.fieldbyname('id_interno').asstring;

      dshistorico_trabalho.DataSet.close;
      dshistorico_trabalho.DataSet.Open;

      if dshistorico_trabalho.DataSet.RecordCount > 0 then
      begin
        dshistorico_trabalho.DataSet.Edit;
        dshistorico_trabalho.DataSet.FieldByName('data_saida').AsString := formatdatetime('dd/mm/yyy', date);
        dshistorico_trabalho.DataSet.FieldByName('motivo_saida').AsString := 'Saida do Presídio';
        dshistorico_trabalho.DataSet.post;
      end;

      {Fazendo saida do interno na tabela historico_educacao}
      SQLhistorico_estudo.SQL.Text := 'select * from historico_estudo where coalesce(data_saida,'' + '')='' + '' and id_interno =' +
        DsCadastro.DataSet.fieldbyname('id_interno').asstring;

      dshistorico_estudo.DataSet.close;
      dshistorico_estudo.DataSet.Open;

      if dshistorico_estudo.DataSet.RecordCount > 0 then
      begin
        dshistorico_estudo.DataSet.Edit;
        dshistorico_estudo.DataSet.FieldByName('data_saida').AsString := formatdatetime('dd/mm/yyy', date);
        dshistorico_estudo.DataSet.FieldByName('motivo_saida').AsString := 'Saida do Presídio';
        dshistorico_estudo.DataSet.post;
        dshistorico_estudo.DataSet.Append;
        dshistorico_estudo.DataSet.fieldbyname('id_historico_estudo').AsInteger := 0;
        dshistorico_estudo.DataSet.fieldbyname('id_interno').AsString := DsCadastro.DataSet.fieldbyname('id_interno').asstring;
        dshistorico_estudo.DataSet.fieldbyname('data_historico').AsDateTime := date;
        dshistorico_estudo.DataSet.FieldByName('historico').AsString := 'Cancelamento de Matrícula. Saida do Presidio';
        dshistorico_estudo.DataSet.Post;
      end;

      //se é transferencia/saidas para outros destinos, não faz quando duplicidade de registros;
      if (UpperCase(DBComboBoxMotivo.Text) <> UpperCase('Duplicidade de Registros'))
        and (UpperCase(DBComboBoxMotivo.Text) <> UpperCase('Pedido Indeferido')) then
      begin

        DsTransferenciaInterno.DataSet.Append;
        DsTransferenciaInterno.DataSet.fieldbyname('ID_TRANSFERENCIA_INTERNO').AsInteger := DBGenerator('ID_TRANSFERENCIA_INTERNO');
        DsTransferenciaInterno.DataSet.fieldbyname('ID_ORIGEM').AsInteger := GLOBAL_ID_UP;
        DsTransferenciaInterno.DataSet.FieldByName('DATA').AsDateTime := Date;
        DsTransferenciaInterno.DataSet.FieldByName('MOTIVO_MOVIMENTACAO').AsString := UpperCase(DBComboBoxMotivo.Text);
        DsTransferenciaInterno.DataSet.FieldByName('TIPO_DOCUMENTO').AsString := ComboBoxTipoDocumento.Text;
        DsTransferenciaInterno.DataSet.FieldByName('LIBERADA').AsString := 'S';
        DsTransferenciaInterno.DataSet.FieldByName('RECEBIDA').AsString := 'S';
        DsTransferenciaInterno.DataSet.FieldByName('NUMERO_DOCUMENTO').AsString := DBEditDocSaida.Text;
        if UpperCase(DBComboBoxMotivo.Text) = UpperCase('Transferência de Presidio') then
        begin
          DsTransferenciaInterno.DataSet.FieldByName('TIPO_DESTINO').AsString := 'U';
          DsTransferenciaInterno.DataSet.FieldByName('ID_UP_DESTINO').AsInteger :=
            DBLookupComboBoxUPDestino.KeyValue;
        end
        else
        begin
          DsTransferenciaInterno.DataSet.FieldByName('TIPO_DESTINO').AsString := 'O';
          DsTransferenciaInterno.DataSet.FieldByName('ID_DESTINO').AsInteger :=
            DBLookupComboBoxDestino.KeyValue;
        end;
        DsTransferenciaInterno.DataSet.Post;

        Dsvinc_transferencia_interno.DataSet.Append;
        Dsvinc_transferencia_interno.DataSet.fieldbyname('ID_vinc_transferencia_interno').AsInteger := 0;
        Dsvinc_transferencia_interno.DataSet.fieldbyname('id_transferencia_interno').AsInteger :=
          DsTransferenciaInterno.DataSet.fieldbyname('ID_TRANSFERENCIA_INTERNO').AsInteger;
        Dsvinc_transferencia_interno.DataSet.fieldbyname('id_interno').AsInteger :=
          dscadastro.dataset.fieldbyname('id_interno').AsInteger;
        Dsvinc_transferencia_interno.DataSet.Post;

      end;

      if UpperCase(DBComboBoxMotivo.Text) = UpperCase('Transferência de Presidio') then
        //      if TabSheetUnidade.TabVisible then
      begin
        sSqlExecute := 'UPDATE INTERNO SET ' +
          'st=' + qs('A') +
          ',data_entrada=' + qs(formatdatetime('dd.mm.yyyy', DsCadastro.DataSet.fieldbyname('data_saida').AsDateTime)) +
          ',ci=' + qs(DBEditDocSaida.Text) +
          ',idpavilhao=' + dsconspadrao.DataSet.fieldbyname('id_pavilhao').AsString +
          ',idgaleria=' + dsconspadrao.DataSet.fieldbyname('id_galeria').AsString +
          ',idsolario=' + dsconspadrao.DataSet.fieldbyname('id_solario').AsString +
          ',idcela=' + dsconspadrao.DataSet.fieldbyname('id_cela').AsString +
          ',id_up=' + inttostr(DBLookupComboBoxUPDestino.KeyValue) +
          ',data_saida=null' +
          ',iddestino=null' +
          ',motivo_saida=null' +
          ',cisaida=null'
          + ' WHERE ID_INTERNO = ' + DsCadastro.DataSet.fieldbyname('id_interno').Asstring;

        DSHISTORICO_interno.DataSet.Append;
        DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
        DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
          DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
        DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsString := formatdatetime('dd/mm/yyy', DsCadastro.DataSet.fieldbyname('data_saida').AsDateTime);
        DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString := 'Entrada na Unidade Penal: ' +
          DBLookupComboBoxUPDestino.Text + ', Procedente: ' +
          GLOBAL_NOME_UP + ', Conforme ' + ComboBoxTipoDocumento.Text + ': ' + DBEditDocSaida.Text + '.';
        DSHISTORICO_interno.DataSet.fieldbyname('status').AsString := 'E';
        DSHISTORICO_interno.DataSet.fieldbyname('IDUP').AsInteger := DBLookupComboBoxUPDestino.KeyValue;
        DSHISTORICO_interno.DataSet.Post;

        {limpando os campos para saida do interno}
        DsCadastro.DataSet.fieldbyname('idcondicao_interno').AsString := '';
        DsCadastro.DataSet.fieldbyname('ci').AsString := '';
        DsCadastro.DataSet.fieldbyname('data_entrada').AsString := '';
        DsCadastro.DataSet.fieldbyname('id_procedencia').AsString := '';
        {limpando os campos trabalho para saida do interno}
        DsCadastro.DataSet.FieldByName('DOC_TRABALHO').asstring := '';
        DsCadastro.DataSet.FieldByName('DATA_SETOR').asstring := '';
        DsCadastro.DataSet.FieldByName('ID_FUNCAOINTERNO').asstring := '';
        DsCadastro.DataSet.FieldByName('ID_LOCAL_TRABALHO').asstring := '';
        DsCadastro.DataSet.FieldByName('IDSETOR_TRABALHO').asstring := '';
        DsCadastro.DataSet.FieldByName('OBSTRABALHO').asstring := '';
        {limpando os campos educacao para saida do interno}
        DsCadastro.DataSet.FieldByName('data_matricula').asstring := '';
        DsCadastro.DataSet.FieldByName('IDSERIEESTUDO').asstring := '';
        DsCadastro.DataSet.FieldByName('TURMA').asstring := '';
        DsCadastro.DataSet.FieldByName('deficiencia').asstring := '';
        DsCadastro.DataSet.FieldByName('PERIODO').asstring := '';
        DsCadastro.DataSet.FieldByName('OBSEDUCACAO').asstring := '';

        DsCadastro.DataSet.FieldByName('DATA_SAIDA').AsVariant := null;
        DsCadastro.DataSet.FieldByName('CISAIDA').AsVariant := null;
        MotivoSaida := DBComboBoxMotivo.Text;
        DsCadastro.DataSet.FieldByName('MOTIVO_SAIDA').AsVariant := null;
      end;

      SQLconspadrao.sql.text := 'select * from padrao where cod_up ='
        + qs(inttostr(global_id_up));
      dsconspadrao.dataset.close;
      dsconspadrao.dataset.open;

      //      showmessage(SQLconspadrao.sql.text);

    end; //if (dscadastro.dataset.fieldbyname('ST').asstring <> statusold) then

    {Salvando}
    try
      StatusBar1.Panels[1].Text := 'SALVANDO';
      Novo.Enabled := True;
      Editar.Enabled := True;
      Excluir.Enabled := True;
      Salvar.Enabled := False;
      Cancelar.Enabled := False;

      if DsCadastro.DataSet.State in [dsedit, dsinsert] then
        DsCadastro.DataSet.Post;

      if (dscadastro.dataset.fieldbyname('ST').asstring <> statusold) then
      begin
        if DSHISTORICO_interno.DataSet.State in [dsedit, dsinsert] then
          DSHISTORICO_interno.DataSet.Post;

        if DsDocumentos.DataSet.State in [dsedit, dsinsert] then
          DsDocumentos.DataSet.Post;

        if dshistorico_trabalho.DataSet.State in [dsedit, dsinsert] then
          DsDocumentos.DataSet.Post;

        if dshistorico_estudo.DataSet.State in [dsedit, dsinsert] then
          dshistorico_estudo.DataSet.Post;

        if Dsvinc_transferencia_interno.DataSet.State in [dsedit, dsinsert] then
          Dsvinc_transferencia_interno.DataSet.Post;

        if DsTransferenciaInterno.DataSet.State in [dsedit, dsinsert] then
          DsTransferenciaInterno.DataSet.Post;
      end;

      IniciaTransCadastro;

      iErro := TClientDataSet(DsCadastro.DataSet).ApplyUpdates(0);
      if (dscadastro.dataset.fieldbyname('ST').asstring <> statusold) then
      begin

        iErro := iErro + TClientDataSet(DSHISTORICO_interno.DataSet).ApplyUpdates(0);
        iErro := iErro + TClientDataSet(DsDocumentos.DataSet).ApplyUpdates(0);
        iErro := iErro + TClientDataSet(dshistorico_trabalho.DataSet).ApplyUpdates(0);
        iErro := iErro + TClientDataSet(dshistorico_estudo.DataSet).ApplyUpdates(0);
        iErro := iErro + TClientDataSet(DsTransferenciaInterno.DataSet).ApplyUpdates(0);
        iErro := iErro + TClientDataSet(Dsvinc_transferencia_interno.DataSet).ApplyUpdates(0);

        if UpperCase(MotivoSaida) = UpperCase('Transferência de Presidio') then
          //        if TabSheetUnidade.TabVisible then
        begin

          dm.SQLConnect.ExecuteDirect(sSqlExecute);
          MotivoSaida := '';
          iErro := iErro + TClientDataSet(DSHISTORICO_interno.DataSet).ApplyUpdates(0);

        end;

      end;

      if iErro = 0 then
      begin
        finalizaTransCadastro;
        DBGridConsulta.Enabled := True;
        ShowMessage('Registro Salvo com Sucesso!');
      end
      else
      begin
        CancelaTransCadastro;
        ShowMessage('Erro na Transação, não Salvou!');
      end;

      StatusBar1.Panels[1].Text := '...';
      DsCadastro.DataSet.Refresh;
    except
      ShowMessage('Não pode salvar com os dados digitados');
    end;
    CorNosCampos;
    PageControlModeloCadastro.Enabled := false;

    sMovimento := DsCadastro.DataSet.Fieldbyname('NOME_INTERNO').AsString;

    EditLocalizar.text := '';
    EditLocalizar.OnChange(nil);
    DsConsulta.DataSet.Close;
    DsConsulta.DataSet.Open;

    DsConsulta.DataSet.Locate('NOME_INTERNO', sMovimento, []);
  end
  else
  begin
    {edição/inserção do interno ativo}

    DsCadastro.DataSet.Fieldbyname('STATUS_ISOLAMENTO').AsString := '';
    DsCadastro.DataSet.Fieldbyname('DATA_ISOLAMENTO').AsString := '';

    if DBLookupComboBoxCela.KeyValue = -1 then
    begin
      PageControlDadosInterno.ActivePageIndex := 1;
      ShowMessage('Digite a Cela!');
      Exit;
    end;

    if ((dscadastro.dataset.state in [dsedit]) and (DBRadioGroupStatus.ItemIndex = 0)) then
    begin
      if (dscadastro.DataSet.fieldbyname('st').Asstring = statusold) then
      begin
        if idcela_old <> DsCadastro.DataSet.fieldbyname('idcela').AsString then
        begin

          if DBEditMotivoMudancaCela.text = '' then
          begin
            ShowMessage('Informe o Motivo da Mudança de Cela!');
            Exit;
          end;

          {if DBEditDocumentoMudanca.text = '' then
          begin
            ShowMessage('Informe o Documento da Mudança de Cela!');
            Exit;
          end; }

        end;
      end
      else
      begin
        //Limitando para criar novos internos somente na unidade CGICR
       { if GLOBAL_ID_UP <> 203 then
        begin
          ShowMessage('Ativação de cadastro somente através da unidade CGICR!');
          Exit;
        end;}
      end;
    end;

    DM.SqlExecute.SQL.Text := 'SELECT * FROM CELA WHERE ID_CELA = ' +
      inttostr(DBLookupComboBoxCela.KeyValue);

    DM.DsExecute.DataSet.Close;
    DM.DsExecute.DataSet.Open;

    LIMITE_POR_CELA := DM.DsExecute.DataSet.FieldByName('LIMITE_POR_CELA').AsInteger;

    if DM.DsExecute.DataSet.FieldByName('ISOLAMENTO').AsString = 'S' then
    begin
      FrmSituacaoDisciplinar := TFrmSituacaoDisciplinar.Create(Self);
      FrmSituacaoDisciplinar.ShowModal;

      if frmSituacaoDisciplinar.RadioGroup1.ItemIndex = 0 then
        disciplinar := '(1) SANCIONADO';

      if frmSituacaoDisciplinar.RadioGroup1.ItemIndex = 1 then
        disciplinar := '(2) SEGURO';

      if frmSituacaoDisciplinar.RadioGroup1.ItemIndex = 2 then
        disciplinar := '(3) OBSERVAÇÃO';

      DsCadastro.DataSet.Fieldbyname('DATA_ISOLAMENTO').AsString := frmSituacaoDisciplinar.MaskEdit1.Text;
      DsCadastro.DataSet.Fieldbyname('STATUS_ISOLAMENTO').AsString := disciplinar;

    end;

    if DM.DsExecute.DataSet.FieldByName('EM_MANUTENCAO').AsString = 'S' then
    begin
      PageControlDadosInterno.ActivePageIndex := 1;
      ShowMessage('Cela em manutenção!' + #10#13 + 'Motivo: ' + DM.DsExecute.DataSet.FieldByName('MOTIVO_MANUTENCAO').AsString);
      if MessageDlg('Deseja alojar o preso na cela em manutenção, continuar?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
      begin
        Exit;
      end;
    end;

    if LIMITE_POR_CELA > 0 then
    begin
      DM.SqlExecute.SQL.Text := 'SELECT COUNT(*) TOTAL FROM INTERNO WHERE st = ''A'' and nome_interno is not null and IDCELA = ' +
        inttostr(DBLookupComboBoxCela.KeyValue);
      if DsCadastro.DataSet.State in [dsedit] then
        DM.SqlExecute.SQL.Text := 'SELECT COUNT(*) TOTAL FROM INTERNO WHERE id_interno<>' + DsCadastro.DataSet.FieldByName('id_interno').Asstring
          + ' and st = ''A'' and nome_interno is not null and IDCELA = ' +
          inttostr(DBLookupComboBoxCela.KeyValue);

      DM.DsExecute.DataSet.Close;
      DM.DsExecute.DataSet.Open;
      if DM.DsExecute.DataSet.FieldByName('TOTAL').AsInteger >= LIMITE_POR_CELA then
      begin
        PageControlDadosInterno.ActivePageIndex := 1;
        ShowMessage('Favor Informar Outra Cela!' + #10#13 + 'Cela com ' + IntToStr(LIMITE_POR_CELA) + ' Preso(a).');
        Exit;
      end;
    end;

    if (DsCadastro.DataSet.state in [dsinsert]) or (dscadastro.DataSet.fieldbyname('st').Asstring <> statusold) then
    begin


      DSHISTORICO_interno.DataSet.Append;
      DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
      DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
        DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
      DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsDateTime :=
        DsCadastro.DataSet.fieldbyname('data_ENTRADA').AsDateTime;
      DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString := 'Entrada na Unidade Penal: ' +
        GLOBAL_NOME_UP + ', Procedente: ' +
        DBLookupComboBoxID_PROCEDENCIA.Text + ', Conforme OF/CI ' + DBEdit4.Text + '.';
      DSHISTORICO_interno.DataSet.fieldbyname('status').AsString := 'E';
      DSHISTORICO_interno.DataSet.fieldbyname('idprocedencia').AsInteger := DBLookupComboBoxID_PROCEDENCIA.KeyValue;
      DSHISTORICO_interno.DataSet.fieldbyname('IDUP').AsInteger := DsCadastro.DataSet.fieldbyname('ID_UP').AsInteger;
      DSHISTORICO_interno.DataSet.Post;

      {limpando campos da saida, quando reativar cadastro}
      DsCadastro.DataSet.fieldbyname('data_saida').AsString := '';
      DsCadastro.DataSet.fieldbyname('motivo_saida').AsString := '';
      DsCadastro.DataSet.fieldbyname('cisaida').AsString := '';
      DsCadastro.DataSet.fieldbyname('iddestino').AsString := '';
    end;

    if (DsCadastro.DataSet.state in [dsedit]) and
      (dscadastro.DataSet.fieldbyname('em_transito').Asstring <> em_transito_old) then
    begin
      DSHISTORICO_interno.DataSet.Append;
      DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
      DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
        DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
      DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsDateTime := Date;

      if dscadastro.DataSet.fieldbyname('em_transito').Asstring = 'S' then
      begin
        DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString := 'Saiu em transito: ' +
          GLOBAL_NOME_UP + ', Destino/Motivo: ' + InputBox('Interno em Trânsito', 'Informe o destino/motivo do trânsito do Interno:', '');

      end
      else
      begin
        DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString := 'Retorno do transito: ' +
          GLOBAL_NOME_UP + ', Origem: ' + InputBox('Interno Retornando do Trânsito', 'Informe o local onde o Interno estava:', '');

      end;

      DSHISTORICO_interno.DataSet.fieldbyname('status').AsString := 'T';
      //DSHISTORICO_interno.DataSet.fieldbyname('idprocedencia').AsInteger := DBLookupComboBoxID_PROCEDENCIA.KeyValue;
      DSHISTORICO_interno.DataSet.fieldbyname('IDUP').AsInteger := DsCadastro.DataSet.fieldbyname('ID_UP').AsInteger;
      DSHISTORICO_interno.DataSet.Post;
    end;

    if ((dscadastro.dataset.state in [dsedit]) and (DBRadioGroupStatus.ItemIndex = 0)) then
    begin
      if (dscadastro.DataSet.fieldbyname('st').Asstring = statusold) then
      begin
        if idcela_old <> DsCadastro.DataSet.fieldbyname('idcela').AsString then
        begin

          {LANÇANDO A MUDANÇA}

          DsMudancaCela.DataSet.Append;
          DsMudancaCela.DataSet.fieldbyname('ID_MUDANCA_CELA').AsInteger := DBGenerator('ID_MUDANCA_CELA');
          DsMudancaCela.DataSet.fieldbyname('ID_UP').AsInteger := GLOBAL_ID_UP;
          DsMudancaCela.DataSet.FieldByName('DATA').AsDateTime := DsCadastro.dataset.fieldbyname('DATA_SAIDA').AsDateTime;
          DsMudancaCela.DataSet.FieldByName('ID_FUNCIONARIO').AsInteger := GLOBAL_ID_FUNCIONARIO;
          DsMudancaCela.DataSet.FieldByName('MOTIVO_MOVIMENTACAO').AsString := DBEditMotivoMudancaCela.Text;
          DsMudancaCela.DataSet.FieldByName('CONFIRMADA').AsString := 'S';
          DsMudancaCela.DataSet.Post;

          DsVinc_Mudanca_Cela.DataSet.Append;
          DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_VINC_MUDANCA_CELA').AsInteger := 0;

          DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_MUDANCA_CELA').AsInteger :=
            DsMudancaCela.DataSet.fieldbyname('ID_MUDANCA_CELA').AsInteger;

          DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_INTERNO').AsInteger :=
            DsCadastro.DataSet.fieldbyname('ID_INTERNO').AsInteger;

          DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_PAVILHAO_ANTES').AsString :=
            idpavilhao_old;
          DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_GALERIA_ANTES').AsString :=
            idgaleria_old;
          DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_SOLARIO_ANTES').AsString :=
            idsolario_old;
          DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_CELA_ANTES').AsString :=
            idcela_old;

          DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_PAVILHAO_NOVO').AsInteger :=
            DBLookupComboBoxPavilhao.KeyValue;
          DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_GALERIA_NOVO').AsInteger :=
            DBLookupComboBoxGaleria.KeyValue;
          DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_SOLARIO_NOVO').AsInteger :=
            DBLookupComboBoxSolario.KeyValue;
          DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_CELA_NOVO').AsInteger :=
            DBLookupComboBoxCela.KeyValue;

          DsVinc_Mudanca_Cela.DataSet.Post;

          {LANÇANDO A MUDANÇA DE CELA DO INTERNO NO HISTÓRICO}
          DSHISTORICO_interno.DataSet.Append;
          DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
          DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
            DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
          DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsDateTime := Date;
          DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString := 'Mudança de Cela: ' +
            GLOBAL_NOME_UP + ', Motivo: ' +
            DBEditMotivoMudancaCela.Text +
            ', Origem: ' +
            pavilhao_old + '/' +
            galeria_old + '/' +
            solario_old + '/' +
            cela_old +
            ', Destino: ' +
            DBLookupComboBoxPavilhao.Text + '/' +
            DBLookupComboBoxGaleria.Text + '/' +
            DBLookupComboBoxSolario.Text + '/' +
            DBLookupComboBoxCela.Text +
            ', Conforme Documento: ' + DBEditDocumentoMudanca.Text + '.';

          DSHISTORICO_interno.DataSet.fieldbyname('status').AsString := 'M';
          DSHISTORICO_interno.DataSet.fieldbyname('motivo_saida').AsString := 'Mudança de Cela';
          DSHISTORICO_interno.DataSet.fieldbyname('IDUP').AsInteger := GLOBAL_ID_UP;
          DSHISTORICO_interno.DataSet.Post;
        end;
      end;
    end;

    {Salvando}
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

      if DsDocumentos.DataSet.State in [dsedit, dsinsert] then
        DsDocumentos.DataSet.Post;

      if DsMudancaCela.DataSet.State in [dsedit, dsinsert] then
        DsMudancaCela.DataSet.Post;

      if DsVinc_Mudanca_Cela.DataSet.State in [dsedit, dsinsert] then
        DsVinc_Mudanca_Cela.DataSet.Post;

      IniciaTransCadastro;

      iErro := TClientDataSet(DsCadastro.DataSet).ApplyUpdates(0);
      iErro := iErro + TClientDataSet(DSHISTORICO_interno.DataSet).ApplyUpdates(0);
      iErro := iErro + TClientDataSet(DsDocumentos.DataSet).ApplyUpdates(0);
      iErro := iErro + TClientDataSet(DsMudancaCela.DataSet).ApplyUpdates(0);
      iErro := iErro + TClientDataSet(DsVinc_Mudanca_Cela.DataSet).ApplyUpdates(0);

      if iErro = 0 then
      begin
        finalizaTransCadastro;
        DBGridConsulta.Enabled := True;
        ShowMessage('Registro Salvo com Sucesso!');
      end
      else
      begin
        CancelaTransCadastro;
        ShowMessage('Erro na Transação, não Salvou!');
      end;

      StatusBar1.Panels[1].Text := '...';
      DsCadastro.DataSet.Refresh;
    except
      ShowMessage('Não pode salvar com os dados digitados');
    end;
    CorNosCampos;
    PageControlModeloCadastro.Enabled := false;

    sMovimento := DsCadastro.DataSet.Fieldbyname('NOME_INTERNO').AsString;

    EditLocalizar.text := '';
    EditLocalizar.OnChange(nil);

    DsConsulta.DataSet.Close;
    DsConsulta.DataSet.Open;
    DsConsulta.DataSet.Locate('NOME_INTERNO', sMovimento, []);

  end;

end;

procedure TFrmMovimentoInternos.NovoClick(Sender: TObject);
var
  sNovoNome: string;
begin

  //Limitando para criar novos internos somente na unidade CGICR
  {if GLOBAL_ID_UP <> 203 then
  begin
    ShowMessage('Criação de novo cadastro somente através da unidade CGICR!');
    Exit;
  end;
  }
  sNovoNome := EditLocalizar.text;
  EditLocalizar.text := '';
  EditLocalizar.OnChange(nil);

  inherited;

  //teste para verificar se o campo solicitante da vaga está vazio, se já tiver preenchido só poderá
  //ser alterado por um administrador do sistema
  if ((DsCadastro.DataSet.FieldByName('id_solicitante_vaga').asString = '')
    or (NOME_PERFILUSUARIO_LOGADO = 'ADMINISTRADOR')) then
    DBLookupComboBoxSolicitanteVaga.Enabled := true
  else
    DBLookupComboBoxSolicitanteVaga.Enabled := false;

  dm.SqlExecute.SQL.Text := 'select gen_id (cod_up, 0) || gen_id (ID_INTERNO, 1) as ID from rdb$database';
  dm.DsExecute.DataSet.Close;
  dm.DsExecute.DataSet.Open;

  DsCadastro.DataSet.fieldbyname('ID_INTERNO').AsInteger :=
    dm.DsExecute.DataSet.FieldByName('ID').AsInteger;

  DsCadastro.DataSet.fieldbyname('SEXO').AsString :=
    DM.DsUP.DataSet.FieldByName('GENERO').AsString;

  DsCadastro.DataSet.Fieldbyname('NOME_INTERNO').AsString := sNovoNome;

  dm.DsExecute.DataSet.Close;

  {Atribuir RGI automático}
 { if GLOBAL_RGI = 'S' then
  begin
    //selecionar o generator do RGI
    dm.SqlExecute.SQL.Text := 'select gen_id (cod_up, 0) || gen_id (RGI, 1) as ID from rdb$database';
    dm.DsExecute.DataSet.Close;
    dm.DsExecute.DataSet.Open;
    //atribuir valor do generator ao campo rgi
    DsCadastro.DataSet.fieldbyname('RGI').AsInteger :=
      dm.DsExecute.DataSet.FieldByName('ID').AsInteger;
  end;}

  DsCadastro.DataSet.FieldByName('DATA_ENTRADA').AsDateTime := Date;
  DsCadastro.DataSet.FieldByName('ST').AsString := 'A';
  dbeditnome.setfocus;

  SQLconspadrao.sql.text := 'select * from padrao where cod_up ='
    + qs(inttostr(global_id_up));
  dsconspadrao.dataset.close;
  dsconspadrao.dataset.open;

  DBLookupComboBoxPavilhao.KeyValue := dsconspadrao.DataSet.fieldbyname('id_pavilhao').AsVariant;
  DsCadastro.DataSet.FieldByName('idpavilhao').AsInteger := dsconspadrao.DataSet.fieldbyname('id_pavilhao').AsVariant;

  DBLookupComboBoxGaleria.KeyValue := dsconspadrao.DataSet.fieldbyname('id_galeria').AsVariant;
  DsCadastro.DataSet.FieldByName('idgaleria').AsInteger := dsconspadrao.DataSet.fieldbyname('id_galeria').AsVariant;

  DBLookupComboBoxSolario.KeyValue := dsconspadrao.DataSet.fieldbyname('id_solario').AsVariant;
  DsCadastro.DataSet.FieldByName('idsolario').AsInteger := dsconspadrao.DataSet.fieldbyname('id_solario').AsVariant;

  DBLookupComboBoxCela.KeyValue := dsconspadrao.DataSet.fieldbyname('id_cela').AsVariant;
  DsCadastro.DataSet.FieldByName('idcela').AsInteger := dsconspadrao.DataSet.fieldbyname('id_cela').AsVariant;

  DBEditDataMudanca.Enabled := false;
  DBEditDocumentoMudanca.Enabled := false;
  DBEditMotivoMudancaCela.Enabled := false;

end;

procedure TFrmMovimentoInternos.PageControlConsultaChange(Sender: TObject);
begin
  inherited;
  DsMovimento.DataSet.Close;
  DsMovimentacaoExterna.DataSet.Close;
  if DsCadastro.DataSet.Fieldbyname('id_interno').AsString = '' then
    exit;

  if PageControlConsulta.ActivePage = TabSheetMovimentacao then
  begin
    SqlMovimento.SQL.Text :=
      'select m.id_mov_interno, m.id_interno, m.id_unidade_penal, ' +
      ' unidade_penal.sigla, ' +
      ' pavilhao.pavilhao, ' +
      ' galeria.galeria,' +
      ' solario.solario,' +
      ' cela.cela,' +
      ' m.tipo_movimentacao, m.data_movimentacao, m.hora_movimentacao, ' +
      ' m.id_funcionario, ' +
      ' p.proedencia AS procedencia, ' +
      ' d.destino ' +
      ' from mov_interno m ' +
      ' left join procedencia p on (p.id_procedencia=m.id_procedencia) ' +
      ' left join DESTINO d on (d.id_destino=m.id_destino) ' +
      ' left join cela on (cela.id_cela = m.idcela)' +
      ' left join galeria on (galeria.id_galeria = m.idgaleria)' +
      ' left join solario on (solario.id_solario = m.idsolario)' +
      ' left join pavilhao on (m.idpavilhao = pavilhao.id_pavilhao)' +
      ' left join unidade_penal on (pavilhao.id_up = unidade_penal.id_up)' +
      ' WHERE m.idpavilhao is not null and m.ID_INTERNO=' + DsCadastro.DataSet.Fieldbyname('id_interno').AsString +
      ' ORDER BY m.data_movimentacao desc, m.hora_movimentacao DESC';

    DsMovimento.DataSet.Open;

  end;

  if PageControlConsulta.ActivePage = TabSheetMovimentacaoExterna then
  begin
    SqlMovimentacaoExterna.parambyname('ID_INTERNO').asinteger :=
      DsCadastro.DataSet.Fieldbyname('id_interno').AsInteger;
    DsMovimentacaoExterna.DataSet.Close;
    DsMovimentacaoExterna.DataSet.Open;
  end;

  if PageControlConsulta.ActivePage = TabSheetMudancaCela then
  begin
    SqlList_Mudanca_Cela.parambyname('ID_INTERNO').asinteger :=
      DsCadastro.DataSet.Fieldbyname('id_interno').AsInteger;
    DsList_Mudanca_Cela.DataSet.Close;
    DsList_Mudanca_Cela.DataSet.Open;
  end;

end;

procedure TFrmMovimentoInternos.RadioGroupStatusClick(Sender: TObject);
var
  sNomeInterno: string;
begin
  inherited;

  SqlConsulta.sql.text := SqlConsultaBackup.sql.text + ' and interno.id_up=' + inttostr(GLOBAL_ID_UP) + ' order by interno.nome_interno ';
  //  if RadioGroupStatus.ItemIndex = 1 then
  //  begin
  //    sNomeInterno := '';
  //    while Length(trim(sNomeInterno)) < 3 do
  //      sNomeInterno := InputBox('Digite TRES letras do nome do interno.', 'Minimo de TRES letras.', '');
  //
  //    SqlConsulta.sql.text := SqlConsultaBackup.sql.text + ' and interno.st=''I'' and nome_interno like ' + qs(UpperCase(sNomeInterno) + '%') +
  //      ' order by interno.nome_interno';
  //
  //  end;

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

  EditLocalizar.Text := UpperCase(sNomeInterno);
  EditLocalizarChange(nil);
  if EditLocalizar.CanFocus then
    EditLocalizar.SetFocus;

  {if RadioGroupStatus.ItemIndex = 1 then
    PageControlDadosInterno.ActivePageIndex := 3
  else
    PageControlDadosInterno.ActivePageIndex := 0;}
end;

procedure TFrmMovimentoInternos.ImagemonitoramentoClick(Sender: TObject);
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

procedure TFrmMovimentoInternos.DBComboBoxMotivoClick(Sender: TObject);
begin
  inherited;
  TabSheetDestino.TabVisible := false;
  TabSheetUnidade.TabVisible := false;
  if UpperCase(DBComboBoxMotivo.Text) = UpperCase('Transferência de Presidio') then
  begin
    TabSheetDestino.TabVisible := false;
    TabSheetUnidade.TabVisible := true;
  end
  else
  begin
    if (UpperCase(DBComboBoxMotivo.Text) <> UpperCase('Duplicidade de Registros'))
      and (UpperCase(DBComboBoxMotivo.Text) <> UpperCase('Pedido Indeferido')) then
    begin
      TabSheetDestino.TabVisible := true;
      TabSheetUnidade.TabVisible := false;
    end;
  end;

end;

procedure TFrmMovimentoInternos.EditarClick(Sender: TObject);
begin
  inherited;

  SQLconspadrao.sql.text := 'select * from padrao where cod_up ='
    + qs(inttostr(global_id_up));
  dsconspadrao.dataset.close;
  dsconspadrao.dataset.open;

  statusold := dscadastro.DataSet.fieldbyname('st').Asstring;

  em_transito_old := dscadastro.DataSet.fieldbyname('em_transito').Asstring;

  idcela_old := dscadastro.DataSet.fieldbyname('idcela').Asstring;
  idsolario_old := dscadastro.DataSet.fieldbyname('idsolario').Asstring;
  idgaleria_old := dscadastro.DataSet.fieldbyname('idgaleria').Asstring;
  idpavilhao_old := dscadastro.DataSet.fieldbyname('idpavilhao').Asstring;

  cela_old := DBLookupComboBoxCela.Text;
  solario_old := DBLookupComboBoxSolario.Text;
  galeria_old := DBLookupComboBoxGaleria.Text;
  pavilhao_old := DBLookupComboBoxPavilhao.Text;

  PageControlDadosInterno.ActivePageIndex := 0;

  DBEditDataMudanca.Enabled := true;
  DBEditDocumentoMudanca.Enabled := true;
  DBEditMotivoMudancaCela.Enabled := true;

  //teste para verificar se o campo solicitante da vaga está vazio, se já tiver preenchido só poderá
  //ser alterado por um administrador do sistema
  if ((DsCadastro.DataSet.FieldByName('id_solicitante_vaga').asString = '')
    or (NOME_PERFILUSUARIO_LOGADO = 'ADMINISTRADOR')) then
    DBLookupComboBoxSolicitanteVaga.Enabled := true
  else
    DBLookupComboBoxSolicitanteVaga.Enabled := false;

end;

procedure TFrmMovimentoInternos.SpeedButton1Click(Sender: TObject);
begin
  inherited;

  if (PERMISSAO_CADASTRO = '') or (PERMISSAO_CADASTRO = 'R') then
  begin
    ShowMessage('Você não possui Permissão de Acesso ao menu de Cadastros!');
    Exit;
  end;

  FrmCadastroprocedencia := TFrmCadastroProcedencia.Create(Application);
  FrmCadastroProcedencia.ShowModal;
  FreeAndNil(FrmCadastroProcedencia);

  DM.DsProcedencia.DataSet.Close;
  DM.DsProcedencia.DataSet.OPEN;
end;

procedure TFrmMovimentoInternos.SpeedButton2Click(Sender: TObject);
begin
  inherited;

  if (PERMISSAO_CADASTRO = '') or (PERMISSAO_CADASTRO = 'R') then
  begin
    ShowMessage('Você não possui Permissão de Acesso ao menu de Cadastros!');
    Exit;
  end;

  FrmCadastrodestino := TFrmCadastrodestino.Create(Application);
  FrmCadastrodestino.ShowModal;
  FreeAndNil(FrmCadastrodestino);

  DM.dsdestino.DataSet.Close;
  DM.dsdestino.DataSet.OPEN;

end;

procedure TFrmMovimentoInternos.EditLocalizarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if DsConsulta.DataSet.IsEmpty then
    Exit;

  if not DsConsulta.DataSet.Active then
    Exit;

  if key = VK_DOWN then
  begin
    if not DsConsulta.DataSet.Eof then
      DsConsulta.DataSet.Next;
  end;

  if key = VK_UP then
  begin
    if not DsConsulta.DataSet.Bof then
      DsConsulta.DataSet.Last;
  end;

end;

procedure TFrmMovimentoInternos.CdsConsultaFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  {
    if Trim(EditLocalizar.text) <> '' then
    begin
      Accept := ContemValor(SomDex(PChar(EditLocalizar.text)), SomDex(PChar(DataSet.FieldByName('nome_interno').AsString)));
      if not Accept then
      begin
        Accept := ContemValor(EditLocalizar.text, DataSet.FieldByName('nome_interno').AsString);
      end;

      if not Accept then
      begin
        Accept := ContemValor(EditLocalizar.text, DataSet.FieldByName('nome_interno').AsString);
      end;

    end;
    }
end;

procedure TFrmMovimentoInternos.CdsConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('nome_fonetica').AsString := SomDex(PChar(DataSet.FieldByName('nome_interno').AsString));

end;

procedure TFrmMovimentoInternos.CancelarClick(Sender: TObject);
begin
  if EditLocalizar.CanFocus then
    EditLocalizar.SetFocus;
  inherited;

end;

procedure TFrmMovimentoInternos.DBRadioGroupStatusChange(Sender: TObject);
begin
  inherited;

  //Ao inativar verifica se o usuário tem Permissão para fazer Transferências.
  if DBRadioGroupStatus.ItemIndex = 1 then
  begin
    if DsCadastro.DataSet.state in [dsedit, dsinsert] then
    begin
      if statusold = 'A' then
      begin
        if not ContemValor('I', PERMISSAO_TRANSFERENCIAINTERNO) then
        begin
          ShowMessage('Você não tem permissão para Saída/Transferência de Internos!');
          DBRadioGroupStatus.ItemIndex := 0;
          Exit;
        end;
      end;
    end;
  end;

  if DBRadioGroupStatus.ItemIndex = 0 then
  begin

    if statusold = 'I' then
    begin
      if DsCadastro.DataSet.state in [dsedit, dsinsert] then
      begin
        {limpando os campos para saida do interno}
        DsCadastro.DataSet.fieldbyname('idcondicao_interno').AsString := '';
        DsCadastro.DataSet.fieldbyname('ci').AsString := '';
        DsCadastro.DataSet.fieldbyname('data_entrada').AsString := '';
        DsCadastro.DataSet.fieldbyname('id_procedencia').AsString := '';
        {limpando os campos trabalho para saida do interno}
        DsCadastro.DataSet.FieldByName('DOC_TRABALHO').asstring := '';
        DsCadastro.DataSet.FieldByName('DATA_SETOR').asstring := '';
        DsCadastro.DataSet.FieldByName('ID_FUNCAOINTERNO').asstring := '';
        DsCadastro.DataSet.FieldByName('ID_LOCAL_TRABALHO').asstring := '';
        DsCadastro.DataSet.FieldByName('IDSETOR_TRABALHO').asstring := '';
        DsCadastro.DataSet.FieldByName('OBSTRABALHO').asstring := '';
        {limpando os campos educacao para saida do interno}
        DsCadastro.DataSet.FieldByName('data_matricula').asstring := '';
        DsCadastro.DataSet.FieldByName('IDSERIEESTUDO').asstring := '';
        DsCadastro.DataSet.FieldByName('TURMA').asstring := '';
        DsCadastro.DataSet.FieldByName('deficiencia').asstring := '';
        DsCadastro.DataSet.FieldByName('PERIODO').asstring := '';
        DsCadastro.DataSet.FieldByName('OBSEDUCACAO').asstring := '';

        DsCadastro.DataSet.FieldByName('DATA_SAIDA').AsVariant := null;
        DsCadastro.DataSet.FieldByName('CISAIDA').AsVariant := null;
        DsCadastro.DataSet.FieldByName('MOTIVO_SAIDA').AsVariant := null;

        SQLconspadrao.sql.text := 'select * from padrao where cod_up ='
          + qs(inttostr(global_id_up));
        dsconspadrao.dataset.close;
        dsconspadrao.dataset.open;

        DBLookupComboBoxPavilhao.KeyValue := dsconspadrao.DataSet.fieldbyname('id_pavilhao').AsVariant;
        DsCadastro.DataSet.FieldByName('idpavilhao').AsInteger := dsconspadrao.DataSet.fieldbyname('id_pavilhao').AsVariant;

        DBLookupComboBoxGaleria.KeyValue := dsconspadrao.DataSet.fieldbyname('id_galeria').AsVariant;
        DsCadastro.DataSet.FieldByName('idgaleria').AsInteger := dsconspadrao.DataSet.fieldbyname('id_galeria').AsVariant;

        DBLookupComboBoxSolario.KeyValue := dsconspadrao.DataSet.fieldbyname('id_solario').AsVariant;
        DsCadastro.DataSet.FieldByName('idsolario').AsInteger := dsconspadrao.DataSet.fieldbyname('id_solario').AsVariant;

        DBLookupComboBoxCela.KeyValue := dsconspadrao.DataSet.fieldbyname('id_cela').AsVariant;
        DsCadastro.DataSet.FieldByName('idcela').AsInteger := dsconspadrao.DataSet.fieldbyname('id_cela').AsVariant;

      end;
    end;

    if datasaida.Field.DataSet.State in [dsedit, dsinsert] then
    begin
      datasaida.Field.AsVariant := null;
      datasaida.MaxDate := date;
    end;
    if datasaida.Field.DataSet.State in [dsedit, dsinsert] then
    begin
      datasaida.Field.AsVariant := null;
      datasaida.MaxDate := date;
    end;
  end;

  if DBRadioGroupStatus.ItemIndex = 1 then
  begin
    if datasaida.Field.DataSet.State in [dsedit, dsinsert] then
    begin
      datasaida.Field.AsDateTime := date;
      datasaida.MaxDate := date;
    end;
  end;

  if DsCadastro.DataSet.state in [dsedit, dsinsert] then
  begin
    if DsCadastro.DataSet.FieldByName('idpavilhao').AsInteger <= 0 then
    begin

      SQLconspadrao.sql.text := 'select * from padrao where cod_up ='
        + qs(inttostr(global_id_up));
      dsconspadrao.dataset.close;
      dsconspadrao.dataset.open;

      DBLookupComboBoxPavilhao.KeyValue := dsconspadrao.DataSet.fieldbyname('id_pavilhao').AsVariant;
      DsCadastro.DataSet.FieldByName('idpavilhao').AsInteger := dsconspadrao.DataSet.fieldbyname('id_pavilhao').AsVariant;

      DBLookupComboBoxGaleria.KeyValue := dsconspadrao.DataSet.fieldbyname('id_galeria').AsVariant;
      DsCadastro.DataSet.FieldByName('idgaleria').AsInteger := dsconspadrao.DataSet.fieldbyname('id_galeria').AsVariant;

      DBLookupComboBoxSolario.KeyValue := dsconspadrao.DataSet.fieldbyname('id_solario').AsVariant;
      DsCadastro.DataSet.FieldByName('idsolario').AsInteger := dsconspadrao.DataSet.fieldbyname('id_solario').AsVariant;

      DBLookupComboBoxCela.KeyValue := dsconspadrao.DataSet.fieldbyname('id_cela').AsVariant;
      DsCadastro.DataSet.FieldByName('idcela').AsInteger := dsconspadrao.DataSet.fieldbyname('id_cela').AsVariant;

    end;
  end;

end;

procedure TFrmMovimentoInternos.BtnIncluirDocDigitalizadoClick(
  Sender: TObject);
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
          SalvarBlobDatabase(DsDocumentos, 'ARQUIVO', OpenDialogDoc.FileName);
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

procedure TFrmMovimentoInternos.BtnVisuzalizarDocDigitalizadorClick(
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

  if DsCadastro.DataSet.State in [dsinsert] then
  begin
    showmessage('Não pode visualizar antes de salvar dados do interno.');
    exit;
  end;

  Dir := GLOBAL_MEUS_DOCUMENTOS + '\view\' + IntToStr(GLOBAL_ID_FUNCIONARIO) + '\';

  if not DirectoryExists(Dir) then
    ForceDirectories(Dir);

  nome_arquivo := Dir + DsDocumentos.DataSet.FieldByName('DESCRICAO').AsString;

  (DsDocumentos.DataSet.FieldByName('ARQUIVO') as TBlobField).SaveToFile(nome_arquivo);
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

procedure TFrmMovimentoInternos.CdsDocumentosAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  DsDocumentos.DataSet.fieldbyname('IDDOCUMENTOS_INCLUSAO').AsInteger := DBGenerator('IDDOCUMENTOS_PROCESSO');
  DsDocumentos.DataSet.fieldbyname('ID_INTERNO').AsInteger :=
    DsCadastro.DataSet.fieldbyname('ID_INTERNO').AsInteger;
  DsDocumentos.DataSet.fieldbyname('DATA').AsDateTime := Date;
  DsDocumentos.DataSet.fieldbyname('ID_FUNCIONARIO').AsInteger :=
    GLOBAL_ID_FUNCIONARIO;

  if OpenDialogDoc.Execute then
  begin
    DsDocumentos.DataSet.FieldByName('DESCRICAO').AsString := ExtractFileName(OpenDialogDoc.FileName);
    DsDocumentos.DataSet.fieldbyname('HISTORICO').AsString := InputBox('Informe um histórico', 'Digite um breve histórico.', '');
    try
      Self.Enabled := false;
      SalvarBlobDatabase(DsDocumentos, 'ARQUIVO', OpenDialogDoc.FileName);
      DsDocumentos.DataSet.Post;
    except
    end;
    Self.Enabled := true;
  end;

end;

procedure TFrmMovimentoInternos.DBGrid3CellClick(Column: TColumn);
begin
  inherited;
  BtnVisuzalizarDocDigitalizadorClick(nil);

end;

procedure TFrmMovimentoInternos.ToolButtonInternoClick(Sender: TObject);
begin
  inherited;
  if not (dscadastro.DataSet.State in [dsedit, dsinsert]) then
  begin
    if not (dscadastro.DataSet.IsEmpty) then
    begin
      if (PERMISSAO_CADASTRO = '') or (PERMISSAO_CADASTRO = 'R') then
      begin
        ShowMessage('Você não possui permissão para acessar o Cadastro de Internos!');
        Exit;
      end;

      FrmCadastroInternos := TFrmCadastroInternos.Create(Application);
      FrmCadastroInternos.ID_INTERNO := DsCadastro.Dataset.FieldByname('ID_INTERNO').AsInteger;
      FrmCadastroInternos.ShowModal;
      freeandnil(FrmCadastroInternos);
    end;
  end
  else
  begin
    Showmessage('Salve o registro.');
  end;

end;

procedure TFrmMovimentoInternos.ToolButtonProcessosClick(Sender: TObject);
begin
  inherited;
  if not (dscadastro.DataSet.State in [dsedit, dsinsert]) then
  begin
    if not (dscadastro.DataSet.IsEmpty) then
    begin
      if (PERMISSAO_PROCESSOCONDENACAO = '') or (PERMISSAO_PROCESSOCONDENACAO = 'R') then
      begin

        ShowMessage('Você não possui permissão para acessar o cadastro de Inquéritos/Processos/Condenações!');

        Exit;
      end;

      FrmCadastroProcesso := TFrmCadastroProcesso.Create(Application);
      FrmCadastroProcesso.ID_INTERNO := DsCadastro.Dataset.FieldByname('ID_INTERNO').AsInteger;
      FrmCadastroProcesso.ShowModal;
      freeandnil(FrmCadastroProcesso);
    end;
  end
  else
  begin
    Showmessage('Salve o registro.');
  end;
end;

procedure TFrmMovimentoInternos.ToolButtonDisciplinaClick(Sender: TObject);
begin
  inherited;
  if not (dscadastro.DataSet.State in [dsedit, dsinsert]) then
  begin
    if not (dscadastro.DataSet.IsEmpty) then
    begin
      if (PERMISSAO_DISCIPLINA = '') or (PERMISSAO_DISCIPLINA = 'R') then
      begin
        ShowMessage('Não Há Permissão Para Acesso em ' + TToolButton(Sender).Caption);
        Exit;
      end;

      FrmCadastroInternoDisciplina := TFrmCadastroInternoDisciplina.Create(Application);
      FrmCadastroInternoDisciplina.ID_INTERNO := DsCadastro.Dataset.FieldByname('ID_INTERNO').AsInteger;
      FrmCadastroInternoDisciplina.ShowModal;
      FreeAndNil(FrmCadastroInternoDisciplina);
    end;
  end
  else
  begin
    Showmessage('Salve o registro.');
  end;
end;

procedure TFrmMovimentoInternos.ToolButtonProcedDFClick(Sender: TObject);
begin
  inherited;
  FrmConsultaProced := TFrmConsultaProced.Create(Application);
  FrmConsultaProced.EditNome.Text := DsCadastro.Dataset.FieldByname('NOME_INTERNO').AsString;
  FrmConsultaProced.EditMae.Text := DsCadastro.Dataset.FieldByname('MAE').AsString;
  FrmConsultaProced.EditDataNascimento.Text := DsCadastro.Dataset.FieldByname('DATA_NASCIMENTO').AsString;
  FrmConsultaProced.ShowModal;
  FreeAndNil(FrmConsultaProced);
end;

procedure TFrmMovimentoInternos.DBLookupComboBoxPavilhaoClick(
  Sender: TObject);
begin
  inherited;
  DBLookupComboBoxGaleria.KeyValue := null;
  DBLookupComboBoxSolario.KeyValue := null;
  DBLookupComboBoxCela.KeyValue := null;

end;

procedure TFrmMovimentoInternos.DBLookupComboBoxGaleriaClick(
  Sender: TObject);
begin
  inherited;
  DBLookupComboBoxSolario.KeyValue := null;
  DBLookupComboBoxCela.KeyValue := null;

end;

procedure TFrmMovimentoInternos.DBLookupComboBoxSolarioClick(
  Sender: TObject);
begin
  inherited;
  DBLookupComboBoxCela.KeyValue := null;

end;

procedure TFrmMovimentoInternos.ToolButtonFiltrarCelaClick(Sender: TObject);
begin
  inherited;
  //
  try
    FrmFiltroCela := TFrmFiltroCela.Create(Application);
    FrmFiltroCela.DBLookupComboBoxPavilhao.KeyValue := DBLookupComboBoxPavilhao.KeyValue;
    FrmFiltroCela.DBLookupComboBoxGaleria.KeyValue := DBLookupComboBoxGaleria.KeyValue;
    FrmFiltroCela.DBLookupComboBoxSolario.KeyValue := DBLookupComboBoxSolario.KeyValue;
    FrmFiltroCela.DBLookupComboBoxCela.KeyValue := DBLookupComboBoxCela.KeyValue;
    while FrmFiltroCela.DBLookupComboBoxCela.KeyValue = null do
    begin
      if FrmFiltroCela.ShowModal <> mrok then
        break;
    end;

    sFiltroCela := '';
    sCaptionCela := '';

    if FrmFiltroCela.ShowModal = mrok then
    begin

      if FrmFiltroCela.DBLookupComboBoxPavilhao.KeyValue > 0 then
        sCaptionCela := sCaptionCela + GLOBAL_NIVEL_1 + '=' + FrmFiltroCela.DBLookupComboBoxPavilhao.text + ' ';

      if FrmFiltroCela.DBLookupComboBoxGaleria.KeyValue > 0 then
        sCaptionCela := sCaptionCela + GLOBAL_NIVEL_2 + '=' + FrmFiltroCela.DBLookupComboBoxGaleria.text + ' ';

      if FrmFiltroCela.DBLookupComboBoxSolario.KeyValue > 0 then
        sCaptionCela := sCaptionCela + GLOBAL_NIVEL_3 + '=' + FrmFiltroCela.DBLookupComboBoxSolario.text + ' ';

      if FrmFiltroCela.DBLookupComboBoxCela.KeyValue > 0 then
        sCaptionCela := sCaptionCela + GLOBAL_NIVEL_4 + '=' + FrmFiltroCela.DBLookupComboBoxCela.text + ' ';

      sFiltroCela := ' and interno.id_up=' + inttostr(GLOBAL_ID_UP);

      if FrmFiltroCela.DBLookupComboBoxPavilhao.KeyValue > 0 then
        sFiltroCela := sFiltroCela + ' and interno.idpavilhao = ' + inttostr(FrmFiltroCela.DBLookupComboBoxPavilhao.KeyValue);

      if FrmFiltroCela.DBLookupComboBoxGaleria.KeyValue > 0 then
        sFiltroCela := sFiltroCela + ' and interno.idgaleria = ' + inttostr(FrmFiltroCela.DBLookupComboBoxGaleria.KeyValue);

      if FrmFiltroCela.DBLookupComboBoxSolario.KeyValue > 0 then
        sFiltroCela := sFiltroCela + ' and interno.idsolario = ' + inttostr(FrmFiltroCela.DBLookupComboBoxSolario.KeyValue);

      if FrmFiltroCela.DBLookupComboBoxCela.KeyValue > 0 then
        sFiltroCela := sFiltroCela + ' and interno.idcela = ' + inttostr(FrmFiltroCela.DBLookupComboBoxCela.KeyValue);

      SqlConsulta.sql.text := SqlConsultaBackup.sql.text
        + sFiltroCela
        + ' order by interno.nome_interno ';

      DsConsulta.DataSet.close;
      DsConsulta.DataSet.open;

      //      DsConsulta.DataSet.filter := sFiltroCela;
      //      DsConsulta.DataSet.DisableControls;
      //      DsConsulta.DataSet.filtered := False;
      //      DsConsulta.DataSet.filtered := True;
      //      DsConsulta.DataSet.EnableControls;

      PageControlConsulta.ActivePageIndex := 0;
      PageControlDadosInterno.ActivePageIndex := 0;
      PageControlEndereco.ActivePageIndex := 0;
    end;

    EditLocalizar.text := '';
    EditLocalizar.OnChange(nil);

  finally
    FreeAndNil(FrmFiltroCela);
  end;

end;

procedure TFrmMovimentoInternos.ToolButtonInteligenciaClick(
  Sender: TObject);
begin
  inherited;
  FrmCadastroInteligencia := TFrmCadastroInteligencia.Create(Application);
  FrmCadastroInteligencia.ID_INTERNO := DsCadastro.Dataset.FieldByname('ID_INTERNO').AsInteger;
  FrmCadastroInteligencia.ShowModal;
  FreeAndNil(FrmCadastroInteligencia);
end;

procedure TFrmMovimentoInternos.CdsList_Mudanca_CelaCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  //ANTES
  if DsPavAntes.DataSet.Locate('ID_PAVILHAO', DataSet.fieldbyname('ID_PAVILHAO_ANTES').AsInteger, []) then
    DataSet.fieldbyname('PAVILHAO_ANTES').Asstring := DsPavAntes.DataSet.fieldbyname('PAVILHAO').Asstring;

  if DsGalAntes.DataSet.Locate('ID_GALERIA', DataSet.fieldbyname('ID_GALERIA_ANTES').AsInteger, []) then
    DataSet.fieldbyname('GALERIA_ANTES').Asstring := DsGalAntes.DataSet.fieldbyname('GALERIA').Asstring;

  if DsSolAntes.DataSet.Locate('ID_SOLARIO', DataSet.fieldbyname('ID_SOLARIO_ANTES').AsInteger, []) then
    DataSet.fieldbyname('SOLARIO_ANTES').Asstring := DsSolAntes.DataSet.fieldbyname('SOLARIO').Asstring;

  if DsCelaAntes.DataSet.Locate('ID_CELA', DataSet.fieldbyname('ID_CELA_ANTES').AsInteger, []) then
    DataSet.fieldbyname('CELA_ANTES').Asstring := DsCelaAntes.DataSet.fieldbyname('CELA').Asstring;

  //NOVO
  if DsPavAntes.DataSet.Locate('ID_PAVILHAO', DataSet.fieldbyname('ID_PAVILHAO_NOVO').AsInteger, []) then
    DataSet.fieldbyname('PAVILHAO_NOVO').Asstring := DsPavAntes.DataSet.fieldbyname('PAVILHAO').Asstring;

  if DsGalAntes.DataSet.Locate('ID_GALERIA', DataSet.fieldbyname('ID_GALERIA_NOVO').AsInteger, []) then
    DataSet.fieldbyname('GALERIA_NOVO').Asstring := DsGalAntes.DataSet.fieldbyname('GALERIA').Asstring;

  if DsSolAntes.DataSet.Locate('ID_SOLARIO', DataSet.fieldbyname('ID_SOLARIO_NOVO').AsInteger, []) then
    DataSet.fieldbyname('SOLARIO_NOVO').Asstring := DsSolAntes.DataSet.fieldbyname('SOLARIO').Asstring;

  if DsCelaAntes.DataSet.Locate('ID_CELA', DataSet.fieldbyname('ID_CELA_NOVO').AsInteger, []) then
    DataSet.fieldbyname('CELA_NOVO').Asstring := DsCelaAntes.DataSet.fieldbyname('CELA').Asstring;

end;

procedure TFrmMovimentoInternos.BitBtn1Click(Sender: TObject);
begin
  inherited;

  if not DsDocumentos.DataSet.IsEmpty then
  begin
    DsDocumentos.DataSet.Append;
  end;

end;

procedure TFrmMovimentoInternos.DBLookupComboBoxCelaClick(Sender: TObject);
begin
  inherited;

  if DsCadastro.DataSet.state in [dsedit] then
  begin
    DsCadastro.DataSet.FieldByName('DATA_SAIDA').AsVariant := Date;
    DsCadastro.DataSet.FieldByName('CISAIDA').AsVariant := null;
    DsCadastro.DataSet.FieldByName('MOTIVO_SAIDA').AsVariant := null;
  end;

end;

procedure TFrmMovimentoInternos.DBComboBoxMotivoChange(Sender: TObject);
begin
  inherited;
  TabSheetDestino.TabVisible := false;
  TabSheetUnidade.TabVisible := false;
  if UpperCase(DBComboBoxMotivo.Text) = UpperCase('Transferência de Presidio') then
  begin
    TabSheetDestino.TabVisible := false;
    TabSheetUnidade.TabVisible := true;
  end
  else
  begin
    if (UpperCase(DBComboBoxMotivo.Text) <> UpperCase('Duplicidade de Registros'))
      and (UpperCase(DBComboBoxMotivo.Text) <> UpperCase('Pedido Indeferido')) then
    begin
      TabSheetDestino.TabVisible := true;
      TabSheetUnidade.TabVisible := false;
    end;
  end;

end;

procedure TFrmMovimentoInternos.DBGridConsultaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if assigned(TDBGrid(Sender).DataSource.DataSet.FindField('ID_ME')) then
  begin
    if (Column.Field = TDBGrid(Sender).DataSource.DataSet.FieldByName('ID_ME')) then
    begin

      TDBGrid(Sender).Canvas.FillRect(Rect);

      if TDBGrid(Sender).DataSource.DataSet.FieldByName('ID_ME').AsString = '' then
      begin
        DM.ImageListSelecao.Draw(TDBGrid(Sender).Canvas, Rect.Left + 10,
          Rect.Top + 1, 0);
      end
      else
      begin
        DM.ImageListSelecao.Draw(TDBGrid(Sender).Canvas, Rect.Left + 10,
          Rect.Top + 1, 2);
      end;

    end;
  end;
end;

procedure TFrmMovimentoInternos.ToolButton1Click(Sender: TObject);
begin
  inherited;
  //

  if (PERMISSAO_MONITORAMENTO = '') or (PERMISSAO_MONITORAMENTO = 'R') then
  begin
    ShowMessage('Não há Permissão Para Monitoramento!!');

    Exit;
  end;

  if DsCadastro.Dataset.FieldByname('id_me').AsString = '' then
  begin
    ShowMessage('Interno Não Monitorado!!');
    exit;
  end;

  Frmmonitoramento_eletronico := TFrmmonitoramento_eletronico.Create(Application);

  Frmmonitoramento_eletronico.ShowModal;
  FreeAndNil(Frmmonitoramento_eletronico);

end;

function TFrmMovimentoInternos.RetornaDigital(): string;
begin
  //

  IniciaTelaAguarde();
  InterageTelaAguarde();
  dm.DsDigital.DataSet.Close;
  dm.DsDigital.DataSet.Open;
  FinalizaTelaAguarde;

  recDig_bmp := TBitmap.Create();
  frmRecDig := TfrmRecDig.Create(Self);
  frmRecDig.ShowModal;
  if frmRecDig.DigitalReconhecida then
    result := DM.DsDigital.DataSet.fieldbyname('ID_INTERNO').AsString;
  freeandnil(frmRecDig);
  freeandnil(recDig_bmp);

end;

procedure TFrmMovimentoInternos.EditLocalizarClick(Sender: TObject);
begin
  inherited;

  if RadioGroupTipoLocalizar.ItemIndex = 2 then
    EditLocalizar.Text := RetornaDigital;

end;

procedure TFrmMovimentoInternos.RadioGroupTipoLocalizarClick(
  Sender: TObject);
begin
  inherited;

  if (RadioGroupTipoLocalizar.ItemIndex = 0) or (RadioGroupTipoLocalizar.ItemIndex = 1) then
  begin
    if EditLocalizar.CanFocus then
    begin
      EditLocalizar.SetFocus;
      EditLocalizar.Text := '';
    end;
  end;

  if RadioGroupTipoLocalizar.ItemIndex = 2 then
  begin
    EditLocalizarClick(nil);
  end;

end;

procedure TFrmMovimentoInternos.ImagepolegaresquerdoClick(Sender: TObject);
begin
  inherited;

  plDig_bmp := TBitmap.Create();
  frmDigital := TfrmDigital.Create(Self);
  if (frmDigital.ShowModal() = mrOK) then
  begin

    IniciaTransMovimento;

    Dsdigital.DataSet.Append;
    Dsdigital.dataset.fieldbyname('ID_BIOMETRIA').AsInteger := DBGenerator('id_biometria');
    Dsdigital.dataset.fieldbyname('ID_INTERNO').AsInteger := frmmovimentointernos.dscadastro.dataset.fieldbyname('id_interno').value;
    Dsdigital.dataset.fieldbyname('CHAVE_POLEGAR_ESQUERDO').asstring := plDig_hex;
    //DBImage1.Picture.Bitmap.Assign(plDig_bmp);
    Dsdigital.DataSet.Post;

    CDSdigital.ApplyUpdates(-1);

    FinalizaTransMovimento;

    ShowMessage('Digital Capturada com sucesso.');
  end;

  freeandnil(frmDigital);
  freeandnil(plDig_bmp);

end;

procedure TFrmMovimentoInternos.ToolButton2Click(Sender: TObject);
begin
  inherited;

  TIPOCAPTURA := '';

  Frmcapturabiometrica := TFrmcapturabiometrica.Create(Application);

  FrmCapturaBiometrica.SQLdigital.SQL.Text := 'select * from biometria where id_interno = ' + DsCadastro.DataSet.fieldbyname('id_interno').AsString;

  FrmCapturaBiometrica.Dsdigital.DataSet.Close;
  FrmCapturaBiometrica.Dsdigital.DataSet.Open;

  TIPOCAPTURA := 'Interno';

  FrmCapturaBiometrica.Labelcapdigital.Caption := 'Capturando Digital do Interno(a) ' + DsCadastro.DataSet.fieldbyname('nome_interno').value;

  Frmcapturabiometrica.ShowModal;

  FreeAndNil(Frmcapturabiometrica);

end;

procedure TFrmMovimentoInternos.PageControlDadosInternoChange(
  Sender: TObject);
begin
  inherited;

  if PageControlDadosInterno.ActivePageIndex = 2 then
  begin
    if DsCadastro.DataSet.state in [dsedit, dsinsert] then
    begin
      if statusold = 'A' then
      begin
        if not ContemValor('I', PERMISSAO_TRANSFERENCIAINTERNO) then
        begin
          ShowMessage('Você não tem permissão para Saída/Transferência de Internos!');
          PageControlDadosInterno.ActivePageIndex := 0;
          Exit;
        end;
      end;
    end;
  end;

  if PageControlDadosInterno.ActivePageIndex = 1 then
  begin
    if DsCadastro.DataSet.state in [dsedit, dsinsert] then
    begin
      if not ContemValor('I', PERMISSAO_MUDANCACELA) then
      begin
        ShowMessage('Você não tem permissão para fazer Mudança de Cela!');
        PageControlDadosInterno.ActivePageIndex := 0;
        Exit;
      end;
    end;
  end;

end;

end.

