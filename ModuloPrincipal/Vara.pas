unit Vara;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls,
  ToolWin, Mask, Buttons, Lib, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFrmVara = class(TFrmModeloCadastro)
    Label2: TLabel;
    DBEditCODIGO: TDBEdit;
    Label3: TLabel;
    DBEditPOSTO_TRABALHO: TDBEdit;
    Label14: TLabel;
    DBLookupComboBoxIDCIDADE: TDBLookupComboBox;
    SpeedButton11: TSpeedButton;
    procedure SpeedButton11Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVara: TFrmVara;

implementation

uses DmPrincipal, CadastroCidade;

{$R *.dfm}

procedure TFrmVara.SpeedButton11Click(Sender: TObject);
begin
  inherited;
  FrmCadastroCidade := TFrmCadastroCidade.create(Application);
  FrmCadastroCidade.showmodal;
  FreeAndNil(FrmCadastroCidade);
  CorNosCampos;

  DM.DSCIDADE.DataSet.Close;
  DM.DSCIDADE.DataSet.OPEN;

end;

procedure TFrmVara.FormCreate(Sender: TObject);
begin
  inherited;
  DM.DSCIDADE.DataSet.Close;
  DM.DSCIDADE.DataSet.OPEN;

  {Verifica as permiss�es que o usu�rio possui para esta tela
  e habilita ou n�o os respectivos bot�es.
  Estas verifica��es devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permiss�o referente � tela nas verifica��es abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_VARAEXECUCAO)
    and not ContemValor('E', PERMISSAO_VARAEXECUCAO)
    and not ContemValor('D', PERMISSAO_VARAEXECUCAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_VARAEXECUCAO)
    and not ContemValor('E', PERMISSAO_VARAEXECUCAO)
    and not ContemValor('D', PERMISSAO_VARAEXECUCAO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_VARAEXECUCAO)
    and ContemValor('E', PERMISSAO_VARAEXECUCAO)
    and not ContemValor('D', PERMISSAO_VARAEXECUCAO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_VARAEXECUCAO)
    and ContemValor('E', PERMISSAO_VARAEXECUCAO)
    and ContemValor('D', PERMISSAO_VARAEXECUCAO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_VARAEXECUCAO)
    and not ContemValor('E', PERMISSAO_VARAEXECUCAO)
    and ContemValor('D', PERMISSAO_VARAEXECUCAO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_VARAEXECUCAO)
    and not ContemValor('E', PERMISSAO_VARAEXECUCAO)
    and ContemValor('D', PERMISSAO_VARAEXECUCAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_VARAEXECUCAO)
    and ContemValor('E', PERMISSAO_VARAEXECUCAO)
    and not ContemValor('D', PERMISSAO_VARAEXECUCAO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmVara.DsCadastroDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  {Verifica as permiss�es que o usu�rio possui para esta tela
  e habilita ou n�o os respectivos bot�es.
  Estas verifica��es devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permiss�o referente � tela nas verifica��es abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_VARAEXECUCAO)
    and not ContemValor('E', PERMISSAO_VARAEXECUCAO)
    and not ContemValor('D', PERMISSAO_VARAEXECUCAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_VARAEXECUCAO)
    and not ContemValor('E', PERMISSAO_VARAEXECUCAO)
    and not ContemValor('D', PERMISSAO_VARAEXECUCAO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_VARAEXECUCAO)
    and ContemValor('E', PERMISSAO_VARAEXECUCAO)
    and not ContemValor('D', PERMISSAO_VARAEXECUCAO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_VARAEXECUCAO)
    and ContemValor('E', PERMISSAO_VARAEXECUCAO)
    and ContemValor('D', PERMISSAO_VARAEXECUCAO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_VARAEXECUCAO)
    and not ContemValor('E', PERMISSAO_VARAEXECUCAO)
    and ContemValor('D', PERMISSAO_VARAEXECUCAO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_VARAEXECUCAO)
    and not ContemValor('E', PERMISSAO_VARAEXECUCAO)
    and ContemValor('D', PERMISSAO_VARAEXECUCAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_VARAEXECUCAO)
    and ContemValor('E', PERMISSAO_VARAEXECUCAO)
    and not ContemValor('D', PERMISSAO_VARAEXECUCAO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

end.
