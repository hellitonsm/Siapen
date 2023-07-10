unit CadastroInternoSaude;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloInterno, FMTBcd, DB, DBClient, Provider, SqlExpr, ImgList,
  ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Mask, Buttons,
  ToolWin, Menus, jpeg, dbcgrids;

type
  TFrmCadastroInternoSaude = class(TFrmModeloInterno)
    TabSheet1: TTabSheet;
    PageControlSaude: TPageControl;
    TabSheet23: TTabSheet;
    TabSheet24: TTabSheet;
    Label176: TLabel;
    Label177: TLabel;
    Label178: TLabel;
    Label179: TLabel;
    Label180: TLabel;
    Label181: TLabel;
    Label182: TLabel;
    Label183: TLabel;
    Label184: TLabel;
    DBEdit102: TDBEdit;
    DBEdit103: TDBEdit;
    DBEdit104: TDBEdit;
    DBEdit105: TDBEdit;
    DBEdit106: TDBEdit;
    DBEdit107: TDBEdit;
    DBEdit108: TDBEdit;
    DBEdit109: TDBEdit;
    DBEdit110: TDBEdit;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Sqlhistorico_saude: TSQLQuery;
    Dsphistorico_saude: TDataSetProvider;
    Cdshistorico_saude: TClientDataSet;
    dshistorico_saude: TDataSource;
    Label53: TLabel;
    DateTimePickerHistorico: TDateTimePicker;
    MemoDescricao: TMemo;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    Cdshistorico_saudeID_HISTORICO_SAUDE: TIntegerField;
    Cdshistorico_saudeDESCRICAO: TStringField;
    Cdshistorico_saudeDATA: TSQLTimeStampField;
    Cdshistorico_saudeID_FUNCIONARIO: TIntegerField;
    Cdshistorico_saudeID_INTERNO: TIntegerField;
    Cdshistorico_saudeSETOR: TStringField;
    Cdshistorico_saudeFuncionrio: TStringField;
    SQLdieta: TSQLQuery;
    DSPdieta: TDataSetProvider;
    cdsdieta: TClientDataSet;
    dsdieta: TDataSource;
    cdsdietaID_CONTROLE_DIETA: TIntegerField;
    cdsdietaID_INTERNO: TIntegerField;
    cdsdietaID_TIPO_DIETA: TIntegerField;
    cdsdietaDATA_INICIO: TSQLTimeStampField;
    cdsdietaDATA_TERMINO: TSQLTimeStampField;
    cdsdietaDESCRICAO: TStringField;
    cdsdietaID_MEDICO: TIntegerField;
    Label14: TLabel;
    DateTimePickerconsulta: TDateTimePicker;
    Memodescricaodieta: TMemo;
    Label15: TLabel;
    DBGrid2: TDBGrid;
    DBMemo2: TDBMemo;
    Label16: TLabel;
    DateTimePickerinicio: TDateTimePicker;
    Label17: TLabel;
    DateTimePickertermino: TDateTimePicker;
    DBLookupComboBoxmedico: TDBLookupComboBox;
    Label26: TLabel;
    Label29: TLabel;
    DBLookupComboBoxtipodieta: TDBLookupComboBox;
    SpeedButton3: TSpeedButton;
    Button2: TButton;
    cdsdietaDATA_CONSULTA: TSQLTimeStampField;
    cdsdietaID_FUNCIONARIO: TIntegerField;
    cdsdietaFuncionrio: TStringField;
    cdsdietaMdico: TStringField;
    cdsdietaTipoDieta: TStringField;
    TabSheet4: TTabSheet;
    SQLenfermidadeinterno: TSQLQuery;
    DSPenfermidadeinterno: TDataSetProvider;
    CDSenfermidadeinterno: TClientDataSet;
    DSENFERMDIADE_INTERNO: TDataSource;
    CDSenfermidadeinternoID_ENFERMDIADE_INTERNO: TIntegerField;
    CDSenfermidadeinternoID_ENFERMIDADE: TIntegerField;
    CDSenfermidadeinternoID_INTERNO: TIntegerField;
    CDSenfermidadeinternoEnfermidade: TStringField;
    CDSenfermidadeinternoSTATUS: TStringField;
    PageControl1: TPageControl;
    TabSheet5: TTabSheet;
    Label41: TLabel;
    DBLookupComboBoxenfermidade: TDBLookupComboBox;
    SpeedButton10: TSpeedButton;
    Button3: TButton;
    DBGrid3: TDBGrid;
    Label42: TLabel;
    DateTimePickerdataremedio: TDateTimePicker;
    Label48: TLabel;
    DBLookupComboBoxremedio: TDBLookupComboBox;
    Label50: TLabel;
    Memoenfermidade: TMemo;
    DBGrid4: TDBGrid;
    SQLremedioenfermdiade: TSQLQuery;
    DSPremedioenfermdiade: TDataSetProvider;
    CDSremedioenfermdiade: TClientDataSet;
    dsremedioenfermidade: TDataSource;
    SpeedButton12: TSpeedButton;
    Button4: TButton;
    Label51: TLabel;
    DBLookupComboBoxenfermidadeinterno: TDBLookupComboBox;
    SpeedButton13: TSpeedButton;
    CDSremedioenfermdiadeID_REMEDIO_ENFERMIDADE: TIntegerField;
    CDSremedioenfermdiadeID_REMEDIO: TIntegerField;
    CDSremedioenfermdiadeDATA_INICIO: TSQLTimeStampField;
    CDSremedioenfermdiadeDATA_FIM: TSQLTimeStampField;
    CDSremedioenfermdiadeSTATUS: TStringField;
    CDSremedioenfermdiadeID_ENFERMIDADE_INTERNO: TIntegerField;
    CDSremedioenfermdiadeOBS: TStringField;
    CDSremedioenfermdiadeRemdio: TStringField;
    Editqtde: TEdit;
    Label56: TLabel;
    CDSremedioenfermdiadeQTDE: TStringField;
    PopupMenuIsolamento: TPopupMenu;
    Liberar1: TMenuItem;
    TabSheet6: TTabSheet;
    SQLdeficienciainterno: TSQLQuery;
    dspdeficienciainterno: TDataSetProvider;
    cdsdeficienciainterno: TClientDataSet;
    dsdeficienciainterno: TDataSource;
    Label57: TLabel;
    DateTimePickerdeficiencia: TDateTimePicker;
    Label58: TLabel;
    DBLookupComboBoxdeficiencia: TDBLookupComboBox;
    DBGrid5: TDBGrid;
    SpeedButton14: TSpeedButton;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    EditLOCOMOCAO: TEdit;
    EditMEMBRO: TEdit;
    EditATROFIA: TEdit;
    EditMOTIVO: TEdit;
    BitBtn1: TBitBtn;
    cdsdeficienciainternoID_DEFICIENCIA_INTERNO: TIntegerField;
    cdsdeficienciainternoID_DEFICIENCIA: TIntegerField;
    cdsdeficienciainternoID_INTERNO: TIntegerField;
    cdsdeficienciainternoTIPO_LOCOMOCAO: TStringField;
    cdsdeficienciainternoMEMBRO: TStringField;
    cdsdeficienciainternoTIPO_ATROFIA: TStringField;
    cdsdeficienciainternoMOTIVO: TStringField;
    cdsdeficienciainternoID_FUNCIONARIO: TIntegerField;
    cdsdeficienciainternoDeficincia: TStringField;
    TabSheet7: TTabSheet;
    SQLvacinainterno: TSQLQuery;
    dspvacinainterno: TDataSetProvider;
    cdsvacinainterno: TClientDataSet;
    dsvacinainterno: TDataSource;
    cdsvacinainternoID_VACINA_INTERNO: TIntegerField;
    cdsvacinainternoID_VACINA: TIntegerField;
    cdsvacinainternoID_INTERNO: TIntegerField;
    cdsvacinainternoDATA_VACINA: TSQLTimeStampField;
    cdsvacinainternoDOSE: TStringField;
    Label68: TLabel;
    DateTimePickerdatavacina: TDateTimePicker;
    Label70: TLabel;
    DBGrid6: TDBGrid;
    Label71: TLabel;
    DBLookupComboBoxvacina: TDBLookupComboBox;
    SpeedButton15: TSpeedButton;
    Editdose: TEdit;
    BitBtn2: TBitBtn;
    cdsvacinainternoVacina: TStringField;
    SpeedButton16: TSpeedButton;
    Label165: TLabel;
    Label166: TLabel;
    Label167: TLabel;
    Label168: TLabel;
    Label169: TLabel;
    Label170: TLabel;
    Label171: TLabel;
    Label172: TLabel;
    Label173: TLabel;
    Label174: TLabel;
    Label175: TLabel;
    Label8: TLabel;
    Label67: TLabel;
    DBEdit92: TDBEdit;
    DBEdit93: TDBEdit;
    DBEdit94: TDBEdit;
    DBEdit95: TDBEdit;
    DBEdit96: TDBEdit;
    DBComboBox26: TDBComboBox;
    DBComboBox27: TDBComboBox;
    DBEdit97: TDBEdit;
    DBEdit98: TDBEdit;
    DBEdit99: TDBEdit;
    DBEdit100: TDBEdit;
    DBEdit101: TDBEdit;
    DBEdit15: TDBEdit;
    procedure EditarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBComboBox27KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure DBGridConsultaDblClick(Sender: TObject);
    procedure Liberar1Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure CancelarClick(Sender: TObject);
    procedure PageControlModeloCadastroChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroInternoSaude: TFrmCadastroInternoSaude;

