unit MapaCarcerario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloInterno, FMTBcd, Menus, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, DBCtrls, dbcgrids, Grids, DBGrids,
  StdCtrls, Mask, Buttons, ToolWin;

type
  TFrmMapaCarcerario = class(TFrmModeloInterno)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMapaCarcerario: TFrmMapaCarcerario;

implementation

{$R *.dfm}

end.
