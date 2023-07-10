unit CadastroRemedio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, DBCtrls, ToolWin, ExtCtrls,
  Mask, Buttons, jpeg, Lib;

type
  TFrmCadastroRemedio = class(TFrmModeloCadastro)
    Label2: TLabel;
    DBEditcodigo: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    SpeedButton5: TSpeedButton;
    Label7: TLabel;
    DBComboBox1: TDBComboBox;
    procedure FormShow(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroRemedio: TFrmCadastroRemedio;

implementation

uses CadastroFornecedor, DmPrincipal;

{$R *.dfm}

procedure TFrmCadastroRemedio.FormShow(Sender: TObject);
begin
  inherited;
  DM.dsfornecedor.DataSet.Close;
  DM.dsfornecedor.DataSet.Open;

end;

procedure TFrmCadastroRemedio.NovoClick(Sender: TObject);
begin
  inherited;
  DBEdit2.SetFocus;
end;

procedure TFrmCadastroRemedio.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  FrmCadastroFornecedor := TFrmCadastroFornecedor.Create(Application);
  FrmCadastroFornecedor.ShowModal;
  FreeAndNil(FrmCadastroFornecedor);

  dm.dsfornecedor.dataset.close;
  dm.dsfornecedor.dataset.open;
end;

procedure TFrmCadastroRemedio.SalvarClick(Sender: TObject);
begin

  if DBEdit2.Text = '' then
  begin
    ShowMessage('Digite o Remédio');
    exit;
  end;

  inherited;
end;

procedure TFrmCadastroRemedio.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_REMEDIO)
    and not ContemValor('E', PERMISSAO_REMEDIO)
    and not ContemValor('D', PERMISSAO_REMEDIO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_REMEDIO)
    and not ContemValor('E', PERMISSAO_REMEDIO)
    and not ContemValor('D', PERMISSAO_REMEDIO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_REMEDIO)
    and ContemValor('E', PERMISSAO_REMEDIO)
    and not ContemValor('D', PERMISSAO_REMEDIO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_REMEDIO)
    and ContemValor('E', PERMISSAO_REMEDIO)
    and ContemValor('D', PERMISSAO_REMEDIO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_REMEDIO)
    and not ContemValor('E', PERMISSAO_REMEDIO)
    and ContemValor('D', PERMISSAO_REMEDIO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_REMEDIO)
    and not ContemValor('E', PERMISSAO_REMEDIO)
    and ContemValor('D', PERMISSAO_REMEDIO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_REMEDIO)
    and ContemValor('E', PERMISSAO_REMEDIO)
    and not ContemValor('D', PERMISSAO_REMEDIO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroRemedio.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_REMEDIO)
    and not ContemValor('E', PERMISSAO_REMEDIO)
    and not ContemValor('D', PERMISSAO_REMEDIO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_REMEDIO)
    and not ContemValor('E', PERMISSAO_REMEDIO)
    and not ContemValor('D', PERMISSAO_REMEDIO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_REMEDIO)
    and ContemValor('E', PERMISSAO_REMEDIO)
    and not ContemValor('D', PERMISSAO_REMEDIO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_REMEDIO)
    and ContemValor('E', PERMISSAO_REMEDIO)
    and ContemValor('D', PERMISSAO_REMEDIO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_REMEDIO)
    and not ContemValor('E', PERMISSAO_REMEDIO)
    and ContemValor('D', PERMISSAO_REMEDIO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_REMEDIO)
    and not ContemValor('E', PERMISSAO_REMEDIO)
    and ContemValor('D', PERMISSAO_REMEDIO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_REMEDIO)
    and ContemValor('E', PERMISSAO_REMEDIO)
    and not ContemValor('D', PERMISSAO_REMEDIO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

end.

