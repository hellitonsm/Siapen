unit PostoTrabalho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, Mask, DBCtrls, DB, DBClient, Provider,
  SqlExpr, ImgList, ComCtrls, Grids, DBGrids, StdCtrls, ToolWin, ExtCtrls,
  jpeg, Lib, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFrmPostoTrabalho = class(TFrmModeloCadastro)
    Label2: TLabel;
    DBEditCODIGO: TDBEdit;
    Label3: TLabel;
    DBEditPOSTO_TRABALHO: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBEditHORAS_POSTO: TDBEdit;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPostoTrabalho: TFrmPostoTrabalho;

implementation

{$R *.dfm}

procedure TFrmPostoTrabalho.FormShow(Sender: TObject);
begin
  inherited;
  DBGridConsulta.SelectedIndex := 1;
end;

procedure TFrmPostoTrabalho.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_LOCALPOSTOTRABALHO)
    and not ContemValor('E', PERMISSAO_LOCALPOSTOTRABALHO)
    and not ContemValor('D', PERMISSAO_LOCALPOSTOTRABALHO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_LOCALPOSTOTRABALHO)
    and not ContemValor('E', PERMISSAO_LOCALPOSTOTRABALHO)
    and not ContemValor('D', PERMISSAO_LOCALPOSTOTRABALHO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_LOCALPOSTOTRABALHO)
    and ContemValor('E', PERMISSAO_LOCALPOSTOTRABALHO)
    and not ContemValor('D', PERMISSAO_LOCALPOSTOTRABALHO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_LOCALPOSTOTRABALHO)
    and ContemValor('E', PERMISSAO_LOCALPOSTOTRABALHO)
    and ContemValor('D', PERMISSAO_LOCALPOSTOTRABALHO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_LOCALPOSTOTRABALHO)
    and not ContemValor('E', PERMISSAO_LOCALPOSTOTRABALHO)
    and ContemValor('D', PERMISSAO_LOCALPOSTOTRABALHO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_LOCALPOSTOTRABALHO)
    and not ContemValor('E', PERMISSAO_LOCALPOSTOTRABALHO)
    and ContemValor('D', PERMISSAO_LOCALPOSTOTRABALHO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_LOCALPOSTOTRABALHO)
    and ContemValor('E', PERMISSAO_LOCALPOSTOTRABALHO)
    and not ContemValor('D', PERMISSAO_LOCALPOSTOTRABALHO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmPostoTrabalho.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_LOCALPOSTOTRABALHO)
    and not ContemValor('E', PERMISSAO_LOCALPOSTOTRABALHO)
    and not ContemValor('D', PERMISSAO_LOCALPOSTOTRABALHO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_LOCALPOSTOTRABALHO)
    and not ContemValor('E', PERMISSAO_LOCALPOSTOTRABALHO)
    and not ContemValor('D', PERMISSAO_LOCALPOSTOTRABALHO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_LOCALPOSTOTRABALHO)
    and ContemValor('E', PERMISSAO_LOCALPOSTOTRABALHO)
    and not ContemValor('D', PERMISSAO_LOCALPOSTOTRABALHO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_LOCALPOSTOTRABALHO)
    and ContemValor('E', PERMISSAO_LOCALPOSTOTRABALHO)
    and ContemValor('D', PERMISSAO_LOCALPOSTOTRABALHO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_LOCALPOSTOTRABALHO)
    and not ContemValor('E', PERMISSAO_LOCALPOSTOTRABALHO)
    and ContemValor('D', PERMISSAO_LOCALPOSTOTRABALHO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_LOCALPOSTOTRABALHO)
    and not ContemValor('E', PERMISSAO_LOCALPOSTOTRABALHO)
    and ContemValor('D', PERMISSAO_LOCALPOSTOTRABALHO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_LOCALPOSTOTRABALHO)
    and ContemValor('E', PERMISSAO_LOCALPOSTOTRABALHO)
    and not ContemValor('D', PERMISSAO_LOCALPOSTOTRABALHO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

end.
