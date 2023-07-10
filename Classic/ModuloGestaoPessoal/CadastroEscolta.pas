unit CadastroEscolta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, Mask, DBCtrls, DB, DBClient, Provider,
  SqlExpr, ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, lib,
  ToolWin, adpDBDateTimePicker;

type
  TfrmCadastroEscolta = class(TFrmModeloCadastro)
    SqlCadastroID_ESCOLTA: TIntegerField;
    SqlCadastroID_DOC_OFICIO: TIntegerField;
    SqlCadastroESCOLTA_DATA_IDA: TSQLTimeStampField;
    SqlCadastroESCOLTA_HORA_IDA: TTimeField;
    SqlCadastroESCOLTA_DATA_RETORNO: TSQLTimeStampField;
    SqlCadastroESCOLTA_HORA_RETORNO: TTimeField;
    SqlCadastroESCOLTA_OMP: TStringField;
    SqlCadastroESCOLTA_TIPO: TStringField;
    SqlCadastroESCOLTA_ORIGEM: TStringField;
    SqlCadastroESCOLTA_DESTINO: TStringField;
    SqlCadastroESCOLTA_OBSERVACAO: TStringField;
    SqlCadastroESCOLTA_PENDENTE: TStringField;
    CdsCadastroID_ESCOLTA: TIntegerField;
    CdsCadastroID_DOC_OFICIO: TIntegerField;
    CdsCadastroESCOLTA_DATA_IDA: TSQLTimeStampField;
    CdsCadastroESCOLTA_HORA_IDA: TTimeField;
    CdsCadastroESCOLTA_DATA_RETORNO: TSQLTimeStampField;
    CdsCadastroESCOLTA_HORA_RETORNO: TTimeField;
    CdsCadastroESCOLTA_OMP: TStringField;
    CdsCadastroESCOLTA_TIPO: TStringField;
    CdsCadastroESCOLTA_ORIGEM: TStringField;
    CdsCadastroESCOLTA_DESTINO: TStringField;
    CdsCadastroESCOLTA_OBSERVACAO: TStringField;
    CdsCadastroESCOLTA_PENDENTE: TStringField;
    PageControlEscolta: TPageControl;
    TabSheetEscolta: TTabSheet;
    TabSheetInterno: TTabSheet;
    dspInterno: TDataSetProvider;
    cdsInterno: TClientDataSet;
    dsInterno: TDataSource;
    SQLInterno: TSQLQuery;
    Label2: TLabel;
    edtIdEscolta: TDBEdit;
    Label3: TLabel;
    cmdOficio: TDBLookupComboBox;
    Label4: TLabel;
    cmdDataSaidaEscolta: TadpDBDateTimePicker;
    Label5: TLabel;
    edtHoraSaidaEscolta: TDBEdit;
    Label6: TLabel;
    CmdDataRetornoEscolta: TadpDBDateTimePicker;
    edtHoraRetornoEscolta: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    edtEscoltaOmp: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    cmdEscoltaOrigem: TDBComboBox;
    Label11: TLabel;
    cmdEscoltaDestino: TDBComboBox;
    Label13: TLabel;
    edtEscoltaObs: TDBEdit;
    Label12: TLabel;
    EdtEscoltaPendente: TDBEdit;
    TabSheetAgente: TTabSheet;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBGrid2: TDBGrid;
    BtnIncluir: TButton;
    SQLItinerario: TSQLQuery;
    dspItinerario: TDataSetProvider;
    cdsItinerario: TClientDataSet;
    dsItinerario: TDataSource;
    SQLItinerarioID_ITINERARIO_ESCOLTA: TIntegerField;
    SQLItinerarioID_ESCOLTA: TIntegerField;
    SQLItinerarioID_MEIO_TRANSPORTE: TIntegerField;
    SQLItinerarioID_ITINERARIO_DESTINO: TIntegerField;
    SQLItinerarioID_ITINERARIO_ORIGEM: TIntegerField;
    SQLItinerarioITINERARIO_NUMERO: TStringField;
    SQLItinerarioITINERARIO_DATA_INICIAL: TSQLTimeStampField;
    SQLItinerarioITINERARIO_DATA_FINAL: TSQLTimeStampField;
    SQLItinerarioITINERARIO_HORA_INICIAL: TTimeField;
    SQLItinerarioITINERARIO_HORA_FINAL: TTimeField;
    cdsItinerarioID_ITINERARIO_ESCOLTA: TIntegerField;
    cdsItinerarioID_ESCOLTA: TIntegerField;
    cdsItinerarioID_MEIO_TRANSPORTE: TIntegerField;
    cdsItinerarioID_ITINERARIO_DESTINO: TIntegerField;
    cdsItinerarioID_ITINERARIO_ORIGEM: TIntegerField;
    cdsItinerarioITINERARIO_NUMERO: TStringField;
    cdsItinerarioITINERARIO_DATA_INICIAL: TSQLTimeStampField;
    cdsItinerarioITINERARIO_DATA_FINAL: TSQLTimeStampField;
    cdsItinerarioITINERARIO_HORA_INICIAL: TTimeField;
    cdsItinerarioITINERARIO_HORA_FINAL: TTimeField;
    edtIdEscoltaFuncionario: TEdit;
    edtIdEscoltaAgente: TEdit;
    edtPcdpNumero: TEdit;
    EDTPCDPValorPasIda: TEdit;
    EdtPCDPValorPasRetorno: TEdit;
    EdtPCDPValorDiarias: TEdit;
    RadioGroup1: TRadioGroup;
    rdbSim: TRadioButton;
    rdbNao: TRadioButton;
    CmdIdFuncionario: TDBLookupComboBox;
    SQLEscoltaFuncionarios: TSQLQuery;
    dspEscoltaFuncionarios: TDataSetProvider;
    edtNumeroItinerario: TClientDataSet;
    dsEscoltaFuncionarios: TDataSource;
    edtPcdpDataScdp: TMaskEdit;
    SQLEscoltaFuncionariosID_ESCOLTA_FUNCIONARIO: TIntegerField;
    SQLEscoltaFuncionariosID_FUNCIONARIO: TIntegerField;
    SQLEscoltaFuncionariosID_ESCOLTA: TIntegerField;
    SQLEscoltaFuncionariosPCDP_NUMERO: TIntegerField;
    SQLEscoltaFuncionariosPCDP_DATA_SCDP: TSQLTimeStampField;
    SQLEscoltaFuncionariosPCDP_VALOR_PAS_IDA: TFloatField;
    SQLEscoltaFuncionariosPCDP_VALOR_PAS_RETORNO: TFloatField;
    SQLEscoltaFuncionariosPCDP_VALOR_DIARIAS: TFloatField;
    SQLEscoltaFuncionariosPCDP_SERVIDOR_CHEFE_MISSAO: TStringField;
    edtIdEscoltaInterno: TEdit;
    EdtIdEscoltaInternoInclusao: TEdit;
    Label33: TLabel;
    cmdEscoltaInterno: TDBLookupComboBox;
    Interno: TLabel;
    edtPcdpNumeroInterno: TEdit;
    Label34: TLabel;
    Label35: TLabel;
    edtPcdpDataScdpInterno: TMaskEdit;
    EDTPCDPValorPasIdaInterno: TEdit;
    EdtPCDPValorPasRetornoInterno: TEdit;
    Label36: TLabel;
    Label22: TLabel;
    DBGrid1: TDBGrid;
    Label37: TLabel;
    SQLEscoltaInterno: TSQLQuery;
    dspEscoltaInterno: TDataSetProvider;
    cdsEscoltaInterno: TClientDataSet;
    dsEscoltaInterno: TDataSource;
    TabSheetItinerario: TTabSheet;
    GroupBox1: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    cmdDestino: TDBLookupComboBox;
    cmdOrigem: TDBLookupComboBox;
    cmdMeioTransporte: TDBLookupComboBox;
    edtIdItinerario: TEdit;
    edtDataFinal: TMaskEdit;
    edtHoraFinal: TMaskEdit;
    edtHoraInicial: TMaskEdit;
    edtNumero: TEdit;
    dbGridItinerario: TDBGrid;
    edtDataInicial: TMaskEdit;
    Button1: TButton;
    btnExcluirItinerario: TButton;
    SQLItinerarioATIVO: TStringField;
    edtNumeroItinerarioID_ESCOLTA_FUNCIONARIO: TIntegerField;
    edtNumeroItinerarioID_FUNCIONARIO: TIntegerField;
    edtNumeroItinerarioID_ESCOLTA: TIntegerField;
    edtNumeroItinerarioPCDP_NUMERO: TIntegerField;
    edtNumeroItinerarioPCDP_DATA_SCDP: TSQLTimeStampField;
    edtNumeroItinerarioPCDP_VALOR_PAS_IDA: TFloatField;
    edtNumeroItinerarioPCDP_VALOR_PAS_RETORNO: TFloatField;
    edtNumeroItinerarioPCDP_VALOR_DIARIAS: TFloatField;
    edtNumeroItinerarioPCDP_SERVIDOR_CHEFE_MISSAO: TStringField;
    cdsItinerarioATIVO: TStringField;
    Edit2: TEdit;
    Button2: TButton;
    DBComboBox1: TDBComboBox;
    Button3: TButton;
    procedure NovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnExcluirItinerarioClick(Sender: TObject);
    procedure dbGridItinerarioDblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroEscolta: TfrmCadastroEscolta;

