unit CadastroMeioTransporte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, Mask, DBCtrls, DB, DBClient, Provider,
  SqlExpr, ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, lib,
  ToolWin;

type
  TFrmCadastroMeioTransporte = class(TFrmModeloCadastro)
    CdsCadastroID_MEIO_TRANSPORTE: TIntegerField;
    CdsCadastroTRANSPORTE_DESC: TStringField;
    CdsCadastroTRANSPORTE_TIPO: TStringField;
    Label2: TLabel;
    edtIdMeioTransporte: TDBEdit;
    Label3: TLabel;
    edtDescricaoMeioTransporte: TDBEdit;
    Label4: TLabel;
    edtTipoTransporte: TDBEdit;
    SqlCadastroID_MEIO_TRANSPORTE: TIntegerField;
    SqlCadastroTRANSPORTE_DESC: TStringField;
    SqlCadastroTRANSPORTE_TIPO: TStringField;
    SqlCadastroMODALIDADE: TStringField;
    CdsCadastroMODALIDADE: TStringField;
    DBRadioGroup1: TDBRadioGroup;
    procedure NovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroMeioTransporte: TFrmCadastroMeioTransporte;

implementation

{$R *.dfm}

procedure TFrmCadastroMeioTransporte.NovoClick(Sender: TObject);
begin
  inherited;
  DsCadastro.DataSet.FieldByName('id_meio_transporte').AsInteger := DBGenerator('id_meio_transporte');
end;

procedure TFrmCadastroMeioTransporte.FormCreate(Sender: TObject);
begin
  inherited;
 DsCadastro.DataSet.Close;
 DsCadastro.DataSet.Open;
end;

procedure TFrmCadastroMeioTransporte.SalvarClick(Sender: TObject);
begin
{    if rdbTerrestre.Checked =true then begin
    DsCadastro.DataSet.FieldByName('modalidade').AsString := 'T';
  end else
    DsCadastro.DataSet.FieldByName('modalidade').AsString := 'A';
 }
  inherited;

end;

end.
