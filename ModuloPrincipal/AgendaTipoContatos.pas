unit AgendaTipoContatos;

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
  TFrmAgendaTipoContatos = class(TFrmModeloCadastro)
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
  FrmAgendaTipoContatos: TFrmAgendaTipoContatos;

implementation

{$R *.dfm}

procedure TFrmAgendaTipoContatos.FormShow(Sender: TObject);
begin
  inherited;
  DBGridConsulta.SelectedIndex := 1;
end;

procedure TFrmAgendaTipoContatos.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permiss�es que o usu�rio possui para esta tela
  e habilita ou n�o os respectivos bot�es.
  Estas verifica��es devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permiss�o referente � tela nas verifica��es abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_TIPOCONTATO)
    and not ContemValor('E', PERMISSAO_TIPOCONTATO)
    and not ContemValor('D', PERMISSAO_TIPOCONTATO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_TIPOCONTATO)
    and not ContemValor('E', PERMISSAO_TIPOCONTATO)
    and not ContemValor('D', PERMISSAO_TIPOCONTATO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_TIPOCONTATO)
    and ContemValor('E', PERMISSAO_TIPOCONTATO)
    and not ContemValor('D', PERMISSAO_TIPOCONTATO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_TIPOCONTATO)
    and ContemValor('E', PERMISSAO_TIPOCONTATO)
    and ContemValor('D', PERMISSAO_TIPOCONTATO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_TIPOCONTATO)
    and not ContemValor('E', PERMISSAO_TIPOCONTATO)
    and ContemValor('D', PERMISSAO_TIPOCONTATO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_TIPOCONTATO)
    and not ContemValor('E', PERMISSAO_TIPOCONTATO)
    and ContemValor('D', PERMISSAO_TIPOCONTATO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_TIPOCONTATO)
    and ContemValor('E', PERMISSAO_TIPOCONTATO)
    and not ContemValor('D', PERMISSAO_TIPOCONTATO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmAgendaTipoContatos.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permiss�es que o usu�rio possui para esta tela
  e habilita ou n�o os respectivos bot�es.
  Estas verifica��es devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permiss�o referente � tela nas verifica��es abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_TIPOCONTATO)
    and not ContemValor('E', PERMISSAO_TIPOCONTATO)
    and not ContemValor('D', PERMISSAO_TIPOCONTATO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_TIPOCONTATO)
    and not ContemValor('E', PERMISSAO_TIPOCONTATO)
    and not ContemValor('D', PERMISSAO_TIPOCONTATO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_TIPOCONTATO)
    and ContemValor('E', PERMISSAO_TIPOCONTATO)
    and not ContemValor('D', PERMISSAO_TIPOCONTATO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_TIPOCONTATO)
    and ContemValor('E', PERMISSAO_TIPOCONTATO)
    and ContemValor('D', PERMISSAO_TIPOCONTATO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_TIPOCONTATO)
    and not ContemValor('E', PERMISSAO_TIPOCONTATO)
    and ContemValor('D', PERMISSAO_TIPOCONTATO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_TIPOCONTATO)
    and not ContemValor('E', PERMISSAO_TIPOCONTATO)
    and ContemValor('D', PERMISSAO_TIPOCONTATO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_TIPOCONTATO)
    and ContemValor('E', PERMISSAO_TIPOCONTATO)
    and not ContemValor('D', PERMISSAO_TIPOCONTATO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;
  
end;

end.

