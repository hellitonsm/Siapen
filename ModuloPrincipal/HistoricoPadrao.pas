unit HistoricoPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, Provider, DB, DBClient, DBCtrls, StdCtrls,
  ComCtrls, ExtCtrls, Grids, DBGrids;

type
  TFrmhistoricopadrao = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    RadioGroupStatus: TRadioGroup;
    DBGridConsulta: TDBGrid;
    Editlocalizar: TEdit;
    PanelPrincipal: TPanel;
    Label53: TLabel;
    Label54: TLabel;
    DateTimePickerHistorico: TDateTimePicker;
    MemoDescricao: TMemo;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    DSHISTORICO_interno: TDataSource;
    CDSHISTORICO_interno: TClientDataSet;
    DSPHISTORICO_interno: TDataSetProvider;
    SQLHISTORICO_interno: TSQLQuery;
    DsConsulta: TDataSource;
    CdsConsulta: TClientDataSet;
    Dspconsulta: TDataSetProvider;
    SqlConsulta: TSQLQuery;
    SqlSelectInterno: TSQLQuery;
    procedure EditlocalizarChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DsConsultaDataChange(Sender: TObject; Field: TField);
    procedure DBGridConsultaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure RadioGroupStatusClick(Sender: TObject);
  private
    { Private declarations }
  public
    ID_INTERNO: Integer;
    { Public declarations }
  end;

var
  Frmhistoricopadrao: TFrmhistoricopadrao;

implementation

uses Lib, DmPrincipal;

{$R *.dfm}

procedure TFrmhistoricopadrao.EditlocalizarChange(Sender: TObject);
var
  status: string;
begin

  case RadioGroupStatus.ItemIndex of
    0: Status := 'A';
    1: Status := 'I';
  end;

  if ID_INTERNO > 0 then
  begin

    SqlConsulta.sql.text := SqlSelectInterno.SQL.Text + ' where interno.id_interno=' + inttostr(ID_INTERNO);

  end
  else
  begin

    SqlConsulta.sql.text := SqlSelectInterno.SQL.Text + ' where interno.id_up=' + inttostr(GLOBAL_ID_UP)
      + 'and st = ' + qs(Status) + ' and nome_interno like '
      + qs(EditLocalizar.text + '%') + ' order by nome_interno ';
      
  end;

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

end;

procedure TFrmhistoricopadrao.FormCreate(Sender: TObject);
begin

  if GLOBAL_IDCONEXAO > 0 then
  begin
    IniciaTransMovimento;
    try
      DM.SQLConnect.ExecuteDirect('update conexao set tela_momento = ' + qs(Self.Caption)
        + ' where idconexao=' + IntToStr(GLOBAL_IDCONEXAO));
    except
    end;
    FinalizaTransMovimento;
  end;

  DateTimePickerHistorico.Date := Date;
  DSHISTORICO_interno.DataSet.Close;
  DSHISTORICO_interno.DataSet.OPEN;

end;

procedure TFrmhistoricopadrao.FormShow(Sender: TObject);
begin

  DBGridConsulta.Columns[1].Title.Caption := GLOBAL_NIVEL_1;
  DBGridConsulta.Columns[2].Title.Caption := GLOBAL_NIVEL_2;
  DBGridConsulta.Columns[3].Title.Caption := GLOBAL_NIVEL_3;
  DBGridConsulta.Columns[4].Title.Caption := GLOBAL_NIVEL_4;

  EditlocalizarChange(nil);

end;

procedure TFrmhistoricopadrao.DsConsultaDataChange(Sender: TObject;
  Field: TField);
begin
  PanelPrincipal.Enabled := False;

  if not DsConsulta.DataSet.Active then
    Exit;

  if DsConsulta.DataSet.IsEmpty then
    Exit;

  PanelPrincipal.Enabled := true;
end;

procedure TFrmhistoricopadrao.DBGridConsultaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (State <> [gdSelected]) and (State <> [gdSelected, gdFocused]) then
  begin

    TDBGrid(Sender).Canvas.Font.Color := clBlack;

    if odd(TDBGrid(Sender).DataSource.DataSet.Recno) then
    begin
      TDBGrid(Sender).Canvas.Brush.color := cl3DLight;
    end
    else
    begin
      TDBGrid(Sender).Canvas.Brush.color := clWhite;
    end;

    TDBGrid(Sender).Canvas.FillRect(rect);
    TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);

  end
  else
  begin
    TDBGrid(Sender).Canvas.Brush.color := $00854F3F;
    TDBGrid(Sender).Canvas.Font.Color := clWhite;
    TDBGrid(Sender).Canvas.FillRect(rect);
    TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
  end;

end;

procedure TFrmhistoricopadrao.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (State <> [gdSelected]) and (State <> [gdSelected, gdFocused]) then
  begin

    TDBGrid(Sender).Canvas.Font.Color := clBlack;

    if odd(TDBGrid(Sender).DataSource.DataSet.Recno) then
    begin
      TDBGrid(Sender).Canvas.Brush.color := cl3DLight;
    end
    else
    begin
      TDBGrid(Sender).Canvas.Brush.color := clWhite;
    end;

    TDBGrid(Sender).Canvas.FillRect(rect);
    TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);

  end
  else
  begin
    TDBGrid(Sender).Canvas.Brush.color := $00854F3F;
    TDBGrid(Sender).Canvas.Font.Color := clWhite;
    TDBGrid(Sender).Canvas.FillRect(rect);
    TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
  end;

end;

procedure TFrmhistoricopadrao.RadioGroupStatusClick(Sender: TObject);
begin
  EditLocalizar.Text := '';
  EditLocalizarChange(nil);
  if EditLocalizar.CanFocus then
    EditLocalizar.SetFocus;
end;

end.

