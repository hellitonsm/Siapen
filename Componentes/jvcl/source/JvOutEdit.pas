{-----------------------------------------------------------------------------
The contents of this file are subject to the Mozilla Public License
Version 1.1 (the "License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at
http://www.mozilla.org/MPL/MPL-1.1.html

Software distributed under the License is distributed on an "AS IS" basis,
WITHOUT WARRANTY OF ANY KIND, either expressed or implied. See the License for
the specific language governing rights and limitations under the License.

The Original Code is: JvOutEdit.PAS, released on 2002-05-26.

The Initial Developer of the Original Code is Peter Th�rnqvist [peter3@peter3.com]
Portions created by Peter Th�rnqvist are Copyright (C) 2002 Peter Th�rnqvist.
All Rights Reserved.

Contributor(s):

Last Modified: 2002-05-26

You may retrieve the latest version of this file at the Project JEDI's JVCL home page,
located at http://jvcl.sourceforge.net

Known Issues:
-----------------------------------------------------------------------------}

{$I JVCL.INC}

unit JvOutEdit;

{Component Editors and Registration procedure for TJvLookOut components}

interface

uses
  Classes, SysUtils, Forms, ImgList,
  {$IFDEF COMPILER6_UP}
  DesignIntf, DesignEditors,
  {$ELSE}
  DsgnIntf,
  {$ENDIF}
  JvLookOut, JvDsgnEditors;

type
  TLookOutPageEditor = class(TComponentEditor)
  public
    {$IFDEF COMPILER6_UP}
    constructor Create(AComponent: TComponent; ADesigner: IDesigner); override;
    {$ELSE}
    constructor Create(AComponent: TComponent; ADesigner: IFormDesigner); override;
    {$ENDIF}
    procedure AddButton; virtual;
    procedure AddPage; virtual;
    procedure SetActive; virtual;
    procedure Edit; override;
    procedure ExecuteVerb(Index: Integer); override;
    function GetVerb(Index: Integer): string; override;
    function GetVerbCount: Integer; override;
    property Component;
    property Designer;
  end;

  TLookOutEditor = class(TComponentEditor)
  public
    {$IFDEF COMPILER6_UP}
    constructor Create(AComponent: TComponent; ADesigner: IDesigner); override;
    {$ELSE}
    constructor Create(AComponent: TComponent; ADesigner: IFormDesigner); override;
    {$ENDIF}
    procedure AddPage; virtual;
    procedure Edit; override;
    procedure ExecuteVerb(Index: Integer); override;
    function GetVerb(Index: Integer): string; override;
    function GetVerbCount: Integer; override;
    property Component;
    property Designer;
  end;

  TExpressEditor = class(TComponentEditor)
  public
    {$IFDEF COMPILER6_UP}
    constructor Create(AComponent: TComponent; ADesigner: IDesigner); override;
    {$ELSE}
    constructor Create(AComponent: TComponent; ADesigner: IFormDesigner); override;
    {$ENDIF}
    procedure AddButton; virtual;
    procedure Edit; override;
    procedure ExecuteVerb(Index: Integer); override;
    function GetVerb(Index: Integer): string; override;
    function GetVerbCount: Integer; override;
    property Component;
    property Designer;
  end;

  TLookOutImageIndexProperty = class(TJvDefaultImageIndexProperty)
  protected
    function ImageList: TCustomImageList; override;
    function GetButton: TJvCustomLookOutButton;
  end;

implementation

//=== TLookOutPageEditor =====================================================

{$IFDEF COMPILER6_UP}
constructor TLookOutPageEditor.Create(AComponent: TComponent; ADesigner: IDesigner);
begin
  inherited Create(AComponent, ADesigner);
end;
{$ELSE}
constructor TLookOutPageEditor.Create(AComponent: TComponent; ADesigner: IFormDesigner);
begin
  inherited Create(AComponent, ADesigner);
end;
{$ENDIF}

procedure TLookOutPageEditor.Edit;
begin
  if Component <> nil then
    ExecuteVerb(1);
end;

procedure TLookOutPageEditor.SetActive;
var
  C: TJvLookOutPage;
  P: TJvLookOut;
begin
  if Component = nil then
    Exit;
  C := TJvLookOutPage(Component);
  if C.Parent is TJvLookOut then
  begin
    P := TJvLookOut(C.Parent);
    P.ActivePage := C;
  end;
end;

procedure TLookOutPageEditor.AddButton;
var
  Btn: TJvLookOutButton;
begin
  if Component = nil then
    Exit;
  Btn := TJvLookOutPage(Component).AddButton;
  Btn.Name := Designer.UniqueName('LookOutButton');
  Btn.Caption := Btn.Name;
//  Designer.CreateComponent(TJvLookOutButton,Component,0,MaxInt,0,0);
end;

function TLookOutPageEditor.GetVerb(Index: Integer): string;
begin
  // (rom) added initialization to be more readable
  Result := '';
  if Component = nil then
    Exit;
  case Index of
    0:
      Result := 'Add page';
    1:
      Result := 'Activate';
    2:
      Result := 'Add Button';
    3:
      Result := '-';
    4:
      Result := 'Scroll Up';
    5:
      Result := 'Scroll Down';
  end;
end;

procedure TLookOutPageEditor.ExecuteVerb(Index: Integer);
begin
  case Index of
    0:
      AddPage;
    1:
      SetActive;
    2:
      AddButton;
    3:
      ;
    4:
      TJvLookOutPage(Component).UpArrow;
    5:
      TJvLookOutPage(Component).DownArrow;
  end;
end;

function TLookOutPageEditor.GetVerbCount: Integer;
begin
  Result := 6;
end;

procedure TLookOutPageEditor.AddPage;
var
  Page: TJvLookOutPage;
begin
  if not (Component is TJvLookOutPage) then
    Exit;
  Page := TJvLookOut(TJvLookOutPage(Component).Parent).AddPage;
  Page.Name := Designer.UniqueName('LookOutPage');
  Page.Caption := Page.Name;
end;

//=== TLookOutEditor =========================================================

{$IFDEF COMPILER6_UP}
constructor TLookOutEditor.Create(AComponent: TComponent; ADesigner: IDesigner);
begin
  inherited Create(AComponent, ADesigner);
end;
{$ELSE}
constructor TLookOutEditor.Create(AComponent: TComponent; ADesigner: IFormDesigner);
begin
  inherited Create(AComponent, ADesigner);
end;
{$ENDIF}

procedure TLookOutEditor.Edit;
begin
  if Component <> nil then
    inherited Edit;
end;

procedure TLookOutEditor.ExecuteVerb(Index: Integer);
var
  I: Integer;
begin
  if Component = nil then
    Exit;
  case Index of
    0:
      AddPage;
    1: { next }
      begin
        with Component as TJvLookOut do
          for I := 0 to ControlCount - 1 do
            if (Controls[I] = (Component as TJvLookOut).ActivePage) and
              (I + 1 < ControlCount) and
              (Controls[I + 1] <> nil) and
              (Controls[I + 1] is TJvLookOut) then
            begin
              (Component as TJvLookOut).ActivePage := TJvLookOutPage(Controls[I + 1]);
              Break;
            end;
      end;
    2: { previous }
      begin
        with Component as TJvLookOut do
          for I := ControlCount - 1 downto 0 do
            if (Controls[I] = (Component as TJvLookOut).ActivePage) and
              (I > 0) and
              (Controls[I - 1] <> nil) and
              (Controls[I - 1] is TJvLookOut) then
            begin
              (Component as TJvLookOut).ActivePage := TJvLookOutPage(Controls[I - 1]);
              Break;
            end;
      end;
  end;
end;

procedure TLookOutEditor.AddPage;
var
  Page: TJvLookOutPage;
begin
  if Component = nil then
    Exit;
  Page := TJvLookOut(Component).AddPage;
  Page.Name := Designer.UniqueName('LookOutPage');
  Page.Caption := Page.Name;
end;

function TLookOutEditor.GetVerb(Index: Integer): string;
begin
  case Index of
    0:
      Result := 'Add Page';
    1:
      Result := 'Next Page';
    2:
      Result := 'Previous Page';
  end;
end;

function TLookOutEditor.GetVerbCount: Integer;
begin
  Result := 3;
end;

//=== TExpressEditor =========================================================

{$IFDEF COMPILER6_UP}
constructor TExpressEditor.Create(AComponent: TComponent; ADesigner: IDesigner);
begin
  inherited Create(Acomponent, ADesigner);
end;
{$ELSE}
constructor TExpressEditor.Create(AComponent: TComponent; ADesigner: IFormDesigner);
begin
  inherited Create(Acomponent, ADesigner);
end;
{$ENDIF}

procedure TExpressEditor.AddButton;
var
  Exp: TJvExpress;
  Btn: TJvExpressButton;
begin
  if Component = nil then
    Exit;
  Exp := TJvExpress(Component);
  Btn := TJvExpressButton(Exp.AddButton);
  Btn.Name := Designer.UniqueName('ExpressButton');
  Btn.Caption := Btn.Name;

  with Exp.Controls[Exp.ControlCount - 1] do
  begin
    Width := Exp.Width - 4;
    Left := 0;
  end;
end;

procedure TExpressEditor.Edit;
begin
  inherited Edit;
end;

procedure TExpressEditor.ExecuteVerb(Index: Integer);
begin
  case Index of
    0:
      AddButton;
//  1: ShowMessage('Lookout components'#13'Copyright � 1997 by Peter Thornqvist; all rights reserved');
  end;
end;

function TExpressEditor.GetVerb(Index: Integer): string;
begin
  case Index of
    0:
      Result := 'Add Button';
//    1: Result := 'About...';
  end;
end;

function TExpressEditor.GetVerbCount: Integer;
begin
  Result := 1;
end;

//=== TLookOutImageIndexProperty =============================================

function TLookOutImageIndexProperty.GetButton: TJvCustomLookOutButton;
begin
  if GetComponent(0) is TJvCustomLookOutButton then
    Result := TJvCustomLookOutButton(GetComponent(0))
  else
    Result := nil;
end;

type
  THackButton = class(TJvCustomLookOutButton);

function TLookOutImageIndexProperty.ImageList: TCustomImageList;
var
  Btn: TJvCustomLookOutButton;
begin
  Btn := GetButton;
  if Btn <> nil then
  begin
    if THackButton(Btn).ImageSize = isLarge then
      Result := THackButton(Btn).LargeImages
    else
      Result := THackButton(Btn).SmallImages;
  end
  else
    Result := nil;
end;

end.

