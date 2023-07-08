unit CadastroAreaServidor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, ToolWin, ExtCtrls, Mask,
  DBCtrls, jpeg;

type
  TFrmCadastroAreaServidor = class(TFrmModeloCadastro)
    intgrfldCdsCadastroID_AREA: TIntegerField;
    strngfldCdsCadastroAREA_SERVIDOR: TStringField;
    Label2: TLabel;
    dbedtID_AREA: TDBEdit;
    Label3: TLabel;
    dbedtAREA_SERVIDOR: TDBEdit;
    procedure NovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroAreaServidor: TFrmCadastroAreaServidor;

implementation

{$R *.dfm}

procedure TFrmCadastroAreaServidor.NovoClick(Sender: TObject);
begin
  inherited;
  dbedtAREA_SERVIDOR.SetFocus;
end;

end.
