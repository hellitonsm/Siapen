unit PrincipalSincronismo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBXpress, FMTBcd, Provider, DBClient, DB, SqlExpr,
  CRSQLConnection, ComCtrls, ExtCtrls, Gauges, StdCtrls;

const
  OffsetMemoryStream: Int64 = 0;

type
  TFrmPrincipalSincronismo = class(TForm)
    SqlDestino: TSQLQuery;
    SqlLocal: TSQLQuery;
    DsControleSincronismo: TDataSource;
    CdsControleSincronismo: TClientDataSet;
    DspControleSincronismo: TDataSetProvider;
    SqlControleSincronismo: TSQLQuery;
    SqlSincronismo: TSQLQuery;
    DspSincronismo: TDataSetProvider;
    CdsSincronismo: TClientDataSet;
    DsSincronismo: TDataSource;
    DsStatus: TDataSource;
    CdsStatus: TClientDataSet;
    DspStatus: TDataSetProvider;
    SqlStatus: TSQLQuery;
    SqlDestinoSincronismo: TSQLQuery;
    DspDestinoSincronismo: TDataSetProvider;
    CdsDestinoSincronismo: TClientDataSet;
    DsDestinoSincronismo: TDataSource;
    SQLConnectOrigem: TCRSQLConnection;
    GaugeReplicacao: TGauge;
    SQLConnectDestino: TCRSQLConnection;
    LabelStatus: TLabel;
    DsBlobDestino: TDataSource;
    CdsBlobDestino: TClientDataSet;
    DspBlobDestino: TDataSetProvider;
    SqlBlobDestino: TSQLQuery;
    DsBlobOrigem: TDataSource;
    CdsBlobOrigem: TClientDataSet;
    DspBlobOrigem: TDataSetProvider;
    SqlBlobOrigem: TSQLQuery;
    TimerReplicacao: TTimer;
    Memo1: TMemo;
    CdsScript: TClientDataSet;
    procedure FormCreate(Sender: TObject);
    procedure LabelStatusClick(Sender: TObject);
    procedure TimerReplicacaoTimer(Sender: TObject);
    procedure CdsSincronismoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    MemoryStream: TMemoryStream;
    Tecla: Word;
    TD_Origem, TD_Destino: TTransactionDesc; // Para os Lançamentos .
    sIdControle, sParamInicial: string;
    NumConexao: integer;
    sUsuario_Replicacao_Destino: string;
    sSenha_Replicacao_Destino: string;
    F_Origem: Integer;
    F_EstaParando: boolean;
    I, NumVezes, NumVezes_Refresh, NumConLocal,
      TemDestino, sContSincronismo, sContSincronizado, iTotalPendente: integer;
    sConexao, sIdSincronismo, Script, sStatus, sErro, snome_arquivo_xml: string;
    procedure EnviarBLOB;
    function BuscaTroca(Text, Busca, Troca: string): string;
    function Abre_Destino(sDbDestino: string): boolean;
    function Abre_Origem(sDbOrigem: string = ''): Boolean;
    procedure FecharTelaSincronismo;
    procedure TotalAguardadndo;
    procedure IniciaVariaveisForm;
    procedure EnviaScriptDestino;
    procedure DescansoCPU(iTempo: Integer);
    { Private declarations }
  public
    varIDSINCRONISMO_CONTROLE, varCONEXAOOrigem, var_Caption: string;
    bParar_Sincronismo: boolean;
    property var_frm_Indice: Integer read F_Origem write F_Origem;
    procedure ExecutaReplicacaoWin();
    procedure SQLConnectReplicacaoCommit;
    procedure SQLConnectCommit;
    procedure LinhaPorLinha;

    { Public declarations }
  end;

var
  FrmPrincipalSincronismo: TFrmPrincipalSincronismo;
  iRegistrosSelect: Integer = 100;

implementation

uses ReplicacaoViaWindows;

{$R *.dfm}

function TFrmPrincipalSincronismo.Abre_Destino(SDbDestino: string): boolean;
begin
  LinhaporLinha;
  result := false;
  if bParar_Sincronismo then
    exit;

  LinhaporLinha;
  if not bParar_Sincronismo then
    if (sSenha_Replicacao_Destino = 'SINCRONI') or (sSenha_Replicacao_Destino = '') then
    begin
      LinhaporLinha;
      if not bParar_Sincronismo then
        sUsuario_Replicacao_Destino := 'SINCRONIZADOR';
      LinhaporLinha;
      if not bParar_Sincronismo then
        sSenha_Replicacao_Destino := 'albatroz';
    end;

  LinhaporLinha;
  if not bParar_Sincronismo then
    Caption := var_Caption + ' User: ' + sUsuario_Replicacao_Destino + ' Pass:' + sSenha_Replicacao_Destino + ' Connect:' + SDbDestino;

  LinhaporLinha;
  if not bParar_Sincronismo then
    if SQLConnectDestino.Params.Values['Database'] <> SDbDestino then
      SQLConnectDestino.Connected := false;

  try
    Result := false;

    LinhaporLinha;
    if not bParar_Sincronismo then
      if not SQLConnectDestino.Connected then
      begin
        LinhaporLinha;
        if not bParar_Sincronismo then
          SQLConnectDestino.Params.Values['Database'] := SDbDestino;
        LinhaporLinha;
        if not bParar_Sincronismo then
          SQLConnectDestino.Params.Values['User_Name'] := sUsuario_Replicacao_Destino;
        LinhaporLinha;
        if not bParar_Sincronismo then
          SQLConnectDestino.Params.Values['Password'] := sSenha_Replicacao_Destino;
        LinhaporLinha;
        if not bParar_Sincronismo then
          SQLConnectDestino.LoginPrompt := false;
        LinhaporLinha;
        if not bParar_Sincronismo then
          SQLConnectDestino.Connected := True;
      end;

    LinhaporLinha;
    if not bParar_Sincronismo then
      Result := SQLConnectDestino.Connected;
  except
    on e: exception do
    begin
      //teste após abrir o controle para saber o destino
      if not bParar_Sincronismo then
      begin
        LinhaporLinha;
        SQLConnectDestino.Connected := false;
        Result := False;
      end;
      LinhaPorLinha; //parar loop: while not bParar_Sincronismo do
    end;
  end;
end;

