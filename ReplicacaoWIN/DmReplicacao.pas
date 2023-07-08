unit DmReplicacao;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, CRSQLConnection, FMTBcd,
  Provider, DBClient;

type
  TDM = class(TDataModule)
    SQLConnect: TCRSQLConnection;
    DsControleSincronismo: TDataSource;
    CdsControleSincronismo: TClientDataSet;
    DspControleSincronismo: TDataSetProvider;
    SqlControleSincronismo: TSQLQuery;
    Dsrelation_fields: TDataSource;
    Cdsrelation_fields: TClientDataSet;
    Dsprelation_fields: TDataSetProvider;
    Sqlrelation_fields: TSQLQuery;
    SqlExecute: TSQLQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    function VerificaExisteField(nome_tabela, nome_campo,
      tipo_campo: string): Boolean;
    { Private declarations }
  public
    ReplicaReverso: Boolean;
    TempoReconexao: Integer;

    procedure LoadParamsConnect;
    function CriarFieldsNovos(sConexao: string): Boolean;
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

procedure TDM.LoadParamsConnect;
begin
  SQLConnect.Connected := False;
  SQLConnect.LoadParamsFromIniFile('dbxconnections.ini');
  SQLConnect.Params.Values['User_Name'] := 'SINCRONIZADOR';
  SQLConnect.Params.Values['Password'] := 'albatroz';

  TempoReconexao := StrToIntDef(SQLConnect.Params.Values['TempoReconexao'], 60);

  ReplicaReverso := True;

  if UpperCase(SQLConnect.Params.Values['ReplicaReverso']) = 'FALSE' then
    ReplicaReverso := False;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  LoadParamsConnect();
end;

function TDM.VerificaExisteField(nome_tabela, nome_campo, tipo_campo: string): Boolean;
var
  TD: TTransactionDesc;
begin

  Result := true;

  Cdsrelation_fields.Filtered := False;
  Cdsrelation_fields.Filter := ' tabela = ' + QuotedStr(UpperCase(nome_tabela));
  Cdsrelation_fields.Filtered := True;

  if not Cdsrelation_fields.isempty then
  begin

    Cdsrelation_fields.Filtered := False;
    Cdsrelation_fields.Filter := ' tabela = ' + QuotedStr(UpperCase(nome_tabela)) +
      ' and campo = ' + QuotedStr(UpperCase(nome_campo));
    Cdsrelation_fields.Filtered := True;

    // VERIFICA SE O CAMPO JA EXISTE NA TABELA
    if Cdsrelation_fields.IsEmpty then
    begin
      // Se nao existir entao CRIA
      try
        TD.TransactionID := 1;
        TD.IsolationLevel := xilREADCOMMITTED;
        SQLConnect.StartTransaction(TD);
        SqlExecute.sql.text :=
          ' ALTER TABLE ' + UpperCase(nome_tabela) +
          ' ADD ' + UpperCase(nome_campo) + ' ' + tipo_campo;
        SqlExecute.ExecSQL();
        SQLConnect.Commit(TD);
        Result := True;
      except
        SQLConnect.Rollback(TD);
        result := false;
      end;
    end;

  end;

end;

function TDM.CriarFieldsNovos(sConexao: string): Boolean;
begin

//  if UpperCase(SQLConnect.Params.Values['SYS_ATUALIZA_FIELDS']) = '1' then
//  begin
//
//    SQLConnect.Connected := False;
//    SQLConnect.Params.Values['Database'] := sConexao;
//    SQLConnect.Params.Values['User_Name'] := 'SYSDBA';//depois vai voltar para o SINCRONIZADOR
////    SQLConnect.Params.Values['Password'] := '4b6f4194';//depois a senha sera normalmente: albatroz
//    SQLConnect.Params.Values['Password'] := '!p@a#p$1';//depois a senha sera normalmente: albatroz
//    SQLConnect.Connected := true;
//
//    Cdsrelation_fields.close;
//    Cdsrelation_fields.Open;
////    result := VerificaExisteField('SINCRONISMO_CONTROLE', 'USUARIO', 'VARCHAR(31)');
////    result := VerificaExisteField('SINCRONISMO_CONTROLE', 'SENHA', 'VARCHAR(8)');
//    Cdsrelation_fields.close;
//
//    LoadParamsConnect;
//    
//  end;

end;

end.

