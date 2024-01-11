unit CadastroConselhoDisciplinar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloInterno, FMTBcd, Menus, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, DBCtrls, dbcgrids, Grids, DBGrids,
  StdCtrls, Mask, Buttons, DateUtils, ToolWin, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TfrmConselhoDisciplinar = class(TFrmModeloInterno)
    TabSheet1: TTabSheet;
    Label120: TLabel;
    DBLookupComboBoxfaltadisciplinar: TDBLookupComboBox;
    btnBuscar: TButton;
    SpeedButton12: TSpeedButton;
    Label16: TLabel;
    Editpdi: TEdit;
    Label121: TLabel;
    Label61: TLabel;
    EditDataInstPortaria: TEdit;
    Label62: TLabel;
    Label26: TLabel;
    Editreabilitacao: TEdit;
    Label15: TLabel;
    Editcondenacao: TEdit;
    Label17: TLabel;
    ComboBoxconclusao: TComboBox;
    Label29: TLabel;
    Editresultado: TEdit;
    Label41: TLabel;
    ComboBoxresultado: TComboBox;
    Label14: TLabel;
    ComboBoxtipoprocedimento: TComboBox;
    Label58: TLabel;
    Editnprocedimento: TEdit;
    Label57: TLabel;
    Editprocedimento: TEdit;
    Label122: TLabel;
    Memoobs: TMemo;
    BitBtnIncluir: TBitBtn;
    DBGrid6: TDBGrid;
    PopupMenuIsolamento: TPopupMenu;
    Liberar1: TMenuItem;
    N1: TMenuItem;
    EditarFalta1: TMenuItem;
    N2: TMenuItem;
    Excluir1: TMenuItem;
    Dsvincfaltadisciplinar: TDataSource;
    Cdsvincfaltadisciplinar: TClientDataSet;
    Dspvincfaltadisciplinar: TDataSetProvider;
    Dspfaltadisciplinar: TDataSetProvider;
    Cdsfaltadisciplinar: TClientDataSet;
    Dsfaltadisciplinar: TDataSource;
    GroupBox1: TGroupBox;
    Label42: TLabel;
    EditinicioisolamentoPrev: TEdit;
    Label50: TLabel;
    EditqtdediasPrev: TEdit;
    Label48: TLabel;
    EditfimisolamentoPrev: TEdit;
    RadioGroupPreventivo: TRadioGroup;
    ComboBoxTipoSancao: TComboBox;
    Label8: TLabel;
    EditInicioIsolamento: TEdit;
    EditFimIsolamento: TEdit;
    EditQtdeDiasIsolamento: TEdit;
    Label51: TLabel;
    Label53: TLabel;
    Label56: TLabel;
    GroupBox2: TGroupBox;
    Label59: TLabel;
    RadioGroupRecurso: TRadioGroup;
    ComboBoxDecisaoRecurso: TComboBox;
    ComboBoxClasConduta: TComboBox;
    Label60: TLabel;
    RadioGroupHomologado: TRadioGroup;
    EditNatureza: TEdit;
    TabSheet2: TTabSheet;
    Label67: TLabel;
    DateTimePickerHistorico: TDateTimePicker;
    MemoDescricao: TMemo;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    Editdtincidencia: TEdit;
    dsphistorico_interno: TDataSetProvider;
    cdshistorico_interno: TClientDataSet;
    dshistorico_interno: TDataSource;
    cdshistorico_internoIDHISTORICO_INTERNO: TIntegerField;
    cdshistorico_internoDESCRICAO: TStringField;
    cdshistorico_internoDATA_HORA: TSQLTimeStampField;
    cdshistorico_internoIDINTERNO: TIntegerField;
    cdshistorico_internoSTATUS: TStringField;
    cdshistorico_internoMOTIVO_SAIDA: TStringField;
    cdshistorico_internoIDPROCEDENCIA: TIntegerField;
    cdshistorico_internoIDUP: TIntegerField;
    cdshistorico_internoSETOR: TStringField;
    cdshistorico_internoID_FUNCIONARIO: TIntegerField;
    cdshistorico_internoTIPO_HISTORICO: TStringField;
    Memo1: TMemo;
    DspFaltaDelete: TDataSetProvider;
    CdsFaltaDelete: TClientDataSet;
    DsFaltaDelete: TDataSource;
    Sqlfaltadisciplinar: TFDQuery;
    SQLhistorico_interno: TFDQuery;
    SqlFaltaDelete: TFDQuery;
    Sqlvincfaltadisciplinar: TFDQuery;
    procedure BitBtnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure EditDataInstPortariaKeyPress(Sender: TObject; var Key: Char);
    procedure EditDataInstPortariaExit(Sender: TObject);
    procedure EditarFalta1Click(Sender: TObject);
    procedure Liberar1Click(Sender: TObject);
    procedure RadioGroupPreventivoClick(Sender: TObject);
    procedure RadioGroupRecursoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure CancelarClick(Sender: TObject);
    procedure PageControlModeloCadastroChange(Sender: TObject);
    procedure EditqtdediasPrevKeyPress(Sender: TObject; var Key: Char);
    procedure EditQtdeDiasIsolamentoKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditqtdediasPrevClick(Sender: TObject);
    procedure EditQtdeDiasIsolamentoClick(Sender: TObject);
    procedure DBLookupComboBoxfaltadisciplinarExit(Sender: TObject);
    procedure DBLookupComboBoxfaltadisciplinarEnter(Sender: TObject);
    procedure DBLookupComboBoxfaltadisciplinarClick(Sender: TObject);
    procedure EditQtdeDiasIsolamentoExit(Sender: TObject);
    procedure EditqtdediasPrevExit(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConselhoDisciplinar: TfrmConselhoDisciplinar;

implementation

uses DmPrincipal, lib, VincFaltaDisiciplinar;

{$R *.dfm}

procedure TfrmConselhoDisciplinar.BitBtnIncluirClick(Sender: TObject);
var
  temporeabilitacao: Integer;
  preventivo, recurso, homologado: string;
begin

  inherited;
  if DBLookupComboBoxfaltadisciplinar.Text = '' then
  begin
    showmessage('Digite a Falta Disciplinar!');
    exit;
  end;

  if Editpdi.Text = '' then
  begin
    showmessage('Digite o Número do Documento!');
    exit;
  end;

  if not Dsvincfaltadisciplinar.DataSet.Active then
    Dsvincfaltadisciplinar.DataSet.Open;

  //verifica qual radio está selecionado para que posteriormente seja gravado no banco de dados pela variavel preventivo
  if RadioGroupPreventivo.ItemIndex = 0 then
    preventivo := 'S'
  else
    preventivo := 'N';
  if RadioGroupRecurso.ItemIndex = 0 then
    recurso := 'S'
  else
    recurso := 'N';
  if RadioGroupHomologado.ItemIndex = 0 then
    homologado := 'S'
  else
    homologado := 'N';

  {Lancando na tabela de vinculo interno/faltadisciplinar}
  Dsvincfaltadisciplinar.DataSet.Append;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('ID_vinc_falta_disciplinar').AsInteger := DM.SQLConnect.ExecSQLScalar('SELECT GEN_ID(COD_UP,0)||GEN_ID(idvincfalta_disciplinar,1) FROM RDB$DATABASE');
  Dsvincfaltadisciplinar.DataSet.fieldbyname('id_interno').AsInteger :=
  DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('id_falta_disciplinar').AsInteger := DBLookupComboBoxfaltadisciplinar.KeyValue;
//  Dsvincfaltadisciplinar.DataSet.fieldbyname('tipofalta').AsString := EditNatureza.Text;  // André Almeida
  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_incidencia').AsString := Editdtincidencia.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_reabilitacao').AsString := Editreabilitacao.TEXT;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_condenacao').AsString := Editcondenacao.TEXT;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('obs').AsString := memoobs.text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('conclusaocd').AsString := ComboBoxconclusao.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('numero_pdi').AsString := Editpdi.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('resultado').AsString := ComboBoxresultado.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_resultado').AsString := Editresultado.Text;
  //data inicio, fim e quantidade do preventivo
  Dsvincfaltadisciplinar.DataSet.fieldbyname('dt_inicio_isolamento').AsString := EditinicioisolamentoPrev.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('dt_fim_isolamento').AsString := EditfimisolamentoPrev.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('qtde_dias_isolamento').AsString := EditqtdediasPrev.Text;

  Dsvincfaltadisciplinar.DataSet.fieldbyname('id_up').AsInteger := GLOBAL_ID_UP;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('tipo').AsString := ComboBoxtipoprocedimento.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('data_instauracao').AsString := Editprocedimento.Text;
  Dsvincfaltadisciplinar.DataSet.fieldbyname('numero').AsString := Editnprocedimento.Text;

  dsvincfaltadisciplinar.DataSet.fieldbyname('data_inst_portaria').AsString := EditDataInstPortaria.Text;
  dsvincfaltadisciplinar.DataSet.fieldbyname('TIPO_SANCAO').AsString := ComboBoxTipoSancao.Text;
  dsvincfaltadisciplinar.DataSet.fieldbyname('data_inicio_isolamento').AsString := EditInicioIsolamento.Text;
  dsvincfaltadisciplinar.DataSet.fieldbyname('data_fim_isolamento').AsString := EditFimIsolamento.Text;
  dsvincfaltadisciplinar.DataSet.fieldbyname('quantidade_dias_isolamento').AsString := EditQtdeDiasIsolamento.Text;
  dsvincfaltadisciplinar.DataSet.fieldbyname('recurso').AsString := recurso;
  dsvincfaltadisciplinar.DataSet.fieldbyname('preventivo').AsString := preventivo;
  dsvincfaltadisciplinar.DataSet.fieldbyname('decisao_recurso').AsString := ComboBoxDecisaoRecurso.Text;
  dsvincfaltadisciplinar.DataSet.fieldbyname('classificacao_conduta').AsString := ComboBoxClasConduta.Text;
  dsvincfaltadisciplinar.DataSet.fieldbyname('homologacao').AsString := homologado;

  Dsvincfaltadisciplinar.DataSet.Post;
  DBGrid6.Refresh;

  {Limpar falta disciplinar e natureza da falta}
  DBLookupComboBoxfaltadisciplinar.KeyValue := null;
  EditNatureza.Text;

