unit CadastroSetorTrablalho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, DBCtrls, ToolWin, ExtCtrls,
  Mask, jpeg, Buttons, Lib;

type
  TFrmCadastroSetorTrabalho = class(TFrmModeloCadastro)
    CdsCadastroID_SETOR_TRABALHO: TIntegerField;
    CdsCadastroSETOR_TRABALHO: TStringField;
    Label2: TLabel;
    DBEditcodigo: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    CdsCadastroENDERECO: TStringField;
    CdsCadastroID_CIDADE: TIntegerField;
    CdsCadastroCEP: TStringField;
    CdsCadastroBAIRRO: TStringField;
    CdsCadastroCOMPLEMENTO: TStringField;
    CdsCadastroRESPONSAVEL: TStringField;
    CdsCadastroCNPJ: TStringField;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEditCNPJ: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    SpeedButton5: TSpeedButton;
    procedure NovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroSetorTrabalho: TFrmCadastroSetorTrabalho;

implementation

uses DmPrincipal, CadastroCidade;

{$R *.dfm}

procedure TFrmCadastroSetorTrabalho.NovoClick(Sender: TObject);
begin
  inherited;
  DBEdit2.SetFocus;
end;

procedure TFrmCadastroSetorTrabalho.FormShow(Sender: TObject);
begin
  inherited;

  dm.DSCIDADE.dataset.close;
  dm.DSCIDADE.dataset.Open;
  DBEditCNPJ.Field.EditMask := '99.999.999/9999-99;1;_';

end;

procedure TFrmCadastroSetorTrabalho.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  FrmCadastroCidade := TFrmCadastroCidade.create(Application);
  FrmCadastroCidade.showmodal;
  FreeAndNil(FrmCadastroCidade);

  DM.DSCIDADE.DataSet.Close;
  DM.DSCIDADE.DataSet.OPEN;

end;

procedure TFrmCadastroSetorTrabalho.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_SETORTRABALHOCAD)
    and not ContemValor('E', PERMISSAO_SETORTRABALHOCAD)
    and not ContemValor('D', PERMISSAO_SETORTRABALHOCAD) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SETORTRABALHOCAD)
    and not ContemValor('E', PERMISSAO_SETORTRABALHOCAD)
    and not ContemValor('D', PERMISSAO_SETORTRABALHOCAD) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SETORTRABALHOCAD)
    and ContemValor('E', PERMISSAO_SETORTRABALHOCAD)
    and not ContemValor('D', PERMISSAO_SETORTRABALHOCAD) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SETORTRABALHOCAD)
    and ContemValor('E', PERMISSAO_SETORTRABALHOCAD)
    and ContemValor('D', PERMISSAO_SETORTRABALHOCAD) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SETORTRABALHOCAD)
    and not ContemValor('E', PERMISSAO_SETORTRABALHOCAD)
    and ContemValor('D', PERMISSAO_SETORTRABALHOCAD) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SETORTRABALHOCAD)
    and not ContemValor('E', PERMISSAO_SETORTRABALHOCAD)
    and ContemValor('D', PERMISSAO_SETORTRABALHOCAD) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SETORTRABALHOCAD)
    and ContemValor('E', PERMISSAO_SETORTRABALHOCAD)
    and not ContemValor('D', PERMISSAO_SETORTRABALHOCAD) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroSetorTrabalho.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_SETORTRABALHOCAD)
    and not ContemValor('E', PERMISSAO_SETORTRABALHOCAD)
    and not ContemValor('D', PERMISSAO_SETORTRABALHOCAD) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SETORTRABALHOCAD)
    and not ContemValor('E', PERMISSAO_SETORTRABALHOCAD)
    and not ContemValor('D', PERMISSAO_SETORTRABALHOCAD) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SETORTRABALHOCAD)
    and ContemValor('E', PERMISSAO_SETORTRABALHOCAD)
    and not ContemValor('D', PERMISSAO_SETORTRABALHOCAD) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SETORTRABALHOCAD)
    and ContemValor('E', PERMISSAO_SETORTRABALHOCAD)
    and ContemValor('D', PERMISSAO_SETORTRABALHOCAD) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SETORTRABALHOCAD)
    and not ContemValor('E', PERMISSAO_SETORTRABALHOCAD)
    and ContemValor('D', PERMISSAO_SETORTRABALHOCAD) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SETORTRABALHOCAD)
    and not ContemValor('E', PERMISSAO_SETORTRABALHOCAD)
    and ContemValor('D', PERMISSAO_SETORTRABALHOCAD) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SETORTRABALHOCAD)
    and ContemValor('E', PERMISSAO_SETORTRABALHOCAD)
    and not ContemValor('D', PERMISSAO_SETORTRABALHOCAD) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

end.

