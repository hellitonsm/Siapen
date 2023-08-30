unit MensagemViaFastReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloFormulario, StdCtrls, jpeg, ExtCtrls, ComCtrls, ToolWin,
  Buttons, frxClass, frxPreview, frxChBox, frxOLE, frxDCtrl, frxDMPExport,
  frxCross, frxBarcode, frxRich, frxCrypt, frxGZip, frxExportMail,
  frxExportImage, frxExportCSV, frxExportRTF, frxExportText, frxExportHTML,
  frxExportXLS, frxExportXML, frxExportPDF, frxExportODF, frxChart,
  frxDBSet, frxDBXComponents, frxDesgn, FMTBcd, SqlExpr,
  Provider, DB, DBClient, frxExportBaseDialog, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmMensagemViaFastReport = class(TFrmModeloFormulario)
    Timer1: TTimer;
    ToolBar1: TToolBar;
    ToolButtonAlerta: TToolButton;
    Panel1: TPanel;
    frxPreview1: TfrxPreview;
    frxDesigner1: TfrxDesigner;
    frxReport1: TfrxReport;
    frxDBXComponents1: TfrxDBXComponents;
    frxTIFFExport1: TfrxTIFFExport;
    frxDBDataset1: TfrxDBDataset;
    frxChartObject1: TfrxChartObject;
    frxODTExport1: TfrxODTExport;
    frxODSExport1: TfrxODSExport;
    frxPDFExport1: TfrxPDFExport;
    frxXMLExport1: TfrxXMLExport;
    frxXLSExport1: TfrxXLSExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxRTFExport1: TfrxRTFExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxBMPExport1: TfrxBMPExport;
    frxCSVExport1: TfrxCSVExport;
    frxGIFExport1: TfrxGIFExport;
    frxMailExport1: TfrxMailExport;
    frxGZipCompressor1: TfrxGZipCompressor;
    frxCrypt1: TfrxCrypt;
    frxRichObject1: TfrxRichObject;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxCrossObject1: TfrxCrossObject;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxDialogControls1: TfrxDialogControls;
    frxOLEObject1: TfrxOLEObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    BtnOcultar: TButton;
    btnExpandir: TButton;
    RadioGroupTipo: TRadioGroup;
    BitBtn1: TBitBtn;
    Button1: TButton;
    DsExecute: TDataSource;
    CdsExecute: TClientDataSet;
    DspExecute: TDataSetProvider;
    SqlExecute: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnOcultarClick(Sender: TObject);
    procedure btnExpandirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RadioGroupTipoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string;
      var Value: Variant);
  private
    procedure AtualizarRelatorio;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMensagemViaFastReport: TFrmMensagemViaFastReport;
  fMasterData: TComponent;

implementation

uses DmPrincipal, Lib, frxCustomDB, ModuloPrincipal;

{$R *.dfm}

procedure TFrmMensagemViaFastReport.AtualizarRelatorio();
var
  rel1: string;
begin

  Timer1.Enabled := False;
  ToolButtonAlerta.Visible := False;

  //  frxReport1.Preview := nil;
  //  frxPreview1.Report := nil;
//  GLOBAL_PATCH_RELATORIO := 'D:\@ Fontes\siapen\trunk\Relatórios';
//  GLOBAL_ID_FUNCIONARIO := 20104;

  SetCurrentDir(GLOBAL_PATCH_SISTEMA);

  if RadioGroupTipo.ItemIndex = 0 then
    rel1 := GLOBAL_PATCH_RELATORIO + '\SYSTEM\MensagemFUNCIONARIO' + inttostr(GLOBAL_ID_FUNCIONARIO) + '.fr3';

  if RadioGroupTipo.ItemIndex = 1 then
    rel1 := GLOBAL_PATCH_RELATORIO + '\SYSTEM\MensagemPOSTO' + inttostr(GLOBAL_IDPOSTO_TRABALHO) + '.fr3';

  if RadioGroupTipo.ItemIndex = 2 then
    rel1 := GLOBAL_PATCH_RELATORIO + '\SYSTEM\MensagemUP' + inttostr(GLOBAL_ID_UP) + '.fr3';

  if not FileExists(rel1) then
    rel1 := GLOBAL_PATCH_RELATORIO + '\SYSTEM\Mensagem.fr3';

  if FileExists(rel1) then
  begin

    frxReport1.Preview := frxPreview1;
    frxReport1.LoadFromFile(rel1);

    frxReport1.Variables.DeleteVariable('ID_UP');
    frxReport1.Variables.AddVariable('SIAP', 'ID_UP', GLOBAL_ID_UP);

    frxReport1.Variables.DeleteVariable('GLOBAL_ID_FUNCIONARIO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ID_FUNCIONARIO', GLOBAL_ID_FUNCIONARIO);

    frxReport1.Variables.DeleteVariable('GLOBAL_IDPOSTO_TRABALHO');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_IDPOSTO_TRABALHO', GLOBAL_IDPOSTO_TRABALHO);

    frxReport1.PrepareReport;

    self.Show;

    //    tem que aparecer quando tiver valor

  end;

end;

procedure TFrmMensagemViaFastReport.FormCreate(Sender: TObject);
var
  rel1, rel2: string;
begin

  Self.Height := PanelTitulo.Height;

  Self.Left := Screen.Width - Self.Width - 40;
  Self.Top := 0;

  AtualizarRelatorio;

end;

procedure TFrmMensagemViaFastReport.Timer1Timer(Sender: TObject);
begin
  inherited;
  ToolButtonAlerta.Down := not ToolButtonAlerta.Down;

  if ToolButtonAlerta.down then
    ToolButtonAlerta.ImageIndex := 1
  else
    ToolButtonAlerta.ImageIndex := 0;

end;

procedure TFrmMensagemViaFastReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

  Action := caFree;

end;

procedure TFrmMensagemViaFastReport.BtnOcultarClick(Sender: TObject);
begin
  inherited;
  Self.Height := PanelTitulo.Height;
  if assigned(FrmModuloPrincipal) then
    FrmModuloPrincipal.SetFocus;
end;

procedure TFrmMensagemViaFastReport.btnExpandirClick(Sender: TObject);
begin
  inherited;

  if Self.Height = Screen.WorkAreaHeight then
    exit;

  Self.Height := Screen.WorkAreaHeight;
  
  if assigned(FrmModuloPrincipal) then
    FrmModuloPrincipal.SetFocus;

end;

procedure TFrmMensagemViaFastReport.BitBtn1Click(Sender: TObject);
begin
  inherited;

  AtualizarRelatorio;

end;

procedure TFrmMensagemViaFastReport.RadioGroupTipoClick(Sender: TObject);
begin
  inherited;

  AtualizarRelatorio;

end;

procedure TFrmMensagemViaFastReport.Button1Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrmMensagemViaFastReport.frxReport1GetValue(
  const VarName: string; var Value: Variant);
begin

  if ContemValor('URGENTE', VarName) then
  begin

    Timer1.Enabled := true;
    ToolButtonAlerta.Visible := Timer1.Enabled;
    btnExpandirClick(nil);
    if assigned(FrmModuloPrincipal) then
      FrmModuloPrincipal.SetFocus;

  end;

end;

end.

