unit CadastroTerapiaOcup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloInterno, FMTBcd, DB, DBClient, Provider, SqlExpr, ImgList,
  ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Mask, Buttons,
  ToolWin, Menus, jpeg, dbcgrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFrmCadastroTerapiaOcup = class(TFrmModeloInterno)
    TabSheet1: TTabSheet;
    SQLterapiaocupold: TSQLQuery;
    DSPterapiaocup: TDataSetProvider;
    CDSterapiaocup: TClientDataSet;
    DSterapiaocup: TDataSource;
    Label53: TLabel;
    DateTimePickerHistorico: TDateTimePicker;
    MemoDescricao: TMemo;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    CDSterapiaocupID_HISTORICO_TERAPIA_OCUP: TIntegerField;
    CDSterapiaocupDESCRICAO: TStringField;
    CDSterapiaocupDATA: TSQLTimeStampField;
    CDSterapiaocupID_FUNCIONARIO: TIntegerField;
    CDSterapiaocupID_INTERNO: TIntegerField;
    CDSterapiaocupFuncionario: TStringField;
    SQLterapiaocup: TFDQuery;
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
  FrmCadastroTerapiaOcup: TFrmCadastroTerapiaOcup;

implementation

uses DmPrincipal, Lib;

{$R *.dfm}

procedure TFrmCadastroTerapiaOcup.Button1Click(Sender: TObject);
begin
  inherited;
  DSterapiaocup.DataSet.Append;
  dsterapiaocup.DataSet.fieldbyname('id_historico_terapia_ocup').AsInteger := DM.SQLConnect.ExecSQLScalar('SELECT GEN_ID(COD_UP,0)||GEN_ID(idterapiaocupacional,1) FROM RDB$DATABASE');;
  dsterapiaocup.DataSet.fieldbyname('id_interno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  dsterapiaocup.DataSet.fieldbyname('id_funcionario').AsInteger := GLOBAL_ID_FUNCIONARIO;
  dsterapiaocup.DataSet.fieldbyname('data').AsString :=
    FormatDateTime('dd/mm/yyyy', DateTimePickerHistorico.Date);
  dsterapiaocup.DataSet.fieldbyname('descricao').AsString := MemoDescricao.Lines.Text;
  dsterapiaocup.DataSet.Post;

  MemoDescricao.Lines.Clear;
end;

procedure TFrmCadastroTerapiaOcup.SalvarClick(Sender: TObject);
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

    if dsterapiaocup.DataSet.State in [dsedit, dsinsert] then
      dsterapiaocup.DataSet.Post;

    IniciaTransCadastro;

    iErro := TClientDataSet(dsterapiaocup.DataSet).ApplyUpdates(0);

    if iErro = 0 then
      finalizaTransCadastro
    else
      CancelaTransCadastro;
    StatusBar1.Panels[1].Text := '...';
    dsterapiaocup.DataSet.Refresh;
    PanelCadastro.Enabled := False;
    ShowMessage('Registro Salvo com Sucesso!');
  except
    ShowMessage('Erro na transação');
  end;
  CorNosCampos;

  PageControlPrincipal.ActivePageIndex := 0;

  dsterapiaocup.DataSet.Close;
  dsterapiaocup.DataSet.OPEN;
end;


procedure TFrmCadastroTerapiaOcup.FormShow(Sender: TObject);
begin
  inherited;
  dsterapiaocup.DataSet.Close;
  dsterapiaocup.DataSet.OPEN;

  DateTimePickerHistorico.Date := Date;
end;

procedure TFrmCadastroTerapiaOcup.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_TERAPIAOCUPACIONAL)
    and not ContemValor('E', PERMISSAO_TERAPIAOCUPACIONAL)
    and not ContemValor('D', PERMISSAO_TERAPIAOCUPACIONAL) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_TERAPIAOCUPACIONAL)
    and not ContemValor('E', PERMISSAO_TERAPIAOCUPACIONAL)
    and not ContemValor('D', PERMISSAO_TERAPIAOCUPACIONAL) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_TERAPIAOCUPACIONAL)
    and ContemValor('E', PERMISSAO_TERAPIAOCUPACIONAL)
    and not ContemValor('D', PERMISSAO_TERAPIAOCUPACIONAL) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_TERAPIAOCUPACIONAL)
    and ContemValor('E', PERMISSAO_TERAPIAOCUPACIONAL)
    and ContemValor('D', PERMISSAO_TERAPIAOCUPACIONAL) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_TERAPIAOCUPACIONAL)
    and not ContemValor('E', PERMISSAO_TERAPIAOCUPACIONAL)
    and ContemValor('D', PERMISSAO_TERAPIAOCUPACIONAL) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_TERAPIAOCUPACIONAL)
    and not ContemValor('E', PERMISSAO_TERAPIAOCUPACIONAL)
    and ContemValor('D', PERMISSAO_TERAPIAOCUPACIONAL) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_TERAPIAOCUPACIONAL)
    and ContemValor('E', PERMISSAO_TERAPIAOCUPACIONAL)
    and not ContemValor('D', PERMISSAO_TERAPIAOCUPACIONAL) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroTerapiaOcup.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_TERAPIAOCUPACIONAL)
    and not ContemValor('E', PERMISSAO_TERAPIAOCUPACIONAL)
    and not ContemValor('D', PERMISSAO_TERAPIAOCUPACIONAL) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_TERAPIAOCUPACIONAL)
    and not ContemValor('E', PERMISSAO_TERAPIAOCUPACIONAL)
    and not ContemValor('D', PERMISSAO_TERAPIAOCUPACIONAL) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_TERAPIAOCUPACIONAL)
    and ContemValor('E', PERMISSAO_TERAPIAOCUPACIONAL)
    and not ContemValor('D', PERMISSAO_TERAPIAOCUPACIONAL) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_TERAPIAOCUPACIONAL)
    and ContemValor('E', PERMISSAO_TERAPIAOCUPACIONAL)
    and ContemValor('D', PERMISSAO_TERAPIAOCUPACIONAL) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_TERAPIAOCUPACIONAL)
    and not ContemValor('E', PERMISSAO_TERAPIAOCUPACIONAL)
    and ContemValor('D', PERMISSAO_TERAPIAOCUPACIONAL) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_TERAPIAOCUPACIONAL)
    and not ContemValor('E', PERMISSAO_TERAPIAOCUPACIONAL)
    and ContemValor('D', PERMISSAO_TERAPIAOCUPACIONAL) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_TERAPIAOCUPACIONAL)
    and ContemValor('E', PERMISSAO_TERAPIAOCUPACIONAL)
    and not ContemValor('D', PERMISSAO_TERAPIAOCUPACIONAL) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroTerapiaOcup.CancelarClick(Sender: TObject);
begin
  inherited;
  dsterapiaocup.DataSet.Close;
  dsterapiaocup.DataSet.OPEN;
end;

procedure TFrmCadastroTerapiaOcup.PageControlModeloCadastroChange(
  Sender: TObject);
begin
  //inherited;
  if PageControlModeloCadastro.ActivePageIndex = 1 then
  begin
    CancelarClick(nil);
  end;
end;

end.
