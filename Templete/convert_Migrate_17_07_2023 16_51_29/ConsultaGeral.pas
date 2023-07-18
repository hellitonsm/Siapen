unit ConsultaGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider , StdCtrls, ExtCtrls,
  Grids, DBGrids, DBCtrls, jpeg, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmConsultaGeral = class(TForm)
    DBGrdConsulta: TDBGrid;
    PanelLocalizar: TPanel;
    EdtPesquisa: TEdit;
    Label1: TLabel;
    SqlConsulta: TFDQuery;
    DspConsulta: TDataSetProvider;
    CdsConsulta: TClientDataSet;
    DsConsulta: TDataSource;
    ButtonConfirma: TButton;
    PanelTitulo: TPanel;
    Image2: TImage;
    LabelTitulo: TLabel;
    Image3: TImage;
    SqlCadastro: TFDQuery;
    DspCadastro: TDataSetProvider;
    CdsCadastro: TClientDataSet;
    DsCadastro: TDataSource;
    PanelFoto: TPanel;
    DBImage1: TDBImage;
    ButtonIncluir: TButton;
    procedure DBGrdConsultaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrdConsultaKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrdConsultaTitleClick(Column: TColumn);
    procedure DBGrdConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrdConsultaDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ButtonIncluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    LetrasDig: string;
    sSql: string;
    { Private declarations }
  public
    NomeConsulta: string;
    procedure ConsInitialize(cTop, cLeft, cWidth, cHeight: Integer;
      cSql: string; IdBusca: string = '0'; CampoBusca: string = 'CODIGO';
      MultiplaSelecao: Boolean = false);
    { Public declarations }
  end;

var
  FrmConsultaGeral: TFrmConsultaGeral;

implementation

uses DmPrincipal, Aguarde, Lib, CadastroFaltasDisciplinares;

{$R *.dfm}

procedure TFrmConsultaGeral.ConsInitialize(cTop, cLeft, cWidth, cHeight: Integer;
  cSql: string; IdBusca: string = '0'; CampoBusca: string = 'CODIGO';
  MultiplaSelecao: Boolean = false);
var
  i, x, iPSql: integer;
  UsaFiltroCliente: boolean;
  CampoFiltroCliente, nSql: string;
  fQUANT_SEL: tField;
  DatasetFixo: TClientDataset;
begin

  if NomeConsulta <> 'INTERNO' then
    CdsCadastro.MasterSource := nil;

  try
    with FrmConsultaGeral do
    begin
      Top := cTop;
      Left := cLeft;
      Width := cWidth;
      Height := cHeight;
      Refresh;

      if sSql <> cSql then
      begin
        SqlConsulta.Close;
        SqlConsulta.SQL.Clear;
        SqlConsulta.SQL.Add(cSql);
      end;

      with DsConsulta.DataSet do
      begin
        filter := '';
        filtered := false;
        if sSql <> cSql then
        begin
          sSql := cSql;
          Close;
        end;
        Close;
        Open;

        self.Caption := 'Consulta: Total de Registros (' + IntToStr(RecordCount) + ') Abertos em ' + FormatDateTime('nn.ss.zzz', now
          - tempoconsulta) + ' ms';
        LabelTitulo.Caption := self.Caption;
        if IdBusca <> '0' then
        begin
          try
            DsConsulta.DataSet.Locate(CampoBusca, IdBusca, []);
          except
            DsConsulta.DataSet.First;
          end;
        end;

      end;
    end;
  except
    FreeAndNil(FrmAguarde);
  end;

end;

procedure TFrmConsultaGeral.DBGrdConsultaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

  if (State <> [gdSelected]) and (State <> [gdSelected, gdFocused]) then
  begin

    TDBGrid(Sender).Canvas.Font.Color := clBlack;

    if odd(TDBGrid(Sender).DataSource.DataSet.Recno) then
    begin
      TDBGrid(Sender).Canvas.Brush.color := clSilver;
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

procedure TFrmConsultaGeral.DBGrdConsultaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    ButtonConfirma.Click;
    exit;
  end;

  EdtPesquisaKeyPress(Sender, Key);
  EdtPesquisa.Text := LetrasDig;

end;

procedure TFrmConsultaGeral.DBGrdConsultaTitleClick(Column: TColumn);
begin
  TClientDataSet(DsConsulta.DataSet).IndexFieldNames := Column.FieldName;

