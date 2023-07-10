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
  appPath, iniFile,configFile,versao, redePath,dbxfb: string;
  configIni,versaoini: TIniFile;

begin
  appPath := ExtractFilePath(ParamStr(0));
  iniFile := appPath + 'atualizacao.ini';
  configFile:= appPath + 'config.ini';
  //dbxfb   := appPath + 'dbxfb.dll';
  versao := '';
  // Verificar se o arquivo config.ini existe
  if FileExists(configFile) then
  begin
    versaoini := TiniFile.Create(configFile);
    try
        // Obter o diretório na rede do [aplicativo] [Diretorio Aplicativo]
        versao := versaoini.ReadString('versao', 'versao', '');
    finally
      versaoIni.Free;
    end;
  end else
  begin
    versaoini := TiniFile.Create(configFile);
    try
      // Obter o diretório na rede do [aplicativo] [Diretorio Aplicativo]
      versaoini.WriteString('versao', 'versao', 'classic');
    finally
      versaoIni.Free;
    end;
  end;

  if versao <> 'classic' then
  begin
    // Ler o arquivo atualizador.ini para obter o diretório na rede
    configIni := TIniFile.Create(iniFile);
    try
      // Obter o diretório na rede do [aplicativo] [Diretorio Aplicativo]
      redePath := configIni.ReadString('aplicativo', 'Diretorio Aplicativo', '');
    finally
      configIni.Free;
    end;
    {
    midas.dll
    dbexpida.dll
    dbexpida30.dll
    dbexpida40.dll
    dbexpint.dll
    dbexpUIBfire15.dll
    dbxfb.dll
    Devart.DbxIda.DriverLoader.dll
    fbclient.dll
    gds32.dll
    GrFinger.dll
    }
    // Copiar os arquivos: fbclient.dll, midas.dll, dbexpida41.dll, dbxfb.dll
    FileCopy(redePath + 'fbclient.dll', appPath + 'fbclient.dll');
    FileCopy(redePath + 'midas.dll', appPath + 'midas.dll');
    FileCopy(redePath + 'dbexpida40.dll', appPath + 'dbexpida40.dll');
    FileCopy(redePath + 'dbexpida30.dll', appPath + 'dbexpida30.dll');
    FileCopy(redePath + 'dbexpida.dll', appPath + 'dbexpida.dll');
    FileCopy(redePath + 'dbexpint.dll', appPath + 'dbexpint.dll');
    FileCopy(redePath + 'dbexpUIBfire15.dll', appPath + 'dbexpUIBfire15.dll');
    FileCopy(redePath + 'Devart.DbxIda.DriverLoader.dll', appPath + 'Devart.DbxIda.DriverLoader.dll');
    FileCopy(redePath + 'gds32.dll', appPath + 'gds32.dll');
    FileCopy(redePath + 'GrFinger.dll', appPath + 'GrFinger.dll');
    FileCopy(redePath + 'dbxfb.dll', appPath + 'dbxfb.dll');
    FileCopy(redePath + 'logo_panel1.jpg', appPath + 'logo_panel1.jpg');
    FileCopy(redePath + 'Específicos\*', appPath + 'Específicos\*');

    // Alterar o arquivo de configuração ../config/dbxconnections.ini
    configIni := TIniFile.Create(appPath + '../config/dbxconnections.ini');
    try
      // Definir [SISAP] [DriverName] Firebird
      configIni.WriteString('SISAP', 'DriverName', 'DevartInterBase');
    finally
      configIni.Free;
    end;
  end;
end;

end.
