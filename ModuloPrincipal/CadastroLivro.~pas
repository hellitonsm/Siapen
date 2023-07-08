unit CadastroLivro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, DBCtrls, ToolWin, ExtCtrls,
  Buttons, Mask, jpeg;

type
  TFrmCadastroLivro = class(TFrmModeloCadastro)
    Label2: TLabel;
    DBEditcodigo: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    SpeedButton5: TSpeedButton;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    edtNumVolumes: TDBEdit;
    Label9: TLabel;
    EdtNumExemplares: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    SqlCadastroID_LIVRO: TIntegerField;
    SqlCadastroLIVRO: TStringField;
    SqlCadastroAUTOR: TStringField;
    SqlCadastroCDD: TStringField;
    SqlCadastroGENERO: TStringField;
    SqlCadastroNUMERO_VOLUMES: TIntegerField;
    SqlCadastroNUMERO_EXEMPLARES: TIntegerField;
    SqlCadastroLIVRO_REVISTA: TStringField;
    SqlCadastroCODIGO_LIVRO: TStringField;
    SqlCadastroID_FORNECEDOR: TIntegerField;
    SqlCadastroUTILIZADO: TIntegerField;
    CdsCadastroID_LIVRO: TIntegerField;
    CdsCadastroLIVRO: TStringField;
    CdsCadastroAUTOR: TStringField;
    CdsCadastroCDD: TStringField;
    CdsCadastroGENERO: TStringField;
    CdsCadastroNUMERO_VOLUMES: TIntegerField;
    CdsCadastroNUMERO_EXEMPLARES: TIntegerField;
    CdsCadastroLIVRO_REVISTA: TStringField;
    CdsCadastroCODIGO_LIVRO: TStringField;
    CdsCadastroID_FORNECEDOR: TIntegerField;
    CdsCadastroUTILIZADO: TIntegerField;
    SqlCadastroID_UP: TIntegerField;
    CdsCadastroID_UP: TIntegerField;
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroLivro: TFrmCadastroLivro;

implementation

uses DmPrincipal, CadastroFornecedor, lib, moduloprincipal,
  CadastroPedagogia;

{$R *.dfm}

procedure TFrmCadastroLivro.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  FrmCadastroFornecedor := TFrmCadastroFornecedor.Create(Application);
  FrmCadastroFornecedor.ShowModal;
  FreeAndNil(FrmCadastroFornecedor);

  dm.dsfornecedor.dataset.close;
  dm.dsfornecedor.dataset.open;
end;

procedure TFrmCadastroLivro.FormShow(Sender: TObject);
begin
  inherited;
  SqlCadastro.close;
  SqlCadastro.ParamByName('id_up').AsInteger := GLOBAL_ID_UP;
  SqlCadastro.Open;

  dscadastro.DataSet.close;
  DsCadastro.DataSet.Open;

  DM.Dsfornecedor.DataSet.Close;
  DM.Dsfornecedor.DataSet.Open;

  DBGridConsulta.SelectedIndex := 1;

end;

procedure TFrmCadastroLivro.SalvarClick(Sender: TObject);
var
  adicionaLivro: integer;
begin
  if DBRadioGroup1.ItemIndex = -1 then begin
    ShowMessage('Selecione livro ou revista para ser cadastrado');
    DBRadioGroup1.SetFocus;
    exit;
  end;                   if EdtNumExemplares.text = '' then
  begin
    ShowMessage('Informe a quantidade de exemplares');
    EdtNumExemplares.SetFocus;
    exit;
  end;
  if DsCadastro.DataSet.State in [dsinsert] then
  begin
    DsCadastro.DataSet.FieldByName('UTILIZADO').AsInteger := 0;
  end;
  DsCadastro.DataSet.FieldByName('id_up').AsInteger := GLOBAL_ID_UP;

  inherited;

end;

procedure TFrmCadastroLivro.FormCreate(Sender: TObject);
begin
  inherited;
  sqlcadastro.Close;
  SqlCadastro.ParamByName('id_up').AsInteger := global_id_up;
  SqlCadastro.Open;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_LIVROREVISTA)
    and not ContemValor('E', PERMISSAO_LIVROREVISTA)
    and not ContemValor('D', PERMISSAO_LIVROREVISTA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_LIVROREVISTA)
    and not ContemValor('E', PERMISSAO_LIVROREVISTA)
    and not ContemValor('D', PERMISSAO_LIVROREVISTA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_LIVROREVISTA)
    and ContemValor('E', PERMISSAO_LIVROREVISTA)
    and not ContemValor('D', PERMISSAO_LIVROREVISTA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_LIVROREVISTA)
    and ContemValor('E', PERMISSAO_LIVROREVISTA)
    and ContemValor('D', PERMISSAO_LIVROREVISTA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_LIVROREVISTA)
    and not ContemValor('E', PERMISSAO_LIVROREVISTA)
    and ContemValor('D', PERMISSAO_LIVROREVISTA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_LIVROREVISTA)
    and not ContemValor('E', PERMISSAO_LIVROREVISTA)
    and ContemValor('D', PERMISSAO_LIVROREVISTA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_LIVROREVISTA)
    and ContemValor('E', PERMISSAO_LIVROREVISTA)
    and not ContemValor('D', PERMISSAO_LIVROREVISTA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroLivro.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_LIVROREVISTA)
    and not ContemValor('E', PERMISSAO_LIVROREVISTA)
    and not ContemValor('D', PERMISSAO_LIVROREVISTA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_LIVROREVISTA)
    and not ContemValor('E', PERMISSAO_LIVROREVISTA)
    and not ContemValor('D', PERMISSAO_LIVROREVISTA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_LIVROREVISTA)
    and ContemValor('E', PERMISSAO_LIVROREVISTA)
    and not ContemValor('D', PERMISSAO_LIVROREVISTA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_LIVROREVISTA)
    and ContemValor('E', PERMISSAO_LIVROREVISTA)
    and ContemValor('D', PERMISSAO_LIVROREVISTA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_LIVROREVISTA)
    and not ContemValor('E', PERMISSAO_LIVROREVISTA)
    and ContemValor('D', PERMISSAO_LIVROREVISTA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_LIVROREVISTA)
    and not ContemValor('E', PERMISSAO_LIVROREVISTA)
    and ContemValor('D', PERMISSAO_LIVROREVISTA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_LIVROREVISTA)
    and ContemValor('E', PERMISSAO_LIVROREVISTA)
    and not ContemValor('D', PERMISSAO_LIVROREVISTA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

end.

