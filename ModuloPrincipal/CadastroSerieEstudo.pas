unit CadastroSerieEstudo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, DBCtrls, ToolWin, ExtCtrls,
  Mask, jpeg, Lib;

type
  TFrmCadastroSerieEstudo = class(TFrmModeloCadastro)
    CdsCadastroID_SERIE_ESTUDO: TIntegerField;
    CdsCadastroSERIE_ESTUDO: TStringField;
    Label2: TLabel;
    DBEditCODIGO: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    CdsCadastroATIVO: TStringField;
    procedure NovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroSerieEstudo: TFrmCadastroSerieEstudo;

implementation

{$R *.dfm}

procedure TFrmCadastroSerieEstudo.NovoClick(Sender: TObject);
begin
  inherited;
DBEdit2.SetFocus;
end;

procedure TFrmCadastroSerieEstudo.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_SERIEFASEESTUDO)
    and not ContemValor('E', PERMISSAO_SERIEFASEESTUDO)
    and not ContemValor('D', PERMISSAO_SERIEFASEESTUDO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SERIEFASEESTUDO)
    and not ContemValor('E', PERMISSAO_SERIEFASEESTUDO)
    and not ContemValor('D', PERMISSAO_SERIEFASEESTUDO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SERIEFASEESTUDO)
    and ContemValor('E', PERMISSAO_SERIEFASEESTUDO)
    and not ContemValor('D', PERMISSAO_SERIEFASEESTUDO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SERIEFASEESTUDO)
    and ContemValor('E', PERMISSAO_SERIEFASEESTUDO)
    and ContemValor('D', PERMISSAO_SERIEFASEESTUDO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SERIEFASEESTUDO)
    and not ContemValor('E', PERMISSAO_SERIEFASEESTUDO)
    and ContemValor('D', PERMISSAO_SERIEFASEESTUDO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SERIEFASEESTUDO)
    and not ContemValor('E', PERMISSAO_SERIEFASEESTUDO)
    and ContemValor('D', PERMISSAO_SERIEFASEESTUDO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SERIEFASEESTUDO)
    and ContemValor('E', PERMISSAO_SERIEFASEESTUDO)
    and not ContemValor('D', PERMISSAO_SERIEFASEESTUDO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroSerieEstudo.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_SERIEFASEESTUDO)
    and not ContemValor('E', PERMISSAO_SERIEFASEESTUDO)
    and not ContemValor('D', PERMISSAO_SERIEFASEESTUDO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SERIEFASEESTUDO)
    and not ContemValor('E', PERMISSAO_SERIEFASEESTUDO)
    and not ContemValor('D', PERMISSAO_SERIEFASEESTUDO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SERIEFASEESTUDO)
    and ContemValor('E', PERMISSAO_SERIEFASEESTUDO)
    and not ContemValor('D', PERMISSAO_SERIEFASEESTUDO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SERIEFASEESTUDO)
    and ContemValor('E', PERMISSAO_SERIEFASEESTUDO)
    and ContemValor('D', PERMISSAO_SERIEFASEESTUDO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SERIEFASEESTUDO)
    and not ContemValor('E', PERMISSAO_SERIEFASEESTUDO)
    and ContemValor('D', PERMISSAO_SERIEFASEESTUDO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SERIEFASEESTUDO)
    and not ContemValor('E', PERMISSAO_SERIEFASEESTUDO)
    and ContemValor('D', PERMISSAO_SERIEFASEESTUDO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SERIEFASEESTUDO)
    and ContemValor('E', PERMISSAO_SERIEFASEESTUDO)
    and not ContemValor('D', PERMISSAO_SERIEFASEESTUDO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;


end.
