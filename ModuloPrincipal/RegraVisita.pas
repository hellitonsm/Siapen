unit RegraVisita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, StdCtrls, DBCtrls, Mask, DB, DBClient,
  Provider, SqlExpr, ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids,
  ToolWin, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFrmRegraVisita = class(TFrmModeloCadastro)
    CdsCadastroID_REGRA_VISITA: TIntegerField;
    CdsCadastroDESCRICAO: TStringField;
    CdsCadastroREGRA_SQL: TStringField;
    CdsCadastroID_UP: TIntegerField;
    CdsCadastroDIA_SEMANA: TIntegerField;
    Label2: TLabel;
    DBEditCODIGO: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    Label11: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBRadioGroup1: TDBRadioGroup;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRegraVisita: TFrmRegraVisita;

implementation

uses DmPrincipal, Lib;

{$R *.dfm}

procedure TFrmRegraVisita.FormCreate(Sender: TObject);
begin
  DM.DsUP.DataSet.Close;
  DM.DsUP.DataSet.open;
  SqlCadastro.ParamByName('id_up').AsInteger := GLOBAL_ID_UP;
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_REGRAVISITACAO)
    and not ContemValor('E', PERMISSAO_REGRAVISITACAO)
    and not ContemValor('D', PERMISSAO_REGRAVISITACAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_REGRAVISITACAO)
    and not ContemValor('E', PERMISSAO_REGRAVISITACAO)
    and not ContemValor('D', PERMISSAO_REGRAVISITACAO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_REGRAVISITACAO)
    and ContemValor('E', PERMISSAO_REGRAVISITACAO)
    and not ContemValor('D', PERMISSAO_REGRAVISITACAO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_REGRAVISITACAO)
    and ContemValor('E', PERMISSAO_REGRAVISITACAO)
    and ContemValor('D', PERMISSAO_REGRAVISITACAO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_REGRAVISITACAO)
    and not ContemValor('E', PERMISSAO_REGRAVISITACAO)
    and ContemValor('D', PERMISSAO_REGRAVISITACAO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_REGRAVISITACAO)
    and not ContemValor('E', PERMISSAO_REGRAVISITACAO)
    and ContemValor('D', PERMISSAO_REGRAVISITACAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_REGRAVISITACAO)
    and ContemValor('E', PERMISSAO_REGRAVISITACAO)
    and not ContemValor('D', PERMISSAO_REGRAVISITACAO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmRegraVisita.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_REGRAVISITACAO)
    and not ContemValor('E', PERMISSAO_REGRAVISITACAO)
    and not ContemValor('D', PERMISSAO_REGRAVISITACAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_REGRAVISITACAO)
    and not ContemValor('E', PERMISSAO_REGRAVISITACAO)
    and not ContemValor('D', PERMISSAO_REGRAVISITACAO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_REGRAVISITACAO)
    and ContemValor('E', PERMISSAO_REGRAVISITACAO)
    and not ContemValor('D', PERMISSAO_REGRAVISITACAO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_REGRAVISITACAO)
    and ContemValor('E', PERMISSAO_REGRAVISITACAO)
    and ContemValor('D', PERMISSAO_REGRAVISITACAO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_REGRAVISITACAO)
    and not ContemValor('E', PERMISSAO_REGRAVISITACAO)
    and ContemValor('D', PERMISSAO_REGRAVISITACAO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_REGRAVISITACAO)
    and not ContemValor('E', PERMISSAO_REGRAVISITACAO)
    and ContemValor('D', PERMISSAO_REGRAVISITACAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_REGRAVISITACAO)
    and ContemValor('E', PERMISSAO_REGRAVISITACAO)
    and not ContemValor('D', PERMISSAO_REGRAVISITACAO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

end.

