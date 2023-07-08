unit CadastroItinerario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls, lib,
  ToolWin, Mask;

type
  TfrmCadastroItinerario = class(TFrmModeloCadastro)
    SqlCadastroID_ITINERARIO: TIntegerField;
    SqlCadastroINTINERARIO_DESC: TStringField;
    SqlCadastroITINERARIO_SIGLA: TStringField;
    CdsCadastroID_ITINERARIO: TIntegerField;
    CdsCadastroINTINERARIO_DESC: TStringField;
    CdsCadastroITINERARIO_SIGLA: TStringField;
    Label2: TLabel;
    edtIdItinerario: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    EdtDescricaoItinerario: TDBEdit;
    Label5: TLabel;
    edtSiglaItinerario: TDBEdit;
    SqlCadastroID_ESTADO: TIntegerField;
    CdsCadastroID_ESTADO: TIntegerField;
    DBLookupComboBox1: TDBLookupComboBox;
    CdsCadastroEstado: TStringField;
    procedure NovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroItinerario: TfrmCadastroItinerario;

implementation

uses DmPrincipal;

{$R *.dfm}

procedure TfrmCadastroItinerario.NovoClick(Sender: TObject);
begin
  inherited;
  DsCadastro.DataSet.FieldByName('id_itinerario').AsInteger := DBGenerator('id_itinerario');
end;

procedure TfrmCadastroItinerario.FormCreate(Sender: TObject);
begin
  inherited;
dm.dsestado.DataSet.close;
dm.dsestado.DataSet.Open;

DsCadastro.DataSet.close;
DsCadastro.DataSet.Open;

end;

end.