function TFrmPrincipalSincronismo.Abre_Origem(SDbOrigem: string = ''): Boolean;
begin
  LinhaporLinha;
  if not bParar_Sincronismo then
    with ReplicacaoViaWindows.FormPrincipalSincronismo[F_Origem] do
    begin
      try
        Result := False;

        if bParar_Sincronismo then
          exit;

        LinhaporLinha;
        if not bParar_Sincronismo then
          if SQLConnectOrigem.Params.Values['Database'] <> SDbOrigem then
            SQLConnectOrigem.Connected := false;

        LinhaporLinha;
        if not bParar_Sincronismo then
          SQLConnectOrigem.LoadParamsFromIniFile('dbxconnections.ini');

        LinhaporLinha;
        if not bParar_Sincronismo then
          if (not SQLConnectOrigem.Connected) then
          begin

            LinhaporLinha;
            if not bParar_Sincronismo then
              if SDbOrigem <> '' then
                SQLConnectOrigem.Params.Values['Database'] := SDbOrigem;
            LinhaporLinha;
            if not bParar_Sincronismo then
              SQLConnectOrigem.Params.Values['User_Name'] := 'SINCRONIZADOR';
            LinhaporLinha;
            if not bParar_Sincronismo then
              SQLConnectOrigem.Params.Values['Password'] := 'albatroz';

          end;

        LinhaporLinha;
        if not bParar_Sincronismo then
          SQLConnectOrigem.Connected := True;
        LinhaporLinha;
        if not bParar_Sincronismo then
          Result := SQLConnectOrigem.Connected;
      except
        on e: exception do
        begin
          //teste após abrir o controle para saber o destino
          if not bParar_Sincronismo then
          begin
            Result := False;
            LinhaporLinha;
          end;
          LinhaPorLinha; //parar loop: while not bParar_Sincronismo do
        end;
      end;
    end;
end;

function TFrmPrincipalSincronismo.BuscaTroca(Text, Busca, Troca: string): string;
var
  n, i: Integer;
begin
  i := length(Busca);
  if bParar_Sincronismo then
    exit;
  for n := 1 to length(Text) do
  begin
    if bParar_Sincronismo then
      break;
    if Copy(Text, n, i) = Busca then
    begin
      Delete(Text, n, i);
      Insert(Troca, Text, n);
    end;
  end;
  Result := Text;
end;

