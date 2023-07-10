unit ReplicacaoWebService;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, DBXpress, DB, SqlExpr, FMTBcd, DBClient, Provider, IdMultipartFormData,
  ComCtrls, ExtCtrls;

const
  OffsetMemoryStream: Int64 = 0;

type
  TFrmReplicacaoWebService = class(TForm)
    IdHTTP1: TIdHTTP;
    Conexao: TSQLConnection;
    SqlSincronismo: TSQLQuery;
    DspSincronismo: TDataSetProvider;
    CdsSincronismo: TClientDataSet;
    DsSincronismo: TDataSource;
    OpenDialog1: TOpenDialog;
    BtnEnvia: TButton;
    SqlExecute: TSQLQuery;
    DspExecute: TDataSetProvider;
    CdsExecute: TClientDataSet;
    DsExecute: TDataSource;
    BtnRecebe: TButton;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    CkAtualizacao: TCheckBox;
    Timer2: TTimer;
    Memo1: TMemo;
    SqlSincronismoBlob: TSQLQuery;
    DspSincronismoBlob: TDataSetProvider;
    CdsSincronismoBlob: TClientDataSet;
    DsSincronismoBlob: TDataSource;
    BtnEnviarBlob: TButton;
    procedure BtnEnviaClick(Sender: TObject);
    procedure BtnRecebeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure IdHTTP1Work(Sender: TObject; AWorkMode: TWorkMode;
      const AWorkCount: Integer);
    procedure IdHTTP1WorkBegin(Sender: TObject; AWorkMode: TWorkMode;
      const AWorkCountMax: Integer);
    procedure IdHTTP1WorkEnd(Sender: TObject; AWorkMode: TWorkMode);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure IdHTTP1Status(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: string);
    procedure BtnEnviarBlobClick(Sender: TObject);
    procedure CkAtualizacaoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    TD_Origem, TD_Destino: TTransactionDesc; // Para os Lançamentos .
    function ContemValor(sCompare, sString: string): Boolean;
    function EnvioArquivo(sArquivo: string): boolean;
    function RecebeArquivo(arquivo_recebe: string): boolean;
    function ValorDaPosicao(sLinha: string; iPosicao: integer): string;
    function LimpaServidor(primeiroidsincronismo, ultimoidsincronismo: string; tipo_sincronismo: string = 'registro'): boolean;
    function ApenasCharValido(pStr: string): string;
    procedure FechaLogErroAlb;
    procedure IniciaLogErroAlb;
    procedure TextoLogErro(Texto: string);
    procedure Sincronismo_Blob;
    function EnvioBlob(tabela, campo, nome_pk, valor_pk: string; MemoryStream: TMemoryStream): boolean;
    function RecebeBlob: boolean;
    procedure FinalizaTransacao;
    procedure IniciaTransacao;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReplicacaoWebService: TFrmReplicacaoWebService;
  url_envio: string = 'http://localhost/nat/envio.php';
  url_recebe: string = 'http://localhost/nat/recebe.php';
  url_limpa: string = 'http://localhost/nat/limpa.php';
  url_get_arquivo: string = 'http://localhost/teste/';
  url_blob: string = 'http://localhost/nat/blob.php';
  identidade_banco_dados: string = 'INDEFINIDO';
  ArqLogErro: TextFile;
  iSomados: integer = 0;
  tempo_atulizacao_segundos: string = '';
  tem_proxy, sBasicAuthentication: boolean;

  executar: boolean;

  sProxyServer, sProxyPort, sProxyUsername, sProxyPassword: string;



implementation

{$R *.dfm}

procedure TFrmReplicacaoWebService.IniciaTransacao();
begin

  try
    TD_Destino.TransactionID := trunc(now * 10000);
    TD_Destino.IsolationLevel := xilREADCOMMITTED;
    Conexao.StartTransaction(TD_Destino);
  except
  end;

end;

procedure TFrmReplicacaoWebService.FinalizaTransacao();
begin

  try
    Conexao.Commit(TD_Destino);
  except
  end;

end;



procedure TFrmReplicacaoWebService.IniciaLogErroAlb;
var
  CaminhoLog: string;
begin

  try

    CaminhoLog := ExtractFilePath(Application.ExeName) +
      'webservice-' + FormatDateTime('dd-mm-yyyy', Date) + '.Log';

    AssignFile(ArqLogErro, CaminhoLog);

    if not FileExists(CaminhoLog) then
      Rewrite(ArqLogErro, CaminhoLog);

    Append(ArqLogErro);

  except
  end;
end;

procedure TFrmReplicacaoWebService.FechaLogErroAlb;
begin
  try
    CloseFile(ArqLogErro);
  except
  end;
end;

procedure TFrmReplicacaoWebService.TextoLogErro(Texto: string);
var
  TempoTxT: string;
  DsErros: TClientDataSet;
begin

  try

    IniciaLogErroAlb;

    TempoTxT := #13 + #10 +
      '*************************************************************************'
      + #13 + #10 + 'DIA: ' + FormatDateTime('DD/MM/YYYY', Date)
      + #13 + #10 + 'HORA: ' + FormatDateTime('hh:nn:ss.zzz', time)
      + #13 + #10 + 'FONTE: '
      + Texto + #13 + #10 +
      '*************************************************************************';

    Memo1.Font.Color := clNavy;
    if ContemValor('Exception', TempoTxT) then
      Memo1.Font.Color := clRed;

    Memo1.Lines.Clear;
    Memo1.Lines.Add(TempoTxT);
    Memo1.Repaint;

    Application.ProcessMessages;

    WriteLn(ArqLogErro, TempoTxT);

    FechaLogErroAlb;

  except
  end;

