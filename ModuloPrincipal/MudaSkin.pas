Unit MudaSkin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Inifiles,VCL.themes, MudarTema;

type
  TFrmMudaSkin = class(TForm)
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  end;

var
  FrmMudaSkin: TFrmMudaSkin;

implementation
uses WindowsDarkMode;

{$R *.dfm}

{ TFrmMudaSkin }

procedure TFrmMudaSkin.Button1Click(Sender: TObject);
begin
  if DarkModeIsEnabled then
    ShowMessage('Dark mode is enabled.')
  else
    ShowMessage('Dark mode is NOT enabled.');
end;

procedure TFrmMudaSkin.FormCreate(Sender: TObject);
var
  AppDataPath: string;
  IniFile: TIniFile;
  ThemeName: string;
begin
   AppDataPath := GetEnvironmentVariable('APPDATA');

  // Crie o caminho completo para o arquivo INI
  AppDataPath := IncludeTrailingPathDelimiter(AppDataPath) + 'Siapen\config.ini';

  // Verifique se o arquivo INI existe
  if FileExists(AppDataPath) then
  begin
    // Crie um objeto TIniFile apontando para o arquivo INI
    IniFile := TIniFile.Create(AppDataPath);
    try
      // Leia o nome do tema do arquivo INI
      ThemeName := IniFile.ReadString('Config', 'Theme', '');

      if ThemeName.Equals('Carbon') then
        RadioGroup1.ItemIndex:=0;
      if ThemeName.Equals('Light') then
        RadioGroup1.ItemIndex:=1;
      if ThemeName.Equals('Sem Tema') then
        RadioGroup1.ItemIndex:=2;
    finally
      IniFile.Free;
    end;
  end;
end;

procedure SetNoTheme;
begin
  TStyleManager.TrySetStyle('Windows10', False);
  SaveThemeToConfig('Windows10');
end;

procedure TFrmMudaSkin.RadioGroup1Click(Sender: TObject);
begin

   case RadioGroup1.ItemIndex of
       0: SetSpecificThemeMode(True, 'Carbon', 'Light');
       1: SetSpecificThemeMode(False, 'Carbon', 'Light');
       2: SetNoTheme;
   end;
end;



end.
