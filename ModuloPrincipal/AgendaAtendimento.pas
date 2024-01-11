unit AgendaAtendimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, DBCtrls, ToolWin, ExtCtrls,
  Buttons, Mask, jpeg, Lib, Menus, adpDBDateTimePicker, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFrmAgendaAtendimento = class(TFrmModeloCadastro)
    lbl1: TLabel;
    DBLookupComboBoxAssunto: TDBLookupComboBox;
    btn1: TSpeedButton;
    lbl2: TLabel;
    DBLookupComboBoxTipoContato: TDBLookupComboBox;
    btn2: TSpeedButton;
    lbl3: TLabel;
    dblookupcomboboxvisitante: TDBLookupComboBox;
    btn3: TSpeedButton;
    lbl4: TLabel;
    DBLookupComboBoxInterno: TDBLookupComboBox;
    lbl5: TLabel;
    DBLookupComboBoxAdvogado: TDBLookupComboBox;
    btn5: TSpeedButton;
    lbl6: TLabel;
    DBLookupComboBoxSituacao: TDBLookupComboBox;
    btn6: TSpeedButton;
    lbl8: TLabel;
    DBEditHORA: TDBEdit;
    lbl9: TLabel;
    DBLookupComboBoxID_UP: TDBLookupComboBox;
    lbl11: TLabel;
    DBLookupComboBoxID_FUNCIONARIO: TDBLookupComboBox;
    lbl12: TLabel;
    DspConsulta: TDataSetProvider;
    CdsConsulta: TClientDataSet;
    DsConsulta: TDataSource;
    DBLookupComboBoxIDAGENDA_SITUACAO: TDBLookupComboBox;
    lbl13: TLabel;
    btn4: TBitBtn;
    btn7: TSpeedButton;
    pgc1: TPageControl;
    ts1: TTabSheet;
    dbmemoOBSERVACAO: TDBMemo;
    ts2: TTabSheet;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdithoraaudiencia: TDBEdit;
    lbl10: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    DBEditdataaudiencia: TDBEdit;
    DateTimePickerInicial: TDateTimePicker;
    DateTimePickerFinal: TDateTimePicker;
    Label3: TLabel;
    DspInterno: TDataSetProvider;
    CdsInterno: TClientDataSet;
    DsInterno: TDataSource;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DspMenores: TDataSetProvider;
    CdsMenores: TClientDataSet;
    DsMenores: TDataSource;
    Label5: TLabel;
    Editprotocolo: TEdit;
    MainMenu1: TMainMenu;
    Relatorios1: TMenuItem;
    Especifico1: TMenuItem;
    Button1: TButton;
    TabSheetSolicitante: TTabSheet;
    DspDestino: TDataSetProvider;
    CdsDestino: TClientDataSet;
    DsDestino: TDataSource;
    Label7: TLabel;
    DBLookupComboBoxDestino: TDBLookupComboBox;
    SpeedButton2: TSpeedButton;
    Button2: TButton;
    PanelRodape: TPanel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Label8: TLabel;
    DBLookupComboBoxPostoTrabalho: TDBLookupComboBox;
    SpeedButton3: TSpeedButton;
    Label2: TLabel;
    DBLookupComboBoxPostoTrabalhoConsulta: TDBLookupComboBox;
    Label10: TLabel;
    DBEditDoc: TDBEdit;
    TabSheet2: TTabSheet;
    DBMemo1: TDBMemo;
    Label14: TLabel;
    DBComboBox6: TDBComboBox;
    Label41: TLabel;
    DBComboBox7: TDBComboBox;
    Label42: TLabel;
    DBComboBox8: TDBComboBox;
    Label48: TLabel;
    DBEdit31: TDBEdit;
    Label50: TLabel;
    DBEdit33: TDBEdit;
    Label51: TLabel;
    DBEditcidade: TDBEdit;
    Button6: TButton;
    Label17: TLabel;
    DBComboBoxTipoDoc: TDBComboBox;
    Label26: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    adpDBDateTimePicker1: TadpDBDateTimePicker;
    Button7: TButton;
    DspVisitante: TDataSetProvider;
    CdsVisitante: TClientDataSet;
    DsVisitante: TDataSource;
    adpDBDateTimePickerdataagenda: TadpDBDateTimePicker;
    Label9: TLabel;
    EditRGI: TEdit;
    dspAdvogado: TDataSetProvider;
    cdsAdvogado: TClientDataSet;
    dsAdvogado: TDataSource;
    dspComboVisitante: TDataSetProvider;
    cdsComboVisitante: TClientDataSet;
    dsComboVisitante: TDataSource;
    CheckBoxTodosPostos: TCheckBox;
    CheckBoxTodosSituacao: TCheckBox;
    Label11: TLabel;
    Label12: TLabel;
    GroupBox1: TGroupBox;
    Label13: TLabel;
    SqlConsulta: TFDQuery;
    SqlInterno: TFDQuery;
    SqlMenores: TFDQuery;
    SqlDestino: TFDQuery;
    SqlVisitante: TFDQuery;
    SQLAdvogado: TFDQuery;
    SQLComboVisitante: TFDQuery;
    procedure btn1Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NovoClick(Sender: TObject);
    procedure EditLocalizarChange(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure DBGridConsultaColEnter(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure dblookupcomboboxvisitanteExit(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure DBLookupComboBoxIDAGENDA_SITUACAOClick(Sender: TObject);
    procedure EditprotocoloChange(Sender: TObject);
    procedure Especifico1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure dbcbbSETORChange(Sender: TObject);
    procedure dbcbbSETORExit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridConsultaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGridConsultaDblClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure DBLookupComboBoxDestinoClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure EditRGIChange(Sender: TObject);
    procedure DBLookupComboBoxInternoClick(Sender: TObject);
    procedure DBLookupComboBoxAdvogadoEnter(Sender: TObject);
    procedure dblookupcomboboxvisitanteEnter(Sender: TObject);
    procedure CheckBoxTodosPostosClick(Sender: TObject);
    procedure CdsConsultaFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure EditLocalizarEnter(Sender: TObject);
    procedure EditRGIEnter(Sender: TObject);
    procedure EditprotocoloEnter(Sender: TObject);
    procedure CheckBoxTodosSituacaoClick(Sender: TObject);
    procedure DBLookupComboBoxPostoTrabalhoConsultaCloseUp(
      Sender: TObject);
    procedure DsConsultaDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    tipo_pesquisa: string;
  public
    sair: boolean;
    status: string;
    { Public declarations }
  end;

var
  FrmAgendaAtendimento: TFrmAgendaAtendimento;

implementation

uses DmPrincipal, AgendaAssuntos, AgendaSituacao, AgendaTipoContatos,
  CadastroFuncionario, CadastroAdvogado, CadastroVisitante,
  FiltroAgendaAtendimento, MenuRelatorio, CadastroDestino, PostoTrabalho,
  CadastroInternos, Math, ModuloPrincipal;

{$R *.dfm}

procedure TFrmAgendaAtendimento.btn1Click(Sender: TObject);
begin

  if (PERMISSAO_ASSUNTO = '') or (PERMISSAO_ASSUNTO = 'R') then
  begin
    ShowMessage('Você não possui permissão para acessar o cadastro de Assuntos!');
    Exit;
  end;

  inherited;
  FrmAgendaAssuntos := TFrmAgendaAssuntos.create(Application);
  FrmAgendaAssuntos.showmodal;
  FreeAndNil(FrmAgendaAssuntos);

  DM.DsAssuntos.DataSet.Close;
  DM.DsAssuntos.DataSet.OPEN;

end;

procedure TFrmAgendaAtendimento.btn6Click(Sender: TObject);
begin
  if (PERMISSAO_SITUACAO = '') or (PERMISSAO_SITUACAO = 'R') then
  begin
    ShowMessage('Você não possui permissão para acessar o cadastro de Situação!');
    Exit;
  end;

  inherited;

  FrmAgendaSituacao := TFrmAgendaSituacao.create(Application);
  FrmAgendaSituacao.showmodal;
  FreeAndNil(FrmAgendaSituacao);

  DM.DsSituacao.DataSet.Close;
  DM.DsSituacao.DataSet.OPEN;

end;

procedure TFrmAgendaAtendimento.btn2Click(Sender: TObject);
begin

  if (PERMISSAO_TIPOCONTATO = '') or (PERMISSAO_TIPOCONTATO = 'R') then
  begin
    ShowMessage('Você não possui permissão para acessar o cadastro de Tipo de Contato!');
    Exit;
  end;

  inherited;

  FrmAgendaTipoContatos := TFrmAgendaTipoContatos.create(Application);
  FrmAgendaTipoContatos.showmodal;
  FreeAndNil(FrmAgendaTipoContatos);

  DM.DsTipoContato.DataSet.Close;
  DM.DsTipoContato.DataSet.OPEN;

end;

procedure TFrmAgendaAtendimento.btn3Click(Sender: TObject);
begin
  inherited;

  FrmCadastroVisitante := TFrmCadastroVisitante.create(Application);
  FrmCadastroVisitante.showmodal;
  FreeAndNil(FrmCadastroVisitante);

  DM.DsVisitante.DataSet.Close;
  DM.DsVisitante.DataSet.OPEN;

end;

procedure TFrmAgendaAtendimento.btn5Click(Sender: TObject);
begin
  inherited;

  FrmCadastroInternos := TFrmCadastroInternos.create(Application);
  FrmCadastroInternos.showmodal;
  FreeAndNil(FrmCadastroInternos);

  DM.DSADVOGADO.DataSet.Close;
  DM.DSADVOGADO.DataSet.OPEN;

end;

procedure TFrmAgendaAtendimento.FormShow(Sender: TObject);
begin
  inherited;

  DBEditdataaudiencia.Field.EditMask := '99\/99\/9999;1;_';
  DBEditHORA.Field.EditMask := '99\:99;1;_';
  DBEdithoraaudiencia.Field.EditMask := '99\:99;1;_';
  PageControlModeloCadastro.ActivePageIndex := 1;


  if DBLookupComboBoxInterno.KeyValue <> null then
  begin
    //SQLAdvogado.Close;
    SQLAdvogado.ParamByName('id_interno').AsInteger := DBLookupComboBoxInterno.KeyValue;
    //SQLAdvogado.Open;
    dsAdvogado.DataSet.Close;
    dsAdvogado.DataSet.Open;

    //SQLComboVisitante.Close;
    SQLComboVisitante.ParamByName('id_interno').AsInteger := DBLookupComboBoxInterno.KeyValue;
    //SQLComboVisitante.Open;
    dsComboVisitante.DataSet.Close;
    dsComboVisitante.DataSet.Open;
  end;

  if FECHA_AGENDA_ATENDIMENTO = true then
    FreeAndNil(FrmAgendaAtendimento);

  tipo_pesquisa := '';
  //DBLookupComboBoxIDAGENDA_SITUACAO.KeyValue := DM.DsSituacao.DataSet.fieldbyname('IDAGENDA_SITUACAO').AsString;

  if not (filtropostotrabalho > 0) then
    DBLookupComboBoxPostoTrabalhoConsulta.KeyValue := DM.DsPostoTrabalho.DataSet.fieldbyname('IDPOSTO_TRABALHO').AsString;

  btn4Click(nil);

end;

procedure TFrmAgendaAtendimento.FormCreate(Sender: TObject);
var
  sSetor: string;
begin

  DM.DsPostoTrabalho.DataSet.Close;
  DM.DsPostoTrabalho.DataSet.Open;

  dsdestino.DataSet.Close;
  dsdestino.DataSet.OPEN;

  DateTimePickerInicial.Date := Date;
  DateTimePickerFinal.Date := Date;

  pgc1.ActivePageIndex := 0;

  //SqlCadastro.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;

  sSetor := '';

 { FrmFiltroAgendaAtendimento := TFrmFiltroAgendaAtendimento.Create(Application);
  if StatusAgenda = 'R' then
    FrmFiltroAgendaAtendimento.BtnAgenda.Visible := false
  else
    FrmFiltroAgendaAtendimento.BtnRequerimento.Visible := false; }

//  if GLOBAL_IDPOSTO_TRABALHO > 0 then
//    FrmFiltroAgendaAtendimento.DBLookupComboBoxPostoTrabalho.KeyValue := GLOBAL_IDPOSTO_TRABALHO;

  //FrmFiltroAgendaAtendimento.ShowModal;


  self.status := statusfiltroagenda;

  DBLookupComboBoxPostoTrabalhoConsulta.KeyValue := filtropostotrabalho;

  if Self.status = 'R' then
  begin
    DateTimePickerInicial.Date := Date - 7;
    DateTimePickerFinal.Date := Date;
    Self.Caption := 'Registro de Requerimento';
    lbl8.Caption := 'Data do Requerimento';
    lbl9.Caption := 'Hora';
    lbl12.Caption := 'Requerimento para qual Funcionário?';
    Label8.Caption := 'Requerimento para qual Setor?';
    Label2.Caption := 'Setor do Requerimento';
    TabSheetCadastro.Caption := 'Requerimento';
    //    DateTimePickeragenda.Enabled := False;
    //    DBEditHORA.Enabled := False;
    ts2.TabVisible := False;
    TabSheet2.TabVisible := False;
    TabSheetSolicitante.TabVisible := false;
    DBGridConsulta.Columns[6].Visible := false;
    DBGridConsulta.Columns[7].Visible := false;
    DBGridConsulta.Columns[8].Visible := false;
    DBGridConsulta.Columns[9].Visible := false;

    lbl5.Visible := False;
    DBLookupComboBoxAdvogado.Visible := False;

    lbl3.Visible := False;
    dblookupcomboboxvisitante.Visible := False;

    Label10.Visible := False;
    DBEditDoc.Visible := False;

    Label17.Visible := False;
    DBComboBoxTipoDoc.Visible := False;

    Label26.Visible := False;
    DBEdit4.Visible := False;

    Label6.Visible := False;
    adpDBDateTimePicker1.Visible := False;

    Button3.Visible := False;
    Button4.Visible := False;
    Button5.Visible := False;
    Button6.Visible := False;

    DM.DsSituacao.DataSet.Filter := 'descricao like ' + Qs('REQUERIMENTO%');
    DM.DsTipoContato.DataSet.Filter := 'descricao like ' + Qs('REQUERIMENTO%');
    DM.DsAssuntos.DataSet.Filter := 'descricao like ' + Qs('REQUERIMENTO%');

  end
  else
  begin
    DM.DsSituacao.DataSet.Filter := 'not descricao like ' + Qs('REQUERIMENTO%');
    DM.DsTipoContato.DataSet.Filter := 'not descricao like ' + Qs('REQUERIMENTO%');
    DM.DsAssuntos.DataSet.Filter := 'not descricao like ' + Qs('REQUERIMENTO%');
  end;

  DM.DsSituacao.DataSet.Filtered := True;
  DM.DsTipoContato.DataSet.Filtered := True;
  DM.DsAssuntos.DataSet.Filtered := True;

 // FreeAndNil(FrmFiltroAgendaAtendimento);

  inherited;
  DM.DsAssuntos.DataSet.Close;
  DM.DsAssuntos.DataSet.OPEN;

  DM.DsSituacao.DataSet.Close;
  DM.DsSituacao.DataSet.OPEN;

  DM.DsTipoContato.DataSet.Close;
  DM.DsTipoContato.DataSet.OPEN;

  DM.dsfuncionario.DataSet.Close;
  DM.dsfuncionario.DataSet.OPEN;

  DM.DSADVOGADO.DataSet.Close;
  DM.DSADVOGADO.DataSet.OPEN;

  SqlInterno.SQL.Text :=
    'SELECT i.id_interno, i.nome_interno || '' || MAE: '' || coalesce(MAE,'''')  as "nome_interno" FROM INTERNO i '
    + ' WHERE coalesce(i.nome_interno,'''')<>'''' and i.st = ''A'' and i.id_up = '
    + IntToStr(GLOBAL_ID_UP) + ' ORDER BY i.NOME_INTERNO';

  DsInterno.DataSet.Close;
  DsInterno.DataSet.OPEN;

  DM.DsUP.DataSet.Close;
  DM.DsUP.DataSet.Open;

  DM.DsFuncionarioLista.DataSet.Close;
  DM.DsFuncionarioLista.DataSet.Open;

  PageControlModeloCadastro.ActivePageIndex := 1;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_AGENDAATENDIMENTO)
    and not ContemValor('E', PERMISSAO_AGENDAATENDIMENTO)
    and not ContemValor('D', PERMISSAO_AGENDAATENDIMENTO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_AGENDAATENDIMENTO)
    and not ContemValor('E', PERMISSAO_AGENDAATENDIMENTO)
    and not ContemValor('D', PERMISSAO_AGENDAATENDIMENTO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_AGENDAATENDIMENTO)
    and ContemValor('E', PERMISSAO_AGENDAATENDIMENTO)
    and not ContemValor('D', PERMISSAO_AGENDAATENDIMENTO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_AGENDAATENDIMENTO)
    and ContemValor('E', PERMISSAO_AGENDAATENDIMENTO)
    and ContemValor('D', PERMISSAO_AGENDAATENDIMENTO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_AGENDAATENDIMENTO)
    and not ContemValor('E', PERMISSAO_AGENDAATENDIMENTO)
    and ContemValor('D', PERMISSAO_AGENDAATENDIMENTO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_AGENDAATENDIMENTO)
    and not ContemValor('E', PERMISSAO_AGENDAATENDIMENTO)
    and ContemValor('D', PERMISSAO_AGENDAATENDIMENTO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_AGENDAATENDIMENTO)
    and ContemValor('E', PERMISSAO_AGENDAATENDIMENTO)
    and not ContemValor('D', PERMISSAO_AGENDAATENDIMENTO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmAgendaAtendimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DM.DsAssuntos.DataSet.Close;
  DM.DsSituacao.DataSet.Filtered := False;
  DM.DsSituacao.DataSet.Close;
  DM.DsTipoContato.DataSet.Close;
  DM.dsfuncionario.DataSet.Close;
  DM.DsVisitante.DataSet.Close;
  DM.DSADVOGADO.DataSet.Close;
  DsInterno.DataSet.Close;
  DM.DsUP.DataSet.Close;

  FrmModuloPrincipal.frxReport2.PrepareReport;
end;

procedure TFrmAgendaAtendimento.NovoClick(Sender: TObject);
begin
  DBEditdataaudiencia.Field.EditMask := '99\/99\/9999;1;_';
  DBEditHORA.Field.EditMask := '99\:99;1;_';
  DBEdithoraaudiencia.Field.EditMask := '99\:99;1;_';

  inherited;
  DsCadastro.DataSet.FieldByName('IDAGENDA_ATENDIMENTO').AsInteger := 0;
  DsCadastro.DataSet.FieldByName('ID_UP').AsInteger := GLOBAL_ID_UP;
  DsCadastro.DataSet.FieldByName('ID_FUNCIONARIO').AsInteger := GLOBAL_ID_FUNCIONARIO;
  //DsCadastro.DataSet.FieldByName('ID_FUNCIONARIO_AGENDA').AsInteger := GLOBAL_ID_FUNCIONARIO;
  if DBLookupComboBoxPostoTrabalhoConsulta.KeyValue > 0 then
    DsCadastro.DataSet.FieldByName('IDPOSTO_TRABALHO').AsInteger := DBLookupComboBoxPostoTrabalhoConsulta.KeyValue;
  DsCadastro.DataSet.FieldByName('DATA_LANCAMENTO').AsDateTime := Date;
  DsCadastro.DataSet.FieldByName('DATA_AGENDA').AsDateTime := Date;
  DsCadastro.DataSet.FieldByName('HORA_AGENDA').AsString := FormatDateTime('hh:mm', Now);
  DsCadastro.DataSet.FieldByName('STATUS').AsString := Self.status;
  DBEditHORA.Enabled := true;

  DsCadastro.DataSet.FieldByName('ID_INTERNO').AsVariant := Null;
  DsCadastro.DataSet.FieldByName('ID_ADVOGADO').AsVariant := Null;
  DsCadastro.DataSet.FieldByName('ID_VISITANTE').AsVariant := Null;

  SQLAdvogado.ParamByName('id_interno').AsInteger := 0;
  dsAdvogado.DataSet.Close;
  dsAdvogado.DataSet.Open;

  SQLComboVisitante.ParamByName('id_interno').AsInteger := 0;
  dsComboVisitante.DataSet.Close;
  dsComboVisitante.DataSet.Open;



  if Self.status = 'R' then
  begin
    DsCadastro.DataSet.FieldByName('IDAGENDA_ASSUNTOS').AsInteger := 309;
    DsCadastro.DataSet.FieldByName('IDAGENDA_TIPO_CONTATOS').AsInteger := 502;
    DsCadastro.DataSet.FieldByName('IDAGENDA_SITUACAO').AsInteger := 109;

    DBLookupComboBoxAssunto.Enabled := False;
    DBLookupComboBoxTipoContato.Enabled := False;
  end;

end;

procedure TFrmAgendaAtendimento.EditLocalizarChange(Sender: TObject);
begin
  //inherited;
  Screen.Cursor := crHourGlass;

  DsConsulta.DataSet.filtered := False;
  DsConsulta.DataSet.filtered := True;

  Screen.Cursor := crDefault;
end;

procedure TFrmAgendaAtendimento.btn4Click(Sender: TObject);
begin
  inherited;
  if (EditRGI.Text = '') and (EditLocalizar.Text = '') and (Editprotocolo.Text = '') then
  begin
    tipo_pesquisa := 'NOME_INTERNO';
  end;

  Screen.Cursor := crHourGlass;
  cbb1Change(nil);
  EditLocalizarChange(nil);
  Screen.Cursor := crDefault;
end;

procedure TFrmAgendaAtendimento.SalvarClick(Sender: TObject);
var
  sprotocolo, msg: string;
  x, y: integer;
begin
  x := 0;
  y := 0;
  msg := '';

  if DBLookupComboBoxPostoTrabalho.CanFocus then
    DBLookupComboBoxPostoTrabalho.SetFocus;

  if DsCadastro.DataSet.FieldByName('IDPOSTO_TRABALHO').AsString = '' then
  begin
    if StatusAgenda <> 'R' then
      ShowMessage('Por favor informe o Posto/Local de Trabalho.')
    else
      ShowMessage('Por favor informe o Setor do Requerimento.');

    if DBLookupComboBoxPostoTrabalho.CanFocus then
      DBLookupComboBoxPostoTrabalho.SetFocus;

    Exit;
  end;

  if DsCadastro.DataSet.FieldByName('IDAGENDA_ASSUNTOS').AsString = '' then
  begin
    ShowMessage('Por favor informe o assunto.');

    if DBLookupComboBoxAssunto.CanFocus then
      DBLookupComboBoxAssunto.SetFocus;

    Exit;
  end;

  if DsCadastro.DataSet.FieldByName('IDAGENDA_SITUACAO').AsString = '' then
  begin
    ShowMessage('Por favor informe a situação.');

    if DBLookupComboBoxSituacao.CanFocus then
      DBLookupComboBoxSituacao.SetFocus;

    Exit;
  end;

  if DsCadastro.DataSet.State in [dsinsert, dsedit] then
  begin

    if (DBLookupComboBoxInterno.KeyValue <> null) then
    begin
      if StatusAgenda <> 'R' then
      begin
        DM.sqlExecute.sql.text := 'select a.idagenda_atendimento, po.posto_trabalho, aas.descricao as assunto, '
          + ' asi.descricao as situacao from agenda_atendimento a '
          + ' left join posto_trabalho po on (po.idposto_trabalho = a.idposto_trabalho) '
          + ' left join agenda_assuntos aas on (aas.idagenda_assuntos = a.idagenda_assuntos) '
          + ' left join agenda_situacao asi on (asi.idagenda_situacao = a.idagenda_situacao) '
          + ' Where a.id_interno =' + qs(DBLookupComboBoxInterno.KeyValue)
        //+ 'and a.id_visitante is null '
        + 'and a.data_agenda =' + qs(FormatDateTime('dd.mm.yyyy', adpDBDateTimePickerdataagenda.date))
          + 'and a.hora_agenda = ' + qs(FormatDateTime('hh:mm:ss.zzz', strtotime(DBEditHORA.Text)));
        Dm.DsExecute.DataSet.close;
        Dm.DsExecute.DataSet.open;

        if DsCadastro.DataSet.State in [dsinsert] then
        begin

          if dm.DsExecute.DataSet.RecordCount > 0 then
          begin

            for x := 1 to dm.DsExecute.DataSet.RecordCount do
            begin
              if x <= 7 then
              begin
                msg := msg + 'Agendamento: ' + IntToStr(x) + #13
                  + 'Setor: ' + dm.DsExecute.DataSet.FieldByName('posto_trabalho').AsString + #13
                  + 'Assunto: ' + dm.DsExecute.DataSet.FieldByName('assunto').AsString + #13
                  + 'Situação: ' + dm.DsExecute.DataSet.FieldByName('situacao').AsString + #13#13;
                dm.DsExecute.DataSet.Next;
              end;
            end;

            if MessageDlg('Existe(m) ' + IntToStr(dm.DsExecute.DataSet.RecordCount) + ' agendamento(s) para este Interno no dia ' + DateToStr(adpDBDateTimePickerdataagenda.date)
              + ' às ' + DBEditHORA.Text + '! Observe se o lançamento não será duplicado!' + #13#13
              + msg
              + 'Deseja fazer este Agendamento mesmo assim?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
            begin
              Exit;
            end;

          end;

        end
        else
        begin

          if DM.DsExecute.DataSet.RecordCount > 1 then
          begin

            for x := 1 to dm.DsExecute.DataSet.RecordCount do
            begin
              if x <= 7 then
              begin
                if dm.DsExecute.DataSet.FieldByName('IDAGENDA_ATENDIMENTO').AsInteger
                  <> DsCadastro.DataSet.FieldByName('IDAGENDA_ATENDIMENTO').AsInteger then
                begin
                  y := y + 1;
                  msg := msg + 'Agendamento: ' + IntToStr(x) + #13
                    + 'Setor: ' + dm.DsExecute.DataSet.FieldByName('posto_trabalho').AsString + #13
                    + 'Assunto: ' + dm.DsExecute.DataSet.FieldByName('assunto').AsString + #13
                    + 'Situação: ' + dm.DsExecute.DataSet.FieldByName('situacao').AsString + #13#13;
                end;
                dm.DsExecute.DataSet.Next;
              end;
            end;

            if MessageDlg('Existe(m) ' + IntToStr(y) + ' agendamento(s) para este Interno no dia ' + DateToStr(adpDBDateTimePickerdataagenda.date)
              + ' às ' + DBEditHORA.Text + '! Observe se o lançamento não será duplicado!' + #13#13
              + msg
              + 'Deseja fazer este Agendamento mesmo assim?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
            begin
              Exit;
            end;

          end;

          if DM.DsExecute.DataSet.RecordCount = 1 then
          begin

            if dm.DsExecute.DataSet.FieldByName('IDAGENDA_ATENDIMENTO').AsInteger
              <> DsCadastro.DataSet.FieldByName('IDAGENDA_ATENDIMENTO').AsInteger then
            begin
              msg := msg + 'Agendamento: 1' + #13
                + 'Setor: ' + dm.DsExecute.DataSet.FieldByName('posto_trabalho').AsString + #13
                + 'Assunto: ' + dm.DsExecute.DataSet.FieldByName('assunto').AsString + #13
                + 'Situação: ' + dm.DsExecute.DataSet.FieldByName('situacao').AsString + #13#13;

              if MessageDlg('Existe 1 agendamento para este Interno no dia ' + DateToStr(adpDBDateTimePickerdataagenda.date)
                + ' às ' + DBEditHORA.Text + '! Observe se o lançamento não será duplicado!' + #13#13
                + msg
                + 'Deseja fazer este Agendamento mesmo assim?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
              begin
                Exit;
              end;

            end;

          end;

        end;

      end;
    end
    else
    begin
      if StatusAgenda <> 'R' then
      begin
        if not ((DBLookupComboBoxAssunto.Text = 'PEDAGOGIA') or (DBLookupComboBoxAssunto.Text = 'ASSISTENCIA RELIGIOSA')
          or (DBLookupComboBoxAssunto.Text = 'P1') or (DBLookupComboBoxAssunto.Text = 'INSPECAO MPF/CORREGEDOR')) then
        begin
          ShowMessage('Selecione um Interno para vincular a este Agendamento!');

          if DBLookupComboBoxInterno.CanFocus then
            DBLookupComboBoxInterno.SetFocus;

          Exit;
        end;
      end
      else
      begin
        ShowMessage('Selecione um Interno para vincular a este Requerimento!');

        if DBLookupComboBoxInterno.CanFocus then
          DBLookupComboBoxInterno.SetFocus;

        Exit;
      end;
    end;

  end;

  if StatusAgenda <> 'R' then
  begin
    if (((DBLookupComboBoxAssunto.Text = 'ATENDIMENTO COM ADVOGADO') or (DBLookupComboBoxAssunto.Text = 'ATENDIMENTO COM DEFENSOR'))
      and (DsCadastro.DataSet.FieldByName('ID_ADVOGADO').AsString = '')) then
    begin
      ShowMessage('Selecione o Advogado que realizará o atendimento!');

      if DBLookupComboBoxAdvogado.CanFocus then
        DBLookupComboBoxAdvogado.SetFocus;

      Exit;
    end;

    if (((DBLookupComboBoxAssunto.Text = 'VISITA SOCIAL') or (DBLookupComboBoxAssunto.Text = 'VISITA INTIMA') or
      (DBLookupComboBoxAssunto.Text = 'VISITA EM PARLATORIO')) and (DsCadastro.DataSet.FieldByName('ID_VISITANTE').AsString = '')) then
    begin
      ShowMessage('Selecione o Visitante que realizará a visita!');

      if dblookupcomboboxvisitante.CanFocus then
        dblookupcomboboxvisitante.SetFocus;

      Exit;
    end;
  end;

  if DsCadastro.DataSet.FieldByName('OBSERVACAO').AsString = '' then
  begin
    if StatusAgenda = 'R' then
    begin
      ShowMessage('O Campo Descrição/Observação não pode ser vazio. Por favor descreva a solicitação do Requerimento.');

      if dbmemoOBSERVACAO.CanFocus then
        dbmemoOBSERVACAO.SetFocus;

      Exit;
    end
    else
    begin
      if (DsCadastro.DataSet.FieldByName('ID_ADVOGADO').AsString = '') and (DsCadastro.DataSet.FieldByName('ID_VISITANTE').AsString = '') then
      begin
        ShowMessage('O Campo Descrição/Observação não pode ser vazio. Por favor descreva a que se refere este agendamento.');

        if dbmemoOBSERVACAO.CanFocus then
          dbmemoOBSERVACAO.SetFocus;

        Exit;
      end;
    end;
  end;

  DsCadastro.DataSet.FieldByName('SETOR').AsString := DBLookupComboBoxPostoTrabalho.Text;

  if DsCadastro.DataSet.state in [dsinsert] then
  begin
    DsCadastro.DataSet.FieldByName('IDAGENDA_ATENDIMENTO').AsInteger := DBGenerator('IDAGENDA_ATENDIMENTO');
  end;

  sprotocolo := DsCadastro.DataSet.FieldByName('IDAGENDA_ATENDIMENTO').AsString;


  inherited;
  Screen.Cursor := crHourGlass;

  DsCadastro.DataSet.Close;
  //if StatusAgenda <> 'R' then
   // ShowMessage('Anote o numero do protocolo: ' + sprotocolo);
  DsCadastro.DataSet.Open;

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

 { SqlInterno.SQL.Text :=
    'SELECT i.id_interno, i.nome_interno||'' || MAE:''||coalesce(i.MAE,'''') as "nome_interno" FROM INTERNO i '
    + ' WHERE coalesce(i.nome_interno,'''')<>'''' and i.st = ''A'' and i.id_up = '
    + IntToStr(GLOBAL_ID_UP) + ' ORDER BY i.NOME_INTERNO';

  DsInterno.DataSet.Close;
  DsInterno.DataSet.OPEN;  }

  Screen.Cursor := crDefault;

  PageControlModeloCadastro.ActivePage := TabSheetConsulta;
end;

procedure TFrmAgendaAtendimento.DBGridConsultaColEnter(Sender: TObject);
begin
  inherited;
 // Label1.Caption :=
 //   'Localizar: (' + DBGridConsulta.Columns.Items[DBGridConsulta.SelectedIndex].Title.Caption + ')';
end;

procedure TFrmAgendaAtendimento.ExcluirClick(Sender: TObject);
begin
  inherited;

  DsConsulta.DataSet.DisableControls;
  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;
  DsConsulta.DataSet.EnableControls;

end;

procedure TFrmAgendaAtendimento.btn7Click(Sender: TObject);
begin
  inherited;
//  DBLookupComboBoxIDAGENDA_SITUACAO.KeyValue := Null;
end;

procedure TFrmAgendaAtendimento.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  with DsCadastro.DataSet do
  begin
    if not Active then
      Exit;

    if IsEmpty then
      Exit;

    //    if state in [dsedit, dsBrowse] then
    //    begin
    //      Data_DateTimePicker(DateTimePickeragenda, fieldbyname('DATA_AGENDA').AsDateTime);
    ////      DateTimePickeragenda.Enabled := False;
    ////      DBEditHORA.Enabled := False;
    //    end;

  end;

    {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_AGENDAATENDIMENTO)
    and not ContemValor('E', PERMISSAO_AGENDAATENDIMENTO)
    and not ContemValor('D', PERMISSAO_AGENDAATENDIMENTO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_AGENDAATENDIMENTO)
    and not ContemValor('E', PERMISSAO_AGENDAATENDIMENTO)
    and not ContemValor('D', PERMISSAO_AGENDAATENDIMENTO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_AGENDAATENDIMENTO)
    and ContemValor('E', PERMISSAO_AGENDAATENDIMENTO)
    and not ContemValor('D', PERMISSAO_AGENDAATENDIMENTO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_AGENDAATENDIMENTO)
    and ContemValor('E', PERMISSAO_AGENDAATENDIMENTO)
    and ContemValor('D', PERMISSAO_AGENDAATENDIMENTO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_AGENDAATENDIMENTO)
    and not ContemValor('E', PERMISSAO_AGENDAATENDIMENTO)
    and ContemValor('D', PERMISSAO_AGENDAATENDIMENTO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_AGENDAATENDIMENTO)
    and not ContemValor('E', PERMISSAO_AGENDAATENDIMENTO)
    and ContemValor('D', PERMISSAO_AGENDAATENDIMENTO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_AGENDAATENDIMENTO)
    and ContemValor('E', PERMISSAO_AGENDAATENDIMENTO)
    and not ContemValor('D', PERMISSAO_AGENDAATENDIMENTO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmAgendaAtendimento.dblookupcomboboxvisitanteExit(
  Sender: TObject);
begin
  inherited;

{
  if dblookupcomboboxvisitante.Text <> '' then
  begin
    DsInterno.DataSet.close;
    DsMenores.DataSet.close;

    SqlInterno.SQL.Text :=
      'SELECT i.id_interno, i.nome_interno FROM INTERNO i '
      + ' WHERE coalesce(i.nome_interno,'''')<>'''' and i.st = ''A'' and i.id_up = '
      + IntToStr(GLOBAL_ID_UP) + ' ORDER BY i.NOME_INTERNO';

    if dblookupcomboboxvisitante.keyvalue > 0 then
    begin
      SqlInterno.SQL.Text :=
        'SELECT i.id_interno, i.nome_interno FROM INTERNO i '
        + 'inner join visitante_interno v on (i.id_interno=v.id_interno) '
        + ' WHERE i.id_up = '
        + IntToStr(GLOBAL_ID_UP) + ' and v.id_visitante = '
        + IntToStr(dblookupcomboboxvisitante.keyvalue) + ' ORDER BY NOME_INTERNO';

      SqlMenores.SQL.Text :=
        'select g.grau_parentesco ,m.nome_menores, m.numero_certidao_nascimento from menores m '
        + ' left join grau_parentesco g on (m.id_grau_parentesco = g.id_grau_parentesco) '
        + ' left join visitante v on (v.id_visitante = m.id_visitante)'
        + ' where m.id_visitante =  '
        + IntToStr(dblookupcomboboxvisitante.keyvalue) + ' ORDER BY NOME_menores';

    end;

    DsInterno.DataSet.Open;
    DsMenores.DataSet.Open;

    if DsMenores.DataSet.RecordCount > 0 then
    begin
      DsMenores.DataSet.First;
      while not DsMenores.DataSet.Eof do
      begin
        //dbmemoOBSERVACAO.Lines.Add (DsMenores.DataSet.FieldByName('nome_menores').AsString + ' - ' + DsMenores.DataSet.FieldByName('grau_parentesco').AsString);
        DsCadastro.DataSet.FieldByName('observacao').AsString := DsCadastro.DataSet.FieldByName('observacao').AsString + ' / ' +
          (DsMenores.DataSet.FieldByName('nome_menores').AsString + ' - ' + DsMenores.DataSet.FieldByName('grau_parentesco').AsString
          + ' CN: ' + DsMenores.DataSet.FieldByName('numero_certidao_nascimento').AsString);
        DsMenores.DataSet.Next;
      end;
    end;
  end;
       }
end;

procedure TFrmAgendaAtendimento.cbb1Change(Sender: TObject);
var
  sSetor: string;
begin
 // inherited;
   //filtra ou não o setor ao qual se deseja selecionar. se checar todos os postos o ssetor receberá vazio
  if DBLookupComboBoxPostoTrabalhoConsulta.KeyValue > 0 then
    sSetor := ' and agenda_atendimento.idposto_trabalho=' + inttostr(DBLookupComboBoxPostoTrabalhoConsulta.KeyValue)
  else
    sSetor := '';

  sSetor := sSetor + ' and agenda_atendimento.data_agenda between ' + Qs(FormatDateTime('DD.MM.YYYY', DateTimePickerInicial.Date))
    + ' and ' + Qs(FormatDateTime('DD.MM.YYYY', DateTimePickerFinal.Date));

  sSetor := sSetor + ' and agenda_atendimento.id_up=' + inttostr(GLOBAL_ID_UP);
  sSetor := sSetor + ' and coalesce(agenda_atendimento.status,'''')=' + qs(self.status);
  //sSetor := sSetor + ' and interno.id_up=' + qs(inttostr(global_id_up));

  DsConsulta.DataSet.Close;

  SqlConsulta.SQL.Text :=
    'select '
    + ' cast('''' as varchar(1)) AS "SELECAO", '
    + ' agenda_atendimento.idagenda_atendimento, '
    + ' agenda_atendimento.id_up, '
    + ' agenda_atendimento.id_funcionario, '
    + ' coalesce(agenda_atendimento.id_interno,0) as id_interno, '
    + ' agenda_atendimento.id_visitante, '
    + ' agenda_atendimento.id_advogado, '
    + ' agenda_atendimento.idagenda_tipo_contatos, '
    + ' agenda_atendimento.idagenda_assuntos, '
    + ' agenda_atendimento.idagenda_situacao, '
    + ' agenda_atendimento.data_lancamento, '
    + ' agenda_atendimento.id_funcionario_agenda, '
    + ' agenda_atendimento.data_agenda, '
    + ' agenda_atendimento.hora_agenda, '
    + ' agenda_atendimento.observacao, '
    + ' posto_trabalho.posto_trabalho as setor, '
    + ' agenda_assuntos.descricao assuntos, '
    + ' agenda_situacao.descricao situacao, '
    + ' agenda_tipo_contatos.descricao tipo_contatos, '
    + ' advogado.advogado, '
    + ' visitante.visitante, '
    + ' interno.RGI, '
    + ' coalesce(interno.nome_interno,'''') as nome_interno, '
    + ' funcionario.nome_funcionario, '
    + ' agenda_atendimento.TIPO_DOCUMENTO_SOLICITACAO,'
    + ' agenda_atendimento.NUMERO_DOC_SOLICITACAO,'
    + ' destino.DESTINO,'
    + ' agenda_atendimento.NUMERO_OFICIO,'
    + ' agenda_atendimento.MOTIVO_SAIDA'
    + ' from agenda_atendimento '
    + ' left join advogado on (advogado.id_advogado = agenda_atendimento.id_advogado) '
    + ' left join visitante on (agenda_atendimento.id_visitante = visitante.id_visitante) '
    + ' left join agenda_assuntos on (agenda_atendimento.idagenda_assuntos = agenda_assuntos.idagenda_assuntos) '
    + ' left join agenda_situacao on (agenda_atendimento.idagenda_situacao = agenda_situacao.idagenda_situacao) '
    + ' left join agenda_tipo_contatos on (agenda_atendimento.idagenda_tipo_contatos = agenda_tipo_contatos.idagenda_tipo_contatos) '
    + ' left join interno on (agenda_atendimento.id_interno = interno.id_interno) '
    + ' left join funcionario on (agenda_atendimento.id_funcionario_agenda = funcionario.id_funcionario) '
    + ' left join posto_trabalho on (agenda_atendimento.idposto_trabalho = posto_trabalho.idposto_trabalho) '
    + ' LEFT JOIN DESTINO ON (agenda_atendimento.IDDESTINO=DESTINO.ID_DESTINO) '
    + ' where 1=1 ' + sSetor
    + ' order by '
    + ' agenda_atendimento.data_agenda, agenda_atendimento.hora_agenda, coalesce(interno.nome_interno,'''') ';

  DsConsulta.DataSet.Open;
  //ShowMessage(SqlConsulta.SQL.Text);
end;

procedure TFrmAgendaAtendimento.DBLookupComboBoxIDAGENDA_SITUACAOClick(
  Sender: TObject);
begin
  inherited;

  EditLocalizarChange(nil);

end;

procedure TFrmAgendaAtendimento.EditprotocoloChange(Sender: TObject);
begin
  inherited;

  DsConsulta.DataSet.filtered := False;
  DsConsulta.DataSet.filtered := True;
end;

procedure TFrmAgendaAtendimento.Especifico1Click(Sender: TObject);
var
  sPath: string;
begin

  try

    with DsCadastro.DataSet do
    begin

      if not Active then
      begin
        ShowMessage('Não tem agenda posicionada na tela.');
        exit;
      end;

      if IsEmpty then
      begin
        ShowMessage('Não tem agenda posicionada na tela.');
        exit;
      end;

      if state in [dsinsert] then
      begin
        ShowMessage('Salve este registro de interno, depois posicione nele.');
        exit;
      end;

      GLOBAL_ID_INTERNO := fieldbyname('ID_INTERNO').AsInteger;
      GLOBAL_IDAGENDA_ATENDIMENTO := fieldbyname('IDAGENDA_ATENDIMENTO').AsString;

    end;

    if not DirectoryExists(GLOBAL_PATCH_SISTEMA + '\Específicos\') then
      CreateDir(GLOBAL_PATCH_SISTEMA + '\Específicos\');

    PATH_MOMENTO := GLOBAL_PATCH_SISTEMA + '\Específicos\' + trim(copy(self.Name, 4, 100)) + '\';
    if not DirectoryExists(PATH_MOMENTO) then
      CreateDir(PATH_MOMENTO);

    FrmMenuRelatorio := TFrmMenuRelatorio.Create(Application);
    FrmMenuRelatorio.ShowModal;
    FreeAndNil(FrmMenuRelatorio);

  except
  end;

  PATH_MOMENTO := '';

  SetCurrentDir(GLOBAL_PATCH_SISTEMA);

end;

procedure TFrmAgendaAtendimento.Button1Click(Sender: TObject);
var
  interno: variant;
begin
  inherited;
  interno := BuscaGeral(nil, 'INTERNO', '', 100, 100, 1100, 400);
  if VarToStrDef(interno, '') <> '' then
  begin
    DBLookupComboBoxInterno.KeyValue := interno;
    DsCadastro.DataSet.FieldByName('ID_INTERNO').AsInteger := DBLookupComboBoxInterno.KeyValue;
    DBLookupComboBoxInternoClick(Sender);
  end;

end;

procedure TFrmAgendaAtendimento.SpeedButton2Click(Sender: TObject);
begin

  if (PERMISSAO_DESTINO = '') or (PERMISSAO_DESTINO = 'R') then
  begin
    ShowMessage('Você não possui permissão para acessar o cadastro de Destinos!');
    Exit;
  end;

  inherited;
  FrmCadastrodestino := TFrmCadastrodestino.Create(Application);
  FrmCadastrodestino.ShowModal;
  FreeAndNil(FrmCadastrodestino);

  dsdestino.DataSet.Close;
  dsdestino.DataSet.OPEN;

end;

procedure TFrmAgendaAtendimento.dbcbbSETORChange(Sender: TObject);
begin
  inherited;

  //  SqlDestino.SQL.Text := ' SELECT * FROM DESTINO '+
  //  'WHERE SETOR LIKE '+QS(dbcbbSETOR.Text+'%')+' ORDER BY DESTINO';

end;

procedure TFrmAgendaAtendimento.dbcbbSETORExit(Sender: TObject);
begin
  inherited;
  dsdestino.DataSet.Close;
  dsdestino.DataSet.OPEN;

end;

procedure TFrmAgendaAtendimento.Button2Click(Sender: TObject);
var
  destino: variant;
begin
  inherited;
  GLOBAL_INDEX_DO_GRID := 1;
  destino := BuscaGeral(nil, 'DESTINO', '', 100, 100, 600, 400);
  if VarToStrDef(destino, '') <> '' then
  begin
    DBLookupComboBoxDestino.KeyValue := destino;

    DsCadastro.DataSet.FieldByname('CARGO_SOLICITANTE').AsString :=
      DsDestino.DataSet.FieldByname('CARGO_SOLICITANTE').AsString;

    DsCadastro.DataSet.FieldByname('VOCATIVO_SOLICITANTE').AsString :=
      DsDestino.DataSet.FieldByname('VOCATIVO_SOLICITANTE').AsString;

    DsCadastro.DataSet.FieldByname('FORMA_DE_TRATAMENTO').AsString :=
      DsDestino.DataSet.FieldByname('FORMA_DE_TRATAMENTO').AsString;

    DsCadastro.DataSet.FieldByname('NOME_SOLICITANTE').AsString :=
      DsDestino.DataSet.FieldByname('RESPONSAVEL').AsString;

    DsCadastro.DataSet.FieldByname('ENDERECO_SOLICITANTE').AsString :=
      DsDestino.DataSet.FieldByname('ENDERECO').AsString;

    DsCadastro.DataSet.FieldByname('CIDADE_SOLICITANTE').AsString :=
      DsDestino.DataSet.FieldByname('CIDADE').AsString;

  end;

end;

procedure TFrmAgendaAtendimento.DBGridConsultaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

  if Assigned(DBGridConsulta.DataSource.DataSet.FindField('SELECAO')) then
  begin
    if (Column.Field = DBGridConsulta.DataSource.DataSet.FieldByName('SELECAO')) then
    begin

      DBGridConsulta.Canvas.FillRect(Rect);

      DM.ImageListSelecao.Draw(DBGridConsulta.Canvas, Rect.Left + 2, Rect.Top
        + 1, 0);

      if DBGridConsulta.DataSource.DataSet.FieldByName('SELECAO').AsString = 'S' then
        DM.ImageListSelecao.Draw(DBGridConsulta.Canvas, Rect.Left + 2,
          Rect.Top + 1, 2);
    //    else
    //      DM.ImageListSelecao.Draw(DBGridConsulta.Canvas, Rect.Left + 2,
    //        Rect.Top + 1, 1);

    end;
  end;

end;

procedure TFrmAgendaAtendimento.Button3Click(Sender: TObject);
begin
  inherited;
  with DBGridConsulta.DataSource.DataSet do
  begin
    try
      if not active then
        exit;

      if isempty then
        exit;

      DisableControls;
      first;
      while not eof do
      begin
        edit;
        FieldByName('SELECAO').AsString := 'S';
        post;
        next;
      end;
      first;

    except
    end;
    EnableControls;

  end;

end;

procedure TFrmAgendaAtendimento.Button4Click(Sender: TObject);
begin
  inherited;
  with DBGridConsulta.DataSource.DataSet do
  begin
    try

      if not active then
        exit;

      if isempty then
        exit;

      DisableControls;
      first;
      while not eof do
      begin
        edit;
        FieldByName('SELECAO').AsString := '';
        post;
        next;
      end;
      first;

    except
    end;
    EnableControls;

  end;

end;

procedure TFrmAgendaAtendimento.DBGridConsultaDblClick(Sender: TObject);
begin

  DBEditdataaudiencia.Field.EditMask := '99\/99\/9999;1;_';
  DBEditHORA.Field.EditMask := '99\:99;1;_';
  DBEdithoraaudiencia.Field.EditMask := '99\:99;1;_';

  if (DBGridConsulta.SelectedIndex = 0) then
  begin
    with DBGridConsulta.DataSource.DataSet do
    begin

      if not active then
        exit;

      if isempty then
        exit;

      if (DBGridConsulta.SelectedIndex = 0) then
      begin
        edit;

        if FieldByName('SELECAO').AsString <> 'S' then
          FieldByName('SELECAO').AsString := 'S'
        else
          FieldByName('SELECAO').AsString := '';

        post;
      end;

    end;

    exit;
  end;
  //quando clicado seta o advogado e o visitante para o respectivo interno
  //SQLAdvogado.Close;
  SQLAdvogado.ParamByName('id_interno').AsInteger := DsConsulta.DataSet.FieldByName('ID_INTERNO').AsInteger;
  ;
  //SQLAdvogado.Open;
  dsAdvogado.DataSet.Close;
  dsAdvogado.DataSet.Open;

  //SQLComboVisitante.Close;
  SQLComboVisitante.ParamByName('id_interno').AsInteger := DsConsulta.DataSet.FieldByName('ID_INTERNO').AsInteger;
  ;
  //SQLComboVisitante.Open;
  dsComboVisitante.DataSet.Close;
  dsComboVisitante.DataSet.Open;
  inherited;

  if DsCadastro.DataSet.FieldByName('id_visitante').AsInteger > 0 then
  begin
    SqlVisitante.ParamByName('id_visitante').AsInteger :=
      DsCadastro.DataSet.FieldByName('id_visitante').AsInteger;
    DsVisitante.DataSet.Close;
    DsVisitante.DataSet.Open;
  end;

  if Self.status = 'R' then
  begin
    DsCadastro.DataSet.FieldByName('IDAGENDA_ASSUNTOS').AsInteger := 309;
    DsCadastro.DataSet.FieldByName('IDAGENDA_TIPO_CONTATOS').AsInteger := 502;

    DBLookupComboBoxAssunto.Enabled := False;
    DBLookupComboBoxTipoContato.Enabled := False;
  end;

end;

procedure TFrmAgendaAtendimento.Button5Click(Sender: TObject);
var
  sPath: string;
begin
  inherited;
  with DsCadastro.DataSet do
  begin

    if not Active then
    begin
      ShowMessage('Não tem agenda posicionada na tela.');
      exit;
    end;

    if IsEmpty then
    begin
      ShowMessage('Não tem agenda posicionada na tela.');
      exit;
    end;

    if state in [dsinsert, dsedit] then
    begin
      ShowMessage('Salve este registro de agenda.');
      exit;
    end;

  end;

  with DBGridConsulta.DataSource.DataSet do
  begin
    try

      if not active then
        exit;

      if isempty then
        exit;

      GLOBAL_IDAGENDA_ATENDIMENTO := '|';

      DisableControls;
      first;
      while not eof do
      begin
        if FieldByName('SELECAO').AsString = 'S' then
        begin
          GLOBAL_IDAGENDA_ATENDIMENTO := GLOBAL_IDAGENDA_ATENDIMENTO + fieldbyname('IDAGENDA_ATENDIMENTO').asstring + '|';
        end;
        next;
      end;
      first;

    except
    end;
    EnableControls;

  end;

  if GLOBAL_IDAGENDA_ATENDIMENTO <> '' then
  begin
    try

      if not DirectoryExists(GLOBAL_PATCH_SISTEMA + '\Específicos\') then
        CreateDir(GLOBAL_PATCH_SISTEMA + '\Específicos\');

      PATH_MOMENTO := GLOBAL_PATCH_SISTEMA + '\Específicos\' + trim(copy(self.Name, 4, 100)) + 'Selecao\';
      if not DirectoryExists(PATH_MOMENTO) then
        CreateDir(PATH_MOMENTO);

      FrmMenuRelatorio := TFrmMenuRelatorio.Create(Application);
      FrmMenuRelatorio.Caption := FrmMenuRelatorio.Caption + ' - Protocolo(s): ' + GLOBAL_IDAGENDA_ATENDIMENTO;
      FrmMenuRelatorio.ShowModal;
      FreeAndNil(FrmMenuRelatorio);

    except
    end;

    PATH_MOMENTO := '';

    SetCurrentDir(GLOBAL_PATCH_SISTEMA);

  end
  else
  begin
    ShowMessage('Não tem agendamento marcado.');
  end;

end;

procedure TFrmAgendaAtendimento.SpeedButton3Click(Sender: TObject);
begin
  if (PERMISSAO_LOCALPOSTOTRABALHO = '') or (PERMISSAO_LOCALPOSTOTRABALHO = 'R') then
  begin
    ShowMessage('Você não possui permissão para acessar o cadastro de Posto/Local de Trabalho!');
    Exit;
  end;

  inherited;
  FrmPostoTrabalho := TFrmPostoTrabalho.create(Application);
  FrmPostoTrabalho.showmodal;
  FreeAndNil(FrmPostoTrabalho);

  DM.DsPostoTrabalho.DataSet.Close;
  DM.DsPostoTrabalho.DataSet.Open;

end;

procedure TFrmAgendaAtendimento.EditarClick(Sender: TObject);
var
  sPosto: string;
begin
  DBEditdataaudiencia.Field.EditMask := '99\/99\/9999;1;_';
  DBEditHORA.Field.EditMask := '99\:99;1;_';
  DBEdithoraaudiencia.Field.EditMask := '99\:99;1;_';

  inherited;

  if Self.status = 'R' then
  begin
    DsCadastro.DataSet.FieldByName('IDAGENDA_ASSUNTOS').AsInteger := 309;
    DsCadastro.DataSet.FieldByName('IDAGENDA_TIPO_CONTATOS').AsInteger := 502;

    DBLookupComboBoxAssunto.Enabled := False;
    DBLookupComboBoxTipoContato.Enabled := False;
  end;

  sPosto := uppercase(DsCadastro.DataSet.FieldByName('SETOR').AsString);
  if DsCadastro.DataSet.FieldByName('IDPOSTO_TRABALHO').AsString = '' then
  begin
    dm.DsPostoTrabalho.DataSet.filter := 'POSTO_TRABALHO LIKE ' + qs(copy(sPosto, 1, 2) + '%');
    dm.DsPostoTrabalho.DataSet.Filtered := false;
    dm.DsPostoTrabalho.DataSet.Filtered := true;
    if not dm.DsPostoTrabalho.DataSet.IsEmpty then
      DsCadastro.DataSet.FieldByName('IDPOSTO_TRABALHO').AsInteger :=
        dm.DsPostoTrabalho.DataSet.FieldByName('IDPOSTO_TRABALHO').AsInteger;
    dm.DsPostoTrabalho.DataSet.Filtered := false;
    dm.DsPostoTrabalho.DataSet.filter := '';
  end;


  if DsCadastro.DataSet.FieldByName('id_visitante').AsInteger > 0 then
  begin
    SqlVisitante.ParamByName('id_visitante').AsInteger :=
      DsCadastro.DataSet.FieldByName('id_visitante').AsInteger;
    DsVisitante.DataSet.Close;
    DsVisitante.DataSet.Open;
  end;

  //SQLAdvogado.Close;
  SQLAdvogado.ParamByName('id_interno').AsInteger := DsConsulta.DataSet.FieldByName('ID_INTERNO').AsInteger;
  ;
  //SQLAdvogado.Open;
  dsAdvogado.DataSet.Close;
  dsAdvogado.DataSet.Open;

  //SQLComboVisitante.Close;
  SQLComboVisitante.ParamByName('id_interno').AsInteger := DsConsulta.DataSet.FieldByName('ID_INTERNO').AsInteger;
  ;
  //SQLComboVisitante.Open;
  dsComboVisitante.DataSet.Close;
  dsComboVisitante.DataSet.Open;

end;

procedure TFrmAgendaAtendimento.DBLookupComboBoxDestinoClick(
  Sender: TObject);
begin
  inherited;

  DsCadastro.DataSet.FieldByname('CARGO_SOLICITANTE').AsString :=
    DsDestino.DataSet.FieldByname('CARGO_SOLICITANTE').AsString;

  DsCadastro.DataSet.FieldByname('VOCATIVO_SOLICITANTE').AsString :=
    DsDestino.DataSet.FieldByname('VOCATIVO_SOLICITANTE').AsString;

  DsCadastro.DataSet.FieldByname('FORMA_DE_TRATAMENTO').AsString :=
    DsDestino.DataSet.FieldByname('FORMA_DE_TRATAMENTO').AsString;

  DsCadastro.DataSet.FieldByname('NOME_SOLICITANTE').AsString :=
    DsDestino.DataSet.FieldByname('RESPONSAVEL').AsString;

  DsCadastro.DataSet.FieldByname('ENDERECO_SOLICITANTE').AsString :=
    DsDestino.DataSet.FieldByname('ENDERECO').AsString;

  DsCadastro.DataSet.FieldByname('CIDADE_SOLICITANTE').AsString :=
    DsDestino.DataSet.FieldByname('CIDADE').AsString;

end;

procedure TFrmAgendaAtendimento.Button6Click(Sender: TObject);
var
  sPath, oficio: string;
  num_oficio: integer;

begin
  inherited;

  oficio := InputBox('Informe o ofício inicial', 'Digite o primeiro', '');
  while strtointdef(oficio, 0) = 0 do
  begin
    if strtointdef(oficio, 0) = 0 then
    begin
      if Application.MessageBox('Cancelar a renumeração de ofícios?',
        'Confirme.', mb_YesNo + Mb_IconQuestion) = idYes then
      begin
        break;
      end;
    end;
    oficio := InputBox('Informe o ofício inicial', 'Digite o primeiro:', '');
  end;

  if strtointdef(oficio, 0) = 0 then
    exit;

  num_oficio := strtoint(oficio);

  with DsCadastro.DataSet do
  begin

    if not Active then
    begin
      ShowMessage('Não tem agenda posicionada na tela.');
      exit;
    end;

    if IsEmpty then
    begin
      ShowMessage('Não tem agenda posicionada na tela.');
      exit;
    end;

    if state in [dsinsert, dsedit] then
    begin
      ShowMessage('Salve este registro de agenda.');
      exit;
    end;

  end;

  with DBGridConsulta.DataSource.DataSet do
  begin
    try
      if not active then
        exit;

      if isempty then
        exit;

      GLOBAL_IDAGENDA_ATENDIMENTO := '';

      IniciaTransCadastro;
      first;
      while not eof do
      begin
        if FieldByName('SELECAO').AsString = 'S' then
        begin
          GLOBAL_IDAGENDA_ATENDIMENTO := GLOBAL_IDAGENDA_ATENDIMENTO + fieldbyname('IDAGENDA_ATENDIMENTO').asstring + ',';

          DsCadastro.DataSet.Edit;
          DsCadastro.DataSet.FieldByName('NUMERO_OFICIO').asstring := inttostr(num_oficio);
          DsCadastro.DataSet.Post;
          Edit;
          FieldByName('NUMERO_OFICIO').asstring := inttostr(num_oficio);
          Post;
          inc(num_oficio);

        end;
        next;
      end;

      first;

      if Application.MessageBox('Salvar os ofícios gerados?',
        'Confirme.', mb_YesNo + Mb_IconQuestion) = idYes then
      begin
        CdsCadastro.ApplyUpdates(-1);
        FinalizaTransCadastro;
      end
      else
      begin
        CancelaTransCadastro;
        ReabrirMesmoRegistro(DsConsulta);
        exit;
      end;

    except
      on e: Exception do
      begin
        CancelaTransCadastro;
        ShowMessage('Inconsistência nos dados:' + TrataExceptionErro(e.Message));
        exit;
      end;
    end;

    EnableControls;

  end;

  ReabrirMesmoRegistro(DsConsulta);

  if GLOBAL_IDAGENDA_ATENDIMENTO <> '' then
  begin
    try

      if not DirectoryExists(GLOBAL_PATCH_SISTEMA + '\Específicos\') then
        CreateDir(GLOBAL_PATCH_SISTEMA + '\Específicos\');

      PATH_MOMENTO := GLOBAL_PATCH_SISTEMA + '\Específicos\' + trim(copy(self.Name, 4, 100)) + 'Selecao\';
      if not DirectoryExists(PATH_MOMENTO) then
        CreateDir(PATH_MOMENTO);

      FrmMenuRelatorio := TFrmMenuRelatorio.Create(Application);
      FrmMenuRelatorio.Caption := FrmMenuRelatorio.Caption + ' - Protocolo(s): ' + GLOBAL_IDAGENDA_ATENDIMENTO;
      FrmMenuRelatorio.ShowModal;
      FreeAndNil(FrmMenuRelatorio);

    except
    end;

    PATH_MOMENTO := '';

    SetCurrentDir(GLOBAL_PATCH_SISTEMA);

  end
  else
  begin
    ShowMessage('Não tem agendamento marcado.');
  end;

end;

procedure TFrmAgendaAtendimento.Button7Click(Sender: TObject);
var
  visita: variant;
  sSql: string;
begin
  inherited;

  sSql := 'SELECT ID_VISITANTE AS CODIGO, VISITANTE FROM VISITANTE '
    + ' WHERE VISITANTE LIKE ' + qs('%' + UpperCase(InputBox('Informe parte do nome a procurar.', 'Digite algumas letras.', '(NOME VISITANTE)')) + '%')
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

procedure TFrmAgendaAtendimento.EditRGIChange(Sender: TObject);
begin
  inherited;

  DsConsulta.DataSet.filtered := False;
  DsConsulta.DataSet.filtered := True;
end;

procedure TFrmAgendaAtendimento.DBLookupComboBoxInternoClick(
  Sender: TObject);
begin
  inherited;

  DsCadastro.DataSet.FieldByName('ID_ADVOGADO').AsVariant := Null;
 // SQLAdvogado.Close;
  SQLAdvogado.ParamByName('id_interno').AsInteger := DBLookupComboBoxInterno.KeyValue;
 // SQLAdvogado.Open;
  dsAdvogado.DataSet.Close;
  dsAdvogado.DataSet.Open;

  DsCadastro.DataSet.FieldByName('ID_VISITANTE').AsVariant := Null;
 // SQLComboVisitante.Close;
  SQLComboVisitante.ParamByName('id_interno').AsInteger := DBLookupComboBoxInterno.KeyValue;
  //SQLComboVisitante.Open;
  dsComboVisitante.DataSet.Close;
  dsComboVisitante.DataSet.Open;

end;

procedure TFrmAgendaAtendimento.DBLookupComboBoxAdvogadoEnter(
  Sender: TObject);
begin
  inherited;
  if DBLookupComboBoxInterno.KeyValue = Null then
  begin
    ShowMessage('Selecione um Interno!');
    Exit;
  end;

end;

procedure TFrmAgendaAtendimento.dblookupcomboboxvisitanteEnter(
  Sender: TObject);
begin
  inherited;
  if DBLookupComboBoxInterno.KeyValue = Null then
  begin
    ShowMessage('Selecione um Interno!');
    Exit;
  end;

end;

procedure TFrmAgendaAtendimento.CheckBoxTodosPostosClick(Sender: TObject);
begin
  inherited;
  if CheckBoxTodosPostos.Checked then
  begin
    DBLookupComboBoxPostoTrabalhoConsulta.Enabled := false;
    DBLookupComboBoxPostoTrabalhoConsulta.KeyValue := null;
    btn4Click(nil);
  end
  else
  begin
    DBLookupComboBoxPostoTrabalhoConsulta.Enabled := true;
    DBLookupComboBoxPostoTrabalhoConsulta.KeyValue := DM.DsPostoTrabalho.DataSet.fieldbyname('IDPOSTO_TRABALHO').AsString;
    btn4Click(nil);
  end;

end;

procedure TFrmAgendaAtendimento.CdsConsultaFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;

  if tipo_pesquisa = 'NOME_INTERNO' then
  begin
    if DataSet[tipo_pesquisa] <> Null then
    begin

      if EditLocalizar.Text <> ' ' then
      begin

        if (CheckBoxTodosSituacao.Checked) {and (CheckBoxPeriodo.checked)} then
        begin
          if EditLocalizar.Text <> '' then
          begin

            if (Length(EditLocalizar.Text) >= 3) then
            begin
              if (pos(AnsiUpperCase(RemoveAcentos(EditLocalizar.Text)),
                AnsiUpperCase(RemoveAcentos(DataSet[tipo_pesquisa]))) <> 0) then
              begin
                Accept := true;
              end
              else
                Accept := false;
            end
            else
              Accept := true;

          end
          else
          begin
            Accept := true;
          end;
        end;

        if (not CheckBoxTodosSituacao.Checked) {and (CheckBoxPeriodo.checked)} then
        begin
          if EditLocalizar.Text <> '' then
          begin

            if (Length(EditLocalizar.Text) >= 3) then
            begin
              if (pos(AnsiUpperCase(RemoveAcentos(EditLocalizar.Text)),
                AnsiUpperCase(RemoveAcentos(DataSet[tipo_pesquisa]))) <> 0)
                and (DataSet['IDAGENDA_SITUACAO'] = DBLookupComboBoxIDAGENDA_SITUACAO.KeyValue) then
              begin
                Accept := true;
              end
              else
                Accept := false;
            end
            else
            begin
              if (DataSet['IDAGENDA_SITUACAO'] = DBLookupComboBoxIDAGENDA_SITUACAO.KeyValue) then
              begin
                Accept := true;
              end
              else
                Accept := false;
            end;

          end
          else
          begin

            if (DataSet['IDAGENDA_SITUACAO'] = DBLookupComboBoxIDAGENDA_SITUACAO.KeyValue) then
            begin
              Accept := true;
            end
            else
              Accept := false;

          end;
        end;

        {if (CheckBoxTodosSituacao.Checked) and (not CheckBoxPeriodo.checked) then
        begin
          if EditLocalizar.Text <> '' then
          begin

            if (Length(EditLocalizar.Text) >= 3) then
            begin
              if (pos(AnsiUpperCase(RemoveAcentos(EditLocalizar.Text)),
                AnsiUpperCase(RemoveAcentos(DataSet[tipo_pesquisa]))) <> 0)
                and (DataSet['DATA_AGENDA'] >= FormatDateTime('DD/MM/YYYY', DateTimePickerInicial.Date))
                and (DataSet['DATA_AGENDA'] <= FormatDateTime('DD/MM/YYYY', DateTimePickerFinal.Date)) then
              begin
                Accept := true;
              end
              else
                Accept := false;
            end
            else
            begin
              if (DataSet['DATA_AGENDA'] >= FormatDateTime('DD/MM/YYYY', DateTimePickerInicial.Date))
                and (DataSet['DATA_AGENDA'] <= FormatDateTime('DD/MM/YYYY', DateTimePickerFinal.Date)) then
              begin
                Accept := true;
              end
              else
                Accept := false;
            end;

          end
          else
          begin

            if (DataSet['DATA_AGENDA'] >= FormatDateTime('DD/MM/YYYY', DateTimePickerInicial.Date))
              and (DataSet['DATA_AGENDA'] <= FormatDateTime('DD/MM/YYYY', DateTimePickerFinal.Date)) then
            begin
              Accept := true;
            end
            else
              Accept := false;

          end;
        end;}

        {if (not CheckBoxTodosSituacao.Checked) and (not CheckBoxPeriodo.checked) then
        begin
          if EditLocalizar.Text <> '' then
          begin

            if (Length(EditLocalizar.Text) >= 3) then
            begin
              if (pos(AnsiUpperCase(RemoveAcentos(EditLocalizar.Text)),
                AnsiUpperCase(RemoveAcentos(DataSet[tipo_pesquisa]))) <> 0)
                and (DataSet['IDAGENDA_SITUACAO'] = DBLookupComboBoxIDAGENDA_SITUACAO.KeyValue)
                and (DataSet['DATA_AGENDA'] >= FormatDateTime('DD/MM/YYYY', DateTimePickerInicial.Date))
                and (DataSet['DATA_AGENDA'] <= FormatDateTime('DD/MM/YYYY', DateTimePickerFinal.Date)) then
              begin
                Accept := true;
              end
              else
                Accept := false;
            end
            else
            begin
              if (DataSet['IDAGENDA_SITUACAO'] = DBLookupComboBoxIDAGENDA_SITUACAO.KeyValue)
                and (DataSet['DATA_AGENDA'] >= FormatDateTime('DD/MM/YYYY', DateTimePickerInicial.Date))
                and (DataSet['DATA_AGENDA'] <= FormatDateTime('DD/MM/YYYY', DateTimePickerFinal.Date)) then
              begin
                Accept := true;
              end
              else
                Accept := false;
            end;

          end
          else
          begin

            if (DataSet['IDAGENDA_SITUACAO'] = DBLookupComboBoxIDAGENDA_SITUACAO.KeyValue)
              and (DataSet['DATA_AGENDA'] >= FormatDateTime('DD/MM/YYYY', DateTimePickerInicial.Date))
              and (DataSet['DATA_AGENDA'] <= FormatDateTime('DD/MM/YYYY', DateTimePickerFinal.Date)) then
            begin
              Accept := true;
            end
            else
              Accept := false;

          end;
        end;}

      end
      else
      begin

        if (CheckBoxTodosSituacao.Checked) {and (CheckBoxPeriodo.checked)} then
        begin
          if (pos(AnsiUpperCase(RemoveAcentos(EditLocalizar.Text)),
            AnsiUpperCase(RemoveAcentos(DataSet[tipo_pesquisa]))) = 1) then
          begin
            Accept := true;
          end
          else
            Accept := false;
        end;

        if (not CheckBoxTodosSituacao.Checked) {and (CheckBoxPeriodo.checked)} then
        begin
          if (pos(AnsiUpperCase(RemoveAcentos(EditLocalizar.Text)),
            AnsiUpperCase(RemoveAcentos(DataSet[tipo_pesquisa]))) = 1)
            and (DataSet['IDAGENDA_SITUACAO'] = DBLookupComboBoxIDAGENDA_SITUACAO.KeyValue) then
          begin
            Accept := true;
          end
          else
            Accept := false;
        end;

        {if (CheckBoxTodosSituacao.Checked) and (not CheckBoxPeriodo.checked) then
        begin
          if (pos(AnsiUpperCase(RemoveAcentos(EditLocalizar.Text)),
            AnsiUpperCase(RemoveAcentos(DataSet[tipo_pesquisa]))) = 1)
            and (DataSet['DATA_AGENDA'] >= FormatDateTime('DD/MM/YYYY', DateTimePickerInicial.Date))
            and (DataSet['DATA_AGENDA'] <= FormatDateTime('DD/MM/YYYY', DateTimePickerFinal.Date)) then
          begin
            Accept := true;
          end
          else
            Accept := false;
        end;}

        {if (not CheckBoxTodosSituacao.Checked) and (not CheckBoxPeriodo.checked) then
        begin
          if (pos(AnsiUpperCase(RemoveAcentos(EditLocalizar.Text)),
            AnsiUpperCase(RemoveAcentos(DataSet[tipo_pesquisa]))) = 1)
            and (DataSet['IDAGENDA_SITUACAO'] = DBLookupComboBoxIDAGENDA_SITUACAO.KeyValue)
            and (DataSet['DATA_AGENDA'] >= FormatDateTime('DD/MM/YYYY', DateTimePickerInicial.Date))
            and (DataSet['DATA_AGENDA'] <= FormatDateTime('DD/MM/YYYY', DateTimePickerFinal.Date)) then
          begin
            Accept := true;
          end
          else
            Accept := false;
        end;}

      end;

    end
    else
    begin
      if EditLocalizar.Text = ' ' then
        Accept := true
      else
        Accept := false;
    end;
  end;

  if tipo_pesquisa = 'RGI' then
  begin
    if DataSet[tipo_pesquisa] <> Null then
    begin

      if EditRGI.Text <> ' ' then
      begin

        if (CheckBoxTodosSituacao.Checked) {and (CheckBoxPeriodo.checked)} then
        begin
          if EditRGI.Text <> '' then
          begin

            if (AnsiUpperCase(RemoveAcentos(EditRGI.Text)) =
              AnsiUpperCase(RemoveAcentos(DataSet[tipo_pesquisa]))) then
            begin
              Accept := true;
            end
            else
              Accept := false;

          end
          else
          begin
            Accept := true;
          end;
        end;

        if (not CheckBoxTodosSituacao.Checked) {and (CheckBoxPeriodo.checked)} then
        begin
          if EditRGI.Text <> '' then
          begin

            if (AnsiUpperCase(RemoveAcentos(EditRGI.Text)) =
              AnsiUpperCase(RemoveAcentos(DataSet[tipo_pesquisa])))
              and (DataSet['IDAGENDA_SITUACAO'] = DBLookupComboBoxIDAGENDA_SITUACAO.KeyValue) then
            begin
              Accept := true;
            end
            else
              Accept := false;

          end
          else
          begin

            if (DataSet['IDAGENDA_SITUACAO'] = DBLookupComboBoxIDAGENDA_SITUACAO.KeyValue) then
            begin
              Accept := true;
            end
            else
              Accept := false;

          end;
        end;

        {if (CheckBoxTodosSituacao.Checked) and (not CheckBoxPeriodo.checked) then
        begin
          if EditRGI.Text <> '' then
          begin

            if (AnsiUpperCase(RemoveAcentos(EditRGI.Text)) =
              AnsiUpperCase(RemoveAcentos(DataSet[tipo_pesquisa])))
              and (DataSet['DATA_AGENDA'] >= FormatDateTime('DD/MM/YYYY', DateTimePickerInicial.Date))
              and (DataSet['DATA_AGENDA'] <= FormatDateTime('DD/MM/YYYY', DateTimePickerFinal.Date)) then
            begin
              Accept := true;
            end
            else
              Accept := false;

          end
          else
          begin

            if (DataSet['DATA_AGENDA'] >= FormatDateTime('DD/MM/YYYY', DateTimePickerInicial.Date))
              and (DataSet['DATA_AGENDA'] <= FormatDateTime('DD/MM/YYYY', DateTimePickerFinal.Date)) then
            begin
              Accept := true;
            end
            else
              Accept := false;

          end;
        end; }

        {if (not CheckBoxTodosSituacao.Checked) and (not CheckBoxPeriodo.checked) then
        begin
          if EditRGI.Text <> '' then
          begin

            if (AnsiUpperCase(RemoveAcentos(EditRGI.Text)) =
              AnsiUpperCase(RemoveAcentos(DataSet[tipo_pesquisa])))
              and (DataSet['IDAGENDA_SITUACAO'] = DBLookupComboBoxIDAGENDA_SITUACAO.KeyValue)
              and (DataSet['DATA_AGENDA'] >= FormatDateTime('DD/MM/YYYY', DateTimePickerInicial.Date))
              and (DataSet['DATA_AGENDA'] <= FormatDateTime('DD/MM/YYYY', DateTimePickerFinal.Date)) then
            begin
              Accept := true;
            end
            else
              Accept := false;

          end
          else
          begin

            if (DataSet['IDAGENDA_SITUACAO'] = DBLookupComboBoxIDAGENDA_SITUACAO.KeyValue)
              and (DataSet['DATA_AGENDA'] >= FormatDateTime('DD/MM/YYYY', DateTimePickerInicial.Date))
              and (DataSet['DATA_AGENDA'] <= FormatDateTime('DD/MM/YYYY', DateTimePickerFinal.Date)) then
            begin
              Accept := true;
            end
            else
              Accept := false;

          end;
        end;}

      end
      else
      begin

        if (CheckBoxTodosSituacao.Checked) {and (CheckBoxPeriodo.checked)} then
        begin
          if (pos(AnsiUpperCase(RemoveAcentos(EditRGI.Text)),
            AnsiUpperCase(RemoveAcentos(DataSet[tipo_pesquisa]))) = 1) then
          begin
            Accept := true;
          end
          else
            Accept := false;
        end;

        if (not CheckBoxTodosSituacao.Checked) {and (CheckBoxPeriodo.checked)} then
        begin
          if (pos(AnsiUpperCase(RemoveAcentos(EditRGI.Text)),
            AnsiUpperCase(RemoveAcentos(DataSet[tipo_pesquisa]))) = 1)
            and (DataSet['IDAGENDA_SITUACAO'] = DBLookupComboBoxIDAGENDA_SITUACAO.KeyValue) then
          begin
            Accept := true;
          end
          else
            Accept := false;
        end;

        {if (CheckBoxTodosSituacao.Checked) and (not CheckBoxPeriodo.checked) then
        begin
          if (pos(AnsiUpperCase(RemoveAcentos(EditRGI.Text)),
            AnsiUpperCase(RemoveAcentos(DataSet[tipo_pesquisa]))) = 1)
            and (DataSet['DATA_AGENDA'] >= FormatDateTime('DD/MM/YYYY', DateTimePickerInicial.Date))
            and (DataSet['DATA_AGENDA'] <= FormatDateTime('DD/MM/YYYY', DateTimePickerFinal.Date)) then
          begin
            Accept := true;
          end
          else
            Accept := false;
        end;}

        {if (not CheckBoxTodosSituacao.Checked) and (not CheckBoxPeriodo.checked) then
        begin
          if (pos(AnsiUpperCase(RemoveAcentos(EditRGI.Text)),
            AnsiUpperCase(RemoveAcentos(DataSet[tipo_pesquisa]))) = 1)
            and (DataSet['IDAGENDA_SITUACAO'] = DBLookupComboBoxIDAGENDA_SITUACAO.KeyValue)
            and (DataSet['DATA_AGENDA'] >= FormatDateTime('DD/MM/YYYY', DateTimePickerInicial.Date))
            and (DataSet['DATA_AGENDA'] <= FormatDateTime('DD/MM/YYYY', DateTimePickerFinal.Date)) then
          begin
            Accept := true;
          end
          else
            Accept := false;
        end;}

      end;

    end
    else
    begin
      if EditRGI.Text = ' ' then
        Accept := true
      else
        Accept := false;
    end;
  end;

  if tipo_pesquisa = 'IDAGENDA_ATENDIMENTO' then
  begin
    if DataSet[tipo_pesquisa] <> Null then
    begin

      if Editprotocolo.Text <> ' ' then
      begin

        if (CheckBoxTodosSituacao.Checked) {and (CheckBoxPeriodo.checked)} then
        begin
          if Editprotocolo.Text <> '' then
          begin

            if (AnsiUpperCase(RemoveAcentos(Editprotocolo.Text)) =
              AnsiUpperCase(RemoveAcentos(DataSet[tipo_pesquisa]))) then
            begin
              Accept := true;
            end
            else
              Accept := false;

          end
          else
          begin
            Accept := true;
          end;
        end;

        if (not CheckBoxTodosSituacao.Checked) {and (CheckBoxPeriodo.checked)} then
        begin
          if Editprotocolo.Text <> '' then
          begin

            if (AnsiUpperCase(RemoveAcentos(Editprotocolo.Text)) =
              AnsiUpperCase(RemoveAcentos(DataSet[tipo_pesquisa])))
              and (DataSet['IDAGENDA_SITUACAO'] = DBLookupComboBoxIDAGENDA_SITUACAO.KeyValue) then
            begin
              Accept := true;
            end
            else
              Accept := false;

          end
          else
          begin

            if (DataSet['IDAGENDA_SITUACAO'] = DBLookupComboBoxIDAGENDA_SITUACAO.KeyValue) then
            begin
              Accept := true;
            end
            else
              Accept := false;

          end;
        end;

        {if (CheckBoxTodosSituacao.Checked) and (not CheckBoxPeriodo.checked) then
        begin
          if Editprotocolo.Text <> '' then
          begin

            if (AnsiUpperCase(RemoveAcentos(Editprotocolo.Text)) =
              AnsiUpperCase(RemoveAcentos(DataSet[tipo_pesquisa])))
              and (DataSet['DATA_AGENDA'] >= FormatDateTime('DD/MM/YYYY', DateTimePickerInicial.Date))
              and (DataSet['DATA_AGENDA'] <= FormatDateTime('DD/MM/YYYY', DateTimePickerFinal.Date)) then
            begin
              Accept := true;
            end
            else
              Accept := false;

          end
          else
          begin

            if (DataSet['DATA_AGENDA'] >= FormatDateTime('DD/MM/YYYY', DateTimePickerInicial.Date))
              and (DataSet['DATA_AGENDA'] <= FormatDateTime('DD/MM/YYYY', DateTimePickerFinal.Date)) then
            begin
              Accept := true;
            end
            else
              Accept := false;

          end;
        end;}

        {if (not CheckBoxTodosSituacao.Checked) and (not CheckBoxPeriodo.checked) then
        begin
          if Editprotocolo.Text <> '' then
          begin

            if (AnsiUpperCase(RemoveAcentos(Editprotocolo.Text)) =
              AnsiUpperCase(RemoveAcentos(DataSet[tipo_pesquisa])))
              and (DataSet['IDAGENDA_SITUACAO'] = DBLookupComboBoxIDAGENDA_SITUACAO.KeyValue)
              and (DataSet['DATA_AGENDA'] >= FormatDateTime('DD/MM/YYYY', DateTimePickerInicial.Date))
              and (DataSet['DATA_AGENDA'] <= FormatDateTime('DD/MM/YYYY', DateTimePickerFinal.Date)) then
            begin
              Accept := true;
            end
            else
              Accept := false;

          end
          else
          begin

            if (DataSet['IDAGENDA_SITUACAO'] = DBLookupComboBoxIDAGENDA_SITUACAO.KeyValue)
              and (DataSet['DATA_AGENDA'] >= FormatDateTime('DD/MM/YYYY', DateTimePickerInicial.Date))
              and (DataSet['DATA_AGENDA'] <= FormatDateTime('DD/MM/YYYY', DateTimePickerFinal.Date)) then
            begin
              Accept := true;
            end
            else
              Accept := false;

          end;
        end;}

      end
      else
      begin

        if (CheckBoxTodosSituacao.Checked) {and (CheckBoxPeriodo.checked)} then
        begin
          if (pos(AnsiUpperCase(RemoveAcentos(Editprotocolo.Text)),
            AnsiUpperCase(RemoveAcentos(DataSet[tipo_pesquisa]))) = 1) then
          begin
            Accept := true;
          end
          else
            Accept := false;
        end;

        if (not CheckBoxTodosSituacao.Checked) {and (CheckBoxPeriodo.checked)} then
        begin
          if (pos(AnsiUpperCase(RemoveAcentos(Editprotocolo.Text)),
            AnsiUpperCase(RemoveAcentos(DataSet[tipo_pesquisa]))) = 1)
            and (DataSet['IDAGENDA_SITUACAO'] = DBLookupComboBoxIDAGENDA_SITUACAO.KeyValue) then
          begin
            Accept := true;
          end
          else
            Accept := false;
        end;

        {if (CheckBoxTodosSituacao.Checked) and (not CheckBoxPeriodo.checked) then
        begin
          if (pos(AnsiUpperCase(RemoveAcentos(Editprotocolo.Text)),
            AnsiUpperCase(RemoveAcentos(DataSet[tipo_pesquisa]))) = 1)
            and (DataSet['DATA_AGENDA'] >= FormatDateTime('DD/MM/YYYY', DateTimePickerInicial.Date))
            and (DataSet['DATA_AGENDA'] <= FormatDateTime('DD/MM/YYYY', DateTimePickerFinal.Date)) then
          begin
            Accept := true;
          end
          else
            Accept := false;
        end;}

        {if (not CheckBoxTodosSituacao.Checked) and (not CheckBoxPeriodo.checked) then
        begin
          if (pos(AnsiUpperCase(RemoveAcentos(Editprotocolo.Text)),
            AnsiUpperCase(RemoveAcentos(DataSet[tipo_pesquisa]))) = 1)
            and (DataSet['IDAGENDA_SITUACAO'] = DBLookupComboBoxIDAGENDA_SITUACAO.KeyValue)
            and (DataSet['DATA_AGENDA'] >= FormatDateTime('DD/MM/YYYY', DateTimePickerInicial.Date))
            and (DataSet['DATA_AGENDA'] <= FormatDateTime('DD/MM/YYYY', DateTimePickerFinal.Date)) then
          begin
            Accept := true;
          end
          else
            Accept := false;
        end;}

      end;

    end
    else
    begin
      if Editprotocolo.Text = ' ' then
        Accept := true
      else
        Accept := false;
    end;
  end;

end;

procedure TFrmAgendaAtendimento.EditLocalizarEnter(Sender: TObject);
begin
  inherited;
  tipo_pesquisa := 'NOME_INTERNO';
  EditRGI.Text := '';
  Editprotocolo.Text := '';
end;

procedure TFrmAgendaAtendimento.EditRGIEnter(Sender: TObject);
begin
  inherited;
  tipo_pesquisa := 'RGI';
  EditLocalizar.Text := '';
  Editprotocolo.Text := '';
end;

procedure TFrmAgendaAtendimento.EditprotocoloEnter(Sender: TObject);
begin
  inherited;
  tipo_pesquisa := 'IDAGENDA_ATENDIMENTO';
  EditRGI.Text := '';
  EditLocalizar.Text := '';
end;

procedure TFrmAgendaAtendimento.CheckBoxTodosSituacaoClick(
  Sender: TObject);
begin
  inherited;
  if CheckBoxTodosSituacao.Checked then
  begin
    DBLookupComboBoxIDAGENDA_SITUACAO.Enabled := false;
    DBLookupComboBoxIDAGENDA_SITUACAO.KeyValue := 0;
  end
  else
  begin
    DBLookupComboBoxIDAGENDA_SITUACAO.Enabled := true;
    DBLookupComboBoxIDAGENDA_SITUACAO.KeyValue := DM.DsSituacao.DataSet.fieldbyname('IDAGENDA_SITUACAO').AsString;
  end;

  EditLocalizarChange(nil);

end;

procedure TFrmAgendaAtendimento.DBLookupComboBoxPostoTrabalhoConsultaCloseUp(
  Sender: TObject);
begin
  inherited;

  btn4Click(nil);
end;

procedure TFrmAgendaAtendimento.DsConsultaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  SQLAdvogado.ParamByName('id_interno').AsInteger := DsConsulta.DataSet.FieldByName('ID_INTERNO').AsInteger;
  dsAdvogado.DataSet.Close;
  dsAdvogado.DataSet.Open;

  SQLComboVisitante.ParamByName('id_interno').AsInteger := DsConsulta.DataSet.FieldByName('ID_INTERNO').AsInteger;
  dsComboVisitante.DataSet.Close;
  dsComboVisitante.DataSet.Open;
end;

end.

