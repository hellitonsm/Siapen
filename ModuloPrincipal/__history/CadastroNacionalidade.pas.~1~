unit CadastroNacionalidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, ToolWin, ExtCtrls, Mask,
  DBCtrls, jpeg, Lib;

type
  TFrmCadastroNacionalidade = class(TFrmModeloCadastro)
    intgrfldCdsCadastroID_NACIONALIDADE: TIntegerField;
    strngfldCdsCadastroNACIONALIDADE: TStringField;
    Label2: TLabel;
    DBEDITCODIGO: TDBEdit;
    Label3: TLabel;
    dbedtNACIONALIDADE: TDBEdit;
    procedure NovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroNacionalidade: TFrmCadastroNacionalidade;

implementation

{$R *.dfm}

procedure TFrmCadastroNacionalidade.NovoClick(Sender: TObject);
begin
  inherited;
 dbedtNACIONALIDADE.SetFocus;
end;

procedure TFrmCadastroNacionalidade.FormShow(Sender: TObject);
begin
  inherited;
  DBGridConsulta.SelectedIndex := 1;
end;

procedure TFrmCadastroNacionalidade.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_NACIONALIDADE)
    and not ContemValor('E', PERMISSAO_NACIONALIDADE)
    and not ContemValor('D', PERMISSAO_NACIONALIDADE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_NACIONALIDADE)
    and not ContemValor('E', PERMISSAO_NACIONALIDADE)
    and not ContemValor('D', PERMISSAO_NACIONALIDADE) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_NACIONALIDADE)
    and ContemValor('E', PERMISSAO_NACIONALIDADE)
    and not ContemValor('D', PERMISSAO_NACIONALIDADE) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_NACIONALIDADE)
    and ContemValor('E', PERMISSAO_NACIONALIDADE)
    and ContemValor('D', PERMISSAO_NACIONALIDADE) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_NACIONALIDADE)
    and not ContemValor('E', PERMISSAO_NACIONALIDADE)
    and ContemValor('D', PERMISSAO_NACIONALIDADE) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_NACIONALIDADE)
    and not ContemValor('E', PERMISSAO_NACIONALIDADE)
    and ContemValor('D', PERMISSAO_NACIONALIDADE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_NACIONALIDADE)
    and ContemValor('E', PERMISSAO_NACIONALIDADE)
    and not ContemValor('D', PERMISSAO_NACIONALIDADE) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroNacionalidade.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_NACIONALIDADE)
    and not ContemValor('E', PERMISSAO_NACIONALIDADE)
    and not ContemValor('D', PERMISSAO_NACIONALIDADE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_NACIONALIDADE)
    and not ContemValor('E', PERMISSAO_NACIONALIDADE)
    and not ContemValor('D', PERMISSAO_NACIONALIDADE) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_NACIONALIDADE)
    and ContemValor('E', PERMISSAO_NACIONALIDADE)
    and not ContemValor('D', PERMISSAO_NACIONALIDADE) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_NACIONALIDADE)
    and ContemValor('E', PERMISSAO_NACIONALIDADE)
    and ContemValor('D', PERMISSAO_NACIONALIDADE) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_NACIONALIDADE)
    and not ContemValor('E', PERMISSAO_NACIONALIDADE)
    and ContemValor('D', PERMISSAO_NACIONALIDADE) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_NACIONALIDADE)
    and not ContemValor('E', PERMISSAO_NACIONALIDADE)
    and ContemValor('D', PERMISSAO_NACIONALIDADE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_NACIONALIDADE)
    and ContemValor('E', PERMISSAO_NACIONALIDADE)
    and not ContemValor('D', PERMISSAO_NACIONALIDADE) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

end.
