unit InventarioPatrimonio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloFormulario, ExtCtrls, StdCtrls, Grids, DBGrids;

type
  TFrmInventarioPatrimonio = class(TFrmModeloFormulario)
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label1: TLabel;
    BtnConfirma: TButton;
    RadioGroup1: TRadioGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInventarioPatrimonio: TFrmInventarioPatrimonio;

implementation

{$R *.dfm}

end.
