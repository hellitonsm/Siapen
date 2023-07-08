unit MudancaCela;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls,
  ToolWin, Mask, Buttons, Menus;

type
  TFrmMudancaCela = class(TFrmModeloCadastro)
    PageControlTransferencia: TPageControl;
    SqlVinc_Mudanca_Cela: TSQLQuery;
    DspVinc_Mudanca_Cela: TDataSetProvider;
    CdsVinc_Mudanca_Cela: TClientDataSet;
    DsVinc_Mudanca_Cela: TDataSource;
    SQLHISTORICO_interno: TSQLQuery;
    DSPHISTORICO_interno: TDataSetProvider;
    CDSHISTORICO_interno: TClientDataSet;
    DSHISTORICO_interno: TDataSource;
    DsInterno: TDataSource;
    CdsInterno: TClientDataSet;
    DspInterno: TDataSetProvider;
    SqlInterno: TSQLQuery;
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
    SqlExecute: TSQLQuery;
    MainMenu1: TMainMenu;
    Relatorios1: TMenuItem;
    Especifico1: TMenuItem;
    SqlConsulta: TSQLQuery;
    DspConsulta: TDataSetProvider;
    CdsConsulta: TClientDataSet;
    DsConsulta: TDataSource;
    DateTimePicker1: TDateTimePicker;
    Label5: TLabel;
    Button2: TButton;
    PopupMenuLiberar: TPopupMenu;
    Liberar1: TMenuItem;
    SqlPavilhao: TSQLQuery;
    DspPavilhao: TDataSetProvider;
    CdsPavilhao: TClientDataSet;
    DsPavilhao: TDataSource;
    DsGaleria: TDataSource;
    CdsGaleria: TClientDataSet;
    DspGaleria: TDataSetProvider;
    SqlGaleria: TSQLQuery;
    SqlSolario: TSQLQuery;
    DspSolario: TDataSetProvider;
    CdsSolario: TClientDataSet;
    DsSolario: TDataSource;
    DsCela: TDataSource;
    CdsCela: TClientDataSet;
    DspCela: TDataSetProvider;
    SqlCela: TSQLQuery;
    Dsconspadrao: TDataSource;
    Cdsconspadrao: TClientDataSet;
    Dspconspadrao: TDataSetProvider;
    SQLconspadrao: TSQLQuery;
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
    SqlPavAntes: TSQLQuery;
    SqlGalAntes: TSQLQuery;
    SqlSolAntes: TSQLQuery;
    SqlCelaAntes: TSQLQuery;
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
    DBLookupComboBoxPavilhao: TDBLookupComboBox;
    DBLookupComboBoxGaleria: TDBLookupComboBox;
    DBLookupComboBoxCela: TDBLookupComboBox;
    DBLookupComboBoxSolario: TDBLookupComboBox;
    DBGridMudanca: TDBGrid;
    SqlCelaInterno: TSQLQuery;
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
    procedure DBGridConsultaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure Button2Click(Sender: TObject);
    procedure BtnTodosCelaClick(Sender: TObject);
    procedure Liberar1Click(Sender: TObject);
    procedure ConfirmaMudancaClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure PageControlModeloCadastroChange(Sender: TObject);
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
  //  DBEditdata.Field.EditMask := '99\/99\/9999;1;_';

  dm.DsUP.DataSet.Close;
  dm.DsUP.DataSet.OPEN;

  dm.DsDestino.DataSet.Close;
  dm.DsDestino.DataSet.OPEN;

  DsInterno.DataSet.Close;
  SqlInterno.Params[0].Value := GLOBAL_ID_UP;
  DsInterno.DataSet.OPEN;

  DSHISTORICO_interno.DataSet.Close;
  DSHISTORICO_interno.DataSet.OPEN;

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

  if DBLookupComboBoxPavilhao.KeyValue = null then
  begin
    PageControlTransferencia.ActivePageIndex := 0;
    ShowMessage('Informe o ' + GLOBAL_NIVEL_1 + '!');
    if DBLookupComboBoxPavilhao.canFocus then
      DBLookupComboBoxPavilhao.SetFocus;
    Editprontuario.Text := '';
    Exit;
  end;

  if DBLookupComboBoxGaleria.KeyValue = null then
  begin
    PageControlTransferencia.ActivePageIndex := 0;
    ShowMessage('Informe o ' + GLOBAL_NIVEL_2 + '!');
    if DBLookupComboBoxGaleria.canFocus then
      DBLookupComboBoxGaleria.SetFocus;
    Editprontuario.Text := '';
    Exit;
  end;

  if DBLookupComboBoxSolario.KeyValue = null then
  begin
    PageControlTransferencia.ActivePageIndex := 0;
    ShowMessage('Informe o ' + GLOBAL_NIVEL_3 + '!');
    if DBLookupComboBoxSolario.canFocus then
      DBLookupComboBoxSolario.SetFocus;
    Editprontuario.Text := '';
    Exit;
  end;

  if DBLookupComboBoxCela.KeyValue = null then
  begin
    PageControlTransferencia.ActivePageIndex := 0;
    ShowMessage('Informe o ' + GLOBAL_NIVEL_4 + '!');
    if DBLookupComboBoxCela.canFocus then
      DBLookupComboBoxCela.SetFocus;
    Editprontuario.Text := '';
    Exit;
  end;

  result := true;

