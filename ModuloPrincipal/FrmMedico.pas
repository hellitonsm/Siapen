unit FrmMedico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls,
  ToolWin, Mask, Buttons, Lib;

type
  TFrmFrmMedico = class(TFrmModeloCadastro)
    Label2: TLabel;
    DBEditcodigo: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    DBEdit1: TDBEdit;
    Label10: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    SpeedButton7: TSpeedButton;
    procedure SpeedButton7Click(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFrmMedico: TFrmFrmMedico;

implementation

uses CadastroCidade, DmPrincipal;

{$R *.dfm}

procedure TFrmFrmMedico.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  //Verifica se o usuário tem permissão de Cadastro.
  if (PERMISSAO_CADASTRO = '') or (PERMISSAO_CADASTRO = 'R') then
  begin
    ShowMessage('Você não possui Permissão de Acesso ao menu de Cadastros!');
    Exit;
  end;

  FrmCadastrocidade := TFrmCadastrocidade.Create(Application);
  FrmCadastrocidade.ShowModal;
  FreeAndNil(FrmCadastrocidade);
end;

procedure TFrmFrmMedico.NovoClick(Sender: TObject);
begin
  inherited;
 DBEdit2.setfocus;
end;

procedure TFrmFrmMedico.FormCreate(Sender: TObject);
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

procedure TFrmFrmMedico.DsCadastroDataChange(Sender: TObject;
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