procedure TFrmPrincipalSincronismo.ExecutaReplicacaoWin();
begin
  LinhaPorLinha;
  if bParar_Sincronismo then
  begin
    LinhaPorLinha;
    //garantindo que a tag não é mais a 0 de execução parada
    ReplicacaoViaWindows.FormPrincipalSincronismo[F_Origem].Tag := 999;
    LinhaPorLinha;
    exit;
    LinhaPorLinha;
  end;
  LinhaPorLinha;
  //garantindo que o form da memoria seja o mesmo sendo manipulado
  with ReplicacaoViaWindows.FormPrincipalSincronismo[F_Origem] do
  begin
    LinhaPorLinha;
    if not bParar_Sincronismo then
      //colocando no form o destino
      ReplicacaoViaWindows.FormPrincipalSincronismo[F_Origem].Caption := var_Caption + ' User: ' + sUsuario_Replicacao_Destino + ' Pass:' +
        sSenha_Replicacao_Destino + ' Connect:' + sConexao;
    LinhaPorLinha;
    if not bParar_Sincronismo then
      if var_Caption = '' then
        //colocando no form a origem para o destino
        ReplicacaoViaWindows.FormPrincipalSincronismo[F_Origem].Caption := SQLConnectOrigem.Params.Values['Database'] + '-->' +
          SQLConnectDestino.Params.Values['Database'];
    LinhaPorLinha;
    //loop infinito enquanto não parar
    while not bParar_Sincronismo do
    begin
      DescansoCPU(5);
      if not bParar_Sincronismo then
        //abre o banco de origem.
        if not Abre_Origem(varCONEXAOOrigem) then
        begin
          break;
          LinhaPorLinha; //parar loop: while not bParar_Sincronismo do
        end;
      LinhaPorLinha;
      if not bParar_Sincronismo then
        ReplicacaoViaWindows.FormPrincipalSincronismo[F_Origem].Caption := var_Caption + ' User: ' + sUsuario_Replicacao_Destino + ' Pass:' +
          sSenha_Replicacao_Destino + ' Connect:' + sConexao;
      LinhaPorLinha;
      if not bParar_Sincronismo then
        if var_Caption = '' then
          ReplicacaoViaWindows.FormPrincipalSincronismo[F_Origem].Caption := SQLConnectOrigem.Params.Values['Database'] + '-->' +
            SQLConnectDestino.Params.Values['Database'];

      IniciaVariaveisForm;

      LinhaPorLinha;
      if not bParar_Sincronismo then
      begin
        SqlControleSincronismo.SQL.Text := 'SELECT IDSINCRONISMO_CONTROLE, CONEXAO, ' +
          'COALESCE(USUARIO,''SINCRONIZADOR'') AS USUARIO, COALESCE(SENHA,''albatroz'') AS SENHA ' +
          'FROM SINCRONISMO_CONTROLE WHERE IDSINCRONISMO_CONTROLE = ' + varIDSINCRONISMO_CONTROLE;
      end;

      //>>>Iniciado por Alexandre Albuquerque Em: 14/04/2011 16:40:31
      LinhaPorLinha;
      if not bParar_Sincronismo then
        SQLConnectOrigem.StartTransaction(TD_Origem);
      if not bParar_Sincronismo then
        DsControleSincronismo.DataSet.Open;
      LinhaPorLinha;

      if bParar_Sincronismo then
      begin
        LinhaporLinha;
        break;
      end;

      LinhaPorLinha; //parar loop: while not bParar_Sincronismo do
      if not bParar_Sincronismo then
        DsControleSincronismo.DataSet.first;

      LinhaPorLinha;
      //teste após abrir o controle para saber o destino
      if bParar_Sincronismo then
      begin
        LinhaporLinha;
        break;
      end;

      LinhaPorLinha; //parar loop: while not bParar_Sincronismo do
      if not bParar_Sincronismo then
        if not DsControleSincronismo.DataSet.EOF then
        begin
          if not bParar_Sincronismo then
            sConexao := DsControleSincronismo.DataSet.fieldbyname('CONEXAO').AsString;
          LinhaPorLinha;
          if not bParar_Sincronismo then
            sIdControle := DsControleSincronismo.DataSet.fieldbyname('IDSINCRONISMO_CONTROLE').AsString;
          LinhaPorLinha;
          if not bParar_Sincronismo then
            sUsuario_Replicacao_Destino := DsControleSincronismo.DataSet.fieldbyname('USUARIO').AsString;
          LinhaPorLinha;
          if not bParar_Sincronismo then
            sSenha_Replicacao_Destino := DsControleSincronismo.DataSet.fieldbyname('SENHA').AsString;
          LinhaPorLinha;
          if not bParar_Sincronismo then
            NumConexao := DsControleSincronismo.DataSet.RecNo - 1;

          if not bParar_Sincronismo then
            DsControleSincronismo.DataSet.Close;
          LinhaPorLinha;

          if not bParar_Sincronismo then
            SQLConnectOrigem.commit(TD_Origem);

          LinhaPorLinha;
          if not bParar_Sincronismo then
            SqlDestino.Close;
          LinhaPorLinha;
          if not bParar_Sincronismo then
            SqlDestino.SQLConnection := nil;
          LinhaPorLinha;

          //teste após pegar os scripts para enviar ao destino
          if bParar_Sincronismo then
          begin
            LinhaporLinha;
            break;
          end;

          if not Abre_Destino(sConexao) then
          begin
            begin
              LinhaporLinha;
              break;
            end;
            LinhaPorLinha; //parar loop: while not DsControleSincronismo.DataSet.EOF do
          end;
          LinhaPorLinha; //if Abre_Destino(sConexao) then

          //teste após abrir a conexão de destino
          if bParar_Sincronismo then
          begin
            LinhaporLinha;
            break;
          end;
          LinhaPorLinha; //parar loop: while not DsControleSincronismo.DataSet.EOF do

          if not bParar_Sincronismo then
            SqlDestino.SQLConnection := SQLConnectDestino;
          LinhaPorLinha;

          if not bParar_Sincronismo then
            if (NumVezes_Refresh = 100) or (NumVezes_Refresh = 1) then
            begin
              if NumVezes_Refresh = 100 then
                NumVezes_Refresh := 0;
              LinhaPorLinha;
            end;
          LinhaPorLinha;

          try
            if not bParar_Sincronismo then
              SqlSincronismo.SQL.Text := 'SELECT ' //FIRST ' + IntToStr(iRegistrosSelect)
                + ' IDSINCRONISMO AS POSICAO, IDSINCRONISMO, SCRIPT, ORDEM '
                + ' FROM SINCRONISMO '
                + ' WHERE IDSINCRONISMO_CONTROLE = ' + sIdControle + ' ORDER BY IDSINCRONISMO ';
            LinhaPorLinha;
            if not bParar_Sincronismo then
              LabelStatus.Caption := SQLConnectOrigem.Params.Values['Database'] + '-->' +
                '( Abrindo Scripts )';
            //>>>Iniciado por Alexandre Albuquerque Em: 14/04/2011 16:40:31
            LinhaPorLinha;
            if not bParar_Sincronismo then
              SQLConnectOrigem.StartTransaction(TD_Origem);
            LinhaPorLinha;
            if not bParar_Sincronismo then
              DsSincronismo.DataSet.Open;
            snome_arquivo_xml := 'script' + inttostr(F_Origem) + '-' + FormatDateTime('ddmmyyyyhhmmsszzz', now) + '.xml';
            LinhaPorLinha; //while not DsSincronismo.DataSet.eof do
            if not bParar_Sincronismo then
              TClientDataSet(DsSincronismo.DataSet).SaveToFile(snome_arquivo_xml, dfXML);
            LinhaPorLinha; //while not DsSincronismo.DataSet.eof do
            if not bParar_Sincronismo then
              DsSincronismo.DataSet.Close;
            LinhaPorLinha;
            if not bParar_Sincronismo then
              SQLConnectOrigem.commit(TD_Origem);
            //<<<Finalizado por Alexandre Albuquerque Em: 14/04/2011 16:40:31
            LinhaPorLinha;
          except
          end;

          //teste após pegar os scripts para enviar ao destino
          if bParar_Sincronismo then
          begin
            LinhaporLinha;
            break;
          end;
          LinhaPorLinha; //parar loop: while not DsControleSincronismo.DataSet.EOF do

          if not bParar_Sincronismo then
            LabelStatus.Caption := SQLConnectOrigem.Params.Values['Database'] + '-->' + SQLConnectDestino.Params.Values['Database'] +
              '( Replicando )';
          LinhaPorLinha;
          if not bParar_Sincronismo then
            LabelStatus.Font.Color := clNavy;
          LinhaPorLinha;
          if not bParar_Sincronismo then
            LabelStatus.Font.Style := [fsBold];
          LinhaPorLinha;

          try
            LinhaPorLinha; //while not DsSincronismo.DataSet.eof do
            if not bParar_Sincronismo then
              EnviaScriptDestino;
            LinhaPorLinha;
          except
            begin
              if not bParar_Sincronismo then
                if SQLConnectOrigem.Connected then
                  if SQLConnectOrigem.InTransaction then
                    SQLConnectOrigem.commit(TD_Origem);

              LinhaPorLinha;
              if not bParar_Sincronismo then
                if SQLConnectDestino.Connected then
                  if SQLConnectDestino.InTransaction then
                    SQLConnectDestino.commit(TD_Destino);
              LinhaPorLinha;

            end;
            LinhaPorLinha;
          end;
          //teste final de loop
          if bParar_Sincronismo then
          begin
            LinhaporLinha;
            break;
          end;
          LinhaPorLinha; //parar loop: while not DsControleSincronismo.DataSet.EOF do
        end;
      LinhaPorLinha; //while not DsControleSincronismo.DataSet.EOF do
      if not bParar_Sincronismo then
        DsSincronismo.DataSet.Close;
      LinhaPorLinha;
      if not bParar_Sincronismo then
        SqlDestino.Close;
      LinhaPorLinha;
      //teste final de loop
      if bParar_Sincronismo then
      begin
        LinhaporLinha;
        break;
      end;
      LinhaPorLinha; //parar loop: while not bParar_Sincronismo do
      if not bParar_Sincronismo then
        iTotalPendente := iTotalPendente - iRegistrosSelect;
      LinhaPorLinha;

      //SELECIONAR QUANTOS FALTAM
      //PARA DEPOIS ENVIAR OS CAMPOS BLOBS
      if iTotalPendente <= 0 then
      begin
        if not bParar_Sincronismo then
          DsSincronismo.DataSet.Close;
        LinhaPorLinha;
        if not bParar_Sincronismo then
          SqlSincronismo.SQL.Text := 'SELECT '
            + ' COUNT(*) TOTAL '
            + ' FROM SINCRONISMO '
            + ' WHERE IDSINCRONISMO_CONTROLE = ' + sIdControle;
        LinhaPorLinha;
        if not bParar_Sincronismo then
          LabelStatus.Caption := SQLConnectOrigem.Params.Values['Database'] + '-->' +
            '( Totalizando Scripts )';
        //>>>Iniciado por Alexandre Albuquerque Em: 14/04/2011 16:40:31
        LinhaPorLinha;
        if not bParar_Sincronismo then
          SQLConnectOrigem.StartTransaction(TD_Origem);
        LinhaPorLinha;
        if not bParar_Sincronismo then
          DsSincronismo.DataSet.Open;
        LinhaPorLinha;
        if not bParar_Sincronismo then
          SQLConnectOrigem.commit(TD_Origem);
        //<<<Finalizado por Alexandre Albuquerque Em: 14/04/2011 16:40:31
        LinhaPorLinha;
        if not bParar_Sincronismo then
          iTotalPendente := DsSincronismo.DataSet.fieldbyname('TOTAL').asinteger;
        LinhaPorLinha;
      end;
      LinhaPorLinha;
      if bParar_Sincronismo then
      begin
        LinhaporLinha;
        break;
      end;
      if not bParar_Sincronismo then
        if iTotalPendente = 0 then
          EnviarBLOB;
      LinhaPorLinha;
    end;
    LinhaPorLinha;
  end;
  LinhaPorLinha;
