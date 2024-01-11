unit TipoPatrimonio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, Mask, DBCtrls, DB, DBClient, Provider,
  SqlExpr, ImgList, ComCtrls, Grids, DBGrids, StdCtrls, ToolWin, ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFrmTipoPatrimonio = class(TFrmModeloCadastro)
    CdsCadastroIDTIPO_PATRIMONIO: TIntegerField;
    CdsCadastroDESCRICAO: TStringField;
    Label2: TLabel;
    DBEditCODIGO: TDBEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTipoPatrimonio: TFrmTipoPatrimonio;

implementation

{$R *.dfm}

end.
