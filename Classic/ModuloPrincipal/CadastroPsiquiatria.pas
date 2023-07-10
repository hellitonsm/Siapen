unit CadastroPsiquiatria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloInterno, FMTBcd, DB, DBClient, Provider, SqlExpr, ImgList,
  ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Mask, Buttons,
  ToolWin, Menus, jpeg, dbcgrids;

type
  TFrmCadastroPsiquiatria = class(TFrmModeloInterno)
    TabSheet1: TTabSheet;
    Label53: TLabel;
    DateTimePickerHistorico: TDateTimePicker;
    MemoDescricao: TMemo;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    SQLPsiquiatria: TSQLQuery;
    DSPpsiquiatria: TDataSetProvider;
    CDSpsiquiatria: TClientDataSet;
    DSpsiquiatria: TDataSource;
    CDSpsiquiatriaID_HISTORICO_PSIQUIATRIA: TIntegerField;
    CDSpsiquiatriaDESCRICAO: TStringField;
    CDSpsiquiatriaDATA: TSQLTimeStampField;
    CDSpsiquiatriaID_FUNCIONARIO: TIntegerField;
    CDSpsiquiatriaID_INTERNO: TIntegerField;
    CDSpsiquiatriaFuncionrioa: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure CancelarClick(Sender: TObject);
    procedure PageControlModeloCadastroChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroPsiquiatria: TFrmCadastroPsiquiatria;

implementation

uses DmPrincipal, Lib;

{$R *.dfm}

procedure TFrmCadastroPsiquiatria.Button1Click(Sender: TObject);
begin
  inherited;
  dspsiquiatria.DataSet.Append;
  dspsiquiatria.DataSet.fieldbyname('id_historico_psiquiatria').AsInteger := 0;
  dspsiquiatria.DataSet.fieldbyname('id_interno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  dspsiquiatria.DataSet.fieldbyname('id_funcionario').AsInteger := GLOBAL_ID_FUNCIONARIO;
  dspsiquiatria.DataSet.fieldbyname('data').AsString :=
    FormatDateTime('dd/mm/yyyy', DateTimePickerHistorico.Date);
  dspsiquiatria.DataSet.fieldbyname('descricao').AsString := MemoDescricao.Lines.Text;
  dspsiquiatria.DataSet.Post;

  MemoDescricao.Lines.Clear;

end;

procedure TFrmCadastroPsiquiatria.SalvarClick(Sender: TObject);
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

    if dspsiquiatria.DataSet.State in [dsedit, dsinsert] then
      dspsiquiatria.DataSet.Post;

    IniciaTransCadastro;

    iErro := TClientDataSet(dspsiquiatria.DataSet).ApplyUpdates(0);

    if iErro = 0 then
      finalizaTransCadastro
    else
      CancelaTransCadastro;
    StatusBar1.Panels[1].Text := '...';
    dspsiquiatria.DataSet.Refresh;
    PanelCadastro.Enabled := False;
    ShowMessage('Registro Salvo com Sucesso!');
  except
    ShowMessage('Erro na transação');
  end;
  CorNosCampos;

  PageControlPrincipal.ActivePageIndex := 0;

  dspsiquiatria.DataSet.Close;
  dspsiquiatria.DataSet.OPEN;
end;

procedure TFrmCadastroPsiquiatria.FormShow(Sender: TObject);
begin
  inherited;
  dspsiquiatria.DataSet.Close;
  dspsiquiatria.DataSet.OPEN;

  DateTimePickerHistorico.Date := Date;
end;

procedure TFrmCadastroPsiquiatria.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_PSIQUIATRIA)
    and not ContemValor('E', PERMISSAO_PSIQUIATRIA)
    and not ContemValor('D', PERMISSAO_PSIQUIATRIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PSIQUIATRIA)
    and not ContemValor('E', PERMISSAO_PSIQUIATRIA)
    and not ContemValor('D', PERMISSAO_PSIQUIATRIA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PSIQUIATRIA)
    and ContemValor('E', PERMISSAO_PSIQUIATRIA)
    and not ContemValor('D', PERMISSAO_PSIQUIATRIA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PSIQUIATRIA)
    and ContemValor('E', PERMISSAO_PSIQUIATRIA)
    and ContemValor('D', PERMISSAO_PSIQUIATRIA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PSIQUIATRIA)
    and not ContemValor('E', PERMISSAO_PSIQUIATRIA)
    and ContemValor('D', PERMISSAO_PSIQUIATRIA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PSIQUIATRIA)
    and not ContemValor('E', PERMISSAO_PSIQUIATRIA)
    and ContemValor('D', PERMISSAO_PSIQUIATRIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PSIQUIATRIA)
    and ContemValor('E', PERMISSAO_PSIQUIATRIA)
    and not ContemValor('D', PERMISSAO_PSIQUIATRIA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroPsiquiatria.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_PSIQUIATRIA)
    and not ContemValor('E', PERMISSAO_PSIQUIATRIA)
    and not ContemValor('D', PERMISSAO_PSIQUIATRIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PSIQUIATRIA)
    and not ContemValor('E', PERMISSAO_PSIQUIATRIA)
    and not ContemValor('D', PERMISSAO_PSIQUIATRIA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PSIQUIATRIA)
    and ContemValor('E', PERMISSAO_PSIQUIATRIA)
    and not ContemValor('D', PERMISSAO_PSIQUIATRIA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PSIQUIATRIA)
    and ContemValor('E', PERMISSAO_PSIQUIATRIA)
    and ContemValor('D', PERMISSAO_PSIQUIATRIA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PSIQUIATRIA)
    and not ContemValor('E', PERMISSAO_PSIQUIATRIA)
    and ContemValor('D', PERMISSAO_PSIQUIATRIA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PSIQUIATRIA)
    and not ContemValor('E', PERMISSAO_PSIQUIATRIA)
    and ContemValor('D', PERMISSAO_PSIQUIATRIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PSIQUIATRIA)
    and ContemValor('E', PERMISSAO_PSIQUIATRIA)
    and not ContemValor('D', PERMISSAO_PSIQUIATRIA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroPsiquiatria.CancelarClick(Sender: TObject);
begin
  inherited;
  dspsiquiatria.DataSet.Close;
  dspsiquiatria.DataSet.OPEN;
end;

procedure TFrmCadastroPsiquiatria.PageControlModeloCadastroChange(
  Sender: TObject);
begin
  //inherited;
  if PageControlModeloCadastro.ActivePageIndex = 1 then
  begin
    CancelarClick(nil);
  end;
end;

end.