implementation

uses DmPrincipal, Lib, CadastroCidade, FrmMedico, CadastroTipoDieta,
  CadastroEnfermidade, CadastroRemedio, CadastroDeficiencia,
  CadastroVacina; //, FrmMedico, CadastroTipoDieta;

{$R *.dfm}

procedure TFrmCadastroInternoSaude.EditarClick(Sender: TObject);
begin
  inherited;
  PageControlSaude.ActivePageIndex := 0;
  DateTimePickerconsulta.Date := date;
  DateTimePickerinicio.Date := date;
  DateTimePickertermino.Date := date;
  DateTimePickerdataremedio.Date := date;
  DateTimePickerdeficiencia.Date := Date;
  DateTimePickerdatavacina.Date := Date;
end;

procedure TFrmCadastroInternoSaude.FormCreate(Sender: TObject);
begin
  inherited;
  PageControlSaude.ActivePageIndex := 0;

  dshistorico_saude.DataSet.close;
  dshistorico_saude.DataSet.Open;

  dsdieta.DataSet.close;
  dsdieta.DataSet.Open;

  dsdeficienciainterno.DataSet.close;
  dsdeficienciainterno.DataSet.Open;

  dm.dsdeficiencia.DataSet.close;
  dm.dsdeficiencia.DataSet.Open;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_SAUDE)
    and not ContemValor('E', PERMISSAO_SAUDE)
    and not ContemValor('D', PERMISSAO_SAUDE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SAUDE)
    and not ContemValor('E', PERMISSAO_SAUDE)
    and not ContemValor('D', PERMISSAO_SAUDE) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SAUDE)
    and ContemValor('E', PERMISSAO_SAUDE)
    and not ContemValor('D', PERMISSAO_SAUDE) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SAUDE)
    and ContemValor('E', PERMISSAO_SAUDE)
    and ContemValor('D', PERMISSAO_SAUDE) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SAUDE)
    and not ContemValor('E', PERMISSAO_SAUDE)
    and ContemValor('D', PERMISSAO_SAUDE) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SAUDE)
    and not ContemValor('E', PERMISSAO_SAUDE)
    and ContemValor('D', PERMISSAO_SAUDE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SAUDE)
    and ContemValor('E', PERMISSAO_SAUDE)
    and not ContemValor('D', PERMISSAO_SAUDE) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroInternoSaude.DBComboBox27KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := #0;