end;

function TFrmReplicacaoWebService.ApenasCharValido(pStr: string): string;
var
  I: Integer;
begin
  Result := '';
  for I := 1 to Length(pStr) do
    if pStr[I] in ['0'..'9', 'A'..'Z', 'a'..'z'] then
      Result := Result + pStr[I];
end;


function TFrmReplicacaoWebService.ContemValor(sCompare, sString: string): Boolean;
var
  P: Byte;
begin
  try
    Result := False;
    P := Pos(sCompare, sString);
    if P > 0 then
      Result := True;
  except
    on e: Exception do
    begin
      TextoLogErro('ContemValor.Exception: ' + e.Message);
    end;
  end;
end;

function TFrmReplicacaoWebService.ValorDaPosicao(sLinha: string; iPosicao: integer): string;
var
  i, x: Integer;
  sTrabalho, sDados, sFora: string;
begin

  sTrabalho := sLinha;
  x := 1;
  sFora := '';
  while (x <= iPosicao) do
  begin
    i := Pos('|', sTrabalho);
    sFora := sFora + Copy(sTrabalho, 1, i);
    sTrabalho := Copy(sTrabalho, i + 1, Length(sTrabalho));
    i := Pos('|', sTrabalho);
    sDados := Copy(sTrabalho, 1, i - 1);
    inc(x);
  end;

  result := sDados;

end;

function TFrmReplicacaoWebService.EnvioArquivo(sArquivo: string): boolean;
var
  Stream: TIdMultipartFormDataStream;
  Idhttp: TIDHttp;
  sRetorno: string;
begin

  try

    result := false;

    Idhttp := TIDHttp.Create(nil);

    Idhttp.OnWork := IdHTTP1Work;
    Idhttp.OnWorkBegin := IdHTTP1WorkBegin;
    Idhttp.OnWorkEnd := IdHTTP1WorkEnd;

    Idhttp.HandleRedirects := true;
    Idhttp.ReadTimeout := 6000000;

    if tem_proxy then
    begin
      Idhttp.ProxyParams.ProxyServer := sProxyServer;
      Idhttp.ProxyParams.ProxyPort := strtointdef(sProxyPort, 0);
      Idhttp.ProxyParams.BasicAuthentication := sBasicAuthentication;
      Idhttp.ProxyParams.ProxyUsername := sProxyUsername;
      Idhttp.ProxyParams.ProxyPassword := sProxyPassword;
    end;


    //criando os parametros
    Stream := TIdMultiPartFormDataStream.Create;
    //enviando
    Stream.AddFormField('usuario', 'siapen');
    Stream.AddFormField('senha', 'agepensiap');
    Stream.AddFormField('identidade_banco_dados', identidade_banco_dados);
    Stream.AddFile('arquivo', sArquivo, 'application/octet-stream');

    IdHTTP.Request.CustomHeaders.Clear;
    IdHTTP.Request.Clear;
    IdHTTP.Request.ContentType := 'application/x-www-form-urlencoded';
    IdHTTP.Request.ContentEncoding := 'multipart/form-data';

    //aqui no caso estou mandando para uma php, mais pode ser para
    //qualquer servidor(java, asp, delphi, etc)
    sRetorno := IdHTTP.Post(url_envio, Stream);

    result := ContemValor('[OK CONCLUIDO]', sRetorno);

    if not result then
      TextoLogErro('EnvioArquivo.Result=False')
    else
      TextoLogErro('EnvioArquivo.Result=True');

    TextoLogErro('EnvioArquivo.Post(' + url_envio + ', Stream)=' + sRetorno);

    deletefile(sArquivo);

  except
    on e: Exception do
    begin
      TextoLogErro('EnvioArquivo.Exception: ' + e.Message);
    end;
  end;

  FreeAndNil(Stream);

end;

function TFrmReplicacaoWebService.RecebeArquivo(arquivo_recebe: string): boolean;
var
  Stream: TIdMultipartFormDataStream;
  Idhttp: TIDHttp;
  sRetorno: string;
  ArquivoRecebido: TFileStream;