implementation

uses DmPrincipal, CadastroMeioTransporte, CadastroFuncionario;

{$R *.dfm}

procedure TfrmCadastroEscolta.NovoClick(Sender: TObject);
begin
  inherited;
  DsCadastro.DataSet.FieldByName('id_escolta').AsInteger := DBGenerator('id_escolta');

  //Inserir na tabela itinerario escolta
  //dsItinerario.DataSet.Append;
  //dsItinerario.DataSet.FieldByName('id_itinerario_escolta').AsInteger := DBGenerator('id_itinerario_escolta');
  //dsItinerario.DataSet.FieldByName('id_escolta').AsInteger := DsCadastro.DataSet.FieldByName('id_escolta').AsInteger;

  //inserir valores nos edits funcionarios
  edtIdEscolta.Text := IntToStr (DsCadastro.DataSet.FieldByName('id_escolta').AsInteger);

  //para passar o novo parametro para grid funcionario que no novo será 0
  dsEscoltafuncionarios.DataSet.Close;
  SQLEscoltafuncionarios.ParamByName('id_escolta').AsInteger := DsCadastro.DataSet.FieldByName('id_escolta').AsInteger;
  dsEscoltafuncionarios.DataSet.Open;


  //incluir o itinerario
  {dsEscoltafuncionarios.DataSet.Append;

  dsEscoltafuncionarios.DataSet.FieldByName('id_escolta_funcionario').AsInteger := DBGenerator('id_escolta_funcionario');
  dsEscoltafuncionarios.DataSet.FieldByName('id_escolta').AsInteger := StrToInt (edtIdEscolta.Text);
  dsEscoltafuncionarios.DataSet.FieldByName('id_funcionario').AsInteger := dm.DsFuncionarioLista.DataSet.FieldByName('id_funcionario').AsInteger;
  dsEscoltafuncionarios.DataSet.FieldByName('PCDP_DATA_SCDP').AsDateTime := StrToDate(edtPCDPDataSCDP.Text);
  dsEscoltafuncionarios.DataSet.FieldByName('PCDP_VALOR_PAS_IDA').AsInteger := StrToInt (EDTPCDPValorPasIda.text);
  dsEscoltafuncionarios.DataSet.FieldByName('PCDP_VALOR_PAS_RETORNO').AsInteger := StrToInt (EdtPCDPValorPasRetorno.text);
  dsEscoltafuncionarios.DataSet.FieldByName('PCDP_NUMERO').AsInteger := StrToInt (edtPcdpNumero.text);
  dsEscoltafuncionarios.DataSet.FieldByName('PCDP_VALOR_DIARIAS').AsInteger := StrToInt (EdtPCDPValorDiarias.text);

   }
