unit PlanilhaDinamica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd , DB, DBClient, Provider, Grids, DBGrids,
  ExtCtrls, StdCtrls, frxChart, frxDBXComponents,
  frxADOComponents, frxClass,  frxDBSet, frxCrypt,
  frxGZip, frxDCtrl, frxDMPExport, frxGradient, frxChBox, frxCross,
  frxRich, frxOLE, frxBarcode, frxDesgn, frxExportODF, frxExportTXT,
  frxExportMail, frxExportCSV, frxExportText, frxExportImage, frxExportRTF,
  frxExportXML, frxExportXLS, frxExportHTML, frxExportPDF, DBCtrls, jpeg,
  frxExportBaseDialog, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmPlanilhaDinamica = class(TForm)
    DBGrdConsulta: TDBGrid;
    DspPrincipal: TDataSetProvider;
    CdsPrincipal: TClientDataSet;
    DsPrincipal: TDataSource;
    SqlPrincipal: TFDQuery;
    PnlConfig: TPanel;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxXLSExport1: TfrxXLSExport;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxBMPExport1: TfrxBMPExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxTIFFExport1: TfrxTIFFExport;
    frxGIFExport1: TfrxGIFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxCSVExport1: TfrxCSVExport;
    frxMailExport1: TfrxMailExport;
    frxODSExport1: TfrxODSExport;
    frxODTExport1: TfrxODTExport;
    frxReport1: TfrxReport;
    frxUserDataSet1: TfrxUserDataSet;
    frxDesigner1: TfrxDesigner;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxOLEObject1: TfrxOLEObject;
    frxRichObject1: TfrxRichObject;
    frxCrossObject1: TfrxCrossObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxGradientObject1: TfrxGradientObject;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxDialogControls1: TfrxDialogControls;
    frxGZipCompressor1: TfrxGZipCompressor;
    frxCrypt1: TfrxCrypt;
    frxDBDataset1: TfrxDBDataset;
    frxDBXComponents1: TfrxDBXComponents;
    frxChartObject1: TfrxChartObject;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    SqlPlanilhaDinamica: TFDQuery;
    DspPlanilhaDinamica: TDataSetProvider;
    CdsPlanilhaDinamica: TClientDataSet;
    DsPlanilhaDinamica: TDataSource;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    PanelTitulo: TPanel;
    Image2: TImage;
    LabelTitulo: TLabel;
    Image3: TImage;
    Panel3: TPanel;
    Label1: TLabel;
    BtnColunas: TButton;
    BtnAbrir: TButton;
    BtnRelatorio: TButton;
    RadioGroupTabelasDisponiveis: TRadioGroup;
    EditNomeRelatorio: TEdit;
    BtnNovo: TButton;
    BtnSalvar: TButton;
    BtnCondicoes: TButton;
    LabelFiltro: TLabel;
    procedure BtnColunasClick(Sender: TObject);
    procedure BtnAbrirClick(Sender: TObject);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure frxReport1BeforePrint(C: TfrxReportComponent);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrdConsultaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BtnNovoClick(Sender: TObject);
    procedure CdsPlanilhaDinamicaBeforeEdit(DataSet: TDataSet);
    procedure CdsPlanilhaDinamicaBeforeInsert(DataSet: TDataSet);
    procedure CdsPlanilhaDinamicaAfterPost(DataSet: TDataSet);
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CdsPlanilhaDinamicaBeforeDelete(DataSet: TDataSet);
    procedure CdsPlanilhaDinamicaAfterDelete(DataSet: TDataSet);
    procedure BtnRecuperarClick(Sender: TObject);
    procedure RadioGroupTabelasDisponiveisClick(Sender: TObject);
    procedure BtnCondicoesClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure CdsPlanilhaDinamicaAfterOpen(DataSet: TDataSet);
    procedure DBGrdConsultaTitleClick(Column: TColumn);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    ListWidthColumn: TStringList;
  public
    { Public declarations }
  end;

var
  FrmPlanilhaDinamica: TFrmPlanilhaDinamica;
  sCONDICAO_APLICADA, sCONDICAO_VISUAL: string;
implementation

uses DmPrincipal, ConsGridSetup, Lib, Filtros;

{$R *.dfm}

procedure TFrmPlanilhaDinamica.BtnColunasClick(Sender: TObject);
var
  i, j: integer;
  sListaCampos: string;
