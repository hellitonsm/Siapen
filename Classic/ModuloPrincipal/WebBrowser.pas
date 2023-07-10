unit WebBrowser;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Menus, ComCtrls, OleCtrls, Buttons, ToolWin, Isp3,
  ActnList, ImgList, SHDocVw;

const
  CM_HOMEPAGEREQUEST = WM_USER + $1000;

type
  TFrmWebBrowser = class(TForm)
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    View1: TMenuItem;
    NavigatorImages: TImageList;
    NavigatorHotImages: TImageList;
    LinksImages: TImageList;
    LinksHotImages: TImageList;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    BackBtn: TToolButton;
    ForwardBtn: TToolButton;
    StopBtn: TToolButton;
    RefreshBtn: TToolButton;
    ToolBar2: TToolBar;
    ToolButton6: TToolButton;
    ToolButton5: TToolButton;
    Animate1: TAnimate;
    URLs: TComboBox;
    Help1: TMenuItem;
    About1: TMenuItem;
    Toolbar3: TMenuItem;
    Statusbar2: TMenuItem;
    Go1: TMenuItem;
    Back1: TMenuItem;
    Forward1: TMenuItem;
    Stop1: TMenuItem;
    Refresh1: TMenuItem;
    N2: TMenuItem;
    ActionList1: TActionList;
    BackAction: TAction;
    ForwardAction: TAction;
    StopAction: TAction;
    RefreshAction: TAction;
    WebBrowser1: TWebBrowser;
    procedure Exit1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure StopClick(Sender: TObject);
    procedure URLsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure LinksClick(Sender: TObject);
    procedure RefreshClick(Sender: TObject);
    procedure BackClick(Sender: TObject);
    procedure ForwardClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure URLsClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Toolbar3Click(Sender: TObject);
    procedure Statusbar2Click(Sender: TObject);
    procedure BackActionUpdate(Sender: TObject);
    procedure ForwardActionUpdate(Sender: TObject);
    procedure WebBrowser1BeforeNavigate2(Sender: TObject;
      const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData,
      Headers: OleVariant; var Cancel: WordBool);
    procedure WebBrowser1DownloadBegin(Sender: TObject);
    procedure WebBrowser1DownloadComplete(Sender: TObject);
    procedure FindAddress;
  private
    HistoryIndex: Integer;
    HistoryList: TStringList;
    UpdateCombo: Boolean;
    procedure HomePageRequest(var message: tmessage); message CM_HOMEPAGEREQUEST;
  end;

var
  FrmWebBrowser: TFrmWebBrowser;

implementation

uses Sobre, Lib;

{$R *.dfm}

procedure TFrmWebBrowser.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmWebBrowser.FindAddress;
var
  Flags: OLEVariant;

begin
  Flags := 0;
  UpdateCombo := True;
  WebBrowser1.Navigate(WideString(Urls.Text), Flags, Flags, Flags, Flags);
end;

procedure TFrmWebBrowser.About1Click(Sender: TObject);
begin

  Frmsobre := TFrmsobre.Create(Application);
  Frmsobre.ShowModal;
  FreeAndNil(Frmsobre);

end;

procedure TFrmWebBrowser.StopClick(Sender: TObject);
begin
  WebBrowser1.Stop;
end;

procedure TFrmWebBrowser.URLsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Return then
  begin
    FindAddress;
  end;
end;

procedure TFrmWebBrowser.URLsClick(Sender: TObject);
begin
  FindAddress;
end;

procedure TFrmWebBrowser.LinksClick(Sender: TObject);
begin
  if (Sender as TToolButton).Hint = '' then Exit;
  URLs.Text := (Sender as TToolButton).Hint;
  FindAddress;
end;

procedure TFrmWebBrowser.RefreshClick(Sender: TObject);
begin
  FindAddress;
end;

procedure TFrmWebBrowser.BackClick(Sender: TObject);
begin
  URLs.Text := HistoryList[HistoryIndex - 1];
  FindAddress;
end;

procedure TFrmWebBrowser.ForwardClick(Sender: TObject);
begin
  URLs.Text := HistoryList[HistoryIndex + 1];
  FindAddress;
