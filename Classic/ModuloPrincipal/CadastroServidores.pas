unit CadastroServidores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, ToolWin, ExtCtrls, DBCtrls,
  Mask, jpeg;

type
  TFrmCadastroServidores = class(TFrmModeloCadastro)
    intgrfldCdsCadastroID_FUNCIONARIO: TIntegerField;
    strngfldCdsCadastroNOME_FUNCIONARIO: TStringField;
    strngfldCdsCadastroMATRICULA: TStringField;
    strngfldCdsCadastroSENHA: TStringField;
    strngfldCdsCadastroCPF: TStringField;
    intgrfldCdsCadastroID_FUNCAO: TIntegerField;
    Label2: TLabel;
    dbedtID_FUNCIONARIO: TDBEdit;
    Label3: TLabel;
    dbedtNOME_FUNCIONARIO: TDBEdit;
    Label4: TLabel;
    dbedtMATRICULA: TDBEdit;
    Label5: TLabel;
    dbedtSENHA: TDBEdit;
    Label6: TLabel;
    DBEditCPF: TDBEdit;
    Label7: TLabel;
    dbedtID_FUNCAO: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label8: TLabel;
    CdsCadastroLOGIN: TStringField;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    procedure NovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroServidores: TFrmCadastroServidores;

implementation

{$R *.dfm}

procedure TFrmCadastroServidores.NovoClick(Sender: TObject);
begin
  inherited;
  dbedtNOME_FUNCIONARIO.SetFocus;
end;

end.