begin
  // guarda as colunas do gride para a configuracao da consulta
  ListWidthColumn := TStringList.Create;
  for I := 0 to DBGrdConsulta.Columns.Count - 1 do
  begin
    ListWidthColumn.AddObject(IntToStr(DBGrdConsulta.Columns[i].Width),
      DBGrdConsulta.Columns[i]);
  end;

  FrmConsGridSetup := TFrmConsGridSetup.Create(Self);
  FrmConsGridSetup.Initialize(DBGrdConsulta, ListWidthColumn);
  FrmConsGridSetup.ShowModal;
  freeandnil(FrmConsGridSetup);

  sListaCampos := '';
  for j := 0 to DBGrdConsulta.Columns.Count - 1 do
  begin
    if DBGrdConsulta.Columns[j].Visible then
    begin
      if sListaCampos = '' then
        sListaCampos := DBGrdConsulta.Columns[j].Field.DisplayLabel
      else
        sListaCampos := sListaCampos + ',' + DBGrdConsulta.Columns[j].Field.DisplayLabel;
    end;
  end;

  if RadioGroupTabelasDisponiveis.ItemIndex = 0 then
  begin
    EditNomeRelatorio.Text := 'Lista de Internos (' + sListaCampos + ')';
  end;

  if RadioGroupTabelasDisponiveis.ItemIndex = 1 then
  begin
    EditNomeRelatorio.Text := 'Lista de Visitantes (' + sListaCampos + ')';
  end;

  if RadioGroupTabelasDisponiveis.ItemIndex = 2 then
  begin
    EditNomeRelatorio.Text := 'Lista de Funcionários (' + sListaCampos + ')';
  end;

  if CanFocus then
    SetFocus;

end;

procedure TFrmPlanilhaDinamica.BtnAbrirClick(Sender: TObject);
begin

  DsPrincipal.dataset.Close;
  DsPrincipal.dataset.open;

end;

procedure TFrmPlanilhaDinamica.BtnRelatorioClick(Sender: TObject);
var
  rel1: string;
begin
  if not DsPrincipal.DataSet.Active then
    exit;
  if DsPrincipal.DataSet.IsEmpty then
    exit;

  rel1 := GLOBAL_PATCH_SISTEMA + '..\' + IntToStr(GLOBAL_ID_UP) + '\SYSTEM\FastTable.fr3';

  if FileExists(rel1) then
    frxReport1.LoadFromFile(rel1);

  frxReport1.Variables.DeleteVariable('ID_UP');
  frxReport1.Variables.AddVariable('SIAP', 'ID_UP', GLOBAL_ID_UP);
  frxReport1.Variables.DeleteVariable('GLOBAL_ORGAO');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ORGAO', QS(GLOBAL_ORGAO));
  frxReport1.Variables.DeleteVariable('GLOBAL_DEPARTAMENTO');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_DEPARTAMENTO', Qs(GLOBAL_DEPARTAMENTO));
  frxReport1.Variables.DeleteVariable('GLOBAL_DIRETORIA');
  frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_DIRETORIA', Qs(GLOBAL_DIRETORIA));
  frxReport1.Variables.DeleteVariable('NOME_RELATORIO');
  frxReport1.Variables.AddVariable('SIAP', 'NOME_RELATORIO', Qs(EditNomeRelatorio.Text));
  frxReport1.Variables.DeleteVariable('TOTAL_REGISTROS');
  frxReport1.Variables.AddVariable('SIAP', 'TOTAL_REGISTROS', Qs(inttostr(DsPrincipal.DataSet.RecordCount)));

  frxReport1.ShowReport;
end;

procedure TFrmPlanilhaDinamica.frxReport1BeforePrint(c: TfrxReportComponent);
var
  Cross: TfrxCrossView;
  i, j: Integer;
begin
  if c is TfrxCrossView then
  begin
    Cross := TfrxCrossView(c);
    CdsPrincipal.First;
    i := 0;
    while not CdsPrincipal.Eof do
    begin
      for j := 0 to DBGrdConsulta.Columns.Count - 1 do
        if DBGrdConsulta.Columns[j].Visible then
          Cross.AddValue([i], [DBGrdConsulta.Columns[j].Field.DisplayLabel], [DBGrdConsulta.Columns[j].Field.AsString]);

      CdsPrincipal.Next;
      Inc(i);
    end;
  end;
end;

