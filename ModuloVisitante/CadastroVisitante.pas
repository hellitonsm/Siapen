unit CadastroVisitante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, ToolWin, ExtCtrls, DBCtrls,
  Mask, Buttons, jpeg, frxCtrls, Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFrmCadastroVisitante = class(TFrmModeloCadastro)
    SqlVisitanteInternoold: TSQLQuery;
    DspVisitanteInterno: TDataSetProvider;
    CdsVisitanteInterno: TClientDataSet;
    DsVisitanteInterno: TDataSource;
    CdsVisitanteInternoID_VISITANTE_INTERNO: TIntegerField;
    CdsVisitanteInternoID_VISITANTE: TIntegerField;
    CdsVisitanteInternoID_INTERNO: TIntegerField;
    CdsVisitanteInternoID_GRAU_PARENTESCO: TIntegerField;
    CdsVisitanteInternoInternoa: TStringField;
    CdsVisitanteInternoGraudeParentesco: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    DBEditCODIGO: TDBEdit;
    DBEdit2: TDBEdit;
    DBEditCodigoCartao: TDBEdit;
    DBEditCPF: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit1: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    Label33: TLabel;
    Label4: TLabel;
    DBLookupComboBoxInterno: TDBLookupComboBox;
    DBLookupComboBoxParentesco: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    DBEditEmissaoRG: TDBEdit;
    Label5: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit10: TDBEdit;
    Label31: TLabel;
    DBEdit13: TDBEdit;
    DBEditcep: TDBEdit;
    Label32: TLabel;
    SpeedButton11: TSpeedButton;
    DBEditfone: TDBEdit;
    Label34: TLabel;
    DBLookupComboBoxIDCIDADE: TDBLookupComboBox;
    Label14: TLabel;
    Label35: TLabel;
    DBEdit17: TDBEdit;
    Label30: TLabel;
    Panel2: TPanel;
    DBImageFOTO: TDBImage;
    OpenDialogFOTO: TOpenDialog;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Label19: TLabel;
    DBEditdtrnascimento: TDBEdit;
    Label52: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit6: TDBEdit;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup5: TDBRadioGroup;
    DBRadioGroup6: TDBRadioGroup;
    Label16: TLabel;
    DBEdit3: TDBEdit;
    TabSheet4: TTabSheet;
    DBGrid4: TDBGrid;
    SqlMenoresold: TSQLQuery;
    DspMenores: TDataSetProvider;
    CdsMenores: TClientDataSet;
    DsMenores: TDataSource;
    DBNavigator2: TDBNavigator;
    SpeedButton5: TSpeedButton;
    CdsMenoresID_MENORES: TIntegerField;
    CdsMenoresNOME_MENORES: TStringField;
    CdsMenoresID_VISITANTE: TIntegerField;
    CdsMenoresNUMERO_CERTIDAO_NASCIMENTO: TStringField;
    CdsMenoresDATA_NASCIMENTO: TSQLTimeStampField;
    CdsMenoresID_GRAU_PARENTESCO: TIntegerField;
    CdsMenoresGrauParentesco: TStringField;
    SqlConsultaold: TSQLQuery;
    Dspconsulta: TDataSetProvider;
    CdsConsulta: TClientDataSet;
    DsConsulta: TDataSource;
    SqlSelectvisitanteold: TSQLQuery;
    Label20: TLabel;
    DBLookupComboBoxIDNATURALIDADE: TDBLookupComboBox;
    SpeedButton4: TSpeedButton;
    Label21: TLabel;
    DBLookupComboBoxIDNACIONALIDADE: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    Button1: TButton;
    SqlInternoold: TSQLQuery;
    DspInterno: TDataSetProvider;
    CdsInterno: TClientDataSet;
    DsInterno: TDataSource;
    DBEdit18: TDBEdit;
    Label18: TLabel;
    Label22: TLabel;
    DBComboBox1: TDBComboBox;
    Label23: TLabel;
    SqlTodosInternoold: TSQLQuery;
    SqlTodosVisitantesold: TSQLQuery;
    RadioGroupTipoLocalizar: TRadioGroup;
    BtnBuscar: TButton;
    Button2: TButton;
    DBRadioGroup3: TDBRadioGroup;
    DBMemo1: TDBMemo;
    PopupMenuVisitante: TPopupMenu;
    CarteiradeVisitante1: TMenuItem;
    Dsconspadrao: TDataSource;
    Cdsconspadrao: TClientDataSet;
    Dspconspadrao: TDataSetProvider;
    SQLconspadraoold: TSQLQuery;
    BitBtn2: TBitBtn;
    Button3: TButton;
    SQLconspadrao: TFDQuery;
    SqlVisitanteInterno: TFDQuery;
    SqlConsulta: TFDQuery;
    SqlTodosInterno: TFDQuery;
    SqlMenores: TFDQuery;
    SqlTodosVisitantes: TFDQuery;
    SqlInterno: TFDQuery;
    SqlSelectvisitante: TFDQuery;
    procedure NovoClick(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure DBImageFOTOClick(Sender: TObject);
    procedure CdsMenoresAfterInsert(DataSet: TDataSet);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBGridConsultaDblClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BtnBuscarClick(Sender: TObject);
    procedure EditLocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure EditLocalizarChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure CarteiradeVisitante1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEditCPFExit(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBRadioGroup2Change(Sender: TObject);
    procedure RadioGroupTipoLocalizarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure ExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroVisitante: TFrmCadastroVisitante;

implementation

uses DmPrincipal, Lib, CadastroNaturalidade, CadastroGrauParentesco,
  CadastroNacionalidade, CadastroCidade, MenuRelatorio,
  FrmCapturaBiometria;

{$R *.dfm}

procedure TFrmCadastroVisitante.NovoClick(Sender: TObject);
begin
  inherited;

  //Atribui os valores iniciais aos campos abaixo
  DsCadastro.DataSet.fieldbyname('ID_VISITANTE').AsInteger := DBGenerator('ID_VISITANTE');
  DsCadastro.DataSet.fieldbyname('STATUS').AsString := 'A';
  DsCadastro.DataSet.fieldbyname('SEXO').AsString := 'F';
  DsCadastro.DataSet.fieldbyname('NUMERO_CARTEIRINHA').AsInteger := DsCadastro.DataSet.fieldbyname('id_visitante').AsInteger;

  DBEditEmissaoRG.Field.EditMask := '99\/99\/9999;1;_';
  DBEditdtrnascimento.Field.EditMask := '99\/99\/9999;1;_';

  DBEdit2.SetFocus;
end;

procedure TFrmCadastroVisitante.SalvarClick(Sender: TObject);
var
  sMotivo_Inativo, scpf: string;
begin
  //Se o numero da carteirinha for vazio ela é setada como sendo o ID do visitante.
  with DsCadastro.DataSet do
  begin

    if Trim(fieldbyname('NUMERO_CARTEIRINHA').AsString) = '' then
    begin

      if state in [dsedit, dsinsert] then
      begin
        fieldbyname('NUMERO_CARTEIRINHA').AsString :=
          fieldbyname('ID_VISITANTE').AsString;
      end;

    end;

  end;

  //Verifica a variavel padrão de sistema que define se o numero da carteirinha será o ID do visitante.
  if Dsconspadrao.dataset.fieldbyname('NUMERO_CARTEIRA_ID_SISTEMA').AsString = 'S' then
    dscadastro.DataSet.fieldbyname('NUMERO_CARTEIRINHA').AsString :=
      dscadastro.DataSet.fieldbyname('ID_VISITANTE').AsString;

  if DsCadastro.DataSet.FieldByName('VISITANTE').AsString = '' then
  begin
    ShowMessage('Digite o Nome do(a) Visitante!');
    DBEdit2.SetFocus;
    Exit;
  end;

  //CPF validado e verificado se ja existe visitante no evento OnExit do DBEditCPF.

  //Se o visitante estiver ativo é obrigatório inserir um interno para ele.
  if DsVisitanteInterno.DataSet.IsEmpty then
  begin
    if DBRadioGroup2.Items[DBRadioGroup2.ItemIndex] = 'Ativo' then
    begin
      ShowMessage('Informe um interno.');
      Exit;
    end;
  end;

  //Se o numero da carteirinha for vazio ela é setada como sendo o ID do visitante.
  if DsCadastro.DataSet.FieldByName('NUMERO_CARTEIRINHA').AsString = '' then
  begin
    DsCadastro.DataSet.FieldByName('NUMERO_CARTEIRINHA').AsString :=
      DsCadastro.DataSet.FieldByName('ID_VISITANTE').AsString;
  end;

  //ShowMessage('Informe ao visitante o número da carteira: ' + DsCadastro.DataSet.FieldByName('NUMERO_CARTEIRINHA').AsString + '.');

  //Se o visitante estiver como Inativo e o campo de motivo da inativação for vazio
  //o sistema obriga a informar um motivo.
  if DBRadioGroup2.Items[DBRadioGroup2.ItemIndex] = 'Inativo' then
  begin
    if DsCadastro.DataSet.State in [dsedit, dsinsert] then
    begin
      if trim(DsCadastro.DataSet.FieldByName('MOTIVO_INATIVO').AsString) = '' then
      begin
        sMotivo_Inativo := InputBox('Informe o motivo da inativação!', 'Qual o motivo da inativação?', 'CANCELAMENTO DO CARTÃO');
        DsCadastro.DataSet.FieldByName('MOTIVO_INATIVO').AsString := UpperCase(sMotivo_Inativo);
      end;
    end;
  end;

  inherited;

  PageControl2.ActivePageIndex := 0;

  //Atualiza os registros sem precisar abrir e fechar a janela.
  DsVisitanteInterno.DataSet.Close;
  DsVisitanteInterno.DataSet.Open;

end;

procedure TFrmCadastroVisitante.FormShow(Sender: TObject);
begin
  inherited;
  //Atribui a máscara para o campo CPF
  DBEditcpf.Field.EditMask := '999\.999\.999-99;0;_';

  //Limpa as conexões do formulário
  DsInterno.DataSet.Close;
  DsInterno.DataSet.Open;

  DM.DsInterno.DataSet.Close;
  DM.DsInterno.DataSet.Open;

  DM.DSGrauParentesco.DataSet.Close;
  DM.DSGrauParentesco.DataSet.Open;

  DsVisitanteInterno.DataSet.Close;
  DsVisitanteInterno.DataSet.Open;

  dm.DSNACIONALIDADE.DataSet.Close;
  dm.DSNACIONALIDADE.DataSet.OPEN;

  dm.dscidade.DataSet.Close;
  dm.DSCIDADE.DataSet.OPEN;

  DsMenores.DataSet.Close;
  DsMenores.DataSet.Open;

  //  DsConsulta.DataSet.Close;
  //  DsConsulta.DataSet.Open;

  PageControlModeloCadastro.ActivePageIndex := 1;
  EditLocalizar.SetFocus;

  DsMenores.DataSet.FieldByName('DATA_NASCIMENTO').EditMask := '99\/99\/9999;1;_';

end;

procedure TFrmCadastroVisitante.BitBtn1Click(Sender: TObject);
begin
  inherited;
  //Validações
  if DBLookupComboBoxInterno.KeyValue <= 0 then
  begin
    ShowMessage('Informe um Interno!');
    Exit;
  end;

  if DBLookupComboBoxParentesco.KeyValue <= 0 then
  begin
    ShowMessage('Informe o parentesco!');
    Exit;
  end;

  if DBRadioGroup2.Items[DBRadioGroup2.ItemIndex] = 'Inativo' then
    ShowMessage('Lembrete: Você está inserindo internos para um visitante Inativo!');

  //Inserindo o vinculo do interno com o visitante
  DsVisitanteInterno.DataSet.Append;
  DsVisitanteInterno.DataSet.fieldbyname('ID_visitante_interno').AsInteger := DM.SQLConnect.ExecSQLScalar('SELECT GEN_ID(COD_UP,0)||GEN_ID(ID_VISITANTE_INTERNO,1) FROM RDB$DATABASE');
  DsVisitanteInterno.DataSet.fieldbyname('ID_interno').AsInteger := DBLookupComboBoxInterno.KeyValue;
  DsVisitanteInterno.DataSet.fieldbyname('id_visitante').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_visitante').AsInteger;
  DsVisitanteInterno.DataSet.fieldbyname('id_grau_parentesco').AsInteger := DBLookupComboBoxParentesco.KeyValue;
  DsVisitanteInterno.DataSet.Post;

  DBLookupComboBoxInterno.KeyValue := null;
  DBLookupComboBoxParentesco.KeyValue := null;

end;

procedure TFrmCadastroVisitante.FormCreate(Sender: TObject);
begin
  //Busca o padrão do Sistema
  SQLconspadrao.sql.text := 'select * from padrao where cod_up ='
    + inttostr(GLOBAL_ID_UP);

  dsconspadrao.dataset.close;
  dsconspadrao.dataset.open;

  //Se o numero da carteirinha for padrao como sendo o ID do Visitante o campo fica somente leitura.
  if Dsconspadrao.dataset.fieldbyname('NUMERO_CARTEIRA_ID_SISTEMA').AsString = 'S' then
    DBEditCodigoCartao.ReadOnly := true;

  //Atualiza o SQL de consulta com um resultado vazio
  SqlConsulta.sql.text := SqlSelectvisitante.SQL.Text + ' where 1<>1 '
    //+ ' AND I.ID_UP = ' + inttostr(global_id_up)
  + ' order by v.visitante ';

  inherited;

  PageControl1.ActivePageIndex := 0;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_VISITANTE)
    and not ContemValor('E', PERMISSAO_VISITANTE)
    and not ContemValor('D', PERMISSAO_VISITANTE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_VISITANTE)
    and not ContemValor('E', PERMISSAO_VISITANTE)
    and not ContemValor('D', PERMISSAO_VISITANTE) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_VISITANTE)
    and ContemValor('E', PERMISSAO_VISITANTE)
    and not ContemValor('D', PERMISSAO_VISITANTE) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_VISITANTE)
    and ContemValor('E', PERMISSAO_VISITANTE)
    and ContemValor('D', PERMISSAO_VISITANTE) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_VISITANTE)
    and not ContemValor('E', PERMISSAO_VISITANTE)
    and ContemValor('D', PERMISSAO_VISITANTE) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_VISITANTE)
    and not ContemValor('E', PERMISSAO_VISITANTE)
    and ContemValor('D', PERMISSAO_VISITANTE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_VISITANTE)
    and ContemValor('E', PERMISSAO_VISITANTE)
    and not ContemValor('D', PERMISSAO_VISITANTE) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroVisitante.SpeedButton11Click(Sender: TObject);
