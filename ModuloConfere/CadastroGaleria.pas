unit CadastroGaleria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, ToolWin, ExtCtrls, Mask,
  DBCtrls, jpeg;

type
  TFrmCadastroGaleria = class(TFrmModeloCadastro)
    Label2: TLabel;
    DBEditcodigo: TDBEdit;
    LabelGaleria: TLabel;
    DBEdit2: TDBEdit;
    DBLookupComboBoxIDPAVILHAO: TDBLookupComboBox;
    DBEditIDPAVILHAO: TDBEdit;
    Label7: TLabel;
    LabelPavilhao: TLabel;
    procedure NovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroGaleria: TFrmCadastroGaleria;

implementation

uses Lib, DmPrincipal;

{$R *.dfm}

procedure TFrmCadastroGaleria.NovoClick(Sender: TObject);
begin
  inherited;
  DBEdit2.SetFocus;
end;

procedure TFrmCadastroGaleria.FormCreate(Sender: TObject);
begin
  LabelPavilhao.Caption := GLOBAL_NIVEL_1;
  LabelGaleria.Caption := GLOBAL_NIVEL_2;
  Self.Caption := 'Cadastro de ' + GLOBAL_NIVEL_2;
  SqlCadastro.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;
  inherited;
  DM.DsPavilhao.DataSet.Close;
  DM.DsPavilhao.DataSet.Open;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_GALERIA)
    and not ContemValor('E', PERMISSAO_GALERIA)
    and not ContemValor('D', PERMISSAO_GALERIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_GALERIA)
    and not ContemValor('E', PERMISSAO_GALERIA)
    and not ContemValor('D', PERMISSAO_GALERIA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_GALERIA)
    and ContemValor('E', PERMISSAO_GALERIA)
    and not ContemValor('D', PERMISSAO_GALERIA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_GALERIA)
    and ContemValor('E', PERMISSAO_GALERIA)
    and ContemValor('D', PERMISSAO_GALERIA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_GALERIA)
    and not ContemValor('E', PERMISSAO_GALERIA)
    and ContemValor('D', PERMISSAO_GALERIA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_GALERIA)
    and not ContemValor('E', PERMISSAO_GALERIA)
    and ContemValor('D', PERMISSAO_GALERIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_GALERIA)
    and ContemValor('E', PERMISSAO_GALERIA)
    and not ContemValor('D', PERMISSAO_GALERIA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroGaleria.FormShow(Sender: TObject);
begin
  inherited;
  DBGridConsulta.SelectedIndex := 1;
end;

procedure TFrmCadastroGaleria.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_GALERIA)
    and not ContemValor('E', PERMISSAO_GALERIA)
    and not ContemValor('D', PERMISSAO_GALERIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_GALERIA)
    and not ContemValor('E', PERMISSAO_GALERIA)
    and not ContemValor('D', PERMISSAO_GALERIA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_GALERIA)
    and ContemValor('E', PERMISSAO_GALERIA)
    and not ContemValor('D', PERMISSAO_GALERIA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_GALERIA)
    and ContemValor('E', PERMISSAO_GALERIA)
    and ContemValor('D', PERMISSAO_GALERIA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_GALERIA)
    and not ContemValor('E', PERMISSAO_GALERIA)
    and ContemValor('D', PERMISSAO_GALERIA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_GALERIA)
    and not ContemValor('E', PERMISSAO_GALERIA)
    and ContemValor('D', PERMISSAO_GALERIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_GALERIA)
    and ContemValor('E', PERMISSAO_GALERIA)
    and not ContemValor('D', PERMISSAO_GALERIA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

end.

