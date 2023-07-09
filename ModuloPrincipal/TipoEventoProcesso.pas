unit TipoEventoProcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls,
  ToolWin, Mask;

type
  TFrmTipoEventoProcesso = class(TFrmModeloCadastro)
    CdsCadastroIDTIPO_EVENTO_PROCESSO: TIntegerField;
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
  FrmTipoEventoProcesso: TFrmTipoEventoProcesso;

implementation

{$R *.dfm}

end.