begin

  try

    Idhttp := TIDHttp.Create(nil);

    Idhttp.OnWork := IdHTTP1Work;
    Idhttp.OnWorkBegin := IdHTTP1WorkBegin;
    Idhttp.OnWorkEnd := IdHTTP1WorkEnd;

    Idhttp.HandleRedirects := true;
    Idhttp.ReadTimeout := 60000000;

    if tem_proxy then
    begin
      Idhttp.ProxyParams.ProxyServer := sProxyServer;
      Idhttp.ProxyParams.ProxyPort := strtointdef(sProxyPort, 0);
      Idhttp.ProxyParams.BasicAuthentication := sBasicAuthentication;
      Idhttp.ProxyParams.ProxyUsername := sProxyUsername;
      Idhttp.ProxyParams.ProxyPassword := sProxyPassword;
    end;

    //criando os parametros
    Stream := TIdMultiPartFormDataStream.Create;
    Stream.AddFormField('usuario', 'siapen');
    Stream.AddFormField('senha', 'agepensiap');
    Stream.AddFormField('arquivo_recebe', arquivo_recebe);
    Stream.AddFormField('identidade_banco_dados', identidade_banco_dados);

    IdHTTP.Request.CustomHeaders.Clear;
    IdHTTP.Request.Clear;
    IdHTTP.Request.ContentType := 'application/x-www-form-urlencoded';
    IdHTTP.Request.ContentEncoding := 'multipart/form-data';

    sRetorno := IdHTTP.Post(url_recebe, Stream);
    TextoLogErro('RecebeArquivo.Post(' + url_recebe + ', Stream)=' + sRetorno);

    if ContemValor('[OK CONCLUIDO]', 'XX' + sRetorno) then
    begin
      try
        ArquivoRecebido := TFileStream.Create(arquivo_recebe, fmCreate);
        //saber se o download concluiu
        try

          FreeAndNil(Idhttp);

          Idhttp := TIDHttp.Create(nil);

          Idhttp.OnWork := IdHTTP1Work;
          Idhttp.OnWorkBegin := IdHTTP1WorkBegin;
          Idhttp.OnWorkEnd := IdHTTP1WorkEnd;

          Idhttp.HandleRedirects := true;
          Idhttp.ReadTimeout := 60000000;

          if tem_proxy then
          begin
            Idhttp.ProxyParams.ProxyServer := sProxyServer;
            Idhttp.ProxyParams.ProxyPort := strtointdef(sProxyPort, 0);
            Idhttp.ProxyParams.BasicAuthentication := sBasicAuthentication;
            Idhttp.ProxyParams.ProxyUsername := sProxyUsername;
            Idhttp.ProxyParams.ProxyPassword := sProxyPassword;
          end;

          IdHTTP.Request.CustomHeaders.Clear;
          IdHTTP.Request.Clear;
          IdHTTP.Request.ContentType := 'application/x-www-form-urlencoded';
          IdHTTP.Request.ContentEncoding := 'multipart/form-data';

          IdHTTP.Get(url_get_arquivo + arquivo_recebe, ArquivoRecebido); // fazendo o download do arquivo
          TextoLogErro('RecebeArquivo.Get(' + url_get_arquivo + arquivo_recebe + ', Stream)');
        except
          on e: Exception do
          begin
            TextoLogErro('RecebeArquivo.Exception(1): ' + e.Message);
          end;
        end;
      finally
        FreeAndNil(ArquivoRecebido);
      end;

    end;

  except
    on e: Exception do
    begin
      TextoLogErro('RecebeArquivo.Exception(2): ' + e.Message);
    end;
  end;

  FreeAndNil(Stream);
  result := FileExists(arquivo_recebe);

end;

function TFrmReplicacaoWebService.LimpaServidor(primeiroidsincronismo, ultimoidsincronismo: string; tipo_sincronismo: string = 'registro'): boolean;
var
  Stream: TIdMultipartFormDataStream;
  Idhttp: TIDHttp;
  sRetorno: string;
  ArquivoRecebido: TFileStream;
begin

  try

    Idhttp := TIDHttp.Create(nil);

    Idhttp.OnWork := IdHTTP1Work;
    Idhttp.OnWorkBegin := IdHTTP1WorkBegin;
    Idhttp.OnWorkEnd := IdHTTP1WorkEnd;

    Idhttp.HandleRedirects := true;
    Idhttp.ReadTimeout := 6000000;

    if tem_proxy then
    begin
      Idhttp.ProxyParams.ProxyServer := sProxyServer;
      Idhttp.ProxyParams.ProxyPort := strtointdef(sProxyPort, 0);
      Idhttp.ProxyParams.BasicAuthentication := sBasicAuthentication;
      Idhttp.ProxyParams.ProxyUsername := sProxyUsername;
      Idhttp.ProxyParams.ProxyPassword := sProxyPassword;
    end;

    //criando os parametros
    Stream := TIdMultiPartFormDataStream.Create;

    Stream.AddFormField('usuario', 'siapen');
    Stream.AddFormField('senha', 'agepensiap');
    Stream.AddFormField('primeiroidsincronismo', primeiroidsincronismo);
    TextoLogErro('LimpaServidor.primeiroidsincronismo=' + primeiroidsincronismo);
    Stream.AddFormField('ultimoidsincronismo', ultimoidsincronismo);
    TextoLogErro('LimpaServidor.ultimoidsincronismo=' + ultimoidsincronismo);
    Stream.AddFormField('identidade_banco_dados', identidade_banco_dados);
    TextoLogErro('LimpaServidor.identidade_banco_dados=' + identidade_banco_dados);
    Stream.AddFormField('tipo_sincronismo', tipo_sincronismo);
    TextoLogErro('LimpaServidor.tipo_sincronismo=' + tipo_sincronismo);

    IdHTTP.Request.CustomHeaders.Clear;
    IdHTTP.Request.Clear;
    IdHTTP.Request.ContentType := 'application/x-www-form-urlencoded';
    IdHTTP.Request.ContentEncoding := 'multipart/form-data';

    TextoLogErro('LimpaServidor.Post(' + url_limpa + ', Stream)');
    sRetorno := IdHTTP.Post(url_limpa, Stream);

    result := ContemValor('[OK CONCLUIDO]', sRetorno);

  except
    on e: Exception do
    begin
      TextoLogErro('LimpaServidor.Exception: ' + e.Message + ' - ' + sRetorno);
    end;

  end;

  FreeAndNil(Stream);

