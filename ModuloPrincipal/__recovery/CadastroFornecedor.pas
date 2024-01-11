unit CadastroFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, DBCtrls, ToolWin, ExtCtrls,
  Buttons, Mask, jpeg, Lib, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFrmCadastroFornecedor = class(TFrmModeloCadastro)
    Label2: TLabel;
    DBEditcodigo: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEditcep: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEditCNPJ: TDBEdit;
    Label10: TLabel;
    DBEdittelefone: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    SpeedButton5: TSpeedButton;
    DBLookupComboBox1: TDBLookupComboBox;
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
  FrmCadastroFornecedor: TFrmCadastroFornecedor;

implementation

uses DmPrincipal, CadastroCidade;

{$R *.dfm}

procedure TFrmCadastroFornecedor.NovoClick(Sender: TObject);
begin
  inherited;
 DBEdit2.SetFocus;
end;

procedure TFrmCadastroFornecedor.FormShow(Sender: TObject);
begin
  inherited;
  DM.DSCIDADE.DataSet.Close;
  DM.DSCIDADE.DataSet.Open;

  DBEditcnpj.Field.EditMask := '99.999.999\/9999-99;0;_';
  DBEditcep.Field.EditMask := '99.999-999;0;_';
  DBEdittelefone.Field.EditMask := '(99)9999-9999;0;_';
  DBGridConsulta.SelectedIndex := 1;
end;

procedure TFrmCadastroFornecedor.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  FrmCadastrocidade := TFrmCadastrocidade.Create(Application);
  FrmCadastrocidade.ShowModal;
  FreeAndNil(FrmCadastrocidade);
  
end;

procedure TFrmCadastroFornecedor.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_FORNECEDOR)
    and not ContemValor('E', PERMISSAO_FORNECEDOR)
    and not ContemValor('D', PERMISSAO_FORNECEDOR) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FORNECEDOR)
    and not ContemValor('E', PERMISSAO_FORNECEDOR)
    and not ContemValor('D', PERMISSAO_FORNECEDOR) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FORNECEDOR)
    and ContemValor('E', PERMISSAO_FORNECEDOR)
    and not ContemValor('D', PERMISSAO_FORNECEDOR) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FORNECEDOR)
    and ContemValor('E', PERMISSAO_FORNECEDOR)
    and ContemValor('D', PERMISSAO_FORNECEDOR) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FORNECEDOR)
    and not ContemValor('E', PERMISSAO_FORNECEDOR)
    and ContemValor('D', PERMISSAO_FORNECEDOR) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FORNECEDOR)
    and not ContemValor('E', PERMISSAO_FORNECEDOR)
    and ContemValor('D', PERMISSAO_FORNECEDOR) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FORNECEDOR)
    and ContemValor('E', PERMISSAO_FORNECEDOR)
    and not ContemValor('D', PERMISSAO_FORNECEDOR) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;
  
end;

procedure TFrmCadastroFornecedor.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_FORNECEDOR)
    and not ContemValor('E', PERMISSAO_FORNECEDOR)
    and not ContemValor('D', PERMISSAO_FORNECEDOR) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FORNECEDOR)
    and not ContemValor('E', PERMISSAO_FORNECEDOR)
    and not ContemValor('D', PERMISSAO_FORNECEDOR) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FORNECEDOR)
    and ContemValor('E', PERMISSAO_FORNECEDOR)
    and not ContemValor('D', PERMISSAO_FORNECEDOR) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FORNECEDOR)
    and ContemValor('E', PERMISSAO_FORNECEDOR)
    and ContemValor('D', PERMISSAO_FORNECEDOR) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FORNECEDOR)
    and not ContemValor('E', PERMISSAO_FORNECEDOR)
    and ContemValor('D', PERMISSAO_FORNECEDOR) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FORNECEDOR)
    and not ContemValor('E', PERMISSAO_FORNECEDOR)
    and ContemValor('D', PERMISSAO_FORNECEDOR) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FORNECEDOR)
    and ContemValor('E', PERMISSAO_FORNECEDOR)
    and not ContemValor('D', PERMISSAO_FORNECEDOR) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;
  
end;

end.
