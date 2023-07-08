unit ConsultaInterno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, SqlExpr, Provider, StdCtrls, Grids,
  DBGrids, ExtCtrls, Buttons, DBCtrls, ComCtrls, ImgList, ToolWin;

type
  TFrmConsultaInterno = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    SqlConsulta: TSQLQuery;
    Dspconsulta: TDataSetProvider;
    CdsConsulta: TClientDataSet;
    DsConsulta: TDataSource;
    SqlSelectInterno: TSQLQuery;
    Label1: TLabel;
    RadioGroupStatus: TRadioGroup;
    DBGridConsulta: TDBGrid;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Editlocalizarvulgo: TEdit;
    DBGridVulgo: TDBGrid;
    SQLvulgo: TSQLQuery;
    dspvulgo: TDataSetProvider;
    cdsvulgo: TClientDataSet;
    dsvulgo: TDataSource;
    TabSheet3: TTabSheet;
    Label3: TLabel;
    Editlocalizaoutronome: TEdit;
    DBGridOutroNome: TDBGrid;
    SQLoutronome: TSQLQuery;
    DSPOUTRONOME: TDataSetProvider;
    CDSOUTRONOME: TClientDataSet;
    DSOUTRONOEM: TDataSource;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Editlocalizar: TEdit;
    TabSheet4: TTabSheet;
    Label4: TLabel;
    DBGridFiliacao: TDBGrid;
    BitBtn4: TBitBtn;
    Editfiliacao: TEdit;
    RadioGroupfiliacao: TRadioGroup;
    Sqlfiliacao: TSQLQuery;
    Dspfiliacao: TDataSetProvider;
    Cdsfiliacao: TClientDataSet;
    Dsfiliacao: TDataSource;
    RadioGroupTipoLocalizar: TRadioGroup;
    PanelFoto: TPanel;
    DBImage1: TDBImage;
    SqlCadastro: TSQLQuery;
    DspCadastro: TDataSetProvider;
    CdsCadastro: TClientDataSet;
    DsCadastro: TDataSource;
    ToolBarSetores: TToolBar;
    ToolButtonJuridico: TToolButton;
    DBGrid1: TDBGrid;
    RadioGroupFiltro: TRadioGroup;
    procedure EditLocalizarChange(Sender: TObject);
    procedure RadioGroupStatusClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditlocalizarvulgoChange(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure EditfiliacaoChange(Sender: TObject);
    procedure RadioGroupfiliacaoClick(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure DBGridConsultaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridVulgoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridOutroNomeDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridFiliacaoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ToolButtonJuridicoClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure RadioGroupTipoLocalizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaInterno: TFrmConsultaInterno;

implementation

uses Lib, DmPrincipal, MenuRelatorio;

{$R *.dfm}

procedure TFrmConsultaInterno.EditLocalizarChange(Sender: TObject);
begin
  //   if length(TEdit(sender).Text)<3 then
  //     Exit;

  SQLoutronome.sql.text := SqlSelectInterno.SQL.Text + ' where upper(OUTRO_NOME) like upper('
    + qs(Editlocalizaoutronome.text + '%') + ') order by nome_interno';

  DSOUTRONOEM.DataSet.Close;
  DSOUTRONOEM.DataSet.Open;

end;

procedure TFrmConsultaInterno.RadioGroupStatusClick(Sender: TObject);
begin

  //O evendo onChange do editLocalizar está chamando o evento Edit1Change() ao inves do EditLocalizarChange()
  Edit1Change(nil);
  if EditLocalizar.CanFocus then
    EditLocalizar.SetFocus;

end;

procedure TFrmConsultaInterno.FormShow(Sender: TObject);
begin
  DBGridConsulta.Columns[5].Title.Caption := GLOBAL_NIVEL_1;
  DBGridConsulta.Columns[6].Title.Caption := GLOBAL_NIVEL_2;
  DBGridConsulta.Columns[7].Title.Caption := GLOBAL_NIVEL_3;
  DBGridConsulta.Columns[8].Title.Caption := GLOBAL_NIVEL_4;

  DBGridVulgo.Columns[5].Title.Caption := GLOBAL_NIVEL_1;
  DBGridVulgo.Columns[6].Title.Caption := GLOBAL_NIVEL_2;
  DBGridVulgo.Columns[7].Title.Caption := GLOBAL_NIVEL_3;
  DBGridVulgo.Columns[8].Title.Caption := GLOBAL_NIVEL_4;

  DBGridOutroNome.Columns[5].Title.Caption := GLOBAL_NIVEL_1;
  DBGridOutroNome.Columns[6].Title.Caption := GLOBAL_NIVEL_2;
  DBGridOutroNome.Columns[7].Title.Caption := GLOBAL_NIVEL_3;
  DBGridOutroNome.Columns[8].Title.Caption := GLOBAL_NIVEL_4;

  DBGridFiliacao.Columns[6].Title.Caption := GLOBAL_NIVEL_1;
  DBGridFiliacao.Columns[7].Title.Caption := GLOBAL_NIVEL_2;
  DBGridFiliacao.Columns[8].Title.Caption := GLOBAL_NIVEL_3;
  DBGridFiliacao.Columns[9].Title.Caption := GLOBAL_NIVEL_4;

  PageControl1.ActivePageIndex := 0;
  Edit1Change(nil);
  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.Open;
  EditLocalizar.SetFocus;

end;

procedure TFrmConsultaInterno.EditlocalizarvulgoChange(Sender: TObject);
begin
  //   if length(TEdit(sender).Text)<3 then
  //     Exit;

  SQLvulgo.sql.text := SqlSelectInterno.SQL.Text + ' where upper(vulgo) like upper('
    + qs(Editlocalizarvulgo.text + '%') + ') order by nome_interno';

  dsvulgo.DataSet.Close;
  dsvulgo.DataSet.Open;

end;

procedure TFrmConsultaInterno.Edit1Change(Sender: TObject);
var
  status, Campo: string;
begin

  case RadioGroupStatus.ItemIndex of
    0: Status := ' interno.st = ''A'' ';
    1: Status := ' 1 = 1 ';
  end;

  case RadioGroupTipoLocalizar.ItemIndex of
    0: Campo := 'RGI';
    1: Campo := 'NOME_INTERNO';
  end;

  if RadioGroupTipoLocalizar.ItemIndex = 0 then
  begin
    SqlConsulta.sql.text := SqlSelectInterno.SQL.Text + ' where ' + Status
      + ' and interno.' + campo + ' = ' + qs(EditLocalizar.text)
      + ' order by interno.nome_interno ';
  end;

  if RadioGroupTipoLocalizar.ItemIndex = 1 then
  begin
    SqlConsulta.sql.text := SqlSelectInterno.SQL.Text + ' where ' + Status
      + ' and interno.' + campo + ' like ' + qs(EditLocalizar.text + '%')
      + ' order by interno.nome_interno ';
  end;

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

end;

procedure TFrmConsultaInterno.EditfiliacaoChange(Sender: TObject);
var
  status: string;
  filtro: string;
begin

  //   if length(TEdit(sender).Text)<3 then
  //     Exit;

  case RadioGroupfiliacao.ItemIndex of
    0: Status := 'mae';
    1: Status := 'pai';
  end;

  case RadioGroupFiltro.ItemIndex of
    0: filtro := 'A';
    1: filtro := 'I';
  end;

  if Status = 'mae' then
  begin

    if filtro = 'A' then
    begin
      Sqlfiliacao.sql.text := SqlSelectInterno.SQL.Text + ' where upper(interno.mae) like upper('
        + qs(Editfiliacao.text + '%') + ') And interno.st=''A'' AND interno.id_up = ''' + IntTOStr(GLOBAL_ID_UP)  + ''' order by interno.mae, interno.nome_interno ';
    end else
    begin
      Sqlfiliacao.sql.text := SqlSelectInterno.SQL.Text + ' where upper(interno.mae) like upper('
        + qs(Editfiliacao.text + '%') + ') order by interno.mae, interno.nome_interno ';
    end;

  end else
  begin

    if filtro = 'A' then
    begin
      Sqlfiliacao.sql.text := SqlSelectInterno.SQL.Text + ' where upper(interno.pai) like upper('
      + qs(Editfiliacao.text + '%') + ') and interno.st=''A'' AND interno.id_up = ''' + IntTOStr(GLOBAL_ID_UP)  + ''' order by interno.pai, interno.nome_interno ';
    end else
    begin
      Sqlfiliacao.sql.text := SqlSelectInterno.SQL.Text + ' where upper(interno.pai) like upper('
      + qs(Editfiliacao.text + '%') + ') order by interno.pai, interno.nome_interno ';
    end;

  end;

  Dsfiliacao.DataSet.Close;
  Dsfiliacao.DataSet.Open;

end;

procedure TFrmConsultaInterno.RadioGroupfiliacaoClick(Sender: TObject);
begin
  Editfiliacao.Text := '';
  EditfiliacaoChange(nil);
  if Editfiliacao.CanFocus then
    Editfiliacao.SetFocus;
end;

procedure TFrmConsultaInterno.TabSheet4Show(Sender: TObject);
begin
  RadioGroupfiliacao.ItemIndex := 0;
end;

procedure TFrmConsultaInterno.DBGridConsultaDrawColumnCell(Sender: TObject;
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

procedure TFrmConsultaInterno.DBGridVulgoDrawColumnCell(Sender: TObject;
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

procedure TFrmConsultaInterno.DBGridOutroNomeDrawColumnCell(Sender: TObject;
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

procedure TFrmConsultaInterno.DBGridFiliacaoDrawColumnCell(Sender: TObject;
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

procedure TFrmConsultaInterno.ToolButtonJuridicoClick(Sender: TObject);
var
  rel1: string;
begin

  FrmMenuRelatorio := TFrmMenuRelatorio.Create(Application);
  rel1 := GLOBAL_PATCH_RELATORIO + '\SYSTEM\Ficha do Interno.fr3';

  if FileExists(rel1) then
  begin

    with FrmMenuRelatorio do
    begin
      frxReport1.LoadFromFile(rel1);
      frxReport1.Variables.DeleteVariable('GLOBAL_ID_INTERNO');
      frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ID_INTERNO', GLOBAL_ID_INTERNO);
      frxReport1.Variables.DeleteVariable('ID_UP');
      frxReport1.Variables.AddVariable('SIAP', 'ID_UP', GLOBAL_ID_UP);
      frxReport1.Variables.DeleteVariable('GLOBAL_ORGAO');
      frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ORGAO', QS(GLOBAL_ORGAO));
      frxReport1.Variables.DeleteVariable('GLOBAL_DEPARTAMENTO');
      frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_DEPARTAMENTO', Qs(GLOBAL_DEPARTAMENTO));
      frxReport1.Variables.DeleteVariable('GLOBAL_DIRETORIA');
      frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_DIRETORIA', Qs(GLOBAL_DIRETORIA));
      frxReport1.ShowReport();
    end;

  end;

  FreeAndNil(FrmMenuRelatorio);
  SetCurrentDir(GLOBAL_PATCH_SISTEMA);

end;

procedure TFrmConsultaInterno.PageControl1Change(Sender: TObject);
begin
  DsCadastro.dataset.close;
  if PageControl1.ActivePageIndex = 0 then
    CdsCadastro.MasterSource := DsConsulta;
  if PageControl1.ActivePageIndex = 1 then
    CdsCadastro.MasterSource := dsvulgo;
  if PageControl1.ActivePageIndex = 2 then
    CdsCadastro.MasterSource := DSOUTRONOEM;
  if PageControl1.ActivePageIndex = 3 then
    CdsCadastro.MasterSource := Dsfiliacao;
  DsCadastro.dataset.open;

end;

procedure TFrmConsultaInterno.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin

  with DsCadastro.dataset do
  begin
    GLOBAL_ID_INTERNO := -1;

    if not active then
      exit;

    if isempty then
      exit;

    GLOBAL_ID_INTERNO := fieldbyname('ID_INTERNO').AsInteger;

  end;

end;

procedure TFrmConsultaInterno.RadioGroupTipoLocalizarClick(
  Sender: TObject);
begin
  if EditLocalizar.CanFocus then
  begin
    EditLocalizar.SetFocus;
    EditLocalizar.Text := '';
  end;
end;

end.

