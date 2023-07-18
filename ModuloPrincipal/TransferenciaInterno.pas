unit TransferenciaInterno;

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
  TFrmTransferenciaInterno = class(TFrmModeloCadastro)
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
    SqlConsulta: TSQLQuery;
    DspConsulta: TDataSetProvider;
    CdsConsulta: TClientDataSet;
    DsConsulta: TDataSource;
    RadioGroupAcao: TRadioGroup;
    DateTimePicker1: TDateTimePicker;
    Label5: TLabel;
    Button2: TButton;
    DBGrid2: TDBGrid;
    PopupMenuLiberar: TPopupMenu;
    Liberar1: TMenuItem;
    Label9: TLabel;
    Editprontuario: TEdit;
    DBLookupComboBoxinterno: TDBLookupComboBox;
    Button1: TButton;
    BtnTodosCela: TButton;
    DBGrid1: TDBGrid;
    DsUP: TDataSource;
    CdsUP: TClientDataSet;
    DspUP: TDataSetProvider;
    SqlUP: TSQLQuery;
    Dsconspadrao: TDataSource;
    Cdsconspadrao: TClientDataSet;
    Dspconspadrao: TDataSetProvider;
    SQLconspadrao: TSQLQuery;
    SQLhistorico_trabalho: TSQLQuery;
    dsphistorico_trabalho: TDataSetProvider;
    cdshistorico_trabalho: TClientDataSet;
    dshistorico_trabalho: TDataSource;
    SQLhistorico_estudo: TSQLQuery;
    dsphistorico_estudo: TDataSetProvider;
    cdshistorico_estudo: TClientDataSet;
    dshistorico_estudo: TDataSource;
    Label10: TLabel;
    DateTimePicker2: TDateTimePicker;
    DsDestino: TDataSource;
    DspDestino: TDataSetProvider;
    CdsDestino: TClientDataSet;
    SqlDestino: TSQLQuery;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BtnincluirClick(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EditprontuarioExit(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure DBRadioGroupTIPO_DESTINOChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBLookupComboBoxUPDestinoExit(Sender: TObject);
    procedure Cdsvinc_transferencia_internoCalcFields(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Especifico1Click(Sender: TObject);
    procedure DBGridConsultaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure RadioGroupAcaoClick(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure Button2Click(Sender: TObject);
    procedure BtnTodosCelaClick(Sender: TObject);
    procedure Liberar1Click(Sender: TObject);
    procedure PageControlModeloCadastroChange(Sender: TObject);
    procedure DBEditdataKeyPress(Sender: TObject; var Key: Char);
    procedure DBEditdataExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    function Validacao: boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTransferenciaInterno: TFrmTransferenciaInterno;

implementation

uses DmPrincipal, CadastroDestino, Lib, CancelarSaidao,
  CancelarTransferencia, MenuRelatorio, FiltroCela, Aguarde,
  RecebimentoTransferencia, ModuloPrincipal;

{$R *.dfm}

procedure TFrmTransferenciaInterno.FormShow(Sender: TObject);
begin
  inherited;
  //  DBEditdata.Field.EditMask := '99\/99\/9999;1;_';

  DsUP.DataSet.Close;
  DsUP.DataSet.OPEN;

  dm.DsDestino.DataSet.Close;
  dm.DsDestino.DataSet.OPEN;

  dm.DsInterno.DataSet.Close;
  DM.SqlInterno.Params[0].Value := GLOBAL_ID_UP;
  dm.DsInterno.DataSet.OPEN;

  DSHISTORICO_interno.DataSet.Close;
  DSHISTORICO_interno.DataSet.OPEN;

  dshistorico_trabalho.DataSet.Close;
  dshistorico_trabalho.DataSet.OPEN;

  dshistorico_estudo.DataSet.Close;
  dshistorico_estudo.DataSet.OPEN;

end;

procedure TFrmTransferenciaInterno.SpeedButton1Click(Sender: TObject);
begin
  inherited;

  FrmCadastrodestino := TFrmCadastrodestino.Create(Application);
  FrmCadastrodestino.ShowModal;
  FreeAndNil(FrmCadastrodestino);

  DM.dsdestino.DataSet.Close;
  DM.dsdestino.DataSet.OPEN;

end;

function TFrmTransferenciaInterno.Validacao(): boolean;
begin
  result := false;

  if DsCadastro.DataSet.fieldbyname('DATA').Asstring = '' then
  begin
    DBLookupComboBoxinterno.KeyValue := -1;
    showmessage('Digite a Data da Tranferência!');
    PageControlTransferencia.ActivePageIndex := 0;
    if DBEditdata.CanFocus then
      DBEditdata.SetFocus;
    Editprontuario.Text := '';
    exit;
  end;

  if DsCadastro.DataSet.fieldbyname('DATA').AsDateTime > date then
  begin
    DBLookupComboBoxinterno.KeyValue := -1;
    showmessage('A Data da Tranferência não pode ser maior que a Data de Hoje!');
    PageControlTransferencia.ActivePageIndex := 0;
    if DBEditdata.CanFocus then
      DBEditdata.SetFocus;
    Editprontuario.Text := '';
    exit;
  end;

  if DsCadastro.DataSet.fieldbyname('TIPO_DOCUMENTO').Asstring = '' then
  begin
    DBLookupComboBoxinterno.KeyValue := -1;
    showmessage('Digite o Tipo de Documento!');
    PageControlTransferencia.ActivePageIndex := 0;
    if DBComboBoxTipoDoc.CanFocus then
      DBComboBoxTipoDoc.SetFocus;
    Editprontuario.Text := '';
    exit;
  end;

  if DsCadastro.DataSet.fieldbyname('NUMERO_DOCUMENTO').Asstring = '' then
  begin
    DBLookupComboBoxinterno.KeyValue := -1;
    showmessage('Digite o Documento!');
    PageControlTransferencia.ActivePageIndex := 0;
    if DBEditDoc.CanFocus then
      DBEditDoc.SetFocus;
    Editprontuario.Text := '';
    exit;
  end;

  if TabSheetDestino.TabVisible then
  begin
    if DsCadastro.DataSet.fieldbyname('id_destino').Asstring = '' then
    begin
      DBLookupComboBoxinterno.KeyValue := -1;
      showmessage('Digite o Destino!');
      if DBLookupComboBoxdestino.CanFocus then
        DBLookupComboBoxdestino.SetFocus;
      Editprontuario.Text := '';
      exit;
    end;
  end;

  if TabSheetUnidade.TabVisible then
  begin
    if DsCadastro.DataSet.fieldbyname('id_up_destino').Asstring = '' then
    begin
      DBLookupComboBoxinterno.KeyValue := -1;
      showmessage('Digite a Unidade de Destino!');
      if DBLookupComboBoxdestino.CanFocus then
        DBLookupComboBoxdestino.SetFocus;
      Editprontuario.Text := '';
      exit;
    end;
  end;

  result := true;

end;

procedure TFrmTransferenciaInterno.BtnincluirClick(Sender: TObject);
begin
  inherited;

  if not validacao then
    exit;

  if Editprontuario.Text <> '' then
  begin

    if DBLookupComboBoxinterno.KeyValue < 0 then
    begin
      DM.SqlExecute.sql.text := 'select id_interno, nome_interno from interno where rgi =' + Qs(Editprontuario.Text)
        + ' and id_up = ' + IntToStr(GLOBAL_ID_UP) + 'and st = ''A''';
      DM.DsExecute.dataset.close;
      DM.DsExecute.dataset.open;

      if DM.DsExecute.dataset.recordcount > 0 then
        DBLookupComboBoxinterno.KeyValue := DM.DsExecute.DataSet.fieldbyname('id_interno').Asfloat;

    end;

    if Dsvinc_transferencia_interno.DataSet.Locate('ID_INTERNO', DBLookupComboBoxinterno.KeyValue, []) then
    begin
      ShowMessage('Interno ' + DBLookupComboBoxinterno.Text + ', já lançado.');
      DBLookupComboBoxinterno.KeyValue := null;
      Editprontuario.Text := '';
      if Editprontuario.CanFocus then
        Editprontuario.SetFocus;
      exit;
    end;

    {lANÇANDO A SAIDA DO INTERNO NO HISTÓRICO}
  {  DSHISTORICO_interno.DataSet.Append;
    DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
    DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
      DBLookupComboBoxinterno.KeyValue;
    DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsString := DBEditdata.text;

    if DBRadioGroupTIPO_DESTINO.ItemIndex = 0 then
    begin
      DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString := 'Saída da Unidade Penal: ' +
        DBLookupComboBoxorigem.Text + ', Motivo: Transferência de Presidio ' +
        ' Destino: ' + DBLookupComboBoxUPDestino.Text + ', Conforme Documento: ' + DBEditDoc.Text + '.';
    end
    else
    begin
      DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString := 'Saída da Unidade Penal: ' +
        DBLookupComboBoxorigem.Text + ', Motivo: Transferência de Presidio ' +
        ' Destino: ' + DBLookupComboBoxdestino.Text + ', Conforme Documento: ' + DBEditDoc.Text + '.';
    end;

    DSHISTORICO_interno.DataSet.fieldbyname('status').AsString := 'S';
    DSHISTORICO_interno.DataSet.fieldbyname('motivo_saida').AsString := 'Transferência de Presidio';
    DSHISTORICO_interno.DataSet.fieldbyname('IDUP').AsInteger := DBLookupComboBoxorigem.KeyValue;
    DSHISTORICO_interno.DataSet.Post;}

    {Lançando Preso na tabela de transferencia}
    Dsvinc_transferencia_interno.DataSet.Append;
    Dsvinc_transferencia_interno.DataSet.fieldbyname('ID_vinc_transferencia_interno').AsInteger := 0;
    Dsvinc_transferencia_interno.DataSet.fieldbyname('id_transferencia_interno').AsInteger :=
      DsCadastro.DataSet.fieldbyname('ID_TRANSFERENCIA_INTERNO').AsInteger;
    Dsvinc_transferencia_interno.DataSet.fieldbyname('id_interno').AsInteger := DBLookupComboBoxinterno.KeyValue;
    Dsvinc_transferencia_interno.DataSet.Post;

    DBLookupComboBoxinterno.KeyValue := null;
    Editprontuario.Text := '';

  end
  else
  begin
    showmessage('Informe o interno!');
  end;

end;

procedure TFrmTransferenciaInterno.NovoClick(Sender: TObject);
begin
  inherited;
  RadioGroupAcao.ItemIndex := -1;
  PageControlTransferencia.ActivePageIndex := 0;
  DsCadastro.DataSet.fieldbyname('ID_TRANSFERENCIA_INTERNO').AsInteger := DBGenerator('ID_TRANSFERENCIA_INTERNO');
  DsCadastro.DataSet.fieldbyname('ID_ORIGEM').AsInteger := GLOBAL_ID_UP;
  //DsCadastro.DataSet.FieldByName('DATA').AsDateTime := date;
  DsCadastro.DataSet.FieldByName('TIPO_DESTINO').AsString := 'U';

end;

procedure TFrmTransferenciaInterno.FormCreate(Sender: TObject);
begin
  inherited;

  SqlConsulta.Params[0].Value := GLOBAL_ID_UP;
  SqlConsulta.Params[1].Value := date;
  DateTimePicker1.Date := date;

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

  DsDestino.DataSet.Close;
  DsDestino.DataSet.Open;

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

procedure TFrmTransferenciaInterno.EditprontuarioExit(Sender: TObject);
begin

  inherited;

  if Editprontuario.Text <> '' then
  begin

    DM.SqlExecute.sql.text := 'select id_interno, nome_interno from interno where rgi =' + Qs(Editprontuario.Text)
      + ' and id_up = ' + IntToStr(GLOBAL_ID_UP) + 'and st = ''A''';
    DM.DsExecute.dataset.close;
    DM.DsExecute.dataset.open;

    if DM.DsExecute.dataset.recordcount > 0 then
    begin
      DBLookupComboBoxinterno.KeyValue := DM.DsExecute.DataSet.fieldbyname('id_interno').Asfloat;
      BtnincluirClick(nil);
      if Editprontuario.canfocus then
        Editprontuario.SetFocus;
    end
    else
    begin
      showmessage('Interno não Localizado!');
      if Editprontuario.canfocus then
        Editprontuario.SetFocus;
    end;

    DM.DsExecute.dataset.close;

  end;

end;

procedure TFrmTransferenciaInterno.SalvarClick(Sender: TObject);
var
  var_id_trans: integer;
begin
  PageControlTransferencia.ActivePageIndex := 0;

  if RadioGroupAcao.ItemIndex = 0 then
  begin
    DsCadastro.DataSet.FieldByName('LIBERADA').AsString := 'S';
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
            Edit;
            FieldByName('STATUS').AsString := 'CANCELADO';
            post;

            DSHISTORICO_interno.DataSet.Append;
            DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
            DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
              fieldbyname('id_interno').AsInteger;
            DSHISTORICO_interno.DataSet.fieldbyname('data_hora').Asstring := DBEditdata.text;

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
        first;
        while not eof do
        begin
          ProgressBarAguarde.Position := recno;
          LblAguarde.Caption := inttostr(recno) + ' de ' + inttostr(recordcount);
          lblaguarde.repaint;
          Application.ProcessMessages;
          next;
        end;
      end;
    end;
    RadioGroupAcao.ItemIndex := -1;
    LblAguarde.Caption := 'Salvando... aguarde.';
    Application.ProcessMessages;
    Salvar.Tag := 1;
    //saber quem é
    var_id_trans := DsCadastro.DataSet.fieldbyname('ID_TRANSFERENCIA_INTERNO').AsInteger;

    inherited;
    Salvar.Tag := 0;
    lblaguarde.repaint;
    FrmAguarde.close;
    FreeAndNil(FrmAguarde);

    DsConsulta.DataSet.Close;
    DsConsulta.DataSet.Open;
    if DsConsulta.DataSet.Locate('ID_TRANSFERENCIA_INTERNO', var_id_trans, []) then
    begin
      if Application.MessageBox('Confirma: Saída na Origem / Entrada no Destino?',
        'Confirme.', mb_YesNo + Mb_IconQuestion) = idYes then
      begin
        //laco pegar o idtransferencia;
        Liberar1Click(nil);
      end;
    end;

    ShowMessage('Registro Salvo com Sucesso!');
  end;
end;

procedure TFrmTransferenciaInterno.DBGrid1DblClick(Sender: TObject);
begin
  if not Dsvinc_transferencia_interno.DataSet.IsEmpty then
  begin

    if Dsvinc_transferencia_interno.DataSet.FieldByName('status').AsString <> 'CANCELADO' then
    begin

      FrmCANCELARtransferencia := TFrmCANCELARtransferencia.Create(Self);
      FrmCANCELARtransferencia.ShowModal;

      if MessageDlg('Confirma Cancelamento de ' + Dsvinc_transferencia_interno.DataSet.fieldbyname('Interno').AsString, mtConfirmation, [mbYes,
        mbNo], 0) = mrYes then
      begin
        Dsvinc_transferencia_interno.DataSet.Edit;
        Dsvinc_transferencia_interno.DataSet.FieldByName('DATA_CANCELAMENTO').AsDateTime := FrmCANCELARtransferencia.DateTimePickerDTCANCELAMENTO.date;
        Dsvinc_transferencia_interno.DataSet.fieldbyname('ID_FUNCIONARIO_CANCELAMENTO').AsString :=
          FrmCANCELARtransferencia.DBLookupComboBoxfuncionario.KeyValue;
        Dsvinc_transferencia_interno.DataSet.fieldbyname('MOTIVO_CANCELAMENTO').AsString := FrmCANCELARtransferencia.Memomotivocancelamento.TEXT;
        Dsvinc_transferencia_interno.DataSet.fieldbyname('STATUS').AsString := 'CANCELADO';
        Dsvinc_transferencia_interno.DataSet.Post;
        ShowMessage('Interno cancelado na transferência!');
      end
      else
        ShowMessage('Transação Cancelada!');

      FreeAndNil(FrmCANCELARtransferencia);

    end
    else
      ShowMessage('Transferência Cancelada Para Este Interno!');

  end;
end;

procedure TFrmTransferenciaInterno.EditarClick(Sender: TObject);
begin
  inherited;
  RadioGroupAcao.ItemIndex := -1;

  PageControlTransferencia.ActivePageIndex := 0;

  if not DBRadioGroupTIPO_DESTINO.CanFocus then
    exit;

  TabSheetUnidade.TabVisible := (DBRadioGroupTIPO_DESTINO.ItemIndex = 0);

  TabSheetDestino.TabVisible := not (DBRadioGroupTIPO_DESTINO.ItemIndex = 0);

end;

procedure TFrmTransferenciaInterno.CancelarClick(Sender: TObject);
begin
  inherited;
  Dsvinc_transferencia_interno.DataSet.close;
  Dsvinc_transferencia_interno.DataSet.open;

  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.Open;

  PageControlTransferencia.ActivePageIndex := 0;

end;

procedure TFrmTransferenciaInterno.DBRadioGroupTIPO_DESTINOChange(Sender: TObject);
begin
  inherited;

  if not DBRadioGroupTIPO_DESTINO.CanFocus then
    exit;

  TabSheetUnidade.TabVisible := (DBRadioGroupTIPO_DESTINO.ItemIndex = 0);
  TabSheetDestino.TabVisible := not (DBRadioGroupTIPO_DESTINO.ItemIndex = 0);

end;

procedure TFrmTransferenciaInterno.Button1Click(Sender: TObject);
var
  interno: variant;
begin
  inherited;
  interno := BuscaGeral(nil, 'INTERNO', '', 100, 100, self.Width, 400);
  if VarToStrDef(interno, '') <> '' then
  begin
    DBLookupComboBoxInterno.KeyValue := interno;
    Editprontuario.Text := DM.DsInterno.dataset.fieldbyname('RGI').asstring;
    if Editprontuario.CanFocus then
      Editprontuario.SetFocus;
  end;

end;

procedure TFrmTransferenciaInterno.DBLookupComboBoxUPDestinoExit(
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

procedure TFrmTransferenciaInterno.Cdsvinc_transferencia_internoCalcFields(
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

  if DataSet.fieldbyname('ID_FUNCIONARIO_CANCELAMENTO').Asstring <> '' then
  begin

    SqlExecute.SQL.Text := 'SELECT NOME_FUNCIONARIO FROM FUNCIONARIO WHERE ID_FUNCIONARIO=' +
      DataSet.fieldbyname('ID_FUNCIONARIO_CANCELAMENTO').AsString;

    SqlExecute.Close;
    SqlExecute.Open;

    DataSet.fieldbyname('Funcionário').AsString :=
      SqlExecute.FieldByName('NOME_FUNCIONARIO').AsString;

  end;

end;

procedure TFrmTransferenciaInterno.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

  if (State <> [gdSelected]) and (State <> [gdSelected, gdFocused]) then
  begin

    if (Column.Field = TDBGrid(Sender).DataSource.DataSet.FieldByName('Interno')) then
      if TDBGrid(Sender).DataSource.DataSet.FieldByName('STATUS').AsString = 'CANCELADO' then
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

    if TDBGrid(Sender).DataSource.DataSet.FieldByName('STATUS').AsString = 'CANCELADO' then
    begin
      DM.ImageListNetworkI.Draw(TDBGrid(Sender).Canvas, Rect.Left + 10,
        Rect.Top + 1, 25);
    end;
  end;

end;

procedure TFrmTransferenciaInterno.Especifico1Click(Sender: TObject);
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

procedure TFrmTransferenciaInterno.DBGridConsultaDrawColumnCell(
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

procedure TFrmTransferenciaInterno.RadioGroupAcaoClick(Sender: TObject);
begin
  inherited;
  if not RadioGroupAcao.CanFocus then
    exit;

  if RadioGroupAcao.ItemIndex = 0 then
  begin

    if MessageDlg('Confirma a liberação desta transferência para recebimento, após salvar não será possivel reverter o processo.', mtConfirmation, [mbYes,
      mbNo], 0) <> mrYes then
    begin
      RadioGroupAcao.ItemIndex := -1;
    end;

  end;

  if RadioGroupAcao.ItemIndex = 1 then
  begin

    if DsCadastro.DataSet.State in [dsinsert] then
    begin
      showmessage('Transferência é nova, e não foi salva ainda.');
      RadioGroupAcao.ItemIndex := -1;
    end;

    if MessageDlg('Confirma o cancelamento desta transferência, após salvar não será possivel reverter o processo.', mtConfirmation, [mbYes,
      mbNo], 0) <> mrYes then
    begin
      RadioGroupAcao.ItemIndex := -1;
    end;

  end;

end;

procedure TFrmTransferenciaInterno.DsCadastroDataChange(Sender: TObject;
  Field: TField);
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
      // RadioGroupAcao.Visible := true;
      RadioGroupAcao.ItemIndex := -1;
    end
    else
      // RadioGroupAcao.Visible := false;

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

procedure TFrmTransferenciaInterno.Button2Click(Sender: TObject);
begin
  inherited;

  SqlConsulta.Params[0].Value := GLOBAL_ID_UP;
  SqlConsulta.Params[1].Value := DateTimePicker1.Date;
  DsConsulta.DataSet.filter := ' T.DATA<=' + Qs(FormatDateTime('dd.mm.yyyy', DateTimePicker2.Date));

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

end;

procedure TFrmTransferenciaInterno.BtnTodosCelaClick(Sender: TObject);
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
      SqlInterno.SQL.Text := 'select id_interno, rgi from interno where st=''A'' and nome_interno<>'''' and idcela=' +
        inttostr(FrmFiltroCela.DBLookupComboBoxCela.KeyValue);

      with DsInterno.DataSet do
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

procedure TFrmTransferenciaInterno.Liberar1Click(Sender: TObject);
begin
  inherited;
  if DsCadastro.DataSet.FieldByName('RECEBIDA').AsString = 'S' then
  begin
    Cancelar.OnClick(nil);
    TabSheetConsulta.Show;
    ShowMessage('Transferência está com status de recebida.');
    exit;
  end;

  //  if DsConsulta.DataSet.FieldByName('LIBERADA').AsString = 'S' then
  //  begin
  //    Cancelar.OnClick(nil);
  //    TabSheetConsulta.Show;
  //    ShowMessage('Transferência está com status de liberada.');
  //    exit;
  //  end;
  //

  if DsCadastro.DataSet.FieldByName('CANCELADA').AsString = 'S' then
  begin
    Cancelar.OnClick(nil);
    TabSheetConsulta.Show;
    ShowMessage('Transferência está com status de cancelada.');
    exit;
  end;

  if DBRadioGroupTIPO_DESTINO.ItemIndex = 0 then
  begin

    SQLconspadrao.sql.text := 'select * from padrao where (id_pavilhao+id_galeria+id_solario+id_cela) is not null and cod_up ='
      + vartostrdef(DBLookupComboBoxUPDestino.KeyValue, '0');

    dsconspadrao.dataset.close;
    dsconspadrao.dataset.open;

    if dsconspadrao.dataset.IsEmpty then
    begin
      showmessage('Destino: ' + DBLookupComboBoxUPDestino.Text + ' não tem cela padrão! Transferência Não Realizada!');
      Cancelar.OnClick(nil);
      exit;
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

    //  CDSHISTORICO_interno.OnReconcileError := ClientDataSetReconcileError;

      with Dsvinc_transferencia_interno.DataSet do
      begin
        first;
        Screen.Cursor := crSQLWait;
        IniciaTransMovimento;
        try

          while not eof do
          begin

            ProgressBarAguarde.Position := recno;
            LblAguarde.Caption := inttostr(recno) + ' de ' + inttostr(recordcount);
            lblaguarde.repaint;
            Application.ProcessMessages;

            {LANÇANDO SAIDA DO INTERNO NO HISTÓRICO}
            DSHISTORICO_interno.DataSet.Append;
            DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
            DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
              fieldbyname('id_interno').AsInteger;
            DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsString := formatdatetime('dd/mm/yyy', strtodate(DBEditdata.text));
            DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString := 'Saída da Unidade Penal: ' +
              DBLookupComboBoxorigem.Text + ', Destino: ' + DBLookupComboBoxUPDestino.Text + ', Motivo: ' + dbmemo1.Text +
              ', Conforme ' + DBComboBoxTipoDoc.Text + ' ' + DBEditDoc.Text + '.';
            DSHISTORICO_interno.DataSet.fieldbyname('status').AsString := 'S';
            DSHISTORICO_interno.DataSet.fieldbyname('IDUP').AsInteger := DBLookupComboBoxorigem.KeyValue;
            DSHISTORICO_interno.DataSet.fieldbyname('motivo_saida').AsString := 'Transferência de Presidio';
            DSHISTORICO_interno.DataSet.Post;
            CDSHISTORICO_interno.ApplyUpdates(-1);

            dm.SQLConnect.Execsql('UPDATE INTERNO SET ' +
              'st=' + qs('I') +
              ',data_saida=' + qs(formatdatetime('dd.mm.yyy', strtodate(DBEditdata.text))) +
              ',ci=' + qs(DBEditDoc.Text) +
              ',motivo_saida=' + qs('Transferência entre Unidades') +
              ',cisaida=' + qs(DBEditDoc.text) +
              ',DOC_TRABALHO=null' +
              ',DATA_SETOR=null' +
              ',ID_FUNCAOINTERNO=null' +
              ',ID_LOCAL_TRABALHO=null' +
              ',IDSETOR_TRABALHO=null' +
              ',OBSTRABALHO=null' +
              ',data_matricula=null' +
              ',IDSERIEESTUDO=null' +
              ',TURMA=null' +
              ',deficiencia=null' +
              ',PERIODO=null' +
              ',NUMERO_ROUPA=null' +
              ',OBSEDUCACAO=null'
              + ' WHERE ID_INTERNO = ' + fieldbyname('id_interno').Asstring);

            dm.SQLConnect.Execsql('UPDATE INTERNO SET ' +
              'st=' + qs('A') +
              ',data_entrada=' + qs(formatdatetime('dd.mm.yyyy', strtodate(DBEditdata.text))) +
              ',ci=' + qs(DBEditDoc.Text) +
              ',idpavilhao=' + dsconspadrao.DataSet.fieldbyname('id_pavilhao').AsString +
              ',idgaleria=' + dsconspadrao.DataSet.fieldbyname('id_galeria').AsString +
              ',idsolario=' + dsconspadrao.DataSet.fieldbyname('id_solario').AsString +
              ',idcela=' + dsconspadrao.DataSet.fieldbyname('id_cela').AsString +
              //         ',id_procedencia=' + inttostr(DBLookupComboBoxorigem.KeyValue) +
              ',id_up=' + inttostr(DBLookupComboBoxUPDestino.KeyValue) +
              ',data_saida=null' +
              ',iddestino=null' +
              ',motivo_saida=null' +
              ',cisaida=null'
              + ' WHERE ID_INTERNO = ' + fieldbyname('id_interno').Asstring);

            DSHISTORICO_interno.DataSet.Append;
            DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
            DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
              fieldbyname('id_interno').AsInteger;
            DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsString := formatdatetime('dd/mm/yyy', strtodate(DBEditdata.text));
            DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString := 'Entrada na Unidade Penal: ' +
              DBLookupComboBoxUPDestino.Text + ', Procedente: ' +
              DBLookupComboBoxorigem.Text + ', Conforme ' + DBComboBoxTipoDoc.Text + ' ' + DBEditDoc.Text + '.';
            DSHISTORICO_interno.DataSet.fieldbyname('status').AsString := 'E';
            DSHISTORICO_interno.DataSet.fieldbyname('IDUP').AsInteger := DBLookupComboBoxUPDestino.KeyValue;
            DSHISTORICO_interno.DataSet.Post;

            {Fazendo saida do interno na tabela historico_trabalho}
            SQLhistorico_trabalho.SQL.Text := 'select * from historico_trabalho where coalesce(data_saida,'' + '')='' + '' and id_interno =' +
              fieldbyname('id_interno').asstring;

            dshistorico_trabalho.DataSet.close;
            dshistorico_trabalho.DataSet.Open;

            if dshistorico_trabalho.DataSet.RecordCount > 0 then
            begin
              dshistorico_trabalho.DataSet.Edit;
              dshistorico_trabalho.DataSet.FieldByName('data_saida').AsString := formatdatetime('dd/mm/yyy', strtodate(DBEditdata.text));
              dshistorico_trabalho.DataSet.FieldByName('motivo_saida').AsString := 'Saida do Presídio ' +
                DBLookupComboBoxorigem.Text;
              dshistorico_trabalho.DataSet.post;
            end;

            {Fazendo saida do interno na tabela historico_educacao}
            SQLhistorico_estudo.SQL.Text := 'select * from historico_estudo where coalesce(data_saida,'' + '')='' + '' and id_interno =' +
              fieldbyname('id_interno').asstring;

            dshistorico_estudo.DataSet.close;
            dshistorico_estudo.DataSet.Open;

            if dshistorico_estudo.DataSet.RecordCount > 0 then
            begin

              dshistorico_estudo.DataSet.Edit;
              dshistorico_estudo.DataSet.FieldByName('data_saida').AsString := formatdatetime('dd/mm/yyy', strtodate(DBEditdata.text));
              dshistorico_estudo.DataSet.FieldByName('motivo_saida').AsString := 'Saida do Presídio ' +
                DBLookupComboBoxorigem.Text;
              dshistorico_estudo.DataSet.post;

              dshistorico_estudo.DataSet.Append;
              dshistorico_estudo.DataSet.fieldbyname('id_historico_estudo').AsInteger := 0;
              dshistorico_estudo.DataSet.fieldbyname('id_interno').AsString := fieldbyname('id_interno').asstring;
              dshistorico_estudo.DataSet.fieldbyname('data_historico').AsDateTime :=
                DsCadastro.DataSet.fieldbyname('data').AsDateTime;
              dshistorico_estudo.DataSet.FieldByName('historico').AsString := 'Cancelamento de Matrícula. Saida do Presidio';
              dshistorico_estudo.DataSet.Post;

            end;

            Application.ProcessMessages;

            next;
          end;

          CDSHISTORICO_interno.ApplyUpdates(-1);
          Cdsvinc_transferencia_interno.ApplyUpdates(-1);
          cdshistorico_trabalho.ApplyUpdates(-1);
          cdshistorico_estudo.ApplyUpdates(-1);

          LblAguarde.Caption := 'Salvando... aguarde.';

          dm.SQLConnect.Execsql('UPDATE TRANSFERENCIA_INTERNO SET LIBERADA=''S'', RECEBIDA=''S'''
            + ' WHERE ID_TRANSFERENCIA_INTERNO = ' + DsConsulta.DataSet.fieldbyname('ID_TRANSFERENCIA_INTERNO').AsString);

          Application.ProcessMessages;

          FinalizaTransMovimento;

        except
          on e: Exception do
          begin
            FrmAguarde.close;
            FreeAndNil(FrmAguarde);
            CancelaTransMovimento;
            ShowMessage('Inconsistência nos dados:' + TrataExceptionErro(e.Message));

          end;
        end;
        Screen.Cursor := crDefault;

      end;
    end;

    DsConsulta.DataSet.Close;
    DsConsulta.DataSet.Open;

    DsCadastro.DataSet.Close;
    DsCadastro.DataSet.Open;

    if assigned(FrmAguarde) then
    begin
      FrmAguarde.close;
      FreeAndNil(FrmAguarde);
    end;
    PageControlModeloCadastro.ActivePageIndex := 1;

  end
  else
  begin

    //saida da cadeia

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

    //  CDSHISTORICO_interno.OnReconcileError := ClientDataSetReconcileError;

      with Dsvinc_transferencia_interno.DataSet do
      begin
        first;
        Screen.Cursor := crSQLWait;
        IniciaTransMovimento;
        try

          while not eof do
          begin

            ProgressBarAguarde.Position := recno;
            LblAguarde.Caption := inttostr(recno) + ' de ' + inttostr(recordcount);
            lblaguarde.repaint;
            Application.ProcessMessages;

            {lANÇANDO SAIDA DO INTERNO NO HISTÓRICO}
            DSHISTORICO_interno.DataSet.Append;
            DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
            DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
              fieldbyname('id_interno').AsInteger;
            DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsDateTime := DsCadastro.DataSet.fieldbyname('data').AsDateTime;
            DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString := 'Saída da Unidade Penal: ' +
              DBLookupComboBoxorigem.Text + ', Destino: ' +
              DBLookupComboBoxdestino.Text + ', Motivo: ' + dbmemo1.Text +
              ', Conforme ' + DBComboBoxTipoDoc.Text + ' ' + DBEditDoc.Text + '.';
            DSHISTORICO_interno.DataSet.fieldbyname('status').AsString := 'S';
            DSHISTORICO_interno.DataSet.fieldbyname('IDUP').AsInteger := DBLookupComboBoxorigem.KeyValue;
            DSHISTORICO_interno.DataSet.Post;
            CDSHISTORICO_interno.ApplyUpdates(-1);

            dm.SQLConnect.Execsql('UPDATE INTERNO SET ' +
              'st=' + qs('I') +
              ',data_saida=' + qs(formatdatetime('dd.mm.yyyy', strtodate(DBEditdata.text))) +
              ',ci=' + qs(DBEditDoc.Text) +
              ',motivo_saida=' + qs('Saída: ' + DBLookupComboBoxdestino.Text) +
              ',cisaida=' + qs(DBEditDoc.text) +
              ',DOC_TRABALHO=null' +
              ',DATA_SETOR=null' +
              ',ID_FUNCAOINTERNO=null' +
              ',ID_LOCAL_TRABALHO=null' +
              ',IDSETOR_TRABALHO=null' +
              ',OBSTRABALHO=null' +
              ',data_matricula=null' +
              ',IDSERIEESTUDO=null' +
              ',TURMA=null' +
              ',deficiencia=null' +
              ',PERIODO=null' +
              ',OBSEDUCACAO=null'
              + ' WHERE ID_INTERNO = ' + fieldbyname('id_interno').Asstring);

            {Fazendo saida do interno na tabela historico_trabalho}
            SQLhistorico_trabalho.SQL.Text := 'select * from historico_trabalho where coalesce(data_saida,'' + '')='' + '' and id_interno =' +
              fieldbyname('id_interno').asstring;

            dshistorico_trabalho.DataSet.close;
            dshistorico_trabalho.DataSet.Open;

            if dshistorico_trabalho.DataSet.RecordCount > 0 then
            begin
              dshistorico_trabalho.DataSet.Edit;
              dshistorico_trabalho.DataSet.FieldByName('data_saida').AsString := DsCadastro.DataSet.fieldbyname('data').Asstring;
              dshistorico_trabalho.DataSet.FieldByName('motivo_saida').AsString := 'Saida do Presídio';
              dshistorico_trabalho.DataSet.post;
            end;

            {Fazendo saida do interno na tabela historico_educacao}
            SQLhistorico_estudo.SQL.Text := 'select * from historico_estudo where coalesce(data_saida,'' + '')='' + '' and id_interno =' +
              fieldbyname('id_interno').asstring;

            dshistorico_estudo.DataSet.close;
            dshistorico_estudo.DataSet.Open;

            if dshistorico_estudo.DataSet.RecordCount > 0 then
            begin

              dshistorico_estudo.DataSet.Edit;
              dshistorico_estudo.DataSet.FieldByName('data_saida').AsString := DsCadastro.DataSet.fieldbyname('data').AsString;
              ;
              dshistorico_estudo.DataSet.FieldByName('motivo_saida').AsString := 'Saida do Presídio';
              dshistorico_estudo.DataSet.post;

              dshistorico_estudo.DataSet.Append;
              dshistorico_estudo.DataSet.fieldbyname('id_historico_estudo').AsInteger := 0;
              dshistorico_estudo.DataSet.fieldbyname('id_interno').AsString := fieldbyname('id_interno').asstring;
              dshistorico_estudo.DataSet.fieldbyname('data_historico').AsDateTime := DsCadastro.DataSet.fieldbyname('data').AsDateTime;
              dshistorico_estudo.DataSet.FieldByName('historico').AsString := 'Cancelamento de Matrícula. Saida do Presidio';
              dshistorico_estudo.DataSet.Post;
            end;

            Application.ProcessMessages;

            next;
          end;

          CDSHISTORICO_interno.ApplyUpdates(-1);
          Cdsvinc_transferencia_interno.ApplyUpdates(-1);
          cdshistorico_trabalho.ApplyUpdates(-1);
          cdshistorico_estudo.ApplyUpdates(-1);

          LblAguarde.Caption := 'Salvando... aguarde.';

          dm.SQLConnect.Execsql('UPDATE TRANSFERENCIA_INTERNO SET LIBERADA=''S'', RECEBIDA=''S'' ' +
            ' WHERE ID_TRANSFERENCIA_INTERNO = ' + DsConsulta.DataSet.fieldbyname('ID_TRANSFERENCIA_INTERNO').AsString);

          Application.ProcessMessages;

          FinalizaTransMovimento;

        except
          on e: Exception do
          begin
            FrmAguarde.close;
            FreeAndNil(FrmAguarde);
            CancelaTransMovimento;
            ShowMessage('Inconsistência nos dados:' + TrataExceptionErro(e.Message));
          end;
        end;

        Screen.Cursor := crDefault;

      end;
    end;

    DsConsulta.DataSet.Close;
    DsConsulta.DataSet.Open;

    DsCadastro.DataSet.Close;
    DsCadastro.DataSet.Open;

    if assigned(FrmAguarde) then
    begin
      FrmAguarde.close;
      FreeAndNil(FrmAguarde);
    end;
    PageControlModeloCadastro.ActivePageIndex := 1;

  end;

end;

procedure TFrmTransferenciaInterno.PageControlModeloCadastroChange(
  Sender: TObject);
begin
  //inherited;
  if PageControlModeloCadastro.ActivePageIndex = 1 then
  begin
    CancelarClick(nil);
  end;
end;

procedure TFrmTransferenciaInterno.DBEditdataKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  ValidaDataKeyPress(Sender, Key);
end;

procedure TFrmTransferenciaInterno.DBEditdataExit(Sender: TObject);
begin
  inherited;
  ValidaDataExit(Sender);
end;

procedure TFrmTransferenciaInterno.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrmModuloPrincipal.frxReport1.PrepareReport;
end;

end.

