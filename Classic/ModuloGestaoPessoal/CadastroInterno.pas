unit CadastroInterno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, ComCtrls, adpDBDateTimePicker, DB, Mask,
  DBCtrls, DBClient, Provider, SqlExpr, ImgList, jpeg, ExtCtrls, Grids, lib,
  DBGrids, StdCtrls, ToolWin;

type
  TfrmCadastroInterno = class(TFrmModeloCadastro)
    Label2: TLabel;
    edtIdInterno: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    edtNomeInterno: TDBEdit;
    CdsCadastroID_INTERNO_INCLUSAO: TIntegerField;
    CdsCadastroALCUNHA: TStringField;
    CdsCadastroDATA_NASCIMENTO: TSQLTimeStampField;
    CdsCadastroNOME_INTERNO: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    SqlCadastroID_INTERNO_INCLUSAO: TIntegerField;
    SqlCadastroALCUNHA: TStringField;
    SqlCadastroDATA_NASCIMENTO: TSQLTimeStampField;
    SqlCadastroNOME_INTERNO: TStringField;
    SqlCadastroID_ESTADO: TIntegerField;
    CdsCadastroID_ESTADO: TIntegerField;
    SqlCadastroMAE_INTERNO: TStringField;
    CdsCadastroMAE_INTERNO: TStringField;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    CdsCadastroEstado: TStringField;
    procedure NovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroInterno: TfrmCadastroInterno;

implementation

uses DmPrincipal;

{$R *.dfm}

procedure TfrmCadastroInterno.NovoClick(Sender: TObject);

begin
  inherited;
  DsCadastro.DataSet.FieldByName('id_interno_inclusao').AsInteger := DBGenerator('id_interno_inclusao');;
end;

procedure TfrmCadastroInterno.FormCreate(Sender: TObject);
begin
  inherited;
DsCadastro.DataSet.Close;
DsCadastro.DataSet.Open;

DM.dsestado.DataSet.Close;
dm.dsestado.DataSet.Open;

end;

end.