end;

procedure TFrmMudancaCela.BtnincluirClick(Sender: TObject);
begin
  inherited;

  if not validacao then
    exit;

  if DBLookupComboBoxinterno.KeyValue > 0 then
  begin

    if DsVinc_Mudanca_Cela.DataSet.Locate('ID_INTERNO', DBLookupComboBoxinterno.KeyValue, []) then
    begin
      ShowMessage('Interno ' + DBLookupComboBoxinterno.Text + ', j� lan�ado.');
      DBLookupComboBoxinterno.KeyValue := null;
      Editprontuario.Text := '';
      if Editprontuario.CanFocus then
        Editprontuario.SetFocus;
      exit;
    end;

    {Lan�ando Preso na tabela de transferencia}
    DsVinc_Mudanca_Cela.DataSet.Append;
    DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_VINC_MUDANCA_CELA').AsInteger := 0;
    DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_MUDANCA_CELA').AsInteger :=
      DsCadastro.DataSet.fieldbyname('ID_MUDANCA_CELA').AsInteger;
    DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_INTERNO').AsInteger :=
      DBLookupComboBoxinterno.KeyValue;

    DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_PAVILHAO_ANTES').AsInteger :=
      DsInterno.DataSet.FieldByname('IDPAVILHAO').AsInteger;
    DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_GALERIA_ANTES').AsInteger :=
      DsInterno.DataSet.FieldByname('IDGALERIA').AsInteger;
    DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_SOLARIO_ANTES').AsInteger :=
      DsInterno.DataSet.FieldByname('IDSOLARIO').AsInteger;
    DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_CELA_ANTES').AsInteger :=
      DsInterno.DataSet.FieldByname('IDCELA').AsInteger;

    DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_PAVILHAO_NOVO').AsInteger :=
      DBLookupComboBoxPavilhao.KeyValue;
    DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_GALERIA_NOVO').AsInteger :=
      DBLookupComboBoxGaleria.KeyValue;
    DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_SOLARIO_NOVO').AsInteger :=
      DBLookupComboBoxSolario.KeyValue;
    DsVinc_Mudanca_Cela.DataSet.fieldbyname('ID_CELA_NOVO').AsInteger :=
      DBLookupComboBoxCela.KeyValue;

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
  DsCadastro.DataSet.fieldbyname('ID_MUDANCA_CELA').AsInteger := DBGenerator('ID_MUDANCA_CELA');
  DsCadastro.DataSet.fieldbyname('ID_UP').AsInteger := GLOBAL_ID_UP;
  DsCadastro.DataSet.FieldByName('DATA').AsDateTime := date;
  DsCadastro.DataSet.FieldByName('ID_FUNCIONARIO').AsInteger := GLOBAL_ID_FUNCIONARIO;

end;

procedure TFrmMudancaCela.FormCreate(Sender: TObject);
begin
  inherited;