end;

procedure TFrmPrincipalSincronismo.EnviarBLOB();
var
//  sConexao, Script, sStatus: string;
//  sErro: string;
  sTabela, sCampo, sNome_pk, sValor_pk, sIdSincronismo_blob: string;
begin

  MemoryStream := nil;

  if Assigned(MemoryStream) then
    FreeAndNil(MemoryStream);

//Exit;
  //teste
  if bParar_Sincronismo then
  begin
    LinhaPorLinha;
    if assigned(ReplicacaoViaWindows.FormPrincipalSincronismo[F_Origem]) then
      ReplicacaoViaWindows.FormPrincipalSincronismo[F_Origem].Tag := 999;
    LinhaPorLinha;
    exit;
  end;
  LinhaPorLinha;
  if not bParar_Sincronismo then
  begin
    with ReplicacaoViaWindows.FormPrincipalSincronismo[F_Origem] do
    begin
      try
        if not bParar_Sincronismo then
          LabelStatus.Caption := SQLConnectOrigem.Params.Values['Database'] + '-->' + SQLConnectDestino.Params.Values['Database'] + '( Replicando )';
        LinhaPorLinha;
        if not bParar_Sincronismo then
          LabelStatus.Font.Color := clSilver;
        LinhaPorLinha;
        if not bParar_Sincronismo then
          LabelStatus.Font.Style := [fsBold];
        LinhaPorLinha;
        if not bParar_Sincronismo then
          NumVezes_Refresh := 0;
        LinhaPorLinha;
        if not bParar_Sincronismo then
          NumVezes := 0;
        LinhaPorLinha;
        if not bParar_Sincronismo then
          NumConLocal := 0;
        LinhaPorLinha;
        if not bParar_Sincronismo then
          DsSincronismo.DataSet.Close;
        LinhaPorLinha;
        if not bParar_Sincronismo then
          DsControleSincronismo.DataSet.Close;
        LinhaPorLinha;
        if not bParar_Sincronismo then
          SqlDestino.Close;
        LinhaPorLinha;
        if not bParar_Sincronismo then
          GaugeReplicacao.Progress := 0;
        LinhaPorLinha;
        if not bParar_Sincronismo then
          Inc(NumVezes);
        LinhaPorLinha;
        if not bParar_Sincronismo then
          Inc(NumVezes_Refresh);
        LinhaPorLinha;
        if not bParar_Sincronismo then
        begin
          if not Abre_Origem(varCONEXAOOrigem) then
          begin
            exit;
            LinhaPorLinha;
          end;
        end;
        LinhaPorLinha;
        //teste
        if bParar_Sincronismo then
        begin
          LinhaPorLinha;
          exit;
        end;
        LinhaPorLinha;
        try
          if not bParar_Sincronismo then
            DsControleSincronismo.DataSet.Close;
          LinhaPorLinha;
          if not bParar_Sincronismo then
          begin
            SqlControleSincronismo.SQL.Text := 'SELECT IDSINCRONISMO_CONTROLE, CONEXAO, ' +
              'COALESCE(USUARIO,''SINCRONIZADOR'') AS USUARIO, COALESCE(SENHA,''albatroz'') AS SENHA ' +
              'FROM SINCRONISMO_CONTROLE WHERE IDSINCRONISMO_CONTROLE = ' + varIDSINCRONISMO_CONTROLE;
            LinhaPorLinha;
          end;
          LinhaPorLinha;
          // DsControleSincronismo.DataSet.CursorPosChanged;LinhaPorLinha;
          if not bParar_Sincronismo then
            DsControleSincronismo.DataSet.Open;
          LinhaPorLinha;
          if not bParar_Sincronismo then
            DsControleSincronismo.DataSet.first;
          LinhaPorLinha;
          //teste
          if bParar_Sincronismo then
          begin
            LinhaPorLinha;
            exit;
          end;
          LinhaPorLinha;
          if not bParar_Sincronismo then
          begin
            while not DsControleSincronismo.DataSet.EOF do
            begin
              //teste
              if bParar_Sincronismo then
              begin
                LinhaporLinha;
                break;
              end;
              LinhaPorLinha;
              if not bParar_Sincronismo then
                sConexao := DsControleSincronismo.DataSet.fieldbyname('CONEXAO').AsString;
              LinhaPorLinha;
              if not bParar_Sincronismo then
                sIdControle := DsControleSincronismo.DataSet.fieldbyname('IDSINCRONISMO_CONTROLE').AsString;
              LinhaPorLinha;
              if not bParar_Sincronismo then
                sUsuario_Replicacao_Destino := DsControleSincronismo.DataSet.fieldbyname('USUARIO').AsString;
              LinhaPorLinha;
              if not bParar_Sincronismo then
                sSenha_Replicacao_Destino := DsControleSincronismo.DataSet.fieldbyname('SENHA').AsString;
              LinhaPorLinha;
              if not bParar_Sincronismo then
                NumConexao := DsControleSincronismo.DataSet.RecNo - 1;
              LinhaPorLinha;
              if not bParar_Sincronismo then
                SqlDestino.Close;
              LinhaPorLinha;
              if not bParar_Sincronismo then
                SqlDestino.SQLConnection := nil;
              LinhaPorLinha;
              if not bParar_Sincronismo then
              begin
                if Abre_Destino(sConexao) then
                begin
                  //teste
                  if bParar_Sincronismo then
                  begin
                    LinhaporLinha;
                    break;
                  end;
                  LinhaPorLinha;
                  if not bParar_Sincronismo then
                    SqlDestino.SQLConnection := SQLConnectDestino;
                  LinhaPorLinha;
                  if not bParar_Sincronismo then
                  begin
                    if (NumVezes_Refresh = 100) or (NumVezes_Refresh = 1) then
                    begin
                      if NumVezes_Refresh = 100 then
                        NumVezes_Refresh := 0;
                      LinhaPorLinha;
                    end;
                  end;
                  LinhaPorLinha;
                  if not bParar_Sincronismo then
                    DsSincronismo.DataSet.Close;
                  LinhaPorLinha;
                  if not bParar_Sincronismo then
                    SqlSincronismo.SQL.Text := 'SELECT '
                      + ' IDSINCRONISMO_BLOB, TABELA, CAMPO, NOME_PK, VALOR_PK '
                      + ' FROM SINCRONISMO_BLOB '
                      + ' WHERE IDSINCRONISMO_CONTROLE = ' + sIdControle;
                  LinhaPorLinha;
                  if not bParar_Sincronismo then
                    DsSincronismo.DataSet.Open;
                  LinhaPorLinha;
                  if not bParar_Sincronismo then
                    DsSincronismo.DataSet.First;
                  LinhaPorLinha;
                  //teste
                  if bParar_Sincronismo then
                  begin
                    LinhaporLinha;
                    break;
                  end;
                  LinhaPorLinha;
                  if not bParar_Sincronismo then
                    LabelStatus.Caption := SQLConnectOrigem.Params.Values['Database'] + '-->' + SQLConnectDestino.Params.Values['Database'] +
                      '( Replicando Blob )';
                  LinhaPorLinha;
                  if not bParar_Sincronismo then
                    LabelStatus.Font.Color := clNavy;
                  LinhaPorLinha;
                  if not bParar_Sincronismo then
                    LabelStatus.Font.Style := [fsBold];
                  LinhaPorLinha;
                  // LabelStatus.Repaint;LinhaPorLinha;
                  if not bParar_Sincronismo then
                  begin
                    if (not DsSincronismo.DataSet.IsEmpty) then
                    begin
                      try
                        if not bParar_Sincronismo then
                          sContSincronismo := 0;
                        LinhaPorLinha;
                        if not bParar_Sincronismo then
                          sContSincronismo := DsSincronismo.DataSet.RecordCount;
                        LinhaPorLinha;
                        if not bParar_Sincronismo then
                          GaugeReplicacao.Progress := 0;
                        LinhaPorLinha;
                        if not bParar_Sincronismo then
                          GaugeReplicacao.MaxValue := DsSincronismo.DataSet.RecordCount;
                        LinhaPorLinha;
                        if not bParar_Sincronismo then
                        begin
                          while not DsSincronismo.DataSet.eof do
                          begin
                            //teste
                            if bParar_Sincronismo then
                            begin
                              LinhaporLinha;
                              break;
                            end;
                            LinhaPorLinha;
                            if not bParar_Sincronismo then
                              GaugeReplicacao.AddProgress(1);
                            LinhaPorLinha;
                            //ABRIR TRANSAÇÃO NOS DOIS BANCOS SE HOUVER ERRO PARA TUDO
                            if not bParar_Sincronismo then
                              TD_Origem.TransactionID := GaugeReplicacao.Progress + 1;
                            LinhaPorLinha;
                            if not bParar_Sincronismo then
                              TD_Origem.IsolationLevel := xilREADCOMMITTED;
                            LinhaPorLinha;
                            if not bParar_Sincronismo then
                              sTabela := DsSincronismo.DataSet.fieldbyname('TABELA').AsString;
                            LinhaPorLinha;
                            if not bParar_Sincronismo then
                              sCampo := DsSincronismo.DataSet.fieldbyname('CAMPO').AsString;
                            LinhaPorLinha;
                            if not bParar_Sincronismo then
                              sNome_pk := DsSincronismo.DataSet.fieldbyname('NOME_PK').AsString;
                            LinhaPorLinha;
                            if not bParar_Sincronismo then
                              sValor_pk := DsSincronismo.DataSet.fieldbyname('VALOR_PK').AsString;
                            LinhaPorLinha;
                            if not bParar_Sincronismo then
                              Script := 'SELECT ' + sCampo + ' FROM ' + sTabela + ' WHERE ' + sNome_pk + '=' + quotedstr(sValor_pk);
                            LinhaPorLinha;
                            if not bParar_Sincronismo then
                              sIdSincronismo_blob := DsSincronismo.DataSet.fieldbyname('IDSINCRONISMO_BLOB').AsString;
                            LinhaPorLinha;
                            try
                              TD_Destino.TransactionID := GaugeReplicacao.Progress + 1;
                              TD_Destino.IsolationLevel := xilREADCOMMITTED;

                              SqlBlobOrigem.SQL.Text := Script + ' AND ' + sCampo + ' IS NOT NULL';
                              SqlBlobDestino.SQL.Text := 'SELECT * FROM ' + sTabela + ' WHERE ' + sNome_pk + '=' + quotedstr(sValor_pk);

                              DsBlobOrigem.DataSet.Open;

                              if not bParar_Sincronismo then
                              begin
                                if not DsBlobOrigem.DataSet.IsEmpty then
                                begin
                                  if not bParar_Sincronismo then
                                  begin
                                    SQLConnectDestino.StartTransaction(TD_Destino);
                                    DsBlobDestino.DataSet.Open;
                                    if not DsBlobDestino.DataSet.IsEmpty then
                                    begin
                                      MemoryStream := TMemoryStream.Create;
                                      (DsBlobOrigem.DataSet.FieldByName(sCampo) as TBlobField).SaveToStream(MemoryStream);
                                      MemoryStream.Position := OffsetMemoryStream;

                                      if Assigned(MemoryStream) then
                                      begin
                                        DsBlobDestino.DataSet.Edit;
                                        (DsBlobDestino.DataSet.FieldByName(sCampo) as TBlobField).LoadFromStream(MemoryStream);
                                        DsBlobDestino.DataSet.Post;
                                        TClientDataSet(DsBlobDestino.DataSet).ApplyUpdates(0);
                                        SQLConnectDestino.Commit(TD_Destino);
                                      end;

                                      if Assigned(MemoryStream) then
                                        FreeAndNil(MemoryStream);

                                    end;
                                    DsBlobDestino.DataSet.close;
                                    SqlBlobDestino.SQL.Text := '';
                                  end;
                                  LinhaPorLinha;
                                end;
                              end;
                              LinhaPorLinha;

                              if not bParar_Sincronismo then
                                if SQLConnectDestino.InTransaction then
                                  SQLConnectDestino.commit(TD_Destino);
                              LinhaPorLinha;

                              if not bParar_Sincronismo then
                                SQLConnectOrigem.StartTransaction(TD_Origem);
                              LinhaPorLinha;
                              if not bParar_Sincronismo then
                                SqlLocal.SQL.Text := 'DELETE FROM SINCRONISMO_BLOB WHERE IDSINCRONISMO_BLOB = ' + sIdSincronismo_blob;
                              LinhaPorLinha;
                              if not bParar_Sincronismo then
                                SqlLocal.ExecSQL();
                              LinhaPorLinha;
                              SQLConnectOrigem.commit(TD_Origem);
                              LinhaPorLinha;

                              if not bParar_Sincronismo then
                                DsBlobOrigem.DataSet.Close;
                              LinhaPorLinha;
                              if not bParar_Sincronismo then
                                DsBlobDestino.DataSet.Close;
                              LinhaPorLinha;

                              if not bParar_Sincronismo then
                                DsSincronismo.DataSet.Next;
                              LinhaPorLinha;
                              // Dec(sContSincronismo);LinhaPorLinha;
                              Inc(NumVezes_Refresh);
                              LinhaPorLinha;

                            except
                              on e: exception do
                              begin
                                if Assigned(MemoryStream) then
                                  FreeAndNil(MemoryStream);
                                if (SQLConnectDestino.Connected) and (SQLConnectOrigem.Connected) then
                                begin

                                  sErro := e.Message;
                                  LinhaPorLinha;
                                  if SQLConnectDestino.InTransaction then
                                    SQLConnectDestino.commit(TD_Destino);
                                  LinhaPorLinha;

                                  if SQLConnectOrigem.Connected then
                                  begin

                                    if SQLConnectOrigem.InTransaction then
                                      SQLConnectOrigem.commit(TD_Origem);
                                    LinhaPorLinha;

                                  end;
                                  LinhaPorLinha;

                                end
                                else
                                  Abre_Destino(sConexao);
                                LinhaPorLinha;

                              end;
                            end;
                            LinhaPorLinha; //

                            //teste
                            if bParar_Sincronismo then
                            begin
                              LinhaporLinha;
                              break;
                            end;
                            LinhaPorLinha;
                          end;
                        end;
                        LinhaPorLinha; //while not DsSincronismo.DataSet.eof do

                        DsSincronismo.DataSet.Close;
                        LinhaPorLinha;

                      except
                        begin
                          if Assigned(MemoryStream) then
                            FreeAndNil(MemoryStream);
                          if SQLConnectOrigem.Connected then
                            if SQLConnectOrigem.InTransaction then
                              SQLConnectOrigem.commit(TD_Origem);
                          LinhaPorLinha;

                          if SQLConnectDestino.Connected then
                            if SQLConnectDestino.InTransaction then
                              SQLConnectDestino.commit(TD_Destino);
                          LinhaPorLinha;
                        end;
                        LinhaPorLinha;
                      end;
                      LinhaPorLinha;
                    end;
                  end;
                  LinhaPorLinha; //if not DsSincronismo.DataSet.IsEmpty then
                end;
              end;
              LinhaPorLinha; //if Abre_Destino(sConexao) then

              //teste
              if bParar_Sincronismo then
              begin
                LinhaporLinha;
                break;
              end;
              LinhaPorLinha;

              if not bParar_Sincronismo then
                DsControleSincronismo.DataSet.Next;
              LinhaPorLinha;
            end;
          end;
          LinhaPorLinha; //while not DsControleSincronismo.DataSet.EOF do
          if not bParar_Sincronismo then
            DsControleSincronismo.DataSet.close;
          LinhaPorLinha;
        except
          if Assigned(MemoryStream) then
            FreeAndNil(MemoryStream);
        end;
        LinhaPorLinha;

        if not bParar_Sincronismo then
          DsSincronismo.DataSet.Close;
        LinhaPorLinha;
        if not bParar_Sincronismo then
          DsControleSincronismo.DataSet.Close;
        LinhaPorLinha;
        if not bParar_Sincronismo then
          SqlDestino.Close;
        LinhaPorLinha;

        //teste
        if bParar_Sincronismo then
        begin
          LinhaPorLinha;
          exit;
        end;
        LinhaPorLinha;

        if not bParar_Sincronismo then
          LabelStatus.Caption := SQLConnectOrigem.Params.Values['Database'] + '-->' + SQLConnectDestino.Params.Values['Database'] + '( Aguardando )';
        LinhaPorLinha;
        if not bParar_Sincronismo then
          GaugeReplicacao.Progress := 0;
        LinhaPorLinha;
        if not bParar_Sincronismo then
          LabelStatus.Font.Color := clSilver;
        LinhaPorLinha;
        if not bParar_Sincronismo then
          LabelStatus.Font.Style := [fsBold];
        LinhaPorLinha;

      except
      end;
      LinhaPorLinha;
    end;
  end;
  LinhaPorLinha;
