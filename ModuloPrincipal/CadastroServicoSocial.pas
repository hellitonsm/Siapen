unit CadastroServicoSocial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloInterno, FMTBcd, DB, DBClient, Provider, SqlExpr, ImgList,
  ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Mask, Buttons,
  ToolWin, Menus, jpeg, dbcgrids;

type
  TFrmCadastroServicoSocial = class(TFrmModeloInterno)
    SQLServicoSocial: TSQLQuery;
    DSPServicoSocial: TDataSetProvider;
    CDSServicoSocial: TClientDataSet;
    DSServicoSocial: TDataSource;
    TabSheet1: TTabSheet;
    Label53: TLabel;
    DateTimePickerHistorico: TDateTimePicker;
    MemoDescricao: TMemo;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    CDSServicoSocialID_HISTORICO_SERVICO_SOCIAL: TIntegerField;
    CDSServicoSocialDESCRICAO: TStringField;
    CDSServicoSocialDATA: TSQLTimeStampField;
    CDSServicoSocialID_FUNCIONARIO: TIntegerField;
    CDSServicoSocialID_INTERNO: TIntegerField;
    CDSServicoSocialFuncionrio: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure CancelarClick(Sender: TObject);
    procedure PageControlModeloCadastroChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroServicoSocial: TFrmCadastroServicoSocial;

implementation

uses Lib, DmPrincipal;

{$R *.dfm}

procedure TFrmCadastroServicoSocial.Button1Click(Sender: TObject);
begin
  inherited;
  DSServicoSocial.DataSet.Append;
  DSServicoSocial.DataSet.fieldbyname('id_historico_servico_social').AsInteger := 0;
  DSServicoSocial.DataSet.fieldbyname('id_interno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  DSServicoSocial.DataSet.fieldbyname('id_funcionario').AsInteger := GLOBAL_ID_FUNCIONARIO;
  DSServicoSocial.DataSet.fieldbyname('data').AsString :=
    FormatDateTime('dd/mm/yyyy', DateTimePickerHistorico.Date);
  DSServicoSocial.DataSet.fieldbyname('descricao').AsString := MemoDescricao.Lines.Text;
  DSServicoSocial.DataSet.Post;

  MemoDescricao.Lines.Clear;

end;

procedure TFrmCadastroServicoSocial.SalvarClick(Sender: TObject);
var
  iErro, ierro1: integer;
begin
  try
    StatusBar1.Panels[1].Text := 'SALVANDO';
    Novo.Enabled := True;
    Editar.Enabled := True;
    Excluir.Enabled := True;
    Salvar.Enabled := False;
    Cancelar.Enabled := False;

    if DSServicoSocial.DataSet.State in [dsedit, dsinsert] then
      DSServicoSocial.DataSet.Post;

    IniciaTransCadastro;

    iErro := TClientDataSet(DSServicoSocial.DataSet).ApplyUpdates(0);

    if iErro = 0 then
      finalizaTransCadastro
    else
      CancelaTransCadastro;
    StatusBar1.Panels[1].Text := '...';
    DSServicoSocial.DataSet.Refresh;
    PanelCadastro.Enabled := False;
    ShowMessage('Registro Salvo com Sucesso!');
  except
    ShowMessage('Erro na transação');
  end;
  CorNosCampos;

  PageControlPrincipal.ActivePageIndex := 0;
  //PageControl2.ActivePageIndex := 0;
  //PageControl3.ActivePageIndex := 0;
  //PageControl4.ActivePageIndex := 0;

  DSServicoSocial.DataSet.Close;
  DSServicoSocial.DataSet.OPEN;
end;

procedure TFrmCadastroServicoSocial.FormCreate(Sender: TObject);
begin
  inherited;
  DateTimePickerHistorico.Date := Date;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_SERVICOSOCIAL)
    and not ContemValor('E', PERMISSAO_SERVICOSOCIAL)
    and not ContemValor('D', PERMISSAO_SERVICOSOCIAL) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SERVICOSOCIAL)
    and not ContemValor('E', PERMISSAO_SERVICOSOCIAL)
    and not ContemValor('D', PERMISSAO_SERVICOSOCIAL) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SERVICOSOCIAL)
    and ContemValor('E', PERMISSAO_SERVICOSOCIAL)
    and not ContemValor('D', PERMISSAO_SERVICOSOCIAL) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SERVICOSOCIAL)
    and ContemValor('E', PERMISSAO_SERVICOSOCIAL)
    and ContemValor('D', PERMISSAO_SERVICOSOCIAL) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SERVICOSOCIAL)
    and not ContemValor('E', PERMISSAO_SERVICOSOCIAL)
    and ContemValor('D', PERMISSAO_SERVICOSOCIAL) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SERVICOSOCIAL)
    and not ContemValor('E', PERMISSAO_SERVICOSOCIAL)
    and ContemValor('D', PERMISSAO_SERVICOSOCIAL) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SERVICOSOCIAL)
    and ContemValor('E', PERMISSAO_SERVICOSOCIAL)
    and not ContemValor('D', PERMISSAO_SERVICOSOCIAL) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroServicoSocial.FormShow(Sender: TObject);
begin
  inherited;
  DSServicoSocial.DataSet.Close;
  DSServicoSocial.DataSet.Open;

end;

procedure TFrmCadastroServicoSocial.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_SERVICOSOCIAL)
    and not ContemValor('E', PERMISSAO_SERVICOSOCIAL)
    and not ContemValor('D', PERMISSAO_SERVICOSOCIAL) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SERVICOSOCIAL)
    and not ContemValor('E', PERMISSAO_SERVICOSOCIAL)
    and not ContemValor('D', PERMISSAO_SERVICOSOCIAL) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SERVICOSOCIAL)
    and ContemValor('E', PERMISSAO_SERVICOSOCIAL)
    and not ContemValor('D', PERMISSAO_SERVICOSOCIAL) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SERVICOSOCIAL)
    and ContemValor('E', PERMISSAO_SERVICOSOCIAL)
    and ContemValor('D', PERMISSAO_SERVICOSOCIAL) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SERVICOSOCIAL)
    and not ContemValor('E', PERMISSAO_SERVICOSOCIAL)
    and ContemValor('D', PERMISSAO_SERVICOSOCIAL) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SERVICOSOCIAL)
    and not ContemValor('E', PERMISSAO_SERVICOSOCIAL)
    and ContemValor('D', PERMISSAO_SERVICOSOCIAL) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SERVICOSOCIAL)
    and ContemValor('E', PERMISSAO_SERVICOSOCIAL)
    and not ContemValor('D', PERMISSAO_SERVICOSOCIAL) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroServicoSocial.CancelarClick(Sender: TObject);
begin
  inherited;

  DSServicoSocial.DataSet.Close;
  DSServicoSocial.DataSet.OPEN;
end;

procedure TFrmCadastroServicoSocial.PageControlModeloCadastroChange(
  Sender: TObject);
begin
  //inherited;
  if PageControlModeloCadastro.ActivePageIndex = 1 then
  begin
    CancelarClick(nil);
  end;
end;

end.

