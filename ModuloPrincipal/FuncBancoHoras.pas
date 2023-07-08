unit FuncBancoHoras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls,
  ToolWin, Mask, Buttons, adpDBDateTimePicker;

type
  TFrmFuncBancoHoras = class(TFrmModeloCadastro)
    Label2: TLabel;
    DBEditCODIGO: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    lbl12: TLabel;
    DBLookupComboBoxID_FUNCIONARIO: TDBLookupComboBox;
    lbl1: TLabel;
    DBLookupComboBoxTipoHora: TDBLookupComboBox;
    btn1: TSpeedButton;
    SqlTipoHora: TSQLQuery;
    DspTipoHora: TDataSetProvider;
    CdsTipoHora: TClientDataSet;
    DsTipoHora: TDataSource;
    CdsTipoHoraIDTIPO_HORA: TIntegerField;
    CdsTipoHoraDESCRICAO: TStringField;
    CdsCadastroIDFUNC_BANCO_HORA: TIntegerField;
    CdsCadastroID_FUNCIONARIO: TIntegerField;
    CdsCadastroCONTABILIZA: TStringField;
    CdsCadastroQUANTIDADE: TIntegerField;
    CdsCadastroIDTIPO_HORA: TIntegerField;
    CdsCadastroDATA_FATO: TSQLTimeStampField;
    CdsCadastroDATA_LANCAMENTO: TSQLTimeStampField;
    CdsCadastroID_FUNCIONARIO_LANCAMENTO: TIntegerField;
    CdsCadastroOBSERVACAO: TStringField;
    adpDBDateTimePicker1: TadpDBDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    DBMemo1: TDBMemo;
    Button1: TButton;
    SqlCadastroIDFUNC_BANCO_HORA: TIntegerField;
    SqlCadastroID_FUNCIONARIO: TIntegerField;
    SqlCadastroCONTABILIZA: TStringField;
    SqlCadastroQUANTIDADE: TIntegerField;
    SqlCadastroIDTIPO_HORA: TIntegerField;
    SqlCadastroDATA_FATO: TSQLTimeStampField;
    SqlCadastroDATA_LANCAMENTO: TSQLTimeStampField;
    SqlCadastroID_FUNCIONARIO_LANCAMENTO: TIntegerField;
    SqlCadastroOBSERVACAO: TStringField;
    CdsCadastroSOMA: TAggregateField;
    SqlCadastroFuncionario: TStringField;
    CdsCadastrofunc: TStringField;
    SQLSomaCredito: TSQLQuery;
    dspSomaCredito: TDataSetProvider;
    cdsSomaCredito: TClientDataSet;
    dsSomaCredito: TDataSource;
    cdsSomaCreditoIDFUNC_BANCO_HORA: TIntegerField;
    cdsSomaCreditoID_FUNCIONARIO: TIntegerField;
    cdsSomaCreditoCONTABILIZA: TStringField;
    cdsSomaCreditoQUANTIDADE: TIntegerField;
    cdsSomaCreditoIDTIPO_HORA: TIntegerField;
    cdsSomaCreditoDATA_FATO: TSQLTimeStampField;
    cdsSomaCreditoDATA_LANCAMENTO: TSQLTimeStampField;
    cdsSomaCreditoID_FUNCIONARIO_LANCAMENTO: TIntegerField;
    cdsSomaCreditoOBSERVACAO: TStringField;
    cdsSomaCreditosoma: TAggregateField;
    edtCredito: TDBEdit;
    edtDebito: TDBEdit;
    SQLSomaDebito: TSQLQuery;
    dspSomaDebito: TDataSetProvider;
    cdsSomaDebito: TClientDataSet;
    dsSomadebito: TDataSource;
    cdsSomaDebitoIDFUNC_BANCO_HORA: TIntegerField;
    cdsSomaDebitoID_FUNCIONARIO: TIntegerField;
    cdsSomaDebitoCONTABILIZA: TStringField;
    cdsSomaDebitoQUANTIDADE: TIntegerField;
    cdsSomaDebitoIDTIPO_HORA: TIntegerField;
    cdsSomaDebitoDATA_FATO: TSQLTimeStampField;
    cdsSomaDebitoDATA_LANCAMENTO: TSQLTimeStampField;
    cdsSomaDebitoID_FUNCIONARIO_LANCAMENTO: TIntegerField;
    cdsSomaDebitoOBSERVACAO: TStringField;
    cdsSomaDebitosomaDedito: TAggregateField;
    Label6: TLabel;
    Label7: TLabel;
    edtSoma: TEdit;
    Label8: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);

  private
    { Private declarations }
    procedure contabiliza();
  public
    { Public declarations }
  end;