end;

procedure TFrmPrincipalSincronismo.FormCreate(Sender: TObject);
begin
  bParar_Sincronismo := false;
  F_EstaParando := false;
  Height := 50;
  Width := 600;
end;

procedure TFrmPrincipalSincronismo.LabelStatusClick(Sender: TObject);
begin
  TotalAguardadndo;

  if GaugeReplicacao.Kind = gkHorizontalBar then
    GaugeReplicacao.Kind := gkNeedle
  else if GaugeReplicacao.Kind = gkNeedle then
    GaugeReplicacao.Kind := gkPie
  else if GaugeReplicacao.Kind = gkPie then
    GaugeReplicacao.Kind := gkText
  else if GaugeReplicacao.Kind = gkText then
    GaugeReplicacao.Kind := gkVerticalBar
  else if GaugeReplicacao.Kind = gkVerticalBar then
    GaugeReplicacao.Kind := gkHorizontalBar;
end;

procedure TFrmPrincipalSincronismo.FecharTelaSincronismo();
begin
  //  Close;
end;

procedure TFrmPrincipalSincronismo.TotalAguardadndo();
begin
  Exit;

  try
    DsControleSincronismo.DataSet.Close;
    SqlControleSincronismo.SQL.Text := 'SELECT COUNT(*) TOTAL '
      + ' FROM SINCRONISMO ';
    DsControleSincronismo.DataSet.Open;

    if not DsControleSincronismo.DataSet.isempty then
    begin

      ReplicacaoViaWindows.FormPrincipalSincronismo[F_Origem].Caption := 'Total aguardando : ' + DsControleSincronismo.DataSet.fieldbyname('total').AsString;
      // Sleep(3000);
    end;

    //ReplicacaoViaWindows.FormPrincipalSincronismo[F_Origem].Caption := var_Caption + ' User: ' + sUsuario_Replicacao_Destino + ' Pass:' + sSenha_Replicacao_Destino;

    DsControleSincronismo.DataSet.Close;
  except
  end;