end;


procedure TFrmReplicacaoWebService.BtnEnviaClick(Sender: TObject);
var
  sArquivo, sScript,
    sRenome, sPrimeiroIdSinc, sUltimoIdSinc, sSql: string;
  ArqTexto: TextFile;

begin
  Timer1.Enabled := False;
  Timer2.Enabled := False;

  executar := BtnEnvia.Enabled and BtnRecebe.Enabled and BtnEnviarBlob.Enabled;

  if not executar then
    exit;

  BtnEnvia.Enabled := False;

  Conexao.Connected := false;
  Conexao.Connected := true;

{ Dentro do php.ini

  magic_quotes_sybase = On

  coloquem assim:
  ;default_mimetype = "text/html"
  default_charset = "iso-8859-1"

}

  {
  sArquivo := 'sincronismo10-2012-09-28-0915-07-887.sql';
  sPrimeiroIdSinc := '0';
  sUltimoIdSinc := '0';
  }

  Conexao.Connected := true;

  sArquivo := 'envio' + identidade_banco_dados
    + '-' + FormatDateTime('yyyy-mm-dd-hhmm-ss-zzz', now)
    + '.sql';

  sPrimeiroIdSinc := '0';
  sUltimoIdSinc := '0';

  with DsSincronismo.DataSet do
  begin
    try
      try

        close;
        open;

        if recordcount > 0 then
        begin
          AssignFile(ArqTexto, sArquivo);
          ReWrite(ArqTexto);
          DisableControls;
          first;
          sPrimeiroIdSinc := fieldbyname('idsincronismo').AsString;
          while not eof do
          begin
            sScript := fieldbyname('script').AsString;
            WriteLn(ArqTexto, sScript);
            next;
          end;
          sUltimoIdSinc := fieldbyname('idsincronismo').AsString;
          first;
          EnableControls;
        end;

      except
        on e: Exception do
        begin
          TextoLogErro('LimpaServidor.Exception: ' + e.Message);
        end;
      end;
    finally
      if recordcount > 0 then
        CloseFile(ArqTexto);
    end;
  end;

  if DsSincronismo.DataSet.RecordCount > 0 then
  begin

    if EnvioArquivo(sArquivo) then
    begin

      sSql := 'insert into sincronismo_arquivo (idsincronismo_arquivo, nome_arquivo, data_hora, tipo_envio_recebido, primeiro_idsincronismo, ultimo_idsincronismo) '
        + 'values (0, ' + QuotedStr(sArquivo) + ', ''now'', ''ENVIO'', ' + sPrimeiroIdSinc + ', ' + sUltimoIdSinc + ')';
      TextoLogErro(sSql);

      deletefile(sArquivo);

      IniciaTransacao();
      try
        Conexao.ExecuteDirect(sSql);
        FinalizaTransacao;
      except
        FinalizaTransacao;
      end;


      with DsSincronismo.DataSet do
      begin
        Label1.Caption := 'Limpando base de dados: ' + sPrimeiroIdSinc + '-' + sUltimoIdSinc;
        first;
        while not eof do
        begin
          sSql := 'delete from sincronismo where idsincronismo=' + fieldbyname('idsincronismo').AsString;
          TextoLogErro(sSql);
          try
            IniciaTransacao();
            Conexao.ExecuteDirect(sSql);
            FinalizaTransacao;
          except
            FinalizaTransacao;
          end;
          next;
        end;
      end;

    end
    else
    begin

      sSql := 'insert into sincronismo_arquivo (idsincronismo_arquivo, nome_arquivo, data_hora, tipo_envio_recebido, primeiro_idsincronismo, ultimo_idsincronismo) '
        + 'values (0, ' + QuotedStr(sArquivo) + ', ''now'', ''ERRO ENV'', ' + sPrimeiroIdSinc + ', ' + sUltimoIdSinc + ')';
      TextoLogErro(sSql);
      try
        IniciaTransacao();
        Conexao.ExecuteDirect(sSql);
        FinalizaTransacao;
      except
        FinalizaTransacao;
      end;

    end;

  end;

  DsSincronismo.DataSet.close;

  BtnEnvia.Enabled := true;


end;

procedure TFrmReplicacaoWebService.BtnRecebeClick(Sender: TObject);
var
  cArquivo: TextFile;
  sNomeArquivo, sLinha, sPrimeiroIdSincronismo, sUltimoIdSincronismo, sScript,
    idsincronismo_controle, sTrabalho, sProximo,
    sAtualIdSincronismo: string;
  iPosPipe: integer;