end;

procedure TfrmCadastroEscolta.FormCreate(Sender: TObject);
begin
  inherited;
  dm.dsMeioTransporte.DataSet.Close;
  dm.dsMeioTransporte.DataSet.Open;

  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.Open;
  
  dm.dsItinerario.DataSet.Close;
  dm.dsItinerario.DataSet.Open;

  dsItinerario.DataSet.Close;
  SQLItinerario.ParamByName('id_escolta').AsInteger := DsCadastro.DataSet.FieldByName('id_escolta').AsInteger;
  dsItinerario.DataSet.Open;

  DM.dsDocOficio.DataSet.Close;
  DM.dsDocOficio.DataSet.Open;
  
  dm.dsestado.DataSet.Close;
  dm.dsestado.DataSet.Open;


  dsInterno.DataSet.Close;
  SQLInterno.ParamByName('doc_oficio').AsInteger := DsCadastro.DataSet.FieldByName('id_doc_oficio').AsInteger;
  dsInterno.DataSet.Open;

  dsEscoltafuncionarios.DataSet.Close;
  SQLEscoltafuncionarios.ParamByName('id_escolta').AsInteger := DsCadastro.DataSet.FieldByName('id_escolta').AsInteger;
  dsEscoltafuncionarios.DataSet.Open;

  DM.DsFuncionarioLista.DataSet.Close;
  dm.DsFuncionarioLista.DataSet.Open;
end;