end;

procedure TFrmPrincipalSincronismo.TimerReplicacaoTimer(Sender: TObject);
begin
  //  TimerReplicacao.Enabled := false;
  //  ExecutaReplicacaoWin();
end;

procedure TFrmPrincipalSincronismo.SQLConnectReplicacaoCommit;
begin
  SQLConnectDestino.Commit(TD_Destino);
end;

procedure TFrmPrincipalSincronismo.SQLConnectCommit;
begin
  SQLConnectOrigem.commit(TD_Origem);
end;

procedure TFrmPrincipalSincronismo.LinhaPorLinha;
var
  sMensagem: string;
begin

  if F_EstaParando then
    exit;

  if not assigned(ReplicacaoViaWindows.FormPrincipalSincronismo[F_Origem]) then
    exit;

  if assigned(ReplicacaoViaWindows.FormPrincipalSincronismo[F_Origem]) then
    ReplicacaoViaWindows.FormPrincipalSincronismo[F_Origem].Repaint;

  if bParar_Sincronismo then
  begin
    sMensagem := 'Parando';
    if assigned(ReplicacaoViaWindows.FormPrincipalSincronismo[F_Origem]) then
    begin
      //        try
      if ReplicacaoViaWindows.FormPrincipalSincronismo[F_Origem].Tag <> 999 then
      begin
        //        ReplicacaoViaWindows.FormPrincipalSincronismo[F_Origem].SQLConnectDestino.CloseDataSets;
        //        ReplicacaoViaWindows.FormPrincipalSincronismo[F_Origem].SQLConnectDestino.Connected := false;
        //        ReplicacaoViaWindows.FormPrincipalSincronismo[F_Origem].SQLConnectOrigem.CloseDataSets;
        //        ReplicacaoViaWindows.FormPrincipalSincronismo[F_Origem].SQLConnectOrigem.Connected := false;
      end;
      //        except
      //        end;

      //        try
      ReplicacaoViaWindows.FormPrincipalSincronismo[F_Origem].Tag := 999;
      F_EstaParando := true;
      //        except
      //        end;
    end;
  end
  else
  begin

    sMensagem := 'Continuando';
  end;

  if F_Origem = 0 then
    sMensagem := sMensagem + ' - ' + inttostr(F_Origem) + formatdatetime('dd/mm/yyyy hh:mm:ss.zzz', now);
  if F_Origem = 1 then
    sMensagem := sMensagem + ' - ' + inttostr(F_Origem) + formatdatetime('dd/mm/yyyy hh:mm:ss.zzz', now);
  if F_Origem = 2 then
    sMensagem := sMensagem + ' - ' + inttostr(F_Origem) + formatdatetime('dd/mm/yyyy hh:mm:ss.zzz', now);
  if F_Origem = 3 then
    sMensagem := sMensagem + ' - ' + inttostr(F_Origem) + formatdatetime('dd/mm/yyyy hh:mm:ss.zzz', now);
  if F_Origem = 4 then
    sMensagem := sMensagem + ' - ' + inttostr(F_Origem) + formatdatetime('dd/mm/yyyy hh:mm:ss.zzz', now);
  if F_Origem = 5 then
    sMensagem := sMensagem + ' - ' + inttostr(F_Origem) + formatdatetime('dd/mm/yyyy hh:mm:ss.zzz', now);
  if F_Origem = 6 then
    sMensagem := sMensagem + ' - ' + inttostr(F_Origem) + formatdatetime('dd/mm/yyyy hh:mm:ss.zzz', now);
  if F_Origem = 7 then
    sMensagem := sMensagem + ' - ' + inttostr(F_Origem) + formatdatetime('dd/mm/yyyy hh:mm:ss.zzz', now);
  if F_Origem = 8 then
    sMensagem := sMensagem + ' - ' + inttostr(F_Origem) + formatdatetime('dd/mm/yyyy hh:mm:ss.zzz', now);
  if F_Origem = 9 then
    sMensagem := sMensagem + ' - ' + inttostr(F_Origem) + formatdatetime('dd/mm/yyyy hh:mm:ss.zzz', now);
  if F_Origem = 10 then
    sMensagem := sMensagem + ' - ' + inttostr(F_Origem) + formatdatetime('dd/mm/yyyy hh:mm:ss.zzz', now);
  if F_Origem = 11 then
    sMensagem := sMensagem + ' - ' + inttostr(F_Origem) + formatdatetime('dd/mm/yyyy hh:mm:ss.zzz', now);
  if F_Origem = 12 then
    sMensagem := sMensagem + ' - ' + inttostr(F_Origem) + formatdatetime('dd/mm/yyyy hh:mm:ss.zzz', now);
  if F_Origem = 13 then
    sMensagem := sMensagem + ' - ' + inttostr(F_Origem) + formatdatetime('dd/mm/yyyy hh:mm:ss.zzz', now);
  if F_Origem = 14 then
    sMensagem := sMensagem + ' - ' + inttostr(F_Origem) + formatdatetime('dd/mm/yyyy hh:mm:ss.zzz', now);

  //  except
  //  end;

    //  Memo1.Lines.Add(sMensagem);
    //  if bParar_Sincronismo then
    //    memo1.Lines.SaveToFile('FormAtivo_' + inttostr(F_Origem) + '.txt');