begin
  Timer1.Enabled := False;
  Timer2.Enabled := False;

  executar := BtnEnvia.Enabled and BtnRecebe.Enabled and BtnEnviarBlob.Enabled;

  if not executar then
    exit;

  BtnRecebe.Enabled := false;

  Conexao.Connected := false;
  Conexao.Connected := true;

  sNomeArquivo := 'recebe' + identidade_banco_dados
    + '-' + FormatDateTime('yyyy-mm-dd-hhmm-ss-zzz', now)
    + '.sql';

  Label1.Caption := 'Solicitando: ' + sNomeArquivo;
  Label1.Repaint;

  if RecebeArquivo(sNomeArquivo) then
  begin

    Label1.Caption := 'Recebendo: ' + sNomeArquivo;
    Label1.Repaint;

    AssignFile(cArquivo, sNomeArquivo);
    Reset(cArquivo);

    sPrimeiroIdSincronismo := '';
    sScript := '';
    sProximo := '';

    try

      while not EOF(cArquivo) do
      begin

        ProgressBar1.StepIt;

        // captura a linha e avança para próxima
        ReadLn(cArquivo, sLinha);

        //Pegando o primeiro idsincronismo
        if sPrimeiroIdSincronismo = '' then
          sPrimeiroIdSincronismo := ValorDaPosicao(sLinha, 1);

        //Pegando o ultimo idsincronismo
        sAtualIdSincronismo := ValorDaPosicao(sLinha, 1);

        sScript := '';

        if strtointdef(sAtualIdSincronismo, 0) > 0 then
        begin
          sUltimoIdSincronismo := sAtualIdSincronismo;
          sScript := sProximo;
          sTrabalho := copy(sLinha, 2, length(sLinha));
          iPosPipe := pos('|', sTrabalho);
          sProximo := ValorDaPosicao(sLinha, 2);
          if sProximo = '' then
            sProximo := copy(sTrabalho, iPosPipe + 1, length(sTrabalho));
        end
        else
        begin
          sProximo := sProximo + #13 + #10 + copy(sLinha, 1, length(sLinha) - 1);
        end;

        if trim(sScript) <> '' then
        begin

          try
            TextoLogErro(sScript);
            IniciaTransacao();
            Conexao.ExecuteDirect(sScript);
            FinalizaTransacao;
          except
            on e: Exception do
            begin
              FinalizaTransacao;
              TextoLogErro('BtnRecebeClick.Exception: ' + e.Message);
            end;
          end;

        end;

      end; //while not EOF(cArquivo) do

      sScript := sProximo;

      try
        TextoLogErro(sScript);
        IniciaTransacao();
        Conexao.ExecuteDirect(sScript);
        FinalizaTransacao;
      except
        on e: Exception do
        begin
          FinalizaTransacao;
          TextoLogErro('BtnRecebeClick.Exception: ' + e.Message);
        end;
      end;

      ProgressBar1.Position := 0;

    except
      on e: Exception do
      begin
        TextoLogErro('BtnRecebeClick.Exception: ' + e.Message);
      end;
    end;

    if sPrimeiroIdSincronismo <> '' then
    begin
      Label1.Caption := 'Limpando servidor: ' + sPrimeiroIdSincronismo + '-' + sUltimoIdSincronismo;
      Label1.Repaint;
      deletefile(sNomeArquivo);
      LimpaServidor(sPrimeiroIdSincronismo, sUltimoIdSincronismo);
    end;

    CloseFile(cArquivo);

  end;

  BtnRecebe.Enabled := true;

end;

procedure TFrmReplicacaoWebService.FormCreate(Sender: TObject);
begin

  if FileExists('webservice.ini') then
  begin

    TextoLogErro('Iniciando replicação.');

    Conexao.Connected := False;
    Conexao.LoadParamsFromIniFile('webservice.ini');
    Conexao.Params.Values['User_Name'] := 'SINCRONIZADOR';
    Conexao.Params.Values['Password'] := 'albatroz';

    url_envio := Conexao.Params.Values['url_envio'];
    url_recebe := Conexao.Params.Values['url_recebe'];
    url_limpa := Conexao.Params.Values['url_limpa'];
    url_get_arquivo := Conexao.Params.Values['url_get_arquivo'];
    url_blob := Conexao.Params.Values['url_blob'];

    tem_proxy := (Conexao.Params.Values['tem_proxy'] = 'S');
    sProxyServer := Conexao.Params.Values['sProxyServer'];
    sProxyPort := Conexao.Params.Values['sProxyPort'];
    sBasicAuthentication := (Conexao.Params.Values['sBasicAuthentication'] = 'S');
    sProxyUsername := Conexao.Params.Values['sProxyUsername'];
    sProxyPassword := Conexao.Params.Values['sProxyPassword'];

    tempo_atulizacao_segundos := Conexao.Params.Values['tempo_atulizacao_segundos'];

    if strtointdef(tempo_atulizacao_segundos, 0) > 0 then
      Timer1.Interval := strtointdef(tempo_atulizacao_segundos, 0) * 1000;

    SqlExecute.SQL.Text := 'select first 1 usuario from sincronismo_controle';
    DsExecute.DataSet.Close;
    DsExecute.DataSet.Open;
    identidade_banco_dados := DsExecute.DataSet.fieldbyname('usuario').AsString;
    DsExecute.DataSet.Close;

    Conexao.Connected := True;

    CkAtualizacao.Caption := 'Replicacão em funcionamento - ' + identidade_banco_dados;

  end;


end;

procedure TFrmReplicacaoWebService.IdHTTP1Work(Sender: TObject;
  AWorkMode: TWorkMode; const AWorkCount: Integer);
begin

  ProgressBar1.Position := AWorkCount;
  Application.ProcessMessages;

end;

procedure TFrmReplicacaoWebService.IdHTTP1WorkBegin(Sender: TObject;
  AWorkMode: TWorkMode; const AWorkCountMax: Integer);