end;

procedure TfrmConselhoDisciplinar.FormShow(Sender: TObject);
begin
  inherited;
  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

  DsFaccao.DataSet.Close;
  DsFaccao.DataSet.Open;

  Dsvincfaltadisciplinar.DataSet.Close;
  Dsvincfaltadisciplinar.DataSet.Open;

  Dsfaltadisciplinar.DataSet.Close;
  Dsfaltadisciplinar.DataSet.Open;

  DSHISTORICO_interno.DataSet.Close;
  DSHISTORICO_interno.DataSet.Open;

  //seta as caixas do radio para não e desabilita os edits preventivo para false;
  RadioGroupPreventivo.ItemIndex := 1;
  EditinicioisolamentoPrev.Enabled := false;
  EditfimisolamentoPrev.Enabled := false;
  EditqtdediasPrev.Enabled := false;

  RadioGroupRecurso.ItemIndex := 1;
  ComboBoxDecisaoRecurso.Enabled := false;

  RadioGroupHomologado.ItemIndex := 1;

  Editdtincidencia.Text := datetostr(Date);
  DateTimePickerHistorico.Date := Date;

end;

procedure TfrmConselhoDisciplinar.EditarClick(Sender: TObject);
begin
  inherited;
  PageControlPrincipal.ActivePageIndex := 0;
