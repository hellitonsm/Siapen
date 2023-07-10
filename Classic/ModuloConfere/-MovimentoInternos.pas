unit MovimentoInternos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ExtCtrls, ImgList, StdCtrls, Grids, DBGrids,
  FMTBcd, DB, DBClient, Provider, SqlExpr, Mask, DBCtrls, DBXpress,
  ModeloCadastro, Jpeg, Buttons, ModeloMovimentacao, frxClass, frxPreview,
  frxDBSet;

type
  TFrmMovimentoInternos = class(TFrmModeloMovimentacao)
    PanelNome: TPanel;
    DBEditNome: TDBEdit;
    Label2: TLabel;
    Label8: TLabel;
    SqlSelectInterno: TSQLQuery;
    RadioGroupStatus: TRadioGroup;
    DBRadioGroupStatus: TDBRadioGroup;
    DBEdit1: TDBEdit;
    PageControlDadosInterno: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBLookupComboBox1: TDBLookupComboBox;
    Label45: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBRadioGroupSexo: TDBRadioGroup;
    DBLookupComboBoxID_PROCEDENCIA: TDBLookupComboBox;
    Label12: TLabel;
    OpenDialog1: TOpenDialog;
    TabSheet3: TTabSheet;
    Panel3: TPanel;
    Label48: TLabel;
    DBEdit8: TDBEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    Label49: TLabel;
    Panel2: TPanel;
    DBImageFOTOInterno: TDBImage;
    DBImage1: TDBImage;
    TabSheet4: TTabSheet;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBComboBox1: TDBComboBox;
    DBMemo1: TDBMemo;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    DSHISTORICO_interno: TDataSource;
    CDSHISTORICO_interno: TClientDataSet;
    CDSHISTORICO_internoIDHISTORICO_INTERNO: TIntegerField;
    CDSHISTORICO_internoDESCRICAO: TStringField;
    CDSHISTORICO_internoDATA_HORA: TSQLTimeStampField;
    CDSHISTORICO_internoIDINTERNO: TIntegerField;
    DSPHISTORICO_interno: TDataSetProvider;
    SQLHISTORICO_interno: TSQLQuery;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SqlSelectInternoInativo: TSQLQuery;
    CDSHISTORICO_internoSTATUS: TStringField;
    CDSHISTORICO_internoMOTIVO_SAIDA: TStringField;
    CDSHISTORICO_internoIDPROCEDENCIA: TIntegerField;
    CDSHISTORICO_internoIDUP: TIntegerField;
    DBRadioGroup1: TDBRadioGroup;
    chkSoundex: TCheckBox;
    SqlSoundex: TSQLQuery;
    CdsConsultaNOME_INTERNO: TStringField;
    CdsConsultaSIGLA: TStringField;
    CdsConsultaPAVILHAO: TStringField;
    CdsConsultaSOLARIO: TStringField;
    CdsConsultaCELA: TStringField;
    CdsConsultaID_INTERNO: TIntegerField;
    CdsConsultaID_UP: TIntegerField;
    CdsConsultaIDPAVILHAO: TIntegerField;
    CdsConsultaIDGALERIA: TIntegerField;
    CdsConsultaIDSOLARIO: TIntegerField;
    CdsConsultaST: TStringField;
    CdsConsultaSTATUS: TStringField;
    CdsConsultaEM_TRANSITO: TStringField;
    CdsConsultaNOME_FONETICA: TStringField;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    CdsConsultaNUMERO_ROUPA: TStringField;
    Label62: TLabel;
    DBEdit19: TDBEdit;
    Panel1: TPanel;
    PanelPavilhao: TPanel;
    DBRadioGroupPavilhao: TDBRadioGroup;
    DBRadioGroupGaleria: TDBRadioGroup;
    DBRadioGroupSolario: TDBRadioGroup;
    DBRadioGroupCela: TDBRadioGroup;
    SqlPavilhao: TSQLQuery;
    DspPavilhao: TDataSetProvider;
    CdsPavilhao: TClientDataSet;
    DsPavilhao: TDataSource;
    DsGaleria: TDataSource;
    CdsGaleria: TClientDataSet;
    DspGaleria: TDataSetProvider;
    SqlGaleria: TSQLQuery;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    Label14: TLabel;
    Label15: TLabel;
    procedure EditLocalizarChange(Sender: TObject);
    procedure DBRadioGroupPavilhaoChange(Sender: TObject);
    procedure DBRadioGroupGaleriaChange(Sender: TObject);
    procedure DBRadioGroupSolarioChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure DsConsultaDataChange(Sender: TObject; Field: TField);
    procedure SalvarClick(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure PageControlConsultaChange(Sender: TObject);
    procedure RadioGroupStatusClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure DBComboBox1Click(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure chkSoundexClick(Sender: TObject);
    procedure EditLocalizarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CdsConsultaFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure CdsConsultaCalcFields(DataSet: TDataSet);
    procedure CancelarClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBLookupComboBox5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CorNosCampos;
    function IniciaTransCadastro: Boolean;
    function FinalizaTransCadastro: Boolean;
    function CancelaTransCadastro: Boolean;
    function ReeiniciaTransCadastro: Boolean;

  end;

var
  FrmMovimentoInternos: TFrmMovimentoInternos;
  statusold, em_transito_old: string;

implementation

uses Lib, DmPrincipal, SituacaoDisciplinar, CadastroProcedencia,
  CadastroDestino, DateUtils;

{$R *.dfm}

procedure TFrmMovimentoInternos.CorNosCampos();
var
  iComp: Integer;
begin

  for iComp := Low(CompDBEdit) to High(CompDBEdit) do
  begin
    if (CompDBEdit[iComp] <> nil) then
    begin
      if (Enabled) then
      begin
        with (CompDBEdit[iComp] as TDBEdit) do
        begin
          try
            if (DSCadastro.DataSet.State in [dsbrowse]) then
              Color := CorCompInativo
            else
              Color := CorCompAtivo;
          except
            CompDBEdit[iComp] := nil;
          end;
        end;
      end;
    end;
  end;

  for iComp := Low(CompLookupComboBox) to High(CompLookupComboBox) do
  begin
    if (CompLookupComboBox[iComp] <> nil) then
    begin
      with (CompLookupComboBox[iComp] as TDBLookupComboBox) do
      begin
        try
          if (DSCadastro.DataSet.State in [dsbrowse]) then
            Color := CorCompInativo
          else
            Color := CorCompAtivo;
        except
          CompLookupComboBox[iComp] := nil;
        end;
      end;
    end;
  end;

end;

function TFrmMovimentoInternos.IniciaTransCadastro: Boolean;
begin

  try
    TD.TransactionID := 0;
    TD.IsolationLevel := xilREADCOMMITTED;
    DM.SQLConnect.StartTransaction(TD);
    DM.SQLConnect.ExecuteDirect('EXECUTE PROCEDURE set_context(' + inttostr(GLOBAL_ID_FUNCIONARIO) + ')');
  except //se der erro para abrir uma TransCadastro
    begin //tente uma nova
      try
        Result := False;
        TD.TransactionID := TD.TransactionID + 1;
        TD.IsolationLevel := xilREADCOMMITTED;
        DM.SQLConnect.StartTransaction(TD);
      except
      end;
    end;
  end;

end;

function TFrmMovimentoInternos.ReeiniciaTransCadastro: Boolean;
begin
  try
    FinalizaTransCadastro;
    TD.TransactionID := TD.TransactionID + 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    DM.SQLConnect.StartTransaction(TD);
  except
  end;
end;

function TFrmMovimentoInternos.FinalizaTransCadastro: Boolean;
begin
  try
    Result := False;
    if DM.SQLConnect.InTransaction then
      DM.SQLConnect.Commit(TD);
    Result := True;
  except
  end;
end;

function TFrmMovimentoInternos.CancelaTransCadastro: Boolean;
begin
  try
    if DM.SQLConnect.InTransaction then
      DM.SQLConnect.Rollback(TD);
  except
  end;
end;

procedure TFrmMovimentoInternos.EditLocalizarChange(Sender: TObject);
var
  Status: string;
begin
  inherited;

  if chkSoundex.Checked then
  begin
    chkSoundexClick(nil);
    Exit;
  end;

  case RadioGroupStatus.ItemIndex of
    0: Status := 'A';
    1: Status := 'I';
  end;

  if Status = 'I' then
  begin
    DsConsulta.DataSet.filter := 'st = ' + qs(Status)

    + ' and (nome_interno like ' + qs('%' + BuscaTroca(EditLocalizar.text, ' ', '%') + '%')
      + ' or nome_fonetica like ' + qs('%' + SomDex(BuscaTroca(EditLocalizar.text, ' ', '%')) + '%') + ')'

  end
  else
  begin
    DsConsulta.DataSet.filter := ' id_up=' + inttostr(GLOBAL_ID_UP)
      + ' and st = ' + qs(Status)
      + ' and (nome_interno like ' + qs('%' + BuscaTroca(EditLocalizar.text, ' ', '%') + '%')
      + ' or nome_fonetica like ' + qs('%' + SomDex(BuscaTroca(EditLocalizar.text, ' ', '%')) + '%') + ')'
  end;

  DsConsulta.DataSet.filtered := False;
  DsConsulta.DataSet.filtered := True;

  PageControlConsulta.ActivePageIndex := 0;
  PageControlDadosInterno.ActivePageIndex := 0;
  //  PageControlEndereco.ActivePageIndex := 0;

end;

procedure TFrmMovimentoInternos.DBRadioGroupPavilhaoChange(
  Sender: TObject);
begin
  inherited;
  if DBRadioGroupCela.Visible = false then
    Exit;

  if DsCadastro.dataset.state in [dsinsert] then
  begin
    DsCadastro.dataset.FieldByname('IDGALERIA').AsVariant := null;
    DsCadastro.dataset.FieldByname('IDSOLARIO').AsVariant := null;
    DsCadastro.dataset.FieldByname('IDCELA').AsVariant := null;
  end;

  if DsCadastro.dataset.state in [dsedit] then
  begin
    if (DsCadastro.dataset.FieldByname('IDPAVILHAO').OldValue <>
      DsCadastro.dataset.FieldByname('IDPAVILHAO').NewValue) then
    begin
      DsCadastro.dataset.FieldByname('IDGALERIA').AsVariant := null;
      DsCadastro.dataset.FieldByname('IDSOLARIO').AsVariant := null;
      DsCadastro.dataset.FieldByname('IDCELA').AsVariant := null;
    end;
  end;

  if DsCadastro.dataset.state in [dsedit] then
  begin
    if DsCadastro.dataset.FieldByname('IDPAVILHAO').AsVariant <>
      DsConsulta.dataset.FieldByname('IDPAVILHAO').AsVariant then
    begin
      DsCadastro.dataset.FieldByname('IDGALERIA').AsVariant := null;
      DsCadastro.dataset.FieldByname('IDSOLARIO').AsVariant := null;
      DsCadastro.dataset.FieldByname('IDCELA').AsVariant := null;
    end;
  end;

  DBRadioGroupGaleria.Items.Clear;
  DBRadioGroupGaleria.Values.Clear;

  DBRadioGroupSolario.Items.Clear;
  DBRadioGroupSolario.Values.Clear;

  DBRadioGroupCela.Items.Clear;
  DBRadioGroupCela.Values.Clear;

  if TDBRadioGroup(Sender).ItemIndex = -1 then
    exit;

  MontaGaleria(TDBRadioGroup(Sender).Values.Strings[TDBRadioGroup(Sender).ItemIndex], DBRadioGroupGaleria);
  DBRadioGroupGaleriaChange(DBRadioGroupGaleria);
  DBRadioGroupSolarioChange(DBRadioGroupSolario);

  if DsCadastro.dataset.state in [dsinsert, dsedit] then
    DsCadastro.dataset.fieldbyname('ID_UP').asinteger := GLOBAL_ID_UP;

end;

procedure TFrmMovimentoInternos.DBRadioGroupGaleriaChange(Sender: TObject);
begin
  inherited;

  if DBRadioGroupCela.Visible = false then
    Exit;

  if DsCadastro.dataset.state in [dsinsert] then
  begin
    DsCadastro.dataset.FieldByname('IDSOLARIO').AsVariant := null;
    DsCadastro.dataset.FieldByname('IDCELA').AsVariant := null;
  end;

  if DsCadastro.dataset.state in [dsedit] then
  begin
    if DsCadastro.dataset.FieldByname('IDGALERIA').AsVariant <>
      DsConsulta.dataset.FieldByname('IDGALERIA').AsVariant then
    begin
      DsCadastro.dataset.FieldByname('IDSOLARIO').AsVariant := null;
      DsCadastro.dataset.FieldByname('IDCELA').AsVariant := null;
    end;
  end;

  DBRadioGroupSolario.Items.Clear;
  DBRadioGroupSolario.Values.Clear;

  DBRadioGroupCela.Items.Clear;
  DBRadioGroupCela.Values.Clear;

  if TDBRadioGroup(Sender).ItemIndex = -1 then
    exit;
  MontaSolario(TDBRadioGroup(Sender).Values.Strings[TDBRadioGroup(Sender).ItemIndex], DBRadioGroupSolario);

end;

procedure TFrmMovimentoInternos.DBRadioGroupSolarioChange(Sender: TObject);
begin
  inherited;

  if DBRadioGroupCela.Visible = false then
    Exit;

  if DsCadastro.dataset.state in [dsinsert] then
  begin
    DsCadastro.dataset.FieldByname('IDCELA').AsVariant := null;
  end;

  if DsCadastro.dataset.state in [dsedit] then
  begin
    if DsCadastro.dataset.FieldByname('IDSOLARIO').AsVariant <>
      DsConsulta.dataset.FieldByname('IDSOLARIO').AsVariant then
    begin
      DsCadastro.dataset.FieldByname('IDCELA').AsVariant := null;
    end;
  end;

  DBRadioGroupCela.Items.Clear;
  DBRadioGroupCela.Values.Clear;

  if TDBRadioGroup(Sender).ItemIndex = -1 then
    exit;
  MontaCela(TDBRadioGroup(Sender).Values.Strings[TDBRadioGroup(Sender).ItemIndex], DBRadioGroupCela);

end;

procedure TFrmMovimentoInternos.FormCreate(Sender: TObject);
begin
  DsPavilhao.DataSet.Close;
  DsPavilhao.DataSet.Open;

  DsGaleria.DataSet.Close;
  DsGaleria.DataSet.Open;

  MontaPavilhao(IntToStr(GLOBAL_ID_UP), DBRadioGroupPavilhao);
  //  PageControlEndereco.ActivePageIndex := 0;
  inherited;
  DM.DsCondicaoInterno.DataSet.Close;
  DM.DsCondicaoInterno.DataSet.OPEN;
  DM.DsProcedencia.DataSet.Close;
  DM.DsProcedencia.DataSet.OPEN;
  DM.DsDestino.DataSet.Close;
  DM.DsDestino.DataSet.OPEN;
  DM.DsSetorTrabalho.DataSet.Close;
  DM.DsSetorTrabalho.DataSet.OPEN;
  DSHISTORICO_interno.DataSet.Close;
  DSHISTORICO_interno.DataSet.OPEN;
  DM.DsUP.DataSet.Close;
  DM.DsUP.DataSet.OPEN;

end;

procedure TFrmMovimentoInternos.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  with DsCadastro.DataSet do
  begin

    if not Active then
      Exit;

    if IsEmpty then
    begin
      Exit;
    end;

    if state in [dsedit, dsinsert] then
    begin

      PageControlModeloCadastro.Enabled := True;

      if DBRadioGroupCela.Visible = False then
      begin

        DBRadioGroupCela.Visible := True;
        MontaPavilhao(IntToStr(GLOBAL_ID_UP), DBRadioGroupPavilhao);
        DBRadioGroupPavilhaoChange(DBRadioGroupPavilhao);
        DBRadioGroupGaleriaChange(DBRadioGroupGaleria);
        DBRadioGroupSolarioChange(DBRadioGroupSolario);

      end;

    end
    else
    begin
      DBRadioGroupCela.Visible := False;
      PageControlModeloCadastro.Enabled := false;
      PageControlDadosInterno.activepageindex := 0;
    end;

  end;

end;

procedure TFrmMovimentoInternos.FormShow(Sender: TObject);
begin
  IniciaTelaAguarde();
  InterageTelaAguarde();
  inherited;
  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;
  InterageTelaAguarde();
  RadioGroupStatusClick(nil);
  InterageTelaAguarde();

  FinalizaTelaAguarde;

  //  EditLocalizarChange(nil);

  //  DSHISTORICO_interno.DataSet.Close;
  //  DSHISTORICO_interno.DataSet.OPEN;
  DBEdit1.Field.EditMask := '99\/99\/9999;1;_';
  DBEdit2.Field.EditMask := '99\/99\/9999;1;_';

end;

procedure TFrmMovimentoInternos.DsConsultaDataChange(Sender: TObject;
  Field: TField);
var
  relficha: string;
begin
  inherited;
  with DsConsulta.DataSet do
  begin

    if not Active then
    begin
      Exit;
    end;

    if IsEmpty then
    begin
      Exit;
    end;

  end;

end;

procedure TFrmMovimentoInternos.SalvarClick(Sender: TObject);
var
  sMovimento, disciplinar: string;
  iErro, LIMITE_POR_CELA: integer;
begin

  if DBEditNome.CanFocus then
    DBEditNome.SetFocus;

  if DsCadastro.DataSet.State in [dsinsert] then
  begin
    if VerificaInternoExiste(DsCadastro.DataSet.fieldbyname('nome_interno').AsString,
      DsCadastro.DataSet.fieldbyname('mae').AsString) then
    begin
      ShowMessage('Interno com este Nome de Mãe, já existe no confere!');
      if MessageDlg('Continuar com o cadastro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        if MessageDlg('O registro poderá ficar duplicado, continuar?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
        begin
          CancelarClick(nil);
          Exit;
        end;
      end
      else
        CancelarClick(nil);
      Exit;
    end;
  end;

  DsCadastro.DataSet.Fieldbyname('ID_FUNCIONARIO').AsInteger := GLOBAL_ID_FUNCIONARIO;

  if DsCadastro.DataSet.fieldbyname('DATA_ENTRADA').AsString = '' then
  begin
    PageControlDadosInterno.ActivePageIndex := 0;
    ShowMessage('Digite a Data de Entrada!');
    if DBEdit1.canFocus then
      DBEdit1.SetFocus;
    Exit;
  end;

  if DBRadioGroupSexo.ItemIndex = -1 then
  begin
    ShowMessage('Informe o sexo!');
    if DBRadioGroupSexo.CanFocus then
      DBRadioGroupSexo.SetFocus;
    Exit;
  end;

  if DBRadioGroupStatus.ItemIndex = -1 then
  begin
    ShowMessage('Informe o Status!');
    if DBRadioGroupStatus.CanFocus then
      DBRadioGroupStatus.SetFocus;
    Exit;
  end;

  if DsCadastro.DataSet.FieldByName('id_procedencia').AsString = '' then
  begin
    PageControlDadosInterno.ActivePageIndex := 0;
    ShowMessage('Digite a Procedência!');
    if DBLookupComboBoxID_PROCEDENCIA.CanFocus then
      DBLookupComboBoxID_PROCEDENCIA.SetFocus;
    Exit;
  end;

  if DBEditNome.Text = '' then
  begin
    ShowMessage('Digite o Nome do Interno!');
    if DBEditNome.canFocus then
      DBEditNome.SetFocus;
    Exit;
  end;

  {Saída do interno}
  if DBRadioGroupStatus.ItemIndex = 1 then
  begin
    if not DataValida(DBEdit2.Text) then
    begin
      PageControlDadosInterno.ActivePageIndex := 3;
      ShowMessage('Digite a Data da Saída!' + #13 + #10 + DBEdit2.Text);
      DBEdit2.SetFocus;
      exit;
    end;

    if (DBLookupComboBox2.Text = '') and (DBLookupComboBox2.Visible = True) then
    begin
      PageControlDadosInterno.ActivePageIndex := 3;
      ShowMessage('Digite o Destino!');
      DBLookupComboBox2.SetFocus;
      exit;
    end;

    if DBComboBox1.Text = '' then
    begin
      PageControlDadosInterno.ActivePageIndex := 3;
      ShowMessage('Digite o Motivo!');
      DBComboBox1.SetFocus;
      exit;
    end;

    if DBEdit5.text = '' then
    begin
      PageControlDadosInterno.ActivePageIndex := 3;
      ShowMessage('Digite a CI/OF SAÍDA!');
      DBEdit5.SetFocus;
      exit;
    end;

    {lANÇANDO A SAIDA DO INTERNO NO HISTÓRICO}
    DSHISTORICO_interno.DataSet.Append;
    DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
    DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
      DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
    DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsDateTime :=
      DsCadastro.DataSet.fieldbyname('data_saida').AsDateTime;
    if DBLookupComboBox2.Visible = True then
      DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString := 'Deu Saída da Unidade Penal: ' +
        DSconsulta.DataSet.fieldbyname('SIGLA').AsString + ', Motivo: ' +
        DBComboBox1.Text + ' Destino: ' + DBLookupComboBox2.Text + ', Conforme OF/CI' + DBEdit5.Text + '.'
    else
      DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString := 'Deu Saída da Unidade Penal: ' +
        DSconsulta.DataSet.fieldbyname('SIGLA').AsString + ', Motivo: ' +
        DBComboBox1.Text + ', Conforme CI/OF/AUTOS: ' + DBEdit5.Text + '.';
    DSHISTORICO_interno.DataSet.fieldbyname('status').AsString := 'S';
    DSHISTORICO_interno.DataSet.fieldbyname('motivo_saida').AsString := DBComboBox1.Text;
    DSHISTORICO_interno.DataSet.fieldbyname('idprocedencia').AsInteger := DBLookupComboBoxID_PROCEDENCIA.KeyValue;
    DSHISTORICO_interno.DataSet.fieldbyname('IDUP').AsInteger := DsCadastro.DataSet.fieldbyname('ID_UP').AsInteger;
    DSHISTORICO_interno.DataSet.Post;

    {limpando os campos para saida do interno}
    DsCadastro.DataSet.fieldbyname('data_setor').AsString := '';
    DsCadastro.DataSet.fieldbyname('idsetor_trabalho').AsString := '';
    DsCadastro.DataSet.fieldbyname('idcondicao_interno').AsString := '';
    DsCadastro.DataSet.fieldbyname('ci').AsString := '';
    DsCadastro.DataSet.fieldbyname('data_entrada').AsString := '';
    DsCadastro.DataSet.fieldbyname('id_procedencia').AsString := '';

    {Salvando}
    try
      StatusBar1.Panels[1].Text := 'SALVANDO';
      Novo.Enabled := True;
      Editar.Enabled := True;
      Excluir.Enabled := True;
      Salvar.Enabled := False;
      Cancelar.Enabled := False;

      if DsCadastro.DataSet.State in [dsedit, dsinsert] then
        DsCadastro.DataSet.Post;

      if DSHISTORICO_interno.DataSet.State in [dsedit, dsinsert] then
        DSHISTORICO_interno.DataSet.Post;

      IniciaTransCadastro;
      iErro := TClientDataSet(DsCadastro.DataSet).ApplyUpdates(0);
      iErro := iErro + TClientDataSet(DSHISTORICO_interno.DataSet).ApplyUpdates(0);

      if iErro = 0 then
        finalizaTransCadastro
      else
        CancelaTransCadastro;

      StatusBar1.Panels[1].Text := '...';
      DsCadastro.DataSet.Refresh;
    except
      ShowMessage('Não pode salvar com os dados digitados');
    end;
    CorNosCampos;
    PageControlModeloCadastro.Enabled := false;

    sMovimento := DsCadastro.DataSet.Fieldbyname('NOME_INTERNO').AsString;

    EditLocalizar.text := '';
    EditLocalizar.OnChange(nil);
    DsConsulta.DataSet.Close;
    DsConsulta.DataSet.Open;

    DsConsulta.DataSet.Locate('NOME_INTERNO', sMovimento, []);
  end
  else
  begin
    DsCadastro.DataSet.Fieldbyname('STATUS_ISOLAMENTO').AsString := '';
    DsCadastro.DataSet.Fieldbyname('DATA_ISOLAMENTO').AsString := '';

    if DBRadioGroupCela.ItemIndex = -1 then
    begin
      PageControlDadosInterno.ActivePageIndex := 1;
      ShowMessage('Digite a Cela!');
      Exit;
    end;

    DM.SqlExecute.SQL.Text := 'SELECT * FROM CELA WHERE ID_CELA = ' +
      DBRadioGroupCela.Value;

    DM.DsExecute.DataSet.Close;
    DM.DsExecute.DataSet.Open;

    LIMITE_POR_CELA := DM.DsExecute.DataSet.FieldByName('LIMITE_POR_CELA').AsInteger;

    if DM.DsExecute.DataSet.FieldByName('ISOLAMENTO').AsString = 'S' then
    begin
      FrmSituacaoDisciplinar := TFrmSituacaoDisciplinar.Create(Self);
      FrmSituacaoDisciplinar.ShowModal;

      if frmSituacaoDisciplinar.RadioGroup1.ItemIndex = 0 then
        disciplinar := '(1) SANCIONADO'
      else
        disciplinar := '(2) SEGURO';

      DsCadastro.DataSet.Fieldbyname('DATA_ISOLAMENTO').AsString := frmSituacaoDisciplinar.MaskEdit1.Text;
      DsCadastro.DataSet.Fieldbyname('STATUS_ISOLAMENTO').AsString := disciplinar;

    end;

    if DM.DsExecute.DataSet.FieldByName('EM_MANUTENCAO').AsString = 'S' then
    begin
      PageControlDadosInterno.ActivePageIndex := 1;
      ShowMessage('Cela em manutenção!' + #10#13 + 'Motivo: ' + DM.DsExecute.DataSet.FieldByName('MOTIVO_MANUTENCAO').AsString);
      if MessageDlg('Deseja alojar o preso na cela em manutenção, continuar?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
      begin
        Exit;
      end;
    end;

    if LIMITE_POR_CELA > 0 then
    begin
      DM.SqlExecute.SQL.Text := 'SELECT COUNT(*) TOTAL FROM INTERNO WHERE st = ''A'' and nome_interno is not null and IDCELA = ' +
        DBRadioGroupCela.Value;
      if DsCadastro.DataSet.State in [dsedit] then
        DM.SqlExecute.SQL.Text := 'SELECT COUNT(*) TOTAL FROM INTERNO WHERE id_interno<>' + DsCadastro.DataSet.FieldByName('id_interno').Asstring
          + ' and st = ''A'' and nome_interno is not null and IDCELA = ' +
          DBRadioGroupCela.Value;

      DM.DsExecute.DataSet.Close;
      DM.DsExecute.DataSet.Open;
      if DM.DsExecute.DataSet.FieldByName('TOTAL').AsInteger >= LIMITE_POR_CELA then
      begin
        PageControlDadosInterno.ActivePageIndex := 1;
        ShowMessage('Favor Informar Outra Cela!' + #10#13 + 'Cela com ' + IntToStr(LIMITE_POR_CELA) + ' Preso(a).');
        Exit;
      end;
    end;

    if (DsCadastro.DataSet.state in [dsinsert]) or (dscadastro.DataSet.fieldbyname('st').Asstring <> statusold) then
    begin
      if DBEdit6.Text = '' then
      begin
        PageControlDadosInterno.ActivePageIndex := 0;
        ShowMessage('Digite o Nome da Mãe!');
        DBEdit6.SetFocus;
        exit;
      end;

      DSHISTORICO_interno.DataSet.Append;
      DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
      DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
        DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
      DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsDateTime :=
        DsCadastro.DataSet.fieldbyname('data_ENTRADA').AsDateTime;
      DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString := 'Deu Entrada na Unidade Penal: ' +
        UP + ', Procedente ' +
        DBLookupComboBoxID_PROCEDENCIA.Text + ', Conforme OF/CI ' + DBEdit4.Text + '.';
      DSHISTORICO_interno.DataSet.fieldbyname('status').AsString := 'E';
      DSHISTORICO_interno.DataSet.fieldbyname('idprocedencia').AsInteger := DBLookupComboBoxID_PROCEDENCIA.KeyValue;
      DSHISTORICO_interno.DataSet.fieldbyname('IDUP').AsInteger := DsCadastro.DataSet.fieldbyname('ID_UP').AsInteger;
      DSHISTORICO_interno.DataSet.Post;

      {limpando campos da saida, quando reativar cadastro}
      DsCadastro.DataSet.fieldbyname('data_saida').AsString := '';
      DsCadastro.DataSet.fieldbyname('motivo_saida').AsString := '';
      DsCadastro.DataSet.fieldbyname('cisaida').AsString := '';
      DsCadastro.DataSet.fieldbyname('iddestino').AsString := '';
    end;

    if (DsCadastro.DataSet.state in [dsedit]) and
      (dscadastro.DataSet.fieldbyname('em_transito').Asstring <> em_transito_old) then
    begin
      DSHISTORICO_interno.DataSet.Append;
      DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
      DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
        DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
      DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsDateTime := Date;

      if dscadastro.DataSet.fieldbyname('em_transito').Asstring = 'S' then
      begin
        DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString := 'Saiu em transito: ' +
          UP + ', Destino ' +
          DBLookupComboBoxID_PROCEDENCIA.Text + ', Conforme OF/CI ' + DBEdit4.Text + '.';
      end
      else
      begin
        DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString := 'Retorno do transito: ' +
          UP + ', Origem ' +
          DBLookupComboBoxID_PROCEDENCIA.Text + ', Conforme OF/CI ' + DBEdit4.Text + '.';
      end;

      DSHISTORICO_interno.DataSet.fieldbyname('status').AsString := 'S';
      DSHISTORICO_interno.DataSet.fieldbyname('idprocedencia').AsInteger := DBLookupComboBoxID_PROCEDENCIA.KeyValue;
      DSHISTORICO_interno.DataSet.fieldbyname('IDUP').AsInteger := DsCadastro.DataSet.fieldbyname('ID_UP').AsInteger;
      DSHISTORICO_interno.DataSet.Post;
    end;

    {Salvando}
    try
      StatusBar1.Panels[1].Text := 'SALVANDO';
      Novo.Enabled := True;
      Editar.Enabled := True;
      Excluir.Enabled := True;
      Salvar.Enabled := False;
      Cancelar.Enabled := False;
      if DsCadastro.DataSet.State in [dsedit, dsinsert] then
        DsCadastro.DataSet.Post;

      if DSHISTORICO_interno.DataSet.State in [dsedit, dsinsert] then
        DSHISTORICO_interno.DataSet.Post;

      IniciaTransCadastro;

      iErro := TClientDataSet(DsCadastro.DataSet).ApplyUpdates(0);
      iErro := iErro + TClientDataSet(DSHISTORICO_interno.DataSet).ApplyUpdates(0);

      if iErro = 0 then
        finalizaTransCadastro
      else
        CancelaTransCadastro;

      StatusBar1.Panels[1].Text := '...';
      DsCadastro.DataSet.Refresh;
    except
      ShowMessage('Não pode salvar com os dados digitados');
    end;
    CorNosCampos;
    PageControlModeloCadastro.Enabled := false;

    sMovimento := DsCadastro.DataSet.Fieldbyname('NOME_INTERNO').AsString;

    EditLocalizar.text := '';
    EditLocalizar.OnChange(nil);

    DsConsulta.DataSet.Close;
    DsConsulta.DataSet.Open;
    DsConsulta.DataSet.Locate('NOME_INTERNO', sMovimento, []);

  end;

end;

procedure TFrmMovimentoInternos.NovoClick(Sender: TObject);
var
  sNovoNome: string;
begin
  sNovoNome := EditLocalizar.text;
  EditLocalizar.text := '';
  EditLocalizar.OnChange(nil);

  inherited;

  dm.SqlExecute.SQL.Text := 'select gen_id (cod_up, 0) || gen_id (ID_INTERNO, 1) as ID from rdb$database';
  dm.DsExecute.DataSet.Close;
  dm.DsExecute.DataSet.Open;

  DsCadastro.DataSet.fieldbyname('ID_INTERNO').AsInteger :=
    dm.DsExecute.DataSet.FieldByName('ID').AsInteger;

  DsCadastro.DataSet.fieldbyname('SEXO').AsString :=
    DM.DsUP.DataSet.FieldByName('GENERO').AsString;

  DsCadastro.DataSet.Fieldbyname('NOME_INTERNO').AsString := sNovoNome;

  dm.DsExecute.DataSet.Close;

  //  DsCadastro.DataSet.FieldByName('id_interno').AsInteger := 0;
  DsCadastro.DataSet.FieldByName('DATA_ENTRADA').AsDateTime := Date;
  DsCadastro.DataSet.FieldByName('ST').AsString := 'A';
  dbeditnome.setfocus;

end;

procedure TFrmMovimentoInternos.PageControlConsultaChange(Sender: TObject);
begin
  inherited;
  DsMovimento.DataSet.Close;
  if PageControlConsulta.ActivePage = TabSheetMovimentacao then
  begin
    SqlMovimento.SQL.Text :=
      'select id_mov_interno, id_interno, id_unidade_penal, ' +
      ' tipo_movimentacao, data_movimentacao, hora_movimentacao, ' +
      ' id_funcionario, ' +
      ' (SELECT proedencia from procedencia WHERE procedencia.id_procedencia=mov_interno.id_procedencia) AS id_procedencia, ' +
      ' (SELECT DESTINO from destino WHERE destino.id_destino=mov_interno.id_destino) AS  id_destino ' +
      ' from mov_interno WHERE ID_INTERNO=' + DsCadastro.DataSet.Fieldbyname('id_interno').AsString;
    DsMovimento.DataSet.Open;
  end;
end;

procedure TFrmMovimentoInternos.RadioGroupStatusClick(Sender: TObject);
begin
  inherited;
  EditLocalizar.Text := '';
  EditLocalizarChange(nil);
  if EditLocalizar.CanFocus then
    EditLocalizar.SetFocus;

  if RadioGroupStatus.ItemIndex = 1 then
    PageControlDadosInterno.ActivePageIndex := 3
  else
    PageControlDadosInterno.ActivePageIndex := 0;
end;

procedure TFrmMovimentoInternos.Image1Click(Sender: TObject);
var
  sOrigem, sDestino: string;
  JPeg: TJpegImage;
begin
  with DsCadastro.DataSet do
  begin
    if state in [dsedit, dsinsert] then
    begin
      if OpenDialog1.Execute then
      begin
        JPeg := TJPEGImage.Create;
        JPeg.LoadFromFile(ConverterBmpParaJPeg(JpgToBmp(OpenDialog1.FileName)));
        DBImageFOTOInterno.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end;
end;

procedure TFrmMovimentoInternos.DBComboBox1Click(Sender: TObject);
begin
  inherited;
  if (DBComboBox1.Text = 'Alvará de Soltura') or (DBComboBox1.Text = 'Livramento Condicional') or
    (DBComboBox1.Text = 'Alvará de Soltura') or (DBComboBox1.Text = 'Saída Temporária') or
    (DBComboBox1.Text = 'Fuga') or (DBComboBox1.Text = 'Óbito') then
  begin
    SpeedButton2.Visible := false;
    Label3.Visible := false;
    DBLookupComboBox2.Visible := false;
  end
  else
  begin
    SpeedButton2.Visible := true;
    Label3.Visible := true;
    DBLookupComboBox2.Visible := true;
  end;

end;

procedure TFrmMovimentoInternos.EditarClick(Sender: TObject);
begin
  inherited;
  statusold := dscadastro.DataSet.fieldbyname('st').Asstring;
  em_transito_old := dscadastro.DataSet.fieldbyname('em_transito').Asstring;

  if DBComboBox1.Text <> '' then
  begin
    Label3.Visible := true;
    DBLookupComboBox2.Visible := True;
  end
  else
  begin
    DBLookupComboBox2.Visible := false;
    Label3.Visible := false;
  end;

  PageControlDadosInterno.ActivePageIndex := 0;

end;

procedure TFrmMovimentoInternos.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FrmCadastroprocedencia := TFrmCadastroProcedencia.Create(Application);
  FrmCadastroProcedencia.ShowModal;
  FreeAndNil(FrmCadastroProcedencia);

  DM.DsProcedencia.DataSet.Close;
  DM.DsProcedencia.DataSet.OPEN;
end;

procedure TFrmMovimentoInternos.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  FrmCadastrodestino := TFrmCadastrodestino.Create(Application);
  FrmCadastrodestino.ShowModal;
  FreeAndNil(FrmCadastrodestino);

  DM.dsdestino.DataSet.Close;
  DM.dsdestino.DataSet.OPEN;

end;

procedure TFrmMovimentoInternos.chkSoundexClick(Sender: TObject);
var
  Status: string;
begin
  inherited;

  if Length(Trim(EditLocalizar.text)) < 2 then
    exit;

  case RadioGroupStatus.ItemIndex of
    0: Status := 'A';
    1: Status := 'I';
  end;

  if Status = 'I' then
  begin
    DsConsulta.DataSet.filter := 'st = ' + qs(Status)
      + ' and ((nome_interno like ' + qs('%' + BuscaTroca(EditLocalizar.text, ' ', '%') + '%')
      + ') or (nome_interno_soundex like ' + qs('%' + Soundex(EditLocalizar.text) + '%') + '))';
  end
  else
  begin
    DsConsulta.DataSet.filter := ' id_up=' + inttostr(GLOBAL_ID_UP)
      + ' and st = ' + qs(Status)
      + ' and ((nome_interno like ' + qs('%' + BuscaTroca(EditLocalizar.text, ' ', '%') + '%')
      + ') or (nome_interno_soundex like ' + qs('%' + Soundex(EditLocalizar.text) + '%') + '))';
  end;

  DsConsulta.DataSet.filtered := False;
  DsConsulta.DataSet.filtered := True;

end;

procedure TFrmMovimentoInternos.EditLocalizarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if DsConsulta.DataSet.IsEmpty then
    Exit;

  if not DsConsulta.DataSet.Active then
    Exit;

  if key = VK_DOWN then
  begin
    if not DsConsulta.DataSet.Eof then
      DsConsulta.DataSet.Next;
  end;

  if key = VK_UP then
  begin
    if not DsConsulta.DataSet.Bof then
      DsConsulta.DataSet.Last;
  end;

end;

procedure TFrmMovimentoInternos.CdsConsultaFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  {
    if Trim(EditLocalizar.text) <> '' then
    begin
      Accept := ContemValor(SomDex(PChar(EditLocalizar.text)), SomDex(PChar(DataSet.FieldByName('nome_interno').AsString)));
      if not Accept then
      begin
        Accept := ContemValor(EditLocalizar.text, DataSet.FieldByName('nome_interno').AsString);
      end;

      if not Accept then
      begin
        Accept := ContemValor(EditLocalizar.text, DataSet.FieldByName('nome_interno').AsString);
      end;

    end;
    }
end;

procedure TFrmMovimentoInternos.CdsConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('nome_fonetica').AsString := SomDex(PChar(DataSet.FieldByName('nome_interno').AsString));

end;

procedure TFrmMovimentoInternos.CancelarClick(Sender: TObject);
begin
  if EditLocalizar.CanFocus then
    EditLocalizar.SetFocus;
  inherited;

end;

procedure TFrmMovimentoInternos.DBEdit2Exit(Sender: TObject);
begin
  inherited;

  if not DataValida(DBEdit2.Text) then
  begin
    ShowMessage('Digite a Data da Saída!' + #13 + #10 + DBEdit2.Text);
  end;

  DBEdit2.Text := FormatDateTime('dd/mm/yyyy', StrToDateDef(DBEdit2.Text, Date));

end;

procedure TFrmMovimentoInternos.DBLookupComboBox5Click(Sender: TObject);
begin
  inherited;
  MontaSolario(TDBRadioGroup(Sender).Values.Strings[TDBRadioGroup(Sender).ItemIndex], DBRadioGroupSolario);
end;

end.

