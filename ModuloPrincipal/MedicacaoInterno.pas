unit MedicacaoInterno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, DBCtrls, ToolWin, ExtCtrls,
  Buttons, Mask, jpeg, Lib;

type
  TFrmMedicacaoInterno = class(TFrmModeloCadastro)
    CdsCadastroID_REMEDIO_INTERNO: TIntegerField;
    CdsCadastroID_REMEDIO: TIntegerField;
    CdsCadastroID_INTERNO: TIntegerField;
    CdsCadastroDATA: TSQLTimeStampField;
    CdsCadastroOBS: TStringField;
    Label2: TLabel;
    DBEditcodigo: TDBEdit;
    Label3: TLabel;
    DBEditdata: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label6: TLabel;
    DBMemo1: TDBMemo;
    SpeedButton5: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMedicacaoInterno: TFrmMedicacaoInterno;

implementation

uses DmPrincipal;

{$R *.dfm}

procedure TFrmMedicacaoInterno.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_FARMACIA)
    and not ContemValor('E', PERMISSAO_FARMACIA)
    and not ContemValor('D', PERMISSAO_FARMACIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FARMACIA)
    and not ContemValor('E', PERMISSAO_FARMACIA)
    and not ContemValor('D', PERMISSAO_FARMACIA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FARMACIA)
    and ContemValor('E', PERMISSAO_FARMACIA)
    and not ContemValor('D', PERMISSAO_FARMACIA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FARMACIA)
    and ContemValor('E', PERMISSAO_FARMACIA)
    and ContemValor('D', PERMISSAO_FARMACIA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FARMACIA)
    and not ContemValor('E', PERMISSAO_FARMACIA)
    and ContemValor('D', PERMISSAO_FARMACIA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FARMACIA)
    and not ContemValor('E', PERMISSAO_FARMACIA)
    and ContemValor('D', PERMISSAO_FARMACIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FARMACIA)
    and ContemValor('E', PERMISSAO_FARMACIA)
    and not ContemValor('D', PERMISSAO_FARMACIA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmMedicacaoInterno.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_FARMACIA)
    and not ContemValor('E', PERMISSAO_FARMACIA)
    and not ContemValor('D', PERMISSAO_FARMACIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FARMACIA)
    and not ContemValor('E', PERMISSAO_FARMACIA)
    and not ContemValor('D', PERMISSAO_FARMACIA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FARMACIA)
    and ContemValor('E', PERMISSAO_FARMACIA)
    and not ContemValor('D', PERMISSAO_FARMACIA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FARMACIA)
    and ContemValor('E', PERMISSAO_FARMACIA)
    and ContemValor('D', PERMISSAO_FARMACIA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FARMACIA)
    and not ContemValor('E', PERMISSAO_FARMACIA)
    and ContemValor('D', PERMISSAO_FARMACIA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FARMACIA)
    and not ContemValor('E', PERMISSAO_FARMACIA)
    and ContemValor('D', PERMISSAO_FARMACIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FARMACIA)
    and ContemValor('E', PERMISSAO_FARMACIA)
    and not ContemValor('D', PERMISSAO_FARMACIA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

end.