end;

procedure TfrmConselhoDisciplinar.btnBuscarClick(Sender: TObject);
var
  ID: variant;
  sSql: string;
begin
  inherited;

  Dsfaltadisciplinar.DataSet.Close;
  Dsfaltadisciplinar.DataSet.Open;

  sSql := 'SELECT ID_FALTA_DISCIPLINAR CODIGO, FALTA_DISCIPLINAR, TEMPOREABILITACAO, TIPOFALTA FROM FALTA_DISCIPLINAR ORDER BY FALTA_DISCIPLINAR ';

  GLOBAL_INDEX_DO_GRID := 1;
  MostrarBotaoIncluir := True;
  ID := BuscaGeral(nil, '', sSql, 100, 100, 1000, 400);

  if VarToStrDef(ID, '') <> '' then
  begin

    Sqlfaltadisciplinar.sql.Text :=
      'SELECT f.falta_disciplinar||'' - Gravidade:''||f.tipofalta||'' - ''|| f.temporeabilitacao||'' Dias.'' as falta_disciplinar, ' +
      'f.id_falta_disciplinar, f.tipoFalta ' +
      'FROM falta_disciplinar f ' +
      'where  id_falta_disciplinar = ' + VarToStrDef(ID, '-1') + ' ' +
      'order by f.falta_disciplinar ';

    Dsfaltadisciplinar.DataSet.Close;
    Dsfaltadisciplinar.DataSet.OPEN;

    DBLookupComboBoxfaltadisciplinar.KeyValue := ID;
  end;

  Memo1.Text := DBLookupComboBoxfaltadisciplinar.Text;
  EditNatureza.Text := Dsfaltadisciplinar.DataSet.FieldByName('tipoFalta').AsString;