end;

procedure TFrmConsultaGeral.DBGrdConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  TextoMsg: WideString;
  i: Integer;
  TemItem: Boolean;
begin
  if Key = vk_Escape then
  begin
    ModalResult := -1;
    close;
  end;

  if (Key >= 4114) and (key <= 4117) then // setas
    LetrasDig := '';

  if key = 13 then
  begin
    Key := 9;
    DsConsulta.DataSet.Prior;
    exit;
  end;

  if key = VK_BACK then
    LetrasDig := Copy(LetrasDig, 1, length(LetrasDig) - 1);

  EdtPesquisa.Text := LetrasDig;

  if (Key = vk_return) then
  begin
    LetrasDig := '';
  end;

end;

procedure TFrmConsultaGeral.EdtPesquisaKeyPress(Sender: TObject;
  var Key: Char);
var
  TipoCampo: TFieldType;
begin
  if (Key = #13) then
  begin
    ButtonConfirma.Click;
    exit;
  end;

  if (Key <> #8) and (Key <> #27) and (Key <> #13) then
    LetrasDig := LetrasDig + uppercase(key);

  // Nao alterar este codigo, pois a consulta c/ F7 para de funcionar
  if (LetrasDig <> '') and (Key <> #27) then
  begin
    TipoCampo := DBGrdConsulta.Columns.Items[DBGrdConsulta.SelectedIndex].Field.DataType;

    TClientDataSet(DsConsulta.DataSet).DisableControls;
    if (TipoCampo in [ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftFMTBcd]) then
    begin
      LetrasDig := ApenasNumero(LetrasDig);
      try
        if (LetrasDig <> '') then
          TClientDataSet(DsConsulta.DataSet).Locate(DBGrdConsulta.Columns.Items[DBGrdConsulta.SelectedIndex].FieldName,
            StrToInt(LetrasDig), [loCaseInsensitive, loPartialKey])
      except
        TClientDataSet(DsConsulta.DataSet).EnableControls;
        Exit;
      end;
    end
    else if (TipoCampo = ftString) then
    begin
      TClientDataSet(DsConsulta.DataSet).Filtered := false;
      try
        TClientDataSet(DsConsulta.DataSet).Filter := DBGrdConsulta.Columns.Items[DBGrdConsulta.SelectedIndex].FieldName
          + ' LIKE ' + QS('%' + BuscaTroca(LetrasDig, ' ', '%') + '%');
      except
        TClientDataSet(DsConsulta.DataSet).EnableControls;
        Exit;
      end;
      TClientDataSet(DsConsulta.DataSet).Filtered := true;
    end;
  end;

  TClientDataSet(DsConsulta.DataSet).EnableControls;

end;

procedure TFrmConsultaGeral.DBGrdConsultaDblClick(Sender: TObject);
begin
  ButtonConfirma.Click;
end;

procedure TFrmConsultaGeral.FormShow(Sender: TObject);
begin
  if NomeConsulta <> 'INTERNO' then
  begin
    CdsCadastro.MasterSource := nil;
    PanelFoto.Visible := false;
  end
  else
  begin
    DsCadastro.DataSet.Close;
    DsCadastro.DataSet.Open;
  end;

  if DBGrdConsulta.DataSource.DataSet.Active then
    DBGrdConsulta.SelectedIndex := GLOBAL_INDEX_DO_GRID;

  GLOBAL_INDEX_DO_GRID := 0;
end;

procedure TFrmConsultaGeral.FormActivate(Sender: TObject);
begin

  LetrasDig := '';
  EdtPesquisa.Text := '';
  TClientDataSet(DsConsulta.DataSet).Filtered := false ;
  TClientDataSet(DsConsulta.DataSet).Filter := '' ;

end;

procedure TFrmConsultaGeral.EdtPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  LetrasDig := EdtPesquisa.Text;

end;

procedure TFrmConsultaGeral.ButtonIncluirClick(Sender: TObject);
begin
  FrmCadastroFaltasDisciplinares := TFrmCadastroFaltasDisciplinares.Create(Application);
  FrmCadastroFaltasDisciplinares.ShowModal;
end;

procedure TFrmConsultaGeral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MostrarBotaoIncluir := False;
  ButtonIncluir.Visible := False;
end;

end.