begin

  ProgressBar1.Position := 0;
  ProgressBar1.Max := AWorkCountMax;
  Label1.caption := 'Conexão em andamento, espere!';
  Label1.Repaint;
  Application.ProcessMessages;

end;

procedure TFrmReplicacaoWebService.IdHTTP1WorkEnd(Sender: TObject;
  AWorkMode: TWorkMode);
begin

  ProgressBar1.Position := ProgressBar1.Max;
  Label1.caption := 'Aguarde, conclusão...';
  Label1.Repaint;
  Application.ProcessMessages;

end;

procedure ZapFiles(vMasc: string);
{Apaga arquivos usando mascaras tipo: *.zip, *.* }
var Dir: TsearchRec;
  Erro: Integer;
begin
  Erro := FindFirst(vMasc, faArchive, Dir);
  while Erro = 0 do begin
    DeleteFile(ExtractFilePAth(vMasc) + Dir.Name);
    Erro := FindNext(Dir);
  end;
  FindClose(Dir);
end;

procedure TFrmReplicacaoWebService.Timer1Timer(Sender: TObject);
begin

  if not CkAtualizacao.Checked then
    exit;

  executar := BtnEnvia.Enabled and BtnRecebe.Enabled and BtnEnviarBlob.Enabled;

  if not executar then
    exit;
  iSomados := 0;

  Timer1.Enabled := False;
  Timer2.Enabled := False;

  ZapFiles('*.sql');
  ZapFiles('*.SQL');

  if BtnEnvia.Enabled then
  begin
    BtnEnviaClick(nil);
    BtnEnvia.Enabled := True;
  end;

  if BtnRecebe.Enabled then
  begin
    BtnRecebeClick(nil);
    BtnRecebe.Enabled := True;
  end;

  if BtnEnviarBlob.Enabled then
  begin
    BtnEnviarBlobClick(nil);
    BtnEnviarBlob.Enabled := true;
  end;

  Timer1.Enabled := True;
  Timer2.Enabled := True;

end;

procedure TFrmReplicacaoWebService.Timer2Timer(Sender: TObject);
begin

  executar := BtnEnvia.Enabled and BtnRecebe.Enabled and BtnEnviarBlob.Enabled;

  if not executar then
  begin
    iSomados := 0;
    exit;
  end;

  label1.Caption := 'Próxima atualização em ' + tempo_atulizacao_segundos + ' segundos. (' + inttostr(iSomados) + 's) ';

  inc(iSomados);

end;

procedure TFrmReplicacaoWebService.IdHTTP1Status(ASender: TObject;
  const AStatus: TIdStatus; const AStatusText: string);
begin

  Label1.caption := 'Conexão :' + AStatusText;
  Application.ProcessMessages;

end;


function TFrmReplicacaoWebService.EnvioBlob(tabela, campo, nome_pk, valor_pk: string; MemoryStream: TMemoryStream): boolean;
var
  Stream: TIdMultipartFormDataStream;
  Idhttp: TIDHttp;
  sRetorno: string;
begin

  try

    result := false;

    Idhttp := TIDHttp.Create(nil);

    Idhttp.OnWork := IdHTTP1Work;
    Idhttp.OnWorkBegin := IdHTTP1WorkBegin;
    Idhttp.OnWorkEnd := IdHTTP1WorkEnd;

    Idhttp.HandleRedirects := true;
    Idhttp.ReadTimeout := 6000000;

    if tem_proxy then
    begin
      Idhttp.ProxyParams.ProxyServer := sProxyServer;
      Idhttp.ProxyParams.ProxyPort := strtointdef(sProxyPort, 0);
      Idhttp.ProxyParams.BasicAuthentication := sBasicAuthentication;
      Idhttp.ProxyParams.ProxyUsername := sProxyUsername;
      Idhttp.ProxyParams.ProxyPassword := sProxyPassword;
    end;

    //criando os parametros
    Stream := TIdMultiPartFormDataStream.Create;
    //enviando
    Stream.AddFormField('usuario', 'siapen');
    Stream.AddFormField('senha', 'agepensiap');
    Stream.AddFormField('identidade_banco_dados', identidade_banco_dados);

    Stream.AddFormField('tabela', tabela);
    Stream.AddFormField('campo', campo);
    Stream.AddFormField('nome_pk', nome_pk);
    Stream.AddFormField('valor_pk', valor_pk);
    Stream.AddFormField('tipo_conexao', 'envio');

    Stream.AddObject('arquivo_blob', 'application/octet-stream', MemoryStream);

    IdHTTP.Request.CustomHeaders.Clear;
    IdHTTP.Request.Clear;
    IdHTTP.Request.ContentType := 'application/x-www-form-urlencoded';
    IdHTTP.Request.ContentEncoding := 'multipart/form-data';

    //aqui no caso estou mandando para uma php, mais pode ser para
    //qualquer servidor(java, asp, delphi, etc)
    sRetorno := IdHTTP.Post(url_blob, Stream);

    result := ContemValor('[OK CONCLUIDO]', sRetorno);

    if not result then
      TextoLogErro('EnvioBlob.Result=False')
    else
    begin

      TextoLogErro('EnvioBlob.Result=True');

    end;

    TextoLogErro('EnvioBlob.Post(' + url_blob + ', Stream)=' + sRetorno);

  except
    on e: Exception do
    begin
      TextoLogErro('EnvioBlob.Exception: ' + e.Message);
    end;
  end;

  FreeAndNil(Stream);

