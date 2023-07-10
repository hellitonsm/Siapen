unit DocRecebimentoTrasnferencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FMTBcd, SqlExpr, Provider, DB, DBClient;

type
  TFrmDocRecebimentoTrasnferencia = class(TForm)
    Label3: TLabel;
    Edit1: TEdit;
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDocRecebimentoTrasnferencia: TFrmDocRecebimentoTrasnferencia;

implementation

uses DmPrincipal;

{$R *.dfm}

end.
