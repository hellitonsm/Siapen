{********************************************************}
{                                                        }
{               Gerencial Informatica                    }
{                     ALBATROZ                           }
{     Sistema Integrado de Administração de Empresa      }
{              Modulo Atualizacao do Sistema             }
{              Copyright (c) 2003 - 2005                 }
{********************************************************}
unit UAtualizacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, IniFiles, ComCtrls, FileCtrl, ShellApi, jpeg;

type
  TFrmAtualizacao = class(TForm)
    FileListBox: TFileListBox;
    Image1: TImage;
    Timer1: TTimer;
    Label1: TLabel;
    procedure Timer1Timer(Sender: TObject);
  private
    procedure MapearRede(var PServer, PLetra, PSenha: PChar);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAtualizacao: TFrmAtualizacao;
  VsLocalAplicativo, VsRedeEspecificos, VsRedeAplicativo: string;
  VsLocalConexaoDB, VsRedeConexaoDB: string;
  VsLocalRelatorios, VsRedeRelatorios: string;
  VsLocalImagens, VsLocalEspecificos, VsRedeImagens: string;
  VAplicativo: PAnsiChar;

implementation

{$R *.dfm}

procedure CopyDir(const cFrom, cTo: string);
var
  OpStruc: TSHFileOpStruct;
  frombuf, tobuf: array[0..5000] of Char;
begin

  try

   // ShowMessage('Origem: ' + cFrom + #10#13 + 'Destino: ' + cTo);
    
    FillChar(frombuf, Sizeof(frombuf), 0);
    FillChar(tobuf, Sizeof(tobuf), 0);
    StrPCopy(frombuf, cFrom);
    StrPCopy(tobuf, cTo);

    with OpStruc do
    begin
      Wnd := Application.Handle;
      wFunc := FO_COPY;
      pFrom := @frombuf;
      pTo := @tobuf;
      fFlags := FOF_NOCONFIRMATION ;//or FOF_RENAMEONCOLLISION;
      fAnyOperationsAborted := False;
      hNameMappings := nil;
      lpszProgressTitle := nil;
    end; // with

    ShFileOperation(OpStruc);

  except

    ShowMessage('Origem:' + cFrom + ' - Destino' + cTo);

  end;

end; // CopyDir

function DirSize(Dir, ExtFile: string): integer;
{Retorna o tamanho de um diretório}
var
  SearchRec: TSearchRec;
  Separator: string;
  DirBytes: integer;
begin

  if Copy(Dir, Length(Dir), 1) = '\' then
  begin
    Separator := '';
  end
  else
  begin
    Separator := '\';
  end;

  if ExtFile = '' then
    ExtFile := '*.*';

  if FindFirst(Dir + Separator + ExtFile, faAnyFile, SearchRec) = 0 then
  begin
    if FileExists(Dir + Separator + SearchRec.Name) then
    begin
      DirBytes := DirBytes + SearchRec.Size;
    end
    else if DirectoryExists(Dir + Separator + SearchRec.Name) then
    begin
      if (SearchRec.Name <> '.') and (SearchRec.Name <> '..') then
      begin
        DirSize(Dir + Separator + SearchRec.Name, ExtFile);
      end;
    end;

    while FindNext(SearchRec) = 0 do
    begin
      if FileExists(Dir + Separator + SearchRec.Name) then
      begin
        DirBytes := DirBytes + SearchRec.Size;
      end
      else if DirectoryExists(Dir + Separator + SearchRec.Name) then
      begin
        if (SearchRec.Name <> '.') and (SearchRec.Name <> '..') then
        begin
          DirSize(Dir + Separator + SearchRec.Name, ExtFile);
        end;
      end;
    end;
  end;

  FindClose(SearchRec);
  
end;

function FileSize(const FileName: string): LongInt;
var
  SearchRec: TSearchRec;