begin
  inherited;

  //Verifica se o usuário tem permissão de acesso ao cadastro.
  if (PERMISSAO_CADASTRO = '') or (PERMISSAO_CADASTRO = 'R') then
  begin
    ShowMessage('Você não possui Permissão de Acesso ao menu de Cadastros!');
    Exit;
  end;

  //Abre o cadastro de Cidades.
  FrmCadastroCidade := TFrmCadastroCidade.create(Application);
  FrmCadastroCidade.showmodal;
  FreeAndNil(FrmCadastroCidade);
  CorNosCampos;

  DM.DSCIDADE.DataSet.Close;
  DM.DSCIDADE.DataSet.OPEN;

end;

procedure TFrmCadastroVisitante.DBImageFOTOClick(Sender: TObject);
var
  sOrigem, sDestino: string;
  JPeg: TJpegImage;
begin
  //Altera o foto do Visitante.
  with DsCadastro.DataSet do
  begin
    if state in [dsedit, dsinsert] then
    begin
      if OpenDialogFOTO.Execute then
      begin
        JPeg := TJPEGImage.Create;
        JPeg.LoadFromFile(OpenDialogFOTO.FileName);
//        JPeg.LoadFromFile(ConverterBmpParaJPeg(JpgToBmp(OpenDialogFOTO.FileName)));
        DBImageFOTO.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end;

