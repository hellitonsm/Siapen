unit start;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WinSkinStore, WinSkinData;

type
  TStartForm = class(TForm)
    SkinDataSystem: TSkinData;
    SkinStore1: TSkinStore;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StartForm: TStartForm;

implementation

uses Lib;

{$R *.dfm}

procedure TStartForm.FormCreate(Sender: TObject);
begin

  if not AtivouSkin then
  begin
    SkinDataSystem.SkinFile := GLOBAL_PATCH_SISTEMA + '\skin\' + skin_padrao;
    if not SkinDataSystem.Active then
    begin
      SkinDataSystem.Active := False;
    end;
    AtivouSkin := False;
  end;
end;

end.