begin { !Win32! -> GetFileSize }

  if FindFirst(FileName, faAnyFile, SearchRec) = 0 then
    Result := SearchRec.Size
  else
    Result := 1;

  FindClose(SearchRec);
  
end;

function GetBuildInfo(Aplicativo: string; Tipo: string = 'BUILD'; VerData:
  Boolean = True): string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
  V1, V2, V3, V4: Word;
  Prog, AppData: string;
begin
  try
    Result := 'Sistema Local';
    Prog := Aplicativo;
    AppData := '';
    if VerData then
      AppData := ' de ' + DateTimeToStr(FileDateToDateTime(FileAge(Prog)));

    Screen.Cursor := crHourGlass;

    VerInfoSize := GetFileVersionInfoSize(PChar(Prog), Dummy);
    GetMem(VerInfo, VerInfoSize);
    GetFileVersionInfo(PChar(prog), 0, VerInfoSize, VerInfo);
    VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);

    Screen.Cursor := crDefault;

    with VerValue^ do
    begin
      V1 := dwFileVersionMS shr 16;
      V2 := dwFileVersionMS and $FFFF;
      V3 := dwFileVersionLS shr 16;
      V4 := dwFileVersionLS and $FFFF;
    end;

    FreeMem(VerInfo, VerInfoSize);

    Result := IntToStr(v1) + '.' +
      IntToStr(v2) + '.' +
      IntToStr(v3) + AppData;

    if uppercase(Tipo) = 'BUILD' then
    begin
      Result := IntToStr(v1) + '.' +
        IntToStr(v2) + '.' +
        IntToStr(v3) + '.' +
        IntToStr(v4) + AppData;
    end;
  except
  end;
end;

procedure TFrmAtualizacao.MapearRede(var PServer, PLetra, PSenha: PChar);
begin
  try
    WNetAddConnection(PServer, PSenha, PLetra);
  except
  end;
end;

procedure TFrmAtualizacao.Timer1Timer(Sender: TObject);
var
  X, I: Integer;
  Msg, DirAtualizacao, ArqAtualizacao, DirRelatorio, ArqRelatorio,
    DirConexao, ArqConexao, DirImagens, ArqImagens: string;
  AtualizacaoAtiva: string;
  ArqIni: TIniFile;
  ArqControleIni: TIniFile;
  PServer, PLetra, PSenha: PChar;
  DataUltima: string;
  DataAtualizar: string;
