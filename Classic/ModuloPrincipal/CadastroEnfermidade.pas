unit CadastroEnfermidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls,
  ToolWin, Mask, Lib;

type
  TFrmCadastroEnfermidade = class(TFrmModeloCadastro)
    CdsCadastroID_ENFERMIDADE: TIntegerField;
    CdsCadastroENFERMIDADE: TStringField;
    Label2: TLabel;
    DBEditcodigo: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroEnfermidade: TFrmCadastroEnfermidade;

implementation

{$R *.dfm}

procedure TFrmCadastroEnfermidade.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_SAUDE)
    and not ContemValor('E', PERMISSAO_SAUDE)
    and not ContemValor('D', PERMISSAO_SAUDE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SAUDE)
    and not ContemValor('E', PERMISSAO_SAUDE)
    and not ContemValor('D', PERMISSAO_SAUDE) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SAUDE)
    and ContemValor('E', PERMISSAO_SAUDE)
    and not ContemValor('D', PERMISSAO_SAUDE) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SAUDE)
    and ContemValor('E', PERMISSAO_SAUDE)
    and ContemValor('D', PERMISSAO_SAUDE) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SAUDE)
    and not ContemValor('E', PERMISSAO_SAUDE)
    and ContemValor('D', PERMISSAO_SAUDE) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SAUDE)
    and not ContemValor('E', PERMISSAO_SAUDE)
    and ContemValor('D', PERMISSAO_SAUDE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SAUDE)
    and ContemValor('E', PERMISSAO_SAUDE)
    and not ContemValor('D', PERMISSAO_SAUDE) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroEnfermidade.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_SAUDE)
    and not ContemValor('E', PERMISSAO_SAUDE)
    and not ContemValor('D', PERMISSAO_SAUDE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SAUDE)
    and not ContemValor('E', PERMISSAO_SAUDE)
    and not ContemValor('D', PERMISSAO_SAUDE) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SAUDE)
    and ContemValor('E', PERMISSAO_SAUDE)
    and not ContemValor('D', PERMISSAO_SAUDE) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SAUDE)
    and ContemValor('E', PERMISSAO_SAUDE)
    and ContemValor('D', PERMISSAO_SAUDE) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SAUDE)
    and not ContemValor('E', PERMISSAO_SAUDE)
    and ContemValor('D', PERMISSAO_SAUDE) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SAUDE)
    and not ContemValor('E', PERMISSAO_SAUDE)
    and ContemValor('D', PERMISSAO_SAUDE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SAUDE)
    and ContemValor('E', PERMISSAO_SAUDE)
    and not ContemValor('D', PERMISSAO_SAUDE) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

end.