end;

procedure TfrmConselhoDisciplinar.EditDataInstPortariaKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  //cria a mascara em tempo de execução está na lib
  ValidaDataKeyPress(Sender, Key);
end;

procedure TfrmConselhoDisciplinar.EditDataInstPortariaExit(
  Sender: TObject);
begin
  inherited;
  ValidaDataExit(Sender);
end;

procedure TfrmConselhoDisciplinar.EditarFalta1Click(Sender: TObject);
begin
  //inherited;
  Frmvincfaltadisiciplinar := TFrmvincfaltadisiciplinar.Create(self);
  FrmVincFaltaDisiciplinar.DsCadastro.DataSet.Close;
  FrmVincFaltaDisiciplinar.sqlCadastro.Params[0].value :=
  DSvincfaltadisciplinar.DataSet.fieldbyname('ID_vinc_falta_disciplinar').AsInteger;
  FrmVincFaltaDisiciplinar.DsCadastro.DataSet.open;
  Frmvincfaltadisiciplinar.ShowModal;
  FreeAndNil(Frmvincfaltadisiciplinar);

end;

procedure TfrmConselhoDisciplinar.Liberar1Click(Sender: TObject);
begin
  inherited;
  if Dsvincfaltadisciplinar.DataSet.FieldByName('status').asstring = '' then
  begin
    if MessageDlg('Confirma que o Isolamento Foi Cumprido?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin

      Dsvincfaltadisciplinar.DataSet.Edit;
      Dsvincfaltadisciplinar.DataSet.fieldbyname('status').AsString := 'CUMPRIDO';
      Dsvincfaltadisciplinar.DataSet.Post;
    end;
  end
  else
  begin
    if MessageDlg('Confirma Liberação da Pena?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin

      Dsvincfaltadisciplinar.DataSet.edit;
      Dsvincfaltadisciplinar.DataSet.fieldbyname('status').AsString := '';
      Dsvincfaltadisciplinar.DataSet.Post;
    end;
  end;

end;

procedure TfrmConselhoDisciplinar.RadioGroupPreventivoClick(
  Sender: TObject);
begin
  inherited;
  if RadioGroupPreventivo.ItemIndex = 0 then
  begin
    EditinicioisolamentoPrev.Enabled := true;
    EditfimisolamentoPrev.Enabled := true;
    EditqtdediasPrev.Enabled := true
  end
  else
  begin
    EditinicioisolamentoPrev.Enabled := false;
    EditfimisolamentoPrev.Enabled := false;
    EditqtdediasPrev.Enabled := false;
    EditinicioisolamentoPrev.Text := '';
    EditfimisolamentoPrev.Text := '';
    EditqtdediasPrev.Text := '';
  end;
end;

procedure TfrmConselhoDisciplinar.RadioGroupRecursoClick(Sender: TObject);
begin
  inherited;
  if RadioGroupRecurso.ItemIndex = 0 then
    ComboBoxDecisaoRecurso.Enabled := true
  else
  begin
    ComboBoxDecisaoRecurso.Enabled := false;
    ComboBoxDecisaoRecurso.ItemIndex := 0;
  end;
end;

procedure TfrmConselhoDisciplinar.Button1Click(Sender: TObject);
begin
  inherited;

  {Inserir Historico Conselho Disciplinar na tabela historico_interno}

  DSHISTORICO_interno.DataSet.Append;
  DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger := DM.SQLConnect.ExecSQLScalar('SELECT GEN_ID(COD_UP,0)||GEN_ID(IDHISTORICO_INTERNO,1) FROM RDB$DATABASE');
  DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsString :=
    FormatDateTime('dd/mm/yyyy', DateTimePickerHistorico.Date);
  DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString := MemoDescricao.Lines.Text;
  DSHISTORICO_interno.DataSet.fieldbyname('setor').AsString := 'Conselho Disciplinar';
  DSHISTORICO_interno.DataSet.fieldbyname('ID_FUNCIONARIO').AsInteger :=
    GLOBAL_ID_FUNCIONARIO;
  DSHISTORICO_interno.DataSet.Post;

  MemoDescricao.Lines.Clear;

end;

procedure TfrmConselhoDisciplinar.SalvarClick(Sender: TObject);
begin
//  Cdsvincfaltadisciplinar.CancelUpdates;
  inherited;
  {Limpar todos os componentes da aba conselho disciplinar}
  DBLookupComboBoxfaltadisciplinar.KeyValue := null;
  Editreabilitacao.Text := '';
  Editcondenacao.Text := '';
  memoobs.Text := '';
  Editcondenacao.Text := '';
  Editpdi.Text := '';
  ComboBoxresultado.ItemIndex := 0;
  ComboBoxconclusao.ItemIndex := 0;
  Editdtincidencia.Text := datetostr(Date);
  EditinicioisolamentoPrev.Text := '';
  EditqtdediasPrev.Text := '';
  EditfimisolamentoPrev.Text := '';
  EditDataInstPortaria.Text := '';
  ComboBoxTipoSancao.ItemIndex := 0;
  EditInicioIsolamento.Text := '';
  EditFimIsolamento.Text := '';
  EditQtdeDiasIsolamento.Text := '';
  RadioGroupPreventivo.ItemIndex := 0;
  RadioGroupRecurso.ItemIndex := 0;
  RadioGroupHomologado.ItemIndex := 0;
  ComboBoxconclusao.ItemIndex := 0;
  Editresultado.Text := '';
  ComboBoxresultado.ItemIndex := 0;
  ComboBoxTipoSancao.ItemIndex := 0;
  ComboBoxClasConduta.ItemIndex := 0;
  ComboBoxDecisaoRecurso.ItemIndex := 0;
  ComboBoxtipoprocedimento.ItemIndex := 0;
  Editnprocedimento.Text := '';
  Editprocedimento.Text := '';
  EditNatureza.Text := '';

  {Abrir e fechar as tabelas para atualizar o grid}

  Dsfaltadisciplinar.DataSet.Close;
  Dsfaltadisciplinar.DataSet.Open;

  Dsvincfaltadisciplinar.DataSet.Close;
  Dsvincfaltadisciplinar.DataSet.Open;

  DSHISTORICO_interno.DataSet.Close;
  DSHISTORICO_interno.DataSet.Open;

end;

procedure TfrmConselhoDisciplinar.FormCreate(Sender: TObject);
begin

  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}



  if not ContemValor('I', PERMISSAO_CONSELHODISCIPLINAR)
    and not ContemValor('E', PERMISSAO_CONSELHODISCIPLINAR)
    and not ContemValor('D', PERMISSAO_CONSELHODISCIPLINAR) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CONSELHODISCIPLINAR)
    and not ContemValor('E', PERMISSAO_CONSELHODISCIPLINAR)
    and not ContemValor('D', PERMISSAO_CONSELHODISCIPLINAR) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CONSELHODISCIPLINAR)
    and ContemValor('E', PERMISSAO_CONSELHODISCIPLINAR)
    and not ContemValor('D', PERMISSAO_CONSELHODISCIPLINAR) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CONSELHODISCIPLINAR)
    and ContemValor('E', PERMISSAO_CONSELHODISCIPLINAR)
    and ContemValor('D', PERMISSAO_CONSELHODISCIPLINAR) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CONSELHODISCIPLINAR)
    and not ContemValor('E', PERMISSAO_CONSELHODISCIPLINAR)
    and ContemValor('D', PERMISSAO_CONSELHODISCIPLINAR) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CONSELHODISCIPLINAR)
    and not ContemValor('E', PERMISSAO_CONSELHODISCIPLINAR)
    and ContemValor('D', PERMISSAO_CONSELHODISCIPLINAR) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CONSELHODISCIPLINAR)
    and ContemValor('E', PERMISSAO_CONSELHODISCIPLINAR)
    and not ContemValor('D', PERMISSAO_CONSELHODISCIPLINAR) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

  Dsfaltadisciplinar.DataSet.Close;
  Dsfaltadisciplinar.DataSet.Open;
  Dsfaltadisciplinar.DataSet.Last;

