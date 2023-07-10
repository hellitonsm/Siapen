unit MovimentoPatrimonio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloMovimentacao, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, ToolWin, ExtCtrls, DBCtrls,
  Mask, Buttons, jpeg;

type
  TTipo_Base = (fArmamento, fPatrimonio);
  TTipo_Movimento = (fEntrada, fSaida, fDevolucao, fTrocaPosto, fInoperante,
    fManutencao1, fManutencao3, fMunicaoEmUso, fConsumo, fExtravio, fVistoria);
  TFrmMovimentoPatrimonio = class(TFrmModeloMovimentacao)
    RadioGroupLocalizar: TRadioGroup;
    TabSheetExplosivo1: TTabSheet;
    TabSheetMunicao1: TTabSheet;
    TabSheetEspargidores1: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label26: TLabel;
    Label11: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label6: TLabel;
    Label10: TLabel;
    Label24: TLabel;
    Label27: TLabel;
    DBEditCODIGO: TDBEdit;
    DBEdit1: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit9: TDBEdit;
    DBEditdatanf: TDBEdit;
    DBEditdataexpedicao: TDBEdit;
    DBEditdatafabricacao: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit12: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEditdatavalidade: TDBEdit;
    DBEdit23: TDBEdit;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBRadioGroup3: TDBRadioGroup;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBRadioGroup4: TDBRadioGroup;
    Label41: TLabel;
    DBEdit35: TDBEdit;
    Bevel4: TBevel;
    Label42: TLabel;
    DBEdit36: TDBEdit;
    Bevel5: TBevel;
    Label43: TLabel;
    DBEdit37: TDBEdit;
    Bevel6: TBevel;
    TabSheetOutros1: TTabSheet;
    Label44: TLabel;
    DBLookupComboBoxPostoTrabalho: TDBLookupComboBox;
    DBLookupComboBoxFuncionario: TDBLookupComboBox;
    Label45: TLabel;
    BitBtnCancelaEntrada: TBitBtn;
    LabelNumCautela: TLabel;
    SqlExecute: TSQLQuery;
    DspExecute: TDataSetProvider;
    CdsExecute: TClientDataSet;
    DsExecute: TDataSource;
    BtnImprimir: TBitBtn;
    BtnDoc: TBitBtn;
    PanelTitulo: TPanel;
    Image2: TImage;
    LabelTitulo: TLabel;
    PageControlConsultaItens: TPageControl;
    TabSheetArmamento: TTabSheet;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBRadioGroup5: TDBRadioGroup;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    TabSheetExplosivo: TTabSheet;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Bevel10: TBevel;
    DBRadioGroup6: TDBRadioGroup;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    TabSheetMunicao: TTabSheet;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Bevel11: TBevel;
    DBEdit68: TDBEdit;
    DBEdit69: TDBEdit;
    DBEdit70: TDBEdit;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    DBRadioGroup7: TDBRadioGroup;
    DBEdit73: TDBEdit;
    TabSheetEspargidores: TTabSheet;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Bevel12: TBevel;
    DBEdit74: TDBEdit;
    DBEdit75: TDBEdit;
    DBEdit76: TDBEdit;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    DBRadioGroup8: TDBRadioGroup;
    DBEdit79: TDBEdit;
    TabSheetOutros: TTabSheet;
    DBMemo1: TDBMemo;
    Label88: TLabel;
    DBMemo2: TDBMemo;
    Label89: TLabel;
    Label90: TLabel;
    DBMemo3: TDBMemo;
    Label91: TLabel;
    DBMemo4: TDBMemo;
    Label92: TLabel;
    DBMemo5: TDBMemo;
    Label93: TLabel;
    DBMemo6: TDBMemo;
    Label94: TLabel;
    DBMemo7: TDBMemo;
    Label95: TLabel;
    DBMemo8: TDBMemo;
    Image3: TImage;
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure DsConsultaDataChange(Sender: TObject; Field: TField);
    procedure NovoClick(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure DsMovimentoDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure BitBtnCancelaEntradaClick(Sender: TObject);
    procedure EditLocalizarChange(Sender: TObject);
    procedure EditLocalizarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditLocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure ImprimirClick(Sender: TObject);
    procedure BtnBuscaDocumentoClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure BtnDocClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridConsultaDblClick(Sender: TObject);
  private
    procedure ImprimirCautela;
    { Private declarations }
  public
    fTipo_Base: TTipo_Base;
    fTipo_Movimento: TTipo_Movimento;
    { Public declarations }
  end;

var
  FrmMovimentoPatrimonio: TFrmMovimentoPatrimonio;
  quantidade_devolvida: Integer = 0;
  IDMOV_CAUTELA2: Integer;
  IDFUNCIONARIO_DEVOLUCAO: Integer;
  NUMERO_CAUTELA: Integer;

implementation

uses Lib, DmPrincipal, FinalizarMovimentoPatrimonio, MenuRelatorio;

{$R *.dfm}

procedure TFrmMovimentoPatrimonio.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  //  inherited;

  SetCurrentDir(GLOBAL_PATCH_SISTEMA);

  PageControlConsultaItens.ActivePageIndex := 0;
  PageControlConsulta.ActivePageIndex := 0;
  PageControlConsultaItens.Enabled := False;

  for i := 0 to PageControlConsultaItens.PageCount - 1 do
    PageControlConsultaItens.Pages[i].TabVisible := False;

  LabelNumCautela.Caption := 'Próximo Documento: ' + IntToStr(DBGenerator('NUMERO_CAUTELA', false, False) + 1);

end;

procedure TFrmMovimentoPatrimonio.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  with DsCadastro.DataSet do
  begin

    if not Active then
      Exit;

    if IsEmpty then
      Exit;

    TabSheetArmamento.TabVisible := (FieldByName('TIPO_BASE').AsString = 'ARMAMENTO');
    TabSheetExplosivo.TabVisible := (FieldByName('TIPO_BASE').AsString = 'EXPLOSIVOS');
    TabSheetMunicao.TabVisible := (FieldByName('TIPO_BASE').AsString = 'MUNIÇÕES');
    TabSheetEspargidores.TabVisible := (FieldByName('TIPO_BASE').AsString = 'ESPARGIDORES');

  end;

end;

procedure TFrmMovimentoPatrimonio.DsConsultaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  PageControlConsulta.ActivePage := TabSheetConsulta;

end;

procedure TFrmMovimentoPatrimonio.NovoClick(Sender: TObject);
var
  quantidade: Integer;
  sconfirma_item: array[0..1000] of Char;
begin

  with DsCadastro.DataSet do
  begin

    if IsEmpty then
    begin
      ShowMessage('Escolha um item.');
      Exit;
    end;

  end;

  //  TTipo_Movimento = (fEntrada, fSaida, fDevolucao, fTrocaPosto, fInoperante,
  //    fManutencao1, fManutencao3, fMunicaoEmUso, fConsumo,fExtravio);
  if (fTipo_Movimento in [fSaida, fInoperante, fManutencao1, fManutencao3, fMunicaoEmUso, fConsumo, fExtravio, fVistoria]) then
  begin
    if DsConsulta.DataSet.FieldByName('QUANTIDADE').AsInteger <= 0 then
    begin
      ShowMessage('Item não está no deposito.');
      Exit;
    end;
  end;

  with DsMovimento.DataSet do
  begin
    Filter := 'IDPATRIMONIO=' + DsConsulta.DataSet.fieldbyname('IDPATRIMONIO').AsString;
    Filtered := false;
    Filtered := True;
    if not IsEmpty then
    begin
      ShowMessage('Item já lançado neste documento.');
      PageControlConsulta.ActivePageIndex := 0;
      if Application.MessageBox('Deletar o item, para poder reinserir?',
        'Confirme.', mb_YesNo + Mb_IconQuestion) = idYes then
      begin
        Delete;
      end
      else
      begin
        Filter := '';
        Filtered := false;
        Exit;
      end;
    end;
    Filter := '';
    Filtered := false;
  end;

  StrPCopy(sconfirma_item, DsConsulta.DataSet.fieldbyname('NOME').AsString + #13 + #10 + 'Confirma inserir este item?');

  if Application.MessageBox(sconfirma_item,
    'Confirme.', mb_YesNo + Mb_IconQuestion) <> idYes then
  begin
    Exit;
  end;

  quantidade := 0;
  while quantidade <= 0 do
  begin

    quantidade := 1;

    if not (DsConsulta.DataSet.FieldByName('TIPO_BASE').AsString = 'ARMAMENTO') then
      quantidade := StrToIntDef(inputbox('Digite a quantidade', 'Quantidade', '1'), 0);

    //  TTipo_Movimento = (fEntrada, fSaida, fDevolucao, fTrocaPosto, fInoperante,
    //    fManutencao1, fManutencao3, fMunicaoEmUso, fConsumo);
    if (fTipo_Movimento in [fSaida, fInoperante, fManutencao1, fManutencao3, fMunicaoEmUso, fConsumo, fExtravio,fVistoria]) then
    begin

      if quantidade > DsConsulta.DataSet.FieldByName('QUANTIDADE').AsInteger then
      begin
        ShowMessage('Quantidade limite de saida é ' + DsConsulta.DataSet.FieldByName('QUANTIDADE').AsString);
        quantidade := 0;
      end;

    end
    else
    begin

      if quantidade_devolvida > 0 then
      begin

        if quantidade > quantidade_devolvida then
        begin
          ShowMessage('Quantidade limite de entrada é ' + IntToStr(quantidade_devolvida));
          quantidade := 0;
        end;

      end;
    end;

  end;

  LabelNumCautela.Caption := 'Próximo Documento: ' + IntToStr(DBGenerator('NUMERO_CAUTELA', false, False) + 1);

  PageControlConsulta.ActivePageIndex := 0;

  //INSERIR O MOVIMENTO
  with DsMovimento.DataSet do
  begin

    Append;

    FieldByName('IDMOV_CAUTELA').AsInteger := 0;

    if IDMOV_CAUTELA2 > 0 then
      FieldByName('IDMOV_CAUTELA2').AsInteger := IDMOV_CAUTELA2;

    FieldByName('IDFUNCIONARIO_LANCAMENTO').AsInteger := GLOBAL_ID_FUNCIONARIO;

    if DBLookupComboBoxPostoTrabalho.KeyValue > 0 then
      FieldByName('IDPOSTO_TRABALHO').AsInteger := DBLookupComboBoxPostoTrabalho.KeyValue;

    FieldByName('IDFUNCIONARIO_RESPONSAVEL').AsInteger := GLOBAL_ID_FUNCIONARIO;
    if IDFUNCIONARIO_DEVOLUCAO > 0 then
      FieldByName('IDFUNCIONARIO_RESPONSAVEL').AsInteger := IDFUNCIONARIO_DEVOLUCAO;

    FieldByName('IDPATRIMONIO').AsInteger := DsCadastro.DataSet.FieldByname('IDPATRIMONIO').AsInteger;
    FieldByName('ID_UP').AsInteger := GLOBAL_ID_UP;
    FieldByName('NUMERO_CAUTELA').AsString := '-1';
    FieldByName('quantidade').AsInteger := quantidade;

    if quantidade_devolvida > 0 then
      FieldByName('quantidade_devolvida').AsInteger := quantidade_devolvida;

    //  TTipo_Movimento = (fEntrada, fSaida, fDevolucao, fTrocaPosto, fInoperante,
    //    fManutencao1, fManutencao3, fMunicaoEmUso, fConsumo,fExtravio);

        //Saber se vai entrar ou sair
    if (fTipo_Movimento in [fSaida, fInoperante, fManutencao3, fConsumo, fExtravio]) then
      FieldByName('TIPO_MOVIMENTO').AsString := 'S';

    if (fTipo_Movimento in [fEntrada, fDevolucao]) then
      FieldByName('TIPO_MOVIMENTO').AsString := 'E';

    if fTipo_Movimento = fSaida then
      FieldByName('HISTORICO').AsString := 'SAIDA EM CAUTELA - ' + DBLookupComboBoxFuncionario.Text;

    if fTipo_Movimento = fEntrada then
      FieldByName('HISTORICO').AsString := 'ENTRADA EM DEPOSITO - ' + DBLookupComboBoxFuncionario.Text;

    if fTipo_Movimento = fDevolucao then
      FieldByName('HISTORICO').AsString := 'DEVOLUCAO DE CAUTELA - ' + DBLookupComboBoxFuncionario.Text;

    if fTipo_Movimento = fTrocaPosto then
    begin
      FieldByName('TIPO_MOVIMENTO').AsString := 'T';
      FieldByName('HISTORICO').AsString := 'TROCA DE POSTO - ANTES: ' +
        DsConsulta.DataSet.Fieldbyname('POSTO_TRABALHO').AsString +
        ' ATUAL: ' + DBLookupComboBoxPostoTrabalho.Text;
    end;

    if fTipo_Movimento = fInoperante then
      FieldByName('HISTORICO').AsString := 'INOPERANTE - ' + DBLookupComboBoxFuncionario.Text;

    if fTipo_Movimento = fManutencao1 then
    begin
      FieldByName('TIPO_MOVIMENTO').AsString := 'M';
      FieldByName('HISTORICO').AsString := 'MANUTENÇÃO DENTRO DA UNIDADE - ' + DBLookupComboBoxFuncionario.Text;
    end;

    if fTipo_Movimento = fVistoria then
    begin
      FieldByName('TIPO_MOVIMENTO').AsString := 'V';
      FieldByName('HISTORICO').AsString := 'VISTORIA REALIZADA - ' + DBLookupComboBoxFuncionario.Text;
    end;



    if fTipo_Movimento = fManutencao3 then
      FieldByName('HISTORICO').AsString := 'MANUTENÇÃO FORA DA UNIDADE - ' + DBLookupComboBoxFuncionario.Text;

    if fTipo_Movimento = fMunicaoEmUso then
    begin
      FieldByName('TIPO_MOVIMENTO').AsString := 'U';
      FieldByName('HISTORICO').AsString := 'MUNICAO EM USO - VAL. 06 MESES - ' + DBLookupComboBoxFuncionario.Text;
    end;

    if fTipo_Movimento = fConsumo then
      FieldByName('HISTORICO').AsString := 'CONSUMO - ' + DBLookupComboBoxFuncionario.Text;

    if fTipo_Movimento = fExtravio then
      FieldByName('HISTORICO').AsString := 'EXTRAVIO/FURTO/ROUBO - ' + DBLookupComboBoxFuncionario.Text;

    FieldByName('OBSERVACAO').AsString := DsCadastro.DataSet.FieldByname('NOME').AsString;

    FieldByName('DATA_MOVIMENTO').AsDateTime := DATE;
    FieldByName('HORA_MOVIMENTO').AsDateTime := Time;

    Post;

    IDMOV_CAUTELA2 := 0;
    quantidade_devolvida := 0;
    IDFUNCIONARIO_DEVOLUCAO := 0;

  end;
  EditLocalizar.Text := '';
  if EditLocalizar.CanFocus then
    EditLocalizar.SetFocus;

  PageControlConsulta.ActivePageIndex := 0;

  Salvar.Enabled := True;

end;

procedure TFrmMovimentoPatrimonio.SalvarClick(Sender: TObject);
begin

  if DsMovimento.DataSet.IsEmpty then
  begin

    ShowMessage('Informe um item.');
    if DBLookupComboBoxFuncionario.CanFocus then
      DBLookupComboBoxFuncionario.SetFocus;

    Exit;

  end;

  if DBLookupComboBoxFuncionario.KeyValue <= 0 then
  begin

    ShowMessage('Informe o Funcionário Responsável.');
    if DBLookupComboBoxFuncionario.CanFocus then
      DBLookupComboBoxFuncionario.SetFocus;

    Exit;

  end;

  //  TTipo_Movimento = (fEntrada, fSaida, fDevolucao, fTrocaPosto, fInoperante,
  //    fManutencao1, fManutencao3, fMunicaoEmUso, fConsumo, fExtravio);
  if (fTipo_Movimento in [fTrocaPosto, fInoperante, fManutencao1, fManutencao3, fMunicaoEmUso, fVistoria]) then
  begin
    if DBLookupComboBoxPostoTrabalho.KeyValue <= 0 then
    begin
      ShowMessage('Informe o Posto Trabalho.');
      if DBLookupComboBoxPostoTrabalho.CanFocus then
        DBLookupComboBoxPostoTrabalho.SetFocus;

      Exit;
    end;
  end;

  FrmFinalizarMovimentoPatrimonio := TFrmFinalizarMovimentoPatrimonio.Create(Application);
  FrmFinalizarMovimentoPatrimonio.LabelDocumento.Caption := LabelNumCautela.Caption;
  FrmFinalizarMovimentoPatrimonio.LabelFuncionario.Caption := 'Funcionário: ' + DBLookupComboBoxFuncionario.Text;
  FrmFinalizarMovimentoPatrimonio.DBGrid1.DataSource := DsMovimento;

  if fTipo_Movimento = fSaida then
  begin
    FrmFinalizarMovimentoPatrimonio.EditObservacao.Text := 'SAIDA EM CAUTELA';
    FrmFinalizarMovimentoPatrimonio.PanelDataDev.Visible := True;
  end;

  if fTipo_Movimento = fEntrada then
  begin
    FrmFinalizarMovimentoPatrimonio.EditObservacao.Text := 'ENTRADA EM DEPOSITO';
  end;

  if fTipo_Movimento = fDevolucao then
  begin
    FrmFinalizarMovimentoPatrimonio.EditObservacao.Text := 'DEVOLUCAO DE CAUTELA';
  end;

  if fTipo_Movimento = fTrocaPosto then
  begin
    FrmFinalizarMovimentoPatrimonio.EditObservacao.Text := 'TROCA DE POSTO - ANTES: ' +
      DsConsulta.DataSet.Fieldbyname('POSTO_TRABALHO').AsString +
      ' ATUAL: ' + DBLookupComboBoxPostoTrabalho.Text;

  end;

  if fTipo_Movimento = fInoperante then
  begin
    FrmFinalizarMovimentoPatrimonio.EditObservacao.Text := 'INOPERANTE';
    FrmFinalizarMovimentoPatrimonio.EditDadosAdicionais.Text := 'O QUE ACONTECEU:__________';
  end;

  //  TTipo_Movimento = (fEntrada, fSaida, fDevolucao, fTrocaPosto, fInoperante,
  //    fManutencao1, fManutencao3, fMunicaoEmUso, fConsumo);
  if fTipo_Movimento = fManutencao1 then
  begin
    FrmFinalizarMovimentoPatrimonio.EditObservacao.Text := 'MANUT.: (  ) I ESCALÃO - (  ) II ESCALÃO ';
    FrmFinalizarMovimentoPatrimonio.EditDadosAdicionais.Text := 'DESCRIÇÃO DO REALIZADO:__________';
  end;

  if fTipo_Movimento = fVistoria then
  begin
    FrmFinalizarMovimentoPatrimonio.EditObservacao.Text := 'VISTORIA REALIZADA: ';
    FrmFinalizarMovimentoPatrimonio.EditDadosAdicionais.Text := '';
  end;

  if fTipo_Movimento = fManutencao3 then
  begin
    FrmFinalizarMovimentoPatrimonio.EditObservacao.Text := 'MANUT.: (  ) III ESCALÃO - (  ) IV ESCALÃO - (  ) V ESCALÃO ';
    FrmFinalizarMovimentoPatrimonio.EditDadosAdicionais.Text := 'DESCRIÇÃO DO REALIZADO:__________';
  end;

  if fTipo_Movimento = fMunicaoEmUso then
  begin
    FrmFinalizarMovimentoPatrimonio.EditObservacao.Text := 'MUNIÇÃO ESTÁ EM USO APARTIR DESTA DATA';
    FrmFinalizarMovimentoPatrimonio.EditDadosAdicionais.Text := 'VALIDADE DE 06 MESES';
  end;

  if fTipo_Movimento = fConsumo then
  begin
    FrmFinalizarMovimentoPatrimonio.EditObservacao.Text := 'CONSUMO REALIZADO';
    FrmFinalizarMovimentoPatrimonio.EditDadosAdicionais.Text := 'QUAIS OS MOTIVOS:_________';
  end;

  if fTipo_Movimento = fExtravio then
  begin
    FrmFinalizarMovimentoPatrimonio.EditObservacao.Text := 'EXTRAVIO/FURTO/ROUBO - NUM. BO: XXXXXXXX ';
    FrmFinalizarMovimentoPatrimonio.EditDadosAdicionais.Text := 'FATO OCORRIDO:_________';
  end;

  if FrmFinalizarMovimentoPatrimonio.ShowModal = mrOk then
  begin

    //Salvar o lancamento
    with DsMovimento.DataSet do
    begin

      IniciaTransCadastro;

      NUMERO_CAUTELA := DBGenerator('NUMERO_CAUTELA', false);

      First;
      while not Eof do
      begin

        Edit;

        FieldByName('NUMERO_CAUTELA').AsString := IntToStr(NUMERO_CAUTELA);
        FieldByName('IDFUNCIONARIO_RESPONSAVEL').AsInteger := DBLookupComboBoxFuncionario.KeyValue;
        FieldByName('OBSERVACAO').AsString := FrmFinalizarMovimentoPatrimonio.EditObservacao.Text;
        FieldByName('DADOS_ADICIONAIS').AsString := FrmFinalizarMovimentoPatrimonio.EditDadosAdicionais.Text;
        FieldByName('MISSAO_CAUTELA').AsString := FrmFinalizarMovimentoPatrimonio.EditMissao.Text;

        if fTipo_Movimento = fSaida then
        begin
          FieldByName('HISTORICO').AsString := 'SAIDA EM CAUTELA - ' + DBLookupComboBoxFuncionario.Text;
        end;

        if fTipo_Movimento = fEntrada then
        begin
          FieldByName('HISTORICO').AsString := 'ENTRADA EM DEPOSITO - ' + DBLookupComboBoxFuncionario.Text;
        end;

        if fTipo_Movimento = fDevolucao then
        begin
          FieldByName('HISTORICO').AsString := 'DEVOLUCAO DE CAUTELA - ' + DBLookupComboBoxFuncionario.Text;
        end;

        if fTipo_Movimento = fTrocaPosto then
        begin
          FieldByName('HISTORICO').AsString := 'TROCA DE POSTO - ANTES: ' +
            DsConsulta.DataSet.Fieldbyname('POSTO_TRABALHO').AsString +
            ' ATUAL: ' + DBLookupComboBoxPostoTrabalho.Text;
        end;

        if fTipo_Movimento = fInoperante then
          FieldByName('HISTORICO').AsString := 'INOPERANTE - FUNC:' + DBLookupComboBoxFuncionario.Text + ' POSTO:' + DBLookupComboBoxPostoTrabalho.Text;

        //  TTipo_Movimento = (fEntrada, fSaida, fDevolucao, fTrocaPosto, fInoperante,
        //    fManutencao1, fManutencao3, fMunicaoEmUso, fConsumo);
        if fTipo_Movimento = fManutencao1 then
          FieldByName('HISTORICO').AsString := 'MANUT. DE I E II ESCALÃO - FUNC:' + DBLookupComboBoxFuncionario.Text + ' POSTO:' +
            DBLookupComboBoxPostoTrabalho.Text;

        if fTipo_Movimento = fVistoria then
          FieldByName('HISTORICO').AsString := 'VISTORIA REALIZADA - FUNC:' + DBLookupComboBoxFuncionario.Text + ' POSTO:' +
            DBLookupComboBoxPostoTrabalho.Text;

        if fTipo_Movimento = fManutencao3 then
          FieldByName('HISTORICO').AsString := 'MANUT. DE III, VI E V ESCALÃO - FUNC:' + DBLookupComboBoxFuncionario.Text + ' POSTO:' +
            DBLookupComboBoxPostoTrabalho.Text;

        if fTipo_Movimento = fMunicaoEmUso then
          FieldByName('HISTORICO').AsString := 'MUNIÇÃO EM USO - FUNC:' + DBLookupComboBoxFuncionario.Text + ' POSTO:' + DBLookupComboBoxPostoTrabalho.Text;

        if fTipo_Movimento = fConsumo then
          FieldByName('HISTORICO').AsString := 'CONSUMO - FUNC:' + DBLookupComboBoxFuncionario.Text + ' POSTO:' + DBLookupComboBoxPostoTrabalho.Text;

        if fTipo_Movimento = fExtravio then
          FieldByName('HISTORICO').AsString := 'EXTRAVIO/FURTO/ROUBO - ' + DBLookupComboBoxFuncionario.Text + ' POSTO:' + DBLookupComboBoxPostoTrabalho.Text;

        if DBLookupComboBoxPostoTrabalho.KeyValue > 0 then
          FieldByName('IDPOSTO_TRABALHO').AsInteger := DBLookupComboBoxPostoTrabalho.KeyValue;

        if FrmFinalizarMovimentoPatrimonio.PanelDataDev.Visible then
        begin
          FieldByName('DATA_DEV_CAUTELA').AsDateTime := StrToDate(FrmFinalizarMovimentoPatrimonio.MaskEditData.Text);
        end;

        Post;
        Next;

      end;

      if CdsMovimento.ApplyUpdates(0) = 0 then
      begin
        FinalizaTransCadastro;
        close;
        Open;
        ImprimirCautela;
        DsConsulta.DataSet.Close;
        DsConsulta.DataSet.Open;
        DsCadastro.DataSet.Close;
        DsCadastro.DataSet.Open;
      end
      else
      begin
        CancelaTransCadastro;
        ShowMessage('Não pode finalizar.');
      end;

    end;

    LabelNumCautela.Caption := 'Próximo Documento: ' + IntToStr(DBGenerator('NUMERO_CAUTELA', false, False) + 1);

  end;

  FreeAndNil(FrmFinalizarMovimentoPatrimonio);

end;

procedure TFrmMovimentoPatrimonio.DsMovimentoDataChange(Sender: TObject;
  Field: TField);
begin

  Salvar.Enabled := True;

end;

procedure TFrmMovimentoPatrimonio.FormShow(Sender: TObject);
begin
  inherited;
  if fTipo_Base = fArmamento then
  begin

    if fTipo_Movimento = fSaida then
      Self.Caption := 'Termo de Saida em Cautela';

    if fTipo_Movimento = fEntrada then
      Self.Caption := 'Termo de Cautela de Entrada';

    if fTipo_Movimento = fDevolucao then
    begin
      Self.Caption := 'Termo de Devolução de Cautela';
      Novo.Visible := False;
      BtnDoc.Visible := True;
      RadioGroupLocalizar.Visible := False;
      EditLocalizar.Visible := False;
    end;

    if fTipo_Movimento = fTrocaPosto then
      Self.Caption := 'Termo: Troca de Posto de Trabalho';

    if fTipo_Movimento = fInoperante then
      Self.Caption := 'Termo de Item Inoperante';

    //  TTipo_Movimento = (fEntrada, fSaida, fDevolucao, fTrocaPosto, fInoperante,
    //    fManutencao1, fManutencao3, fMunicaoEmUso, fConsumo, fExtravio, fVistoria);

    if fTipo_Movimento = fManutencao1 then
      Self.Caption := 'Termo de Manutenção de I e II Escalão';

    if fTipo_Movimento = fVistoria then
      Self.Caption := 'Termo de Vistoria Realizada';

    if fTipo_Movimento = fManutencao3 then
      Self.Caption := 'Termo de Manutenção de III, VI e V Escalão';

    if fTipo_Movimento = fMunicaoEmUso then
      Self.Caption := 'Termo de Munição em Uso - (Val. 06 meses)';

    if fTipo_Movimento = fConsumo then
      Self.Caption := 'Termo de Consumo';

    if fTipo_Movimento = fExtravio then
      Self.Caption := 'Termo de Extravio/Furto/Roubo';

    SqlConsulta.SQL.Text := 'SELECT P.*, COALESCE(T.POSTO_TRABALHO,''NÃO DEFINIDO'') AS POSTO_TRABALHO '
      + ' FROM PATRIMONIO P '
      + ' LEFT JOIN POSTO_TRABALHO T ON (T.IDPOSTO_TRABALHO=P.IDPOSTO_TRABALHO) '
      + ' WHERE P.TIPO_BASE IN (' +
      qs('ARMAMENTO') + ',' + qs('EXPLOSIVOS') + ',' + qs('MUNIÇÕES') + ',' + qs('ESPARGIDORES') + ')';

    if fTipo_Movimento = fMunicaoEmUso then
    begin
      SqlConsulta.SQL.Text := 'SELECT P.*, COALESCE(T.POSTO_TRABALHO,''NÃO DEFINIDO'') AS POSTO_TRABALHO '
        + ' FROM PATRIMONIO P '
        + ' LEFT JOIN POSTO_TRABALHO T ON (T.IDPOSTO_TRABALHO=P.IDPOSTO_TRABALHO) '
        + ' WHERE P.TIPO_BASE IN (' + qs('MUNIÇÕES') + ')';
    end;

    if fTipo_Movimento in [fConsumo, fEntrada] then
    begin

      SqlConsulta.SQL.Text := 'SELECT P.*, COALESCE(T.POSTO_TRABALHO,''NÃO DEFINIDO'') AS POSTO_TRABALHO '
        + ' FROM PATRIMONIO P '
        + ' LEFT JOIN POSTO_TRABALHO T ON (T.IDPOSTO_TRABALHO=P.IDPOSTO_TRABALHO) '
        + ' WHERE P.TIPO_BASE IN ('
        +qs('EXPLOSIVOS') + ',' + qs('MUNIÇÕES') + ',' + qs('ESPARGIDORES') + ')';

    end;

    DsConsulta.DataSet.Close;
    DsConsulta.DataSet.Open;

  end;

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.Open;

  DsMovimento.DataSet.Close;
  DsMovimento.DataSet.Open;

  DM.DsPostoTrabalho.DataSet.Close;
  DM.DsPostoTrabalho.DataSet.Open;

  DM.DsFuncionario.DataSet.Close;
  DM.DsFuncionario.DataSet.Open;

  PanelTitulo.Caption := Self.Caption;
  LabelTitulo.Caption := Self.Caption;

end;

procedure TFrmMovimentoPatrimonio.BitBtnCancelaEntradaClick(
  Sender: TObject);
begin
  inherited;

  if MessageDlg('Excluir ' + dsmovimento.DataSet.fieldbyname('OBSERVACAO').AsString + '?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DsMovimento.DataSet.Delete;
  end;

end;

procedure TFrmMovimentoPatrimonio.EditLocalizarChange(Sender: TObject);
var
  Campo: string;
begin
  inherited;

  if Length(EditLocalizar.Text) <= 0 then
  begin
    exit;
  end;

  case RadioGroupLocalizar.ItemIndex of
    0:
      begin
        DsConsulta.DataSet.Filter := 'IDPATRIMONIO = ' + EditLocalizar.text;
        DsConsulta.DataSet.Filtered := False;
        DsConsulta.DataSet.Filtered := True;
      end;
    1:
      begin
        DsConsulta.DataSet.Filter := 'NOME LIKE ' + Qs('%'+EditLocalizar.text+'%');
        DsConsulta.DataSet.Filtered := False;
        DsConsulta.DataSet.Filtered := True;
      end;
  end;

  PageControlConsulta.ActivePageIndex := 1;

end;

procedure TFrmMovimentoPatrimonio.EditLocalizarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = vk_return then
  begin
    Novo.OnClick(nil);
  end;

end;

procedure TFrmMovimentoPatrimonio.EditLocalizarKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if RadioGroupLocalizar.ItemIndex = 0 then
  begin
    if not (key in ['0'..'9', #8]) then
      Key := #0;
  end;

end;

procedure TFrmMovimentoPatrimonio.ImprimirCautela();
var
  srelatorio: string;
begin

  if NUMERO_CAUTELA <= 0 then
    Exit;

  FrmMenuRelatorio := TFrmMenuRelatorio.Create(Application);
  with FrmMenuRelatorio do
  begin
    srelatorio := GLOBAL_PATCH_SISTEMA + '..\' + IntToStr(GLOBAL_ID_UP) + '\SYSTEM\termo_cautela.fr3';
    if FileExists(srelatorio) then
    begin

      frxReport1.LoadFromFile(srelatorio);

      frxReport1.Variables.DeleteVariable('ID_UP');
      frxReport1.Variables.AddVariable('SIAP', 'ID_UP', GLOBAL_ID_UP);

      frxReport1.Variables.DeleteVariable('ID_FUNCIONARIO');
      frxReport1.Variables.AddVariable('SIAP', 'ID_FUNCIONARIO', GLOBAL_ID_FUNCIONARIO);

      frxReport1.Variables.DeleteVariable('GLOBAL_ORGAO');
      frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_ORGAO', QS(GLOBAL_ORGAO));

      frxReport1.Variables.DeleteVariable('GLOBAL_DEPARTAMENTO');
      frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_DEPARTAMENTO', Qs(GLOBAL_DEPARTAMENTO));

      frxReport1.Variables.DeleteVariable('GLOBAL_DIRETORIA');
      frxReport1.Variables.AddVariable('SIAP', 'GLOBAL_DIRETORIA', Qs(GLOBAL_DIRETORIA));

      frxReport1.Variables.DeleteVariable('CAUTELA');
      frxReport1.Variables.AddVariable('SIAP', 'CAUTELA', NUMERO_CAUTELA);

      frxReport1.Variables.DeleteVariable('STATUS');
      frxReport1.Variables.AddVariable('SIAP', 'STATUS', Qs(self.Caption));

      frxReport1.ShowReport();

    end;

  end;
  FreeAndNil(FrmMenuRelatorio);
  NUMERO_CAUTELA := 0;
end;

procedure TFrmMovimentoPatrimonio.ImprimirClick(Sender: TObject);
var
  numero: string;
  sconfirma_doc: array[0..1000] of Char;
begin
  inherited;

  Salvar.Enabled := True;

  numero := inputbox('Digite a numero do documento', 'Documento', '');

  SqlExecute.SQL.Text := 'select * from mov_cautela '
    + 'where numero_cautela=' + qs(numero);

  with DsExecute.DataSet do
  begin
    Close;
    Open;

    if not IsEmpty then
    begin
      NUMERO_CAUTELA := StrToInt(numero);
    end
    else
    begin
      ShowMessage('Documento ' + numero + ' não encontrado.');
    end;

    Close;

  end;

  EditLocalizar.Text := '';
  PageControlConsulta.ActivePageIndex := 0;
  Salvar.Enabled := True;

end;

procedure TFrmMovimentoPatrimonio.BtnBuscaDocumentoClick(Sender: TObject);
var
  numero: string;
  sconfirma_doc: array[0..1000] of Char;
begin
  inherited;

  Salvar.Enabled := True;

  numero := inputbox('Digite a numero do documento', 'Documento', '');

  SqlExecute.SQL.Text := 'select * from mov_cautela '
    + 'where numero_cautela=' + qs(numero);

  with DsExecute.DataSet do
  begin
    Close;
    Open;

    if not IsEmpty then
    begin

      StrPCopy(sconfirma_doc, 'Confirma o documento: ' + numero + '?');
      if Application.MessageBox(sconfirma_doc,
        'Confirme.', mb_YesNo + Mb_IconQuestion) = idYes then
      begin

        DsMovimento.DataSet.First;
        while not DsMovimento.DataSet.Eof do
          DsMovimento.DataSet.Delete;

        quantidade_devolvida := 0;
        IDMOV_CAUTELA2 := 0;
        IDFUNCIONARIO_DEVOLUCAO := 0;
        First;

        while not Eof do
        begin

          RadioGroupLocalizar.ItemIndex := 0;
          EditLocalizar.Text := fieldbyname('IDPATRIMONIO').AsString;
          quantidade_devolvida := fieldbyname('QUANTIDADE').AsInteger - fieldbyname('QUANTIDADE_DEVOLVIDA').AsInteger;
          IDMOV_CAUTELA2 := fieldbyname('IDMOV_CAUTELA').AsInteger;
          IDFUNCIONARIO_DEVOLUCAO := fieldbyname('IDFUNCIONARIO_RESPONSAVEL').AsInteger;
          DBLookupComboBoxFuncionario.KeyValue := IDFUNCIONARIO_DEVOLUCAO;

          if quantidade_devolvida > 0 then
          begin
            Novo.OnClick(nil);
          end
          else
          begin
            ShowMessage('Item devolvido completamente: ' + fieldbyname('QUANTIDADE_DEVOLVIDA').AsString);
          end;

          quantidade_devolvida := 0;

          IDMOV_CAUTELA2 := 0;

          IDFUNCIONARIO_DEVOLUCAO := 0;

          Next;

        end;
      end;

    end
    else
    begin
      ShowMessage('Documento ' + numero + ' não encontrado.');
    end;

    Close;

  end;

  EditLocalizar.Text := '';
  PageControlConsulta.ActivePageIndex := 0;
  Salvar.Enabled := True;

end;

procedure TFrmMovimentoPatrimonio.BtnImprimirClick(Sender: TObject);
var
  numero, tipo_movimento, smensagem: string;
  sconfirma_doc: array[0..1000] of Char;
begin
  inherited;

  numero := inputbox('Digite a numero do documento', 'Documento', '');

  if fTipo_Movimento = fSaida then
  begin
    tipo_movimento := 'S';
    smensagem := 'Documento de Saida : ' + numero + ' (não encontrado).'
  end;

  if fTipo_Movimento = fEntrada then
  begin
    tipo_movimento := 'E';
    smensagem := 'Documento de Entrada : ' + numero + ' (não encontrado).'
  end;

  if fTipo_Movimento = fDevolucao then
  begin
    tipo_movimento := 'E';
    smensagem := 'Documento de Devolução : ' + numero + ' (não encontrado).'
  end;

  if fTipo_Movimento = fTrocaPosto then
  begin
    tipo_movimento := 'T';
    smensagem := 'Documento de Troca de Posto: ' + numero + ' (não encontrado).'
  end;

  if fTipo_Movimento = fInoperante then
  begin
    tipo_movimento := 'S';
    smensagem := 'Documento de Itens Inoperante: ' + numero + ' (não encontrado).'
  end;

  //  TTipo_Movimento = (fEntrada, fSaida, fDevolucao, fTrocaPosto, fInoperante,
  //    fManutencao1, fManutencao3, fMunicaoEmUso, fConsumo, fExtravio);

  if fTipo_Movimento = fManutencao1 then
  begin
    tipo_movimento := 'M';
    smensagem := 'Documento de Itens em Manutenção I e II: ' + numero + ' (não encontrado).'
  end;

  if fTipo_Movimento = fVistoria then
  begin
    tipo_movimento := 'V';
    smensagem := 'Documento de Vistoria: ' + numero + ' (não encontrado).'
  end;

  if fTipo_Movimento = fManutencao3 then
  begin
    tipo_movimento := 'S';
    smensagem := 'Documento de Itens em Manutenção III, VI e V: ' + numero + ' (não encontrado).'
  end;

  if fTipo_Movimento = fMunicaoEmUso then
  begin
    tipo_movimento := 'U';
    smensagem := 'Documento de Itens Munição Em Uso: ' + numero + ' (não encontrado).'
  end;

  if fTipo_Movimento = fConsumo then
  begin
    tipo_movimento := 'S';
    smensagem := 'Documento de Itens Consumo: ' + numero + ' (não encontrado).'
  end;

  if fTipo_Movimento = fExtravio then
  begin
    tipo_movimento := 'S';
    smensagem := 'Documento de Itens Extravio/Furto/Roubo: ' + numero + ' (não encontrado).'
  end;

  SqlExecute.SQL.Text := 'select * from mov_cautela '
    + 'where tipo_movimento = ' + qs(tipo_movimento) + ' and numero_cautela=' + qs(numero);

  with DsExecute.DataSet do
  begin
    Close;
    Open;

    if not IsEmpty then
    begin
      NUMERO_CAUTELA := StrToInt(numero);
    end
    else
    begin
      ShowMessage(smensagem);
    end;

    Close;

  end;

  EditLocalizar.Text := '';
  PageControlConsulta.ActivePageIndex := 0;
  Salvar.Enabled := True;

  ImprimirCautela;

end;

procedure TFrmMovimentoPatrimonio.BtnDocClick(Sender: TObject);
var
  numero, tipo_movimento, smensagem: string;
  sconfirma_doc: array[0..1000] of Char;
begin
  inherited;

  Salvar.Enabled := True;

  numero := inputbox('Digite a numero do documento', 'Documento', '');

  //este botão é apenas para devolução de cautela
  tipo_movimento := 'X';
  if fTipo_Movimento = fDevolucao then
  begin
    tipo_movimento := 'S';
    smensagem := 'Documento de Saida : ' + numero + ' (não encontrado).'
  end;

  SqlExecute.SQL.Text := 'select * from mov_cautela '
    + 'where tipo_movimento = ' + qs(tipo_movimento) + ' and numero_cautela=' + qs(numero);

  with DsExecute.DataSet do
  begin
    Close;
    Open;

    if not IsEmpty then
    begin

      StrPCopy(sconfirma_doc, 'Confirma o documento: ' + numero + '?');
      if Application.MessageBox(sconfirma_doc,
        'Confirme.', mb_YesNo + Mb_IconQuestion) = idYes then
      begin

        StrPCopy(sconfirma_doc, 'Imprimir o original do documento: ' + numero + '?');
        if Application.MessageBox(sconfirma_doc,
          'Confirme.', mb_YesNo + Mb_IconQuestion) = idYes then
        begin
          NUMERO_CAUTELA := StrToInt(numero);
          ImprimirCautela;
        end;

        DsMovimento.DataSet.First;
        while not DsMovimento.DataSet.Eof do
          DsMovimento.DataSet.Delete;

        quantidade_devolvida := 0;
        IDMOV_CAUTELA2 := 0;
        IDFUNCIONARIO_DEVOLUCAO := 0;
        First;

        while not Eof do
        begin

          RadioGroupLocalizar.ItemIndex := 0;
          EditLocalizar.Text := fieldbyname('IDPATRIMONIO').AsString;
          quantidade_devolvida := fieldbyname('QUANTIDADE').AsInteger - fieldbyname('QUANTIDADE_DEVOLVIDA').AsInteger;
          IDMOV_CAUTELA2 := fieldbyname('IDMOV_CAUTELA').AsInteger;
          IDFUNCIONARIO_DEVOLUCAO := fieldbyname('IDFUNCIONARIO_RESPONSAVEL').AsInteger;
          DBLookupComboBoxFuncionario.KeyValue := IDFUNCIONARIO_DEVOLUCAO;

          if quantidade_devolvida > 0 then
          begin
            Novo.OnClick(nil);
          end
          else
          begin
            ShowMessage('Item ' + dsconsulta.DataSet.fieldbyname('nome').AsString + #13 + #10
              + 'Devolvido completamente: ' + fieldbyname('QUANTIDADE_DEVOLVIDA').AsString);
          end;

          quantidade_devolvida := 0;

          IDMOV_CAUTELA2 := 0;

          IDFUNCIONARIO_DEVOLUCAO := 0;

          Next;

        end;
      end;

    end
    else
    begin
      ShowMessage(smensagem);
    end;

    Close;

  end;

  EditLocalizar.Text := '';
  PageControlConsulta.ActivePageIndex := 0;
  Salvar.Enabled := True;

end;

procedure TFrmMovimentoPatrimonio.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = vk_f2 then
  begin
    if not DsConsulta.DataSet.IsEmpty then
    begin
      Novo.OnClick(nil);
    end;
  end;

  if key = vk_f10 then
  begin
    Salvar.OnClick(nil);
  end;

  if key = vk_escape then
    close;

end;

procedure TFrmMovimentoPatrimonio.DBGridConsultaDblClick(Sender: TObject);
begin
  inherited;
  if not DsConsulta.DataSet.IsEmpty then
  begin
    Novo.OnClick(nil);
  end;

end;

end.