end;

procedure TFrmCadastroVisitante.CdsMenoresAfterInsert(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('ID_MENORES').AsInteger := DM.SQLConnect.ExecSQLScalar('SELECT GEN_ID(COD_UP,0)||GEN_ID(id_menores,1) FROM RDB$DATABASE');
  DataSet.fieldbyname('id_visitante').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_visitante').AsInteger;

end;

procedure TFrmCadastroVisitante.SpeedButton5Click(Sender: TObject);
begin
  inherited;

  //Verifica se o usuário tem permissão de acesso ao cadastro.
  if (PERMISSAO_VISITANTE = '') or (PERMISSAO_VISITANTE = 'R') then
  begin
    ShowMessage('Você não possui Permissão de Acesso ao menu de Cadastros!');
    Exit;
  end;

  //Abre o cadastro de Grau de Parentesco.
  FrmCadastroGrauParentesco := TFrmCadastroGrauParentesco.create(Application);
  FrmCadastroGrauParentesco.showmodal;
  FreeAndNil(FrmCadastroGrauParentesco);

  DM.DSGrauParentesco.DataSet.Close;
  DM.DSGrauParentesco.DataSet.OPEN;

end;

procedure TFrmCadastroVisitante.DBGridConsultaDblClick(Sender: TObject);
var
  cod: integer;
begin
  //Abre a edição do registro que foi dado o clique duplo
  cod := DsConsulta.DataSet.FieldByName('id_visitante').AsInteger;

  SqlCadastro.ParamByName('id_visitante').AsInteger := cod;

  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.Open;

  EditarClick(nil);

end;

procedure TFrmCadastroVisitante.SpeedButton4Click(Sender: TObject);
begin
  inherited;

  //Verifica se o usuário tem permissão de acesso ao cadastro.
  if (PERMISSAO_CADASTRO = '') or (PERMISSAO_CADASTRO = 'R') then
  begin
    ShowMessage('Você não possui Permissão de Acesso ao menu de Cadastros!');
    Exit;
  end;

  FrmCadastroCidade := TFrmCadastroCidade.create(Application);
  FrmCadastroCidade.showmodal;
  FreeAndNil(FrmCadastroCidade);
  CorNosCampos;

  DM.DSCIDADE.DataSet.Close;
  DM.DSCIDADE.DataSet.OPEN;

end;

procedure TFrmCadastroVisitante.SpeedButton1Click(Sender: TObject);
begin
  inherited;

  //Verifica se o usuário tem permissão de acesso ao cadastro.
  if (PERMISSAO_NACIONALIDADE = '') or (PERMISSAO_NACIONALIDADE = 'R') then
  begin
    ShowMessage('Você não possui Permissão de Acesso ao cadastro de Nacionalidade!');
    Exit;
  end;

  //Abre o cadastro de Nacionalidade.
  FrmCadastronacionalidade := TFrmCadastronacionalidade.create(Application);
  FrmCadastronacionalidade.showmodal;
  FreeAndNil(FrmCadastronacionalidade);
  CorNosCampos;

  DM.DsPais.DataSet.Close;
  DM.DsPais.DataSet.OPEN;
end;

procedure TFrmCadastroVisitante.Button1Click(Sender: TObject);
begin
  inherited;
  //NAO UTILIZADO
  Screen.Cursor := crSQLWait;

  try

    SqlConsulta.sql.text := SqlSelectvisitante.SQL.Text + ' where '
      //+ ' I.ID_UP = ' + inttostr(global_id_up)
{+ ' and }+ ' v.visitante like upper('
      + qs(EditLocalizar.text + '%') + ') order by v.visitante ';

    DsConsulta.DataSet.Close;
    DsConsulta.DataSet.Open;

  except
  end;

  Screen.Cursor := crDefault;

end;

procedure TFrmCadastroVisitante.BtnBuscarClick(Sender: TObject);
var
  Status, Campo: string;
begin
  inherited;

  //Se o campo de busca estiver vazio nã faz nada.
  if EditLocalizar.text = '' then
    exit;

  Screen.Cursor := crSQLWait;
  //Define o tipo de pesquisa selecionada
  case RadioGroupTipoLocalizar.ItemIndex of
    0: Campo := 'V.NUMERO_CARTEIRINHA';
    1: Campo := 'V.VISITANTE';
    2: Campo := 'I.NOME_INTERNO';
    3: Campo := 'I.RGI';
  end;

  try
    //De acordo com o tipo de pesquisa executa a busca. (Carteirinha/Visitante ou Interno/RGI)
    if RadioGroupTipoLocalizar.ItemIndex = 0 then
    begin
      sqlconsulta.sql.text := SqlTodosVisitantes.SQL.Text + ' WHERE ' + Campo + ' = ' + qs(EditLocalizar.text)
        + ' ORDER BY V.VISITANTE, I.NOME_INTERNO, I.ST, V.status ';
    end;

    if RadioGroupTipoLocalizar.ItemIndex = 1 then
    begin
      sqlconsulta.sql.text := SqlTodosVisitantes.SQL.Text + ' WHERE ' + Campo + ' LIKE ' + qs(EditLocalizar.text + '%')
        + ' ORDER BY V.VISITANTE, I.NOME_INTERNO, I.ST, V.status ';
    end;

    if RadioGroupTipoLocalizar.ItemIndex = 2 then
    begin
      sqlconsulta.sql.text := SqlTodosInterno.SQL.Text + ' WHERE ' + Campo + ' LIKE ' + qs(EditLocalizar.text + '%')
        + ' ORDER BY I.NOME_INTERNO, V.VISITANTE, I.ST, V.status ';
    end;

    if RadioGroupTipoLocalizar.ItemIndex = 3 then
    begin
      sqlconsulta.sql.text := SqlTodosInterno.SQL.Text + ' WHERE ' + Campo + ' = ' + qs(EditLocalizar.text)
        + ' ORDER BY I.NOME_INTERNO, V.VISITANTE, I.ST, V.status ';
    end;

    DsConsulta.DataSet.Close;
    DsConsulta.DataSet.Open;

  except
  end;

  Screen.Cursor := crDefault;


end;

procedure TFrmCadastroVisitante.EditLocalizarKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;

  //Se o tipo de pesquisa for pelo numero do cartão o campo só aceita numeros.
  if RadioGroupTipoLocalizar.ItemIndex = 0 then
  begin
    if not (key in ['0'..'9', #8]) then
      Key := #0;
  end;

end;

procedure TFrmCadastroVisitante.EditLocalizarChange(Sender: TObject);
begin

  //  inherited;
  //  DsConsulta.DataSet.Close;
  //  BtnBuscarClick(nil);

end;

procedure TFrmCadastroVisitante.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  //Se pressionar F5 executa a busca.
  if key = vk_f5 then
  begin
    BtnBuscarClick(nil);
  end;

end;

procedure TFrmCadastroVisitante.Button2Click(Sender: TObject);
var
  interno: variant;
begin
  inherited;
  interno := BuscaGeral(nil, 'INTERNO', '', 100, 100, 800, 600);
  if VarToStrDef(interno, '') <> '' then
  begin
    DBLookupComboBoxInterno.KeyValue := interno;
  end;
end;

procedure TFrmCadastroVisitante.EditarClick(Sender: TObject);
begin
  inherited;
  DBEditdtrnascimento.Field.EditMask := '99\/99\/9999;1;_';
  DBEditcpf.Field.EditMask := '999\.999\.999-99;0;_';
end;

procedure TFrmCadastroVisitante.CarteiradeVisitante1Click(Sender: TObject);
var
  rel1: string;
begin

  FrmMenuRelatorio := TFrmMenuRelatorio.Create(Application);
  rel1 := GLOBAL_PATCH_RELATORIO + '\SYSTEM\Cartão de Visitante.fr3';

  GLOBAL_ID_VISITANTE := DsConsulta.DataSet.FieldByName('ID_VISITANTE').AsString;

  if FileExists(rel1) then
  begin

    with FrmMenuRelatorio do
    begin
      frxReport1.LoadFromFile(rel1);
      frxReport1.Variables.DeleteVariable('GLOBAL_ID_VISITANTE');
      frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ID_VISITANTE', GLOBAL_ID_VISITANTE);
      frxReport1.Variables.DeleteVariable('ID_UP');
      frxReport1.Variables.AddVariable('SIAP', 'ID_UP', GLOBAL_ID_UP);
      frxReport1.Variables.DeleteVariable('GLOBAL_ORGAO');
      frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ORGAO', QS(GLOBAL_ORGAO));
      frxReport1.Variables.DeleteVariable('GLOBAL_DEPARTAMENTO');
      frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_DEPARTAMENTO', Qs(GLOBAL_DEPARTAMENTO));
      frxReport1.Variables.DeleteVariable('GLOBAL_DIRETORIA');
      frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_DIRETORIA', Qs(GLOBAL_DIRETORIA));
      frxReport1.ShowReport();
    end;

  end;

  FreeAndNil(FrmMenuRelatorio);
  SetCurrentDir(GLOBAL_PATCH_SISTEMA);


end;

procedure TFrmCadastroVisitante.BitBtn2Click(Sender: TObject);
begin
  inherited;

  TIPOCAPTURA := '';

  Frmcapturabiometrica := TFrmcapturabiometrica.Create(Application);

  FrmCapturaBiometrica.SQLdigital.SQL.Text := 'select * from biometria where id_visitante = ' + DsCadastro.DataSet.fieldbyname('id_visitante').AsString;

  FrmCapturaBiometrica.Dsdigital.DataSet.Close;
  FrmCapturaBiometrica.Dsdigital.DataSet.Open;

  TIPOCAPTURA := 'Visitante';

  FrmCapturaBiometrica.Labelcapdigital.Caption := 'Capturando Digital do(a) Visitante ' + DsCadastro.DataSet.fieldbyname('visitante').value;
  Frmcapturabiometrica.ShowModal;
  FreeAndNil(Frmcapturabiometrica);

end;

procedure TFrmCadastroVisitante.DBEditCPFExit(Sender: TObject);
begin
  inherited;

  // Procedimento para verificar se o CPF do visitante já foi cadastrado anteriormente.
  //Verifica se o CPF é Valido
  if ValidaCPF(DBEditCPF.Text) then
    //Se o CPF for válido e/ou o campo não for vazio e esteja em modo de inserção ou edição
    //verifica se ja existe.
    if (Trim(DBEditCPF.Text) <> '') and (DsCadastro.DataSet.State in [dsinsert]) then
    begin
      DM.SqlExecute.sql.text := 'select cpf From visitante where cpf =' + Qs(DBEditCPF.Text) + '';
      DM.DsExecute.dataset.close;
      DM.DsExecute.dataset.open;
      if DM.DsExecute.dataset.recordcount > 0 then
      begin
        showmessage('CPF já cadastrado para um visitante!');
        salvar.Enabled := false;
        DBEditCPF.SetFocus;
      end
      else
      begin
        DBEdit7.SetFocus;
        salvar.Enabled := true;
      end;
      DM.DsExecute.dataset.close;
    end;

end;



procedure TFrmCadastroVisitante.Button3Click(Sender: TObject);
var cod_visitante_interno: integer;
begin
  inherited;
  //Verifica se o usuário tem permissão de acesso ao cadastro.
  if not ContemValor('D', PERMISSAO_VISITANTE) then
  begin
    ShowMessage('Você não possui Permissão para desvincular interno do visitante!');
    Exit;
  end;
  
  //Se existir registros no dataset então faz a exclusão.
  if DsVisitanteInterno.DataSet.RecordCount >= 1 then
  begin
    //Remove o Visitante da Tabela VISITANTE_INTERNO e seta o visitante como Inativo!
    if Application.MessageBox('Deseja desvincular do visitante o interno selecionado?',
      'Confirme', mb_YesNo + Mb_IconQuestion) = idYes then
    begin
      DsVisitanteInterno.DataSet.Delete;
    end;
  end
  else
    Exit;

  //Se o visitante nao tem mais internos vinculados, entao seta o Status do visitante como inativo.
  if DsVisitanteInterno.DataSet.RecordCount <= 0 then
  begin
    DBRadioGroup2.ItemIndex := 1; // Seta o Status do visitante como Inativo
    ShowMessage('O Visitante será definido como Inativo por não possuir internos vinculados a ele.');
  end;

end;

procedure TFrmCadastroVisitante.DBRadioGroup2Change(Sender: TObject);
begin
  inherited;
  //Caso o interno seja definido como Ativo, o campo de motivo da inativação é colocado em branco
  if DBRadioGroup2.ItemIndex = 0 then
  begin
    if (DsCadastro.DataSet.State in [dsedit, dsinsert]) then
    begin
      DBEdit1.Text := '';
    end;
  end;
end;

procedure TFrmCadastroVisitante.RadioGroupTipoLocalizarClick(
  Sender: TObject);
begin
  inherited;
  //Ao trocar o tipo de pesquisa da o foco no edit de pesquisa, se disponivel.
  if EditLocalizar.CanFocus then
    EditLocalizar.SetFocus;
end;

procedure TFrmCadastroVisitante.CancelarClick(Sender: TObject);
begin
  //Cancela a transação de exclusão dos internos do visitante
  DsVisitanteInterno.DataSet.Cancel;
  DsVisitanteInterno.DataSet.Close;
  DsVisitanteInterno.DataSet.Open;
  inherited;
end;

procedure TFrmCadastroVisitante.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_VISITANTE)
    and not ContemValor('E', PERMISSAO_VISITANTE)
    and not ContemValor('D', PERMISSAO_VISITANTE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_VISITANTE)
    and not ContemValor('E', PERMISSAO_VISITANTE)
    and not ContemValor('D', PERMISSAO_VISITANTE) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_VISITANTE)
    and ContemValor('E', PERMISSAO_VISITANTE)
    and not ContemValor('D', PERMISSAO_VISITANTE) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_VISITANTE)
    and ContemValor('E', PERMISSAO_VISITANTE)
    and ContemValor('D', PERMISSAO_VISITANTE) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_VISITANTE)
    and not ContemValor('E', PERMISSAO_VISITANTE)
    and ContemValor('D', PERMISSAO_VISITANTE) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_VISITANTE)
    and not ContemValor('E', PERMISSAO_VISITANTE)
    and ContemValor('D', PERMISSAO_VISITANTE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_VISITANTE)
    and ContemValor('E', PERMISSAO_VISITANTE)
    and not ContemValor('D', PERMISSAO_VISITANTE) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroVisitante.ExcluirClick(Sender: TObject);
begin
  //Se o visitante possuir internos vinculados não deixa excluir o visitante.
  if DsVisitanteInterno.DataSet.RecordCount >= 1 then
  begin
    ShowMessage('Este Visitante possui Internos vinculados a ele!' + #10 + #13
      + #10 + #13 + 'Para Deletar o Visitante remova o Interno primeiro.');
    Exit;
  end;
  inherited;
end;

end.

