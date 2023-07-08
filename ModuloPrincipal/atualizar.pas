unit atualizar;

interface

procedure atualizador;

implementation

uses
  SysUtils, Windows, IniFiles, ShellAPI;

function filecopy(const SrcFileName, DestFileName: string): Boolean;
begin
  Result := Windows.CopyFile(PChar(SrcFileName), PChar(DestFileName), False);
end;

procedure atualizador;
var
  appPath, iniFile, redePath,dbxfb: string;
  configIni: TIniFile;

begin
  appPath := ExtractFilePath(ParamStr(0));
  iniFile := appPath + 'atualizacao.ini';
  dbxfb   := appPath + 'dbxfb.dll';
  // Verificar se o arquivo atualizador.ini existe

  if not FileExists(dbxfb) then
  begin
    // Ler o arquivo atualizador.ini para obter o diretório na rede
    configIni := TIniFile.Create(iniFile);
    try
      // Obter o diretório na rede do [aplicativo] [Diretorio Aplicativo]
      redePath := configIni.ReadString('aplicativo', 'Diretorio Aplicativo', '');
    finally
      configIni.Free;
    end;

    // Copiar os arquivos: fbclient.dll, midas.dll, dbexpida41.dll, dbxfb.dll
    FileCopy(redePath + 'fbclient.dll', appPath + 'fbclient.dll');
    FileCopy(redePath + 'midas.dll', appPath + 'midas.dll');
    //FileCopy(redePath + 'dbexpida41.dll', appPath + 'dbexpida41.dll');
    FileCopy(redePath + 'dbxfb.dll', appPath + 'dbxfb.dll');
    FileCopy(redePath + 'logo_panel1.jpg', appPath + 'logo_panel1.jpg');
    FileCopy(redePath + 'Específicos\*', appPath + 'Específicos\*');

    // Alterar o arquivo de configuração ../config/dbxconnections.ini
    configIni := TIniFile.Create(appPath + '../config/dbxconnections.ini');
    try
      // Definir [SISAP] [DriverName] Firebird
      configIni.WriteString('SISAP', 'DriverName', 'Firebird');
    finally
      configIni.Free;
    end;
  end;
end;

end.
