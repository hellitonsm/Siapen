unit WinSkinReg;

interface

{$I Compilers.Inc}

uses  Dialogs, Forms, Classes, SysUtils,
{$ifdef DELPHI_4}
   DsgnIntf,
{$endif DELPHI_4}

{$ifdef DELPHI_5}
   DsgnIntf,
{$endif DELPHI_5}

{$ifdef DELPHI_6_UP}
     DesignIntf,DesignEditors,
{$endif DELPHI_6}

{$ifdef CPPB_5}
   DsgnIntf,
{$endif CPPB_5}

{$ifdef CPPB_6}
     DesignIntf,DesignEditors,
{$endif CPPB_6}

   winskindata,skinread,winsubclass,winskinform,WinSkinStore,SkinCaption;

procedure Register;

implementation


type
{ TWinSkinStore}
  TWinSkinStore = class(TPropertyEditor)
  private
  public
    procedure Edit; override;
    function GetAttributes: TPropertyAttributes; override;
    function GetValue: string; override;
  end;

procedure TWinSkinStore.Edit;
var
  skindata: TSkindata;      //ms
  storeitem: TSkinCollectionItem; //ms

  OpenDialog: TOpenDialog;
begin
  { Execute editor }
  OpenDialog := TOpenDialog.Create(Application);
  OpenDialog.Filter := 'Skin files (*.skn)|*.skn';
  try
    if OpenDialog.Execute then
    begin

      { this entire block by ms }
      storeitem := nil;
      skindata := nil;

      if GetComponent(0) is TSkinCollectionItem then
        storeitem := GetComponent(0) as TSkinCollectionItem;

      if GetComponent(0) is TSkindata then
        skindata := GetComponent(0) as TSkindata;

      if storeitem <> nil then
      begin
        storeitem.LoadFromFile(OpenDialog.FileName);
      end
      else
      if skindata <> nil then
      begin
        skindata.data.clear;
        skindata.data.LoadFromFile(OpenDialog.FileName);
        skindata.SkinFile := '';
      end;
      {
      TSkindata(GetComponent(0)).data.clear;
      TSkindata(GetComponent(0)).data.LoadFromFile(OpenDialog.FileName);
      TSkindata(GetComponent(0)).SkinFile := '';
      }
    end;
    Modified;
  finally
    OpenDialog.Free;
  end;
end;

function TWinSkinStore.GetAttributes: TPropertyAttributes;
begin
  Result := [paDialog];
end;

function TWinSkinStore.GetValue: string;
var
  skindata: TSkindata;      //ms
  storeitem: TSkinCollectionItem; //ms
begin

  // ms
  storeitem := nil;
  skindata := nil;

  if GetComponent(0) is TSkinCollectionItem then
    storeitem := GetComponent(0) as TSkinCollectionItem;

  if GetComponent(0) is TSkindata then
    skindata := GetComponent(0) as TSkindata;

  if storeitem <> nil then
  begin
    if storeitem.DataSize > 0 then
      Result := '(SkinData)'
    else
      Result := '(Empty)'
  end;

  if skindata <> nil then
  begin
    if TSkindata(GetComponent(0)).data.size > 0 then
      Result := '(SkinData)'
    else
      Result := '(Empty)'
  end;

end;

procedure Register;
begin
  RegisterComponents('VCLSkin', [TSkinData, TSkinStore, TSkinCaption]);
  RegisterPropertyEditor(TypeInfo(String), TSkinData, 'SkinStore',TWinSkinStore);

  // ms
  RegisterPropertyEditor(TypeInfo(String), TSkinCollectionItem, 'SkinData',TWinSkinStore);

end;

end.

