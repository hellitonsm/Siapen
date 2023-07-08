{$IFDEF WIN32}
{$DEFINE PLATFORM32}
{$ENDIF}
{$IFDEF WIN64}
{$DEFINE PLATFORM64}
{$ENDIF}
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
  appPath, updateFile, redePath, dbxcon, configFile, versao: string;
  configIni: TIniFile;

begin
  appPath := ExtractFilePath(ParamStr(0));
  updateFile := appPath + 'atualizacao.ini';
  configFile := appPath + 'config.ini';
  dbxcon := appPath + '../config/dbxconnections.ini';
  // Verificar se o arquivo atualizador.ini existe

  if FileExists(configFile) then
  begin
    configIni := TIniFile.Create(configFile);
    versao := '';
    try
      versao := configIni.ReadString('versao', 'versao', '');
    finally
      configIni.Free;
    end;
  end;

{$IFDEF PLATFORM64}
  if not versao.Equals('64') then
{$ELSE PLATFORM32}
  if not versao.Equals('32') then
{$ENDIF}
  begin
    if FileExists(updateFile) then
    begin
      configIni := TIniFile.Create(updateFile);
      try
        redePath := configIni.ReadString('Aplicativo',
          'Diretorio Aplicativo', '');
      finally
        configIni.Free;
      end;
    end;

    if not redePath.Equals('') then
    begin
      filecopy(redePath + 'fbclient.dll', appPath + 'fbclient.dll');
      filecopy(redePath + 'midas.dll', appPath + 'midas.dll');
      filecopy(redePath + 'dbxfb.dll', appPath + 'dbxfb.dll');
      filecopy(redePath + 'logo_panel1.jpg', appPath + 'logo_panel1.jpg');
      filecopy(redePath + 'logo_fundo.jpg', appPath + 'logo_fundo.jpg');
      filecopy(redePath + 'Específicos\*', appPath + 'Específicos\*');
    end;

    // Alterar o arquivo de configuração ../config/dbxconnections.ini
    configIni := TIniFile.Create(dbxcon);
    try
      // Definir [SISAP] [DriverName] Firebird
      configIni.WriteString('SISAP', 'DriverName', 'Firebird');
    finally
      configIni.Free;
    end;

    configIni := TIniFile.Create(configFile);
    try
      // Definir versao
{$IFDEF PLATFORM64}
      configIni.WriteString('versao', 'versao', '64');
{$ELSE PLATFORM32}
      configIni.WriteString('versao', 'versao', '32');
{$ENDIF}
    finally
      configIni.Free;
    end;
  end;

end;

end.
