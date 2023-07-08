unit AgendaSaidaInterno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloInterno, FMTBcd, Menus, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, DBCtrls, dbcgrids, Grids, DBGrids,
  StdCtrls, Mask, Buttons, ToolWin, adpDBDateTimePicker;

type
  TFrmAgendaSaidaInterno = class(TFrmModeloInterno)
    TabSheet1: TTabSheet;
    SqlAgenda: TSQLQuery;
    DspAgenda: TDataSetProvider;
    CdsAgenda: TClientDataSet;
    DsAgenda: TDataSource;
    PanelAgenda: TPanel;
    lbl8: TLabel;
    lbl9: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label26: TLabel;
    Label29: TLabel;
    SpeedButton10: TSpeedButton;
    Label8: TLabel;
    Label14: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label48: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label53: TLabel;
    Label56: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    DBEditHORA: TDBEdit;
    DBEdit21: TDBEdit;
    DBLookupComboBoxPostoTrabalho: TDBLookupComboBox;
    DBComboBoxTipoDoc: TDBComboBox;
    DBEditDoc: TDBEdit;
    DBLookupComboBoxDestino: TDBLookupComboBox;
    Button2: TButton;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    dbmemoOBSERVACAO: TDBMemo;
    DBMemo1: TDBMemo;
    DBComboBox6: TDBComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBComboBox7: TDBComboBox;
    DBComboBox8: TDBComboBox;
    DBGridAgenda: TDBGrid;
    SqlConsultaAgenda: TSQLQuery;
    DspConsultaAgenda: TDataSetProvider;
    CdsConsultaAgenda: TClientDataSet;
    DsConsultaAgenda: TDataSource;
    adpDBDateTimePicker1: TadpDBDateTimePicker;
    BtnNovo: TBitBtn;
    BtnConcluir: TBitBtn;
    Button1: TButton;
    Button4: TButton;
    adpDBDateTimePicker2: TadpDBDateTimePicker;
    DsDestino: TDataSource;
    CdsDestino: TClientDataSet;
    DspDestino: TDataSetProvider;
    SqlDestino: TSQLQuery;
    CdsConsultaAgendaIDAGENDA_ATENDIMENTO: TIntegerField;
    CdsConsultaAgendaID_INTERNO: TIntegerField;
    CdsConsultaAgendaDATA_AGENDA: TSQLTimeStampField;
    CdsConsultaAgendaHORA_AGENDA: TTimeField;
    CdsConsultaAgendaTIPO_DOCUMENTO_SOLICITACAO: TStringField;
    CdsConsultaAgendaNUMERO_DOC_SOLICITACAO: TStringField;
    CdsConsultaAgendaDESTINO: TStringField;
    CdsConsultaAgendaMOTIVO_SAIDA: TStringField;
    CdsConsultaAgendaOBSERVACAO: TStringField;
    CdsAgendaIDAGENDA_ATENDIMENTO: TIntegerField;
    CdsAgendaID_UP: TIntegerField;
    CdsAgendaID_FUNCIONARIO: TIntegerField;
    CdsAgendaID_INTERNO: TIntegerField;
    CdsAgendaID_VISITANTE: TIntegerField;
    CdsAgendaID_ADVOGADO: TIntegerField;
    CdsAgendaIDAGENDA_TIPO_CONTATOS: TIntegerField;
    CdsAgendaIDAGENDA_ASSUNTOS: TIntegerField;
    CdsAgendaIDAGENDA_SITUACAO: TIntegerField;
    CdsAgendaDATA_LANCAMENTO: TSQLTimeStampField;
    CdsAgendaID_FUNCIONARIO_AGENDA: TIntegerField;
    CdsAgendaDATA_AGENDA: TSQLTimeStampField;
    CdsAgendaHORA_AGENDA: TTimeField;
    CdsAgendaOBSERVACAO: TStringField;
    CdsAgendaSETOR: TStringField;
    CdsAgendaDATA_AUDIENCIA: TSQLTimeStampField;
    CdsAgendaHORA_AUDIENCIA: TTimeField;
    CdsAgendaVARA_AUDIENCIA: TStringField;
    CdsAgendaLOCAL_AUDIENCIA: TStringField;
    CdsAgendaSTATUS: TStringField;
    CdsAgendaNUMERO_OFICIO: TStringField;
    CdsAgendaIDDESTINO: TIntegerField;
    CdsAgendaIDPOSTO_TRABALHO: TIntegerField;
    CdsAgendaTIPO_DOCUMENTO_SOLICITACAO: TStringField;
    CdsAgendaPRIORIDADE: TStringField;
    CdsAgendaCONFIRMADA: TStringField;
    CdsAgendaCARGO_SOLICITANTE: TStringField;
    CdsAgendaVOCATIVO_SOLICITANTE: TStringField;
    CdsAgendaFORMA_DE_TRATAMENTO: TStringField;
    CdsAgendaNOME_SOLICITANTE: TStringField;
    CdsAgendaENDERECO_SOLICITANTE: TStringField;
    CdsAgendaCIDADE_SOLICITANTE: TStringField;
    CdsAgendaIDFUNCIONARIO_AUTORIZOU: TIntegerField;
    CdsAgendaNUMERO_DOC_SOLICITACAO: TStringField;
    CdsAgendaDATA_SOLICITACAO: TSQLTimeStampField;
    CdsAgendaMOTIVO_SAIDA: TStringField;
    CdsAgendaCARGO_AUTORIZOU: TStringField;
    DBEdit15: TDBEdit;
    DBEdit22: TDBEdit;
    procedure BtnNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnConcluirClick(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure Especifico1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBLookupComboBoxDestinoClick(Sender: TObject);
    procedure DBGridAgendaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure CdsAgendaAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAgendaSaidaInterno: TFrmAgendaSaidaInterno;

implementation

uses ModeloCadastro, Lib, MenuRelatorio, CadastroDestino, DmPrincipal,
  PostoTrabalho;

{$R *.dfm}

procedure TFrmAgendaSaidaInterno.BtnNovoClick(Sender: TObject);
begin
  inherited;

  DsAgenda.DataSet.Append;

end;

procedure TFrmAgendaSaidaInterno.FormCreate(Sender: TObject);
begin
  inherited;

  DsDestino.DataSet.Close;
  DsDestino.DataSet.Open;

  DsConsultaAgenda.DataSet.Close;
  DsConsultaAgenda.DataSet.Open;

  DsAgenda.DataSet.Close;
  DsAgenda.DataSet.Open;

  DM.DsPostoTrabalho.DataSet.Close;
  DM.DsPostoTrabalho.DataSet.Open;

  DM.DsFuncionarioLista.DataSet.Close;
  DM.DsFuncionarioLista.DataSet.Open;

end;

procedure TFrmAgendaSaidaInterno.BtnConcluirClick(Sender: TObject);
begin
  inherited;

  with CdsAgenda do
  begin

    OnReconcileError := ClientDataSetReconcileError;

    if Active then
    begin

      if State in [dsedit, dsinsert] then
        Post;

      IniciaTransCadastro;
      if ChangeCount > 0 then
        ApplyUpdates(-1);
      FinalizaTransCadastro;

      ReabrirMesmoRegistro(DsConsultaAgenda);

    end;

  end;
end;

procedure TFrmAgendaSaidaInterno.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  with dsagenda.dataset do
  begin

    if not active then
      exit;

    if IsEmpty then
      exit;

    BtnNovo.Enabled := not (State in [dsedit, dsinsert]);

    BtnConcluir.Enabled := (State in [dsedit, dsinsert]);

  end;
end;

procedure TFrmAgendaSaidaInterno.Especifico1Click(Sender: TObject);
var
  sPath: string;
begin

  try
    with DsCadastro.DataSet do
    begin

      if not (state in [dsedit]) then
      begin
        ShowMessage('Não tem agenda posicionada na tela.');
        exit;
      end;
    end;

    with DsAgenda.DataSet do
    begin

      if not Active then
      begin
        ShowMessage('Não tem agenda posicionada na tela.');
        exit;
      end;

      if IsEmpty then
      begin
        ShowMessage('Não tem agenda posicionada na tela.');
        exit;
      end;

      if state in [dsinsert] then
      begin
        ShowMessage('Salve este registro de agenda, depois posicione nele.');
        exit;
      end;

      GLOBAL_ID_INTERNO := fieldbyname('ID_INTERNO').AsInteger;
      GLOBAL_IDAGENDA_ATENDIMENTO := fieldbyname('IDAGENDA_ATENDIMENTO').AsString;

    end;

    if not DirectoryExists(GLOBAL_PATCH_SISTEMA + '\Específicos\') then
      CreateDir(GLOBAL_PATCH_SISTEMA + '\Específicos\');

    PATH_MOMENTO := GLOBAL_PATCH_SISTEMA + '\Específicos\' + trim(copy(self.Name, 4, 100)) + '\';
    if not DirectoryExists(PATH_MOMENTO) then
      CreateDir(PATH_MOMENTO);

    FrmMenuRelatorio := TFrmMenuRelatorio.Create(Application);
    FrmMenuRelatorio.ShowModal;
    FreeAndNil(FrmMenuRelatorio);

  except
  end;

  PATH_MOMENTO := '';

  SetCurrentDir(GLOBAL_PATCH_SISTEMA);

end;

procedure TFrmAgendaSaidaInterno.SpeedButton2Click(Sender: TObject);
begin

  FrmCadastroDestino := TFrmCadastrodestino.Create(Application);
  FrmCadastrodestino.ShowModal;
  FreeAndNil(FrmCadastrodestino);

  dsdestino.DataSet.Close;
  dsdestino.DataSet.OPEN;

end;

procedure TFrmAgendaSaidaInterno.Button2Click(Sender: TObject);
var
  destino: variant;
begin
  inherited;
  destino := BuscaGeral(nil, 'DESTINO', '', 100, 100, 600, 400);
  if VarToStrDef(destino, '') <> '' then
  begin

    DBLookupComboBoxDestino.KeyValue := destino;
    DsAgenda.DataSet.FieldByName('IDDESTINO').AsInteger := DBLookupComboBoxDestino.KeyValue;

    DsAgenda.DataSet.FieldByname('CARGO_SOLICITANTE').AsString :=
      DsDestino.DataSet.FieldByname('CARGO_SOLICITANTE').AsString;

    DsAgenda.DataSet.FieldByname('VOCATIVO_SOLICITANTE').AsString :=
      DsDestino.DataSet.FieldByname('VOCATIVO_SOLICITANTE').AsString;

    DsAgenda.DataSet.FieldByname('FORMA_DE_TRATAMENTO').AsString :=
      DsDestino.DataSet.FieldByname('FORMA_DE_TRATAMENTO').AsString;

    DsAgenda.DataSet.FieldByname('NOME_SOLICITANTE').AsString :=
      DsDestino.DataSet.FieldByname('RESPONSAVEL').AsString;

    DsAgenda.DataSet.FieldByname('ENDERECO_SOLICITANTE').AsString :=
      DsDestino.DataSet.FieldByname('ENDERECO').AsString;

    DsAgenda.DataSet.FieldByname('CIDADE_SOLICITANTE').AsString :=
      DsDestino.DataSet.FieldByname('CIDADE').AsString;

  end;

end;

procedure TFrmAgendaSaidaInterno.DBLookupComboBoxDestinoClick(
  Sender: TObject);
begin
  inherited;

  DsAgenda.DataSet.FieldByname('CARGO_SOLICITANTE').AsString :=
    DsDestino.DataSet.FieldByname('CARGO_SOLICITANTE').AsString;

  DsAgenda.DataSet.FieldByname('VOCATIVO_SOLICITANTE').AsString :=
    DsDestino.DataSet.FieldByname('VOCATIVO_SOLICITANTE').AsString;

  DsAgenda.DataSet.FieldByname('FORMA_DE_TRATAMENTO').AsString :=
    DsDestino.DataSet.FieldByname('FORMA_DE_TRATAMENTO').AsString;

  DsAgenda.DataSet.FieldByname('NOME_SOLICITANTE').AsString :=
    DsDestino.DataSet.FieldByname('RESPONSAVEL').AsString;

  DsAgenda.DataSet.FieldByname('ENDERECO_SOLICITANTE').AsString :=
    DsDestino.DataSet.FieldByname('ENDERECO').AsString;

  DsAgenda.DataSet.FieldByname('CIDADE_SOLICITANTE').AsString :=
    DsDestino.DataSet.FieldByname('CIDADE').AsString;

end;

procedure TFrmAgendaSaidaInterno.DBGridAgendaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
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

procedure TFrmAgendaSaidaInterno.Button4Click(Sender: TObject);
var
  id: variant;
begin
  id := BuscaGeral(nil, 'POSTO_TRABALHO', '', 100, 100, 600, 400);
  if VarToStrDef(id, '') <> '' then
  begin
    DBLookupComboBoxPostoTrabalho.KeyValue := id;
    DsAgenda.DataSet.FieldByName('IDPOSTO_TRABALHO').AsInteger := DBLookupComboBoxPostoTrabalho.KeyValue;
  end;

end;

procedure TFrmAgendaSaidaInterno.Button1Click(Sender: TObject);
var
  id: variant;
  
begin

  id := BuscaGeral(nil, 'FUNCIONARIO', '', 100, 100, 600, 400);
  
  if VarToStrDef(id, '') <> '' then
  begin
    DBLookupComboBox3.KeyValue := id;
    DsAgenda.DataSet.FieldByName('IDFUNCIONARIO_AUTORIZOU').AsInteger := DBLookupComboBox3.KeyValue;
  end;

end;

procedure TFrmAgendaSaidaInterno.DBLookupComboBox3Click(Sender: TObject);
begin
  inherited;
  
  DsAgenda.DataSet.FieldByname('CARGO_AUTORIZOU').AsString :=
    DM.DsFuncionarioLista.DataSet.FieldByname('CARGO').AsString;

end;

procedure TFrmAgendaSaidaInterno.SpeedButton8Click(Sender: TObject);
begin
  inherited;

  FrmPostoTrabalho := TFrmPostoTrabalho.Create(Application);
  FrmPostoTrabalho.ShowModal;
  FreeAndNil(FrmPostoTrabalho);

  DM.DsPostoTrabalho.DataSet.Close;
  DM.DsPostoTrabalho.DataSet.OPEN;

end;

procedure TFrmAgendaSaidaInterno.CdsAgendaAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DsAgenda.DataSet.fieldbyname('IDAGENDA_ATENDIMENTO').AsInteger := 0;
  DsAgenda.DataSet.fieldbyname('IDPOSTO_TRABALHO').AsInteger := GLOBAL_IDPOSTO_TRABALHO;
  DsAgenda.DataSet.FieldByName('ID_UP').AsInteger := GLOBAL_ID_UP;
  DsAgenda.DataSet.FieldByName('ID_FUNCIONARIO').AsInteger := GLOBAL_ID_FUNCIONARIO;
  DsAgenda.DataSet.FieldByName('ID_FUNCIONARIO_AGENDA').AsInteger := GLOBAL_ID_FUNCIONARIO;
  DsAgenda.DataSet.FieldByName('IDFUNCIONARIO_AUTORIZOU').AsInteger := GLOBAL_ID_FUNCIONARIO;
  //  DsAgenda.DataSet.FieldByName('STATUS').AsString := '';
  DsAgenda.DataSet.fieldbyname('ID_INTERNO').AsInteger :=
    DsCadastro.DataSet.fieldbyname('ID_INTERNO').AsInteger;
  DsAgenda.DataSet.fieldbyname('DATA_SOLICITACAO').AsDateTime := Date;
  DsAgenda.DataSet.fieldbyname('PRIORIDADE').AsString := 'N';
  DsAgenda.DataSet.fieldbyname('CONFIRMADA').AsString := 'N';
  DsAgenda.DataSet.fieldbyname('TIPO_DOCUMENTO_SOLICITACAO').AsString := 'Oficio';
  DsAgenda.DataSet.fieldbyname('DATA_LANCAMENTO').AsDateTime := Date;

end;

end.