end;

procedure TFrmPrincipalSincronismo.CdsSincronismoReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := raAbort;
end;

procedure TFrmPrincipalSincronismo.IniciaVariaveisForm();
begin
  LinhaPorLinha;
  if not bParar_Sincronismo then
    LabelStatus.Caption := SQLConnectOrigem.Params.Values['Database'] + '-->' + SQLConnectDestino.Params.Values['Database'] + '( Replicando )';
  LinhaPorLinha;
  if not bParar_Sincronismo then
    LabelStatus.Font.Color := clSilver;
  LinhaPorLinha;
  if not bParar_Sincronismo then
    LabelStatus.Font.Style := [fsBold];
  LinhaPorLinha;
  if not bParar_Sincronismo then
    NumVezes_Refresh := 0;
  LinhaPorLinha;
  if not bParar_Sincronismo then
    NumVezes := 0;
  LinhaPorLinha;
  if not bParar_Sincronismo then
    NumConLocal := 0;
  LinhaPorLinha;
  if not bParar_Sincronismo then
    DsSincronismo.DataSet.Close;
  LinhaPorLinha;
  if not bParar_Sincronismo then
    DsControleSincronismo.DataSet.Close;
  LinhaPorLinha;
  if not bParar_Sincronismo then
    SqlDestino.Close;
  LinhaPorLinha;
  if not bParar_Sincronismo then
    GaugeReplicacao.Progress := 0;
  LinhaPorLinha;
  if not bParar_Sincronismo then
    Inc(NumVezes);
  LinhaPorLinha;
  if not bParar_Sincronismo then
    Inc(NumVezes_Refresh);
  LinhaPorLinha;
  //>>>Iniciado por Alexandre Albuquerque Em: 14/04/2011 16:39:23
  if not bParar_Sincronismo then
    TD_Origem.TransactionID := 1;
  LinhaPorLinha;
  if not bParar_Sincronismo then
    TD_Origem.IsolationLevel := xilREADCOMMITTED;
  //<<<Finalizado por Alexandre Albuquerque Em: 14/04/2011 16:39:23

end;

