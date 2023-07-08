unit EscolhendoSkin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloFormulario, StdCtrls, FileCtrl, ExtCtrls, Vcl.Imaging.jpeg;

type
  TFrmEscolhendoSkin = class(TFrmModeloFormulario)
    FilterComboBox1: TFilterComboBox;
    FileListBox2: TFileListBox;
    DirectoryListBox1: TDirectoryListBox;
    Label1: TLabel;
    FileEdit: TEdit;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEscolhendoSkin: TFrmEscolhendoSkin;

implementation

uses Lib, ModuloPrincipal, DmPrincipal;

{$R *.dfm}

procedure TFrmEscolhendoSkin.FormCreate(Sender: TObject);
begin
  inherited;

  DirectoryListBox1.Directory := GLOBAL_PATCH_SISTEMA + '\skin\';

end;

procedure TFrmEscolhendoSkin.Button1Click(Sender: TObject);
begin
  inherited;

 { FrmModuloPrincipal.SkinDataSystem.SkinFile := FileListBox2.FileName ;
  FrmModuloPrincipal.SkinDataSystem.Active := False;
  FrmModuloPrincipal.SkinDataSystem.Active := True;

  FrmModuloPrincipal.SkinDataSystem.UpdateMenu(Self);
   }
end;

end.