//  DM.cdsInterno.Close;
//  DM.cdsInterno.Open;

  dm.DsInterno.DataSet.Close;
  DM.SqlInterno.Params[0].Value := GLOBAL_ID_UP;
  dm.DsInterno.DataSet.OPEN;

  LabelPavilhao.Caption := GLOBAL_NIVEL_1;
  LabelGaleria.Caption := GLOBAL_NIVEL_2;
  LabelSolario.Caption := GLOBAL_NIVEL_3;
  LabelCela.Caption := GLOBAL_NIVEL_4;

  SqlPavilhao.SQL.Text := ' select * from pavilhao where id_up=' + inttostr(GLOBAL_ID_UP) + ' order by pavilhao';

  DsPavilhao.DataSet.Close;
  DsPavilhao.DataSet.Open;

  DsGaleria.DataSet.Close;
  DsGaleria.DataSet.Open;

  DsSolario.DataSet.Close;
  DsSolario.DataSet.Open;

  DsCela.DataSet.Close;
  DsCela.DataSet.Open;

  SqlPavAntes.SQL.Text := ' select * from pavilhao where id_up=' + inttostr(GLOBAL_ID_UP) + ' order by pavilhao';

  DsPavAntes.DataSet.Close;
  DsPavAntes.DataSet.Open;

  DsGalAntes.DataSet.Close;
  DsGalAntes.DataSet.Open;

  DsSolAntes.DataSet.Close;
  DsSolAntes.DataSet.Open;

  DsCelaAntes.DataSet.Close;
  DsCelaAntes.DataSet.Open;

  {selecionando cela virtual}
  SQLconspadrao.sql.text := 'select * from padrao where cod_up ='
    + qs(inttostr(global_id_up));
  dsconspadrao.dataset.close;
  dsconspadrao.dataset.open;

  DBLookupComboBoxPavilhao.KeyValue := dsconspadrao.DataSet.fieldbyname('id_pavilhao').AsVariant;
  DBLookupComboBoxGaleria.KeyValue := dsconspadrao.DataSet.fieldbyname('id_galeria').AsVariant;
  DBLookupComboBoxSolario.KeyValue := dsconspadrao.DataSet.fieldbyname('id_solario').AsVariant;
  DBLookupComboBoxCela.KeyValue := dsconspadrao.DataSet.fieldbyname('id_cela').AsVariant;

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
  DateTimePicker1.Date := date;

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.Open;

  DsVinc_Mudanca_Cela.DataSet.Close;
  DsVinc_Mudanca_Cela.DataSet.Open;

  PageControlTransferencia.ActivePageIndex := 0;

  {Verifica as permiss�es que o usu�rio possui para esta tela
  e habilita ou n�o os respectivos bot�es.
  Estas verifica��es devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permiss�o referente � tela nas verifica��es abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_MUDANCACELA)
    and not ContemValor('E', PERMISSAO_MUDANCACELA)
    and not ContemValor('D', PERMISSAO_MUDANCACELA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_MUDANCACELA)
    and not ContemValor('E', PERMISSAO_MUDANCACELA)
    and not ContemValor('D', PERMISSAO_MUDANCACELA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_MUDANCACELA)
    and ContemValor('E', PERMISSAO_MUDANCACELA)
    and not ContemValor('D', PERMISSAO_MUDANCACELA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_MUDANCACELA)
    and ContemValor('E', PERMISSAO_MUDANCACELA)
    and ContemValor('D', PERMISSAO_MUDANCACELA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_MUDANCACELA)
    and not ContemValor('E', PERMISSAO_MUDANCACELA)
    and ContemValor('D', PERMISSAO_MUDANCACELA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_MUDANCACELA)
    and not ContemValor('E', PERMISSAO_MUDANCACELA)
    and ContemValor('D', PERMISSAO_MUDANCACELA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_MUDANCACELA)
    and ContemValor('E', PERMISSAO_MUDANCACELA)
    and not ContemValor('D', PERMISSAO_MUDANCACELA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmMudancaCela.EditprontuarioExit(Sender: TObject);
begin

  inherited;

  if Editprontuario.Text <> '' then
  begin

    dm.SqlExecute.sql.text := 'select id_interno, nome_interno, idpavilhao, idgaleria, idsolario, idcela, rgi from interno where rgi =' + Qs(Editprontuario.Text)
      + ' and id_up = ' + IntToStr(GLOBAL_ID_UP) + 'and st = ''A''';
    dm.DsExecute.dataset.close;
    dm.DsExecute.dataset.open;

    if dm.DsExecute.dataset.recordcount > 0 then
    begin
      DBLookupComboBoxinterno.KeyValue := dm.DsExecute.DataSet.fieldbyname('id_interno').AsInteger;
      BtnincluirClick(nil);
      if Editprontuario.canfocus then
        Editprontuario.SetFocus;
    end
    else
    begin
      showmessage('Interno n�o Localizado!');
      if Editprontuario.canfocus then
        Editprontuario.SetFocus;
    end;

    dm.DsExecute.dataset.close;

  end;

end;

procedure TFrmMudancaCela.DBGridMudancaDblClick(Sender: TObject);
begin
  if not DsVinc_Mudanca_Cela.DataSet.IsEmpty then
  begin

    if MessageDlg('Confirma excluir a mudan�a de ' + DsVinc_Mudanca_Cela.DataSet.fieldbyname('INTERNO').AsString, mtConfirmation, [mbYes,
      mbNo], 0) = mrYes then
    begin
      DsVinc_Mudanca_Cela.DataSet.Delete;
      ShowMessage('Interno excluido na mudan�a!');
    end
    else
      ShowMessage('Transa��o Cancelada!');

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
  DsVinc_Mudanca_Cela.DataSet.close;
  DsVinc_Mudanca_Cela.DataSet.open;

  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.Open;

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
    DBLookupComboBoxInterno.KeyValue := interno;
    Editprontuario.Text := DsInterno.dataset.fieldbyname('RGI').asstring;

    if Editprontuario.CanFocus then
      Editprontuario.SetFocus;
  end;

end;

procedure TFrmMudancaCela.CdsVinc_Mudanca_CelaCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  DataSet.fieldbyname('STATUS').Asstring := '';

  //ANTES
  if DsPavAntes.DataSet.Locate('ID_PAVILHAO', DataSet.fieldbyname('ID_PAVILHAO_ANTES').AsInteger, []) then
    DataSet.fieldbyname('PAVILHAO_ANTES').Asstring := DsPavAntes.DataSet.fieldbyname('PAVILHAO').Asstring;

  if DsGalAntes.DataSet.Locate('ID_GALERIA', DataSet.fieldbyname('ID_GALERIA_ANTES').AsInteger, []) then
    DataSet.fieldbyname('GALERIA_ANTES').Asstring := DsGalAntes.DataSet.fieldbyname('GALERIA').Asstring;

  if DsSolAntes.DataSet.Locate('ID_SOLARIO', DataSet.fieldbyname('ID_SOLARIO_ANTES').AsInteger, []) then
    DataSet.fieldbyname('SOLARIO_ANTES').Asstring := DsSolAntes.DataSet.fieldbyname('SOLARIO').Asstring;

  if DsCelaAntes.DataSet.Locate('ID_CELA', DataSet.fieldbyname('ID_CELA_ANTES').AsInteger, []) then
    DataSet.fieldbyname('CELA_ANTES').Asstring := DsCelaAntes.DataSet.fieldbyname('CELA').Asstring;

  //NOVO
  if DsPavAntes.DataSet.Locate('ID_PAVILHAO', DataSet.fieldbyname('ID_PAVILHAO_NOVO').AsInteger, []) then
    DataSet.fieldbyname('PAVILHAO_NOVO').Asstring := DsPavAntes.DataSet.fieldbyname('PAVILHAO').Asstring;

  if DsGalAntes.DataSet.Locate('ID_GALERIA', DataSet.fieldbyname('ID_GALERIA_NOVO').AsInteger, []) then
    DataSet.fieldbyname('GALERIA_NOVO').Asstring := DsGalAntes.DataSet.fieldbyname('GALERIA').Asstring;

  if DsSolAntes.DataSet.Locate('ID_SOLARIO', DataSet.fieldbyname('ID_SOLARIO_NOVO').AsInteger, []) then
    DataSet.fieldbyname('SOLARIO_NOVO').Asstring := DsSolAntes.DataSet.fieldbyname('SOLARIO').Asstring;

  if DsCelaAntes.DataSet.Locate('ID_CELA', DataSet.fieldbyname('ID_CELA_NOVO').AsInteger, []) then
    DataSet.fieldbyname('CELA_NOVO').Asstring := DsCelaAntes.DataSet.fieldbyname('CELA').Asstring;

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
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

  if (State <> [gdSelected]) and (State <> [gdSelected, gdFocused]) then
  begin

    if (Column.Field = TDBGrid(Sender).DataSource.DataSet.FieldByName('Interno')) then
      if TDBGrid(Sender).DataSource.DataSet.FieldByName('STATUS').AsString = '' then
        TDBGrid(Sender).Canvas.Font.Style := [fsStrikeOut];

    TDBGrid(Sender).Canvas.Font.Color := clBlack;

    if odd(TDBGrid(Sender).DataSource.DataSet.Recno) then
    begin
      TDBGrid(Sender).Canvas.Brush.color := cl3DLight;
    end
    else
    begin
      TDBGrid(Sender).Canvas.Brush.color := clWhite;
    end;

    TDBGrid(Sender).Canvas.FillRect(rect);
    TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);

  end
  else
  begin
    TDBGrid(Sender).Canvas.Brush.color := $00854F3F;
    TDBGrid(Sender).Canvas.Font.Color := clWhite;
    TDBGrid(Sender).Canvas.FillRect(rect);
    TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
  end;

  if (Column.Field = TDBGrid(Sender).DataSource.DataSet.FieldByName('STATUS')) then
  begin

    TDBGrid(Sender).Canvas.FillRect(Rect);

    DM.ImageListNetworkI.Draw(TDBGrid(Sender).Canvas, Rect.Left + 10, Rect.Top
      + 1, 24);

    if TDBGrid(Sender).DataSource.DataSet.FieldByName('STATUS').AsString = '' then
    begin
      DM.ImageListNetworkI.Draw(TDBGrid(Sender).Canvas, Rect.Left + 10,
        Rect.Top + 1, 25);
    end;

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
        ShowMessage('N�o tem registro posicionada na tela.');
        exit;
      end;

      if IsEmpty then
      begin
        ShowMessage('N�o tem registro posicionada na tela.');
        exit;
      end;

      if state in [dsinsert] then
      begin
        ShowMessage('Salve este registro depois posicione nele.');
        exit;
      end;

      GLOBAL_ID_MUDANCA_CELA := fieldbyname('ID_MUDANCA_CELA').AsString;

    end;

    if not DirectoryExists(GLOBAL_PATCH_SISTEMA + '\Espec�ficos\') then
      CreateDir(GLOBAL_PATCH_SISTEMA + '\Espec�ficos\');

    PATH_MOMENTO := GLOBAL_PATCH_SISTEMA + '\Espec�ficos\' + trim(copy(self.Name, 4, 100)) + '\';
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

procedure TFrmMudancaCela.DBGridConsultaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  //
  if (Column.Field = TDBGrid(Sender).DataSource.DataSet.FieldByName('CONFIRMADA')) then
  begin

    TDBGrid(Sender).Canvas.FillRect(Rect);

    if TDBGrid(Sender).DataSource.DataSet.FieldByName('CONFIRMADA').AsString = '' then
    begin
      DM.ImageListSelecao.Draw(TDBGrid(Sender).Canvas, Rect.Left + 10,
        Rect.Top + 1, 0);
    end
    else
    begin
      DM.ImageListSelecao.Draw(TDBGrid(Sender).Canvas, Rect.Left + 10,
        Rect.Top + 1, 2);
    end;

  end;

end;

procedure TFrmMudancaCela.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  with DsCadastro.DataSet do
  begin
    LabelAguardando.Visible := false;
    LabelAguardando2.Visible := false;
    Timer1.Enabled := false;
    if not active then
      exit;

    if isempty then
      exit;

    if not (state in [dsedit, dsinsert]) then
    begin
      if DsConsulta.DataSet.FieldByName('CONFIRMADA').AsString <> 'S' then
        Timer1.Enabled := true;
    end;

    if state in [dsedit] then
    begin

      if DsConsulta.DataSet.FieldByName('CONFIRMADA').AsString = 'S' then
      begin
        Cancelar.OnClick(nil);
        TabSheetConsulta.Show;
        ShowMessage('Transfer�ncia est� com status de CONFIRMADA.');
        exit;
      end;

    end;

  end;

  {Verifica as permiss�es que o usu�rio possui para esta tela
  e habilita ou n�o os respectivos bot�es.
  Estas verifica��es devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permiss�o referente � tela nas verifica��es abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_MUDANCACELA)
    and not ContemValor('E', PERMISSAO_MUDANCACELA)
    and not ContemValor('D', PERMISSAO_MUDANCACELA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_MUDANCACELA)
    and not ContemValor('E', PERMISSAO_MUDANCACELA)
    and not ContemValor('D', PERMISSAO_MUDANCACELA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_MUDANCACELA)
    and ContemValor('E', PERMISSAO_MUDANCACELA)
    and not ContemValor('D', PERMISSAO_MUDANCACELA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_MUDANCACELA)
    and ContemValor('E', PERMISSAO_MUDANCACELA)
    and ContemValor('D', PERMISSAO_MUDANCACELA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_MUDANCACELA)
    and not ContemValor('E', PERMISSAO_MUDANCACELA)
    and ContemValor('D', PERMISSAO_MUDANCACELA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_MUDANCACELA)
    and not ContemValor('E', PERMISSAO_MUDANCACELA)
    and ContemValor('D', PERMISSAO_MUDANCACELA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_MUDANCACELA)
    and ContemValor('E', PERMISSAO_MUDANCACELA)
    and not ContemValor('D', PERMISSAO_MUDANCACELA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmMudancaCela.Button2Click(Sender: TObject);
begin
  inherited;
  SqlConsulta.Params[0].Value := GLOBAL_ID_UP;
  SqlConsulta.Params[1].Value := DateTimePicker1.Date;

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

end;

procedure TFrmMudancaCela.BtnTodosCelaClick(Sender: TObject);
begin
  inherited;
  //
  if not validacao then
    exit;
  try
    FrmFiltroCela := TFrmFiltroCela.Create(Application);
    FrmFiltroCela.DBLookupComboBoxCela.KeyValue := null;
    while FrmFiltroCela.DBLookupComboBoxCela.KeyValue = null do
    begin
      if FrmFiltroCela.ShowModal <> mrok then
        break;
    end;
    if FrmFiltroCela.ShowModal = mrok then
    begin
      SqlCelaInterno.SQL.Text :=
        'select id_interno, rgi, idpavilhao, idgaleria, idsolario, idcela from interno where st=''A'' and nome_interno<>'''' and idcela='
        + inttostr(FrmFiltroCela.DBLookupComboBoxCela.KeyValue);

      with DSCelaInterno.DataSet do
      begin
        Close;
        Open;
        first;
        while not eof do
        begin
          Editprontuario.Text := fieldbyname('rgi').AsString;
          DBLookupComboBoxinterno.KeyValue := fieldbyname('id_interno').AsString;
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

  if DsConsulta.DataSet.FieldByName('CONFIRMADA').AsString = 'S' then
  begin
    Cancelar.OnClick(nil);
    TabSheetConsulta.Show;
    ShowMessage('Transfer�ncia est� com status de CONFIRMADA.');
    exit;
  end;

  PageControlTransferencia.ActivePageIndex := 0;

  Screen.Cursor := crSQLWait;
  IniciaTransMovimento;
  try
    DsCadastro.DataSet.Edit;
    DsCadastro.DataSet.FieldByName('CONFIRMADA').AsString := 'S';
    //    DsCadastro.DataSet.FieldByName('DATA').AsDateTime := now;
    DsCadastro.DataSet.post;

    FrmAguarde := TFrmAguarde.Create(Application);
    with FrmAguarde do
    begin
      LblAguarde.Top := ProgressBarAguarde.Top - (LblAguarde.Height + 10);
      LblAguarde.Font.Size := 10;
      LblAguarde.Font.Color := clBlack;
      LblAguarde.Anchors := [akLeft, akBottom];
      ProgressBarAguarde.Visible := true;
      ProgressBarAguarde.Max := DsVinc_Mudanca_Cela.DataSet.RecordCount;
      ProgressBarAguarde.Position := 0;
      LblAguarde.Visible := true;
      Show;
      frmaguarde.Refresh;
      with DsVinc_Mudanca_Cela.DataSet do
      begin
        first;
        while not eof do
        begin
          {lAN�ANDO A SAIDA DO INTERNO NO HIST�RICO}
          DSHISTORICO_interno.DataSet.Append;
          DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
          DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
            fieldbyname('id_interno').AsInteger;
          DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsString := DBEditdata.text;
          DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString := 'Mudan�a de Cela: ' +
            DBLookupComboBoxorigem.Text + ', Motivo: ' +
            DBMemo1.Text +
            ', Origem: ' +
            fieldbyname('PAVILHAO_ANTES').asstring + '/' +
            fieldbyname('GALERIA_ANTES').asstring + '/' +
            fieldbyname('SOLARIO_ANTES').asstring + '/' +
            fieldbyname('CELA_ANTES').asstring +
            ', Destino: ' +
            fieldbyname('PAVILHAO_NOVO').asstring + '/' +
            fieldbyname('GALERIA_NOVO').asstring + '/' +
            fieldbyname('SOLARIO_NOVO').asstring + '/' +
            fieldbyname('CELA_NOVO').asstring +
            ', Conforme Documento: ' + DBEditDoc.Text + '.';
          DSHISTORICO_interno.DataSet.fieldbyname('status').AsString := 'M';
          DSHISTORICO_interno.DataSet.fieldbyname('motivo_saida').AsString := 'Mudan�a de Cela';
          DSHISTORICO_interno.DataSet.fieldbyname('IDUP').AsInteger := DBLookupComboBoxorigem.KeyValue;
          DSHISTORICO_interno.DataSet.Post;

          dm.SQLConnect.ExecuteDirect('UPDATE INTERNO SET ' +
            'idpavilhao=' + Fieldbyname('ID_PAVILHAO_NOVO').AsString +
            ',idgaleria=' + Fieldbyname('ID_GALERIA_NOVO').AsString +
            ',idsolario=' + Fieldbyname('ID_SOLARIO_NOVO').AsString +
            ',idcela=' + Fieldbyname('ID_CELA_NOVO').AsString +
            ',id_up=' + inttostr(GLOBAL_ID_UP) +
            ' WHERE ID_INTERNO = ' + fieldbyname('id_interno').Asstring);
          ProgressBarAguarde.Position := recno;
          LblAguarde.Caption := inttostr(recno) + ' de ' + inttostr(recordcount);
          lblaguarde.repaint;
          Application.ProcessMessages;

          next;

        end;
      end;
      LblAguarde.Caption := 'Salvando... aguarde.';
      Application.ProcessMessages;
      CDSHISTORICO_interno.ApplyUpdates(-1);
      CdsCadastro.ApplyUpdates(-1);
    end;

    FinalizaTransMovimento;
    Screen.Cursor := crDefault;

    PageControlModeloCadastro.ActivePageIndex := 1;

    FrmAguarde.close;
    FreeAndNil(FrmAguarde);
    dsconsulta.dataset.close;
    dsconsulta.dataset.open;
    ShowMessage('Registro Salvo com Sucesso!');

  except
    on e: Exception do
    begin
      FrmAguarde.close;
      FreeAndNil(FrmAguarde);
      CancelaTransMovimento;
      ShowMessage('Inconsist�ncia nos dados:' + TrataExceptionErro(e.Message));

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
  //inherited;
  if PageControlModeloCadastro.ActivePageIndex = 1 then
  begin
    CancelarClick(nil);
  end;
end;

end.

