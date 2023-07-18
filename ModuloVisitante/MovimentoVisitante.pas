unit MovimentoVisitante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloMovimentacao, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, ToolWin, ExtCtrls, DBCtrls,
  Mask, Buttons, Jpeg, Menus, System.ImageList;

type
  TFrmMovimentoVisitante = class(TFrmModeloMovimentacao)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEditCodigoCartao: TDBEdit;
    Label6: TLabel;
    DBEditCPF: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    SqlVisitanteInterno: TSQLQuery;
    DspVisitanteInterno: TDataSetProvider;
    CdsVisitanteInterno: TClientDataSet;
    DsVisitanteInterno: TDataSource;
    RadioGroupStatus: TRadioGroup;
    SqlSelectVisitante: TSQLQuery;
    OpenDialogFOTO: TOpenDialog;
    TbMovimentar: TToolButton;
    DBRadioGroup2: TDBRadioGroup;
    PageControlVisita: TPageControl;
    TabSheetInternos: TTabSheet;
    TabSheetMenores: TTabSheet;
    DBGridInterno: TDBGrid;
    ButtonNovoInterno: TButton;
    Button2: TButton;
    DBGrid4: TDBGrid;
    ButtonNovoMenor: TButton;
    Button6: TButton;
    SqlMenores: TSQLQuery;
    DspMenores: TDataSetProvider;
    CdsMenores: TClientDataSet;
    DsMenores: TDataSource;
    RadioGroupTipoLocalizar: TRadioGroup;
    DBEditdtrnascimento: TDBEdit;
    Label3: TLabel;
    PanelTitulo: TPanel;
    BitBtnCancelaEntrada: TBitBtn;
    Label4: TLabel;
    Label8: TLabel;
    TabSheet1: TTabSheet;
    Label28: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    SpeedButton11: TSpeedButton;
    Label34: TLabel;
    Label14: TLabel;
    Label30: TLabel;
    Label17: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit13: TDBEdit;
    DBEditcep: TDBEdit;
    DBEditfone: TDBEdit;
    DBLookupComboBoxIDCIDADE: TDBLookupComboBox;
    DBEdit16: TDBEdit;
    BtnImprimir: TBitBtn;
    SqlMov_Diario_Visitantes: TSQLQuery;
    DspMov_Diario_Visitantes: TDataSetProvider;
    CdsMov_Diario_Visitantes: TClientDataSet;
    DsMov_Diario_Visitantes: TDataSource;
    Label11: TLabel;
    BtnSacola: TBitBtn;
    BtnDinheiro: TBitBtn;
    BtnBuscar: TButton;
    Panel2: TPanel;
    DBImageFOTO: TDBImage;
    DBGridVisita: TDBGrid;
    RadioGroupTipoVisita: TRadioGroup;
    DBLookupComboBoxRegra: TDBLookupComboBox;
    SqlRegraVisita: TSQLQuery;
    DspRegraVisita: TDataSetProvider;
    CdsRegraVisita: TClientDataSet;
    DsRegraVisita: TDataSource;
    Dsconspadrao: TDataSource;
    Cdsconspadrao: TClientDataSet;
    Dspconspadrao: TDataSetProvider;
    SQLconspadrao: TSQLQuery;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit8: TDBEdit;
    CdsMovimentoID_MOV_DIARIO_VISITANTES: TIntegerField;
    CdsMovimentoID_VISITANTE: TIntegerField;
    CdsMovimentoCANCELADO: TStringField;
    CdsMovimentoORDEM_VISITA: TIntegerField;
    CdsMovimentoNOME_VISITANTE: TStringField;
    CdsMovimentoNUMERO_CARTEIRINHA: TStringField;
    CdsMovimentoCPF: TStringField;
    CdsMovimentoRG: TStringField;
    CdsMovimentoORGAO_EXPEDIDOR: TStringField;
    CdsMovimentoSEXO: TStringField;
    CdsMovimentoIMPRESSO: TStringField;
    CdsMovimentoSACOLA: TIntegerField;
    CdsMovimentoDINHEIRO: TFloatField;
    CdsMovimentoDATA_VISITA: TSQLTimeStampField;
    CdsMovimentoNOME_INTERNO: TStringField;
    SqlTodosVisitantes: TSQLQuery;
    SqlTodosInterno: TSQLQuery;
    SqlValidaRegra: TSQLQuery;
    DspValidaRegra: TDataSetProvider;
    CdsValidaRegra: TClientDataSet;
    DsValidaRegra: TDataSource;
    CdsVisitanteInternoID_VISITANTE_INTERNO: TIntegerField;
    CdsVisitanteInternoID_VISITANTE: TIntegerField;
    CdsVisitanteInternoID_INTERNO: TIntegerField;
    CdsVisitanteInternoID_GRAU_PARENTESCO: TIntegerField;
    CdsVisitanteInternoGRAU_PARENTESCO: TStringField;
    CdsVisitanteInternoPAVILHAO: TStringField;
    CdsVisitanteInternoGALERIA: TStringField;
    CdsVisitanteInternoSOLARIO: TStringField;
    CdsVisitanteInternoCELA: TStringField;
    CdsVisitanteInternoNOME_INTERNO: TStringField;
    SqlExecute: TSQLQuery;
    CdsVisitanteInternoISOLAMENTO: TStringField;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    DBComboBoxTipoVisitante: TDBComboBox;
    Label13: TLabel;
    CdsMovimentoHORA_VISITA: TTimeField;
    DBEdit7: TDBEdit;
    Label15: TLabel;
    DBRadioGroup3: TDBRadioGroup;
    PopupMenuVisitante: TPopupMenu;
    CarteiradeVisitante1: TMenuItem;
    N1: TMenuItem;
    AlterarDadosFoto1: TMenuItem;
    SqlVisitaDia: TSQLQuery;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    LabelTotalVisitante: TLabel;
    CdsMovimentoID_INTERNO: TIntegerField;
    CdsMovimentoSELECAO: TStringField;
    Seleo1: TMenuItem;
    Desmarcar1: TMenuItem;
    TabSheet2: TTabSheet;
    Label16: TLabel;
    DBEdit9: TDBEdit;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup5: TDBRadioGroup;
    DBRadioGroup6: TDBRadioGroup;
    Label20: TLabel;
    DBLookupComboBoxIDNATURALIDADE: TDBLookupComboBox;
    SpeedButton4: TSpeedButton;
    Label21: TLabel;
    DBLookupComboBoxIDNACIONALIDADE: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    DBEdit15: TDBEdit;
    Label19: TLabel;
    DBEdit14: TDBEdit;
    Label22: TLabel;
    Label35: TLabel;
    DBEdit17: TDBEdit;
    Label23: TLabel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    Button1: TButton;
    LabelVisualizando: TLabel;
    LabelDATA_HORA: TLabel;
    Timer1: TTimer;
    DBEdit21: TDBEdit;
    SqlUltVisita: TSQLQuery;
    CdsUltVisita: TClientDataSet;
    DspUltVisita: TDataSetProvider;
    DsUltVisita: TDataSource;
    CdsUltVisitaDATA_VISITA: TSQLTimeStampField;
    DBLookupComboBoxParentesco: TDBLookupComboBox;
    Label26: TLabel;
    Label27: TLabel;
    procedure ButtonNovoInternoClick(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure Image1Click(Sender: TObject);
    procedure TbMovimentarClick(Sender: TObject);
    procedure ButtonNovoMenorClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure DsMovimentoDataChange(Sender: TObject; Field: TField);
    procedure RadioGroupStatusClick(Sender: TObject);
    procedure EditLocalizarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnCancelaEntradaClick(Sender: TObject);
    procedure RadioGroupTipoLocalizarClick(Sender: TObject);
    procedure EditLocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnImprimirClick(Sender: TObject);
    procedure BtnSacolaClick(Sender: TObject);
    procedure BtnDinheiroClick(Sender: TObject);
    procedure BtnBuscarClick(Sender: TObject);
    procedure EditLocalizarChange(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGridVisitaDblClick(Sender: TObject);
    procedure CdsVisitanteInternoCalcFields(DataSet: TDataSet);
    procedure CarteiradeVisitante1Click(Sender: TObject);
    procedure AlterarDadosFoto1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGridConsultaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure Seleo1Click(Sender: TObject);
    procedure Desmarcar1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure DBEditCPFExit(Sender: TObject);
    procedure DBRadioGroup2Change(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure PageControlConsultaChange(Sender: TObject);
  private
    function ValidarVisitante: boolean;
    function CodigoIgual: Boolean;
    function QualPavilhao: string;
    function ValidaPreenchimento: Boolean;
    function MaximoInternoVisitante(sIdIntMov: string = ''): boolean;
    procedure OrdenarMovimento;
    function BuscaQualInterno(ID_VISITANTE: string): string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMovimentoVisitante: TFrmMovimentoVisitante;
  InternoTotal, InternoSacola, InternoDinheiro: double;
  NomeVisitantes: string;

implementation

uses VisitanteInterno, DmPrincipal, Lib, VisitanteMenores, MenuRelatorio,
  CadastroNaturalidade, CadastroNacionalidade, CadastroCidade;

{$R *.dfm}

procedure TFrmMovimentoVisitante.ButtonNovoInternoClick(Sender: TObject);
var
  id_visitante: integer;
begin
  inherited;

  if ValidarVisitante then
  begin

    //    id_visitante := DsCadastro.DataSet.fieldbyname('ID_VISITANTE').AsInteger;
    //    if TClientDataSet(DsCadastro.DataSet).State in [dsinsert] then
    //    begin
    //      try
    //        IniciaTransCadastro;
    //        TClientDataSet(DsCadastro.DataSet).Post;
    //        if TClientDataSet(DsCadastro.DataSet).ApplyUpdates(0) = 0 then
    //          FinalizaTransCadastro
    //        else
    //          CancelaTransCadastro;
    //      except
    //        CancelaTransCadastro;
    //      end;
    //
    //      dsconsulta.dataset.close;
    //      dsconsulta.dataset.open;
    //
    //    end;
    //
    //    if dsconsulta.dataset.locate('ID_VISITANTE', id_visitante, []) then
    //    begin
    //
    //      DsCadastro.DataSet.Edit;
    //      FrmVisitanteInterno := TFrmVisitanteInterno.Create(Application);
    //      //      FrmVisitanteInterno.FiltroPavilhao := QualPavilhao;
    //      if FrmVisitanteInterno.ShowModal = mrok then
    //      begin
    //        try
    //          IniciaTransCadastro;
    //          dm.SqlExecute.SQL.Text :=
    //            'insert into visitante_interno(id_visitante_interno, id_visitante, id_interno, id_grau_parentesco)'
    //            + ' values(0, '
    //            + dscadastro.DataSet.fieldbyname('ID_VISITANTE').asstring + ', '
    //            + DM.DsInterno.DataSet.fieldbyname('ID_INTERNO').asstring + ', '
    //            + DM.DSGrauParentesco.DataSet.fieldbyname('ID_GRAU_PARENTESCO').asstring + ')';
    //          dm.SqlExecute.ExecSQL();
    //          FinalizaTransCadastro;
    //        except
    //          CancelaTransCadastro;
    //        end;
    //        DsVisitanteInterno.DataSet.Close;
    //        DsVisitanteInterno.DataSet.Open;
    //      end;
    //    end;

    if DBRadioGroup2.Items[DBRadioGroup2.ItemIndex] = 'Inativo' then
      ShowMessage('Lembrete: Você está inserindo internos para um visitante Inativo!');

    FrmVisitanteInterno := TFrmVisitanteInterno.Create(Application);
    if FrmVisitanteInterno.ShowModal = mrok then
    begin

      CdsVisitanteInterno.Append;
      CdsVisitanteInterno.FieldByName('ID_VISITANTE_INTERNO').AsInteger := 0;
      CdsVisitanteInterno.FieldByName('ID_VISITANTE').AsInteger :=
        dscadastro.DataSet.fieldbyname('ID_VISITANTE').AsInteger;
      CdsVisitanteInterno.FieldByName('ID_INTERNO').AsInteger :=
        FrmVisitanteInterno.DBLookupComboBoxInterno.KeyValue;
      CdsVisitanteInterno.FieldByName('ID_GRAU_PARENTESCO').AsInteger :=
        FrmVisitanteInterno.DBLookupComboBoxParentesco.KeyValue;
      CdsVisitanteInterno.Post;

      FreeAndNil(FrmVisitanteInterno);

    end;

  end;

end;

procedure TFrmMovimentoVisitante.NovoClick(Sender: TObject);
begin
  inherited;

  DsCadastro.DataSet.fieldbyname('ID_VISITANTE').AsInteger := DBGenerator('ID_VISITANTE');
  DsCadastro.DataSet.fieldbyname('STATUS').AsString := 'A';
  DsCadastro.DataSet.fieldbyname('SEXO').AsString := 'F';
  DsCadastro.DataSet.fieldbyname('NUMERO_CARTEIRINHA').AsInteger := DsCadastro.DataSet.fieldbyname('id_visitante').AsInteger;

  DBEditdtrnascimento.Field.EditMask := '99\/99\/9999;1;_';

  dm.DsExecute.DataSet.Close;
  if DBEditCodigoCartao.canfocus then
    DBEditCodigoCartao.setfocus;

  DBGridVisita.Enabled := False;
end;

procedure TFrmMovimentoVisitante.FormCreate(Sender: TObject);
begin
  inherited;
  //  PavilhaoRadioGroup(IntToStr(GLOBAL_ID_UP), RadioGroupPavilhao);

  DM.DsPais.DataSet.Close;
  DM.DsPais.DataSet.OPEN;

  DM.DSCIDADE.DataSet.Close;
  DM.DSCIDADE.DataSet.OPEN;


  SQLconspadrao.sql.text := 'select * from padrao where cod_up ='
    + inttostr(GLOBAL_ID_UP);

  dsconspadrao.dataset.close;
  dsconspadrao.dataset.open;

  if Dsconspadrao.dataset.fieldbyname('NUMERO_CARTEIRA_ID_SISTEMA').AsString = 'S' then
    DBEditCodigoCartao.ReadOnly := true;

  SqlMovimento.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;

  //  RadioGroupPavilhao.Items.Add('Todos');
  //  RadioGroupPavilhao.ItemIndex := RadioGroupPavilhao.Items.Count - 1;
  RadioGroupTipoVisita.ItemIndex := 0;
  RadioGroupTipoLocalizar.ItemIndex := 2;

  SqlRegraVisita.ParamByName('id_up').AsInteger := GLOBAL_ID_UP;
  DsRegraVisita.DataSet.Close;
  DsRegraVisita.DataSet.Open;

  DM.DSGrauParentesco.DataSet.Close;
  DM.DSGrauParentesco.DataSet.Open;

  DsVisitanteInterno.DataSet.Close;
  DsMenores.DataSet.Close;
  DsMovimento.DataSet.Close;
  DsVisitanteInterno.DataSet.Open;
  DsMenores.DataSet.Open;
  DsMovimento.DataSet.Open;
  PageControlVisita.ActivePageIndex := 0;

  // RadioGroupTipoLocalizarClick(nil);

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

  //Verificando se tem a permissão de dar entrada no visitante.
  if not (PERMISSAO_ENTRADAVISITANTE = 'S') then
  begin
    TbMovimentar.Visible := False;
    BitBtnCancelaEntrada.Visible := False;
    BtnDinheiro.Visible := False;
    BtnSacola.Visible := False;
    BtnImprimir.Visible := False;
    PageControlConsulta.ActivePageIndex := 1;
  end;

end;

procedure TFrmMovimentoVisitante.Button2Click(Sender: TObject);
begin
  inherited;
{  try
    IniciaTransCadastro;
    dm.SqlExecute.SQL.Text :=
      'delete from visitante_interno where id_visitante_interno='
      + DsVisitanteInterno.DataSet.fieldbyname('id_visitante_interno').asstring;
    dm.SqlExecute.ExecSQL();
    FinalizaTransCadastro;
  except
    CancelaTransCadastro;
  end;
  DsVisitanteInterno.DataSet.Close;
  DsVisitanteInterno.DataSet.Open;}

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

procedure TFrmMovimentoVisitante.SalvarClick(Sender: TObject);
var
  sMotivo_Inativo, scpf: string;
begin
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

  if Dsconspadrao.dataset.fieldbyname('NUMERO_CARTEIRA_ID_SISTEMA').AsString = 'S' then
    dscadastro.DataSet.fieldbyname('NUMERO_CARTEIRINHA').AsString :=
      dscadastro.DataSet.fieldbyname('ID_VISITANTE').AsString;

  if DsCadastro.DataSet.FieldByName('VISITANTE').AsString = '' then
  begin
    ShowMessage('Digite o Nome do(a) Visitante!');
    DBEdit1.SetFocus;
    Exit;
  end;

  //CPF validado e verificado se ja existe visitante no evento OnExit do DBEditCPF

  if DsVisitanteInterno.DataSet.IsEmpty then
  begin
    if DBRadioGroup2.Items[DBRadioGroup2.ItemIndex] = 'Ativo' then
    begin
      ShowMessage('Informe um interno.');
      Exit;
    end;
  end;

  if DsCadastro.DataSet.FieldByName('NUMERO_CARTEIRINHA').AsString = '' then
  begin
    DsCadastro.DataSet.FieldByName('NUMERO_CARTEIRINHA').AsString :=
      DsCadastro.DataSet.FieldByName('ID_VISITANTE').AsString;
  end;

  //ShowMessage('Informe ao visitante o número da carteira: ' + DsCadastro.DataSet.FieldByName('NUMERO_CARTEIRINHA').AsString + '.');

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

  EditLocalizar.Text := '';

  if EditLocalizar.CanFocus then
    EditLocalizar.SetFocus;

  PageControlConsulta.ActivePageIndex := 0;

  DBGridVisita.Enabled := True;

  DsVisitanteInterno.DataSet.Close;
  DsVisitanteInterno.DataSet.Open;

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

end;

procedure TFrmMovimentoVisitante.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  with DsCadastro.DataSet do
  begin

    if not Active then
      Exit;

    if IsEmpty then
      Exit;

  end;

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

procedure TFrmMovimentoVisitante.Image1Click(Sender: TObject);
var
  sOrigem, sDestino: string;
  JPeg: TJpegImage;
begin
  with DsCadastro.DataSet do
  begin
    if state in [dsedit, dsinsert] then
    begin
      if OpenDialogFOTO.Execute then
      begin
        JPeg := TJPEGImage.Create;
        //        JPeg.LoadFromFile(ConverterBmpParaJPeg(JpgToBmp(OpenDialogFOTO.FileName)));
        JPeg.LoadFromFile(OpenDialogFOTO.FileName);
        DBImageFOTO.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end;
end;

procedure TFrmMovimentoVisitante.TbMovimentarClick(Sender: TObject);
var
  sQuantidade_Menor, sDinheiro, sSacola, sSql: string;
begin
  inherited;

  DsMovimento.DataSet.Filter := '';
  DsMovimento.DataSet.Filtered := false;
  LabelVisualizando.Caption := 'Visualisando: <todos>';

  sQuantidade_Menor := '0';

  with DsCadastro.DataSet do
  begin

    if not Active then
      Exit;

    if IsEmpty then
    begin
      ShowMessage('Sem cadastro de visitante.');
      Exit;
    end;

    //    if RadioGroupPavilhao.ItemIndex = -1 then
    //    begin
    //      ShowMessage('Informe o ' + GLOBAL_NIVEL_1 + ' que será visitado.');
    //      if RadioGroupPavilhao.CanFocus then
    //        RadioGroupPavilhao.SetFocus;
    //      Exit;
    //    end;

    if EditLocalizar.CanFocus then
      EditLocalizar.SetFocus;

    if DBLookupComboBoxRegra.KeyValue = null then
    begin
      ShowMessage('Tem que informar a regra de visita do dia.');
      exit;
    end;

    if RadioGroupTipoVisita.ItemIndex = -1 then
    begin
      ShowMessage('Informe o tipo de visitantes do dia.');
      if RadioGroupTipoVisita.CanFocus then
        RadioGroupTipoVisita.SetFocus;
      Exit;
    end;

    if not (dscadastro.dataset.state in [dsinsert]) then
    begin
      if not CodigoIgual then
      begin
        ShowMessage('Cartão está diferente do que está no cadastro do visitante.');
        Exit;
      end;
    end;

    if not ValidaPreenchimento then
    begin
      if ContemValor('E', PERMISSAO_VISITANTE) then
      begin
        EditarClick(nil);
      end
      else
      begin
        ShowMessage('Você não possui Permissão para alterar Cadastro de Visitantes!');
      end;
      Exit;
    end;

    if fieldbyname('STATUS').AsString = 'I' then
    begin
      ShowMessage('Visitante inativo. Motivo: ' + fieldbyname('MOTIVO_INATIVO').AsString + '.');
      if EditLocalizar.CanFocus then
        EditLocalizar.SetFocus;
      Exit;
    end;

    if CdsConsulta.fieldbyname('ST').AsString = 'I' then
    begin
      ShowMessage('Interno inativo.');
      if EditLocalizar.CanFocus then
        EditLocalizar.SetFocus;
      Exit;
    end;

    SqlMov_Diario_Visitantes.SQL.Text :=
      'select * from mov_diario_visitantes mv where coalesce(mv.cancelado,''N'')<>''S'' and mv.data_visita = current_date and mv.id_visitante = ' +
      DsCadastro.DataSet.fieldbyname('id_visitante').AsString + ' and mv.id_up= ' + inttostr(GLOBAL_ID_UP);
    DsMov_Diario_Visitantes.DataSet.Close;
    DsMov_Diario_Visitantes.DataSet.open;

    if not DsMov_Diario_Visitantes.DataSet.IsEmpty then
    begin
      ShowMessage('Visitante já lançado.');
      if EditLocalizar.CanFocus then
        EditLocalizar.SetFocus;
      Exit;
    end;

    MaximoInternoVisitante;

    sDinheiro := '0';
    sSacola := '0';

    if uppercase(Trim(fieldbyname('TIPO_VISITANTE').AsString)) <> 'RELIGIãO' then
    begin

      if CdsConsulta.fieldbyname('SIGLA').AsString = '' then
      begin
        ShowMessage('Interno SEM PENITENCIÁRIA.');
        if EditLocalizar.CanFocus then
          EditLocalizar.SetFocus;
        Exit;
      end;

      if CdsConsulta.fieldbyname('ID_UP').AsInteger <> global_id_up then
      begin
        ShowMessage('Interno não pertence a esta PENITENCIÁRIA.');
        if EditLocalizar.CanFocus then
          EditLocalizar.SetFocus;
        Exit;
      end;

      SqlValidaRegra.SQL.Text := SqlSelectVisitante.SQL.Text
        + ' WHERE (' + DsRegraVisita.DataSet.fieldbyname('REGRA_SQL').AsString + ') '
        + ' AND I.ID_UP = ' + inttostr(global_id_up)
        + ' AND V.ID_VISITANTE=' + CdsConsulta.fieldbyname('ID_VISITANTE').AsString;

      CdsValidaRegra.close;
      CdsValidaRegra.open;
      if CdsValidaRegra.IsEmpty then
      begin
        ShowMessage('Este visitante não atende a regra do dia: ' + DBLookupComboBoxRegra.Text);
        if EditLocalizar.CanFocus then
          EditLocalizar.SetFocus;
        Exit;
      end;

      if DsVisitanteInterno.DataSet.IsEmpty then
      begin
        ShowMessage('Informe ao menos um interno(a).');
        if not (dscadastro.dataset.state in [dsedit, dsinsert]) then
          if ContemValor('E', PERMISSAO_VISITANTE) then
          begin
            Editar.OnClick(nil);
            ButtonNovoInterno.OnClick(nil);
          end
          else
          begin
            ShowMessage('Você não possui Permissão para alterar Cadastro de Visitantes!');
          end;
        exit;
      end;

      //total de dinheiro
      if Dsconspadrao.dataset.fieldbyname('LIMITE_DINHEIRO').AsFloat > 0 then
      begin
        if MessageDlg('Informar entrada de dinheiro?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          sDinheiro := '0';
          while StrToFloatDef(sDinheiro, 0) = 0 do
          begin
            sDinheiro := InputBox('Informe o valor em dinheiro.', 'Valor em dinheiro', '0,00');
            if StrToFloatDef(sDinheiro, 0) = 0 then
            begin
              if MessageDlg('Informar entrada de dinheiro?',
                mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
              begin
                break;
              end;
            end;

            if (StrToFloatDef(sDinheiro, 0) + InternoDinheiro) > Dsconspadrao.dataset.fieldbyname('LIMITE_DINHEIRO').AsFloat then
            begin
              ShowMessage(
                NomeVisitantes + #10 + #13 +
                ' Já entrou com dinheiro: ' + formatfloat('####0.00', InternoDinheiro) + ' ao total será: ' + formatfloat('####0.00',
                (StrToFloatDef(sDinheiro, 0) + InternoDinheiro)));
              sDinheiro := '0';
            end;

          end;
        end;

      end;

      if StrToFloatDef(sDinheiro, 0) = 0 then
        sDinheiro := '0';

      sDinheiro := BuscaTroca(sDinheiro, ',', '.');

      //total de sacolas
      if Dsconspadrao.dataset.fieldbyname('LIMITE_SACOLA').AsFloat > 0 then
      begin

        if MessageDlg('Informar quantidade de sacola?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          sSacola := '0';
          while strtointdef(sSacola, 0) = 0 do
          begin
            sSacola := InputBox('Informe o numero de sacolas.', 'Numero de sacolas', '1');
            if strtointdef(sSacola, 0) = 0 then
            begin
              if MessageDlg('Informar quantidade de sacola?',
                mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
              begin
                break;
              end;
            end;

            if (StrToFloatDef(sSacola, 0) + InternoSacola) > Dsconspadrao.dataset.fieldbyname('LIMITE_SACOLA').AsFloat then
            begin
              ShowMessage(
                NomeVisitantes + #10 + #13 +
                ' Já entrou com sacolas: ' + floattostr(InternoSacola) + ' ao total será: ' + floattostr(StrToFloatDef(sSacola, 0) +
                InternoSacola));
              sSacola := '0';
            end;

          end;
        end;

      end;

      if strtointdef(sSacola, 0) = 0 then
        sSacola := '0';

    end;

    if length(trim(DsCadastro.DataSet.FieldByName('CHAVE_MIGRACAO').AsString)) > 2 then
    begin
      if MessageDlg('Alerta: ' +
        DsCadastro.DataSet.FieldByName('CHAVE_MIGRACAO').AsString + #10 + #13 +
        'Liberar a visita mesmo assim?',
        mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
      begin
        Exit;
      end;
    end;

    if Trim(fieldbyname('TIPO_VISITANTE').AsString) <> '' then
    begin

      if ContemValor(uppercase(DBComboBoxTipoVisitante.text), 'EX-INTERNO') then
      begin

        if MessageDlg(uppercase(DBComboBoxTipoVisitante.text) + #10 + #13 + 'Liberar a visita mesmo assim?',
          mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
        begin
          Exit;
        end;

      end;

      if ContemValor(uppercase(DBComboBoxTipoVisitante.text), 'PROIBIDO(A),SUSPENSO(A)') then
      begin
        ShowMessage(uppercase(DBComboBoxTipoVisitante.text));
        Exit;
      end;

    end;

    //total de visitantes
    if InternoTotal + 1 > Dsconspadrao.DataSet.FieldByName('NUMERO_VISITANTES').AsInteger then
    begin

      ShowMessage('Interno(a):' +
        DsVisitanteInterno.DataSet.fieldbyname('NOME_INTERNO').asstring + ', já recebeu o Limite de Visitantes.' + #10 + #13 +
        NomeVisitantes
        );

      if MessageDlg('Liberar mais uma visita para o interno(a):' +
        DsVisitanteInterno.DataSet.fieldbyname('NOME_INTERNO').asstring + '?',
        mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
      begin
        Exit;
      end;

    end;

    if RadioGroupTipoVisita.ItemIndex = 1 then
    begin
      if DsMenores.DataSet.IsEmpty then
      begin
        if MessageDlg('Tem menor?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          PageControlVisita.ActivePage := TabSheetMenores;
          Editar.OnClick(nil);
          if TabSheetMenores.CanFocus then
            TabSheetMenores.SetFocus;
          ButtonNovoMenor.OnClick(nil);
          Exit;
        end;
      end
      else
      begin
        sQuantidade_Menor := inputbox('Quantos menores?', 'Quantos menores?', inttostr(DsMenores.DataSet.recordcount));
      end;
    end;

    DsVisitanteInterno.DataSet.First;
    while not DsVisitanteInterno.DataSet.eof do
    begin
      if DsVisitanteInterno.DataSet.fieldbyname('ISOLAMENTO').AsString = 'S' then
      begin
        if MessageDlg('Interno:' + DsVisitanteInterno.DataSet.fieldbyname('NOME_INTERNO').AsString
          + ', está na cela ' + DsVisitanteInterno.DataSet.fieldbyname('CELA').AsString + ' é ISOLAMENTO, cancelar a entrada?',
          mtConfirmation, [mbYes, mbNo], 0) <> mrNo then
        begin
          Exit;
        end;
        break;
      end;
      DsVisitanteInterno.DataSet.next;
    end;

    if not (state in [dsinsert]) then
    begin
      sSql := 'insert into mov_diario_visitantes (id_mov_diario_visitantes, id_visitante, id_interno, quantidade_menor, nome_visitante, numero_carteirinha, cpf, rg, orgao_expedidor, sexo, data_visita, hora_visita, ordem_visita, id_up, dinheiro,sacola) '
        + ' values (0, '
        + DsCadastro.DataSet.FieldByName('id_visitante').AsString + ', '
        + DsConsulta.DataSet.fieldbyname('ID_INTERNO').asstring + ', '
        + sQuantidade_Menor + ', '
        + qs(DsCadastro.DataSet.FieldByName('visitante').AsString) + ', '
        + qs(DsCadastro.DataSet.FieldByName('numero_carteirinha').AsString) + ', '
        + qs(DsCadastro.DataSet.FieldByName('cpf').AsString) + ', '
        + qs(DsCadastro.DataSet.FieldByName('rg').AsString) + ', '
        + qs(DsCadastro.DataSet.FieldByName('orgao_expedidor').AsString) + ', '
        + qs(DsCadastro.DataSet.FieldByName('sexo').AsString) + ', '
        + ' current_date, current_time, 0,'
        + inttostr(GLOBAL_ID_UP) + ','
        + sDinheiro + ','
        + sSacola + ')';
    end
    else
    begin
      sSql := 'insert into mov_diario_visitantes (id_mov_diario_visitantes, id_visitante, id_interno, quantidade_menor, nome_visitante, numero_carteirinha, cpf, rg, orgao_expedidor, sexo, data_visita, hora_visita, ordem_visita, id_up, dinheiro,sacola) '
        + ' values (0, '
        + DsCadastro.DataSet.FieldByName('id_visitante').AsString + ', '
        + DsVisitanteInterno.DataSet.fieldbyname('ID_INTERNO').asstring + ', '
        + sQuantidade_Menor + ', '
        + qs(DsCadastro.DataSet.FieldByName('visitante').AsString) + ', '
        + qs(DsCadastro.DataSet.FieldByName('numero_carteirinha').AsString) + ', '
        + qs(DsCadastro.DataSet.FieldByName('cpf').AsString) + ', '
        + qs(DsCadastro.DataSet.FieldByName('rg').AsString) + ', '
        + qs(DsCadastro.DataSet.FieldByName('orgao_expedidor').AsString) + ', '
        + qs(DsCadastro.DataSet.FieldByName('sexo').AsString) + ', '
        + ' current_date, current_time, 0,'
        + inttostr(GLOBAL_ID_UP) + ','
        + sDinheiro + ','
        + sSacola + ')';
    end;


    if state in [dsedit, dsinsert] then
    begin
      Salvar.OnClick(nil);
      Refresh;
    end;

    try
      IniciaTransCadastro;
      dm.SQLConnect.ExecSql(sSql);
      FinalizaTransCadastro;
    except
      FinalizaTransCadastro;
    end;

    try
      IniciaTransCadastro;
      OrdenarMovimento();
      FinalizaTransCadastro;
    except
      FinalizaTransCadastro;
    end;

    if StrToIntDef(sQuantidade_Menor, 0) > 0 then
    begin
      try
        IniciaTransCadastro;
        dm.SqlExecute.SQL.Text := 'update visitante set quantidade_menor = ' + sQuantidade_Menor
          + ' where id_visitante = '
          + fieldbyname('id_visitante').AsString;
        dm.SqlExecute.ExecSQL();
        FinalizaTransCadastro;
      except
        CancelaTransCadastro;
      end;
    end;

    // Lança a data do registro de entrada do visitante como ultima data da visita no Cadastro do Visitante
    if not (DsCadastro.DataSet.State in [dsedit, dsinsert]) then
    begin
      try
        IniciaTransCadastro;
        dm.SqlExecute.SQL.Text := 'update visitante set data_ult_visita = current_date where id_visitante = ' + qs(DsCadastro.DataSet.fieldbyname('id_visitante').AsString);
        dm.SqlExecute.ExecSQL();
        FinalizaTransCadastro;
      except
        CancelaTransCadastro;
      end;
    end;


    DsMovimento.DataSet.Close;
    DsMovimento.DataSet.Open;

    DsConsulta.DataSet.Close;
    DsConsulta.DataSet.Open;

    DsMovimento.DataSet.last;
    EditLocalizar.Text := '';
    EditLocalizar.SetFocus;

    PageControlConsulta.ActivePageIndex := 0;

  end;

end;

procedure TFrmMovimentoVisitante.ButtonNovoMenorClick(Sender: TObject);
begin
  inherited;

  FrmVisitanteMenores := TFrmVisitanteMenores.Create(Application);
  if FrmVisitanteMenores.ShowModal = mrok then
  begin
    DsMenores.DataSet.Append;
    DsMenores.DataSet.fieldbyname('ID_MENORES').AsInteger := 0;
    DsMenores.DataSet.fieldbyname('ID_VISITANTE').AsInteger := DsCadastro.DataSet.fieldbyname('ID_VISITANTE').AsInteger;
    DsMenores.DataSet.fieldbyname('NOME_MENORES').AsString := FrmVisitanteMenores.EditMenor.Text;
    DsMenores.DataSet.Post;
  end;

end;

procedure TFrmMovimentoVisitante.Button6Click(Sender: TObject);
begin
  inherited;
  DsMenores.DataSet.Delete;
end;

function TFrmMovimentoVisitante.ValidarVisitante(): boolean;
begin
  result := true;

end;

procedure TFrmMovimentoVisitante.DsMovimentoDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  with DsMovimento.DataSet do
  begin

    if not Active then
      Exit;

    LabelTotalVisitante.caption := 'Total de visitantes: ' + inttostr(DsMovimento.DataSet.recordcount);
  end;
end;

procedure TFrmMovimentoVisitante.RadioGroupStatusClick(Sender: TObject);
begin
  inherited;
  TbMovimentar.Enabled := RadioGroupStatus.ItemIndex = 0;
  RadioGroupTipoLocalizarClick(nil);
end;

function TFrmMovimentoVisitante.CodigoIgual(): Boolean;
begin
  //default: valida o código
  Result := EditLocalizar.Text = DsCadastro.DataSet.FieldByName('NUMERO_CARTEIRINHA').AsString;
  //se for por nome ignorar e validar como verdadeiro
  if RadioGroupTipoLocalizar.ItemIndex > 0 then
    Result := True;
end;

procedure TFrmMovimentoVisitante.EditLocalizarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;

  if Key = vk_return then
  begin
    if RadioGroupTipoLocalizar.ItemIndex = 0 then
    begin
      BtnBuscarClick(nil);
      TbMovimentar.OnClick(nil);
    end;
  end;
end;

function TFrmMovimentoVisitante.QualPavilhao(): string;
begin
  //default: valida o código
  Result := '';
  //  if RadioGroupPavilhao.ItemIndex >= 0 then
  //    Result := RadioGroupPavilhao.Items.Strings[RadioGroupPavilhao.ItemIndex];
end;

procedure TFrmMovimentoVisitante.BitBtnCancelaEntradaClick(
  Sender: TObject);
begin
  inherited;
  if DsMovimento.DataSet.IsEmpty then
  begin
    showmessage('Não tem visitante no dia de hoje.');
    exit;
  end;

  if MessageDlg('Cancelar entrada deste visitante: ' + dsmovimento.DataSet.fieldbyname('NOME_VISITANTE').AsString + '?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin

    try
      IniciaTransCadastro;
      dm.SqlExecute.SQL.Text := 'update mov_diario_visitantes set cancelado=''S'' where id_mov_diario_visitantes='
        + dsmovimento.DataSet.FieldByname('id_mov_diario_visitantes').AsString;
      dm.SqlExecute.ExecSQL();
      FinalizaTransCadastro;

      SqlUltVisita.SQL.Text := 'select data_visita from mov_diario_visitantes where id_visitante = ' + dsmovimento.DataSet.fieldbyname('ID_VISITANTE').AsString + ' '
        + ' and coalesce(cancelado,''N'') <> ''S'' order by data_visita desc ';
      DsUltVisita.DataSet.Close;
      DsUltVisita.DataSet.Open;
      if DsUltVisita.DataSet.RecordCount > 0 then
      begin
        IniciaTransCadastro;
        dm.SqlExecute.SQL.Text := 'update visitante set data_ult_visita = ' + qs(formatdatetime('dd.mm.yyyy', strtodate(DsUltVisita.DataSet.FieldByName('data_visita').AsString))) + ''
          + '  where id_visitante = ' + qs(DsMovimento.DataSet.fieldbyname('id_visitante').AsString);
        dm.SqlExecute.ExecSQL();
        FinalizaTransCadastro;
      end
      else
      begin
        IniciaTransCadastro;
        dm.SqlExecute.SQL.Text := 'update visitante set data_ult_visita = Null'
          + '  where id_visitante = ' + qs(DsMovimento.DataSet.fieldbyname('id_visitante').AsString);
        dm.SqlExecute.ExecSQL();
        FinalizaTransCadastro;
      end;
    except
      CancelaTransCadastro;
    end;

    DsMovimento.DataSet.Close;
    DsMovimento.DataSet.Open;

    DsMovimento.DataSet.last;

  end;

end;

function TFrmMovimentoVisitante.ValidaPreenchimento(): Boolean;
begin

  with DsCadastro.DataSet do
  begin

    if Trim(fieldbyname('NUMERO_CARTEIRINHA').AsString) = '' then
    begin
      if state in [dsedit, dsinsert] then
      begin
        fieldbyname('NUMERO_CARTEIRINHA').AsString :=
          'ID' + fieldbyname('ID_VISITANTE').AsString;
      end;

      result := true;

    end;

    if Trim(fieldbyname('VISITANTE').AsString) = '' then
    begin
      ShowMessage('Nome do Visitante está vazio.');
      result := false;
      Exit;
    end;

    if Trim(fieldbyname('SEXO').AsString) = '' then
    begin
      ShowMessage('Campo Sexo está vazio.');
      result := false;
      Exit;
    end;

    if Trim(fieldbyname('TIPO_VISITANTE').AsString) = '' then
    begin
      ShowMessage('Campo "Tipo de Visitante" está vazio.');
      result := false;
      Exit;
    end;

  end;

  result := true;

end;

procedure TFrmMovimentoVisitante.RadioGroupTipoLocalizarClick(
  Sender: TObject);
var
  Status, Campo: string;
begin
  inherited;
  CancelarClick(nil);

  case RadioGroupTipoLocalizar.ItemIndex of
    0: Campo := 'V.NUMERO_CARTEIRINHA';
    1: Campo := 'V.VISITANTE';
    2: Campo := 'I.NOME_INTERNO';
    3: Campo := 'I.RGI';
  end;

  sqlconsulta.sql.text := SqlSelectVisitante.SQL.Text
    + ' AND ' + Campo + ' = ''xxxxxxxxxxx'' ';

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

  if EditLocalizar.CanFocus then
    EditLocalizar.SetFocus;

end;

procedure TFrmMovimentoVisitante.EditLocalizarKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if RadioGroupTipoLocalizar.ItemIndex = 0 then
  begin
    if not (key in ['0'..'9', #8]) then
      Key := #0;
  end;
end;

function TFrmMovimentoVisitante.BuscaQualInterno(ID_VISITANTE: string): string;
var
  ID: variant;
  sSql: string;
begin
  inherited;

  sSql := 'select i.id_interno as codigo, i.nome_interno, i.rgi PRONTUARIO'
    + ' from visitante_interno vi '
    + ' inner join interno i on (vi.id_interno=i.id_interno) '
    + ' where vi.id_visitante=' + ID_VISITANTE
    + ' ORDER BY nome_interno ';

  ID := BuscaGeral(nil, '', sSql, 100, 100, 600, 400);

  if VarToStrDef(ID, '') <> '' then
  begin

    Result := VarToStr(ID);

  end;

end;

function TFrmMovimentoVisitante.MaximoInternoVisitante(sIdIntMov: string): boolean;
var
  sIdInternoVisita: string;
begin

  InternoTotal := 0;
  InternoSacola := 0;
  InternoDinheiro := 0;
  NomeVisitantes := '';

  result := false;

  if strtointdef(sIdIntMov, 0) = 0 then
    sIdInternoVisita := DsConsulta.DataSet.fieldbyname('ID_INTERNO').asstring
  else
    sIdInternoVisita := sIdIntMov;

  if strtointdef(sIdInternoVisita, 0) = 0 then
    exit;

  //  if DsVisitanteInterno.DataSet.RecordCount > 1 then
  //  begin
  //    sIdInternoVisita := '0';
  //    while strtointdef(sIdInternoVisita,0)=0 do
  //    begin
  //      showmessage('Tem mais de um interno para este visitante, selecione um.');
  //      sIdInternoVisita := BuscaQualInterno(DsVisitanteInterno.DataSet.fieldbyname('ID_VISITANTE').asstring);
  //      if strtointdef(sIdInternoVisita,0)=0 then
  //      begin
  //        if MessageDlg('Interno não selecionado, continuar?',
  //          mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
  //        begin
  //          sIdInternoVisita := DsVisitanteInterno.DataSet.fieldbyname('ID_INTERNO').asstring;
  //          break;
  //        end;
  //      end;
  //    end;
  //  end;

    //pega só do principal
  DsVisitanteInterno.DataSet.first;
  dm.SqlExecute.SQL.Text
    := 'select list(v.VISITANTE,'', '') "VISITANTES", count(*) total, sum(SACOLA) SACOLA, sum(DINHEIRO) DINHEIRO'
    + ' from visitante v, visitante_interno vi, mov_diario_visitantes mv'
    + ' where mv.data_visita = current_date '
    + ' and coalesce(mv.cancelado,''N'')<>''S'''
    + ' and mv.id_visitante = v.id_visitante '
    + ' and v.id_visitante = vi.id_visitante '
    + ' and vi.id_interno = '
    + sIdInternoVisita;

  dm.dsExecute.dataset.close;
  dm.dsExecute.dataset.open;

  InternoTotal := dm.dsExecute.dataset.fieldbyname('TOTAL').asinteger;
  InternoSacola := dm.dsExecute.dataset.fieldbyname('SACOLA').asfloat;
  InternoDinheiro := dm.dsExecute.dataset.fieldbyname('DINHEIRO').asfloat;
  NomeVisitantes := dm.dsExecute.dataset.fieldbyname('VISITANTES').asstring;

end;

procedure TFrmMovimentoVisitante.OrdenarMovimento();
begin

  SqlMov_Diario_Visitantes.SQL.Text := 'select ID_MOV_DIARIO_VISITANTES,ordem_visita from mov_diario_visitantes '
    + ' where data_visita = current_date and id_up= ' +
    inttostr(GLOBAL_ID_UP) + ' order by ID_MOV_DIARIO_VISITANTES';

  with DsMov_Diario_Visitantes.DataSet do
  begin

    Close;
    open;

    if not active then
      exit;

    if isempty then
      exit;

    DisableControls;
    First;
    while not eof do
    begin
      edit;
      fieldbyname('ordem_visita').AsInteger := recno;
      post;
      CdsMov_Diario_Visitantes.ApplyUpdates(-1);
      next;
    end;
    close;
    EnableControls;

  end;

end;

procedure TFrmMovimentoVisitante.FormShow(Sender: TObject);
begin
  inherited;

  DBEditcpf.Field.EditMask := '999\.999\.999-99;0;_';

  DBGridInterno.Columns[2].Title.Caption := GLOBAL_NIVEL_1;
  DBGridInterno.Columns[3].Title.Caption := GLOBAL_NIVEL_2;
  DBGridInterno.Columns[4].Title.Caption := GLOBAL_NIVEL_3;
  DBGridInterno.Columns[5].Title.Caption := GLOBAL_NIVEL_4;

  if EditLocalizar.CanFocus then
    EditLocalizar.SetFocus;

end;

procedure TFrmMovimentoVisitante.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = vk_f2 then
  begin
    if ContemValor('E', PERMISSAO_VISITANTE) then
    begin
      EditarClick(nil);
    end
    else
    begin
      ShowMessage('Você não possui Permissão para alterar Cadastro de Visitantes!');
    end;
  end;

  if key = vk_f5 then
  begin
    BtnBuscarClick(nil);
  end;

  if key = vk_f7 then
  begin
    if ButtonNovoInterno.CanFocus then
    begin
      ButtonNovoInterno.SetFocus;
      ButtonNovoInterno.OnClick(nil);
    end;
  end;

  if key = vk_f8 then
  begin
    if PERMISSAO_ENTRADAVISITANTE = 'S' then
    begin
      BtnDinheiro.OnClick(nil);
    end;
  end;

  if key = vk_f9 then
  begin
    if PERMISSAO_ENTRADAVISITANTE = 'S' then
    begin
      BtnSacola.OnClick(nil);
    end;
  end;

  if key = vk_f10 then
  begin
    if PERMISSAO_ENTRADAVISITANTE = 'S' then
    begin
      TbMovimentar.OnClick(nil);
    end
    else
    begin
      ShowMessage('Você não possui Permissão para fazer a Entrada de Visitantes!');
    end;
  end;

  if key = vk_f12 then
  begin
    if PERMISSAO_ENTRADAVISITANTE = 'S' then
    begin
      BtnImprimir.OnClick(nil);
    end;
  end;

end;

procedure TFrmMovimentoVisitante.BtnImprimirClick(Sender: TObject);
begin
  inherited;
  if DsMovimento.DataSet.IsEmpty then
  begin
    showmessage('Não tem visitante no dia de hoje.');
    exit;
  end;

  if MessageDlg('Imprimir o cupom deste visitante: ' + dsmovimento.DataSet.fieldbyname('NOME_VISITANTE').AsString + '?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin

    try
      IniciaTransCadastro;
      dm.SqlExecute.SQL.Text := 'update mov_diario_visitantes set IMPRESSO=''S'' where id_mov_diario_visitantes='
        + dsmovimento.DataSet.FieldByname('id_mov_diario_visitantes').AsString;
      dm.SqlExecute.ExecSQL();
      FinalizaTransCadastro;
    except
      CancelaTransCadastro;
    end;
    if FileExists(GLOBAL_PATCH_RELATORIO + '\SYSTEM\Cupom Visitante.fr3') then
    begin
      with FrmMenuRelatorio do
      begin
        FrmMenuRelatorio := TFrmMenuRelatorio.Create(Application);
        frxReport1.LoadFromFile(GLOBAL_PATCH_RELATORIO + '\SYSTEM\Cupom Visitante.fr3');
        frxReport1.Variables.DeleteVariable('ID_UP');
        frxReport1.Variables.AddVariable('SIAP', 'ID_UP', GLOBAL_ID_UP);
        frxReport1.Variables.DeleteVariable('GLOBAL_ID_INTERNO');
        frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ID_INTERNO', GLOBAL_ID_INTERNO);
        frxReport1.Variables.DeleteVariable('GLOBAL_IDAGENDA_ATENDIMENTO');
        frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_IDAGENDA_ATENDIMENTO', qs(GLOBAL_IDAGENDA_ATENDIMENTO));
        frxReport1.Variables.DeleteVariable('GLOBAL_ORGAO');
        frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ORGAO', QS(GLOBAL_ORGAO));
        frxReport1.Variables.DeleteVariable('GLOBAL_DEPARTAMENTO');
        frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_DEPARTAMENTO', Qs(GLOBAL_DEPARTAMENTO));
        frxReport1.Variables.DeleteVariable('GLOBAL_DIRETORIA');
        frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_DIRETORIA', Qs(GLOBAL_DIRETORIA));
        frxReport1.Variables.DeleteVariable('GLOBAL_PADRAO_SISTEMA');
        frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_PADRAO_SISTEMA', Qs(GLOBAL_PADRAO_SISTEMA));
        frxReport1.Variables.DeleteVariable('GLOBAL_NIVEL_1');
        frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_NIVEL_1', Qs(GLOBAL_NIVEL_1));
        frxReport1.Variables.DeleteVariable('GLOBAL_NIVEL_2');
        frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_NIVEL_2', Qs(GLOBAL_NIVEL_2));
        frxReport1.Variables.DeleteVariable('GLOBAL_NIVEL_3');
        frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_NIVEL_3', Qs(GLOBAL_NIVEL_3));
        frxReport1.Variables.DeleteVariable('GLOBAL_NIVEL_4');
        frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_NIVEL_4', Qs(GLOBAL_NIVEL_4));
        GLOBAL_ID_MOV_DIARIO_VISITANTES := dsmovimento.DataSet.FieldByname('id_mov_diario_visitantes').AsInteger;
        frxReport1.Variables.DeleteVariable('GLOBAL_ID_MOV_DIARIO_VISITANTES');
        frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ID_MOV_DIARIO_VISITANTES', GLOBAL_ID_MOV_DIARIO_VISITANTES);
        frxReport1.PrepareReport();
        frxReport1.Print;
      end;
    end
    else
    begin
      showmessage('Não existe o arquivo: ' + GLOBAL_PATCH_RELATORIO + '\SYSTEM\Cupom Visitante.fr3');
    end;
  end;

  DsMovimento.DataSet.Close;
  DsMovimento.DataSet.Open;

  DsMovimento.DataSet.last;

end;

procedure TFrmMovimentoVisitante.BtnSacolaClick(Sender: TObject);
var
  sSacola: string;
begin
  inherited;
  if DsMovimento.DataSet.IsEmpty then
  begin
    showmessage('Não tem visitante no dia de hoje.');
    exit;
  end;

  if MessageDlg('Informar sacola para o visitante: ' + dsmovimento.DataSet.fieldbyname('NOME_VISITANTE').AsString + '?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin

    sSacola := '0';
    while strtointdef(sSacola, 0) = 0 do
    begin
      sSacola := InputBox('Informe o numero de sacolas.', 'Numero de sacolas', '0');
      if strtointdef(sSacola, 0) = 0 then
      begin
        if MessageDlg('O valor da sacola está zerado, cancelar?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          break;
        end;
      end;
    end;

    if strtointdef(sSacola, 0) = 0 then
      exit;

    try
      IniciaTransCadastro;
      dm.SqlExecute.SQL.Text := 'update mov_diario_visitantes set SACOLA=' + sSacola + ' where id_mov_diario_visitantes='
        + dsmovimento.DataSet.FieldByname('id_mov_diario_visitantes').AsString;
      dm.SqlExecute.ExecSQL();
      FinalizaTransCadastro;
    except
      CancelaTransCadastro;
    end;

    DsMovimento.DataSet.Close;
    DsMovimento.DataSet.Open;

    DsMovimento.DataSet.last;

  end;

end;

procedure TFrmMovimentoVisitante.BtnDinheiroClick(Sender: TObject);
var
  sDinheiro: string;
begin
  inherited;
  if DsMovimento.DataSet.IsEmpty then
  begin
    showmessage('Não tem visitante no dia de hoje.');
    exit;
  end;

  if MessageDlg('Informar dinheiro para o visitante: ' + dsmovimento.DataSet.fieldbyname('NOME_VISITANTE').AsString + '?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin

    MaximoInternoVisitante(dsmovimento.DataSet.fieldbyname('ID_INTERNO').AsString);

    sDinheiro := '0';
    while StrToFloatDef(sDinheiro, 0) = 0 do
    begin
      sDinheiro := InputBox('Informe o valor em dinheiro.', 'Valor em dinheiro', '0,00');
      if StrToFloatDef(sDinheiro, 0) = 0 then
      begin
        if MessageDlg('Informar entrada de dinheiro?',
          mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
        begin
          break;
        end;
      end;

      if (StrToFloatDef(sDinheiro, 0) + InternoDinheiro) > Dsconspadrao.dataset.fieldbyname('LIMITE_DINHEIRO').AsFloat then
      begin
        ShowMessage(
          NomeVisitantes + #10 + #13 +
          ' Já entrou com dinheiro: ' + formatfloat('####0.00', InternoDinheiro) + ' ao total será:' + formatfloat('####0.00',
          (StrToFloatDef(sDinheiro, 0) + InternoDinheiro)));
        sDinheiro := '0';
      end;

    end;

    if StrToFloatDef(sDinheiro, 0) = 0 then
      exit;

    sDinheiro := BuscaTroca(sDinheiro, ',', '.');

    try
      IniciaTransCadastro;
      dm.SqlExecute.SQL.Text := 'update mov_diario_visitantes set DINHEIRO=' + sDinheiro + ' where id_mov_diario_visitantes='
        + dsmovimento.DataSet.FieldByname('id_mov_diario_visitantes').AsString;
      dm.SqlExecute.ExecSQL();
      FinalizaTransCadastro;
    except
      CancelaTransCadastro;
    end;

    DsMovimento.DataSet.Close;
    DsMovimento.DataSet.Open;

    DsMovimento.DataSet.last;

  end;

end;

procedure TFrmMovimentoVisitante.BtnBuscarClick(Sender: TObject);
var
  Status, Campo: string;
begin
  inherited;
  //  CancelarClick(nil);
  if EditLocalizar.text = '' then
    exit;

  if DBLookupComboBoxRegra.KeyValue = null then
  begin
    ShowMessage('Informar regra de visita do dia.');
    exit;
  end;

  if DsRegraVisita.DataSet.fieldbyname('REGRA_SQL').AsString = '' then
  begin
    ShowMessage('A regra SQL, de visita do dia, está incompleta.');
    exit;
  end;

  Screen.Cursor := crSQLWait;
  case RadioGroupStatus.ItemIndex of
    0: Status := 'A';
    1: Status := 'I';
  end;

  case RadioGroupTipoLocalizar.ItemIndex of
    0: Campo := 'V.NUMERO_CARTEIRINHA';
    1: Campo := 'V.VISITANTE';
    2: Campo := 'I.NOME_INTERNO';
    3: Campo := 'I.RGI';
  end;

  try

    if RadioGroupTipoLocalizar.ItemIndex = 0 then
    begin
      sqlconsulta.sql.text := SqlTodosVisitantes.SQL.Text + ' WHERE ' + Campo + ' = ' + qs(EditLocalizar.text)
        + ' ORDER BY I.ST, V.VISITANTE, I.NOME_INTERNO, V.status ';
    end;

    if RadioGroupTipoLocalizar.ItemIndex = 1 then
    begin
      sqlconsulta.sql.text := SqlTodosVisitantes.SQL.Text + ' WHERE ' + Campo + ' LIKE ' + qs(EditLocalizar.text + '%')
        + ' ORDER BY I.ST, V.VISITANTE, I.NOME_INTERNO, V.status ';
    end;

    if RadioGroupTipoLocalizar.ItemIndex = 2 then
    begin
      sqlconsulta.sql.text := SqlTodosInterno.SQL.Text + ' WHERE ' + Campo + ' LIKE ' + qs(EditLocalizar.text + '%')
        + ' ORDER BY I.ST, I.NOME_INTERNO, V.VISITANTE, V.status ';
    end;

    if RadioGroupTipoLocalizar.ItemIndex = 3 then
    begin
      sqlconsulta.sql.text := SqlTodosInterno.SQL.Text + ' WHERE ' + Campo + ' = ' + qs(EditLocalizar.text)
        + ' ORDER BY I.ST, I.NOME_INTERNO, V.VISITANTE, V.status ';
    end;

    DsConsulta.DataSet.Close;
    DsConsulta.DataSet.Open;

  except
  end;

  PageControlConsulta.ActivePageIndex := 1;
  PageControlModeloCadastro.ActivePageIndex := 0;
  PageControlVisita.ActivePageIndex := 0;

  Screen.Cursor := crDefault;

end;

procedure TFrmMovimentoVisitante.EditLocalizarChange(Sender: TObject);
begin
  //  inherited;
    //  DsConsulta.DataSet.Close;
    //  BtnBuscarClick(nil);
end;

procedure TFrmMovimentoVisitante.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  InternoTotal := 0;
  InternoDinheiro := 0;
  InternoSacola := 0;
end;

procedure TFrmMovimentoVisitante.DBGridVisitaDblClick(Sender: TObject);
begin
  inherited;
  //Só da entrada pro visitante se tiver permissão.
  if PERMISSAO_ENTRADAVISITANTE = 'S' then
  begin
    TbMovimentar.OnClick(nil);
  end
  else
  begin
    ShowMessage('Você não possui Permissão para fazer a Entrada de Visitantes!');
  end;

end;

procedure TFrmMovimentoVisitante.CdsVisitanteInternoCalcFields(
  DataSet: TDataSet);
var
  IDPAVILHAO, IDGALERIA, IDSOLARIO, IDCELA: Integer;
begin
  inherited;

  if DataSet.state in [dsedit, dsinsert] then
    exit;

  SqlExecute.SQL.Text := 'SELECT GRAU_PARENTESCO FROM GRAU_PARENTESCO WHERE ID_GRAU_PARENTESCO=' +
    DataSet.fieldbyname('ID_GRAU_PARENTESCO').AsString;
  SqlExecute.Close;
  SqlExecute.Open;
  DataSet.fieldbyname('GRAU_PARENTESCO').AsString :=
    SqlExecute.FieldByName('GRAU_PARENTESCO').AsString;

  SqlExecute.SQL.Text := 'SELECT NOME_INTERNO, RGI, IDPAVILHAO, IDGALERIA, IDSOLARIO, IDCELA FROM INTERNO WHERE id_interno=' +
    DataSet.fieldbyname('id_interno').AsString;
  SqlExecute.Close;
  SqlExecute.Open;
  DataSet.fieldbyname('nome_interno').AsString :=
    SqlExecute.FieldByName('RGI').AsString + '-' +
    SqlExecute.FieldByName('nome_interno').AsString;

  IDPAVILHAO := SqlExecute.FieldByName('IDPAVILHAO').AsInteger;
  IDGALERIA := SqlExecute.FieldByName('IDGALERIA').AsInteger;
  IDSOLARIO := SqlExecute.FieldByName('IDSOLARIO').AsInteger;
  IDCELA := SqlExecute.FieldByName('IDCELA').AsInteger;

  SqlExecute.SQL.Text := 'SELECT PAVILHAO FROM PAVILHAO WHERE ID_PAVILHAO=' + inttostr(IDPAVILHAO);
  SqlExecute.Close;
  SqlExecute.Open;
  DataSet.fieldbyname('PAVILHAO').AsString :=
    SqlExecute.FieldByName('PAVILHAO').AsString;

  SqlExecute.SQL.Text := 'SELECT GALERIA FROM GALERIA WHERE ID_GALERIA=' + inttostr(IDGALERIA);
  SqlExecute.Close;
  SqlExecute.Open;
  DataSet.fieldbyname('GALERIA').AsString :=
    SqlExecute.FieldByName('GALERIA').AsString;

  SqlExecute.SQL.Text := 'SELECT SOLARIO FROM SOLARIO WHERE ID_SOLARIO=' + inttostr(IDSOLARIO);
  SqlExecute.Close;
  SqlExecute.Open;
  DataSet.fieldbyname('SOLARIO').AsString :=
    SqlExecute.FieldByName('SOLARIO').AsString;

  SqlExecute.SQL.Text := 'SELECT CELA, ISOLAMENTO FROM CELA WHERE ID_CELA=' + inttostr(IDCELA);
  SqlExecute.Close;
  SqlExecute.Open;
  DataSet.fieldbyname('CELA').AsString :=
    SqlExecute.FieldByName('CELA').AsString;
  DataSet.fieldbyname('ISOLAMENTO').AsString :=
    SqlExecute.FieldByName('ISOLAMENTO').AsString;

  SqlExecute.Close;
end;

procedure TFrmMovimentoVisitante.CarteiradeVisitante1Click(
  Sender: TObject);
var
  rel1: string;
  quantos: string;
begin

  FrmMenuRelatorio := TFrmMenuRelatorio.Create(Application);
  rel1 := GLOBAL_PATCH_RELATORIO + '\SYSTEM\Cartão de Visitante.fr3';

  GLOBAL_ID_VISITANTE := '';
  DsMovimento.DataSet.DisableControls;
  DsMovimento.DataSet.First;
  while not DsMovimento.DataSet.eof do
  begin

    if DsMovimento.DataSet.fieldbyname('SELECAO').AsString = 'S' then
    begin

      GLOBAL_ID_VISITANTE := GLOBAL_ID_VISITANTE + DsMovimento.DataSet.FieldByName('ID_VISITANTE').AsString + ', ';

    end;

    DsMovimento.DataSet.Next;

  end;
  DsMovimento.DataSet.EnableControls;

  if FileExists(rel1) then
  begin

    with FrmMenuRelatorio do
    begin
      frxReport1.LoadFromFile(rel1);
      frxReport1.Variables.DeleteVariable('GLOBAL_ID_VISITANTE');
      frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ID_VISITANTE', qs(GLOBAL_ID_VISITANTE));
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

procedure TFrmMovimentoVisitante.AlterarDadosFoto1Click(Sender: TObject);
begin
  inherited;

  Screen.Cursor := crSQLWait;

  try

    SqlConsulta.sql.text := SqlVisitaDia.SQL.Text + ' WHERE V.ID_VISITANTE = ' +
      DsMovimento.DataSet.FieldByName('ID_VISITANTE').AsString;

    DsConsulta.DataSet.Close;
    DsConsulta.DataSet.Open;

  except

  end;

  Editar.OnClick(nil);

  PageControlConsulta.ActivePageIndex := 1;
  PageControlModeloCadastro.ActivePageIndex := 0;

  Screen.Cursor := crDefault;

end;

procedure TFrmMovimentoVisitante.BitBtn1Click(Sender: TObject);
var
  Id: integer;
begin
  inherited;

  try

    DsMovimento.DataSet.Filter := UpperCase('NOME_VISITANTE LIKE ' + QS(InputBox('Digite parte do nome', 'Pesquisa', '') + '%'));
    DsMovimento.DataSet.Filtered := true;
    LabelVisualizando.Caption := 'Visualisando: ' + DsMovimento.DataSet.Filter;

  except

  end;

end;

procedure TFrmMovimentoVisitante.DBGridConsultaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  //
end;

procedure TFrmMovimentoVisitante.Seleo1Click(Sender: TObject);
begin
  inherited;

  DsMovimento.DataSet.Edit;
  DsMovimento.DataSet.FieldByName('SELECAO').AsString := 'S';
  DsMovimento.DataSet.Post;

end;

procedure TFrmMovimentoVisitante.Desmarcar1Click(Sender: TObject);
begin
  inherited;
  DsMovimento.DataSet.Close;
  DsMovimento.DataSet.Open;

end;

procedure TFrmMovimentoVisitante.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

  if (Column.Field = TDBGrid(Sender).DataSource.DataSet.FieldByName('SELECAO')) then
  begin

    TDBGrid(Sender).Canvas.FillRect(Rect);

    if TDBGrid(Sender).DataSource.DataSet.FieldByName('SELECAO').AsString = '' then
    begin
      DM.ImageListSelecao.Draw(TDBGrid(Sender).Canvas, Rect.Left + 2,
        Rect.Top + 1, 0);
    end
    else
    begin
      DM.ImageListSelecao.Draw(TDBGrid(Sender).Canvas, Rect.Left + 2,
        Rect.Top + 1, 2);
    end;

  end;

end;

procedure TFrmMovimentoVisitante.DBGrid1DblClick(Sender: TObject);
begin
  inherited;

  DsMovimento.DataSet.Edit;
  if DsMovimento.DataSet.FieldByName('SELECAO').AsString = 'S' then
    DsMovimento.DataSet.FieldByName('SELECAO').AsString := ''
  else
    DsMovimento.DataSet.FieldByName('SELECAO').AsString := 'S';
  DsMovimento.DataSet.Post;

end;

procedure TFrmMovimentoVisitante.SpeedButton4Click(Sender: TObject);
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

  DM.DSCIDADE.DataSet.Close;
  DM.DSCIDADE.DataSet.OPEN;

end;

procedure TFrmMovimentoVisitante.SpeedButton1Click(Sender: TObject);
begin
  inherited;

  //Verifica se o usuário tem permissão de acesso ao cadastro.
  if (PERMISSAO_CADASTRO = '') or (PERMISSAO_CADASTRO = 'R') then
  begin
    ShowMessage('Você não possui Permissão de Acesso ao menu de Cadastros!');
    Exit;
  end;

  FrmCadastronacionalidade := TFrmCadastronacionalidade.create(Application);
  FrmCadastronacionalidade.showmodal;
  FreeAndNil(FrmCadastronacionalidade);

  DM.DsPais.DataSet.Close;
  DM.DsPais.DataSet.OPEN;

end;

procedure TFrmMovimentoVisitante.Button1Click(Sender: TObject);
begin
  inherited;

  DsMovimento.DataSet.Filter := '';
  DsMovimento.DataSet.Filtered := false;
  LabelVisualizando.Caption := 'Visualisando: <todos>';

end;

procedure TFrmMovimentoVisitante.Timer1Timer(Sender: TObject);
begin
  inherited;
  LabelDATA_HORA.Caption := FormatDateTime('dd/mm/yyyy hh:mm:ss', now);

end;

procedure TFrmMovimentoVisitante.EditarClick(Sender: TObject);
begin
  inherited;
  DBGridVisita.Enabled := False;
  DBEditdtrnascimento.Field.EditMask := '99\/99\/9999;1;_';
end;

procedure TFrmMovimentoVisitante.CancelarClick(Sender: TObject);
begin
  DsVisitanteInterno.DataSet.Cancel;
  DsVisitanteInterno.DataSet.Close;
  DsVisitanteInterno.DataSet.Open;

  inherited;
  DBGridVisita.Enabled := True;
end;

procedure TFrmMovimentoVisitante.DBEditCPFExit(Sender: TObject);
begin
  inherited;

  // Procedimento para verificar se o CPF do visitante já foi cadastrado anteriormente.
  if ValidaCPF(DBEditCPF.Text) then
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
        DBEdit6.SetFocus;
        salvar.Enabled := true;
      end;
      DM.DsExecute.dataset.close;
    end;

end;

procedure TFrmMovimentoVisitante.DBRadioGroup2Change(Sender: TObject);
begin
  inherited;
  if DBRadioGroup2.ItemIndex = 0 then
  begin
    if (DsCadastro.DataSet.State in [dsedit, dsinsert]) then
    begin
      DsCadastro.DataSet.FieldByName('MOTIVO_INATIVO').AsString := '';
    end;
  end;
end;

procedure TFrmMovimentoVisitante.SpeedButton11Click(Sender: TObject);
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

  DM.DSCIDADE.DataSet.Close;
  DM.DSCIDADE.DataSet.OPEN;

end;

procedure TFrmMovimentoVisitante.PageControlConsultaChange(
  Sender: TObject);
begin
  inherited;
  if not (PERMISSAO_ENTRADAVISITANTE = 'S') then
  begin
    PageControlConsulta.ActivePageIndex := 1;
    ShowMessage('Você não possui Permissão para vizualizar a Entrada de Visitantes!');
  end;
end;

end.

