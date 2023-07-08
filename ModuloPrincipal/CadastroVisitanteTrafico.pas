unit CadastroVisitanteTrafico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls,
  ToolWin, adpDBDateTimePicker, Mask;

type
  TFrmVisitanteTrafico = class(TFrmModeloCadastro)
    Label2: TLabel;
    DBEditcodigo: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    adpDBDateTimePicker1: TadpDBDateTimePicker;
    CdsCadastroID_VISITANTE_TRAFICO: TIntegerField;
    CdsCadastroID_VISITANTE: TIntegerField;
    CdsCadastroID_INTERNO: TIntegerField;
    CdsCadastroID_OCORRENCIA_PLANTAO: TIntegerField;
    CdsCadastroDATA: TSQLTimeStampField;
    CdsCadastroID_FUNCIONARIO: TIntegerField;
    CdsCadastroID_UP: TIntegerField;
    Label7: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    SqlOcorrencia: TSQLQuery;
    DspOcorrencia: TDataSetProvider;
    CdsOcorrencia: TClientDataSet;
    DsOcorrencia: TDataSource;
    CdsCadastroOBS: TStringField;
    Label9: TLabel;
    DBMemo1: TDBMemo;
    dblookupcomboboxvisitante: TDBLookupComboBox;
    Button7: TButton;
    DBLookupComboBoxInterno: TDBLookupComboBox;
    Button1: TButton;
    SqlInterno: TSQLQuery;
    DspInterno: TDataSetProvider;
    CdsInterno: TClientDataSet;
    DsInterno: TDataSource;
    SqlVisitanteInterno: TSQLQuery;
    DspVisitanteInterno: TDataSetProvider;
    CdsVisitanteInterno: TClientDataSet;
    CdsVisitanteInternoID_VISITANTE_INTERNO: TIntegerField;
    CdsVisitanteInternoID_VISITANTE: TIntegerField;
    CdsVisitanteInternoID_INTERNO: TIntegerField;
    CdsVisitanteInternoID_GRAU_PARENTESCO: TIntegerField;
    DsVisitanteInterno: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    Label4: TLabel;
    SqlVisitante: TSQLQuery;
    DspVisitante: TDataSetProvider;
    CdsVisitante: TClientDataSet;
    DsVisitante: TDataSource;
    procedure NovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVisitanteTrafico: TFrmVisitanteTrafico;

implementation

uses Lib, DmPrincipal, MenuRelatorio;

{$R *.dfm}

procedure TFrmVisitanteTrafico.NovoClick(Sender: TObject);
begin
  inherited;
  DSCadastro.DataSet.FieldByName('ID_FUNCIONARIO').AsInteger := GLOBAL_ID_FUNCIONARIO;
  DSCadastro.DataSet.FieldByName('ID_UP').AsInteger := GLOBAL_ID_UP;
  DSCadastro.DataSet.FieldByName('id_visitante_trafico').AsInteger := DBGenerator('idvisitante_trafico');
  adpDBDateTimePicker1.Date := date;
  DSCadastro.DataSet.FieldByName('DATA').AsDateTime := adpDBDateTimePicker1.Date;
end;

