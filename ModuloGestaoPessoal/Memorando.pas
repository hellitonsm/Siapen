unit Memorando;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls,
  ToolWin, Mask, adpDBDateTimePicker, lib, Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TfrmMemorando = class(TFrmModeloCadastro)
    SqlCadastroID_MEMORANDO: TIntegerField;
    SqlCadastroASSUNTO: TStringField;
    SqlCadastroDESCRICAO: TStringField;
    SqlCadastroDESTINATARIO: TStringField;
    SqlCadastroDATA_INICIO: TSQLTimeStampField;
    SqlCadastroDATA_FIM: TSQLTimeStampField;
    SqlCadastroMISSAO_CANCELADA: TStringField;
    Label2: TLabel;
    dbeditcodigo: TDBEdit;
    Label3: TLabel;
    edtAssunto: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    edtDestinatario: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    EdtMissaoCancelada: TDBEdit;
    EdtDescricao: TDBMemo;
    edtDataInicio: TadpDBDateTimePicker;
    edtDataFim: TadpDBDateTimePicker;
    dspFuncionario_Memo: TDataSetProvider;
    cdsFuncionario_Memo: TClientDataSet;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    Label11: TLabel;
    btnIncluir: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    dsFuncionario_Memo: TDataSource;
    Label10: TLabel;
    cdsFuncionario_MemoID_FUNCIONARIO_MEMO: TIntegerField;
    cdsFuncionario_MemoDATA_EVENTO: TSQLTimeStampField;
    cdsFuncionario_MemoSTATUS_APROVACAO: TStringField;
    cdsFuncionario_MemoJUSTIFICATIVA: TStringField;
    cdsFuncionario_MemoCHEFE_MISSAO: TStringField;
    cdsFuncionario_MemoID_MEMORANDO: TIntegerField;
    cdsFuncionario_MemoID_FUNCIONARIO: TIntegerField;
    cdsFuncionario_Memonomefuncionario: TStringField;
    DBLookupComboBox2: TDBLookupComboBox;
    SQLrespold: TSQLQuery;
    dspresp: TDataSetProvider;
    cdsresp: TClientDataSet;
    dsresp: TDataSource;
    cdsrespID_FUNCIONARIO: TIntegerField;
    cdsrespNOME_FUNCIONARIO: TStringField;
    SQLrespoldID_FUNCIONARIO: TIntegerField;
    SQLrespoldNOME_FUNCIONARIO: TStringField;
    DSPflagautorizador: TDataSetProvider;
    CDSflagautorizador: TClientDataSet;
    CDSflagautorizadorFuncionario: TStringField;
    CDSflagautorizadorID_FUNCIONARIO_AUTORIZADOR: TIntegerField;
    CDSflagautorizadorID_FUNCIONARIO: TIntegerField;
    CDSflagautorizadorDESCRICAO_AUTORIZADOR: TStringField;
    DSflagautorizador: TDataSource;
    CdsCadastroID_MEMORANDO: TIntegerField;
    CdsCadastroASSUNTO: TStringField;
    CdsCadastroDESCRICAO: TStringField;
    CdsCadastroDESTINATARIO: TStringField;
    CdsCadastroDATA_INICIO: TSQLTimeStampField;
    CdsCadastroDATA_FIM: TSQLTimeStampField;
    CdsCadastroMISSAO_CANCELADA: TStringField;
    SqlCadastroID_FUNCIONARIO_AUTORIZADOR: TIntegerField;
    CdsCadastroID_FUNCIONARIO_AUTORIZADOR: TIntegerField;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Button1: TButton;
    SQLFuncionario_Memo: TFDQuery;
    SQLflagautorizador: TFDQuery;
    SQLresp: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMemorando: TfrmMemorando;
  cod_up : integer;

implementation

uses DmPrincipal, CadastroFuncionarioAutorizador;

{$R *.dfm}

procedure TfrmMemorando.FormCreate(Sender: TObject);
begin
  inherited;
  dm.DsFuncionarioLista.dataset.close;
  dm.DsFuncionarioLista.dataset.open;

  DSflagautorizador.dataset.close;
  DSflagautorizador.dataset.open;

 end;

procedure TfrmMemorando.btnIncluirClick(Sender: TObject);
begin
  dsFuncionario_Memo.dataset.close;
  dsFuncionario_Memo.dataset.open;
  dsFuncionario_Memo.DataSet.Append;
  dsFuncionario_Memo.DataSet.FieldByName('ID_funcionario_memo').AsInteger := DBGenerator('ID_funcionario_memo');
  dsFuncionario_Memo.DataSet.FieldByName('id_funcionario').AsInteger := dm.DsFuncionarioLista.DataSet.FieldByName('id_funcionario').asInteger;
  dsFuncionario_Memo.DataSet.FieldByName('id_memorando').AsInteger := DsCadastro.DataSet.FieldByName('id_memorando').AsInteger;
  dsFuncionario_Memo.DataSet.Post;
  {//dsHistoricoCela.DataSet.FieldByName('data_historico').AsDateTime := edtDataManutencao.dateTime;
  dsHistoricoCela.DataSet.FieldByName('data_historico').asString := FormatDateTime('dd/mm/yyyy', edtDataManutencao.Date);
  dsHistoricoCela.DataSet.FieldByName('descricao').AsString := DsCadastro.DataSet.FieldByName('MOTIVO_MANUTENCAO').AsString;
  dsHistoricoCela.DataSet.Post;
  inherited;     }

end;

procedure TfrmMemorando.NovoClick(Sender: TObject);
begin
  inherited;
  DsCadastro.DataSet.FieldByName('id_memorando').AsInteger := DBGenerator('ID_MEMORANDO');
end;

procedure TfrmMemorando.Button1Click(Sender: TObject);
begin
  inherited;
  FrmCadastroFuncionarioAutorizador := TFrmCadastroFuncionarioAutorizador.create(Application);
  FrmCadastroFuncionarioAutorizador.showmodal;
  FreeAndNil(FrmCadastroFuncionarioAutorizador);

  DSflagautorizador.DataSet.Close;
  DSflagautorizador.DataSet.open;




end;

end.
