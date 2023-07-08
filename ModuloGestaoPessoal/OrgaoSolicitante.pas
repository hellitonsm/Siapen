unit OrgaoSolicitante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls, lib,
  ToolWin, Mask;

type
  tfrmOrgaoSolicitante = class(TFrmModeloCadastro)
    SqlCadastroID_ORGAO: TIntegerField;
    SqlCadastroUF: TStringField;
    SqlCadastroORGAO_DESC: TStringField;
    CdsCadastroID_ORGAO: TIntegerField;
    CdsCadastroUF: TStringField;
    CdsCadastroORGAO_DESC: TStringField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    frmOrgaoSolicitante: TDBComboBox;
    procedure NovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrgaoSolicitante: TfrmOrgaoSolicitante;

implementation



{$R *.dfm}

procedure tfrmOrgaoSolicitante.NovoClick(Sender: TObject);
begin
  inherited;
  DsCadastro.DataSet.FieldByName('id_orgao').AsInteger := DBGenerator('ID_orgao');
end;

end.
