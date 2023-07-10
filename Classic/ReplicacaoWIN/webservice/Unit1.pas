unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, DBXpress, DB, SqlExpr, FMTBcd, DBClient, Provider, IdMultipartFormData;

type
  TForm1 = class(TForm)
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
    procedure BtnEnviaClick(Sender: TObject);
    procedure BtnRecebeClick(Sender: TObject);
  private
    function ContemValor(sCompare, sString: string): Boolean;
    function EnvioArquivo(sArquivo: string): boolean;
    function RecebeArquivo(arquivo_recebe,
      idsincronismo_controle: string): boolean;
    function ValorDaPosicao(sLinha: string; iPosicao: integer): string;
    function LimpaServidor(primeiroidsincronismo, ultimoidsincronismo, idsincronismo_controle: string): boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  url_envio: string = 'http://localhost/nat/envio.php';
  url_recebe: string = 'http://localhost/nat/recebe.php';
  url_limpa: string = 'http://localhost/nat/limpa.php';
  url_get_arquivo: string = 'http://localhost/teste/';



implementation

{$R *.dfm}

function TForm1.ContemValor(sCompare, sString: string): Boolean;
var
  P: Byte;
begin
  try
    Result := False;
    P := Pos(sCompare, sString);
    if P > 0 then
      Result := True;
  except
  end;
end;

function TForm1.ValorDaPosicao(sLinha: string; iPosicao: integer): string;
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

function TForm1.EnvioArquivo(sArquivo: string): boolean;
var
  Stream: TIdMultipartFormDataStream;
  Idhttp: TIDHttp;
  sRetorno: string;
begin
  try

    Idhttp := TIDHttp.Create(nil);
    Idhttp.HandleRedirects := true;
    Idhttp.ReadTimeout := 6000000;

    //criando os parametros
    Stream := TIdMultiPartFormDataStream.Create;
    //enviando
    Stream.AddFormField('usuario', 'siapen');
    Stream.AddFormField('senha', 'agepensiap');
    Stream.AddFormField('user_firebird', '');
    Stream.AddFile('arquivo', sArquivo, 'application/octet-stream');

    IdHTTP.Request.CustomHeaders.Clear;
    IdHTTP.Request.Clear;
    IdHTTP.Request.ContentType := 'application/x-www-form-urlencoded';
    IdHTTP.Request.ContentEncoding := 'multipart/form-data';

    //aqui no caso estou mandando para uma php, mais pode ser para
    //qualquer servidor(java, asp, delphi, etc)
    sRetorno := IdHTTP.Post(url_envio, Stream);

    result := ContemValor('[OK CONCLUIDO]', sRetorno);

  except

  end;

  FreeAndNil(Stream);

end;

function TForm1.RecebeArquivo(arquivo_recebe, idsincronismo_controle: string): boolean;
var
  Stream: TIdMultipartFormDataStream;
  Idhttp: TIDHttp;
  sRetorno: string;
  ArquivoRecebido: TFileStream;
begin

  try

    Idhttp := TIDHttp.Create(nil);
    Idhttp.HandleRedirects := true;
    Idhttp.ReadTimeout := 6000000;

    //criando os parametros
    Stream := TIdMultiPartFormDataStream.Create;
    Stream.AddFormField('usuario', 'siapen');
    Stream.AddFormField('senha', 'agepensiap');
    Stream.AddFormField('arquivo_recebe', arquivo_recebe);
    Stream.AddFormField('idsincronismo_controle', idsincronismo_controle);

    IdHTTP.Request.CustomHeaders.Clear;
    IdHTTP.Request.Clear;
    IdHTTP.Request.ContentType := 'application/x-www-form-urlencoded';
    IdHTTP.Request.ContentEncoding := 'multipart/form-data';

    sRetorno := IdHTTP.Post(url_recebe, Stream);

    if ContemValor('[OK CONCLUIDO]', 'XX' + sRetorno) then
    begin
      ArquivoRecebido := TFileStream.Create(arquivo_recebe, fmCreate);
      try
        //saber se o download concluiu
        try
          IdHTTP.Get(url_get_arquivo + arquivo_recebe, ArquivoRecebido); // fazendo o download do arquivo
          result := true;
        except
          result := false;
        end;
      finally
        FreeAndNil(ArquivoRecebido);
      end;
    end;

  except

  end;

  FreeAndNil(Stream);

end;

function TForm1.LimpaServidor(primeiroidsincronismo, ultimoidsincronismo, idsincronismo_controle: string): boolean;
var
  Stream: TIdMultipartFormDataStream;
  Idhttp: TIDHttp;
  sRetorno: string;
  ArquivoRecebido: TFileStream;