end;

function TFrmReplicacaoWebService.RecebeBlob(): boolean;
var
  Stream: TIdMultipartFormDataStream;
  Idhttp: TIDHttp;
  sRetorno, arquivo_recebe, arquivo_blob,
    sIdSincronismoBlob: string;
  ArquivoRecebido: TFileStream;
  BlobRecebido: TFileStream;
  MemoryStream: TMemoryStream;
  tabela, campo, nome_pk, valor_pk, sLinha, sStream, stempo, sTexto, sValida: string;
  cArquivo: TextFile;
begin

  stempo := identidade_banco_dados
    + '-' + FormatDateTime('yyyy-mm-dd-hhmm-ss-zzz', now);

  arquivo_recebe := 'orientacao' + stempo + '.sql';

  arquivo_blob := 'blob' + stempo + '.txt';

  Label1.Caption := 'Solicitando: ' + arquivo_recebe;
  Label1.Repaint;

  try

    Idhttp := TIDHttp.Create(nil);

    Idhttp.OnWork := IdHTTP1Work;
    Idhttp.OnWorkBegin := IdHTTP1WorkBegin;
    Idhttp.OnWorkEnd := IdHTTP1WorkEnd;

    Idhttp.HandleRedirects := true;
    Idhttp.ReadTimeout := 60000000;

    if tem_proxy then
    begin
      Idhttp.ProxyParams.ProxyServer := sProxyServer;
      Idhttp.ProxyParams.ProxyPort := strtointdef(sProxyPort, 0);
      Idhttp.ProxyParams.BasicAuthentication := sBasicAuthentication;
      Idhttp.ProxyParams.ProxyUsername := sProxyUsername;
      Idhttp.ProxyParams.ProxyPassword := sProxyPassword;
    end;

    IdHTTP.Request.CustomHeaders.Clear;
    IdHTTP.Request.Clear;
    IdHTTP.Request.ContentType := 'application/x-www-form-urlencoded';
    IdHTTP.Request.ContentEncoding := 'multipart/form-data';


    //criando os parametros
    Stream := TIdMultiPartFormDataStream.Create;
    Stream.AddFormField('usuario', 'siapen');
    Stream.AddFormField('senha', 'agepensiap');
    Stream.AddFormField('arquivo_recebe', arquivo_recebe);
    Stream.AddFormField('arquivo_blob', arquivo_blob);
    Stream.AddFormField('identidade_banco_dados', identidade_banco_dados);
    Stream.AddFormField('tipo_conexao', 'recebe');

    sRetorno := IdHTTP.Post(url_blob, Stream);

    TextoLogErro('RecebeBlob.Post(' + url_blob + ', Stream)=' + sRetorno);

    if length(sRetorno) > 0 then
    begin

      try
        ArquivoRecebido := TFileStream.Create(arquivo_recebe, fmCreate);
        //saber se o download concluiu
        try
          FreeAndNil(Idhttp);

          Idhttp := TIDHttp.Create(nil);

          Idhttp.OnWork := IdHTTP1Work;
          Idhttp.OnWorkBegin := IdHTTP1WorkBegin;
          Idhttp.OnWorkEnd := IdHTTP1WorkEnd;

          Idhttp.HandleRedirects := true;
          Idhttp.ReadTimeout := 60000000;

          if tem_proxy then
          begin
            Idhttp.ProxyParams.ProxyServer := sProxyServer;
            Idhttp.ProxyParams.ProxyPort := strtointdef(sProxyPort, 0);
            Idhttp.ProxyParams.BasicAuthentication := sBasicAuthentication;
            Idhttp.ProxyParams.ProxyUsername := sProxyUsername;
            Idhttp.ProxyParams.ProxyPassword := sProxyPassword;
          end;

          IdHTTP.Request.CustomHeaders.Clear;
          IdHTTP.Request.Clear;
          IdHTTP.Request.ContentType := 'application/x-www-form-urlencoded';
          IdHTTP.Request.ContentEncoding := 'multipart/form-data';

          IdHTTP.Get(url_get_arquivo + arquivo_recebe, ArquivoRecebido); // fazendo o download do arquivo
          TextoLogErro('RecebeBlob.Get(' + url_get_arquivo + arquivo_recebe + ', Stream)');

        except
          on e: Exception do
          begin
            TextoLogErro('RecebeBlob.Exception: ' + e.Message);
          end;
        end;
      finally
        FreeAndNil(ArquivoRecebido);
      end;

      if FileExists(arquivo_recebe) then
      begin

        try
          //saber se o download concluiu
          try
            AssignFile(cArquivo, arquivo_recebe);
            Reset(cArquivo);
            ReadLn(cArquivo, sLinha);

            sTexto := '';
            sStream := '';
            ReadLn(cArquivo, sTexto);
            sStream := sStream + sTexto;

            sValida := copy(sRetorno, 1, length(sStream));
            if sValida = sStream then
            begin

              sStream := sRetorno;

              MemoryStream := TMemoryStream.Create;
              MemoryStream.WriteBuffer(Pointer(sStream)^, length(sStream));
              MemoryStream.Position := OffsetMemoryStream;

              sIdSincronismoBlob := ValorDaPosicao(sLinha, 1);
              tabela := ValorDaPosicao(sLinha, 2);
              campo := ValorDaPosicao(sLinha, 3);
              nome_pk := ValorDaPosicao(sLinha, 4);
              valor_pk := ValorDaPosicao(sLinha, 5);

              SqlExecute.SQL.Text := 'select * from ' + tabela
                + ' where ' + nome_pk + ' = ' + valor_pk;

              DsExecute.DataSet.close;
              DsExecute.DataSet.open;

              if not DsExecute.DataSet.IsEmpty then
              begin

                TD_Destino.TransactionID := 1;
                TD_Destino.IsolationLevel := xilREADCOMMITTED;
                Conexao.StartTransaction(TD_Destino);
                DsExecute.DataSet.Edit;
                TBlobField(DsExecute.DataSet.FieldByName(campo)).LoadFromStream(MemoryStream);
                DsExecute.DataSet.Post;
                TClientDataSet(DsExecute.DataSet).ApplyUpdates(0);
                Conexao.Commit(TD_Destino);

              end;

              DsExecute.DataSet.close;

              if sIdSincronismoBlob <> '' then
              begin
                Label1.Caption := 'Limpando servidor sIdSincronismoBlob: ' + sIdSincronismoBlob;
                Label1.Repaint;
                deletefile(arquivo_recebe);
                LimpaServidor(sIdSincronismoBlob, sIdSincronismoBlob, 'blob');
              end;

            end;

            CloseFile(cArquivo);

          except
            on e: Exception do
            begin
              TextoLogErro('RecebeBlob.Exception: ' + e.Message);
            end;
          end;

        finally
          FreeAndNil(ArquivoRecebido);
        end;
      end;
    end;
  except
    on e: Exception do
    begin
      TextoLogErro('RecebeBlob.Exception: ' + e.Message);
    end;
  end;

  FreeAndNil(Stream);
  result := FileExists(arquivo_recebe);

