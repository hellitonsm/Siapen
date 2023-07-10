unit CadastroOdontologia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloInterno, FMTBcd, DB, DBClient, Provider, SqlExpr, ImgList,
  ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Mask, Buttons,
  ToolWin, Menus, jpeg, dbcgrids;

type
  TFrmCadastroOdontologia = class(TFrmModeloInterno)
    TabSheet1: TTabSheet;
    Label53: TLabel;
    DateTimePickerHistorico: TDateTimePicker;
    MemoDescricao: TMemo;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    SQLodontologia: TSQLQuery;
    DSPodontologia: TDataSetProvider;
    CDSodontologia: TClientDataSet;
    DSodontologia: TDataSource;
    CDSodontologiaFuncionrioa: TStringField;
    CDSodontologiaID_HISTORICO_ODONTOLOGIA: TIntegerField;
    CDSodontologiaDESCRICAO: TStringField;
    CDSodontologiaDATA: TSQLTimeStampField;
    CDSodontologiaID_FUNCIONARIO: TIntegerField;
    CDSodontologiaID_INTERNO: TIntegerField;
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
  FrmCadastroOdontologia: TFrmCadastroOdontologia;

implementation

uses DmPrincipal, Lib;

{$R *.dfm}

procedure TFrmCadastroOdontologia.Button1Click(Sender: TObject);
begin
  inherited;
  dsodontologia.DataSet.Append;
  dsodontologia.DataSet.fieldbyname('id_historico_odontologia').AsInteger := 0;
  dsodontologia.DataSet.fieldbyname('id_interno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  dsodontologia.DataSet.fieldbyname('id_funcionario').AsInteger := GLOBAL_ID_FUNCIONARIO;
  dsodontologia.DataSet.fieldbyname('data').AsString :=
    FormatDateTime('dd/mm/yyyy', DateTimePickerHistorico.Date);
  dsodontologia.DataSet.fieldbyname('descricao').AsString := MemoDescricao.Lines.Text;
  dsodontologia.DataSet.Post;

  MemoDescricao.Lines.Clear;

end;

procedure TFrmCadastroOdontologia.SalvarClick(Sender: TObject);
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

    if dsodontologia.DataSet.State in [dsedit, dsinsert] then
      dsodontologia.DataSet.Post;

    IniciaTransCadastro;

    iErro := TClientDataSet(dsodontologia.DataSet).ApplyUpdates(0);

    if iErro = 0 then
      finalizaTransCadastro
    else
      CancelaTransCadastro;
    StatusBar1.Panels[1].Text := '...';
    dsodontologia.DataSet.Refresh;
    PanelCadastro.Enabled := False;
    ShowMessage('Registro Salvo com Sucesso!');
  except
    ShowMessage('Erro na transação');
  end;
  CorNosCampos;

  PageControlPrincipal.ActivePageIndex := 0;

  dsodontologia.DataSet.Close;
  dsodontologia.DataSet.OPEN;
end;
procedure TFrmCadastroOdontologia.FormShow(Sender: TObject);
begin
  inherited;
  dsodontologia.DataSet.Close;
  dsodontologia.DataSet.OPEN;

  DateTimePickerHistorico.Date := Date;
end;

procedure TFrmCadastroOdontologia.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_ODONTOLOGIA)
    and not ContemValor('E', PERMISSAO_ODONTOLOGIA)
    and not ContemValor('D', PERMISSAO_ODONTOLOGIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_ODONTOLOGIA)
    and not ContemValor('E', PERMISSAO_ODONTOLOGIA)
    and not ContemValor('D', PERMISSAO_ODONTOLOGIA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_ODONTOLOGIA)
    and ContemValor('E', PERMISSAO_ODONTOLOGIA)
    and not ContemValor('D', PERMISSAO_ODONTOLOGIA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_ODONTOLOGIA)
    and ContemValor('E', PERMISSAO_ODONTOLOGIA)
    and ContemValor('D', PERMISSAO_ODONTOLOGIA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_ODONTOLOGIA)
    and not ContemValor('E', PERMISSAO_ODONTOLOGIA)
    and ContemValor('D', PERMISSAO_ODONTOLOGIA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_ODONTOLOGIA)
    and not ContemValor('E', PERMISSAO_ODONTOLOGIA)
    and ContemValor('D', PERMISSAO_ODONTOLOGIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_ODONTOLOGIA)
    and ContemValor('E', PERMISSAO_ODONTOLOGIA)
    and not ContemValor('D', PERMISSAO_ODONTOLOGIA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroOdontologia.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_ODONTOLOGIA)
    and not ContemValor('E', PERMISSAO_ODONTOLOGIA)
    and not ContemValor('D', PERMISSAO_ODONTOLOGIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_ODONTOLOGIA)
    and not ContemValor('E', PERMISSAO_ODONTOLOGIA)
    and not ContemValor('D', PERMISSAO_ODONTOLOGIA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_ODONTOLOGIA)
    and ContemValor('E', PERMISSAO_ODONTOLOGIA)
    and not ContemValor('D', PERMISSAO_ODONTOLOGIA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_ODONTOLOGIA)
    and ContemValor('E', PERMISSAO_ODONTOLOGIA)
    and ContemValor('D', PERMISSAO_ODONTOLOGIA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_ODONTOLOGIA)
    and not ContemValor('E', PERMISSAO_ODONTOLOGIA)
    and ContemValor('D', PERMISSAO_ODONTOLOGIA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_ODONTOLOGIA)
    and not ContemValor('E', PERMISSAO_ODONTOLOGIA)
    and ContemValor('D', PERMISSAO_ODONTOLOGIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_ODONTOLOGIA)
    and ContemValor('E', PERMISSAO_ODONTOLOGIA)
    and not ContemValor('D', PERMISSAO_ODONTOLOGIA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;
  
end;

procedure TFrmCadastroOdontologia.CancelarClick(Sender: TObject);
begin
  inherited;
  dsodontologia.DataSet.Close;
  dsodontologia.DataSet.OPEN;
end;

procedure TFrmCadastroOdontologia.PageControlModeloCadastroChange(
  Sender: TObject);
begin
  //inherited;
  if PageControlModeloCadastro.ActivePageIndex = 1 then
  begin
    CancelarClick(nil);
  end;
end;

end.
