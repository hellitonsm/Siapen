unit HorarioFuncionario;

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
  TFrmHorarioFuncionario = class(TFrmModeloCadastro)
    Label2: TLabel;
    DBEditCODIGO: TDBEdit;
    DBEditHORARIO_FUNCIONARIO: TDBEdit;
    Label3: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    GroupBoxPlantonista: TGroupBox;
    Label4: TLabel;
    DBEditHORAS_TRABALHO: TDBEdit;
    DBEditHORAS_FOLGA: TDBEdit;
    Label5: TLabel;
    DBEditHORA_INICIO_MANHA: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEditHORA_FIM_MANHA: TDBEdit;
    Label8: TLabel;
    DBEditHORA_INICIO_TARDE: TDBEdit;
    Label9: TLabel;
    DBEditHORA_FIM_TARDE: TDBEdit;
    procedure NovoClick(Sender: TObject);
    procedure DBRadioGroup1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmHorarioFuncionario: TFrmHorarioFuncionario;

implementation

{$R *.dfm}

procedure TFrmHorarioFuncionario.NovoClick(Sender: TObject);
begin
  inherited;
  dscadastro.DataSet.FieldByName('PLANTAO').AsString := 'N';
end;

procedure TFrmHorarioFuncionario.DBRadioGroup1Change(Sender: TObject);
begin
  inherited;

  GroupBoxPlantonista.Enabled := true ;
  
  if DBRadioGroup1.ItemIndex = 1 then
  begin
    GroupBoxPlantonista.Enabled := False;
  end;
  
end;

procedure TFrmHorarioFuncionario.FormShow(Sender: TObject);
begin
  inherited;

  DBEditHORAS_TRABALHO.field.editmask := '99;0;_';
  DBEditHORAS_FOLGA.field.editmask := '99;0;_';

  DBEditHORA_INICIO_MANHA.field.editmask := '99:99;1;_';
  DBEditHORA_FIM_MANHA.field.editmask := '99:99;1;_';

  DBEditHORA_INICIO_TARDE.field.editmask := '99:99;1;_';
  DBEditHORA_FIM_TARDE.field.editmask := '99:99;1;_';

end;

procedure TFrmHorarioFuncionario.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_HORARIOFUNCIONARIO)
    and not ContemValor('E', PERMISSAO_HORARIOFUNCIONARIO)
    and not ContemValor('D', PERMISSAO_HORARIOFUNCIONARIO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_HORARIOFUNCIONARIO)
    and not ContemValor('E', PERMISSAO_HORARIOFUNCIONARIO)
    and not ContemValor('D', PERMISSAO_HORARIOFUNCIONARIO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_HORARIOFUNCIONARIO)
    and ContemValor('E', PERMISSAO_HORARIOFUNCIONARIO)
    and not ContemValor('D', PERMISSAO_HORARIOFUNCIONARIO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_HORARIOFUNCIONARIO)
    and ContemValor('E', PERMISSAO_HORARIOFUNCIONARIO)
    and ContemValor('D', PERMISSAO_HORARIOFUNCIONARIO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_HORARIOFUNCIONARIO)
    and not ContemValor('E', PERMISSAO_HORARIOFUNCIONARIO)
    and ContemValor('D', PERMISSAO_HORARIOFUNCIONARIO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_HORARIOFUNCIONARIO)
    and not ContemValor('E', PERMISSAO_HORARIOFUNCIONARIO)
    and ContemValor('D', PERMISSAO_HORARIOFUNCIONARIO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_HORARIOFUNCIONARIO)
    and ContemValor('E', PERMISSAO_HORARIOFUNCIONARIO)
    and not ContemValor('D', PERMISSAO_HORARIOFUNCIONARIO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmHorarioFuncionario.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_HORARIOFUNCIONARIO)
    and not ContemValor('E', PERMISSAO_HORARIOFUNCIONARIO)
    and not ContemValor('D', PERMISSAO_HORARIOFUNCIONARIO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_HORARIOFUNCIONARIO)
    and not ContemValor('E', PERMISSAO_HORARIOFUNCIONARIO)
    and not ContemValor('D', PERMISSAO_HORARIOFUNCIONARIO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_HORARIOFUNCIONARIO)
    and ContemValor('E', PERMISSAO_HORARIOFUNCIONARIO)
    and not ContemValor('D', PERMISSAO_HORARIOFUNCIONARIO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_HORARIOFUNCIONARIO)
    and ContemValor('E', PERMISSAO_HORARIOFUNCIONARIO)
    and ContemValor('D', PERMISSAO_HORARIOFUNCIONARIO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_HORARIOFUNCIONARIO)
    and not ContemValor('E', PERMISSAO_HORARIOFUNCIONARIO)
    and ContemValor('D', PERMISSAO_HORARIOFUNCIONARIO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_HORARIOFUNCIONARIO)
    and not ContemValor('E', PERMISSAO_HORARIOFUNCIONARIO)
    and ContemValor('D', PERMISSAO_HORARIOFUNCIONARIO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_HORARIOFUNCIONARIO)
    and ContemValor('E', PERMISSAO_HORARIOFUNCIONARIO)
    and not ContemValor('D', PERMISSAO_HORARIOFUNCIONARIO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

end.