begin
  //  Hide;
  Timer1.Enabled := false;
  if FileExists(ExtractFilePath(Application.ExeName) + 'Atualizacao.ini') then
  begin
    ArqIni := TIniFile.Create(ExtractFilePath(Application.ExeName) +
      'Atualizacao.ini');

    PServer := PChar(ArqIni.ReadString('Mapeamento', 'Servidor', ''));
    PLetra := PChar(ArqIni.ReadString('Mapeamento', 'Letra', ''));
    PSenha := PChar(ArqIni.ReadString('Mapeamento', 'Senha', ''));

    MapearRede(PServer, PLetra, PSenha);

    AtualizacaoAtiva := LowerCase(ArqIni.ReadString('Aplicativo',
      'Ativa Atualizacao', ''));
    DirAtualizacao := ArqIni.ReadString('Aplicativo', 'Diretorio Aplicativo',
      '');
    ArqAtualizacao := ArqIni.ReadString('Aplicativo', 'Nome Aplicativo', '');

    DataUltima := ArqIni.ReadString('Aplicativo', 'Data/Hora', '');

    VsRedeEspecificos := ArqIni.ReadString('Aplicativo', 'Específicos', '');

    DirConexao := ArqIni.ReadString('ConexaoDB', 'Diretorio ConexaoDB', '');
    ArqConexao := ArqIni.ReadString('ConexaoDB', 'Arquivo ConexaoDB', '');

    DirRelatorio := ArqIni.ReadString('Relatorios', 'Diretorio Relatorios', '');
    ArqRelatorio := ArqIni.ReadString('Relatorios', 'Arquivos Relatorios', '');

    DirImagens := ArqIni.ReadString('Imagens', 'Diretorio Imagens', '');
    ArqImagens := ArqIni.ReadString('Imagens', 'Arquivos Imagens', '');
  end
  else
  begin
    Msg := 'Arquivo de configurações do atualizador de versão' + #13 +
      'do Sistema `SIAPEN não encontrado !' + #13 + #13;
    Application.MessageBox(PChar(Msg), 'Erro ', MB_OK + MB_ICONERROR);
    Halt;
  end;

  VsLocalAplicativo := ExtractFilePath(Application.ExeName) + ArqAtualizacao;
  VsRedeAplicativo := DirAtualizacao + ArqAtualizacao;

  VsLocalConexaoDB := '..\Config\' + ArqConexao;
  VsRedeConexaoDB := DirConexao + ArqConexao;

  VsLocalRelatorios := ExtractFilePath(Application.ExeName) + '..\';

  VsRedeRelatorios := DirRelatorio;

  VsLocalEspecificos := ExtractFilePath(Application.ExeName);

  VsRedeImagens := DirImagens;

  if FileExists(VsRedeAplicativo) then
  begin
    // não buscar mais pela versão e sim por uma decisão do administrador;
    //    if (FileAge(VsLocalAplicativo) <> FileAge(VsRedeAplicativo)) and
    //    (AtualizacaoAtiva = 'true') then

    ArqControleIni := TIniFile.Create(DirAtualizacao + 'Controle.ini');
    DataAtualizar := ArqControleIni.ReadString('Controle', 'Data/Hora', '');

    ArqIni.WriteString('Aplicativo', 'Data/Hora', DataAtualizar);

    if (DataAtualizar <> DataUltima)
      or
      (not FileExists(VsLocalAplicativo)) then
    begin
      if FileExists(VsLocalAplicativo) then
        Msg := 'Foi detectada uma outra versão do SIAPEN.' + #13 +
          'O sistema será atualizado.  ' + #13 +
          'Data/Hora da ultima versão: ' + DataUltima + #13 +
          'Data/Hora da nova versão: ' + DataAtualizar
      else
        Msg := 'Copiando versão do SIAPEN.' + #13 +
          'O sistema será atualizado.  ';

      Application.MessageBox(PChar(Msg), 'Atualizador do SIAPEN', MB_OK
        + MB_ICONEXCLAMATION);

      try
        if VsRedeAplicativo <> '' then
        begin
          I := 1;
          CopyDir(VsRedeAplicativo, VsLocalAplicativo);
        end;

        if VsRedeConexaoDB <> '' then
        begin
          I := 1;
          while not (CopyFile(Pchar(VsRedeConexaoDB), Pchar(VsLocalConexaoDB),
            False)) do
            Break;
        end;

        if VsRedeRelatorios <> '' then
        begin
          CopyDir(VsRedeRelatorios + ArqRelatorio, VsLocalRelatorios);
        end;

        if VsRedeImagens <> '' then
        begin
          CopyDir(VsRedeImagens + ArqImagens, VsLocalImagens);
        end;

        if VsRedeEspecificos <> '' then
        begin
          CopyDir(VsRedeEspecificos, VsLocalEspecificos);
        end;

      except
        Msg := 'Erro ao Atualizar o SIAPEN ! ' + #13 + #13;
        Application.MessageBox(PChar(Msg), 'Erro ', MB_OK + MB_ICONERROR);
        Halt;
      end;
    end;
  end;

  Application.Terminate;

  //  VAplicativo := VsLocalAplicativo;
    // Após copiar a versao local é executada.
  if SetCurrentDir(ExtractFilePath(VsLocalAplicativo)) then
    WinExec(PAnsiChar(VsLocalAplicativo), SW_SHOW);

  HALT;

end;

end.

