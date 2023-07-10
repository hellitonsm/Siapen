unit Filtros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, FMTBcd, SqlExpr, ComCtrls;

type
  TTpCampo = (pInteiro, pString, pDate);
  TFrmFiltros = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label5: TLabel;
    ListBoxCampos: TListBox;
    BtnApplyFilter: TButton;
    BtnClear: TButton;
    BtnClose: TButton;
    EdtValor: TEdit;
    TabSheet2: TTabSheet;
    Memo1: TMemo;
    Label2: TLabel;
    ComboBoxLista: TComboBox;
    Label4: TLabel;
    Label6: TLabel;
    Memo2: TMemo;
    ListBoxOper: TListBox;
    Label3: TLabel;
    ListBoxOperVisual: TListBox;
    Label7: TLabel;
    BtnMonta: TButton;
    ListBoxCombinarVisual: TListBox;
    Label8: TLabel;
    ListBoxCombinar: TListBox;
    procedure AddFieldName(Sender: TObject);
    procedure ApplyFilter(Sender: TObject);
    procedure cbCaseSensitiveClick(Sender: TObject);
    procedure cbNoPartialCompareClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Initialize(Ds: TDataSource; SqlT: TSQLQuery; Frm: TForm; vCaption: Boolean = False);
    procedure ListBox2DblClick(Sender: TObject);
    procedure ListBox3DblClick(Sender: TObject);
    procedure ListBoxOperDblClick(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure Memo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SBtnClearClick(Sender: TObject);
    procedure SBtnCloseClick(Sender: TObject);
    procedure BtnMontaClick(Sender: TObject);
    procedure BtnClearClick(Sender: TObject);
    procedure ListBoxCombinarVisualDblClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFiltros: TFrmFiltros;
  TipoCampo: TTpCampo;
  DsMain: TDataSource;
  FrmMain: TForm;
  MudaCaption: Boolean;
  SqlMain: TSQLQuery;
  sSqlOriginal: string;

implementation

uses Lib;

{$R *.dfm}

procedure TFrmFiltros.Initialize(Ds: TDataSource; SqlT: TSQLQuery; Frm: TForm; vCaption: Boolean = False);
var
  I: Integer;
begin
  EdtValor.Text := '';
  ListBoxCampos.Enabled := true;
  ListBoxOperVisual.Enabled := true;
  Memo1.Text := SqlT.Filter;
  Memo2.Text := Ds.DataSet.Filter;
  DsMain := Ds;
  SqlMain := SqlT;
  sSqlOriginal := SqlT.sql.Text;
  FrmMain := Frm;
  MudaCaption := vCaption;

  with DsMain.DataSet do
  begin
    for I := 0 to FieldCount - 1 do
      ListBoxCampos.Items.Add(Fields[I].FieldName);
  end;
end;

{ Adds current listbox field name to memo. }

procedure TFrmFiltros.AddFieldName(Sender: TObject);
begin
  if not ListBoxCampos.Enabled then
    exit;

  ListBoxCampos.Enabled := false;

  if ListBoxCampos.ItemIndex = -1 then
    exit;

  if Memo1.Text <> '' then
    Memo1.Text := Memo1.Text + ' ';

  Memo1.Text := Memo1.Text + '"' + ListBoxCampos.Items[ListBoxCampos.ItemIndex] + '"';

  if Memo2.Text <> '' then
    Memo2.Text := Memo2.Text + ' ';

  Memo2.Text := Memo2.Text + ListBoxCampos.Items[ListBoxCampos.ItemIndex];

  with DsMain.Dataset do
  begin
    if FieldByName(ListBoxCampos.Items[ListBoxCampos.ItemIndex]).DataType in [ftString] then
      TipoCampo := pString
    else if FieldByName(ListBoxCampos.Items[ListBoxCampos.ItemIndex]).DataType in [ftDate, ftDateTime, ftTimeStamp, ftTime] then
      TipoCampo := pDate
    else if FieldByName(ListBoxCampos.Items[ListBoxCampos.ItemIndex]).DataType in [ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftBCD] then
      TipoCampo := pInteiro;
  end;

end;

{ Adds current Filter operator to memo. }

procedure TFrmFiltros.ListBox2DblClick(Sender: TObject);
begin
  if Memo1.Text <> '' then
    Memo1.Text := Memo1.Text + ' ' + ListBoxOper.Items[ListBoxOper.ItemIndex];
end;

procedure TFrmFiltros.ApplyFilter(Sender: TObject);
begin
  try

    if EdtValor.Text <> '' then
      BtnMonta.onclick(nil);

    with DsMain.Dataset do
    begin
      if Memo1.Text <> '' then
        AddWhere(SqlMain, Memo1.Text)
      else
        SqlMain.SQL.Text := sSqlOriginal;
      Close;
      Open;
    end;
  except
  end;
end;

{ Since the Filter property is a TStrings and the Memo field
  is a TMemo, convert the Memo's wrapped text to a string,
  which is then used when the user presses Apply. }

procedure TFrmFiltros.Memo1Change(Sender: TObject);
var
  I: Integer;
begin
  Memo1.Lines[0];
  ComboBoxLista.Text := Memo1.Lines[0];
  for I := 1 to Memo1.Lines.Count - 1 do
    ComboBoxLista.Text := ComboBoxLista.Text + ' ' + Memo1.Lines[I];

  Memo1.Lines[Memo1.Lines.Count];

end;

{ Set the Customer's Dataset Case Sensitive Filter Option. }

procedure TFrmFiltros.cbCaseSensitiveClick(Sender: TObject);
begin
end;

{ Set the Customer Partial Compare Filter Option. }

procedure TFrmFiltros.cbNoPartialCompareClick(Sender: TObject);
begin
end;

{ Add User-Entered filters into list box at runtime. }

procedure TFrmFiltros.SBtnClearClick(Sender: TObject);
var
  st: string;
begin
  Memo1.Lines.Clear;
  st := ComboBoxLista.Text;
  ComboBoxLista.Text := '';
  if ComboBoxLista.Items.IndexOf(st) = -1 then
    ComboBoxLista.Items.Add(st);
end;

{ Reset the Memo field when the Filter ComboBox changes. }

procedure TFrmFiltros.ComboBox1Change(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add(ComboBoxLista.Text);
end;

{ Close the Filter Form. }

procedure TFrmFiltros.SBtnCloseClick(Sender: TObject);
begin
  with DsMain.Dataset do
  begin
    if ComboBoxLista.Text = '' then
    begin
      Filter := '';
      Filtered := False;
      if MudaCaption then
        FrmMain.Caption := 'CONSULTA';
    end;
  end;
  Close;
end;

procedure TFrmFiltros.ListBox3DblClick(Sender: TObject);
begin
  if Memo1.Text <> '' then
    Memo1.Text := Memo1.Text + ' ' + ListBoxOper.Items[ListBoxOper.ItemIndex];
end;

procedure TFrmFiltros.ComboBox2Change(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add(ComboBoxLista.Text);
end;

procedure TFrmFiltros.ListBoxOperDblClick(Sender: TObject);
begin
  if not ListBoxCampos.Enabled then
  begin
    if not ListBoxOperVisual.Enabled then
      exit;
    ListBoxOperVisual.Enabled := false;
    if ListBoxOperVisual.ItemIndex = -1 then
      exit;
    Memo1.Text := Memo1.Text + ' ' + ListBoxOper.Items[ListBoxOperVisual.ItemIndex];
    Memo2.Text := Memo2.Text + ' ' + ListBoxOperVisual.Items[ListBoxOperVisual.ItemIndex];
    EdtValor.SetFocus;
  end;
end;

procedure TFrmFiltros.Memo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 4099 then
    Memo1.Lines.Text := Copy(Memo1.Lines.Text, 1, length(Memo1.Lines.Text) - 1);
end;

procedure TFrmFiltros.BtnMontaClick(Sender: TObject);
begin

  AddFieldName(nil);
  ListBoxOperDblClick(nil);

  if EdtValor.Text = '' then
  begin
    showmessage('Digite um valor para comparação!');
    if EdtValor.canfocus then
      EdtValor.setfocus;
    exit;
  end;

  if (not ListBoxCampos.Enabled) and (not ListBoxOperVisual.Enabled) then
  begin

    if TipoCampo = pInteiro then
      Memo1.Text := Memo1.Text + ' ' + UpperCase(EdtValor.Text)
    else if TipoCampo = pString then
    begin
      if ContemValor('LIKE', ListBoxOper.Items[ListBoxOperVisual.ItemIndex]) then
        Memo1.Text := Memo1.Text + ' ' + QuotedStr('%' + UpperCase(EdtValor.Text) + '%')
      else
        Memo1.Text := Memo1.Text + ' ' + QuotedStr(UpperCase(EdtValor.Text));
    end
    else if TipoCampo = pDate then
      Memo1.Text := Memo1.Text + ' ' + QuotedStr(UpperCase(EdtValor.Text));

    Memo2.Text := Memo2.Text + ' ' + UpperCase(EdtValor.Text);

    EdtValor.Text := '';
    ListBoxCampos.Enabled := true;
    ListBoxOperVisual.Enabled := true;

    ListBoxCombinarVisual.Enabled := (Memo1.Text <> '');

  end;

end;

procedure TFrmFiltros.BtnClearClick(Sender: TObject);
begin

  EdtValor.Text := '';
  ListBoxCampos.Enabled := true;
  ListBoxOperVisual.Enabled := true;
  Memo1.Text := '';
  Memo2.Text := '';
  BtnApplyFilter.OnClick(nil);
  ListBoxCombinarVisual.Enabled := False;

end;

procedure TFrmFiltros.ListBoxCombinarVisualDblClick(Sender: TObject);
begin

  if Memo1.Text <> '' then
  begin
    ListBoxCombinarVisual.Enabled := false;
    Memo1.Text := Memo1.Text + ' ' + ListBoxCombinar.Items[ListBoxCombinarVisual.ItemIndex];
    Memo2.Text := Memo2.Text + ' ' + ListBoxCombinarVisual.Items[ListBoxCombinarVisual.ItemIndex];
  end;

end;

procedure TFrmFiltros.BtnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TFrmFiltros.FormShow(Sender: TObject);
begin
  ListBoxCombinarVisual.Enabled := (Memo1.Text <> '');
end;

end.