end;

procedure TFrmReplicacaoWebService.Sincronismo_Blob();
var sNomeArquivo, sPrimeiroIdSinc, sUltimoIdSinc, sScript, sSql: string;
  MemoryStream: TMemoryStream;
begin

  if not DirectoryExists('blob') then
    MkDir('blob');

  with DsSincronismoBlob.DataSet do
  begin

    //primeiro vai na tabela de sincronismo e pega um registro
    SqlSincronismoBlob.SQL.Text := 'select first 1 * from sincronismo_blob '
      + ' order by idsincronismo_blob';

    close;
    open;

    if recordcount > 0 then
    begin
      //selecio na tabela interno o referido campo foto
      SqlExecute.SQL.Text := 'select ' + fieldbyname('campo').AsString
        + ' from ' + fieldbyname('tabela').AsString
        + ' where ' + fieldbyname('campo').AsString + ' is not null '
        + ' and ' + fieldbyname('nome_pk').AsString + ' = ' + fieldbyname('valor_pk').AsString;


      DsExecute.DataSet.close;
      DsExecute.DataSet.open;
      if not DsExecute.DataSet.IsEmpty then
      begin

        MemoryStream := TMemoryStream.Create;
        TBlobField(DsExecute.DataSet.FieldByName(fieldbyname('campo').AsString)).SaveToStream(MemoryStream);
        MemoryStream.Position := OffsetMemoryStream;

        if Assigned(MemoryStream) then
        begin
          if EnvioBlob(fieldbyname('tabela').AsString,
            fieldbyname('campo').AsString,
            fieldbyname('nome_pk').AsString,
            fieldbyname('valor_pk').AsString, MemoryStream) then
          begin
            try

              Label1.Caption := 'Limpando base de dados: ' + sPrimeiroIdSinc + '-' + sUltimoIdSinc;
              sSql := 'delete from sincronismo_blob where idsincronismo_blob=' + fieldbyname('idsincronismo_blob').AsString;
              TextoLogErro(sSql);
              IniciaTransacao();
              Conexao.ExecuteDirect(sSql);
              FinalizaTransacao;

            except
              FinalizaTransacao;
            end;
          end;
        end;

        if Assigned(MemoryStream) then
          FreeAndNil(MemoryStream);

      end;

      DsExecute.DataSet.close;
    end;

    close;

  end;

  RecebeBlob;


end;



procedure TFrmReplicacaoWebService.BtnEnviarBlobClick(Sender: TObject);
begin
  Timer1.Enabled := False;
  Timer2.Enabled := False;

  executar := BtnEnvia.Enabled and BtnRecebe.Enabled and BtnEnviarBlob.Enabled;

  if not executar then
    exit;

  BtnEnviarBlob.Enabled := False;

  Conexao.Connected := false;
  Conexao.Connected := true;

  Sincronismo_Blob;

  BtnEnviarBlob.Enabled := true;

end;

procedure TFrmReplicacaoWebService.CkAtualizacaoClick(Sender: TObject);
begin

  Timer1.Enabled := CkAtualizacao.Checked;
  Timer2.Enabled := CkAtualizacao.Checked;

end;

procedure TFrmReplicacaoWebService.FormShow(Sender: TObject);
begin
  Timer1.Enabled := True;
  Timer2.Enabled := True;
end;

end.

