unit CadastroLocalTrabalho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls,
  ToolWin, Buttons, Mask, Lib;

type
  TFrmCadastroLocalTrabalho = class(TFrmModeloCadastro)
    Label2: TLabel;
    DBEditcodigo: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    SpeedButton5: TSpeedButton;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Label12: TLabel;
    DBEdit4: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroLocalTrabalho: TFrmCadastroLocalTrabalho;

implementation

uses CadastroCidade, DmPrincipal;

{$R *.dfm}

procedure TFrmCadastroLocalTrabalho.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  FrmCadastroCidade := TFrmCadastroCidade.create(Application);
  FrmCadastroCidade.showmodal;
  FreeAndNil(FrmCadastroCidade);

  DM.DSCIDADE.DataSet.Close;
  DM.DSCIDADE.DataSet.OPEN;

end;

procedure TFrmCadastroLocalTrabalho.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_TRABALHO)
    and not ContemValor('E', PERMISSAO_TRABALHO)
    and not ContemValor('D', PERMISSAO_TRABALHO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_TRABALHO)
    and not ContemValor('E', PERMISSAO_TRABALHO)
    and not ContemValor('D', PERMISSAO_TRABALHO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_TRABALHO)
    and ContemValor('E', PERMISSAO_TRABALHO)
    and not ContemValor('D', PERMISSAO_TRABALHO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_TRABALHO)
    and ContemValor('E', PERMISSAO_TRABALHO)
    and ContemValor('D', PERMISSAO_TRABALHO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_TRABALHO)
    and not ContemValor('E', PERMISSAO_TRABALHO)
    and ContemValor('D', PERMISSAO_TRABALHO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_TRABALHO)
    and not ContemValor('E', PERMISSAO_TRABALHO)
    and ContemValor('D', PERMISSAO_TRABALHO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_TRABALHO)
    and ContemValor('E', PERMISSAO_TRABALHO)
    and not ContemValor('D', PERMISSAO_TRABALHO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroLocalTrabalho.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_TRABALHO)
    and not ContemValor('E', PERMISSAO_TRABALHO)
    and not ContemValor('D', PERMISSAO_TRABALHO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_TRABALHO)
    and not ContemValor('E', PERMISSAO_TRABALHO)
    and not ContemValor('D', PERMISSAO_TRABALHO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_TRABALHO)
    and ContemValor('E', PERMISSAO_TRABALHO)
    and not ContemValor('D', PERMISSAO_TRABALHO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_TRABALHO)
    and ContemValor('E', PERMISSAO_TRABALHO)
    and ContemValor('D', PERMISSAO_TRABALHO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_TRABALHO)
    and not ContemValor('E', PERMISSAO_TRABALHO)
    and ContemValor('D', PERMISSAO_TRABALHO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_TRABALHO)
    and not ContemValor('E', PERMISSAO_TRABALHO)
    and ContemValor('D', PERMISSAO_TRABALHO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_TRABALHO)
    and ContemValor('E', PERMISSAO_TRABALHO)
    and not ContemValor('D', PERMISSAO_TRABALHO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

end.
