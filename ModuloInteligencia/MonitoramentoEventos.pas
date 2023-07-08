unit MonitoramentoEventos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloFormulario, StdCtrls, jpeg, ExtCtrls, FMTBcd, SqlExpr, DB,
  DBClient, Provider, Grids, DBGrids, DBCtrls, Buttons, ComCtrls;

type
  TFrmMonitoramentoEventos = class(TFrmModeloFormulario)
    DBGridEventos: TDBGrid;
    DspMovEventos: TDataSetProvider;
    CdsMovEventos: TClientDataSet;
    DsMovEventos: TDataSource;
    SqlMovEventos: TSQLQuery;
    SqlEventos: TSQLQuery;
    DspEventos: TDataSetProvider;
    CdsEventos: TClientDataSet;
    DsEventos: TDataSource;
    DsSubEventos: TDataSource;
    CdsSubEventos: TClientDataSet;
    DspSubEventos: TDataSetProvider;
    SqlSubEventos: TSQLQuery;
    CdsMovEventosIDMOV_EVENTOS: TIntegerField;
    CdsMovEventosIDFUNCIONARIO: TIntegerField;
    CdsMovEventosIDPOSTO_TRABALHO: TIntegerField;
    CdsMovEventosID_UP: TIntegerField;
    CdsMovEventosID_EVENTOS: TIntegerField;
    CdsMovEventosID_SUB_EVENTOS: TIntegerField;
    CdsMovEventosOBSERVACAO: TStringField;
    CdsMovEventosIDFUNCIONARIO_MONITOR: TIntegerField;
    CdsMovEventosDATA_EVENTO: TSQLTimeStampField;
    CdsMovEventosHORA_EVENTO: TTimeField;
    CdsMovEventosSTATUS: TStringField;
    CdsMovEventosARQUIVO_RELACIONADO: TStringField;
    CdsMovEventosIDEQUIPE: TIntegerField;
    CdsMovEventosPOSTO_TRABALHO: TStringField;
    CdsMovEventosNOME_FUNCIONARIO: TStringField;
    CdsMovEventosEQUIPE: TStringField;
    PnlGeral: TPanel;
    Label1: TLabel;
    DateTimePickerEvento: TDateTimePicker;
    BtnAtualizarEscalaDia: TBitBtn;
    DBNavigator1: TDBNavigator;
    Label3: TLabel;
    DBLookupComboBoxEquipe: TDBLookupComboBox;
    Label46: TLabel;
    DBLookupComboBoxUP: TDBLookupComboBox;
    CdsMovEventosEVENTOS: TStringField;
    CdsMovEventosSUB_EVENTOS: TStringField;
    OpenDialog1: TOpenDialog;
    lbl7: TLabel;
    DBLookupComboBoxFuncionario: TDBLookupComboBox;
    procedure CdsMovEventosAfterInsert(DataSet: TDataSet);
    procedure BtnAtualizarEscalaDiaClick(Sender: TObject);
    procedure CdsMovEventosAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBoxEquipeClick(Sender: TObject);
    procedure DBGridEventosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DateTimePickerEventoChange(Sender: TObject);
    procedure DBGridEventosEditButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMonitoramentoEventos: TFrmMonitoramentoEventos;

implementation

uses DmPrincipal, Lib;

{$R *.dfm}

procedure TFrmMonitoramentoEventos.CdsMovEventosAfterInsert(
  DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('IDMOV_EVENTOS').AsInteger := 0;
  DataSet.FieldByName('STATUS').AsString := 'A';
  DataSet.FieldByName('ID_UP').AsInteger := DBLookupComboBoxUP.KeyValue;
  DataSet.FieldByName('IDEQUIPE').AsInteger := DBLookupComboBoxEquipe.KeyValue;
  DataSet.FieldByName('IDFUNCIONARIO_MONITOR').AsInteger := DBLookupComboBoxFuncionario.KeyValue;
  DataSet.FieldByName('DATA_EVENTO').AsDateTime := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePickerEvento.Date));