var
  FrmFuncBancoHoras: TFrmFuncBancoHoras;

implementation

uses TipoHora, DmPrincipal, Lib;

{$R *.dfm}

procedure TFrmFuncBancoHoras.btn1Click(Sender: TObject);
begin
  inherited;
  //
  FrmTipoHora := TFrmTipoHora.create(Application);
  FrmTipoHora.showmodal;
  FreeAndNil(FrmTipoHora);

  DsTipoHora.DataSet.Close;
  DsTipoHora.DataSet.OPEN;

end;

procedure TFrmFuncBancoHoras.contabiliza();
var
  teste : string;
begin
  if (DBLookupComboBoxID_FUNCIONARIO.KeyValue <> null) then begin
    teste := DBLookupComboBoxID_FUNCIONARIO.KeyValue;
    SQLSomaCredito.Close;
    SQLSomaCredito.SQL.Text := 'SELECT * FROM FUNC_BANCO_HORA WHERE CONTABILIZA = ''C'' AND ID_FUNCIONARIO = ' + dm.DsFuncionarioLista.DataSet.fieldbyname('ID_FUNCIONARIO').asString + 'order by idfunc_banco_hora desc';
    SQLSomaCredito.ExecSQL;
    SQLSomaCredito.Open;
    dsSomaCredito.DataSet.Close;
    dsSomaCredito.DataSet.Open;

    SQLSomaDebito.close;
    SQLSomaDebito.SQL.Text := 'SELECT * FROM FUNC_BANCO_HORA WHERE CONTABILIZA = ''D'' AND ID_FUNCIONARIO = ' + dm.DsFuncionarioLista.DataSet.fieldbyname('ID_FUNCIONARIO').asString + 'order by idfunc_banco_hora desc';
    SQLSomaDebito.ExecSQL;
    SQLSomaDebito.Open;
    dsSomaDebito.DataSet.Close;
    dsSomaDebito.DataSet.Open;
   end;
   if (edtCredito.Text = '') and (edtDebito.Text = '') then
     edtSoma.Text := IntToStr (0)
   else if (edtCredito.Text = '') then
     edtSoma.Text := IntToStr(0 - strtoInt(edtDebito.Text))
   else if edtDebito.text = '' then
     edtSoma.Text := IntToStr(strtoInt(edtCredito.Text) - 0)
   else
     edtSoma.Text := IntToStr(strtoInt(edtCredito.Text) - strtoInt(edtDebito.Text))
end;

procedure TFrmFuncBancoHoras.FormCreate(Sender: TObject);
begin
  inherited;

  DM.DsFuncionarioLista.DataSet.Close;
  DM.DsFuncionarioLista.DataSet.OPEN;

  DsTipoHora.DataSet.Close;
  DsTipoHora.DataSet.OPEN;

  contabiliza;
end;

procedure TFrmFuncBancoHoras.NovoClick(Sender: TObject);
var
  teste : string;
begin
  inherited;

  DsCadastro.DataSet.fieldbyname('ID_FUNCIONARIO').AsInteger := GLOBAL_ID_FUNCIONARIO;
  DsCadastro.DataSet.fieldbyname('ID_FUNCIONARIO_LANCAMENTO').AsInteger := GLOBAL_ID_FUNCIONARIO;
  DsCadastro.DataSet.fieldbyname('DATA_FATO').AsDateTime := Date;
  DsCadastro.DataSet.fieldbyname('CONTABILIZA').AsString := 'C';

end;

procedure TFrmFuncBancoHoras.Button1Click(Sender: TObject);
var
  registro: variant;
begin
  inherited;
  GLOBAL_INDEX_DO_GRID := 1;
  registro := BuscaGeral(nil, 'FUNCIONARIO', '', 100, 100, 600, 400);
  if VarToStrDef(registro, '') <> '' then
  begin
    DBLookupComboBoxID_FUNCIONARIO.KeyValue := registro;
    DsCadastro.DataSet.FieldByName('ID_FUNCIONARIO').AsInteger := DBLookupComboBoxID_FUNCIONARIO.KeyValue;
  end;

end;

procedure TFrmFuncBancoHoras.SalvarClick(Sender: TObject);
begin
  DsCadastro.DataSet.FieldByName('data_lancamento').AsDateTime := date;
  if DsCadastro.DataSet.fieldbyname('IDTIPO_HORA').AsString = '' then
  begin
    showmessage('Informe o Tipo de Hora.');
    exit;
  end;
  if DsCadastro.DataSet.fieldbyname('QUANTIDADE').AsString = '' then
  begin
    showmessage('Informe a Quantidade.');
    exit;
  end;
  inherited;
  contabiliza;

end;

procedure TFrmFuncBancoHoras.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  contabiliza;
end;

end.

