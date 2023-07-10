unit ConsGridSetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, DBClient;

type
  TFrmConsGridSetup = class(TForm)
    SrcList: TListBox;
    DstList: TListBox;
    IncludeBtn: TSpeedButton;
    IncAllBtn: TSpeedButton;
    ExcludeBtn: TSpeedButton;
    ExcAllBtn: TSpeedButton;
    OKBtn: TBitBtn;
    CancelBtn: TBitBtn;
    Label1: TLabel;
    DstLabel: TLabel;
    ClientDataSet1: TClientDataSet;
    procedure ExcludeBtnClick(Sender: TObject);
    function GetFirstSelection(List: TCustomListBox): Integer;
    procedure IncAllBtnClick(Sender: TObject);
    procedure IncludeBtnClick(Sender: TObject);
    procedure ExcAllBtnClick(Sender: TObject);
    procedure MoveSelected(List: TCustomListBox; Items: TStrings);
    procedure OKBtnClick(Sender: TObject);
    procedure SetButtons;
    procedure SetItem(List: TListBox; Index: Integer);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SrcListDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure DstListDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure SrcListDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure DstListDragDrop(Sender, Source: TObject; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    ListWidthColumn: TStringList;

    procedure Initialize(Grid: TDBGrid; List: TStringList);
  end;

var
  FrmConsGridSetup: TFrmConsGridSetup;
  GridMain: TDBGrid;

implementation

{$R *.dfm}

procedure TFrmConsGridSetup.Initialize(Grid: TDBGrid; List: TStringList);
var
  i: integer;
begin
  ListWidthColumn := List;
  GridMain := Grid;
  for i := 0 to Grid.Columns.Count - 1 do
  begin
    if not Grid.Columns[i].Visible then
      DstList.Items.AddObject(Grid.Columns[i].Title.Caption, Grid.Columns[i])
    else
      SrcList.Items.AddObject(Grid.Columns[i].Title.Caption, Grid.Columns[i])
  end;
  SetButtons;
end;

procedure TFrmConsGridSetup.IncludeBtnClick(Sender: TObject);
var
  Index: Integer;
begin
  Index := GetFirstSelection(SrcList);
  MoveSelected(SrcList, DstList.Items);
  SetItem(SrcList, Index);
end;

procedure TFrmConsGridSetup.ExcludeBtnClick(Sender: TObject);
var
  Index: Integer;
begin
  Index := GetFirstSelection(DstList);
  MoveSelected(DstList, SrcList.Items);
  SetItem(DstList, Index);
end;

procedure TFrmConsGridSetup.IncAllBtnClick(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to SrcList.Items.Count - 1 do
    DstList.Items.AddObject(SrcList.Items[I],
      SrcList.Items.Objects[I]);
  SrcList.Items.Clear;
  SetItem(DstList, 0);
end;

procedure TFrmConsGridSetup.ExcAllBtnClick(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to DstList.Items.Count - 1 do
    SrcList.Items.AddObject(DstList.Items[I], DstList.Items.Objects[I]);
  DstList.Items.Clear;
  SetItem(SrcList, 0);
end;

procedure TFrmConsGridSetup.MoveSelected(List: TCustomListBox; Items: TStrings);
var
  I: Integer;
begin
  for I := List.Items.Count - 1 downto 0 do
    if List.Selected[I] then
    begin
      Items.AddObject(List.Items[I], List.Items.Objects[I]);
      List.Items.Delete(I);
    end;
end;

procedure TFrmConsGridSetup.SetButtons;
var
  SrcEmpty, DstEmpty: Boolean;
begin
  SrcEmpty := SrcList.Items.Count = 0;
  DstEmpty := DstList.Items.Count = 0;
  IncludeBtn.Enabled := not SrcEmpty;
  IncAllBtn.Enabled := not SrcEmpty;
  ExcludeBtn.Enabled := not DstEmpty;
  ExcAllBtn.Enabled := not DstEmpty;
end;

function TFrmConsGridSetup.GetFirstSelection(List: TCustomListBox): Integer;
begin
  for Result := 0 to List.Items.Count - 1 do
    if List.Selected[Result] then
      Exit;
  Result := 0; //LB_ERR;
end;

procedure TFrmConsGridSetup.SetItem(List: TListBox; Index: Integer);
var
  MaxIndex: Integer;
begin
  with List do
  begin
    SetFocus;
    MaxIndex := List.Items.Count - 1;
    //    if Index = LB_ERR then Index := 0
    if Index = -1 then
      Index := 0
    else if Index > MaxIndex then
      Index := MaxIndex;
    Selected[Index] := True;
  end;
  SetButtons;
end;

procedure TFrmConsGridSetup.OKBtnClick(Sender: TObject);
var
  i: integer;
begin

  for i := 0 to SrcList.Items.Count - 1 do
  begin

    TColumn(SrcList.Items.Objects[i]).Index := i;
    TColumn(SrcList.Items.Objects[i]).Visible := True;

    if i = 0 then
      TClientDataSet(GridMain.DataSource.DataSet).IndexFieldNames :=
        TColumn(SrcList.Items.Objects[i]).FieldName;

  end;

  for i := 0 to DstList.Items.Count - 1 do
  begin
    TColumn(DstList.Items.Objects[i]).Visible := False;
  end;

  TClientDataSet(GridMain.DataSource.DataSet).Close;
  TClientDataSet(GridMain.DataSource.DataSet).Open;
  
end;

procedure TFrmConsGridSetup.SpeedButton2Click(Sender: TObject);
begin
  if (SrcList.ItemIndex > -1) and (SrcList.ItemIndex < SrcList.Items.Count - 1) then
  begin
    SrcList.Items.Exchange(SrcList.ItemIndex, SrcList.ItemIndex + 1);
  end;
end;

procedure TFrmConsGridSetup.SrcListDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
    accept := true;
end;

procedure TFrmConsGridSetup.DstListDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
    accept := true;
end;

procedure TFrmConsGridSetup.SrcListDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var i : integer;
begin

  i := TListBox(Source).itemindex;

  if TListBox(Source) <> TListBox(Sender) then
  begin
    TListBox(Sender).Items.AddObject(TListBox(Source).Items[I],
      TListBox(Source).Items.Objects[I]);
    TListBox(Source).Items.Delete(i);
  end
  else
  begin
    TListBox(Sender).Items.InsertObject(0,TListBox(Source).Items[I],
      TListBox(Source).Items.Objects[I]);
    TListBox(Source).Items.Delete(i+1);
  end;


end;

procedure TFrmConsGridSetup.DstListDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var i : integer;
begin

  i := TListBox(Source).itemindex;

  if TListBox(Source) <> TListBox(Sender) then
  begin
    TListBox(Sender).Items.AddObject(TListBox(Source).Items[I],
      TListBox(Source).Items.Objects[I]);
    TListBox(Source).Items.Delete(i);
  end
  else
  begin
    TListBox(Sender).Items.InsertObject(0,TListBox(Source).Items[I],
      TListBox(Source).Items.Objects[I]);
    TListBox(Source).Items.Delete(i+1);
  end;

end;

end.