begin

  try

    Idhttp := TIDHttp.Create(nil);
    Idhttp.HandleRedirects := true;
    Idhttp.ReadTimeout := 6000000;

    //criando os parametros
    Stream := TIdMultiPartFormDataStream.Create;

    Stream.AddFormField('usuario', 'siapen');
    Stream.AddFormField('senha', 'agepensiap');
    Stream.AddFormField('primeiroidsincronismo', primeiroidsincronismo);
    Stream.AddFormField('ultimoidsincronismo', ultimoidsincronismo);
    Stream.AddFormField('idsincronismo_controle', idsincronismo_controle);

    IdHTTP.Request.CustomHeaders.Clear;
    IdHTTP.Request.Clear;
    IdHTTP.Request.ContentType := 'application/x-www-form-urlencoded';
    IdHTTP.Request.ContentEncoding := 'multipart/form-data';

    sRetorno := IdHTTP.Post(url_limpa, Stream);

    result := ContemValor('[OK CONCLUIDO]', sRetorno);

  except

  end;

  FreeAndNil(Stream);

end;


procedure TForm1.BtnEnviaClick(Sender: TObject);
var
  sArquivo, sScript,
    sRenome, sPrimeiroIdSinc, sUltimoIdSinc: string;
  ArqTexto: TextFile;

begin

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

  SqlExecute.SQL.Text := 'select gen_id(cod_up,0) cod_up from rdb$database';
  DsExecute.DataSet.Close;
  DsExecute.DataSet.Open;
  sArquivo := 'envio' + DsExecute.DataSet.fieldbyname('cod_up').AsString
    + '-' + FormatDateTime('yyyy-mm-dd-hhmm-ss-zzz', now)
    + '.sql';
  DsExecute.DataSet.Close;

  with DsSincronismo.DataSet do
  begin
    try
      AssignFile(ArqTexto, sArquivo);
      ReWrite(ArqTexto);
      try
        close;
        open;
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
      except
      end;
    finally
      CloseFile(ArqTexto);
    end;
  end;

  if EnvioArquivo(sArquivo) then
  begin

    Conexao.ExecuteDirect('insert into sincronismo_arquivo (idsincronismo_arquivo, nome_arquivo, data_hora, tipo_envio_recebido, primeiro_idsincronismo, ultimo_idsincronismo) '
      + 'values (0, ' + QuotedStr(sArquivo) + ', ''now'', ''ENVIO'', ' + sPrimeiroIdSinc + ', ' + sUltimoIdSinc + ')');

    with DsSincronismo.DataSet do
    begin
      first;
      while not eof do
      begin
        Conexao.ExecuteDirect('delete from sincronismo where idsincronismo=' + fieldbyname('idsincronismo').AsString);
        next;
      end;
    end;

  end
  else
  begin

    Conexao.ExecuteDirect('insert into sincronismo_arquivo (idsincronismo_arquivo, nome_arquivo, data_hora, tipo_envio_recebido, primeiro_idsincronismo, ultimo_idsincronismo) '
      + 'values (0, ' + QuotedStr(sArquivo) + ', ''now'', ''ERRO ENV'', ' + sPrimeiroIdSinc + ', ' + sUltimoIdSinc + ')');

  end;


  DsSincronismo.DataSet.close;

end;

procedure TForm1.BtnRecebeClick(Sender: TObject);
var
  cArquivo: TextFile;
  sNomeArquivo, sLinha, sPrimeiroIdSincronismo, sUltimoIdSincronismo, sScript, idsincronismo_controle: string;
begin
  idsincronismo_controle := '2';
  Conexao.Connected := true;

  SqlExecute.SQL.Text := 'select gen_id(cod_up,0) cod_up from rdb$database';
  DsExecute.DataSet.Close;
  DsExecute.DataSet.Open;
  sNomeArquivo := 'recebe' + DsExecute.DataSet.fieldbyname('cod_up').AsString
    + '-' + FormatDateTime('yyyy-mm-dd-hhmm-ss-zzz', now)
    + '.sql';
  DsExecute.DataSet.Close;

  if RecebeArquivo(sNomeArquivo, idsincronismo_controle) then
  begin

    AssignFile(cArquivo, sNomeArquivo);
    Reset(cArquivo);

    sPrimeiroIdSincronismo := '';
    sScript := '';

    try

      while not EOF(cArquivo) do
      begin

        // captura a linha e avança para próxima
        ReadLn(cArquivo, sLinha);

        //Pegando o primeiro idsincronismo
        if sPrimeiroIdSincronismo = '' then
          sPrimeiroIdSincronismo := ValorDaPosicao(sLinha, 1);

        //Pegando o ultimo idsincronismo
        sUltimoIdSincronismo := ValorDaPosicao(sLinha, 1);

        sScript := ValorDaPosicao(sLinha, 2);

        try
//          Conexao.ExecuteDirect(sScript);
        except
        end;

      end;

    except
    end;

    if sPrimeiroIdSincronismo <> '' then
    begin
      LimpaServidor(sPrimeiroIdSincronismo, sUltimoIdSincronismo, idsincronismo_controle);
    end;

    CloseFile(cArquivo);

  end;

end;

end.

