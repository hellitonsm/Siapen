unit SelecionarAutosPermanencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, DBCtrls, StdCtrls,
  Buttons, frxClass, frxDBSet, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmSelecionarAutosPermanencia = class(TForm)
    Label51: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    SQLfiltroautosold: TSQLQuery;
    dspfiltroautos: TDataSetProvider;
    cdsfiltroautos: TClientDataSet;
    dsfiltroautos: TDataSource;
    BitBtn1: TBitBtn;
    SQLimprmirold: TSQLQuery;
    dspimprmir: TDataSetProvider;
    cdsimprmir: TClientDataSet;
    dsimprmir: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    SqlCadastroold: TSQLQuery;
    DspCadastro: TDataSetProvider;
    CdsCadastro: TClientDataSet;
    CdsCadastroID_PERMANENCIA_SCANER: TIntegerField;
    CdsCadastroDESCRICAO_PERMANENCIA: TStringField;
    CdsCadastroDOC_SCANER: TBlobField;
    CdsCadastroID_CONTROLE_PERMANENCIA: TIntegerField;
    DsCadastro: TDataSource;
    SqlCadastro: TFDQuery;
    SQLimprmir: TFDQuery;
    SQLfiltroautos: TFDQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelecionarAutosPermanencia: TFrmSelecionarAutosPermanencia;

implementation

uses DmPrincipal, Lib;

{$R *.dfm}

procedure TFrmSelecionarAutosPermanencia.BitBtn1Click(Sender: TObject);
var
  rel1: string;
begin

  DsCadastro.DataSet.Close;
  SqlCadastro.params[0].value := DBLookupComboBox1.KeyValue;
  DsCadastro.DataSet.Open;

  if DsCadastro.DataSet.RecordCount = 0 then
  begin
    ShowMessage('Não há Documentos Digitalizados Para este Auto!');
    DBLookupComboBox1.SetFocus;
    Exit;
  end;

  rel1 := GLOBAL_PATCH_SISTEMA + '..\' + IntToStr(GLOBAL_ID_UP) + '\SYSTEM\Relatorio_Scaner_Autos.fr3';

  if FileExists(rel1) then
  begin
    frxReport1.LoadFromFile(rel1);
    frxReport1.Variables.DeleteVariable('id_controle_permanencia');
    frxReport1.Variables.AddVariable('SIAP', 'id_controle_permanencia', DsCadastro.DataSet.fieldbyname('ID_CONTROLE_PERMANENCIA').AsInteger);
    frxReport1.Variables.DeleteVariable('GLOBAL_PATCH_SISTEMA');
    frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_PATCH_SISTEMA', GLOBAL_PATCH_SISTEMA);
  end;

  frxReport1.ShowReport;
end;

procedure TFrmSelecionarAutosPermanencia.FormCreate(Sender: TObject);
begin
  SetCurrentDir(GLOBAL_PATCH_SISTEMA);
end;

end.