procedure TFrmPrincipalSincronismo.EnviaScriptDestino();
begin

  if FileExists(snome_arquivo_xml) then
  begin

    try
      CdsScript.Close;
      CdsScript.FileName := snome_arquivo_xml;
    finally
      CdsScript.open;
    end;

    LinhaPorLinha;
    if not (CdsScript.active) then
    begin
      DeleteFile(snome_arquivo_xml);
      Exit;
    end;

    LinhaPorLinha;
    if (CdsScript.IsEmpty) then
    begin
      CdsScript.Close;
      DeleteFile(snome_arquivo_xml);
      Exit;
    end;

    if not bParar_Sincronismo then
      CdsScript.First;

    LinhaPorLinha;
    if not bParar_Sincronismo then
      sContSincronismo := 0;
    LinhaPorLinha;
    if not bParar_Sincronismo then
      sContSincronizado := 0;
    LinhaPorLinha;
    if not bParar_Sincronismo then
      sContSincronismo := CdsScript.RecordCount;
    LinhaPorLinha;
    if not bParar_Sincronismo then
      GaugeReplicacao.Progress := 0;
    LinhaPorLinha;
    if not bParar_Sincronismo then
      GaugeReplicacao.MaxValue := CdsScript.RecordCount;
    LinhaPorLinha;

    while not CdsScript.eof do
    begin
      LinhaPorLinha;
      //teste dentro do loop de envio ao destino
      if bParar_Sincronismo then
      begin
        LinhaporLinha;
        break;
      end;
      LinhaPorLinha; //parar loop:  while not CdsScript.eof do

      if not bParar_Sincronismo then
        GaugeReplicacao.AddProgress(1);
      LinhaPorLinha;

      //ABRIR TRANSAÇÃO NOS DOIS BANCOS SE HOUVER ERRO PARA TUDO
      if not bParar_Sincronismo then
        Script := CdsScript.fieldbyname('SCRIPT').AsString;
      LinhaPorLinha;
      if not bParar_Sincronismo then
        sIdSincronismo :=
          CdsScript.fieldbyname('IDSINCRONISMO').AsString;
      LinhaPorLinha;
      if not bParar_Sincronismo then
        Script := BuscaTroca(Script, '"', '´');
      LinhaPorLinha;
      try
        try
          SQLConnectDestino.ExecuteDirect(Script);
          SQLConnectOrigem.ExecuteDirect('DELETE FROM SINCRONISMO WHERE IDSINCRONISMO = ' + sIdSincronismo);
        finally

          LinhaPorLinha;
          if not bParar_Sincronismo then
            inc(sContSincronizado);
          LinhaPorLinha;
          if not bParar_Sincronismo then
            LabelStatus.Caption := SQLConnectOrigem.Params.Values['Database'] + '-->' + SQLConnectDestino.Params.Values['Database'] + '[' +
              IntTostr(sContSincronizado) + '/' + IntTostr(sContSincronismo) + '] ';
          LinhaPorLinha;
          if not bParar_Sincronismo then
            LabelStatus.Repaint;
          LinhaPorLinha;
          if not bParar_Sincronismo then
            CdsScript.Next;
          LinhaPorLinha;
          //Dec(sContSincronismo);LinhaPorLinha;
          if not bParar_Sincronismo then
            Inc(NumVezes_Refresh);

          LinhaPorLinha;
        end;

      except
        on e: exception do
        begin
          sErro := e.Message;
          LinhaPorLinha;
          if (Pos('connection', LowerCase(sErro)) > 0) or
            (Pos(LowerCase('dbExpress Error: Unknown Error Code'), LowerCase('xxxx' + sErro)) > 0) then
          begin //se for erro de transacao derruba conexao para reiniciar processo
            if not bParar_Sincronismo then
              SQLConnectDestino.CloseDataSets;
            LinhaPorLinha;
            if not bParar_Sincronismo then
              SQLConnectDestino.Connected := False;
            LinhaPorLinha;
            if not bParar_Sincronismo then
              SQLConnectOrigem.CloseDataSets;
            LinhaPorLinha;
            if not bParar_Sincronismo then
              SQLConnectOrigem.Connected := False;
            LinhaPorLinha;
            exit;
            LinhaPorLinha;
          end;
          LinhaPorLinha;

          if not bParar_Sincronismo then
            if SQLConnectDestino.InTransaction then
              if not bParar_Sincronismo then
                SQLConnectDestino.commit(TD_Destino);

          LinhaPorLinha;

          if not bParar_Sincronismo then
            if SQLConnectOrigem.Connected then
            begin

              if not bParar_Sincronismo then
                if SQLConnectOrigem.InTransaction then
                  SQLConnectOrigem.commit(TD_Origem);
              LinhaPorLinha;
              if not bParar_Sincronismo then
                SQLConnectOrigem.StartTransaction(TD_Origem);
              LinhaPorLinha;
              if not bParar_Sincronismo then
                SqlLocal.SQL.Text := 'DELETE FROM SINCRONISMO WHERE IDSINCRONISMO = ' + sIdSincronismo;
              LinhaPorLinha;
              if not bParar_Sincronismo then
                SqlLocal.ExecSQL();
              LinhaPorLinha;
              if not bParar_Sincronismo then
                SQLConnectOrigem.commit(TD_Origem);
              LinhaPorLinha;
              if not bParar_Sincronismo then
                SQLConnectOrigem.StartTransaction(TD_Origem);
              LinhaPorLinha;
              if not bParar_Sincronismo then
                SqlLocal.SQL.Text := 'UPDATE BACKUP_SINCRONISMO SET ERRO = ' + quotedstr(sErro) + ' WHERE IDSINCRONISMO = ' +
                  sIdSincronismo;
              LinhaPorLinha;
              if not bParar_Sincronismo then
                SqlLocal.ExecSQL();
              LinhaPorLinha;
              if not bParar_Sincronismo then
                SQLConnectOrigem.commit(TD_Origem);
              LinhaPorLinha;
            end;
          LinhaPorLinha; //if SQLConnectOrigem.Connected then
        end;
      end;
      LinhaPorLinha; // try except
      //teste final de loo
      if bParar_Sincronismo then
      begin
        LinhaporLinha;
        break;
      end;
      LinhaPorLinha; //parar loop: while not CdsScript.eof do
    end;

    CdsScript.Close;
    DeleteFile(snome_arquivo_xml);

  end;
end;

procedure TFrmPrincipalSincronismo.DescansoCPU(iTempo: Integer);
var
  var_tempo: Integer;
begin
  var_tempo := 0;

  while var_tempo <= (itempo * 10) do
  begin
    Sleep(100);
    Application.ProcessMessages;
    Inc(var_tempo);
  end;

end;

procedure TFrmPrincipalSincronismo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.