end;

procedure TfrmConselhoDisciplinar.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_CONSELHODISCIPLINAR)
    and not ContemValor('E', PERMISSAO_CONSELHODISCIPLINAR)
    and not ContemValor('D', PERMISSAO_CONSELHODISCIPLINAR) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CONSELHODISCIPLINAR)
    and not ContemValor('E', PERMISSAO_CONSELHODISCIPLINAR)
    and not ContemValor('D', PERMISSAO_CONSELHODISCIPLINAR) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CONSELHODISCIPLINAR)
    and ContemValor('E', PERMISSAO_CONSELHODISCIPLINAR)
    and not ContemValor('D', PERMISSAO_CONSELHODISCIPLINAR) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CONSELHODISCIPLINAR)
    and ContemValor('E', PERMISSAO_CONSELHODISCIPLINAR)
    and ContemValor('D', PERMISSAO_CONSELHODISCIPLINAR) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CONSELHODISCIPLINAR)
    and not ContemValor('E', PERMISSAO_CONSELHODISCIPLINAR)
    and ContemValor('D', PERMISSAO_CONSELHODISCIPLINAR) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CONSELHODISCIPLINAR)
    and not ContemValor('E', PERMISSAO_CONSELHODISCIPLINAR)
    and ContemValor('D', PERMISSAO_CONSELHODISCIPLINAR) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CONSELHODISCIPLINAR)
    and ContemValor('E', PERMISSAO_CONSELHODISCIPLINAR)
    and not ContemValor('D', PERMISSAO_CONSELHODISCIPLINAR) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TfrmConselhoDisciplinar.CancelarClick(Sender: TObject);