procedure TFrmPlanilhaDinamica.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TFrmPlanilhaDinamica.DBGrdConsultaDrawColumnCell(Sender: TObject;
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

procedure TFrmPlanilhaDinamica.BtnNovoClick(Sender: TObject);
var
  sColunasVisiveis: string;
  j: integer;
begin
  with DsPlanilhaDinamica.DataSet do
  begin
    if not active then
      open;

    sColunasVisiveis := '';
    for j := 0 to DBGrdConsulta.Columns.Count - 1 do
      if DBGrdConsulta.Columns[j].Visible then
        sColunasVisiveis := DBGrdConsulta.Columns[j].Field.DisplayLabel + ',' + sColunasVisiveis;

    append;
    fieldbyname('IDPLANILHA_DINAMICA').AsInteger := 0;
    fieldbyname('ID_FUNCIONARIO').AsInteger := GLOBAL_ID_FUNCIONARIO;
    fieldbyname('DATA').AsDateTime := Date;
    fieldbyname('NOME_RELATORIO').AsString := EditNomeRelatorio.Text;
    fieldbyname('COLUNAS_VISIVEIS').AsString := sColunasVisiveis;
    fieldbyname('INDEX_TABELA').AsInteger := RadioGroupTabelasDisponiveis.ItemIndex;
    fieldbyname('CONDICAO_APLICADA').AsString := sCONDICAO_APLICADA;
    fieldbyname('CONDICAO_VISUAL').AsString := sCONDICAO_VISUAL;
    fieldbyname('INDEXFIELDNAMES').AsString := CdsPrincipal.IndexFieldNames;
    Post;

  end;

end;

procedure TFrmPlanilhaDinamica.CdsPlanilhaDinamicaBeforeEdit(
  DataSet: TDataSet);
begin
  IniciaTransMovimento;

end;

procedure TFrmPlanilhaDinamica.CdsPlanilhaDinamicaBeforeInsert(
  DataSet: TDataSet);
begin
  IniciaTransMovimento;

end;

procedure TFrmPlanilhaDinamica.CdsPlanilhaDinamicaAfterPost(
  DataSet: TDataSet);
var
  ItenRecord: TBookmark;
begin

  with DataSet do
  begin
    if not IsEmpty then
      ItenRecord := GetBookmark;
    TClientDataSet(DataSet).ApplyUpdates(0);
    FinalizaTransMovimento;
    close;
    open;

    if Assigned(ItenRecord) then
    begin
      try
        if BookmarkValid(ItenRecord) then
          GotoBookmark(ItenRecord);
      finally
        FreeBookmark(ItenRecord);
      end;
    end;
  end;

end;

procedure TFrmPlanilhaDinamica.BtnSalvarClick(Sender: TObject);
var
  sColunasVisiveis: string;
  j: integer;
  s_mensagem: array[0..1000] of Char;
begin

  with DsPlanilhaDinamica.DataSet do
  begin

    StrPCopy(s_mensagem, 'Substituir este Relatório: (' + fieldbyname('NOME_RELATORIO').AsString + ')?');

    if Application.MessageBox(s_mensagem,
      'Confirme.', mb_YesNo + Mb_IconQuestion) <> idYes then
      exit;

    if not active then
      exit;

    if IsEmpty then
      exit;

    sColunasVisiveis := '';
    for j := 0 to DBGrdConsulta.Columns.Count - 1 do
      if DBGrdConsulta.Columns[j].Visible then
        sColunasVisiveis := DBGrdConsulta.Columns[j].Field.DisplayLabel + ',' + sColunasVisiveis;

    edit;
    fieldbyname('ID_FUNCIONARIO').AsInteger := GLOBAL_ID_FUNCIONARIO;
    fieldbyname('DATA').AsDateTime := Date;
    fieldbyname('NOME_RELATORIO').AsString := EditNomeRelatorio.Text;
    fieldbyname('COLUNAS_VISIVEIS').AsString := sColunasVisiveis;
    fieldbyname('INDEX_TABELA').AsInteger := RadioGroupTabelasDisponiveis.ItemIndex;
    fieldbyname('CONDICAO_APLICADA').AsString := sCONDICAO_APLICADA;
    fieldbyname('CONDICAO_VISUAL').AsString := sCONDICAO_VISUAL;
    fieldbyname('INDEXFIELDNAMES').AsString := CdsPrincipal.IndexFieldNames;
    Post;

  end;

end;

procedure TFrmPlanilhaDinamica.FormCreate(Sender: TObject);
begin
  DsPlanilhaDinamica.DataSet.Open;
  RadioGroupTabelasDisponiveisClick(nil);
end;

procedure TFrmPlanilhaDinamica.CdsPlanilhaDinamicaBeforeDelete(
  DataSet: TDataSet);
begin
  IniciaTransMovimento;
end;

procedure TFrmPlanilhaDinamica.CdsPlanilhaDinamicaAfterDelete(
  DataSet: TDataSet);
var
  ItenRecord: TBookmark;
begin
  with DataSet do
  begin
    if not IsEmpty then
      ItenRecord := GetBookmark;
    TClientDataSet(DataSet).ApplyUpdates(0);
    FinalizaTransMovimento;
    close;
    open;

    if Assigned(ItenRecord) then
    begin
      try
        if BookmarkValid(ItenRecord) then
          GotoBookmark(ItenRecord);
      finally
        FreeBookmark(ItenRecord);
      end;
    end;

  end;
end;

procedure TFrmPlanilhaDinamica.BtnRecuperarClick(Sender: TObject);
var
  sColunasVisiveis: string;
  j: integer;

begin
  with DsPlanilhaDinamica.DataSet do
  begin

    if not active then
      exit;

    if IsEmpty then
      exit;

    RadioGroupTabelasDisponiveis.ItemIndex := fieldbyname('INDEX_TABELA').AsInteger;
    EditNomeRelatorio.Text := fieldbyname('NOME_RELATORIO').AsString;
    sCONDICAO_APLICADA := fieldbyname('CONDICAO_APLICADA').AsString;
    sCONDICAO_VISUAL := fieldbyname('CONDICAO_VISUAL').AsString;
    CdsPrincipal.IndexFieldNames := fieldbyname('INDEXFIELDNAMES').AsString;
    AddWhere(SqlPrincipal, sCONDICAO_APLICADA);
    BtnAbrirClick(nil);
    sColunasVisiveis := fieldbyname('COLUNAS_VISIVEIS').AsString;
    for j := 0 to DBGrdConsulta.Columns.Count - 1 do
      DBGrdConsulta.Columns[j].Visible := ContemValor(DBGrdConsulta.Columns[j].Field.DisplayLabel + ',', sColunasVisiveis);
  end;

end;

procedure TFrmPlanilhaDinamica.RadioGroupTabelasDisponiveisClick(
  Sender: TObject);
var
  i: Integer;
  Field: TField;
begin

  sCONDICAO_APLICADA := '';
  sCONDICAO_VISUAL := '';

  if RadioGroupTabelasDisponiveis.ItemIndex = 0 then
  begin
    SqlPrincipal.sql.Text := 'SELECT * FROM VW_INTERNO';
    EditNomeRelatorio.Text := 'Lista de Internos (Todos os Campos)';
  end;

  if RadioGroupTabelasDisponiveis.ItemIndex = 1 then
  begin
    SqlPrincipal.sql.Text := 'SELECT * FROM VW_VISITANTES';
    EditNomeRelatorio.Text := 'Lista de Visitantes (Todos os Campos)';
  end;

  if RadioGroupTabelasDisponiveis.ItemIndex = 2 then
  begin
    SqlPrincipal.sql.Text := 'SELECT * FROM VW_FUNCIONARIO';
    EditNomeRelatorio.Text := 'Lista de Funcionários (Todos os Campos)';
  end;

  DsPrincipal.dataset.Close;

  // add existing fields
  while CdsPrincipal.Fields.Count > 0 do
    CdsPrincipal.Fields.Remove(CdsPrincipal.Fields[0]);
  CdsPrincipal.FieldDefs.Clear;
  CdsPrincipal.FieldDefs.Update;
  DBGrdConsulta.Columns.Clear;
  for i := 0 to CdsPrincipal.FieldDefs.Count - 1 do
  begin
    CdsPrincipal.FieldDefs[i].CreateField(CdsPrincipal);
    DBGrdConsulta.Columns.Add;
    DBGrdConsulta.Columns[i].Field := CdsPrincipal.Fields[i];
  end;

end;

procedure TFrmPlanilhaDinamica.BtnCondicoesClick(Sender: TObject);
begin
  FrmFiltros := TFrmFiltros.Create(self);
  FrmFiltros.Initialize(DBGrdConsulta.DataSource, SqlPrincipal, Self);
  FrmFiltros.Memo1.Text := sCONDICAO_APLICADA;
  FrmFiltros.Memo2.Text := sCONDICAO_VISUAL;
  sCONDICAO_VISUAL := FrmFiltros.Memo2.Text;
  FrmFiltros.ShowModal;
  sCONDICAO_APLICADA := FrmFiltros.Memo1.Text;
  sCONDICAO_VISUAL := FrmFiltros.Memo2.Text;
  LabelFiltro.Caption := 'Filtro aplicado: ' + sCONDICAO_VISUAL;
  Freeandnil(FrmFiltros);
  SetFocus;

end;

procedure TFrmPlanilhaDinamica.DBGrid1DblClick(Sender: TObject);
begin

  TClientDataSet(DsPrincipal.DataSet).IndexFieldNames := '';
  BtnRecuperarClick(nil);
  LabelFiltro.Caption := 'Filtro aplicado: ' + sCONDICAO_VISUAL;

end;

procedure TFrmPlanilhaDinamica.CdsPlanilhaDinamicaAfterOpen(
  DataSet: TDataSet);
begin
  BtnRelatorio.Enabled := (not DataSet.IsEmpty);
end;

procedure TFrmPlanilhaDinamica.DBGrdConsultaTitleClick(Column: TColumn);
begin
  if Column.Field.FieldKind in [fkData] then
    TClientDataSet(Column.Field.DataSet).IndexFieldNames := Column.FieldName;
end;

procedure TFrmPlanilhaDinamica.DBGrid1TitleClick(Column: TColumn);
begin
  if Column.Field.FieldKind in [fkData] then
    TClientDataSet(Column.Field.DataSet).IndexFieldNames := Column.FieldName;

end;

end.

