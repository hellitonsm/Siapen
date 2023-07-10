unit CadastroAcessorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, DBCtrls, ToolWin, ExtCtrls,
  Mask, jpeg;

type
  TFrmCadastroAcessorio = class(TFrmModeloCadastro)
    CdsCadastroID_ACESSORIO: TIntegerField;
    CdsCadastroDESCRICAO_ACESSORIO: TStringField;
    Label2: TLabel;
    DBEditcodigo: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    procedure NovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroAcessorio: TFrmCadastroAcessorio;

implementation

{$R *.dfm}

procedure TFrmCadastroAcessorio.NovoClick(Sender: TObject);
begin
  inherited;
  DBEdit2.SetFocus;
end;

end.