begin
  inherited;

  Dsvincfaltadisciplinar.DataSet.Close;
  Dsvincfaltadisciplinar.DataSet.Open;

  DSHISTORICO_interno.DataSet.Close;
  DSHISTORICO_interno.DataSet.Open;
end;

procedure TfrmConselhoDisciplinar.PageControlModeloCadastroChange(
  Sender: TObject);
begin
  //inherited;
  if PageControlModeloCadastro.ActivePageIndex = 1 then
  begin
    CancelarClick(nil);
  end;
end;

procedure TfrmConselhoDisciplinar.EditqtdediasPrevKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  SoNumeros(Key)
end;

procedure TfrmConselhoDisciplinar.EditQtdeDiasIsolamentoKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  SoNumeros(Key)
end;

procedure TfrmConselhoDisciplinar.EditqtdediasPrevClick(Sender: TObject);
begin
  inherited;
  // Conta os dias de diferença entre as datas inseridas nos Edits.
  if (EditfimisolamentoPrev.Text <> '') and (EditinicioisolamentoPrev.Text <> '') then
  EditqtdediasPrev.Text := IntToStr(Trunc(StrToDateTime(EditfimisolamentoPrev.Text)) -
Trunc(StrToDateTime(EditinicioisolamentoPrev.Text)));
end;

