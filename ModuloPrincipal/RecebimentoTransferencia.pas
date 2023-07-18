unit RecebimentoTransferencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls,
  ToolWin, Mask, Buttons, Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFrmRecebimentoTransferencia = class(TFrmModeloCadastro)
    PageControlTransferencia: TPageControl;
    Sqlvinc_transferencia_interno: TSQLQuery;
    Dspvinc_transferencia_interno: TDataSetProvider;
    Cdsvinc_transferencia_interno: TClientDataSet;
    Dsvinc_transferencia_interno: TDataSource;
    Cdsvinc_transferencia_internoID_VINC_TRANSFERENCIA_INTERNO: TIntegerField;
    Cdsvinc_transferencia_internoID_INTERNO: TIntegerField;
    Cdsvinc_transferencia_internoID_TRANSFERENCIA_INTERNO: TIntegerField;
    Cdsvinc_transferencia_internoInterno: TStringField;
    Cdsvinc_transferencia_internoRGI: TStringField;
    Cdsvinc_transferencia_internoID_FUNCIONARIO_CANCELAMENTO: TIntegerField;
    Cdsvinc_transferencia_internoSTATUS: TStringField;
    Cdsvinc_transferencia_internoDATA_CANCELAMENTO: TSQLTimeStampField;
    Cdsvinc_transferencia_internoMOTIVO_CANCELAMENTO: TStringField;
    Cdsvinc_transferencia_internoFuncionrio: TStringField;
    SQLHISTORICO_interno: TSQLQuery;
    DSPHISTORICO_interno: TDataSetProvider;
    CDSHISTORICO_interno: TClientDataSet;
    DSHISTORICO_interno: TDataSource;
    dsinterno: TDataSource;
    cdsinterno: TClientDataSet;
    dspinterno: TDataSetProvider;
    SQLinterno: TSQLQuery;
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
    DBRadioGroupTIPO_DESTINO: TDBRadioGroup;
    PageControlDestino: TPageControl;
    TabSheetDestino: TTabSheet;
    SpeedButton1: TSpeedButton;
    DBLookupComboBoxdestino: TDBLookupComboBox;
    TabSheetUnidade: TTabSheet;
    DBLookupComboBoxUPDestino: TDBLookupComboBox;
    SqlExecute: TSQLQuery;
    MainMenu1: TMainMenu;
    Relatorios1: TMenuItem;
    Especifico1: TMenuItem;
    SQLconspadrao: TSQLQuery;
    Dspconspadrao: TDataSetProvider;
    Cdsconspadrao: TClientDataSet;
    Dsconspadrao: TDataSource;
    DsConsulta: TDataSource;
    CdsConsulta: TClientDataSet;
    DspConsulta: TDataSetProvider;
    SqlConsulta: TSQLQuery;
    RadioGroupAcao: TRadioGroup;
    Label5: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button2: TButton;
    DsCela: TDataSource;
    CdsCela: TClientDataSet;
    DspCela: TDataSetProvider;
    SqlCela: TSQLQuery;
    SqlSolario: TSQLQuery;
    DspSolario: TDataSetProvider;
    CdsSolario: TClientDataSet;
    DsSolario: TDataSource;
    DsGaleria: TDataSource;
    CdsGaleria: TClientDataSet;
    DspGaleria: TDataSetProvider;
    SqlGaleria: TSQLQuery;
    SqlPavilhao: TSQLQuery;
    DspPavilhao: TDataSetProvider;
    CdsPavilhao: TClientDataSet;
    DsPavilhao: TDataSource;
    DBGrid2: TDBGrid;
    PopupMenuLiberar: TPopupMenu;
    Liberar1: TMenuItem;
    GroupBox1: TGroupBox;
    LabelPavilhao: TLabel;
    LabelGaleria: TLabel;
    LabelCela: TLabel;
    LabelSolario: TLabel;
    DBLookupComboBoxPavilhao: TDBLookupComboBox;
    DBLookupComboBoxGaleria: TDBLookupComboBox;
    DBLookupComboBoxCela: TDBLookupComboBox;
    DBLookupComboBoxSolario: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    Label14: TLabel;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure DBRadioGroupTIPO_DESTINOChange(Sender: TObject);
    procedure DBLookupComboBoxUPDestinoExit(Sender: TObject);
    procedure Cdsvinc_transferencia_internoCalcFields(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Especifico1Click(Sender: TObject);
    procedure DBGridConsultaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure RadioGroupAcaoClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBLookupComboBoxPavilhaoClick(Sender: TObject);
    procedure DBLookupComboBoxGaleriaClick(Sender: TObject);
    procedure DBLookupComboBoxSolarioClick(Sender: TObject);
    procedure Liberar1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    RECEBE_DIRETO : STRING;
    { Public declarations }
  end;

var
  FrmRecebimentoTransferencia: TFrmRecebimentoTransferencia;

implementation

uses DmPrincipal, CadastroDestino, Lib, CancelarSaidao,
  CancelarTransferencia, MenuRelatorio, Aguarde;

{$R *.dfm}

procedure TFrmRecebimentoTransferencia.FormShow(Sender: TObject);
begin
  inherited;
  //  DBEditdata.Field.EditMask := '99\/99\/9999;1;_';

  dm.DsUP.DataSet.Close;
  dm.DsUP.DataSet.OPEN;

  dm.DsDestino.DataSet.Close;
  dm.DsDestino.DataSet.OPEN;

  dm.DsInterno.DataSet.Close;
  DM.SqlInterno.Params[0].Value := GLOBAL_ID_UP;
  dm.DsInterno.DataSet.OPEN;

  DSHISTORICO_interno.DataSet.Close;
  DSHISTORICO_interno.DataSet.OPEN;

end;

procedure TFrmRecebimentoTransferencia.SpeedButton1Click(Sender: TObject);
begin
  inherited;

  FrmCadastrodestino := TFrmCadastrodestino.Create(Application);
  FrmCadastrodestino.ShowModal;
  FreeAndNil(FrmCadastrodestino);

  DM.dsdestino.DataSet.Close;
  DM.dsdestino.DataSet.OPEN;

end;

procedure TFrmRecebimentoTransferencia.NovoClick(Sender: TObject);
begin
  {NUNCA PODE INSERIR REGISTRO NOVO}
  exit;
  inherited;
end;

procedure TFrmRecebimentoTransferencia.FormCreate(Sender: TObject);
begin
  inherited;
  RECEBE_DIRETO := 'N';
  
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

  {selecionando cela virtual}
  SQLconspadrao.sql.text := 'select * from padrao where cod_up ='
    + qs(inttostr(global_id_up));
  dsconspadrao.dataset.close;
  dsconspadrao.dataset.open;

  DBLookupComboBoxPavilhao.KeyValue := dsconspadrao.DataSet.fieldbyname('id_pavilhao').AsVariant;
  DBLookupComboBoxGaleria.KeyValue := dsconspadrao.DataSet.fieldbyname('id_galeria').AsVariant;
  DBLookupComboBoxSolario.KeyValue := dsconspadrao.DataSet.fieldbyname('id_solario').AsVariant;
  DBLookupComboBoxCela.KeyValue := dsconspadrao.DataSet.fieldbyname('id_cela').AsVariant;

  SqlConsulta.Params[0].Value := GLOBAL_ID_UP;
  SqlConsulta.Params[1].Value := date;
  DateTimePicker1.Date := date;

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.Open;

  Dsvinc_transferencia_interno.DataSet.Close;
  Dsvinc_transferencia_interno.DataSet.Open;

  PageControlTransferencia.ActivePageIndex := 0;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_TRANSFERENCIAINTERNO)
    and not ContemValor('E', PERMISSAO_TRANSFERENCIAINTERNO)
    and not ContemValor('D', PERMISSAO_TRANSFERENCIAINTERNO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_TRANSFERENCIAINTERNO)
    and not ContemValor('E', PERMISSAO_TRANSFERENCIAINTERNO)
    and not ContemValor('D', PERMISSAO_TRANSFERENCIAINTERNO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_TRANSFERENCIAINTERNO)
    and ContemValor('E', PERMISSAO_TRANSFERENCIAINTERNO)
    and not ContemValor('D', PERMISSAO_TRANSFERENCIAINTERNO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_TRANSFERENCIAINTERNO)
    and ContemValor('E', PERMISSAO_TRANSFERENCIAINTERNO)
    and ContemValor('D', PERMISSAO_TRANSFERENCIAINTERNO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_TRANSFERENCIAINTERNO)
    and not ContemValor('E', PERMISSAO_TRANSFERENCIAINTERNO)
    and ContemValor('D', PERMISSAO_TRANSFERENCIAINTERNO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_TRANSFERENCIAINTERNO)
    and not ContemValor('E', PERMISSAO_TRANSFERENCIAINTERNO)
    and ContemValor('D', PERMISSAO_TRANSFERENCIAINTERNO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_TRANSFERENCIAINTERNO)
    and ContemValor('E', PERMISSAO_TRANSFERENCIAINTERNO)
    and not ContemValor('D', PERMISSAO_TRANSFERENCIAINTERNO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;


end;

procedure TFrmRecebimentoTransferencia.SalvarClick(Sender: TObject);
begin
  PageControlTransferencia.ActivePageIndex := 0;

  if RadioGroupAcao.ItemIndex = -1 then
  begin
    ShowMessage('Informe a "Ação ao salvar", NÃO mudou o status desta transferência.');
    exit;
  end;

  if RadioGroupAcao.ItemIndex = 0 then
  begin

    if DBLookupComboBoxPavilhao.KeyValue = null then
    begin
      PageControlTransferencia.ActivePageIndex := 0;
      ShowMessage('Informe o ' + GLOBAL_NIVEL_1 + '!');
      if DBLookupComboBoxPavilhao.canFocus then
        DBLookupComboBoxPavilhao.SetFocus;
      Exit;
    end;

    if DBLookupComboBoxGaleria.KeyValue = null then
    begin
      PageControlTransferencia.ActivePageIndex := 0;
      ShowMessage('Informe o ' + GLOBAL_NIVEL_2 + '!');
      if DBLookupComboBoxGaleria.canFocus then
        DBLookupComboBoxGaleria.SetFocus;
      Exit;
    end;

    if DBLookupComboBoxSolario.KeyValue = null then
    begin
      PageControlTransferencia.ActivePageIndex := 0;
      ShowMessage('Informe o ' + GLOBAL_NIVEL_3 + '!');
      if DBLookupComboBoxSolario.canFocus then
        DBLookupComboBoxSolario.SetFocus;
      Exit;
    end;

    if DBLookupComboBoxCela.KeyValue = null then
    begin
      PageControlTransferencia.ActivePageIndex := 0;
      ShowMessage('Informe o ' + GLOBAL_NIVEL_4 + '!');
      if DBLookupComboBoxCela.canFocus then
        DBLookupComboBoxCela.SetFocus;
      Exit;
    end;

    DsCadastro.DataSet.FieldByName('RECEBIDA').AsString := 'S';
  end;

  FrmAguarde := TFrmAguarde.Create(Application);
  with FrmAguarde do
  begin
    LblAguarde.Top := ProgressBarAguarde.Top - (LblAguarde.Height + 10);
    LblAguarde.Font.Size := 10;
    LblAguarde.Font.Color := clBlack;
    LblAguarde.Anchors := [akLeft, akBottom];
    ProgressBarAguarde.Visible := true;
    ProgressBarAguarde.Max := Dsvinc_transferencia_interno.DataSet.RecordCount;
    ProgressBarAguarde.Position := 0;
    LblAguarde.Visible := true;
    Show;
    frmaguarde.Refresh;

    if RadioGroupAcao.ItemIndex = 1 then
    begin

      DsCadastro.DataSet.FieldByName('CANCELADA').AsString := 'S';

      with Dsvinc_transferencia_interno.DataSet do
      begin

        close;
        open;

        DSHISTORICO_interno.DataSet.close;
        DSHISTORICO_interno.DataSet.open;

        first;
        while not eof do
        begin

          if FieldByName('status').AsString = '' then
          begin

            DSHISTORICO_interno.DataSet.Append;
            DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
            DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
              fieldbyname('id_interno').AsInteger;
            DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsDateTime := date;

            if DBRadioGroupTIPO_DESTINO.ItemIndex = 0 then
            begin
              DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString := 'Cancelada Transferência, que seria para ' +
                DBLookupComboBoxUPDestino.Text + ', Conforme OF/CI/DOC ' + DBEditDoc.Text + '.';
            end
            else
            begin
              DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString := 'Cancelada Transferência, que seria para ' +
                DBLookupComboBoxDestino.Text + ', Conforme OF/CI/DOC ' + DBEditDoc.Text + '.';
            end;

            DSHISTORICO_interno.DataSet.fieldbyname('IDUP').AsInteger := DBLookupComboBoxorigem.KeyValue;
            DSHISTORICO_interno.DataSet.fieldbyname('status').AsString := 'E';
            DSHISTORICO_interno.DataSet.Post;

            dm.SQLConnect.Execsql('UPDATE INTERNO SET ' +
              'st=' + qs('A') +
              ',data_saida=null' +
              ',iddestino=null' +
              ',motivo_saida=null' +
              ',cisaida=null'
              + ' WHERE ID_INTERNO = ' + fieldbyname('id_interno').Asstring);
          end;

          ProgressBarAguarde.Position := recno;
          LblAguarde.Caption := inttostr(recno) + ' de ' + inttostr(recordcount);
          lblaguarde.repaint;
          Application.ProcessMessages;
          next;

        end;
      end;

    end
    else
    begin

      with Dsvinc_transferencia_interno.DataSet do
      begin

        if Dsvinc_transferencia_interno.DataSet.RecordCount > 0 then
        begin
          First;

          while not Eof do
          begin

            if FieldByName('status').AsString = '' then
            begin

              edit;
              FieldByName('status').AsString := 'RECEBIDO';
              post;

              {lANÇANDO ENTRADA DO INTERNO NO HISTÓRICO}
              DSHISTORICO_interno.DataSet.Append;
              DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
              DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
                fieldbyname('id_interno').AsInteger;
              DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsDateTime := date;
              DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString := 'Entrada na Unidade Penal: ' +
                DBLookupComboBoxUPDestino.Text + ', Procedente ' +
                DBLookupComboBoxorigem.Text + ', Conforme OF/CI/DOC ' + DBEditDoc.Text + '.';
              DSHISTORICO_interno.DataSet.fieldbyname('status').AsString := 'E';
              DSHISTORICO_interno.DataSet.fieldbyname('IDUP').AsInteger := DBLookupComboBoxUPDestino.KeyValue;
              DSHISTORICO_interno.DataSet.Post;

              dm.SQLConnect.Execsql('UPDATE INTERNO SET ' +
                'st=' + qs('A') +
                ',data_entrada=' + qs(formatdatetime('dd.mm.yyyy', date)) +
                ',ci=' + qs(DBEditDoc.Text) +
                ',idpavilhao=' + inttostr(DBLookupComboBoxPavilhao.KeyValue) +
                ',idgaleria=' + inttostr(DBLookupComboBoxGaleria.KeyValue) +
                ',idsolario=' + inttostr(DBLookupComboBoxSolario.KeyValue) +
                ',idcela=' + inttostr(DBLookupComboBoxCela.KeyValue) +
                ',id_up=' + inttostr(GLOBAL_ID_UP) +
                ',data_saida=null' +
                ',iddestino=null' +
                ',motivo_saida=null' +
                ',cisaida=null'
                + ' WHERE ID_INTERNO = ' + fieldbyname('id_interno').Asstring);

            end;

            ProgressBarAguarde.Position := recno;
            LblAguarde.Caption := inttostr(recno) + ' de ' + inttostr(recordcount);
            lblaguarde.repaint;
            Application.ProcessMessages;
            next;

          end;
        end;
      end;
    end;

    RadioGroupAcao.ItemIndex := -1;
    LblAguarde.Caption := 'Salvando... aguarde.';
    Application.ProcessMessages;
    Salvar.Tag := 1;
    inherited;
    Salvar.Tag := 0;
    lblaguarde.repaint;
    FrmAguarde.close;
    FreeAndNil(FrmAguarde);
    ShowMessage('Registro Salvo com Sucesso!');
  end;

end;

procedure TFrmRecebimentoTransferencia.DBGrid1DblClick(Sender: TObject);
begin

  if not Dsvinc_transferencia_interno.DataSet.IsEmpty then
  begin

    if Dsvinc_transferencia_interno.DataSet.FieldByName('status').AsString <> 'FALTOU' then
    begin

      FrmCANCELARtransferencia := TFrmCANCELARtransferencia.Create(Self);
      FrmCANCELARtransferencia.Caption := 'Faltou este Interno na Transferência';
      FrmCANCELARtransferencia.LabelData.Caption := 'Data da Falta';
      FrmCANCELARtransferencia.LabelMotivo.Caption := 'Motivo da Falta';
      FrmCANCELARtransferencia.ShowModal;

      if MessageDlg('Confirma que faltou o interno: ' + Dsvinc_transferencia_interno.DataSet.fieldbyname('Interno').AsString, mtConfirmation, [mbYes,
        mbNo], 0) = mrYes then
      begin
        Dsvinc_transferencia_interno.DataSet.Edit;
        Dsvinc_transferencia_interno.DataSet.FieldByName('DATA_FALTA').AsDateTime := FrmCANCELARtransferencia.DateTimePickerDTCANCELAMENTO.date;
        Dsvinc_transferencia_interno.DataSet.fieldbyname('ID_FUNCIONARIO_FALTA').AsString :=
          FrmCANCELARtransferencia.DBLookupComboBoxfuncionario.KeyValue;
        Dsvinc_transferencia_interno.DataSet.fieldbyname('MOTIVO_FALTA').AsString := FrmCANCELARtransferencia.Memomotivocancelamento.TEXT;
        Dsvinc_transferencia_interno.DataSet.fieldbyname('STATUS').AsString := 'FALTOU';
        Dsvinc_transferencia_interno.DataSet.Post;
        ShowMessage('Foi lançado falta deste interno nesta transferência!');
      end
      else
        ShowMessage('Transação Cancelada!');

      FreeAndNil(FrmCANCELARtransferencia);

    end
    else
      ShowMessage('Este Interno já está faltando nesta transferencia!');

  end;

end;

procedure TFrmRecebimentoTransferencia.EditarClick(Sender: TObject);
begin

  if DsCadastro.DataSet.FieldByName('LIBERADA').AsString <> 'S' then
  begin
    ShowMessage('Transferência não foi liberada.');
    exit;
  end;

  if DsCadastro.DataSet.FieldByName('RECEBIDA').AsString = 'S' then
  begin
    ShowMessage('Transferência já recebida.');
    exit;
  end;

  if DsCadastro.DataSet.FieldByName('CANCELADA').AsString = 'S' then
  begin
    ShowMessage('Transferência foi cancelada.');
    exit;
  end;

  inherited;

  PageControlTransferencia.ActivePageIndex := 0;

  if not DBRadioGroupTIPO_DESTINO.CanFocus then
    exit;

  TabSheetUnidade.TabVisible := (DBRadioGroupTIPO_DESTINO.ItemIndex = 0);
  TabSheetDestino.TabVisible := not (DBRadioGroupTIPO_DESTINO.ItemIndex = 0);

  DsCadastro.DataSet.FieldByName('RECEBIDA').AsString := 'S';

end;

procedure TFrmRecebimentoTransferencia.CancelarClick(Sender: TObject);
begin
  inherited;
  Dsvinc_transferencia_interno.DataSet.close;
  Dsvinc_transferencia_interno.DataSet.open;
  PageControlTransferencia.ActivePageIndex := 0;
end;

procedure TFrmRecebimentoTransferencia.DBRadioGroupTIPO_DESTINOChange(Sender: TObject);
begin
  inherited;

  if not DBRadioGroupTIPO_DESTINO.CanFocus then
    exit;

  TabSheetUnidade.TabVisible := (DBRadioGroupTIPO_DESTINO.ItemIndex = 0);
  TabSheetDestino.TabVisible := not (DBRadioGroupTIPO_DESTINO.ItemIndex = 0);

end;

procedure TFrmRecebimentoTransferencia.DBLookupComboBoxUPDestinoExit(
  Sender: TObject);
begin
  inherited;

  if DBLookupComboBoxUPDestino.KeyValue > 0 then
  begin
    if DBLookupComboBoxUPDestino.KeyValue = GLOBAL_ID_UP then
    begin
      if DBLookupComboBoxUPDestino.CanFocus then
        DBLookupComboBoxUPDestino.SetFocus;
      ShowMessage('Unidade prisional, não pode ser a mesma!');
    end;
  end;

end;

procedure TFrmRecebimentoTransferencia.Cdsvinc_transferencia_internoCalcFields(
  DataSet: TDataSet);
begin
  inherited;

  if DataSet.fieldbyname('id_interno').Asstring <> '' then
  begin

    SqlExecute.SQL.Text := 'SELECT NOME_INTERNO, RGI FROM INTERNO WHERE id_interno=' +
      DataSet.fieldbyname('id_interno').AsString;

    SqlExecute.Close;
    SqlExecute.Open;

    DataSet.fieldbyname('Interno').AsString :=
      SqlExecute.FieldByName('nome_interno').AsString;

    DataSet.fieldbyname('RGI').AsString :=
      SqlExecute.FieldByName('RGI').AsString;

  end;

  if DataSet.fieldbyname('ID_FUNCIONARIO_FALTA').Asstring <> '' then
  begin

    SqlExecute.SQL.Text := 'SELECT NOME_FUNCIONARIO FROM FUNCIONARIO WHERE ID_FUNCIONARIO=' +
      DataSet.fieldbyname('ID_FUNCIONARIO_FALTA').AsString;

    SqlExecute.Close;
    SqlExecute.Open;

    DataSet.fieldbyname('Funcionário').AsString :=
      SqlExecute.FieldByName('NOME_FUNCIONARIO').AsString;

  end;

end;

procedure TFrmRecebimentoTransferencia.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

  if (State <> [gdSelected]) and (State <> [gdSelected, gdFocused]) then
  begin

    if (Column.Field = TDBGrid(Sender).DataSource.DataSet.FieldByName('Interno')) then
      if TDBGrid(Sender).DataSource.DataSet.FieldByName('STATUS').AsString = 'FALTOU' then
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

    if TDBGrid(Sender).DataSource.DataSet.FieldByName('STATUS').AsString = 'FALTOU' then
    begin
      DM.ImageListNetworkI.Draw(TDBGrid(Sender).Canvas, Rect.Left + 10,
        Rect.Top + 1, 25);
    end;
  end;

end;

procedure TFrmRecebimentoTransferencia.Especifico1Click(Sender: TObject);
var
  sPath: string;
begin

  try

    with DsCadastro.DataSet do
    begin

      if not Active then
      begin
        ShowMessage('Não tem registro posicionada na tela.');
        exit;
      end;

      if IsEmpty then
      begin
        ShowMessage('Não tem registro posicionada na tela.');
        exit;
      end;

      if state in [dsinsert] then
      begin
        ShowMessage('Salve este registro depois posicione nele.');
        exit;
      end;

      GLOBAL_ID_TRANSFERENCIA_INTERNO := fieldbyname('ID_TRANSFERENCIA_INTERNO').AsString;

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

procedure TFrmRecebimentoTransferencia.DBGridConsultaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  //
  if (Column.Field = TDBGrid(Sender).DataSource.DataSet.FieldByName('LIBERADA')) then
  begin

    TDBGrid(Sender).Canvas.FillRect(Rect);

    if TDBGrid(Sender).DataSource.DataSet.FieldByName('LIBERADA').AsString = '' then
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

  if (Column.Field = TDBGrid(Sender).DataSource.DataSet.FieldByName('RECEBIDA')) then
  begin

    TDBGrid(Sender).Canvas.FillRect(Rect);

    if TDBGrid(Sender).DataSource.DataSet.FieldByName('RECEBIDA').AsString = '' then
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

  if (Column.Field = TDBGrid(Sender).DataSource.DataSet.FieldByName('CANCELADA')) then
  begin

    TDBGrid(Sender).Canvas.FillRect(Rect);

    if TDBGrid(Sender).DataSource.DataSet.FieldByName('CANCELADA').AsString = '' then
    begin
      DM.ImageListSelecao.Draw(TDBGrid(Sender).Canvas, Rect.Left + 10,
        Rect.Top + 1, 0);
    end
    else
    begin
      DM.ImageListSelecao.Draw(TDBGrid(Sender).Canvas, Rect.Left + 10,
        Rect.Top + 1, 1);
    end;

  end;

end;

procedure TFrmRecebimentoTransferencia.DsCadastroDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  with DsCadastro.DataSet do
  begin

    if not active then
      exit;

    if isempty then
      exit;

    if state in [dsedit] then
    begin

      if DsConsulta.DataSet.FieldByName('RECEBIDA').AsString = 'S' then
      begin
        Cancelar.OnClick(nil);
        TabSheetConsulta.Show;
        ShowMessage('Transferência está com status de recebida.');
        exit;
      end;

      if DsConsulta.DataSet.FieldByName('CANCELADA').AsString = 'S' then
      begin
        Cancelar.OnClick(nil);
        TabSheetConsulta.Show;
        ShowMessage('Transferência está com status de cancelada.');
        exit;
      end;

      if DsConsulta.DataSet.FieldByName('LIBERADA').AsString <> 'S' then
      begin
        Cancelar.OnClick(nil);
        TabSheetConsulta.Show;
        ShowMessage('Transferência NÃO está com status de liberada.');
        exit;
      end;

      //RadioGroupAcao.Visible := true;
      RadioGroupAcao.ItemIndex := -1;
    end
    else
      //RadioGroupAcao.Visible := false;

  end;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_TRANSFERENCIAINTERNO)
    and not ContemValor('E', PERMISSAO_TRANSFERENCIAINTERNO)
    and not ContemValor('D', PERMISSAO_TRANSFERENCIAINTERNO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_TRANSFERENCIAINTERNO)
    and not ContemValor('E', PERMISSAO_TRANSFERENCIAINTERNO)
    and not ContemValor('D', PERMISSAO_TRANSFERENCIAINTERNO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_TRANSFERENCIAINTERNO)
    and ContemValor('E', PERMISSAO_TRANSFERENCIAINTERNO)
    and not ContemValor('D', PERMISSAO_TRANSFERENCIAINTERNO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_TRANSFERENCIAINTERNO)
    and ContemValor('E', PERMISSAO_TRANSFERENCIAINTERNO)
    and ContemValor('D', PERMISSAO_TRANSFERENCIAINTERNO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_TRANSFERENCIAINTERNO)
    and not ContemValor('E', PERMISSAO_TRANSFERENCIAINTERNO)
    and ContemValor('D', PERMISSAO_TRANSFERENCIAINTERNO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_TRANSFERENCIAINTERNO)
    and not ContemValor('E', PERMISSAO_TRANSFERENCIAINTERNO)
    and ContemValor('D', PERMISSAO_TRANSFERENCIAINTERNO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_TRANSFERENCIAINTERNO)
    and ContemValor('E', PERMISSAO_TRANSFERENCIAINTERNO)
    and not ContemValor('D', PERMISSAO_TRANSFERENCIAINTERNO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmRecebimentoTransferencia.RadioGroupAcaoClick(
  Sender: TObject);
begin
  inherited;
  if not RadioGroupAcao.CanFocus then
    exit;

  if RadioGroupAcao.ItemIndex = 0 then
  begin

    if MessageDlg('Confirma o RECEBIMENTO desta transferência, após salvar não será possivel reverter o processo.', mtConfirmation, [mbYes,
      mbNo], 0) <> mrYes then
    begin
      RadioGroupAcao.ItemIndex := -1;
    end;

  end;

  if RadioGroupAcao.ItemIndex = 1 then
  begin

    if MessageDlg('Confirma o cancelamento desta transferência, após salvar não será possivel reverter o processo.', mtConfirmation, [mbYes,
      mbNo], 0) <> mrYes then
    begin
      RadioGroupAcao.ItemIndex := -1;
    end;

  end;

end;

procedure TFrmRecebimentoTransferencia.Button2Click(Sender: TObject);
begin
  inherited;
  SqlConsulta.Params[0].Value := GLOBAL_ID_UP;
  SqlConsulta.Params[1].Value := DateTimePicker1.Date;

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

end;

procedure TFrmRecebimentoTransferencia.DBLookupComboBoxPavilhaoClick(
  Sender: TObject);
begin
  inherited;
  DBLookupComboBoxGaleria.KeyValue := null;
  DBLookupComboBoxSolario.KeyValue := null;
  DBLookupComboBoxCela.KeyValue := null;
end;

procedure TFrmRecebimentoTransferencia.DBLookupComboBoxGaleriaClick(
  Sender: TObject);
begin
  inherited;
  DBLookupComboBoxSolario.KeyValue := null;
  DBLookupComboBoxCela.KeyValue := null;

end;

procedure TFrmRecebimentoTransferencia.DBLookupComboBoxSolarioClick(
  Sender: TObject);
begin
  inherited;
  DBLookupComboBoxCela.KeyValue := null;

end;

procedure TFrmRecebimentoTransferencia.Liberar1Click(Sender: TObject);
begin
  inherited;
  if DsCadastro.DataSet.FieldByName('LIBERADA').AsString <> 'S' then
  begin
    ShowMessage('Transferência não foi liberada.');
    exit;
  end;

  if DsConsulta.DataSet.FieldByName('RECEBIDA').AsString = 'S' then
  begin
    Cancelar.OnClick(nil);
    TabSheetConsulta.Show;
    ShowMessage('Transferência está com status de recebida.');
    exit;
  end;

  if DsConsulta.DataSet.FieldByName('LIBERADA').AsString = 'S' then
  begin
    Cancelar.OnClick(nil);
    TabSheetConsulta.Show;
    ShowMessage('Transferência está com status de liberada.');
    exit;
  end;

  if DsConsulta.DataSet.FieldByName('CANCELADA').AsString = 'S' then
  begin
    Cancelar.OnClick(nil);
    TabSheetConsulta.Show;
    ShowMessage('Transferência está com status de cancelada.');
    exit;
  end;

  Editar.OnClick(nil);
  //RadioGroupAcao.Visible := true;
  RadioGroupAcao.ItemIndex := 0;
  Salvar.OnClick(nil);
  PageControlModeloCadastro.ActivePageIndex := 1;

end;

procedure TFrmRecebimentoTransferencia.Timer1Timer(Sender: TObject);
begin
  inherited;

  Timer1.Enabled := false;
  if RECEBE_DIRETO='S' then
  begin
    Liberar1Click(nil);
    RECEBE_DIRETO := 'N';
    close;
  end;

end;

end.