procedure TFrmVisitanteTrafico.FormCreate(Sender: TObject);
begin
  inherited;
 // Abre a lista de funcionarios para o DBLookupComboBox2
  DM.DsFuncionarioLista.DataSet.Close;
  DM.DsFuncionarioLista.DataSet.Open;

  // Abre a lista de internos
  SqlInterno.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;
  DsInterno.DataSet.Close;
  DsInterno.DataSet.Open;


  // Abre a lista das Ocorrências Prisionais no DBLookupComboBox1
  SqlOcorrencia.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;
  DsOcorrencia.DataSet.Close;
  DsOcorrencia.DataSet.Open;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_VISITANTETRAFICO)
    and not ContemValor('E', PERMISSAO_VISITANTETRAFICO)
    and not ContemValor('D', PERMISSAO_VISITANTETRAFICO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_VISITANTETRAFICO)
    and not ContemValor('E', PERMISSAO_VISITANTETRAFICO)
    and not ContemValor('D', PERMISSAO_VISITANTETRAFICO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_VISITANTETRAFICO)
    and ContemValor('E', PERMISSAO_VISITANTETRAFICO)
    and not ContemValor('D', PERMISSAO_VISITANTETRAFICO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_VISITANTETRAFICO)
    and ContemValor('E', PERMISSAO_VISITANTETRAFICO)
    and ContemValor('D', PERMISSAO_VISITANTETRAFICO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_VISITANTETRAFICO)
    and not ContemValor('E', PERMISSAO_VISITANTETRAFICO)
    and ContemValor('D', PERMISSAO_VISITANTETRAFICO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_VISITANTETRAFICO)
    and not ContemValor('E', PERMISSAO_VISITANTETRAFICO)
    and ContemValor('D', PERMISSAO_VISITANTETRAFICO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_VISITANTETRAFICO)
    and ContemValor('E', PERMISSAO_VISITANTETRAFICO)
    and not ContemValor('D', PERMISSAO_VISITANTETRAFICO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmVisitanteTrafico.Button1Click(Sender: TObject);
var
  interno: variant;
begin
  inherited;
  interno := BuscaGeral(nil, 'INTERNO', '', 100, 100, 1100, 400);
  if VarToStrDef(interno, '') <> '' then
  begin
    DBLookupComboBoxInterno.KeyValue := interno;
    DsCadastro.DataSet.FieldByName('ID_INTERNO').AsInteger := DBLookupComboBoxInterno.KeyValue;
  end;

end;

procedure TFrmVisitanteTrafico.SalvarClick(Sender: TObject);
var
  iErro, ierro1: integer;
begin
  DM.SqlExecute.SQL.Text := 'select v.id_visitante, v.visitante, v.status, v.motivo_inativo from visitante v where id_visitante= '
  + qs(dblookupcomboboxvisitante.KeyValue);

  DM.DsExecute.DataSet.Close;
  DM.DsExecute.DataSet.Open;

  DM.DsExecute.DataSet.Edit;
  DM.DsExecute.DataSet.FieldByName('status').AsString := 'I';
  DM.DsExecute.DataSet.FieldByName('motivo_inativo').AsString := 'PRÁTICA DE TRÁFICO NO SISTEMA';
  DM.DsExecute.DataSet.Post;

  try
    StatusBar1.Panels[1].Text := 'SALVANDO';
    Novo.Enabled := True;
    Editar.Enabled := True;
    Excluir.Enabled := True;
    Salvar.Enabled := False;
    Cancelar.Enabled := False;

    if DsCadastro.DataSet.State in [dsedit, dsinsert] then
      DsCadastro.DataSet.Post;

    if DM.DsExecute.DataSet.State in [dsedit, dsinsert] then
      DM.DsExecute.DataSet.Post;

    IniciaTransCadastro;

    iErro := TClientDataSet(DsCadastro.DataSet).ApplyUpdates(0)
      + TClientDataSet(DM.DsExecute.DataSet).ApplyUpdates(0);

    if iErro = 0 then
      finalizaTransCadastro
    else
      CancelaTransCadastro;
    StatusBar1.Panels[1].Text := '...';
    DsCadastro.DataSet.Refresh;
    PanelCadastro.Enabled := False;
  except
    ShowMessage('Erro na transação');
  end;
  CorNosCampos;
  PageControlModeloCadastro.ActivePageIndex := 0;
  ShowMessage('Registro Salvo com Sucesso!');
end;





procedure TFrmVisitanteTrafico.Button7Click(Sender: TObject);
var
  visita: variant;
  sSql: string;
begin
  inherited;

  sSql := 'SELECT ID_VISITANTE AS CODIGO, VISITANTE FROM VISITANTE '
    + ' WHERE VISITANTE LIKE ' + qs( UpperCase(InputBox('Informe o nome a procurar.', 'Digite algumas letras.', '(NOME VISITANTE)')) + '%')
    + ' ORDER BY VISITANTE ';

  GLOBAL_INDEX_DO_GRID := 1;
  visita := BuscaGeral(nil, '', sSql, 100, 100, 600, 400);

  if VarToStrDef(visita, '') <> '' then
  begin

    SqlVisitante.ParamByName('id_visitante').AsString := VarToStrDef(visita, '');
    DsVisitante.DataSet.Close;
    DsVisitante.DataSet.Open;
    dblookupcomboboxvisitante.KeyValue := strtoint(VarToStrDef(visita, '-1'));
    dscadastro.DataSet.fieldbyname('ID_VISITANTE').AsString := VarToStrDef(visita, '0');

  end;

end;

procedure TFrmVisitanteTrafico.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
// Faz com que a tela seja mostrada o dblookupcomboboxvisitante seja populado com o registro corrente
  if dblookupcomboboxvisitante.KeyValue <> null then
  begin
   SqlVisitante.ParamByName('id_visitante').AsInteger := dblookupcomboboxvisitante.KeyValue;
   DsVisitante.DataSet.Close;
   DsVisitante.DataSet.Open;
  end;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_VISITANTETRAFICO)
    and not ContemValor('E', PERMISSAO_VISITANTETRAFICO)
    and not ContemValor('D', PERMISSAO_VISITANTETRAFICO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_VISITANTETRAFICO)
    and not ContemValor('E', PERMISSAO_VISITANTETRAFICO)
    and not ContemValor('D', PERMISSAO_VISITANTETRAFICO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_VISITANTETRAFICO)
    and ContemValor('E', PERMISSAO_VISITANTETRAFICO)
    and not ContemValor('D', PERMISSAO_VISITANTETRAFICO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_VISITANTETRAFICO)
    and ContemValor('E', PERMISSAO_VISITANTETRAFICO)
    and ContemValor('D', PERMISSAO_VISITANTETRAFICO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_VISITANTETRAFICO)
    and not ContemValor('E', PERMISSAO_VISITANTETRAFICO)
    and ContemValor('D', PERMISSAO_VISITANTETRAFICO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_VISITANTETRAFICO)
    and not ContemValor('E', PERMISSAO_VISITANTETRAFICO)
    and ContemValor('D', PERMISSAO_VISITANTETRAFICO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_VISITANTETRAFICO)
    and ContemValor('E', PERMISSAO_VISITANTETRAFICO)
    and not ContemValor('D', PERMISSAO_VISITANTETRAFICO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;
  
end;

end.