procedure TfrmConselhoDisciplinar.EditQtdeDiasIsolamentoClick(
  Sender: TObject);
begin
  inherited;
  // Conta os dias de diferença entre as datas inseridas nos Edits.
  if (EditFimIsolamento.Text <> '') and (EditInicioIsolamento.Text <> '') then
   Editqtdediasisolamento.Text := IntToStr(Trunc(StrToDateTime(Editfimisolamento.Text)) -
Trunc(StrToDateTime(Editinicioisolamento.Text)));
end;

procedure TfrmConselhoDisciplinar.DBLookupComboBoxfaltadisciplinarExit(
  Sender: TObject);
begin
  inherited;
  Memo1.Text := DBLookupComboBoxfaltadisciplinar.Text;
  EditNatureza.Text := DSfaltadisciplinar.DataSet.fieldbyname('TIPOFALTA').AsString;
end;

procedure TfrmConselhoDisciplinar.DBLookupComboBoxfaltadisciplinarEnter(
  Sender: TObject);
begin
  inherited;
  Dsfaltadisciplinar.DataSet.Last;
end;

procedure TfrmConselhoDisciplinar.DBLookupComboBoxfaltadisciplinarClick(
  Sender: TObject);
begin
  inherited;
  Dsfaltadisciplinar.DataSet.Last;
end;

procedure TfrmConselhoDisciplinar.EditQtdeDiasIsolamentoExit(
  Sender: TObject);
var
 DataInicial : TDateTime;
 Dias : Integer;
begin
  inherited;
  if EditQtdeDiasIsolamento.Text <> '' then
  begin
  DataInicial := StrToDate(EditInicioIsolamento.Text);
  Dias:= StrToInt(EditQtdeDiasIsolamento.Text);
  EditFimIsolamento.Text := DateToStr(IncDay(DataInicial, Dias)- 1);
  end;
{  ValidaDataExit(Sender);
  if (EditfimisolamentoPrev.Text <> '') and (EditinicioisolamentoPrev.Text <> '') then
  EditqtdediasPrev.Text := IntToStr(Trunc(StrToDateTime(EditfimisolamentoPrev.Text)) -
Trunc(StrToDateTime(EditinicioisolamentoPrev.Text))+1);

  if (EditFimIsolamento.Text <> '') and (EditInicioIsolamento.Text <> '') then
   Editqtdediasisolamento.Text := IntToStr(Trunc(StrToDateTime(Editfimisolamento.Text)) -
Trunc(StrToDateTime(Editinicioisolamento.Text))+1); }
 end;

procedure TfrmConselhoDisciplinar.EditqtdediasPrevExit(Sender: TObject);
var
    DataInicial : TDateTime;
    Dias : Integer;
begin
  inherited;
  if EditqtdediasPrev.Text <> '' then
  begin
  DataInicial := StrToDate(EditinicioisolamentoPrev.Text);
  Dias:= StrToInt(EditqtdediasPrev.Text);
  EditfimisolamentoPrev.Text := DateToStr(IncDay(DataInicial, Dias)- 1);
  end;
end;

procedure TfrmConselhoDisciplinar.Excluir1Click(Sender: TObject);
begin
  inherited;

  if not Dsvincfaltadisciplinar.DataSet.Active then
    Dsvincfaltadisciplinar.DataSet.Open;

  if not DsFaltaDelete.DataSet.Active then
    DsFaltaDelete.DataSet.Open;

  if DsFaltaDelete.DataSet.Locate('ID_VINC_FALTA_DISCIPLINAR',DSvincfaltadisciplinar.DataSet.fieldbyname('ID_VINC_FALTA_DISCIPLINAR').AsInteger,[]) then
    begin
        DsFaltaDelete.DataSet.Delete;
        ShowMessage('Clique no botão SALVAR para confirmar a exclusão da falta disciplinar.');
    end;
end;

end.