end;

procedure TFrmWebBrowser.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Shift = [ssAlt] then
    if (Key = VK_RIGHT) and ForwardBtn.Enabled then
      ForwardBtn.Click
    else if (Key = VK_LEFT) and BackBtn.Enabled then
      BackBtn.Click;

end;

procedure TFrmWebBrowser.Toolbar3Click(Sender: TObject);
begin

  with Sender as TMenuItem do
  begin
    Checked := not Checked;
    Coolbar1.Visible := Checked;
  end;

end;

procedure TFrmWebBrowser.Statusbar2Click(Sender: TObject);
begin

  with Sender as TMenuItem do
  begin
    Checked := not Checked;
    StatusBar1.Visible := Checked;
  end;

end;

procedure TFrmWebBrowser.HomePageRequest(var Message: TMessage);
begin

  URLs.Text := GLOBAL_WEBBROWSER ;
  
  FindAddress;

end;

procedure TFrmWebBrowser.FormCreate(Sender: TObject);
begin

  HistoryIndex := -1;
  HistoryList := TStringList.Create;
  { Load the animation from the AVI file in the startup directory.  An
    alternative to this would be to create a .RES file including the cool.avi
    as an AVI resource and use the ResName or ResId properties of Animate1 to
    point to it. }
  if FileExists(ExtractFilePath(Application.ExeName) + 'siapen-webbrowser.avi') then
    Animate1.FileName := ExtractFilePath(Application.ExeName) + 'siapen-webbrowser.avi';
    
  { Find the home page - needs to be posted because HTML control hasn't been
    registered yet. }
  PostMessage(Handle, CM_HOMEPAGEREQUEST, 0, 0);

end;

procedure TFrmWebBrowser.FormDestroy(Sender: TObject);
begin
  HistoryList.Free;
end;

procedure TFrmWebBrowser.BackActionUpdate(Sender: TObject);
begin
  if HistoryList.Count > 0 then
    BackAction.Enabled := HistoryIndex > 0
  else
    BackAction.Enabled := False;
end;

procedure TFrmWebBrowser.ForwardActionUpdate(Sender: TObject);
begin
  if HistoryList.Count > 0 then
    ForwardAction.Enabled := HistoryIndex < HistoryList.Count - 1
  else
    ForwardAction.Enabled := False;
end;

procedure TFrmWebBrowser.WebBrowser1BeforeNavigate2(Sender: TObject;
  const pDisp: IDispatch; var URL, Flags, TargetFrameName, PostData,
  Headers: OleVariant; var Cancel: WordBool);
var
  NewIndex: Integer;
begin
  NewIndex := HistoryList.IndexOf(URL);
  if NewIndex = -1 then
  begin
    { Remove entries in HistoryList between last address and current address }
    if (HistoryIndex >= 0) and (HistoryIndex < HistoryList.Count - 1) then
      while HistoryList.Count > HistoryIndex do
        HistoryList.Delete(HistoryIndex);
    HistoryIndex := HistoryList.Add(URL);
  end
  else
    HistoryIndex := NewIndex;
  if UpdateCombo then
  begin
    UpdateCombo := False;
    NewIndex := URLs.Items.IndexOf(URL);
    if NewIndex = -1 then
      URLs.Items.Insert(0, URL)
    else
      URLs.Items.Move(NewIndex, 0);
  end;
  URLs.Text := URL;
  Statusbar1.Panels[0].Text := URL;
end;

procedure TFrmWebBrowser.WebBrowser1DownloadBegin(Sender: TObject);
begin
  { Turn the stop button dark red }
  StopBtn.ImageIndex := 4;
  { Play the avi from the first frame indefinitely }
  if FileExists(Animate1.FileName) then
    Animate1.Active := True;
end;

procedure TFrmWebBrowser.WebBrowser1DownloadComplete(Sender: TObject);
begin

  { Turn the stop button grey }
  StopBtn.ImageIndex := 2;
  { Stop the avi and show the first frame }
  Animate1.Active := False;

end;

end.

