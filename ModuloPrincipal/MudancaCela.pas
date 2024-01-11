unit MudancaCela;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls,
  ToolWin, Mask, Buttons, Menus, System.ImageList, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmMudancaCela = class(TFrmModeloCadastro)
    PageControlTransferencia: TPageControl;
    SqlVinc_Mudanca_Celaold: TSQLQuery;
    DspVinc_Mudanca_Cela: TDataSetProvider;
    CdsVinc_Mudanca_Cela: TClientDataSet;
    DsVinc_Mudanca_Cela: TDataSource;
    SQLHISTORICO_internoold: TSQLQuery;
    DSPHISTORICO_interno: TDataSetProvider;
    CDSHISTORICO_interno: TClientDataSet;
    DSHISTORICO_interno: TDataSource;
    DsInterno: TDataSource;
    CdsInterno: TClientDataSet;
    DspInterno: TDataSetProvider;
    SqlInternoold: TSQLQuery;
    TabSheetTransferencia: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEditcodigo: TDBEdit;
    DBEditDoc: TDBEdit;
    DBEditdata: TDBEdit;
    DBLookupComboBoxorigem: TDBLookupComboBox;
    DBComboBoxTipoDoc: TDBComboBox;
    DBMemo1: TDBMemo;
    SqlExecuteold: TSQLQuery;
    MainMenu1: TMainMenu;
    Relatorios1: TMenuItem;
    Especifico1: TMenuItem;
    SqlConsultaold: TSQLQuery;
    DspConsulta: TDataSetProvider;
    CdsConsulta: TClientDataSet;
    DsConsulta: TDataSource;
    DateTimePicker1: TDateTimePicker;
    Label5: TLabel;
    Button2: TButton;
    PopupMenuLiberar: TPopupMenu;
    Liberar1: TMenuItem;
    SqlPavilhaoold: TSQLQuery;
    DspPavilhao: TDataSetProvider;
    CdsPavilhao: TClientDataSet;
    DsPavilhao: TDataSource;
    DsGaleria: TDataSource;
    CdsGaleria: TClientDataSet;
    DspGaleria: TDataSetProvider;
    SqlGaleriaold: TSQLQuery;
    SqlSolarioold: TSQLQuery;
    DspSolario: TDataSetProvider;
    CdsSolario: TClientDataSet;
    DsSolario: TDataSource;
    DsCela: TDataSource;
    CdsCela: TClientDataSet;
    DspCela: TDataSetProvider;
    SqlCelaold: TSQLQuery;
    Dsconspadrao: TDataSource;
    Cdsconspadrao: TClientDataSet;
    Dspconspadrao: TDataSetProvider;
    SQLconspadraoold: TSQLQuery;
    DBGridMudancaConsulta: TDBGrid;
    CdsVinc_Mudanca_CelaSTATUS: TStringField;
    CdsVinc_Mudanca_CelaID_VINC_MUDANCA_CELA: TIntegerField;
    CdsVinc_Mudanca_CelaID_MUDANCA_CELA: TIntegerField;
    CdsVinc_Mudanca_CelaID_INTERNO: TIntegerField;
    CdsVinc_Mudanca_CelaID_PAVILHAO_ANTES: TIntegerField;
    CdsVinc_Mudanca_CelaID_GALERIA_ANTES: TIntegerField;
    CdsVinc_Mudanca_CelaID_SOLARIO_ANTES: TIntegerField;
    CdsVinc_Mudanca_CelaID_CELA_ANTES: TIntegerField;
    CdsVinc_Mudanca_CelaID_PAVILHAO_NOVO: TIntegerField;
    CdsVinc_Mudanca_CelaID_GALERIA_NOVO: TIntegerField;
    CdsVinc_Mudanca_CelaID_SOLARIO_NOVO: TIntegerField;
    CdsVinc_Mudanca_CelaID_CELA_NOVO: TIntegerField;
    CdsVinc_Mudanca_CelaINTERNO: TStringField;
    CdsVinc_Mudanca_CelaRGI: TStringField;
    SqlPavAntesold: TSQLQuery;
    SqlGalAntesold: TSQLQuery;
    SqlSolAntesold: TSQLQuery;
    SqlCelaAntesold: TSQLQuery;
    DspCelaAntes: TDataSetProvider;
    DspSolAntes: TDataSetProvider;
    DspGalAntes: TDataSetProvider;
    DspPavAntes: TDataSetProvider;
    CdsPavAntes: TClientDataSet;
    DsPavAntes: TDataSource;
    DsGalAntes: TDataSource;
    CdsGalAntes: TClientDataSet;
    CdsSolAntes: TClientDataSet;
    DsSolAntes: TDataSource;
    DsCelaAntes: TDataSource;
    CdsCelaAntes: TClientDataSet;
    CdsVinc_Mudanca_CelaPAVILHAO_ANTES: TStringField;
    CdsVinc_Mudanca_CelaGALERIA_ANTES: TStringField;
    CdsVinc_Mudanca_CelaSOLARIO_ANTES: TStringField;
    CdsVinc_Mudanca_CelaCELA_ANTES: TStringField;
    CdsVinc_Mudanca_CelaPAVILHAO_NOVO: TStringField;
    CdsVinc_Mudanca_CelaGALERIA_NOVO: TStringField;
    CdsVinc_Mudanca_CelaSOLARIO_NOVO: TStringField;
    CdsVinc_Mudanca_CelaCELA_NOVO: TStringField;
    GroupBox1: TGroupBox;
    LabelPavilhao: TLabel;
    LabelGaleria: TLabel;
    LabelCela: TLabel;
    LabelSolario: TLabel;
    DBGridMudanca: TDBGrid;
    SqlCelaInternoold: TSQLQuery;
    DspCelaInterno: TDataSetProvider;
    CdsCelaInterno: TClientDataSet;
    DSCelaInterno: TDataSource;
    ConfirmaMudanca: TToolButton;
    Timer1: TTimer;
    LabelAguardando: TLabel;
    Label9: TLabel;
    Editprontuario: TEdit;
    DBLookupComboBoxinterno: TDBLookupComboBox;
    Button1: TButton;
    BtnTodosCela: TButton;
    LabelAguardando2: TLabel;
    SQLHISTORICO_interno: TFDQuery;
    SqlConsulta: TFDQuery;
    SQLconspadrao: TFDQuery;
    SqlCelaInterno: TFDQuery;
    SqlInterno: TFDQuery;
    SqlVinc_Mudanca_Cela: TFDQuery;
    SqlExecute: TFDQuery;
    SqlPavAntes: TFDQuery;
    SqlGalAntes: TFDQuery;
    SqlSolAntes: TFDQuery;
    SqlCelaAntes: TFDQuery;
    SqlSolario: TFDQuery;
    SqlCela: TFDQuery;
    SqlGaleria: TFDQuery;
    SqlPavilhao: TFDQuery;
    DBLookupComboBoxPavilhao: TComboBox;
    DBLookupComboBoxGaleria: TComboBox;
    DBLookupComboBoxCela: TComboBox;
    DBLookupComboBoxSolario: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure BtnincluirClick(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EditprontuarioExit(Sender: TObject);
    procedure DBGridMudancaDblClick(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CdsVinc_Mudanca_CelaCalcFields(DataSet: TDataSet);
    procedure DBGridMudancaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Especifico1Click(Sender: TObject);
    procedure DBGridConsultaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure Button2Click(Sender: TObject);
    procedure BtnTodosCelaClick(Sender: TObject);
    procedure Liberar1Click(Sender: TObject);
    procedure ConfirmaMudancaClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure PageControlModeloCadastroChange(Sender: TObject);
    procedure DsPavilhaoDataChange(Sender: TObject; Field: TField);
    procedure DsPavilhaoUpdateData(Sender: TObject);
    procedure DsPavilhaoStateChange(Sender: TObject);
    procedure DBLookupComboBoxPavilhaoClick(Sender: TObject);
    procedure DBLookupComboBoxPavilhaoExit(Sender: TObject);
    procedure DBLookupComboBoxPavilhaoChange(Sender: TObject);
    procedure DBLookupComboBoxGaleriaChange(Sender: TObject);
    procedure DBLookupComboBoxSolarioChange(Sender: TObject);
  private
    function Validacao: boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMudancaCela: TFrmMudancaCela;

implementation

uses DmPrincipal, CadastroDestino, Lib, CancelarSaidao,
  CancelarTransferencia, MenuRelatorio, FiltroCela, Aguarde;

{$R *.dfm}

procedure TFrmMudancaCela.FormShow(Sender: TObject);
begin
  inherited;
  // DBEditdata.Field.EditMask := '99\/99\/9999;1;_';

  dm.DsUP.DataSet.Close;
  dm.DsUP.DataSet.OPEN;

  dm.DsDestino.DataSet.Close;
  dm.DsDestino.DataSet.OPEN;

  DsInterno.DataSet.Close;
  SqlInterno.Params[0].Value := GLOBAL_ID_UP;
  DsInterno.DataSet.OPEN;

  DSHISTORICO_interno.DataSet.Close;
  DSHISTORICO_interno.DataSet.OPEN;

  SqlPavilhao.Close;
  SqlPavilhao.Open;
  DBLookupComboBoxPavilhao.Items.Clear;
  while not SqlPavilhao.Eof do
  begin
    DBLookupComboBoxPavilhao.Items.Add(SqlPAvilhao.FieldByName('PAVILHAO').AsString);
    SqlPavilhao.Next;
  end;

  DBLookupComboBoxPavilhao.ItemIndex := 1;

  DBLookupComboBoxPavilhao.OnChange(nil);
end;

function TFrmMudancaCela.Validacao(): boolean;
begin
  result := false;

  if DsCadastro.DataSet.fieldbyname('NUMERO_DOCUMENTO').Asstring = '' then
  begin
    showmessage('Digite o Documento!');
    PageControlTransferencia.ActivePageIndex := 0;
    if DBEditDoc.CanFocus then
      DBEditDoc.SetFocus;
    Editprontuario.Text := '';
    exit;
  end;

  if DsCadastro.DataSet.fieldbyname('TIPO_DOCUMENTO').Asstring = '' then
  begin
    showmessage('Digite o Tipo de Documento!');
    PageControlTransferencia.ActivePageIndex := 0;
    if DBComboBoxTipoDoc.CanFocus then
      DBComboBoxTipoDoc.SetFocus;
    Editprontuario.Text := '';
    exit;
  end;

  if DBLookupComboBoxPavilhao.Text = '' then
  begin
    PageControlTransferencia.ActivePageIndex := 0;
    showmessage('Informe o ' + GLOBAL_NIVEL_1 + '!');
    if DBLookupComboBoxPavilhao.CanFocus then
      DBLookupComboBoxPavilhao.SetFocus;
    Editprontuario.Text := '';
    exit;
  end;

  if DBLookupComboBoxGaleria.Text = '' then
  begin
    PageControlTransferencia.ActivePageIndex := 0;
    showmessage('Informe o ' + GLOBAL_NIVEL_2 + '!');
    if DBLookupComboBoxGaleria.CanFocus then
      DBLookupComboBoxGaleria.SetFocus;
    Editprontuario.Text := '';
    exit;
  end;

  if DBLookupComboBoxSolario.Text = '' then
  begin
    PageControlTransferencia.ActivePageIndex := 0;
    showmessage('Informe o ' + GLOBAL_NIVEL_3 + '!');
    if DBLookupComboBoxSolario.CanFocus then
      DBLookupComboBoxSolario.SetFocus;
    Editprontuario.Text := '';
    exit;
  end;

  if DBLookupComboBoxCela.Text = '' then
  begin
    PageControlTransferencia.ActivePageIndex := 0;
    showmessage('Informe o ' + GLOBAL_NIVEL_4 + '!');
    if DBLookupComboBoxCela.CanFocus then
      DBLookupComboBoxCela.SetFocus;
    Editprontuario.Text := '';
    exit;
  end;

  result := true;

end;

procedure TFrmMudancaCela.BtnincluirClick(Sender: TObject);
begin
  inherited;

  if not Validacao then
    exit;

  if DBLookupComboBoxinterno.KeyValue > 0 then
  begin

    if DsVinc_Mudanca_Cela.DataSet.Locate('ID_INTERNO',
      DBLookupComboBoxinterno.KeyValue, []) then
    begin
      showmessage('Interno ' + DBLookupComboBoxinterno.Text + ', já lançado.');
      DBLookupComboBoxinterno.KeyValue := null;
      Editprontuario.Text := '';
      if Editprontuario.CanFocus then
        Editprontuario.SetFocus;
      exit;
    end;

    { Lançando Preso na tabela de transferencia }
    DsVinc_Mudanca_Cela.DataSet.Append;
    DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_VINC_MUDANCA_CELA')
      .AsInteger := DM.SQLConnect.ExecSQLScalar('SELECT GEN_ID(COD_UP,0)|| GEN_ID(ID_VINC_MUDANCA_CELA,1) FROM RDB$DATABASE');;
    DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_MUDANCA_CELA').AsInteger :=
      DsCadastro.DataSet.fieldbyname('ID_MUDANCA_CELA').AsInteger;
    DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_INTERNO').AsInteger :=
      DBLookupComboBoxinterno.KeyValue;

    DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_PAVILHAO_ANTES').AsInteger :=
      DsInterno.DataSet.fieldbyname('IDPAVILHAO').AsInteger;
    DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_GALERIA_ANTES').AsInteger :=
      DsInterno.DataSet.fieldbyname('IDGALERIA').AsInteger;
    DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_SOLARIO_ANTES').AsInteger :=
      DsInterno.DataSet.fieldbyname('IDSOLARIO').AsInteger;
    DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_CELA_ANTES').AsInteger :=
      DsInterno.DataSet.fieldbyname('IDCELA').AsInteger;

    DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_PAVILHAO_NOVO').AsInteger :=
      DM.SQLConnect.ExecSQLScalar('SELECT FIRST 1 ID_PAVILHAO FROM PAVILHAO WHERE PAVILHAO = ''' + DBLookupComboBoxPAvilhao.Text+'''');
    DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_GALERIA_NOVO').AsInteger :=
      DM.SQLConnect.ExecSQLScalar('SELECT FIRST  1 ID_GALERIA FROM GALERIA INNER JOIN PAVILHAO ON (IDPAVILHAO = ID_PAVILHAO) WHERE GALERIA = ''' + DBLookupComboBoxGaleria.Text + ''' AND PAVILHAO = ''' + DBLookupComboBoxPavilhao.Text + '''');
      //DBLookupComboBoxGaleria.KeyValue;
    DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_SOLARIO_NOVO').AsInteger :=
      DM.SQLConnect.ExecSQLScalar('SELECT FIRST 1 s.ID_SOLARIO FROM SOLARIO s INNER JOIN PAVILHAO p ON (s.IDPAVILHAO = p.ID_PAVILHAO) INNER JOIN GALERIA g on (S.IDGALERIA = g.ID_GALERIA) WHERE SOLARIO = '''+ DBLookupComboBoxSolario.Text+ ''' AND g.GALERIA = ''' + DBLookupComboBoxGaleria.Text + ''' AND p.PAVILHAO = ''' + DBLookupComboBoxPavilhao.Text + '''');
      //DBLookupComboBoxSolario.KeyValue;
    DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_CELA_NOVO').AsInteger :=
      DM.SQLConnect.ExecSQLScalar('SELECT FIRST 1 c.ID_CELA FROM CELA c INNER JOIN PAVILHAO p ON (c.IDPAVILHAO = p.ID_PAVILHAO) INNER JOIN GALERIA g on (c.IDGALERIA = g.ID_GALERIA) INNER JOIN SOLARIO s on (s.ID_SOLARIO = c.IDSOLARIO) WHERE c.CELA = '''+DBLookupComboBoxCela.Text + ''' AND s.SOLARIO = '''+ DBLookupComboBoxSolario.Text+ ''' AND g.GALERIA = ''' + DBLookupComboBoxGaleria.Text + ''' AND p.PAVILHAO = ''' + DBLookupComboBoxPavilhao.Text + '''');

      //DBLookupComboBoxCela.KeyValue;

    DsVinc_Mudanca_Cela.DataSet.Post;

    DBLookupComboBoxinterno.KeyValue := null;
    Editprontuario.Text := '';

  end
  else
  begin
    showmessage('Informe o interno!');
  end;

end;

procedure TFrmMudancaCela.NovoClick(Sender: TObject);
begin
  inherited;
  PageControlTransferencia.ActivePageIndex := 0;
  DsCadastro.DataSet.fieldbyname('ID_MUDANCA_CELA').AsInteger :=
    DBGenerator('ID_MUDANCA_CELA');
  DsCadastro.DataSet.fieldbyname('ID_UP').AsInteger := GLOBAL_ID_UP;
  DsCadastro.DataSet.fieldbyname('DATA').AsDateTime := date;
  DsCadastro.DataSet.fieldbyname('ID_FUNCIONARIO').AsInteger :=
    GLOBAL_ID_FUNCIONARIO;

end;

procedure TFrmMudancaCela.FormCreate(Sender: TObject);
begin
  inherited;
  // DM.cdsInterno.Close;
  // DM.cdsInterno.Open;

  dm.DsInterno.DataSet.Close;
  dm.SqlInterno.Params[0].Value := GLOBAL_ID_UP;
  dm.DsInterno.DataSet.OPEN;

  LabelPavilhao.Caption := GLOBAL_NIVEL_1;
  LabelGaleria.Caption := GLOBAL_NIVEL_2;
  LabelSolario.Caption := GLOBAL_NIVEL_3;
  LabelCela.Caption := GLOBAL_NIVEL_4;

  SqlPavilhao.SQL.Text := ' select * from pavilhao where id_up=' +
    inttostr(GLOBAL_ID_UP) + ' order by pavilhao';

  DsPavilhao.DataSet.Close;
  DsPavilhao.DataSet.OPEN;

  DsGaleria.DataSet.Close;
  DsGaleria.DataSet.OPEN;

  DsSolario.DataSet.Close;
  DsSolario.DataSet.OPEN;

  DsCela.DataSet.Close;
  DsCela.DataSet.OPEN;

  SqlPavAntes.SQL.Text := ' select * from pavilhao where id_up=' +
    inttostr(GLOBAL_ID_UP) + ' order by pavilhao';

  DsPavAntes.DataSet.Close;
  DsPavAntes.DataSet.OPEN;

  DsGalAntes.DataSet.Close;
  DsGalAntes.DataSet.OPEN;

  DsSolAntes.DataSet.Close;
  DsSolAntes.DataSet.OPEN;

  DsCelaAntes.DataSet.Close;
  DsCelaAntes.DataSet.OPEN;

  { selecionando cela virtual }
  SQLconspadrao.SQL.Text := 'select * from padrao where cod_up =' +
    qs(inttostr(GLOBAL_ID_UP));
  Dsconspadrao.DataSet.Close;
  Dsconspadrao.DataSet.OPEN;

  {DBLookupComboBoxPavilhao.KeyValue := Dsconspadrao.DataSet.fieldbyname
    ('id_pavilhao').AsVariant;
  DBLookupComboBoxGaleria.KeyValue := Dsconspadrao.DataSet.fieldbyname
    ('id_galeria').AsVariant;
  DBLookupComboBoxSolario.KeyValue := Dsconspadrao.DataSet.fieldbyname
    ('id_solario').AsVariant;
  DBLookupComboBoxCela.KeyValue := Dsconspadrao.DataSet.fieldbyname('id_cela')
    .AsVariant;
                        }
  DBGridMudancaConsulta.Columns[3].Title.Caption := '<' + GLOBAL_NIVEL_1;
  DBGridMudancaConsulta.Columns[4].Title.Caption := '<' + GLOBAL_NIVEL_2;
  DBGridMudancaConsulta.Columns[5].Title.Caption := '<' + GLOBAL_NIVEL_3;
  DBGridMudancaConsulta.Columns[6].Title.Caption := '<' + GLOBAL_NIVEL_4;

  DBGridMudancaConsulta.Columns[7].Title.Caption := '>' + GLOBAL_NIVEL_1;
  DBGridMudancaConsulta.Columns[8].Title.Caption := '>' + GLOBAL_NIVEL_2;
  DBGridMudancaConsulta.Columns[9].Title.Caption := '>' + GLOBAL_NIVEL_3;
  DBGridMudancaConsulta.Columns[10].Title.Caption := '>' + GLOBAL_NIVEL_4;

  DBGridMudanca.Columns[3].Title.Caption := '<' + GLOBAL_NIVEL_1;
  DBGridMudanca.Columns[4].Title.Caption := '<' + GLOBAL_NIVEL_2;
  DBGridMudanca.Columns[5].Title.Caption := '<' + GLOBAL_NIVEL_3;
  DBGridMudanca.Columns[6].Title.Caption := '<' + GLOBAL_NIVEL_4;

  DBGridMudanca.Columns[7].Title.Caption := '>' + GLOBAL_NIVEL_1;
  DBGridMudanca.Columns[8].Title.Caption := '>' + GLOBAL_NIVEL_2;
  DBGridMudanca.Columns[9].Title.Caption := '>' + GLOBAL_NIVEL_3;
  DBGridMudanca.Columns[10].Title.Caption := '>' + GLOBAL_NIVEL_4;

  SqlConsulta.Params[0].Value := GLOBAL_ID_UP;
  SqlConsulta.Params[1].Value := date;
  DateTimePicker1.date := date;

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.OPEN;

  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.OPEN;

  DsVinc_Mudanca_Cela.DataSet.Close;
  DsVinc_Mudanca_Cela.DataSet.OPEN;

  PageControlTransferencia.ActivePageIndex := 0;

  { Verifica as permissões que o usuário possui para esta tela
    e habilita ou não os respectivos botões.
    Estas verificações devem ser colocadas no final do evento FormCreate e
    no final do evento OnDataChance do DsCadastro de cada tela.
    Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
    Ex. ContemValor('I', PERMISSAO_CONFERE). }

  if not ContemValor('I', PERMISSAO_MUDANCACELA) and
    not ContemValor('E', PERMISSAO_MUDANCACELA) and
    not ContemValor('D', PERMISSAO_MUDANCACELA) then
  begin
    Novo.Visible := false;
    Editar.Visible := false;
    Excluir.Visible := false;
    Salvar.Visible := false;
  end;

  if ContemValor('I', PERMISSAO_MUDANCACELA) and
    not ContemValor('E', PERMISSAO_MUDANCACELA) and
    not ContemValor('D', PERMISSAO_MUDANCACELA) then
  begin
    Editar.Visible := false;
    Excluir.Visible := false;
    if not Salvar.Visible then
      Salvar.Visible := false;
    if not Salvar.Enabled then
      Salvar.Visible := false;
  end;

  if ContemValor('I', PERMISSAO_MUDANCACELA) and
    ContemValor('E', PERMISSAO_MUDANCACELA) and
    not ContemValor('D', PERMISSAO_MUDANCACELA) then
  begin
    Excluir.Visible := false;
  end;

  if not ContemValor('I', PERMISSAO_MUDANCACELA) and
    ContemValor('E', PERMISSAO_MUDANCACELA) and
    ContemValor('D', PERMISSAO_MUDANCACELA) then
  begin
    Novo.Visible := false;
  end;

  if ContemValor('I', PERMISSAO_MUDANCACELA) and
    not ContemValor('E', PERMISSAO_MUDANCACELA) and
    ContemValor('D', PERMISSAO_MUDANCACELA) then
  begin
    Editar.Visible := false;
    if not Salvar.Visible then
      Salvar.Visible := false;
    if not Salvar.Enabled then
      Salvar.Visible := false;
  end;

  if not ContemValor('I', PERMISSAO_MUDANCACELA) and
    not ContemValor('E', PERMISSAO_MUDANCACELA) and
    ContemValor('D', PERMISSAO_MUDANCACELA) then
  begin
    Novo.Visible := false;
    Editar.Visible := false;
    if not Salvar.Visible then
      Salvar.Visible := false;
    if not Salvar.Enabled then
      Salvar.Visible := false;
  end;

  if not ContemValor('I', PERMISSAO_MUDANCACELA) and
    ContemValor('E', PERMISSAO_MUDANCACELA) and
    not ContemValor('D', PERMISSAO_MUDANCACELA) then
  begin
    Novo.Visible := false;
    Excluir.Visible := false;
  end;

end;

procedure TFrmMudancaCela.EditprontuarioExit(Sender: TObject);
begin

  inherited;

  if Editprontuario.Text <> '' then
  begin

    dm.SqlExecute.SQL.Text :=
      'select id_interno, nome_interno, idpavilhao, idgaleria, idsolario, idcela, rgi from interno where rgi ='
      + qs(Editprontuario.Text) + ' and id_up = ' + inttostr(GLOBAL_ID_UP) +
      'and st = ''A''';
    dm.DsExecute.DataSet.Close;
    dm.DsExecute.DataSet.OPEN;

    if dm.DsExecute.DataSet.recordcount > 0 then
    begin
      DBLookupComboBoxinterno.KeyValue := dm.DsExecute.DataSet.fieldbyname
        ('id_interno').AsInteger;
      BtnincluirClick(nil);
      if Editprontuario.CanFocus then
        Editprontuario.SetFocus;
    end
    else
    begin
      showmessage('Interno não Localizado!');
      if Editprontuario.CanFocus then
        Editprontuario.SetFocus;
    end;

    dm.DsExecute.DataSet.Close;

  end;

end;

procedure TFrmMudancaCela.DBGridMudancaDblClick(Sender: TObject);
begin
  if not DsVinc_Mudanca_Cela.DataSet.IsEmpty then
  begin

    if MessageDlg('Confirma excluir a mudança de ' +
      DsVinc_Mudanca_Cela.DataSet.fieldbyname('INTERNO').Asstring,
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      DsVinc_Mudanca_Cela.DataSet.Delete;
      showmessage('Interno excluido na mudança!');
    end
    else
      showmessage('Transação Cancelada!');

  end;
end;

procedure TFrmMudancaCela.EditarClick(Sender: TObject);
begin
  inherited;

  PageControlTransferencia.ActivePageIndex := 0;

end;

procedure TFrmMudancaCela.CancelarClick(Sender: TObject);
begin
  inherited;
  DsVinc_Mudanca_Cela.DataSet.Close;
  DsVinc_Mudanca_Cela.DataSet.OPEN;

  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.OPEN;

  PageControlTransferencia.ActivePageIndex := 0;

end;

procedure TFrmMudancaCela.Button1Click(Sender: TObject);
var
  interno: variant;
begin
  inherited;

  interno := BuscaGeral(nil, 'INTERNO', '', 100, 100, self.Width, 400);

  if VarToStrDef(interno, '') <> '' then
  begin
    DBLookupComboBoxinterno.KeyValue := interno;
    Editprontuario.Text := DsInterno.DataSet.fieldbyname('RGI').Asstring;

    if Editprontuario.CanFocus then
      Editprontuario.SetFocus;
  end;

end;

procedure TFrmMudancaCela.CdsVinc_Mudanca_CelaCalcFields(DataSet: TDataSet);
begin
  inherited;

  DataSet.fieldbyname('STATUS').Asstring := '';

  // ANTES
  if DsPavAntes.DataSet.Locate('ID_PAVILHAO',
    DataSet.fieldbyname('ID_PAVILHAO_ANTES').AsInteger, []) then
    DataSet.fieldbyname('PAVILHAO_ANTES').Asstring :=
      DsPavAntes.DataSet.fieldbyname('PAVILHAO').Asstring;

  if DsGalAntes.DataSet.Locate('ID_GALERIA',
    DataSet.fieldbyname('ID_GALERIA_ANTES').AsInteger, []) then
    DataSet.fieldbyname('GALERIA_ANTES').Asstring :=
      DsGalAntes.DataSet.fieldbyname('GALERIA').Asstring;

  if DsSolAntes.DataSet.Locate('ID_SOLARIO',
    DataSet.fieldbyname('ID_SOLARIO_ANTES').AsInteger, []) then
    DataSet.fieldbyname('SOLARIO_ANTES').Asstring :=
      DsSolAntes.DataSet.fieldbyname('SOLARIO').Asstring;

  if DsCelaAntes.DataSet.Locate('ID_CELA', DataSet.fieldbyname('ID_CELA_ANTES')
    .AsInteger, []) then
    DataSet.fieldbyname('CELA_ANTES').Asstring :=
      DsCelaAntes.DataSet.fieldbyname('CELA').Asstring;

  // NOVO
  if DsPavAntes.DataSet.Locate('ID_PAVILHAO',
    DataSet.fieldbyname('ID_PAVILHAO_NOVO').AsInteger, []) then
    DataSet.fieldbyname('PAVILHAO_NOVO').Asstring :=
      DsPavAntes.DataSet.fieldbyname('PAVILHAO').Asstring;

  if DsGalAntes.DataSet.Locate('ID_GALERIA',
    DataSet.fieldbyname('ID_GALERIA_NOVO').AsInteger, []) then
    DataSet.fieldbyname('GALERIA_NOVO').Asstring :=
      DsGalAntes.DataSet.fieldbyname('GALERIA').Asstring;

  if DsSolAntes.DataSet.Locate('ID_SOLARIO',
    DataSet.fieldbyname('ID_SOLARIO_NOVO').AsInteger, []) then
    DataSet.fieldbyname('SOLARIO_NOVO').Asstring :=
      DsSolAntes.DataSet.fieldbyname('SOLARIO').Asstring;

  if DsCelaAntes.DataSet.Locate('ID_CELA', DataSet.fieldbyname('ID_CELA_NOVO')
    .AsInteger, []) then
    DataSet.fieldbyname('CELA_NOVO').Asstring := DsCelaAntes.DataSet.fieldbyname
      ('CELA').Asstring;

  if DataSet.fieldbyname('ID_PAVILHAO_NOVO').Asstring = '' then
    exit;

  if DataSet.fieldbyname('ID_GALERIA_NOVO').Asstring = '' then
    exit;

  if DataSet.fieldbyname('ID_SOLARIO_NOVO').Asstring = '' then
    exit;

  if DataSet.fieldbyname('ID_CELA_NOVO').Asstring = '' then
    exit;

  DataSet.fieldbyname('STATUS').Asstring := 'OK';

end;

procedure TFrmMudancaCela.DBGridMudancaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;

  if (State <> [gdSelected]) and (State <> [gdSelected, gdFocused]) then
  begin

    if (Column.Field = TDBGrid(Sender).DataSource.DataSet.fieldbyname('Interno'))
    then
      if TDBGrid(Sender).DataSource.DataSet.fieldbyname('STATUS').Asstring = ''
      then
        TDBGrid(Sender).Canvas.Font.Style := [fsStrikeOut];

    TDBGrid(Sender).Canvas.Font.Color := clBlack;

    if odd(TDBGrid(Sender).DataSource.DataSet.Recno) then
    begin
      TDBGrid(Sender).Canvas.Brush.Color := cl3DLight;
    end
    else
    begin
      TDBGrid(Sender).Canvas.Brush.Color := clWhite;
    end;

    TDBGrid(Sender).Canvas.FillRect(Rect);
    TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);

  end
  else
  begin
    TDBGrid(Sender).Canvas.Brush.Color := $00854F3F;
    TDBGrid(Sender).Canvas.Font.Color := clWhite;
    TDBGrid(Sender).Canvas.FillRect(Rect);
    TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
  end;

  if (Column.Field = TDBGrid(Sender).DataSource.DataSet.fieldbyname('STATUS'))
  then
  begin

    TDBGrid(Sender).Canvas.FillRect(Rect);

    dm.ImageListNetworkI.Draw(TDBGrid(Sender).Canvas, Rect.Left + 10,
      Rect.Top + 1, 24);

    if TDBGrid(Sender).DataSource.DataSet.fieldbyname('STATUS').Asstring = ''
    then
    begin
      dm.ImageListNetworkI.Draw(TDBGrid(Sender).Canvas, Rect.Left + 10,
        Rect.Top + 1, 25);
    end;

  end;

end;

procedure TFrmMudancaCela.DBLookupComboBoxGaleriaChange(Sender: TObject);
begin
  inherited;
  SqlSolario.Close;
  SqlSolario.SQL.Text := 'select * from solario s inner join galeria g on (s.idgaleria = g.id_galeria) inner join pavilhao p on (s.idpavilhao = p.id_pavilhao) where g.galeria=:galeria and p.pavilhao=:pavilhao  order by s.solario';
  SqlSolario.ParamByName('galeria').AsString := DBLookupComboBoxGaleria.Text;
  SqlSolario.ParamByName('pavilhao').AsString := DBLookupComboBoxPAvilhao.Text;
  SqlSolario.Open;
  DBLookupComboBoxSolario.Items.Clear;
  while not SqlSolario.EOF do
  begin
    DBLookupComboBoxSolario.Items.Add(SqlSolario.FieldByName('Solario').AsString);
    SqlSolario.Next;
  end;
end;

procedure TFrmMudancaCela.DBLookupComboBoxPavilhaoChange(Sender: TObject);
begin
  inherited;
  SqlGaleria.Close;
  SqlGaleria.SQL.Text:= 'Select * from galeria g inner join pavilhao p on (p.id_pavilhao = g.idpavilhao) where p.pavilhao=:pavilhao order by g.galeria';
  SqlGaleria.ParamByName('pavilhao').AsString := DBLookupComboBoxPavilhao.Text;
  SqlGaleria.Open;
  DBLookupComboBoxGaleria.Items.Clear;

  while not SqlGaleria.Eof do
  Begin
    DBLookupComboBoxGaleria.Items.Add(SqlGaleria.FieldByName('galeria').AsString);
    SqlGaleria.Next;
  End;
end;

procedure TFrmMudancaCela.DBLookupComboBoxPavilhaoClick(Sender: TObject);
begin
  inherited;
 // showmessage(SqlGaleria.SQL.Text);
end;

procedure TFrmMudancaCela.DBLookupComboBoxPavilhaoExit(Sender: TObject);
begin
  inherited;
 // showmessage(SqlGaleria.SQL.Text);
end;

procedure TFrmMudancaCela.DBLookupComboBoxSolarioChange(Sender: TObject);
begin
  inherited;
  SqlCela.Close;
  SqlCela.SQL.Text := 'select * from cela c inner join solario s on(s.id_solario = c.idsolario) inner join galeria g on (g.id_galeria = c.idgaleria) where s.solario=:solario and g.galeria=:galeria order by c.cela';
  SqlCela.ParamByName('solario').AsString := DBLookupComboBoxSolario.Text;
  SqlCela.ParamByName('galeria').AsString := DBLookupComboBoxGaleria.Text;
  SqlCela.Open;
  DBLookupComboBoxCela.Items.Clear;
  while not SqlCela.EOF do
  begin
    DBLookupComboBoxCela.Items.Add(SqlCela.FieldByName('Cela').AsString);
    SqlCela.Next;
  end;

end;

procedure TFrmMudancaCela.Especifico1Click(Sender: TObject);
var
  sPath: string;
begin

  try

    with DsCadastro.DataSet do
    begin

      if not Active then
      begin
        showmessage('Não tem registro posicionada na tela.');
        exit;
      end;

      if IsEmpty then
      begin
        showmessage('Não tem registro posicionada na tela.');
        exit;
      end;

      if State in [dsinsert] then
      begin
        showmessage('Salve este registro depois posicione nele.');
        exit;
      end;

      GLOBAL_ID_MUDANCA_CELA := fieldbyname('ID_MUDANCA_CELA').Asstring;

    end;

    if not DirectoryExists(GLOBAL_PATCH_SISTEMA + '\Específicos\') then
      CreateDir(GLOBAL_PATCH_SISTEMA + '\Específicos\');

    PATH_MOMENTO := GLOBAL_PATCH_SISTEMA + '\Específicos\' +
      trim(copy(self.Name, 4, 100)) + '\';
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

procedure TFrmMudancaCela.DBGridConsultaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  //
  if (Column.Field = TDBGrid(Sender).DataSource.DataSet.fieldbyname
    ('CONFIRMADA')) then
  begin

    TDBGrid(Sender).Canvas.FillRect(Rect);

    if TDBGrid(Sender).DataSource.DataSet.fieldbyname('CONFIRMADA').Asstring = ''
    then
    begin
      dm.ImageListSelecao.Draw(TDBGrid(Sender).Canvas, Rect.Left + 10,
        Rect.Top + 1, 0);
    end
    else
    begin
      dm.ImageListSelecao.Draw(TDBGrid(Sender).Canvas, Rect.Left + 10,
        Rect.Top + 1, 2);
    end;

  end;

end;

procedure TFrmMudancaCela.DsCadastroDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  with DsCadastro.DataSet do
  begin
    LabelAguardando.Visible := false;
    LabelAguardando2.Visible := false;
    Timer1.Enabled := false;
    if not Active then
      exit;

    if IsEmpty then
      exit;

    if not(State in [dsedit, dsinsert]) then
    begin
      if DsConsulta.DataSet.fieldbyname('CONFIRMADA').Asstring <> 'S' then
        Timer1.Enabled := true;
    end;

    if State in [dsedit] then
    begin

      if DsConsulta.DataSet.fieldbyname('CONFIRMADA').Asstring = 'S' then
      begin
        Cancelar.OnClick(nil);
        TabSheetConsulta.Show;
        showmessage('Transferência está com status de CONFIRMADA.');
        exit;
      end;

    end;

  end;

  { Verifica as permissões que o usuário possui para esta tela
    e habilita ou não os respectivos botões.
    Estas verificações devem ser colocadas no final do evento FormCreate e
    no final do evento OnDataChance do DsCadastro de cada tela.
    Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
    Ex. ContemValor('I', PERMISSAO_CONFERE). }

  if not ContemValor('I', PERMISSAO_MUDANCACELA) and
    not ContemValor('E', PERMISSAO_MUDANCACELA) and
    not ContemValor('D', PERMISSAO_MUDANCACELA) then
  begin
    Novo.Visible := false;
    Editar.Visible := false;
    Excluir.Visible := false;
    Salvar.Visible := false;
  end;

  if ContemValor('I', PERMISSAO_MUDANCACELA) and
    not ContemValor('E', PERMISSAO_MUDANCACELA) and
    not ContemValor('D', PERMISSAO_MUDANCACELA) then
  begin
    Editar.Visible := false;
    Excluir.Visible := false;
    if not Salvar.Visible then
      Salvar.Visible := false;
    if not Salvar.Enabled then
      Salvar.Visible := false;
  end;

  if ContemValor('I', PERMISSAO_MUDANCACELA) and
    ContemValor('E', PERMISSAO_MUDANCACELA) and
    not ContemValor('D', PERMISSAO_MUDANCACELA) then
  begin
    Excluir.Visible := false;
  end;

  if not ContemValor('I', PERMISSAO_MUDANCACELA) and
    ContemValor('E', PERMISSAO_MUDANCACELA) and
    ContemValor('D', PERMISSAO_MUDANCACELA) then
  begin
    Novo.Visible := false;
  end;

  if ContemValor('I', PERMISSAO_MUDANCACELA) and
    not ContemValor('E', PERMISSAO_MUDANCACELA) and
    ContemValor('D', PERMISSAO_MUDANCACELA) then
  begin
    Editar.Visible := false;
    if not Salvar.Visible then
      Salvar.Visible := false;
    if not Salvar.Enabled then
      Salvar.Visible := false;
  end;

  if not ContemValor('I', PERMISSAO_MUDANCACELA) and
    not ContemValor('E', PERMISSAO_MUDANCACELA) and
    ContemValor('D', PERMISSAO_MUDANCACELA) then
  begin
    Novo.Visible := false;
    Editar.Visible := false;
    if not Salvar.Visible then
      Salvar.Visible := false;
    if not Salvar.Enabled then
      Salvar.Visible := false;
  end;

  if not ContemValor('I', PERMISSAO_MUDANCACELA) and
    ContemValor('E', PERMISSAO_MUDANCACELA) and
    not ContemValor('D', PERMISSAO_MUDANCACELA) then
  begin
    Novo.Visible := false;
    Excluir.Visible := false;
  end;


end;

procedure TFrmMudancaCela.DsPavilhaoDataChange(Sender: TObject; Field: TField);
begin
  inherited;
 { if  DBLookupComboBoxPavilhao.KeyValue <> null then
  begin
    dsgaleria.DataSet.Close;
    SqlGaleria.SQL.Text:= 'select * from galeria where galeria.idpavilhao = ' + inttostr(DBLookupComboBoxPavilhao.KeyValue);
    //showmessage(SqlGaleria.SQL.Text);
    dsgaleria.DataSet.Open;
  end; }
end;

procedure TFrmMudancaCela.DsPavilhaoStateChange(Sender: TObject);
begin
  inherited;
 // showmessage(SqlGaleria.SQL.Text);
end;

procedure TFrmMudancaCela.DsPavilhaoUpdateData(Sender: TObject);
begin
  inherited;
 // showmessage(SqlGaleria.SQL.Text);
end;

procedure TFrmMudancaCela.Button2Click(Sender: TObject);
begin
  inherited;
  SqlConsulta.Params[0].Value := GLOBAL_ID_UP;
  SqlConsulta.Params[1].Value := DateTimePicker1.date;

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.OPEN;

end;

procedure TFrmMudancaCela.BtnTodosCelaClick(Sender: TObject);
begin
  inherited;
  //
  if not Validacao then
    exit;
  try
    FrmFiltroCela := TFrmFiltroCela.Create(Application);
   // FrmFiltroCela.DBLookupComboBoxCela.KeyValue := null;
    {while FrmFiltroCela.DBLookupComboBoxCela.KeyValue = null do
    begin
      if FrmFiltroCela.ShowModal <> mrok then
        break;
    end;  }
    if FrmFiltroCela.ShowModal = mrok then
    begin
     { SqlCelaInterno.SQL.Text :=
        'select id_interno, rgi, idpavilhao, idgaleria, idsolario, idcela from interno where st=''A'' and nome_interno<>'''' and idcela='
        + inttostr(FrmFiltroCela.DBLookupComboBoxCela.KeyValue);  }

      with DSCelaInterno.DataSet do
      begin
        Close;
        OPEN;
        first;
        while not eof do
        begin
          Editprontuario.Text := fieldbyname('rgi').Asstring;
          DBLookupComboBoxinterno.KeyValue := fieldbyname('id_interno')
            .Asstring;
          BtnincluirClick(nil);
          next;
        end;
      end;
    end;
  finally
    FreeAndNil(FrmFiltroCela);
  end;
end;

procedure TFrmMudancaCela.Liberar1Click(Sender: TObject);
begin
  inherited;

  if DsConsulta.DataSet.fieldbyname('CONFIRMADA').Asstring = 'S' then
  begin
    Cancelar.OnClick(nil);
    TabSheetConsulta.Show;
    showmessage('Transferência está com status de CONFIRMADA.');
    exit;
  end;

  PageControlTransferencia.ActivePageIndex := 0;

  Screen.Cursor := crSQLWait;
  IniciaTransMovimento;
  try
    // DsCadastro.DataSet.Edit;
    // DsCadastro.DataSet.FieldByName('CONFIRMADA').AsString := 'S';
    // DsCadastro.DataSet.FieldByName('DATA').AsDateTime := now;
    // DsCadastro.DataSet.post;

    FrmAguarde := TFrmAguarde.Create(Application);
    with FrmAguarde do
    begin
      LblAguarde.Top := ProgressBarAguarde.Top - (LblAguarde.Height + 10);
      LblAguarde.Font.Size := 10;
      LblAguarde.Font.Color := clBlack;
      LblAguarde.Anchors := [akLeft, akBottom];
      ProgressBarAguarde.Visible := true;
      ProgressBarAguarde.Max := DsVinc_Mudanca_Cela.DataSet.recordcount;
      ProgressBarAguarde.Position := 0;
      LblAguarde.Visible := true;
      Show;
      FrmAguarde.Refresh;
      with DsVinc_Mudanca_Cela.DataSet do
      begin
        first;
        while not eof do
        begin
          { lANÇANDO A SAIDA DO INTERNO NO HISTÓRICO }
          DSHISTORICO_interno.DataSet.Append;
          DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno')
            .AsInteger := Dm.SQLConnect.ExecSQLScalar('SELECT gen_id(cod_up,0)||gen_id(IDHISTORICO_INTERNO,1) FROM RDB$DATABASE');
          DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
            fieldbyname('id_interno').AsInteger;
          DSHISTORICO_interno.DataSet.fieldbyname('data_hora').Asstring :=
            DBEditdata.Text;
          DSHISTORICO_interno.DataSet.fieldbyname('descricao').Asstring :=
            'Mudança de Cela: ' + DBLookupComboBoxorigem.Text + ', Motivo: ' +
            DBMemo1.Text + ', Origem: ' + fieldbyname('PAVILHAO_ANTES').Asstring
            + '/' + fieldbyname('GALERIA_ANTES').Asstring + '/' +
            fieldbyname('SOLARIO_ANTES').Asstring + '/' +
            fieldbyname('CELA_ANTES').Asstring + ', Destino: ' +
            fieldbyname('PAVILHAO_NOVO').Asstring + '/' +
            fieldbyname('GALERIA_NOVO').Asstring + '/' +
            fieldbyname('SOLARIO_NOVO').Asstring + '/' +
            fieldbyname('CELA_NOVO').Asstring + ', Conforme Documento: ' +
            DBEditDoc.Text + '.';
          DSHISTORICO_interno.DataSet.fieldbyname('status').Asstring := 'M';
          DSHISTORICO_interno.DataSet.fieldbyname('motivo_saida').Asstring :=
            'Mudança de Cela';
          DSHISTORICO_interno.DataSet.fieldbyname('IDUP').AsInteger :=
            DBLookupComboBoxorigem.KeyValue;
          DSHISTORICO_interno.DataSet.Post;
          { ATUALIZANDO A CELA CADASTRO DO INTERNO }
          dm.SQLConnect.Execsql('UPDATE INTERNO SET ' + 'idpavilhao=' +
            fieldbyname('ID_PAVILHAO_NOVO').Asstring + ',idgaleria=' +
            fieldbyname('ID_GALERIA_NOVO').Asstring + ',idsolario=' +
            fieldbyname('ID_SOLARIO_NOVO').Asstring + ',idcela=' +
            fieldbyname('ID_CELA_NOVO').Asstring + ',id_up=' +
            inttostr(GLOBAL_ID_UP) + ' WHERE ID_INTERNO = ' +
            fieldbyname('id_interno').Asstring);

          { DEIXANDO A TRANSFERENCIA CONFIRMADA }
          dm.SQLConnect.Execsql(' UPDATE MUDANCA_CELA a ' +
            'SET a.CONFIRMADA = ''S'' ' + 'WHERE ' + 'a.ID_MUDANCA_CELA = ' +
            DsCadastro.DataSet.fieldbyname('ID_MUDANCA_CELA').Asstring);
          ProgressBarAguarde.Position := Recno;
          LblAguarde.Caption := inttostr(Recno) + ' de ' +
            inttostr(recordcount);
          LblAguarde.repaint;
          Application.ProcessMessages;

          next;

        end;
      end;
      LblAguarde.Caption := 'Salvando... aguarde.';
      Application.ProcessMessages;
      CDSHISTORICO_interno.ApplyUpdates(-1);
      //CdsCadastro.ApplyUpdates(-1);
    end;

    FinalizaTransMovimento;
    Screen.Cursor := crDefault;

    PageControlModeloCadastro.ActivePageIndex := 1;

    FrmAguarde.Close;
    FreeAndNil(FrmAguarde);
    DsConsulta.DataSet.Close;
    DsConsulta.DataSet.OPEN;
    DsCadastro.DataSet.Close;
    DsCadastro.DataSet.OPEN;
    showmessage('Registro Salvo com Sucesso!');

  except
    on e: Exception do
    begin
      FrmAguarde.Close;
      FreeAndNil(FrmAguarde);
      CancelaTransMovimento;
      showmessage('Inconsistência nos dados:' + TrataExceptionErro(e.Message));

    end;
  end;

  Screen.Cursor := crDefault;

  PageControlModeloCadastro.ActivePageIndex := 1;

end;

procedure TFrmMudancaCela.ConfirmaMudancaClick(Sender: TObject);
begin
  inherited;

  Liberar1Click(nil);

end;

procedure TFrmMudancaCela.Timer1Timer(Sender: TObject);
begin
  inherited;

  LabelAguardando.Visible := not LabelAguardando.Visible;
  LabelAguardando2.Visible := not LabelAguardando2.Visible;

end;

procedure TFrmMudancaCela.SalvarClick(Sender: TObject);
begin
  inherited;
  //

end;

procedure TFrmMudancaCela.PageControlModeloCadastroChange(Sender: TObject);
begin
  // inherited;
  if PageControlModeloCadastro.ActivePageIndex = 1 then
  begin
    CancelarClick(nil);
  end;
end;

end.
