unit HistoricoInterno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, ComCtrls, DBCtrls, FMTBcd,
  DB, SqlExpr, Provider, DBClient, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmHistoricoInterno = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    RadioGroupStatus: TRadioGroup;
    DBGridConsulta: TDBGrid;
    Editlocalizar: TEdit;
    PanelPrincipal: TPanel;
    Label53: TLabel;
    DateTimePickerHistorico: TDateTimePicker;
    MemoDescricao: TMemo;
    Label54: TLabel;
    Button1: TButton;
    RadioGroupSetor: TRadioGroup;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    DSHISTORICO_interno: TDataSource;
    CDSHISTORICO_interno: TClientDataSet;
    DSPHISTORICO_interno: TDataSetProvider;
    SQLHISTORICO_internoold: TSQLQuery;
    DsConsulta: TDataSource;
    CdsConsulta: TClientDataSet;
    Dspconsulta: TDataSetProvider;
    SqlConsultaold: TSQLQuery;
    SqlSelectInternoold: TSQLQuery;
    SQLHISTORICO_interno: TFDQuery;
    SqlConsulta: TFDQuery;
    SqlSelectInterno: TFDQuery;
    procedure Button1Click(Sender: TObject);
    procedure EditlocalizarChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridConsultaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DsConsultaDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure RadioGroupStatusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmHistoricoInterno: TFrmHistoricoInterno;

implementation

uses Lib, DmPrincipal;

{$R *.dfm}

procedure TFrmHistoricoInterno.Button1Click(Sender: TObject);
begin

  if RadioGroupSetor.ItemIndex = -1 then
  begin
    ShowMessage('Digite o Setor Responsável pelo Cadastramento!');
    exit;
  end;

  IniciaTransMovimento;

  DSHISTORICO_interno.DataSet.Append;
  DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
  DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
    DsConsulta.DataSet.fieldbyname('id_interno').AsInteger;
  DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsString :=
    FormatDateTime('dd/mm/yyyy', DateTimePickerHistorico.Date);
  DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString := MemoDescricao.Lines.Text;
  DSHISTORICO_interno.DataSet.fieldbyname('setor').AsString :=
    RadioGroupSetor.Items.Strings[RadioGroupSetor.itemindex];
  DSHISTORICO_interno.DataSet.fieldbyname('ID_FUNCIONARIO').AsInteger :=
    GLOBAL_ID_FUNCIONARIO;
  DSHISTORICO_interno.DataSet.Post;
  DM.SQLConnect.ExecSql('EXECUTE PROCEDURE set_context(' + inttostr(GLOBAL_ID_FUNCIONARIO) + ')');
  TClientDataSet(DSHISTORICO_interno.DataSet).ApplyUpdates(0);

  FinalizaTransMovimento;

  MemoDescricao.Lines.Clear;

end;

procedure TFrmHistoricoInterno.EditlocalizarChange(Sender: TObject);
var
  status: string;
begin
  //  if length(TEdit(sender).Text) < 3 then
  //    Exit;

  case RadioGroupStatus.ItemIndex of
    0: Status := 'A';
    1: Status := 'I';
  end;

  SqlConsulta.sql.text := SqlSelectInterno.SQL.Text + ' where interno.st = ' + qs(Status) + ' and interno.nome_interno like '
    + qs(EditLocalizar.text + '%') + ' order by interno.nome_interno ';

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

end;

procedure TFrmHistoricoInterno.FormCreate(Sender: TObject);
begin
  if GLOBAL_IDCONEXAO > 0 then
  begin
    IniciaTransMovimento;
    try
      DM.SQLConnect.ExecSQl('update conexao set tela_momento = ' + qs(Self.Caption)
        + ' where idconexao=' + IntToStr(GLOBAL_IDCONEXAO));
    except
    end;
    FinalizaTransMovimento;
  end;

  DateTimePickerHistorico.Date := Date;
  DSHISTORICO_interno.DataSet.Close;
  DSHISTORICO_interno.DataSet.OPEN;

end;

procedure TFrmHistoricoInterno.DBGridConsultaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
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

procedure TFrmHistoricoInterno.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TFrmHistoricoInterno.DsConsultaDataChange(Sender: TObject;
  Field: TField);
begin
  PanelPrincipal.Enabled := False;

  if not DsConsulta.DataSet.Active then
    Exit;

  if DsConsulta.DataSet.IsEmpty then
    Exit;

  PanelPrincipal.Enabled := true;

end;

procedure TFrmHistoricoInterno.FormShow(Sender: TObject);
begin
  EditlocalizarChange(nil);
end;

procedure TFrmHistoricoInterno.RadioGroupStatusClick(Sender: TObject);
begin
  if EditLocalizar.CanFocus then
  begin
    EditlocalizarChange(nil);
    EditLocalizar.SetFocus;
  end;
end;

end.

