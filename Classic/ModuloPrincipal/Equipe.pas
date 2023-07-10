unit Equipe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, Mask, DBCtrls, DB, DBClient, Provider,
  SqlExpr, ImgList, ComCtrls, Grids, DBGrids, StdCtrls, ToolWin, ExtCtrls,
  Buttons, jpeg, Lib, adpDBDateTimePicker;

type
  TFrmEquipe = class(TFrmModeloCadastro)
    Label2: TLabel;
    DBEditcodigo: TDBEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label5: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    CdsCadastroDATABASE_PLANTAO: TSQLTimeStampField;
    CdsCadastroIDEQUIPE: TIntegerField;
    CdsCadastroEQUIPE: TStringField;
    CdsCadastroIDHORARIO_FUNCIONARIO: TIntegerField;
    CdsCadastroTIPO: TStringField;
    adpDBDateTimePicker1: TadpDBDateTimePicker;
    procedure SalvarClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEquipe: TFrmEquipe;

implementation

uses HorarioFuncionario, DmPrincipal;

{$R *.dfm}

procedure TFrmEquipe.SalvarClick(Sender: TObject);
begin

  if DsCadastro.DataSet.FieldByName('tipo').AsString = '' then
  begin
    ShowMessage('Por favor informe o tipo de equipe.');
    Exit; 
  end;

  inherited;

end;

procedure TFrmEquipe.SpeedButton3Click(Sender: TObject);
begin
  inherited;

  FrmHorarioFuncionario := TFrmHorarioFuncionario.create(Application);
  FrmHorarioFuncionario.showmodal;
  FreeAndNil(FrmHorarioFuncionario);
  CorNosCampos;

  DM.DsHorarioFuncionario.DataSet.Close;
  DM.DsHorarioFuncionario.DataSet.Open;


end;

procedure TFrmEquipe.DBLookupComboBox3Click(Sender: TObject);
begin
  inherited;
  
  if DsCadastro.DataSet.State in [dsedit, dsinsert] then
  begin
    DsCadastro.DataSet.FieldByName('TIPO').AsString := 'E';
    if DM.DsHorarioFuncionario.DataSet.FieldByName('PLANTAO').AsString = 'S' then
      DsCadastro.DataSet.FieldByName('TIPO').AsString := 'P';
  end;

end;

procedure TFrmEquipe.FormShow(Sender: TObject);
begin
  inherited;

  DM.DsHorarioFuncionario.DataSet.Close;
  DM.DsHorarioFuncionario.DataSet.Open;
  DBGridConsulta.SelectedIndex := 1;

end;

procedure TFrmEquipe.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_EQUIPE)
    and not ContemValor('E', PERMISSAO_EQUIPE)
    and not ContemValor('D', PERMISSAO_EQUIPE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_EQUIPE)
    and not ContemValor('E', PERMISSAO_EQUIPE)
    and not ContemValor('D', PERMISSAO_EQUIPE) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_EQUIPE)
    and ContemValor('E', PERMISSAO_EQUIPE)
    and not ContemValor('D', PERMISSAO_EQUIPE) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_EQUIPE)
    and ContemValor('E', PERMISSAO_EQUIPE)
    and ContemValor('D', PERMISSAO_EQUIPE) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_EQUIPE)
    and not ContemValor('E', PERMISSAO_EQUIPE)
    and ContemValor('D', PERMISSAO_EQUIPE) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_EQUIPE)
    and not ContemValor('E', PERMISSAO_EQUIPE)
    and ContemValor('D', PERMISSAO_EQUIPE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_EQUIPE)
    and ContemValor('E', PERMISSAO_EQUIPE)
    and not ContemValor('D', PERMISSAO_EQUIPE) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmEquipe.DsCadastroDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_EQUIPE)
    and not ContemValor('E', PERMISSAO_EQUIPE)
    and not ContemValor('D', PERMISSAO_EQUIPE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_EQUIPE)
    and not ContemValor('E', PERMISSAO_EQUIPE)
    and not ContemValor('D', PERMISSAO_EQUIPE) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_EQUIPE)
    and ContemValor('E', PERMISSAO_EQUIPE)
    and not ContemValor('D', PERMISSAO_EQUIPE) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_EQUIPE)
    and ContemValor('E', PERMISSAO_EQUIPE)
    and ContemValor('D', PERMISSAO_EQUIPE) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_EQUIPE)
    and not ContemValor('E', PERMISSAO_EQUIPE)
    and ContemValor('D', PERMISSAO_EQUIPE) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_EQUIPE)
    and not ContemValor('E', PERMISSAO_EQUIPE)
    and ContemValor('D', PERMISSAO_EQUIPE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_EQUIPE)
    and ContemValor('E', PERMISSAO_EQUIPE)
    and not ContemValor('D', PERMISSAO_EQUIPE) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

end.
