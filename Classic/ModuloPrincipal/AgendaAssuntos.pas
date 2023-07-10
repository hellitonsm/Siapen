unit AgendaAssuntos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, DBCtrls, ToolWin, ExtCtrls,
  Mask, jpeg, Lib;

type
  TFrmAgendaAssuntos = class(TFrmModeloCadastro)
    Label2: TLabel;
    dbeditcodigo: TDBEdit;
    Label3: TLabel;
    dbedtDESCRICAO: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAgendaAssuntos: TFrmAgendaAssuntos;

implementation

{$R *.dfm}

procedure TFrmAgendaAssuntos.FormShow(Sender: TObject);
begin
  inherited;
  DBGridConsulta.SelectedIndex := 1;
end;

procedure TFrmAgendaAssuntos.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_ASSUNTO)
    and not ContemValor('E', PERMISSAO_ASSUNTO)
    and not ContemValor('D', PERMISSAO_ASSUNTO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_ASSUNTO)
    and not ContemValor('E', PERMISSAO_ASSUNTO)
    and not ContemValor('D', PERMISSAO_ASSUNTO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_ASSUNTO)
    and ContemValor('E', PERMISSAO_ASSUNTO)
    and not ContemValor('D', PERMISSAO_ASSUNTO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_ASSUNTO)
    and ContemValor('E', PERMISSAO_ASSUNTO)
    and ContemValor('D', PERMISSAO_ASSUNTO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_ASSUNTO)
    and not ContemValor('E', PERMISSAO_ASSUNTO)
    and ContemValor('D', PERMISSAO_ASSUNTO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_ASSUNTO)
    and not ContemValor('E', PERMISSAO_ASSUNTO)
    and ContemValor('D', PERMISSAO_ASSUNTO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_ASSUNTO)
    and ContemValor('E', PERMISSAO_ASSUNTO)
    and not ContemValor('D', PERMISSAO_ASSUNTO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmAgendaAssuntos.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_ASSUNTO)
    and not ContemValor('E', PERMISSAO_ASSUNTO)
    and not ContemValor('D', PERMISSAO_ASSUNTO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_ASSUNTO)
    and not ContemValor('E', PERMISSAO_ASSUNTO)
    and not ContemValor('D', PERMISSAO_ASSUNTO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_ASSUNTO)
    and ContemValor('E', PERMISSAO_ASSUNTO)
    and not ContemValor('D', PERMISSAO_ASSUNTO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_ASSUNTO)
    and ContemValor('E', PERMISSAO_ASSUNTO)
    and ContemValor('D', PERMISSAO_ASSUNTO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_ASSUNTO)
    and not ContemValor('E', PERMISSAO_ASSUNTO)
    and ContemValor('D', PERMISSAO_ASSUNTO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_ASSUNTO)
    and not ContemValor('E', PERMISSAO_ASSUNTO)
    and ContemValor('D', PERMISSAO_ASSUNTO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_ASSUNTO)
    and ContemValor('E', PERMISSAO_ASSUNTO)
    and not ContemValor('D', PERMISSAO_ASSUNTO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;
  
end;

end.