end;

procedure TFrmMonitoramentoEventos.BtnAtualizarEscalaDiaClick(
  Sender: TObject);
begin
  inherited;

  if DsMovEventos.DataSet.State in [dsedit, dsinsert] then
    DsMovEventos.DataSet.Post;

  if ((DBLookupComboBoxEquipe.KeyValue > 0)
    and (DBLookupComboBoxUP.KeyValue > 0)
    and (DBLookupComboBoxFuncionario.KeyValue > 0)
    ) then
  begin

    SqlMovEventos.Sql.Text := 'SELECT * FROM MOV_EVENTOS WHERE DATA_EVENTO = '
    + Qs(FormatDateTime('dd.mm.yyyy', DateTimePickerEvento.Date)) +
      ' AND ID_UP=' + inttostr(DBLookupComboBoxUP.KeyValue) +
      ' AND IDFUNCIONARIO_MONITOR=' + inttostr(DBLookupComboBoxFuncionario.KeyValue) +
      ' AND IDEQUIPE=' + inttostr(DBLookupComboBoxEquipe.KeyValue);

    DsMovEventos.DataSet.DisableControls;
    DsMovEventos.DataSet.Close;
    DsMovEventos.DataSet.Open;

    while (DsMovEventos.DataSet.RecordCount < 5) do
      DsMovEventos.DataSet.Append;

    DsMovEventos.DataSet.First;
    DsMovEventos.DataSet.EnableControls;

    DBGridEventos.Visible := true;

  end;

end;

procedure TFrmMonitoramentoEventos.CdsMovEventosAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  IniciaTransMovimento;
  TClientDataSet(DataSet).ApplyUpdates(0);
  FinalizaTransMovimento;

end;

procedure TFrmMonitoramentoEventos.FormShow(Sender: TObject);
begin
  inherited;
  DsEventos.DataSet.Close;
  DsEventos.DataSet.Open;

  DsSubEventos.DataSet.Close;
  DsSubEventos.DataSet.Open;

  DateTimePickerEvento.Date := Date;

  DM.DsPostoTrabalho.DataSet.Close;
  DM.DsPostoTrabalho.DataSet.Open;

  DM.DsEquipe.DataSet.Close;
  DM.DsEquipe.DataSet.Open;

  DM.DsFuncionario.DataSet.Close;
  DM.DsFuncionario.DataSet.Open;

  DM.DsUP.DataSet.Close;
  DM.DsUP.DataSet.Open;

  DBLookupComboBoxUP.KeyValue := GLOBAL_ID_UP;
  DBLookupComboBoxFuncionario.KeyValue := GLOBAL_ID_FUNCIONARIO;

end;

procedure TFrmMonitoramentoEventos.DBLookupComboBoxEquipeClick(
  Sender: TObject);
begin
  inherited;
  BtnAtualizarEscalaDiaClick(nil);

end;

procedure TFrmMonitoramentoEventos.DBGridEventosDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
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

procedure TFrmMonitoramentoEventos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;

  if DsMovEventos.DataSet.State in [dsedit, dsinsert] then
    DsMovEventos.DataSet.Post;

end;

procedure TFrmMonitoramentoEventos.DateTimePickerEventoChange(
  Sender: TObject);
begin
  inherited;

  BtnAtualizarEscalaDiaClick(nil);

end;

procedure TFrmMonitoramentoEventos.DBGridEventosEditButtonClick(
  Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute then
  begin
    SetCurrentDir(GLOBAL_PATCH_SISTEMA);
    if not (DsMovEventos.DataSet.State in [dsedit, dsinsert]) then
      DsMovEventos.DataSet.Edit;

    DsMovEventos.DataSet.FieldByName('ARQUIVO_RELACIONADO').AsString := OpenDialog1.FileName;

    DsMovEventos.DataSet.Post;

  end;
end;

end.

