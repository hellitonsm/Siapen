unit TipoSaidao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls,
  ToolWin, Mask, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFrmTipoSaidao = class(TFrmModeloCadastro)
    CdsCadastroID_TIPO_SAIDAO: TIntegerField;
    CdsCadastroTIPO_SAIDAO: TStringField;
    Label2: TLabel;
    DBEditCODIGO: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    procedure NovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTipoSaidao: TFrmTipoSaidao;

implementation

uses Lib, DmPrincipal, MenuRelatorio;
{$R *.dfm}

procedure TFrmTipoSaidao.NovoClick(Sender: TObject);
begin
  inherited;
  DSCadastro.DataSet.FieldByName('ID_TIPO_SAIDAO').AsInteger := DBGenerator('ID_TIPO_SAIDAO');
end;

end.
