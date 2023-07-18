unit CadastroInternoEducacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloInterno, FMTBcd, DB, DBClient, Provider, SqlExpr, ImgList,
  ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Mask, Buttons,
  ToolWin, jpeg, dbcgrids, Menus, adpDBDateTimePicker, System.ImageList,FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmCadastroInternoEducacao = class(TFrmModeloInterno)
    TabSheet1: TTabSheet;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    DBEditdtmatricula: TDBEdit;
    DBEditobseducacao: TDBEdit;
    DBLookupComboBoxserie: TDBLookupComboBox;
    DBComboBoxperiodo: TDBComboBox;
    DSHISTORICOEDUCACAO: TDataSource;
    CDSHISTORICOEDUCACAO: TClientDataSet;
    CDSHISTORICOEDUCACAOID_HISTORICO_ESTUDO: TIntegerField;
    CDSHISTORICOEDUCACAODATA_HISTORICO: TSQLTimeStampField;
    CDSHISTORICOEDUCACAOID_INTERNO: TIntegerField;
    CDSHISTORICOEDUCACAOHISTORICO: TStringField;
    DSPHISTORICOEDUCACAO: TDataSetProvider;
    SQLHISTORICOEDUCACAO: TSQLQuery;
    DBComboBoxdeficiencia: TDBComboBox;
    Label8: TLabel;
    TabSheet3: TTabSheet;
    SQLremissao_estudo: TSQLQuery;
    DSPremissao_estudo: TDataSetProvider;
    CDSremissao_estudo: TClientDataSet;
    DSremissao_estudo: TDataSource;
    DBEditturma: TDBEdit;
    Label15: TLabel;
    CDSHISTORICOEDUCACAODEFICIENCIA: TStringField;
    CDSHISTORICOEDUCACAOID_SERIE_ESTUDO: TIntegerField;
    CDSHISTORICOEDUCACAODATA_MATRICULA: TSQLTimeStampField;
    CDSHISTORICOEDUCACAOPERIODO: TStringField;
    CDSHISTORICOEDUCACAOTURMA: TStringField;
    CDSHISTORICOEDUCACAOID_FUNCIONARIO: TIntegerField;
    Btncancelarmatricula: TBitBtn;
    CDSHISTORICOEDUCACAODATA_SAIDA: TSQLTimeStampField;
    btnreativarmatricula: TBitBtn;
    TabSheet5: TTabSheet;
    Label57: TLabel;
    Label58: TLabel;
    MaskEdit2: TMaskEdit;
    Button2: TButton;
    DBGrid2: TDBGrid;
    DBMemo2: TDBMemo;
    Memohistorico: TMemo;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Label26: TLabel;
    Label29: TLabel;
    Label14: TLabel;
    Edithoras: TEdit;
    adpDBDateTimePickerdtinicial: TadpDBDateTimePicker;
    BitBtn3: TBitBtn;
    TabSheet4: TTabSheet;
    DBGrid1: TDBGrid;
    SQLcertidao_estudo: TSQLQuery;
    dspcertidao_estudo: TDataSetProvider;
    cdscertidao_estudo: TClientDataSet;
    dscertidao_estudo: TDataSource;
    Label41: TLabel;
    Label42: TLabel;
    Label56: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label48: TLabel;
    DateTimePickerdtinicialcertidao: TDateTimePicker;
    Editdiasestudo: TEdit;
    Editdiasremido: TEdit;
    Editsaldoanterior: TEdit;
    Editsaldoproximo: TEdit;
    DBGrid4: TDBGrid;
    adpDBDateTimePickerdtfinalcertidao: TadpDBDateTimePicker;
    Label50: TLabel;
    edittotalestudo: TEdit;
    BitBtn4: TBitBtn;
    adpDBDateTimePickerdtfinalremicao: TadpDBDateTimePicker;
    BitBtn5: TBitBtn;
    PopupMenuexcluirremissao: TPopupMenu;
    ExcluirRegistro1: TMenuItem;
    PopupMenuexcluiratestado: TPopupMenu;
    ExcluirRegistro2: TMenuItem;
    TabSheet6: TTabSheet;
    SQLDiasLivro: TSQLQuery;
    dspDiasLivro: TDataSetProvider;
    cdsDiasLivro: TClientDataSet;
    dsDiasLivro: TDataSource;
    BitBtnInserirDiasLivro: TBitBtn;
    EditQtdeLivro: TEdit;
    Label51: TLabel;
    adpDBDateTimePickerLivrosFinal: TadpDBDateTimePicker;
    adpDBDateTimePickerLivroInicial: TadpDBDateTimePicker;
    Label53: TLabel;
    Label67: TLabel;
    DBGridLivros: TDBGrid;
    TabSheet7: TTabSheet;
    adpDBDateTimePickerLivroDtInicialAtestado: TadpDBDateTimePicker;
    adpDBDateTimePickerLivroDtFinalAtestado: TadpDBDateTimePicker;
    Label68: TLabel;
    Label70: TLabel;
    EditLivros: TEdit;
    EditRemidos: TEdit;
    Label71: TLabel;
    Label72: TLabel;
    BitBtnCalcularLivro: TBitBtn;
    BitBtnInserirAtestadoLivro: TBitBtn;
    DBGrid3: TDBGrid;
    SQLQuery1: TSQLQuery;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    TabSheet8: TTabSheet;
    adpDBDateTimePicker1: TadpDBDateTimePicker;
    Label73: TLabel;
    Label74: TLabel;
    BitBtn1: TBitBtn;
    DBGrid5: TDBGrid;
    ComboTurma: TComboBox;
    SqlPortaria: TSQLQuery;
    dspportaria: TDataSetProvider;
    cdsportaria: TClientDataSet;
    dsportaria: TDataSource;
    EditPortaria: TEdit;
    Label75: TLabel;
    PopupEncerrarPortaria: TPopupMenu;
    Encerrar_portaria: TMenuItem;
    ExcluirPortaria1: TMenuItem;
    Portaria: TLabel;
    SQLPortariaAluno: TSQLQuery;
    cdsportariaaluno: TClientDataSet;
    dsportariaaluno: TDataSource;
    dspportariaaluno: TDataSetProvider;
    SQLPortariaAlunoTURMA: TStringField;
    SQLPortariaAlunoID_PORTARIA_EDUCACAO: TIntegerField;
    SQLPortariaAlunoID_INTERNO: TIntegerField;
    SQLPortariaAlunoDATA_ENTRADA: TSQLTimeStampField;
    SQLPortariaAlunoID_FUNCIONARIO: TIntegerField;
    SQLPortariaAlunoOBS: TStringField;
    SQLPortariaAlunoDATA_FINAL: TSQLTimeStampField;
    SQLPortariaAlunoPORTARIA: TStringField;
    ComboSalas: TComboBox;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure DBComboBoxdeficienciaKeyPress(Sender: TObject;
      var Key: Char);
    procedure EditarClick(Sender: TObject);
    procedure DBGridConsultaDblClick(Sender: TObject);
    procedure BtncancelarmatriculaClick(Sender: TObject);
    procedure btnreativarmatriculaClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure PageControlPrincipalChange(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ExcluirRegistro1Click(Sender: TObject);
    procedure ExcluirRegistro2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure CancelarClick(Sender: TObject);
    procedure PageControlModeloCadastroChange(Sender: TObject);
    procedure BitBtnInserirDiasLivroClick(Sender: TObject);
    procedure BitBtnCalcularLivroClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Encerrar_portariaClick(Sender: TObject);
    procedure ExcluirPortaria1Click(Sender: TObject);
  private
    { Private declarations }
    steducacao: string;
    diasRemidos, qtdeLivros : integer;
  public
    { Public declarations }
  end;

var
  FrmCadastroInternoEducacao: TFrmCadastroInternoEducacao;

implementation

uses DmPrincipal, Lib, ModeloCadastro, EncerrarPortaria;

{$R *.dfm}

procedure TFrmCadastroInternoEducacao.Button2Click(Sender: TObject);
begin
  inherited;
  DSHISTORICOEDUCACAO.DataSet.Append;
  DSHISTORICOEDUCACAO.DataSet.fieldbyname('id_historico_estudo').AsInteger := 0;
  DSHISTORICOEDUCACAO.DataSet.fieldbyname('id_interno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  DSHISTORICOEDUCACAO.DataSet.fieldbyname('data_historico').AsString := MaskEdit2.Text;
  DSHISTORICOEDUCACAO.DataSet.fieldbyname('historico').AsString := Memohistorico.Text;
  DSHISTORICOEDUCACAO.DataSet.Post;

  Memohistorico.Text := '';
  MaskEdit2.Text := '';

end;

procedure TFrmCadastroInternoEducacao.FormShow(Sender: TObject);
begin
  inherited;

  DBEditdtmatricula.Field.EditMask := '99\/99\/9999;1;_';

  DM.DSSERIEESTUDO.DataSet.Close;
  DM.DSSERIEESTUDO.DataSet.OPEN;

  DSHISTORICOEDUCACAO.DataSet.Close;
  DSHISTORICOEDUCACAO.DataSet.OPEN;

  DSremissao_estudo.DataSet.Close;
  DSremissao_estudo.DataSet.OPEN;

  dscertidao_estudo.DataSet.Close;
  dscertidao_estudo.DataSet.OPEN;

  dsDiasLivro.DataSet.Close;
  dsDiasLivro.DataSet.Open;

  dsportaria.DataSet.Close;
  dsPortaria.DataSet.Open;

  dsportariaaluno.DataSet.Close;
  dsportariaaluno.DataSet.Open;

end;

procedure TFrmCadastroInternoEducacao.SalvarClick(Sender: TObject);
var
  iErro, ierro1: integer;
begin
  DsCadastro.DataSet.Fieldbyname('ID_FUNCIONARIO').AsInteger := GLOBAL_ID_FUNCIONARIO;

  if PageControlPrincipal.CanFocus then
    PageControlPrincipal.SetFocus;

  {Inserir Historico Educação}
  if (steducacao <> DsCadastro.DataSet.Fieldbyname('IDSERIEESTUDO').Asstring)
    and (DsCadastro.DataSet.Fieldbyname('IDSERIEESTUDO').Asstring <> '') then
  begin
    if DsCadastro.DataSet.Fieldbyname('DATA_MATRICULA').AsString = '' then
    begin
      showmessage('Digite a Data da Matrícula!');
      exit;
    end;

    if DsCadastro.DataSet.Fieldbyname('IDSERIEESTUDO').AsString = '' then
    begin
      showmessage('Digite a Série!');
      exit;
    end;

    DSHISTORICOEDUCACAO.DataSet.Append;
    DSHISTORICOEDUCACAO.DataSet.fieldbyname('id_historico_estudo').AsInteger := 0;
    DSHISTORICOEDUCACAO.DataSet.fieldbyname('id_interno').AsInteger := DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
    DSHISTORICOEDUCACAO.DataSet.fieldbyname('data_historico').AsString := DsCadastro.DataSet.fieldbyname('data_matricula').AsString;
    DSHISTORICOEDUCACAO.DataSet.fieldbyname('id_funcionario').AsInteger := GLOBAL_ID_FUNCIONARIO;
    DSHISTORICOEDUCACAO.DataSet.fieldbyname('id_serie_estudo').AsInteger := DBLookupComboBoxserie.KeyValue;
    DSHISTORICOEDUCACAO.DataSet.fieldbyname('deficiencia').AsString := DsCadastro.DataSet.fieldbyname('deficiencia').Asstring;
    DSHISTORICOEDUCACAO.DataSet.fieldbyname('data_matricula').Asstring := DsCadastro.DataSet.fieldbyname('data_matricula').AsString;
    DSHISTORICOEDUCACAO.DataSet.fieldbyname('periodo').AsString := DsCadastro.DataSet.fieldbyname('periodo').AsString;
    DSHISTORICOEDUCACAO.DataSet.fieldbyname('turma').AsString := DsCadastro.DataSet.fieldbyname('turma').AsString;
    if DBEditobseducacao.text = '' then
    begin
      DSHISTORICOEDUCACAO.DataSet.fieldbyname('historico').AsString := 'Matrículou-se na Série: ' + DBLookupComboBoxserie.Text
      + ' Turma: ' + DsCadastro.DataSet.fieldbyname('turma').AsString + ' Período: ' + DsCadastro.DataSet.fieldbyname('periodo').AsString +'.';
    end else
    begin
      DSHISTORICOEDUCACAO.DataSet.fieldbyname('historico').AsString := 'Matrículou-se na Série: ' + DBLookupComboBoxserie.Text
      + ' Turma: ' + DsCadastro.DataSet.fieldbyname('turma').AsString + ' Período: ' + DsCadastro.DataSet.fieldbyname('periodo').AsString +'. OBS: '+DBEditobseducacao.text;
    end;
    DSHISTORICOEDUCACAO.DataSet.Post;

  end;

  try
    StatusBar1.Panels[1].Text := 'SALVANDO';
    Novo.Enabled := True;
    Editar.Enabled := True;
    Excluir.Enabled := True;
    Salvar.Enabled := False;
    Cancelar.Enabled := False;

    if DsCadastro.DataSet.State in [dsedit, dsinsert] then
      DsCadastro.DataSet.Post;

    if DSHISTORICOEDUCACAO.DataSet.State in [dsedit, dsinsert] then
      DSHISTORICOEDUCACAO.DataSet.Post;

    if DSremissao_estudo.DataSet.State in [dsedit, dsinsert] then
      DSremissao_estudo.DataSet.Post;

    if dscertidao_estudo.DataSet.State in [dsedit, dsinsert] then
      dscertidao_estudo.DataSet.Post;

    if dsDiasLivro.DataSet.State in [dsedit, dsinsert] then
      dsDiasLivro.DataSet.Post;

    if dsPortaria.DataSet.State in [dsedit, dsinsert] then
      dsPortaria.DataSet.Post;

    IniciaTransCadastro;

    iErro := TClientDataSet(DsCadastro.DataSet).ApplyUpdates(0)
      + TClientDataSet(DSHISTORICOEDUCACAO.DataSet).ApplyUpdates(0)
      + TClientDataSet(DSremissao_estudo.DataSet).ApplyUpdates(0)
      + TClientDataSet(dscertidao_estudo.DataSet).ApplyUpdates(0)
      + TClientDataSet(dsDiasLivro.DataSet).ApplyUpdates(0)
      + TClientDataSet(dsPortaria.DataSet).ApplyUpdates(0);

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
  PageControlPrincipal.ActivePageIndex := 0;

  DSHISTORICOEDUCACAO.DataSet.Close;
  DSHISTORICOEDUCACAO.DataSet.OPEN;

  DSremissao_estudo.DataSet.Close;
  DSremissao_estudo.DataSet.OPEN;

  dscertidao_estudo.DataSet.Close;
  dscertidao_estudo.DataSet.OPEN;

  dsPortaria.DataSet.Close;
  dsPortaria.DataSet.Open;

  dsPortariaAluno.DataSet.Close;
  dsPortariaAluno.DataSet.Open;

end;

procedure TFrmCadastroInternoEducacao.DBComboBoxdeficienciaKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  Key := #0;
end;

procedure TFrmCadastroInternoEducacao.EditarClick(Sender: TObject);
begin
  inherited;
  steducacao := '';

  if DBLookupComboBoxserie.text <> '' then
  begin
    steducacao := DBLookupComboBoxserie.text;
    Btncancelarmatricula.Enabled := true;
    btnreativarmatricula.Enabled := true;
  end
  else
  begin
    Btncancelarmatricula.Enabled := false;
    btnreativarmatricula.Enabled := false;
  end;

  if steducacao <> '' then
  begin
    DBEditdtmatricula.Enabled := false;
    DBEditturma.Enabled := false;
    DBEditobseducacao.Enabled := false;
    DBLookupComboBoxserie.Enabled := false;
    DBComboBoxdeficiencia.Enabled := False;
    DBComboBoxperiodo.Enabled := false;
  end
  else
  begin
    DBEditdtmatricula.Enabled := true;
    DBEditturma.Enabled := true;
    DBEditobseducacao.Enabled := true;
    DBLookupComboBoxserie.Enabled := true;
    DBComboBoxdeficiencia.Enabled := true;
    DBComboBoxperiodo.Enabled := true;
    DM.dsturma.DataSet.Open;
    DM.dsturma.DataSet.First;
    while not DM.dsturma.DataSet.Eof do
    begin
      comboturma.Items.Add(DM.dsturma.DataSet.FieldByName('Turma').AsString);
      DM.dsturma.DataSet.Next;
    end;
  end;

end;

procedure TFrmCadastroInternoEducacao.DBGridConsultaDblClick(
  Sender: TObject);
begin
  inherited;
  steducacao := '';

  if DBLookupComboBoxserie.text <> '' then
  begin
    steducacao := DBLookupComboBoxserie.text;
    Btncancelarmatricula.Enabled := true;
    btnreativarmatricula.Enabled := true;
  end
  else
  begin
    Btncancelarmatricula.Enabled := false;
    btnreativarmatricula.Enabled := false;
  end;

  if steducacao <> '' then
  begin
    DBEditdtmatricula.Enabled := false;
    DBEditturma.Enabled := false;
    DBEditobseducacao.Enabled := false;
    DBLookupComboBoxserie.Enabled := false;
    DBComboBoxdeficiencia.Enabled := False;
    DBComboBoxperiodo.Enabled := false;
  end
  else
  begin
    DBEditdtmatricula.Enabled := true;
    DBEditturma.Enabled := true;
    DBEditobseducacao.Enabled := true;
    DBLookupComboBoxserie.Enabled := true;
    DBComboBoxdeficiencia.Enabled := true;
    DBComboBoxperiodo.Enabled := true;
  end;
  DM.DSSERIEESTUDO.DataSet.Open;
  DM.DSSERIEESTUDO.DataSet.First;
  while not DM.DSSERIEESTUDO.DataSet.Eof do
  begin
    comboturma.Items.Add(DM.DSSERIEESTUDO.DataSet.FieldByName('Serie_Estudo').AsString);
    DM.DSSERIEESTUDO.DataSet.Next;
  end;

  DSPORTARIAALUNO.DataSet.Close;
  SqlPortariaAluno.Close;
  SQLPortariaAluno.ParamByName('id_interno').Value := DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  SQLPortariaAluno.Open;
  DSPORTARIAALUNO.DataSet.Open;
  DSPORTARIAALUNO.DataSet.First;
  Combosalas.Clear;
  while not DSPORTARIAALUNO.DataSet.Eof do
  begin
    combosalas.Items.Add(DSPortariaAluno.DataSet.FieldByName('turma').AsString + ' | ' + DSPortariaAluno.DataSet.FieldByName('Portaria').Asstring);
    DSPORTARIAALUNO.DataSet.Next;
  end;

end;

procedure TFrmCadastroInternoEducacao.BtncancelarmatriculaClick(Sender: TObject);
begin
  inherited;
  if DsCadastro.DataSet.FieldByName('IDSERIEESTUDO').asstring = '' then
  begin
    ShowMessage('Matrícula já Cancela!');
    exit;
  end;

  if MessageDlg('Confirma Cancelamento de Matrícula?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin

    DSHISTORICOEDUCACAO.DataSet.First;
    DSHISTORICOEDUCACAO.DataSet.Edit;
    DSHISTORICOEDUCACAO.DataSet.FieldByName('data_saida').asdatetime := Date;
    DSHISTORICOEDUCACAO.DataSet.Post;

    DSHISTORICOEDUCACAO.DataSet.Append;
    DSHISTORICOEDUCACAO.DataSet.fieldbyname('id_historico_estudo').AsInteger := 0;
    DSHISTORICOEDUCACAO.DataSet.fieldbyname('id_interno').AsString := DsCadastro.DataSet.fieldbyname('id_interno').asstring;
    DSHISTORICOEDUCACAO.DataSet.fieldbyname('data_historico').AsDateTime := date-1;
    DSHISTORICOEDUCACAO.DataSet.FieldByName('historico').AsString := 'Matrícula Cancelada. Série: ' + DBLookupComboBoxserie.Text
      + ' Período: ' + DBComboBoxperiodo.Text + '.';
    DSHISTORICOEDUCACAO.DataSet.Post;

  end;

  DsCadastro.DataSet.FieldByName('data_matricula').asstring := '';
  DsCadastro.DataSet.FieldByName('IDSERIEESTUDO').asstring := '';
  DsCadastro.DataSet.FieldByName('turma').asstring := '';
  DsCadastro.DataSet.FieldByName('deficiencia').asstring := '';
  DsCadastro.DataSet.FieldByName('PERIODO').asstring := '';
  DsCadastro.DataSet.FieldByName('OBSEDUCACAO').asstring := '';

  DBEditdtmatricula.Enabled := true;
  DBEditturma.Enabled := true;
  DBEditobseducacao.Enabled := true;
  DBLookupComboBoxserie.Enabled := true;
  DBComboBoxdeficiencia.Enabled := true;
  DBComboBoxperiodo.Enabled := true;

end;

procedure TFrmCadastroInternoEducacao.btnreativarmatriculaClick(Sender: TObject);
begin
  inherited;

  if DsCadastro.DataSet.FieldByName('IDSERIEESTUDO').asstring = '' then
  begin
    ShowMessage('Não há Matrícula para Reativar!');
    exit;
  end;

  if MessageDlg('Confirma Reativar Matricula!', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DSHISTORICOEDUCACAO.DataSet.First;
    DSHISTORICOEDUCACAO.DataSet.Edit;
    DSHISTORICOEDUCACAO.DataSet.FieldByName('data_saida').asdatetime := Date;
    DSHISTORICOEDUCACAO.DataSet.Post;

  end;

  DsCadastro.DataSet.FieldByName('data_matricula').asstring := '';
  DsCadastro.DataSet.FieldByName('IDSERIEESTUDO').asstring := '';
  DsCadastro.DataSet.FieldByName('turma').asstring := '';
  DsCadastro.DataSet.FieldByName('deficiencia').asstring := '';
  DsCadastro.DataSet.FieldByName('PERIODO').asstring := '';
  DsCadastro.DataSet.FieldByName('OBSEDUCACAO').asstring := '';

  DBEditdtmatricula.Enabled := true;
  DBEditturma.Enabled := true;
  DBEditobseducacao.Enabled := true;
  DBLookupComboBoxserie.Enabled := true;
  DBComboBoxdeficiencia.Enabled := true;
  DBComboBoxperiodo.Enabled := true;

end;

type
TStringArray = array of string;

function Split(Expression:string; Delimiter:string):TStringArray;
var
  Res:        TStringArray;
  ResCount:   DWORD;
  dLength:    DWORD;
  StartIndex: DWORD;
  sTemp:      string;
  test:       DWORD;
begin
  dLength := Length(Expression);
  StartIndex := 1;
  ResCount := 0;
  test := 0;
  repeat
    test :=  Pos(Delimiter, Copy(Expression, StartIndex, Length(Expression)));
    if test > 0 then
    begin
      sTemp := Copy(Expression, StartIndex, Pos(Delimiter, Copy(Expression, StartIndex, Length(Expression))) - 1);  
    end else
    begin
      sTemp := Copy(Expression, StartIndex,Length(Expression));  
    end;
    SetLength(Res, Length(Res) + 1);
    SetLength(Res[ResCount], Length(sTemp));
    Res[ResCount] := sTemp;
    test := Pos(Delimiter, Copy(Expression, StartIndex, Length(Expression)));
    StartIndex := StartIndex + Length(sTemp) + Length(Delimiter);
    ResCount := ResCount + 1;
  until StartIndex > dLength;
  Result := Res;
end;

procedure TFrmCadastroInternoEducacao.BitBtn3Click(Sender: TObject);
var
t, turma, portaria:String;
strArray  : TStringArray;
sqlfind : TFDQuery;
begin
  inherited;
  {Inserir Historico Setor Trabalho}

  if Edithoras.Text = '' then
  begin
    showmessage('Digite a Qtde de Horas!');
    exit;
  end;

  DSremissao_estudo.DataSet.Append;
  DSremissao_estudo.DataSet.fieldbyname('id_hora_aula').AsInteger := 0;
  DSremissao_estudo.DataSet.fieldbyname('id_interno').AsInteger := DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  DSremissao_estudo.DataSet.fieldbyname('data_inicial').AsString := FormatDateTime('dd/mm/yyyy', adpDBDateTimePickerdtinicial.date);
  DSremissao_estudo.DataSet.fieldbyname('data_final').Asstring := FormatDateTime('dd/mm/yyyy', adpDBDateTimePickerdtfinalremicao.date);
  DSremissao_estudo.DataSet.fieldbyname('qtde_horas').Asstring := Edithoras.Text;
  DSremissao_estudo.DataSet.fieldbyname('id_funcionario').AsInteger := GLOBAL_ID_FUNCIONARIO;
  try
    t := combosalas.Text;
    strArray := Split(t, ' | ');
    if length(strArray) = 2 then
    begin
      turma := strArray[0];
      portaria := strArray[1];
      sqlfind:= TFDQuery.Create(nil);
      sqlfind.Connection := DM.SQLConnect;
      sqlfind.SQL.Text := 'SELECT ID_PORTARIA_EDUCACAO FROM PORTARIA_EDUCACAO where TURMA = :turma and PORTARIA = :portaria and ID_INTERNO = :interno;';
      Sqlfind.ParamByName('turma').AsString := turma;
      Sqlfind.ParamByName('portaria').AsString := portaria;
      Sqlfind.ParamByName('interno').AsInteger := DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
      //SqlFind.PrepareStatement;
      Sqlfind.Open;
      DSRemissao_estudo.DataSet.FieldByName('id_portaria_aluno').AsInteger := SQlfind.fieldbyName('ID_PORTARIA_EDUCACAO').AsInteger;
    end;
  finally
    sqlfind.Free;
  end;

  //DSremissao_estudo.DataSet.fieldbyname('id_portaria_aluno').AsInteger := dblucPortariaAluno.KeyValue;
  DSremissao_estudo.DataSet.Post;

  Edithoras.Text := '';

end;

procedure TFrmCadastroInternoEducacao.BitBtn4Click(Sender: TObject);
var
  diasestudo, saldoanterior, diasestudoanterior, diasestudototal: integer;
begin
  inherited;
  diasestudo := 0;
  saldoanterior := 0;
  diasestudoanterior := 0;
  diasestudototal := 0;

  dm.SqlExecute.SQL.Text := 'select * from horas_aula h where  h.id_interno = ' +
    DsCadastro.DataSet.fieldbyname('id_interno').asstring + ' and h.data_inicial >= '
    + qs(formatdatetime('mm/dd/yyyy', DateTimePickerdtinicialcertidao.Date))
    + ' and h.data_final <= ' + qs(formatdatetime('mm/dd/yyyy', adpDBDateTimePickerdtfinalcertidao.date));

  dm.DsExecute.DataSet.close;
  dm.DsExecute.DataSet.Open;

  if dm.DsExecute.DataSet.RecordCount > 0 then
  begin
    dm.DsExecute.DataSet.First;
    while not dm.DsExecute.DataSet.eof do
    begin
      diasestudo := diasestudo + dm.DsExecute.DataSet.fieldbyname('qtde_horas').asinteger;

      dm.DsExecute.DataSet.Next;
    end;
    dm.DsExecute.DataSet.Close;

    dm.SqlExecute.SQL.Text := 'select * from horas_aula h where  h.id_interno = ' +
      DsCadastro.DataSet.fieldbyname('id_interno').asstring + ' and h.data_inicial < '
      + qs(formatdatetime('mm/dd/yyyy', DateTimePickerdtinicialcertidao.Date));

    dm.DsExecute.DataSet.close;
    dm.DsExecute.DataSet.Open;

    if dm.DsExecute.DataSet.RecordCount > 0 then
    begin
      dm.DsExecute.DataSet.First;
      while not dm.DsExecute.DataSet.eof do
      begin

        diasestudoanterior := diasestudoanterior + dm.DsExecute.DataSet.fieldbyname('qtde_horas').asinteger;

        dm.DsExecute.DataSet.Next;
      end;
      dm.DsExecute.DataSet.Close;
    end;

    Editsaldoanterior.Text := inttostr(diasestudoanterior mod 12);
    if Editsaldoanterior.Text <> '' then
      diasestudototal := (diasestudo + (strtoint(Editsaldoanterior.Text)))
    else
      diasestudototal := diasestudo;

    Editdiasestudo.text := inttostr(diasestudo);
    edittotalestudo.Text := inttostr(diasestudototal);
    Editdiasremido.Text := inttostr(diasestudototal div 12);
    Editsaldoproximo.Text := inttostr(diasestudototal mod 12);

  end;
end;

procedure TFrmCadastroInternoEducacao.PageControlPrincipalChange(
  Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex := 0;
end;

procedure TFrmCadastroInternoEducacao.BitBtn5Click(Sender: TObject);
begin
  inherited;

  if Editdiasestudo.Text = '' then
  begin
    showmessage('Horas Estudo Inválido!');
    exit;
  end;

  dscertidao_estudo.DataSet.Append;
  dscertidao_estudo.DataSet.fieldbyname('id_atestado_estudo').AsInteger := 0;
  dscertidao_estudo.DataSet.fieldbyname('id_interno').AsInteger := DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  dscertidao_estudo.DataSet.fieldbyname('data_inicial').AsString := formatdatetime('dd/mm/yyyy', DateTimePickerdtinicialcertidao.date);
  dscertidao_estudo.DataSet.fieldbyname('data_final').AsString := formatdatetime('dd/mm/yyyy', adpDBDateTimePickerdtfinalcertidao.date);
  dscertidao_estudo.DataSet.fieldbyname('horas_estudada').AsString := Editdiasestudo.text;
  dscertidao_estudo.DataSet.fieldbyname('dias_remido').AsString := Editdiasremido.text;
  dscertidao_estudo.DataSet.fieldbyname('saldo_anterior').AsString := Editsaldoanterior.text;
  dscertidao_estudo.DataSet.fieldbyname('total_horas').AsString := edittotalestudo.text;
  dscertidao_estudo.DataSet.fieldbyname('saldo_proxima').AsString := Editsaldoproximo.Text;
  dscertidao_estudo.DataSet.Post;

  Editdiasestudo.Text := '';
  Editdiasremido.Text := '';
  Editsaldoanterior.Text := '';
  Editsaldoproximo.Text := '';
  edittotalestudo.Text := '';

end;

procedure TFrmCadastroInternoEducacao.ExcluirRegistro1Click(
  Sender: TObject);
begin
  inherited;

  if DSremissao_estudo.DataSet.IsEmpty then
  begin
    showmessage('Não há Horas Cadastradas!.');
    exit;
  end;

  if MessageDlg('Deseja excluir Horas Cadastradas ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DSremissao_estudo.DataSet.Delete;
  end;

end;

procedure TFrmCadastroInternoEducacao.ExcluirRegistro2Click(
  Sender: TObject);
begin
  inherited;
  if dscertidao_estudo.DataSet.IsEmpty then
  begin
    showmessage('Não há Atestado Cadastrado!.');
    exit;
  end;

  if MessageDlg('Deseja excluir Horas Cadastradas ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dscertidao_estudo.DataSet.Delete;
  end;
end;

procedure TFrmCadastroInternoEducacao.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_EDUCACAO)
    and not ContemValor('E', PERMISSAO_EDUCACAO)
    and not ContemValor('D', PERMISSAO_EDUCACAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_EDUCACAO)
    and not ContemValor('E', PERMISSAO_EDUCACAO)
    and not ContemValor('D', PERMISSAO_EDUCACAO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_EDUCACAO)
    and ContemValor('E', PERMISSAO_EDUCACAO)
    and not ContemValor('D', PERMISSAO_EDUCACAO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_EDUCACAO)
    and ContemValor('E', PERMISSAO_EDUCACAO)
    and ContemValor('D', PERMISSAO_EDUCACAO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_EDUCACAO)
    and not ContemValor('E', PERMISSAO_EDUCACAO)
    and ContemValor('D', PERMISSAO_EDUCACAO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_EDUCACAO)
    and not ContemValor('E', PERMISSAO_EDUCACAO)
    and ContemValor('D', PERMISSAO_EDUCACAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_EDUCACAO)
    and ContemValor('E', PERMISSAO_EDUCACAO)
    and not ContemValor('D', PERMISSAO_EDUCACAO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroInternoEducacao.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_EDUCACAO)
    and not ContemValor('E', PERMISSAO_EDUCACAO)
    and not ContemValor('D', PERMISSAO_EDUCACAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_EDUCACAO)
    and not ContemValor('E', PERMISSAO_EDUCACAO)
    and not ContemValor('D', PERMISSAO_EDUCACAO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_EDUCACAO)
    and ContemValor('E', PERMISSAO_EDUCACAO)
    and not ContemValor('D', PERMISSAO_EDUCACAO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_EDUCACAO)
    and ContemValor('E', PERMISSAO_EDUCACAO)
    and ContemValor('D', PERMISSAO_EDUCACAO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_EDUCACAO)
    and not ContemValor('E', PERMISSAO_EDUCACAO)
    and ContemValor('D', PERMISSAO_EDUCACAO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_EDUCACAO)
    and not ContemValor('E', PERMISSAO_EDUCACAO)
    and ContemValor('D', PERMISSAO_EDUCACAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_EDUCACAO)
    and ContemValor('E', PERMISSAO_EDUCACAO)
    and not ContemValor('D', PERMISSAO_EDUCACAO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroInternoEducacao.CancelarClick(Sender: TObject);
begin
  inherited;

  DSHISTORICOEDUCACAO.DataSet.Close;
  DSHISTORICOEDUCACAO.DataSet.OPEN;

  DSremissao_estudo.DataSet.Close;
  DSremissao_estudo.DataSet.OPEN;

  dscertidao_estudo.DataSet.Close;
  dscertidao_estudo.DataSet.OPEN;

  dsportaria.DataSet.Close;
  dsPortaria.DataSet.Open;

  dsPortariaAluno.DataSet.Close;
  dsPortariaAluno.DataSet.Open;
end;

procedure TFrmCadastroInternoEducacao.PageControlModeloCadastroChange(
  Sender: TObject);
begin
  //inherited;
  if PageControlModeloCadastro.ActivePageIndex = 1 then
  begin
    CancelarClick(nil);
  end;
end;

procedure TFrmCadastroInternoEducacao.BitBtnInserirDiasLivroClick(
  Sender: TObject);
begin
  inherited;
  {Inserir Historico Setor Trabalho}

  if EditQtdeLivro.Text = '' then
  begin
    showmessage('Digite a Qtde de Horas!');
    exit;
  end;

  dsDiasLivro.DataSet.Append;
  dsDiasLivro.DataSet.fieldbyname('id_dias_leitura').AsInteger := 0;
  dsDiasLivro.DataSet.fieldbyname('id_interno').AsInteger := DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  dsDiasLivro.DataSet.fieldbyname('data_inicial').AsString := FormatDateTime('dd/mm/yyyy', adpDBDateTimePickerLivroInicial.date);
  dsDiasLivro.DataSet.fieldbyname('data_final').Asstring := FormatDateTime('dd/mm/yyyy', adpDBDateTimePickerLivrosFinal.date);
  dsDiasLivro.DataSet.fieldbyname('qtde_livros').Asstring := EditQtdeLivro.Text;
  //dsDiasLivro.DataSet.fieldbyname('id_funcionario').AsInteger := GLOBAL_ID_FUNCIONARIO;
  dsDiasLivro.DataSet.Post;

  EditQtdeLivro.Text := '';
end;

procedure TFrmCadastroInternoEducacao.BitBtnCalcularLivroClick(
  Sender: TObject);
var
  diasRemidos, qtdeLivros : integer;
begin
  inherited;
  diasRemidos := 0;
  qtdeLivros := 0;

  dm.SqlExecute.SQL.Text := 'select * from dias_leitura l where  l.id_interno = ' +
    DsCadastro.DataSet.fieldbyname('id_interno').asstring + ' and l.data_inicial >= '
    + qs(formatdatetime('mm/dd/yyyy', adpDBDateTimePickerLivroDtInicialAtestado.Date))
    + ' and l.data_final <= ' + qs(formatdatetime('mm/dd/yyyy', adpDBDateTimePickerLivroDtFinalAtestado.date));

  dm.DsExecute.DataSet.close;
  dm.DsExecute.DataSet.Open;

  if dm.DsExecute.DataSet.RecordCount > 0 then
  begin
    dm.DsExecute.DataSet.First;
    while not dm.DsExecute.DataSet.eof do
    begin
      qtdeLivros := qtdeLivros + dm.DsExecute.DataSet.fieldbyname('qtde_livros').asinteger;
      diasRemidos := diasRemidos + dm.DsExecute.DataSet.fieldbyname('qtde_livros').asinteger;

      dm.DsExecute.DataSet.Next;
    end;
    dm.DsExecute.DataSet.Close;
    diasRemidos := 4 * diasRemidos;

    EditLivros.text := inttostr(qtdeLivros);
    EditRemidos.Text := inttostr(diasRemidos);
  end;
end;

procedure TFrmCadastroInternoEducacao.BitBtn1Click(Sender: TObject);
begin
  inherited;
  {Inserir Portaria}

  if ComboTurma.Text = '' then
  begin
    showmessage('Selecione a Turma');
    exit;
  end;
   if EditPortaria.text = '' then
  begin
    showmessage('Digite uma Portaria');
    exit;
  end;
  Dsportaria.DataSet.First;
  while not DSportaria.DataSet.Eof do
  begin
    if (DSportaria.DataSet.fieldbyname('turma').AsString = ComboTurma.Text)
        and (Dsportaria.DataSet.FieldByName('data_final').AsString = '') then
          begin
            showmessage('Já existe uma portaria aberta nesse Curso');
            exit;
          end;
    DsPortaria.DataSet.Next;
  end;
  DSportaria.DataSet.Append;
  DSportaria.DataSet.fieldbyname('id_portaria_educacao').AsInteger := 0;
  DSportaria.DataSet.fieldbyname('id_interno').AsInteger := DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  DSportaria.DataSet.fieldbyname('data_entrada').AsString := FormatDateTime('dd/mm/yyyy', adpDBDateTimePicker1.date);

 // showmessage(FormatDateTime('dd/mm/yyyy', adpDBDateTimePickerdtinicial.date));
  DSportaria.DataSet.fieldbyname('turma').Asstring := ComboTurma.Text;
  DSportaria.DataSet.fieldbyname('id_funcionario').AsInteger := GLOBAL_ID_FUNCIONARIO;
  DSportaria.DataSet.FieldByName('Portaria').Asstring := EditPortaria.Text;
  DSportaria.DataSet.Post;

 // EditPortaria.Text := '';
end;

procedure TFrmCadastroInternoEducacao.Encerrar_portariaClick(
  Sender: TObject);
begin
  if not ContemValor('E', PERMISSAO_EDUCACAO) then
  begin
    ShowMessage('Você não tem permissão para realizar esta operação!');
    Exit;
  end;

  if dsportaria.DataSet.FieldByName('data_final').asstring <> '' then
  begin
    ShowMessage('Trabalho já liberado!');
    exit;
  end;

  if MessageDlg('Confirma encerramento de Portaria?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin

    FrmEncerrar_portaria := TFrmEncerrar_portaria.Create(Self);
    FrmEncerrar_portaria.ShowModal;

    dsportaria.DataSet.Edit;
    dsportaria.DataSet.FieldByName('data_final').AsString := formatdatetime('dd/mm/yyyy', FrmEncerrar_portaria.adpDBDateTimePicker1.Date);
    dsportaria.DataSet.Post;

    FreeAndNil(FrmEncerrar_portaria);

  end;

end;

procedure TFrmCadastroInternoEducacao.ExcluirPortaria1Click(
  Sender: TObject);
begin
  inherited;
  if dsportaria.DataSet.IsEmpty then
  begin
    showmessage('Não há Portarias Cadastradas!.');
    exit;
  end;

  if MessageDlg('Deseja excluir a Portaria ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dsportaria.DataSet.Delete;
  end;
end;

end.

