unit CadastroNaturalidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, DBCtrls, ToolWin, ExtCtrls,
  Mask, jpeg;

type
  TFrmCadastroNaturalidade = class(TFrmModeloCadastro)
    CdsCadastroID_NATURALIDADE: TIntegerField;
    CdsCadastroNATURALIDADE: TStringField;
    CdsCadastroUF: TStringField;
    Label2: TLabel;
    DBEditcodigo: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroNaturalidade: TFrmCadastroNaturalidade;

implementation

uses DmPrincipal;

{$R *.dfm}

end.
