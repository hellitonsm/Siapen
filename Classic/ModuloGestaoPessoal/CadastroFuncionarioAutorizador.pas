unit CadastroFuncionarioAutorizador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls,
  ToolWin, Mask, lib;

type
  TFrmCadastroFuncionarioAutorizador = class(TFrmModeloCadastro)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBComboBox1: TDBComboBox;
    DBLookupComboBoxfuncionario: TDBLookupComboBox;
    CdsCadastroFuncionario: TStringField;
    CdsCadastroID_FUNCIONARIO_AUTORIZADOR: TIntegerField;
    CdsCadastroID_FUNCIONARIO: TIntegerField;
    CdsCadastroDESCRICAO_AUTORIZADOR: TStringField;
    procedure NovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroFuncionarioAutorizador: TFrmCadastroFuncionarioAutorizador;

implementation

uses DmPrincipal;

{$R *.dfm}

procedure TFrmCadastroFuncionarioAutorizador.NovoClick(Sender: TObject);
begin
  inherited;
DsCadastro.DataSet.FieldByName('id_funcionario_autorizador').AsInteger := dbgenerator('id_funcionario_autorizador');

end;

procedure TFrmCadastroFuncionarioAutorizador.FormCreate(Sender: TObject);
begin
  inherited;

  DspCadastro.DataSet.Close;
  DspCadastro.DataSet.Open;

  DM.DsFuncionarioLista.DataSet.Close;
  DM.DsFuncionarioLista.DataSet.Open;

end;

end.
