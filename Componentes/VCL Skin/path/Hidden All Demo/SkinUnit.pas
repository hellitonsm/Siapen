{$DEFINE CRACK}
//{$IFDEF CRACK}
//{$UNDEF CRACK}
//{$ENDIF}

// 程序原代码和创意由网友 "CoolSlob" <coolslob@163.com> 提供，在此特别感谢
// the program code and idea had provide by  "CoolSlob" <coolslob@163.com>, so thanks a lot

unit SkinUnit;

interface
Uses Classes,SkinCaption;

  Procedure LoadFormRes(SkinName : ShortString);stdcall;
  Procedure SetSkinFile(Value : ShortString);stdcall;export;
  procedure InitSkin(FHandle : THandle);stdcall;export;
  procedure UnLoadAll;stdcall;export;
  procedure SetActive(Value : Boolean); Stdcall;export;
  procedure Add3rdControl(Value : ShortString); stdcall; export;

var
  FSkinCaption: TSkinCaption;

implementation

Procedure LoadFormRes(SkinName : ShortString);stdcall;
var
  SkinRes: TResourceStream;
Begin
  SkinRes := TResourceStream.Create(hInstance, SkinName, PChar('SKIN'));
  try
    if FSkinCaption <> nil then FSkinCaption.DLL_LoadSkinRes(SkinRes);
  finally
    SkinRes.Free;
  end;
End;

Procedure SetSkinFile(Value : ShortString);stdcall;
begin
  LoadFormRes(Value);

  //or use another function but skin file not skin res -> FSkinCaption.DLL_SetSkinFile(Value);

  {$IFDEF CRACK}
     if FSkinCaption <> nil then FSkinCaption.Active := True;
  {$ENDIF}
end;

procedure InitSkin(FHandle : THandle);stdcall;
begin
  if FSkinCaption <> nil then exit;

  if FSkinCaption = nil then  FSkinCaption := TSkinCaption.Create(nil);

  FSkinCaption.DLL_InitSkin(FHandle);
end;

procedure UnLoadAll;stdcall;
begin
  {$IFDEF CRACK}
     if FSkinCaption <> nil then FSkinCaption.Active := False;
  {$ENDIF}

  if FSkinCaption <> nil then FSkinCaption.DLL_UnLoadSkin;
end;

procedure SetActive(Value : Boolean); Stdcall;
begin
  if FSkinCaption <> nil then FSkinCaption.DLL_SetActive(Value);
End;

procedure Add3rdControl(Value : ShortString); stdcall; export;
begin
  if FSkinCaption <> nil then FSkinCaption.DLL_Add3rdControl(Value);
end;

initialization
  FSkinCaption := nil;
finalization
  if FSkinCaption <> nil then FSkinCaption.free;
end.
