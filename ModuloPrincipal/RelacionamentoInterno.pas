unit RelacionamentoInterno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloFormulario, StdCtrls, jpeg, ExtCtrls, ComCtrls, FMTBcd,
  DB, SqlExpr, DBClient, DBCtrls, Provider, pngextra, pngimage,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmRelacionamentoInterno = class(TFrmModeloFormulario)
    Blocos: TClientDataSet;
    Blocosnome: TStringField;
    Blocoscaption: TStringField;
    Blocosnivel: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Image1: TImage;
    BtnVisualizar: TButton;
    Button1: TButton;
    DBLookupComboBoxInterno: TDBLookupComboBox;
    Label33: TLabel;
    Memo1: TMemo;
    Button2: TButton;
    ProgressBar1: TProgressBar;
    DBImageFOTOInterno: TDBImage;
    DspInterno: TDataSetProvider;
    CdsInterno: TClientDataSet;
    DsInterno: TDataSource;
    Image4: TImage;
    DspListaInterno: TDataSetProvider;
    CdsListaInterno: TClientDataSet;
    DsListaInterno: TDataSource;
    SqlRelacionamento: TFDQuery;
    SqlInterno: TFDQuery;
    SqlListaInterno: TFDQuery;
    procedure BtnVisualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBLookupComboBoxInternoClick(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    procedure PreencheBlocos;
    procedure Relatorio;
    procedure ExecutaAisee3;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelacionamentoInterno: TFrmRelacionamentoInterno;
  sInteligence, sAiSee, slinestyle, sedge: string;

implementation

uses Lib, DmPrincipal, MenuRelatorio;

{$R *.dfm}

procedure TFrmRelacionamentoInterno.BtnVisualizarClick(Sender: TObject);
begin
  inherited;

  if DBLookupComboBoxInterno.KeyValue <= 0 then
  begin
    ShowMessage('Informe o interno(a).');
    Exit;
  end;

  DeleteFile('inteligencia.gdl');

  PreencheBlocos;

  sAiSee := 'graph: { title: "RELACIONAMENTO_INTERNOS"'
    + #13#10'splines: yes'
    + #13#10'layoutalgorithm: dfs'
    + #13#10'finetuning: no'
    + #13#10'display_edge_labels: yes'
    + #13#10''
    + #13#10'yspace: 30'
    + #13#10'xspace: 60'
    + #13#10'node.shape:  circle';

  if Blocos.IsEmpty then
  begin
    ShowMessage('Interno sem relacionamento.' + #13#10 + 'Não tem advogado e não tem visitante.');
    Exit;
  end;

  Blocos.First;
  while not Blocos.Eof do
  begin

    if Blocos.fieldbyname('nome').AsString = 'I' + inttostr(DBLookupComboBoxInterno.KeyValue) then
      sAiSee := sAiSee + #13#10'  node: { title:"' + Blocos.FieldByName('nome').AsString + '" label: "' + Blocos.FieldByName('caption').AsString +
        '" shape: ellipse horizontal_order: 0 iconfile: "' + inttostr(DBLookupComboBoxInterno.KeyValue) + '.png"}'
    else
      sAiSee := sAiSee + #13#10'  node: { title:"' + Blocos.FieldByName('nome').AsString + '" label: "' + Blocos.FieldByName('caption').AsString +
        '" horizontal_order: 2}';
    Blocos.Next;
  end;

  SqlRelacionamento.First;
  while not SqlRelacionamento.Eof do
  begin

    slinestyle := 'linestyle: dotted';
    if SqlRelacionamento.fieldbyname('DESCRICAO').AsString = 'ADVOGADO' then
      slinestyle := '';

    sedge := 'edge';
    if SqlRelacionamento.fieldbyname('NIVEL').AsString = '0' then
      sedge := 'bentnearedge';

    if SqlRelacionamento.fieldbyname('NIVEL').AsString = '0' then
    begin
      sAiSee := sAiSee + #13#10'  ' + sedge + ': { source:"' + SqlRelacionamento.fieldbyname('IDDESTINO').AsString
        + '" target:"' + SqlRelacionamento.fieldbyname('IDORIGEM').AsString + '" label: "' + SqlRelacionamento.fieldbyname('DESCRICAO').AsString + '" ' +
        slinestyle + '}';
    end
    else
    begin
      sAiSee := sAiSee + #13#10'  ' + sedge + ': { source:"' + SqlRelacionamento.fieldbyname('IDORIGEM').AsString
        + '" target:"' + SqlRelacionamento.fieldbyname('IDDESTINO').AsString + '" label: "' + SqlRelacionamento.fieldbyname('DESCRICAO').AsString + '" ' +
        slinestyle + '}';
    end;

    SqlRelacionamento.Next;

  end;

  sAiSee := sAiSee + #13#10'}';

  DeleteFile(sInteligence);

  Memo1.Lines.Clear;
  Memo1.Lines.Text := sAiSee;

  ExecutaAisee3;

  DeleteFile('old.gdl');

  RenameFile('inteligencia.gdl', 'old.gdl');

end;

procedure TFrmRelacionamentoInterno.ExecutaAisee3();
var
  i: Integer;
begin

  Memo1.Lines.SaveToFile('inteligencia.gdl');

  sInteligence := GLOBAL_PATCH_SISTEMA + 'inteligencia.bmp';

  DeleteFile(sInteligence);

  Image1.Picture.Bitmap.FreeImage;
  // Exit;

  if AISSE3_PATH_EXE <> 'LINUX' then
  begin
    if FileExists(Trim(AISSE3_PATH_EXE)) then
    begin
      ExecutePrograma(AISSE3_PATH_EXE, '"' + GLOBAL_PATCH_SISTEMA + 'inteligencia.gdl" --export "'
        + sInteligence + '"');
    end
    else
    begin
      ShowMessage('Não foi encontrado o programa:' + #13#10 + AISSE3_PATH_EXE);
      Exit;
    end;
  end;

  ProgressBar1.Position := 0;
  ProgressBar1.Max := 100;
  i := 0;
  while not FileExists(sInteligence) do
  begin
    Sleep(1000);
    ProgressBar1.Position := ProgressBar1.Position + 1;
    Application.ProcessMessages;
    Inc(i);
    if i > 300 then
      Break;
  end;

  if i < 300 then
  begin
    Sleep(500);

    Image1.Picture.Bitmap.LoadFromFile(sInteligence);

    ProgressBar1.Position := 0;
    SqlRelacionamento.Close;

    Relatorio;

  end
  else
    ShowMessage('Não pode concluir o relacionamento.');

  DeleteFile(IntToStr(DBLookupComboBoxInterno.KeyValue) + '.png');

end;

procedure TFrmRelacionamentoInterno.PreencheBlocos();
begin
  inherited;
  SqlRelacionamento.SQL.Text := 'SELECT DISTINCT IDORIGEM, NOME_ORIGEM, IDDESTINO, NOME_DESTINO, DESCRICAO, NIVEL FROM SP_RELACIONAMENTO_INTERNO (' +
    IntToStr(DBLookupComboBoxInterno.KeyValue) + ',NULL)';
  SqlRelacionamento.Close;
  SqlRelacionamento.Open;
  Blocos.Close;
  Blocos.CreateDataSet;
  Blocos.Open;

  SqlRelacionamento.First;
  while not SqlRelacionamento.Eof do
  begin
    Blocos.Filter := 'nome = ' + qs(SqlRelacionamento.fieldbyname('IDORIGEM').AsString);
    Blocos.Filtered := False;
    Blocos.Filtered := True;
    if Blocos.IsEmpty then
      Blocos.Append
    else
      Blocos.Edit;
    Blocos.FieldByName('nome').AsString := SqlRelacionamento.fieldbyname('IDORIGEM').AsString;
    Blocos.FieldByName('caption').AsString := SqlRelacionamento.fieldbyname('NOME_ORIGEM').AsString;
    Blocos.FieldByName('nivel').AsString := SqlRelacionamento.fieldbyname('NIVEL').AsString;
    Blocos.Post;
    SqlRelacionamento.Next;
  end;

  SqlRelacionamento.First;
  while not SqlRelacionamento.Eof do
  begin
    Blocos.Filter := 'nome = ' + qs(SqlRelacionamento.fieldbyname('IDDESTINO').AsString);
    Blocos.Filtered := False;
    Blocos.Filtered := True;
    if Blocos.IsEmpty then
      Blocos.Append
    else
      Blocos.Edit;
    Blocos.FieldByName('nome').AsString := SqlRelacionamento.fieldbyname('IDDESTINO').AsString;
    Blocos.FieldByName('caption').AsString := SqlRelacionamento.fieldbyname('NOME_DESTINO').AsString;
    Blocos.FieldByName('nivel').AsString := SqlRelacionamento.fieldbyname('NIVEL').AsString;
    Blocos.Post;
    SqlRelacionamento.Next;
  end;
  Blocos.Filtered := False;

  SqlRelacionamento.First;

end;

procedure TFrmRelacionamentoInterno.FormCreate(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex := 0;
  SqlInterno.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;
  DsInterno.DataSet.Close;
  DsInterno.DataSet.Open;

end;

procedure TFrmRelacionamentoInterno.Relatorio();
var
  rel1: string;
begin
  FrmMenuRelatorio := TFrmMenuRelatorio.Create(Application);
  rel1 := GLOBAL_PATCH_RELATORIO + '\SYSTEM\aisee3.fr3';

  if FileExists(rel1) then
  begin
    with FrmMenuRelatorio do
    begin
      frxReport1.LoadFromFile(rel1);
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

procedure TFrmRelacionamentoInterno.Button1Click(Sender: TObject);
begin
  inherited;
  Relatorio();
end;

procedure TFrmRelacionamentoInterno.Button2Click(Sender: TObject);
begin
  inherited;
  ExecutaAisee3;
end;

procedure TFrmRelacionamentoInterno.DBLookupComboBoxInternoClick(
  Sender: TObject);

begin
  inherited;

  if DBLookupComboBoxInterno.KeyValue > 0 then
  begin
    SqlListaInterno.SQL.Text := 'SELECT id_interno, foto FROM INTERNO WHERE ID_INTERNO=' +
      IntToStr(DBLookupComboBoxInterno.KeyValue);
    DsListaInterno.DataSet.Close;
    DsListaInterno.DataSet.Open;

    try
      if Assigned(DBImageFOTOInterno.Picture) then
      begin
        Image4.Picture.Assign(DBImageFOTOInterno.Picture);
        ImageToPNG(Image4, IntToStr(DBLookupComboBoxInterno.KeyValue) + '.png');
      end;
    except
    end;

  end;

end;

procedure TFrmRelacionamentoInterno.Image4Click(Sender: TObject);
begin
  inherited;
  Image4.Picture.Bitmap.SaveToFile('testebmp.bmp');
end;

procedure TFrmRelacionamentoInterno.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if PageControl1.CanFocus then
    PageControl1.SetFocus;
end;

end.