procedure TfrmCadastroEscolta.BtnIncluirClick(Sender: TObject);
//Preenche os valores correspondentes na tabela escoltaFuncionario nos campos atraves dos edits.
begin
  inherited;
  dsEscoltafuncionarios.DataSet.Append;

  dsEscoltafuncionarios.DataSet.FieldByName('id_escolta_funcionario').AsInteger := DBGenerator('id_escolta_funcionario');
  dsEscoltafuncionarios.DataSet.FieldByName('id_escolta').AsInteger := StrToInt (edtIdEscolta.Text);
  dsEscoltafuncionarios.DataSet.FieldByName('id_funcionario').AsInteger := dm.DsFuncionarioLista.DataSet.FieldByName('id_funcionario').AsInteger;
  dsEscoltafuncionarios.DataSet.FieldByName('PCDP_DATA_SCDP').AsDateTime := StrToDate(edtPCDPDataSCDP.Text);
  dsEscoltafuncionarios.DataSet.FieldByName('PCDP_VALOR_PAS_IDA').AsInteger := StrToInt (EDTPCDPValorPasIda.text);
  dsEscoltafuncionarios.DataSet.FieldByName('PCDP_VALOR_PAS_RETORNO').AsInteger := StrToInt (EdtPCDPValorPasRetorno.text);
  dsEscoltafuncionarios.DataSet.FieldByName('PCDP_NUMERO').AsInteger := StrToInt (edtPcdpNumero.text);
  dsEscoltafuncionarios.DataSet.FieldByName('PCDP_VALOR_DIARIAS').AsInteger := StrToInt (EdtPCDPValorDiarias.text);

  //se estiver checado recebe S de chefe senão será N
  if rdbSim.Checked = true then
    dsEscoltafuncionarios.DataSet.FieldByName('PCDP_SERVIDOR_CHEFE_MISSAO').AsString := 'S'
  else
    dsEscoltafuncionarios.DataSet.FieldByName('PCDP_SERVIDOR_CHEFE_MISSAO').AsString := 'N';

  dsEscoltafuncionarios.DataSet.Post;


end;

procedure TfrmCadastroEscolta.Button1Click(Sender: TObject);

begin
  inherited;

  dsItinerario.DataSet.Append;

  dsItinerario.DataSet.FieldByName('ID_ITINERARIO_ESCOLTA').AsInteger := DBGenerator('ID_ITINERARIO_ESCOLTA');
  dsItinerario.DataSet.FieldByName('id_escolta').AsInteger := DsCadastro.DataSet.FieldByName('id_escolta').AsInteger;
  dsItinerario.DataSet.FieldByName('id_meio_transporte').AsInteger := dm.dsMeioTransporte.DataSet.FieldByName('id_meio_transporte').AsInteger;
  dsItinerario.DataSet.FieldByName('ID_ITINERARIO_DESTINO').AsInteger := cmdDestino.KeyValue;
  dsItinerario.DataSet.FieldByName('ID_ITINERARIO_ORIGEM').AsInteger := cmdOrigem.KeyValue;
  dsItinerario.DataSet.FieldByName('ITINERARIO_NUMERO').AsInteger := StrToInt(edtNumero.text);
  dsItinerario.DataSet.FieldByName('ITINERARIO_DATA_INICIAL').AsDateTime := StrToDate (edtDataInicial.text);
  dsItinerario.DataSet.FieldByName('ITINERARIO_HORA_INICIAL').AsDateTime := StrToTime (edtHoraInicial.Text);
  dsItinerario.DataSet.FieldByName('ITINERARIO_DATA_FINAL').AsDateTime := StrToDate (edtDataFinal.text);
  dsItinerario.DataSet.FieldByName('ITINERARIO_HORA_FINAL').AsDateTime := StrToTime (edtHoraFinal.Text);
  dsItinerario.DataSet.FieldByName('ATIVO').AsString := 'S';

  dsItinerario.DataSet.Post;

end;

procedure TfrmCadastroEscolta.btnExcluirItinerarioClick(Sender: TObject);
begin
  inherited;
    if MessageDlg('Este registro será tornado inativo', mtConfirmation, [mbYes, mbNo], 0) = mryes then begin
    dsItinerario.Edit;
    dsItinerario.DataSet.FieldByName('ATIVO').AsString := 'N';
  end;
end;

procedure TfrmCadastroEscolta.dbGridItinerarioDblClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Este registro será tornado inativo', mtConfirmation, [mbYes, mbNo], 0) = mryes then begin
    dsItinerario.Edit;
    dsItinerario.DataSet.FieldByName('ATIVO').AsString := 'N';
  end;
end;

procedure TfrmCadastroEscolta.Button2Click(Sender: TObject);
begin
  inherited;
  FrmCadastroMeioTransporte := TFrmCadastroMeioTransporte.create(Application);
  FrmCadastroMeioTransporte.showmodal;
  FreeAndNil(FrmCadastroMeioTransporte);

  DM.dsMeioTransporte.DataSet.close;
  DM.dsMeioTransporte.DataSet.open;
end;

procedure TfrmCadastroEscolta.Button3Click(Sender: TObject);
begin
  inherited;
  FrmCadastrofuncionario := TFrmCadastrofuncionario.Create(Application);
  FrmCadastrofuncionario.TabPermissao.TabVisible := false;
  FrmCadastrofuncionario.ShowModal;
  FreeAndNil(FrmCadastrofuncionario);

  dm.DsFuncionarioLista.DataSet.Close;
  dm.DsFuncionarioLista.DataSet.open;

end;

end.
