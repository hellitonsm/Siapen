// 程序原代码和创意由网友 "CoolSlob" <coolslob@163.com> 提供，在此特别感谢
// the program code and idea had provide by  "CoolSlob" <coolslob@163.com>, so thanks a lot

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus;

type
  TForm_U = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    ComboBox1: TComboBox;
    ListBox1: TListBox;
    RadioGroup1: TRadioGroup;
    MainMenu1: TMainMenu;
    VCLSKINA1: TMenuItem;
    VCLSKINA2: TMenuItem;
    VCLSKINA3: TMenuItem;
    VCLSKINA4: TMenuItem;
    VCLSKINA5: TMenuItem;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_U: TForm_U;

implementation
Uses Unit2;
type
  TInitFunc        = procedure(FHandle: THandle);stdcall;
  TUnloadFunc      = procedure();stdcall;
  TActiveFunc      = procedure(Value : Boolean); Stdcall;
  TSetSkinFile     = procedure(Value : ShortString); Stdcall;
  TAdd3rdControl   = procedure(Value : ShortString); Stdcall;

var
  InitProc            :  TInitFunc;
  UnLoadProc          :  TUnloadFunc;
  ActiveFunc          :  TActiveFunc;
  SetSkinFile         :  TSetSkinFile;
  Add3rdControl       :  TAdd3rdControl;
  vCaption : String = ' 测试 VCLSKIN 窗口';
  Lib      : THandle;
  FActive  : Boolean;

{$R *.dfm}

procedure LoadDLL;
begin
  Lib := LoadLibrary('SKINDLL.dll');
  if lib<>0 then begin
     @InitProc   := GetProcAddress(Lib,'InitSkin');
     @UnLoadProc := GetProcAddress(Lib,'UnLoadAll');
     @ActiveFunc := GetProcAddress(Lib,'SetActive');
     @SetSkinFile:= GetProcAddress(Lib,'SetSkinFile');
     @Add3rdControl:= GetProcAddress(Lib,'Add3rdControl');
  end;
End;

procedure FreeDLL;
begin
   if lib<>0 then freeLibrary(lib);
   lib:=0;
   InitProc := nil;
   UnLoadProc:= nil;
end;

procedure TForm_U.Button1Click(Sender: TObject);
begin
  vCaption := vCaption + '*';
  Caption  := vCaption;
  ShowMessage('Test');
end;

procedure TForm_U.Button2Click(Sender: TObject);
begin
   MessageDlg('VclSkin2.0 Demo !'#13'Message Window Skin Demo.',
        mtInformation,[mbOk], 0);
end;

procedure TForm_U.FormDestroy(Sender: TObject);
begin
  FreeDLL;
end;

procedure TForm_U.Button3Click(Sender: TObject);
begin
   FActive := not FActive;
   if @ActiveFunc <> nil Then ActiveFunc(FActive);
end;

procedure TForm_U.Button4Click(Sender: TObject);
begin
   if @SetSkinFile <> nil Then SetSkinFile('skin2');
   //or if @SetSkinFile <> nil Then SetSkinFile(ExtractFilePath(Application.ExeName) + 'mxp1.skn');
end;

procedure TForm_U.Button5Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm_U.FormCreate(Sender: TObject);
begin
  if lib=0 then loaddll;
  if @InitProc <> nil Then InitProc(Handle);
  if not FActive then
  Begin
     if @SetSkinFile <> nil Then SetSkinFile('skin1');
     FActive := True;
  end;
end;

procedure TForm_U.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if @UnLoadProc <> nil Then UnLoadProc;
end;

end.
