unit CadastroPavilhao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, ToolWin, ExtCtrls, Mask,
  DBCtrls, jpeg, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFrmCadastroPavilhao = class(TFrmModeloCadastro)
    Label2: TLabel;
    DBEditcodigo: TDBEdit;
    LabelPavilhao: TLabel;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
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
  FrmCadastroPavilhao: TFrmCadastroPavilhao;

implementation

uses DmPrincipal, Lib;

{$R *.dfm}

procedure TFrmCadastroPavilhao.NovoClick(Sender: TObject);
begin
  inherited;
  DBEdit2.SetFocus;
end;

procedure TFrmCadastroPavilhao.FormCreate(Sender: TObject);
begin
  LabelPavilhao.Caption := GLOBAL_NIVEL_1;
  Self.Caption := 'Cadastro de ' + GLOBAL_NIVEL_1;
  SqlCadastro.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;
  inherited;
  DM.DsUP.DataSet.Close;
  DM.DsUP.DataSet.Open;

  {Verifica as permiss�es que o usu�rio possui para esta tela
  e habilita ou n�o os respectivos bot�es.
  Estas verifica��es devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permiss�o referente � tela nas verifica��es abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_PAVILHAO)
    and not ContemValor('E', PERMISSAO_PAVILHAO)
    and not ContemValor('D', PERMISSAO_PAVILHAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PAVILHAO)
    and not ContemValor('E', PERMISSAO_PAVILHAO)
    and not ContemValor('D', PERMISSAO_PAVILHAO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PAVILHAO)
    and ContemValor('E', PERMISSAO_PAVILHAO)
    and not ContemValor('D', PERMISSAO_PAVILHAO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PAVILHAO)
    and ContemValor('E', PERMISSAO_PAVILHAO)
    and ContemValor('D', PERMISSAO_PAVILHAO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PAVILHAO)
    and not ContemValor('E', PERMISSAO_PAVILHAO)
    and ContemValor('D', PERMISSAO_PAVILHAO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PAVILHAO)
    and not ContemValor('E', PERMISSAO_PAVILHAO)
    and ContemValor('D', PERMISSAO_PAVILHAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PAVILHAO)
    and ContemValor('E', PERMISSAO_PAVILHAO)
    and not ContemValor('D', PERMISSAO_PAVILHAO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroPavilhao.FormShow(Sender: TObject);
begin
  inherited;
  DBGridConsulta.SelectedIndex := 1;
end;

procedure TFrmCadastroPavilhao.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permiss�es que o usu�rio possui para esta tela
  e habilita ou n�o os respectivos bot�es.
  Estas verifica��es devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permiss�o referente � tela nas verifica��es abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_PAVILHAO)
    and not ContemValor('E', PERMISSAO_PAVILHAO)
    and not ContemValor('D', PERMISSAO_PAVILHAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PAVILHAO)
    and not ContemValor('E', PERMISSAO_PAVILHAO)
    and not ContemValor('D', PERMISSAO_PAVILHAO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PAVILHAO)
    and ContemValor('E', PERMISSAO_PAVILHAO)
    and not ContemValor('D', PERMISSAO_PAVILHAO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PAVILHAO)
    and ContemValor('E', PERMISSAO_PAVILHAO)
    and ContemValor('D', PERMISSAO_PAVILHAO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PAVILHAO)
    and not ContemValor('E', PERMISSAO_PAVILHAO)
    and ContemValor('D', PERMISSAO_PAVILHAO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PAVILHAO)
    and not ContemValor('E', PERMISSAO_PAVILHAO)
    and ContemValor('D', PERMISSAO_PAVILHAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PAVILHAO)
    and ContemValor('E', PERMISSAO_PAVILHAO)
    and not ContemValor('D', PERMISSAO_PAVILHAO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

end.