end;

procedure TFrmCadastroInternoSaude.Button1Click(Sender: TObject);
begin
  inherited;
  dshistorico_saude.DataSet.Append;
  dshistorico_saude.DataSet.fieldbyname('id_historico_saude').AsInteger := 0;
  dshistorico_saude.DataSet.fieldbyname('id_interno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  dshistorico_saude.DataSet.fieldbyname('data').AsString :=
    FormatDateTime('dd/mm/yyyy', DateTimePickerHistorico.Date);
  dshistorico_saude.DataSet.fieldbyname('descricao').AsString := MemoDescricao.Lines.Text;
  dshistorico_saude.DataSet.fieldbyname('setor').AsString := 'Saúde';
  dshistorico_saude.DataSet.fieldbyname('ID_FUNCIONARIO').AsInteger :=
    GLOBAL_ID_FUNCIONARIO;
  dshistorico_saude.DataSet.Post;

  MemoDescricao.Lines.Clear;

end;

procedure TFrmCadastroInternoSaude.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  FrmFRMmedico := TFrmFRMmedico.Create(Application);
  FrmFRMmedico.ShowModal;
  FreeAndNil(FrmFRMmedico);

  dm.dsmedico.DataSet.Close;
  dm.dsmedico.DataSet.open;

end;

procedure TFrmCadastroInternoSaude.Button2Click(Sender: TObject);
begin
  inherited;
  dsdieta.DataSet.Append;
  dsdieta.DataSet.fieldbyname('id_controle_dieta').AsInteger := 0;
  dsdieta.DataSet.fieldbyname('id_interno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  dsdieta.DataSet.fieldbyname('data_consulta').AsString :=
    FormatDateTime('dd/mm/yyyy', DateTimePickerconsulta.Date);
  dsdieta.DataSet.fieldbyname('data_inicio').AsString :=
    FormatDateTime('dd/mm/yyyy', DateTimePickerinicio.Date);
  dsdieta.DataSet.fieldbyname('data_termino').AsString :=
    FormatDateTime('dd/mm/yyyy', DateTimePickertermino.Date);
  dsdieta.DataSet.fieldbyname('descricao').AsString := Memodescricaodieta.Lines.Text;
  dsdieta.DataSet.fieldbyname('ID_FUNCIONARIO').AsInteger :=
    GLOBAL_ID_FUNCIONARIO;
  dsdieta.DataSet.fieldbyname('ID_medico').AsInteger := DBLookupComboBoxmedico.KeyValue;
  dsdieta.DataSet.fieldbyname('ID_tipo_dieta').AsInteger := DBLookupComboBoxtipodieta.KeyValue;
  dsdieta.DataSet.Post;

  Memodescricaodieta.Lines.Clear;
  DBLookupComboBoxmedico.KeyValue := null;
  DBLookupComboBoxtipodieta.KeyValue := null;
  DateTimePickerconsulta.Date := date;
  DateTimePickerinicio.Date := date;
  DateTimePickertermino.Date := date;

end;

procedure TFrmCadastroInternoSaude.FormShow(Sender: TObject);
begin
  inherited;

  dm.Dstipodieta.DataSet.Close;
  dm.Dstipodieta.DataSet.open;

  dm.dsmedico.DataSet.Close;
  dm.dsmedico.DataSet.open;

  dm.DSRemedio.DataSet.Close;
  dm.DSRemedio.DataSet.open;

  dm.dsenfermidade.DataSet.Close;
  dm.dsenfermidade.DataSet.open;

  dm.dsvacina.DataSet.Close;
  dm.dsvacina.DataSet.open;

  DSENFERMDIADE_INTERNO.DataSet.Close;
  DSENFERMDIADE_INTERNO.DataSet.open;

  dsremedioenfermidade.DataSet.Close;
  dsremedioenfermidade.DataSet.open;

  dsvacinainterno.DataSet.Close;
  dsvacinainterno.DataSet.open;

end;

procedure TFrmCadastroInternoSaude.Button3Click(Sender: TObject);
begin
  inherited;

  if DBLookupComboBoxenfermidade.KeyValue = null then
  begin
    showmessage('Digite a Enfermidade!');
    exit;
  end;

  DSENFERMDIADE_INTERNO.DataSet.Append;
  DSENFERMDIADE_INTERNO.DataSet.fieldbyname('ID_ENFERMDIADE_INTERNO').AsInteger := DBGenerator('id_enfermdiade_interno');
  DSENFERMDIADE_INTERNO.DataSet.fieldbyname('id_interno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  DSENFERMDIADE_INTERNO.DataSet.fieldbyname('ID_ENFERMIDADE').AsInteger :=
    DBLookupComboBoxenfermidade.KeyValue;
  DSENFERMDIADE_INTERNO.DataSet.fieldbyname('status').AsString := 'A';
  DSENFERMDIADE_INTERNO.DataSet.Post;

  DBLookupComboBoxenfermidade.KeyValue := null;

end;

procedure TFrmCadastroInternoSaude.SpeedButton10Click(Sender: TObject);
begin
  inherited;
  Frmcadastroenfermidade := TFrmcadastroenfermidade.Create(Application);
  Frmcadastroenfermidade.ShowModal;
  FreeAndNil(Frmcadastroenfermidade);

  dm.dsenfermidade.DataSet.Close;
  dm.dsenfermidade.DataSet.open;

end;

procedure TFrmCadastroInternoSaude.SpeedButton12Click(Sender: TObject);
begin
  inherited;

  FrmCadastroRemedio := TFrmCadastroRemedio.Create(Application);
  FrmCadastroRemedio.ShowModal;
  FreeAndNil(FrmCadastroRemedio);

  DM.DSRemedio.DataSet.Close;
  dm.DSRemedio.DataSet.OPEN;
end;

procedure TFrmCadastroInternoSaude.Button4Click(Sender: TObject);
begin
  inherited;
  if DBLookupComboBoxremedio.KeyValue = null then
  begin
    showmessage('Digite o Remédio!');
    exit;
  end;

  if DBLookupComboBoxenfermidadeinterno.KeyValue = null then
  begin
    showmessage('Digite a Enfermidade!');
    exit;
  end;

  dsremedioenfermidade.DataSet.Append;
  dsremedioenfermidade.DataSet.fieldbyname('ID_remedio_enfermidade').AsInteger := 0;
  dsremedioenfermidade.DataSet.fieldbyname('id_enfermidade_interno').AsInteger :=
    DBLookupComboBoxenfermidadeinterno.KeyValue;
  dsremedioenfermidade.DataSet.fieldbyname('ID_remedio').AsInteger :=
    DBLookupComboBoxremedio.KeyValue;
  dsremedioenfermidade.DataSet.fieldbyname('data_inicio').AsString := formatdatetime('dd/mm/yyyy', DateTimePickerdataremedio.date);
  dsremedioenfermidade.DataSet.fieldbyname('qtde').AsString := Editqtde.text;
  dsremedioenfermidade.DataSet.Post;

  DBLookupComboBoxenfermidadeinterno.KeyValue := null;
  DBLookupComboBoxremedio.KeyValue := null;
  Memoenfermidade.Text := '';
  DateTimePickerdataremedio.Date := date;

end;

procedure TFrmCadastroInternoSaude.SpeedButton13Click(Sender: TObject);
begin
  inherited;
  FrmCadastroEnfermidade := TFrmCadastroEnfermidade.Create(Application);
  FrmCadastroEnfermidade.ShowModal;
  FreeAndNil(FrmCadastroEnfermidade);

  DM.dsenfermidade.DataSet.Close;
  dm.dsenfermidade.DataSet.OPEN;
end;

procedure TFrmCadastroInternoSaude.DBGridConsultaDblClick(Sender: TObject);
begin

  inherited;
  DateTimePickerdataremedio.Date := date;
  DateTimePickerconsulta.Date := date;
  DateTimePickerinicio.Date := date;
  DateTimePickertermino.Date := date;
  DateTimePickerdataremedio.Date := date;
  DateTimePickerdeficiencia.Date := Date;
  DateTimePickerdatavacina.Date := Date;

end;

procedure TFrmCadastroInternoSaude.Liberar1Click(Sender: TObject);
begin
  inherited;
  if dsremedioenfermidade.DataSet.FieldByName('status').asstring = '' then
  begin
    if MessageDlg('Confirma Encerrar Tratamento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      dsremedioenfermidade.DataSet.edit;
      dsremedioenfermidade.DataSet.fieldbyname('DATA_FIM').AsDateTime := DATE;
      dsremedioenfermidade.DataSet.fieldbyname('status').AsString := 'ENCERRADO';
      dsremedioenfermidade.DataSet.Post;
    end;
  end
  else
    showmessage('Tratamento Já Encerrado!');

end;

procedure TFrmCadastroInternoSaude.SpeedButton14Click(Sender: TObject);
begin
  inherited;
  FrmCadastrodeficiencia := TFrmCadastrodeficiencia.Create(Application);
  FrmCadastrodeficiencia.ShowModal;
  FreeAndNil(FrmCadastrodeficiencia);

  DM.dsdeficiencia.DataSet.Close;
  dm.dsdeficiencia.DataSet.OPEN;
end;

procedure TFrmCadastroInternoSaude.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if DBLookupComboBoxdeficiencia.KeyValue = null then
  begin
    showmessage('Digite a Deficiência!');
    exit;
  end;

  dsdeficienciainterno.DataSet.Append;
  dsdeficienciainterno.DataSet.fieldbyname('ID_DEFICIENCIA_INTERNO').AsInteger := 0;
  dsdeficienciainterno.DataSet.fieldbyname('id_interno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  dsdeficienciainterno.DataSet.fieldbyname('ID_DEFICIENCIA').AsInteger :=
    DBLookupComboBoxdeficiencia.KeyValue;
  dsdeficienciainterno.DataSet.fieldbyname('TIPO_LOCOMOCAO').AsString := EditLOCOMOCAO.Text;
  dsdeficienciainterno.DataSet.fieldbyname('MEMBRO').AsString := EditMEMBRO.TEXT;
  dsdeficienciainterno.DataSet.fieldbyname('TIPO_ATROFIA').AsString := EditATROFIA.Text;
  dsdeficienciainterno.DataSet.fieldbyname('MOTIVO').AsString := EditMOTIVO.Text;
  dsdeficienciainterno.DataSet.Post;

  DBLookupComboBoxdeficiencia.KeyValue := null;
  EditLOCOMOCAO.Text := '';
  EditMEMBRO.Text := '';
  EditATROFIA.Text := '';
  EditMOTIVO.Text := '';

end;

procedure TFrmCadastroInternoSaude.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if DBLookupComboBoxvacina.KeyValue = null then
  begin
    showmessage('Digite a Vacina!');
    exit;
  end;

  dsvacinainterno.DataSet.Append;
  dsvacinainterno.DataSet.fieldbyname('ID_VACINA_INTERNO').AsInteger := 0;
  dsvacinainterno.DataSet.fieldbyname('id_interno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  dsvacinainterno.DataSet.fieldbyname('ID_VACINA').AsInteger :=
    DBLookupComboBoxvacina.KeyValue;
  dsvacinainterno.DataSet.fieldbyname('DATA_VACINA').AsDateTime := DateTimePickerdatavacina.date;
  dsvacinainterno.DataSet.fieldbyname('DOSE').AsString := Editdose.TEXT;
  dsvacinainterno.DataSet.Post;

  DBLookupComboBoxvacina.KeyValue := null;
  Editdose.Text := '';
end;

procedure TFrmCadastroInternoSaude.SpeedButton15Click(Sender: TObject);
begin
  inherited;
  FrmCadastrovacina := TFrmCadastrovacina.Create(Application);
  FrmCadastrovacina.ShowModal;
  FreeAndNil(FrmCadastrovacina);

  DM.dsvacina.DataSet.Close;
  dm.dsvacina.DataSet.OPEN;
end;

procedure TFrmCadastroInternoSaude.SpeedButton16Click(Sender: TObject);
begin
  inherited;
  Frmcadastrotipodieta := TFrmcadastrotipodieta.Create(Application);
  Frmcadastrotipodieta.ShowModal;
  FreeAndNil(Frmcadastrotipodieta);

  dm.Dstipodieta.DataSet.Close;
  dm.Dstipodieta.DataSet.open;


end;

procedure TFrmCadastroInternoSaude.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_SAUDE)
    and not ContemValor('E', PERMISSAO_SAUDE)
    and not ContemValor('D', PERMISSAO_SAUDE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SAUDE)
    and not ContemValor('E', PERMISSAO_SAUDE)
    and not ContemValor('D', PERMISSAO_SAUDE) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SAUDE)
    and ContemValor('E', PERMISSAO_SAUDE)
    and not ContemValor('D', PERMISSAO_SAUDE) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SAUDE)
    and ContemValor('E', PERMISSAO_SAUDE)
    and ContemValor('D', PERMISSAO_SAUDE) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SAUDE)
    and not ContemValor('E', PERMISSAO_SAUDE)
    and ContemValor('D', PERMISSAO_SAUDE) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SAUDE)
    and not ContemValor('E', PERMISSAO_SAUDE)
    and ContemValor('D', PERMISSAO_SAUDE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SAUDE)
    and ContemValor('E', PERMISSAO_SAUDE)
    and not ContemValor('D', PERMISSAO_SAUDE) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroInternoSaude.CancelarClick(Sender: TObject);
begin
  inherited;
  dshistorico_saude.DataSet.Close;
  dshistorico_saude.DataSet.Open;

  dsdieta.DataSet.Close;
  dsdieta.DataSet.Open;

  DSENFERMDIADE_INTERNO.DataSet.Close;
  DSENFERMDIADE_INTERNO.DataSet.Open;

  dsremedioenfermidade.DataSet.Close;
  dsremedioenfermidade.DataSet.Open;

  dsdeficienciainterno.DataSet.Close;
  dsdeficienciainterno.DataSet.Open;

  dsvacinainterno.DataSet.Close;
  dsvacinainterno.DataSet.Open;
end;

procedure TFrmCadastroInternoSaude.PageControlModeloCadastroChange(
  Sender: TObject);
begin
  //inherited;
  if PageControlModeloCadastro.ActivePageIndex = 1 then
  begin
    CancelarClick(nil);
  end;
end;

end.

