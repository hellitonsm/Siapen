unit TipoHora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls,
  ToolWin, Mask;

type
  TFrmTipoHora = class(TFrmModeloCadastro)
    CdsCadastroIDTIPO_HORA: TIntegerField;
    CdsCadastroDESCRICAO: TStringField;
    Label2: TLabel;
    DBEditCODIGO: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTipoHora: TFrmTipoHora;

implementation

{$R *.dfm}

end.
