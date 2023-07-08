unit Cadastropsicologia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloInterno, FMTBcd, DB, DBClient, Provider, SqlExpr, ImgList,
  ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Mask, Buttons,
  ToolWin, Menus, jpeg, dbcgrids;

type
  TFrmCadastropsicologia = class(TFrmModeloInterno)
    SQLPsicologia: TSQLQuery;
    DSPPsicologia: TDataSetProvider;
    CDSPsicologia: TClientDataSet;
    DSPsicologia: TDataSource;
    TabSheet1: TTabSheet;
    Label53: TLabel;
    DateTimePickerHistorico: TDateTimePicker;
    MemoDescricao: TMemo;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    CDSPsicologiaID_HISTORICO_PSICOLOGIA: TIntegerField;
    CDSPsicologiaDESCRICAO: TStringField;
    CDSPsicologiaDATA: TSQLTimeStampField;
    CDSPsicologiaID_FUNCIONARIO: TIntegerField;
    CDSPsicologiaID_INTERNO: TIntegerField;
    CDSPsicologiaFuncionrioa: TStringField;
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
  FrmCadastropsicologia: TFrmCadastropsicologia;

implementation

uses DmPrincipal, Lib;

{$R *.dfm}

procedure TFrmCadastropsicologia.Button1Click(Sender: TObject);
begin
  inherited;
  dspsicologia.DataSet.Append;
  dspsicologia.DataSet.fieldbyname('id_historico_psicologia').AsInteger := 0;
  dspsicologia.DataSet.fieldbyname('id_interno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  dspsicologia.DataSet.fieldbyname('id_funcionario').AsInteger := GLOBAL_ID_FUNCIONARIO;
  dspsicologia.DataSet.fieldbyname('data').AsString :=
    FormatDateTime('dd/mm/yyyy', DateTimePickerHistorico.Date);
  dspsicologia.DataSet.fieldbyname('descricao').AsString := MemoDescricao.Lines.Text;
  dspsicologia.DataSet.Post;

  MemoDescricao.Lines.Clear;
end;

procedure TFrmCadastropsicologia.SalvarClick(Sender: TObject);
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

    if dspsicologia.DataSet.State in [dsedit, dsinsert] then
      dspsicologia.DataSet.Post;

    IniciaTransCadastro;

    iErro := TClientDataSet(dspsicologia.DataSet).ApplyUpdates(0);

    if iErro = 0 then
      finalizaTransCadastro
    else
      CancelaTransCadastro;
    StatusBar1.Panels[1].Text := '...';
    dspsicologia.DataSet.Refresh;
    PanelCadastro.Enabled := False;
    ShowMessage('Registro Salvo com Sucesso!');
  except
    ShowMessage('Erro na transação');
  end;
  CorNosCampos;

  PageControlPrincipal.ActivePageIndex := 0;

  dspsicologia.DataSet.Close;
  dspsicologia.DataSet.OPEN;
end;


procedure TFrmCadastropsicologia.FormShow(Sender: TObject);
begin
  inherited;
  dspsicologia.DataSet.Close;
  dspsicologia.DataSet.OPEN;

  DateTimePickerHistorico.Date := Date;
end;

procedure TFrmCadastropsicologia.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_PSICOLOGIA)
    and not ContemValor('E', PERMISSAO_PSICOLOGIA)
    and not ContemValor('D', PERMISSAO_PSICOLOGIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PSICOLOGIA)
    and not ContemValor('E', PERMISSAO_PSICOLOGIA)
    and not ContemValor('D', PERMISSAO_PSICOLOGIA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PSICOLOGIA)
    and ContemValor('E', PERMISSAO_PSICOLOGIA)
    and not ContemValor('D', PERMISSAO_PSICOLOGIA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PSICOLOGIA)
    and ContemValor('E', PERMISSAO_PSICOLOGIA)
    and ContemValor('D', PERMISSAO_PSICOLOGIA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PSICOLOGIA)
    and not ContemValor('E', PERMISSAO_PSICOLOGIA)
    and ContemValor('D', PERMISSAO_PSICOLOGIA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PSICOLOGIA)
    and not ContemValor('E', PERMISSAO_PSICOLOGIA)
    and ContemValor('D', PERMISSAO_PSICOLOGIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PSICOLOGIA)
    and ContemValor('E', PERMISSAO_PSICOLOGIA)
    and not ContemValor('D', PERMISSAO_PSICOLOGIA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastropsicologia.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_PSICOLOGIA)
    and not ContemValor('E', PERMISSAO_PSICOLOGIA)
    and not ContemValor('D', PERMISSAO_PSICOLOGIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PSICOLOGIA)
    and not ContemValor('E', PERMISSAO_PSICOLOGIA)
    and not ContemValor('D', PERMISSAO_PSICOLOGIA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PSICOLOGIA)
    and ContemValor('E', PERMISSAO_PSICOLOGIA)
    and not ContemValor('D', PERMISSAO_PSICOLOGIA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PSICOLOGIA)
    and ContemValor('E', PERMISSAO_PSICOLOGIA)
    and ContemValor('D', PERMISSAO_PSICOLOGIA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PSICOLOGIA)
    and not ContemValor('E', PERMISSAO_PSICOLOGIA)
    and ContemValor('D', PERMISSAO_PSICOLOGIA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PSICOLOGIA)
    and not ContemValor('E', PERMISSAO_PSICOLOGIA)
    and ContemValor('D', PERMISSAO_PSICOLOGIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PSICOLOGIA)
    and ContemValor('E', PERMISSAO_PSICOLOGIA)
    and not ContemValor('D', PERMISSAO_PSICOLOGIA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastropsicologia.CancelarClick(Sender: TObject);
begin
  inherited;
  dspsicologia.DataSet.Close;
  dspsicologia.DataSet.OPEN;
end;

procedure TFrmCadastropsicologia.PageControlModeloCadastroChange(
  Sender: TObject);
begin
  //inherited;
  if PageControlModeloCadastro.ActivePageIndex = 1 then
  begin
    CancelarClick(nil);
  end;
end;

end.
