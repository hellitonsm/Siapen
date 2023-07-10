unit SaidaoCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls,
  ToolWin, Mask, Buttons, Menus, adpDBDateTimePicker;

type
  TFrmSaidaoCadastro = class(TFrmModeloCadastro)
    Label2: TLabel;
    DBEditcodigo: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    adpDBDateTimePicker1: TadpDBDateTimePicker;
    adpDBDateTimePicker2: TadpDBDateTimePicker;
    DBLookupComboBox2: TDBLookupComboBox;
    adpDBDateTimePicker3: TadpDBDateTimePicker;
    DSPvinc_saidao: TDataSetProvider;
    cdsvinc_saidao: TClientDataSet;
    dsvinc_saidao: TDataSource;
    SQLvinc_saidao: TSQLQuery;
    cdsvinc_saidaoID_VINC_SAIDAO: TIntegerField;
    cdsvinc_saidaoID_SAIDAO: TIntegerField;
    cdsvinc_saidaoID_INTERNO: TIntegerField;
    cdsvinc_saidaoID_FUNCIONARIO_CANCELAMENTO: TIntegerField;
    cdsvinc_saidaoSTATUS: TStringField;
    cdsvinc_saidaoDATA_CANCELAMENTO: TSQLTimeStampField;
    cdsvinc_saidaoMOTIVO_CANCELAMENTO: TStringField;
    cdsvinc_saidaoInterno: TStringField;
    cdsvinc_saidaoPronturio: TStringField;
    cdsvinc_saidaoFuncionario: TStringField;
    DBLookupComboBox3: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    lbl9: TLabel;
    DBEditHORA: TDBEdit;
    Label11: TLabel;
    adpDBDateTimePicker4: TadpDBDateTimePicker;
    procedure NovoClick(Sender: TObject);
    procedure EditprontuarioExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BtnincluirClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSaidaoCadastro: TFrmSaidaoCadastro;

implementation

uses DmPrincipal, Lib, CancelarSaidao, ConclusaoCD, TipoSaidao, Aguarde;

{$R *.dfm}

procedure TFrmSaidaoCadastro.NovoClick(Sender: TObject);
begin
  inherited;

  DsCadastro.DataSet.fieldbyname('id_saidao').AsInteger := DBGenerator('ID_saidao');
  DsCadastro.DataSet.fieldbyname('id_up').AsInteger := GLOBAL_ID_UP;
  DsCadastro.DataSet.fieldbyname('id_funcionario').AsInteger := GLOBAL_ID_FUNCIONARIO;
  DsCadastro.DataSet.FieldByName('HORA_saida').AsString := FormatDateTime('hh:mm', Now);

  dsvinc_saidao.DataSet.Close;
  dsvinc_saidao.DataSet.Open;

  if dbedit2.canfocus then
    dbedit2.SetFocus;

end;

procedure TFrmSaidaoCadastro.EditprontuarioExit(Sender: TObject);
begin
  inherited;
{  if Editprontuario.Text <> '' then
  begin

    DM.SqlExecute.sql.text := 'select id_interno, nome_interno from interno where rgi =' + Qs(Editprontuario.Text) + ' and id_up = ' + IntToStr(GLOBAL_ID_UP);
    DM.DsExecute.dataset.close;
    DM.DsExecute.dataset.open;

    if DM.DsExecute.dataset.recordcount > 0 then
    begin
      DBLookupComboBoxinterno.KeyValue := DM.DsExecute.DataSet.fieldbyname('id_interno').Asfloat;
      BtnincluirClick(nil);
    end
    else
    begin
      showmessage('Interno não Localizado!');
      if Editprontuario.canfocus then
        Editprontuario.setfocus;
    end;
    DM.DsExecute.dataset.close;

    if Editprontuario.canfocus then
      editprontuario.setfocus;
  end;}

end;

procedure TFrmSaidaoCadastro.FormCreate(Sender: TObject);
begin
  inherited;

  DsCadastro.DataSet.Close;
  SqlCadastro.Params[0].Value := GLOBAL_ID_UP;
  DsCadastro.DataSet.OPEN;

  Dsvinc_saidao.DataSet.Close;
  Dsvinc_saidao.DataSet.OPEN;

  dm.Dstiposaidao.DataSet.Close;
  dm.Dstiposaidao.DataSet.Open;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_SAIDAO)
    and not ContemValor('E', PERMISSAO_SAIDAO)
    and not ContemValor('D', PERMISSAO_SAIDAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SAIDAO)
    and not ContemValor('E', PERMISSAO_SAIDAO)
    and not ContemValor('D', PERMISSAO_SAIDAO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SAIDAO)
    and ContemValor('E', PERMISSAO_SAIDAO)
    and not ContemValor('D', PERMISSAO_SAIDAO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SAIDAO)
    and ContemValor('E', PERMISSAO_SAIDAO)
    and ContemValor('D', PERMISSAO_SAIDAO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SAIDAO)
    and not ContemValor('E', PERMISSAO_SAIDAO)
    and ContemValor('D', PERMISSAO_SAIDAO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SAIDAO)
    and not ContemValor('E', PERMISSAO_SAIDAO)
    and ContemValor('D', PERMISSAO_SAIDAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SAIDAO)
    and ContemValor('E', PERMISSAO_SAIDAO)
    and not ContemValor('D', PERMISSAO_SAIDAO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmSaidaoCadastro.FormShow(Sender: TObject);
begin
  inherited;

  dm.DsUP.DataSet.Close;
  dm.DsUP.DataSet.OPEN;

  dm.DsFuncionarioLista.DataSet.Close;
  dm.DsFuncionarioLista.DataSet.OPEN;

  dm.DsInterno.DataSet.Close;
  DM.SqlInterno.Params[0].Value := GLOBAL_ID_UP;
  dm.DsInterno.DataSet.OPEN;
  DBGridConsulta.SelectedIndex := 1;

end;

procedure TFrmSaidaoCadastro.DBGrid1DblClick(Sender: TObject);
var
  cod: integer;
begin
  cod := dsvinc_saidao.DataSet.FieldByName('id_vinc_saidao').AsInteger;

  if dsvinc_saidao.DataSet.Locate('id_vinc_saidao', cod, []) = true then
  begin

    if dsvinc_saidao.DataSet.FieldByName('status').AsString <> 'CANCELADO' then
    begin

      FrmCANCELARSAIDAO := tFrmCANCELARSAIDAO.Create(Self);
      FrmCANCELARSAIDAO.ShowModal;

      if MessageDlg('Confirma Cancelamento ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        dsvinc_saidao.DataSet.Edit;
        dsvinc_saidao.DataSet.FieldByName('data_cancelamento').AsDateTime := FrmCancelarSaidao.DateTimePickerDTCANCELAMENTO.date;
        dsvinc_saidao.DataSet.fieldbyname('id_funcionario_cancelamento').AsString := FrmCancelarSaidao.DBLookupComboBoxfuncionario.KeyValue;
        dsvinc_saidao.DataSet.fieldbyname('motivo_cancelamento').AsString := FrmCancelarSaidao.Memomotivocancelamento.TEXT;
        dsvinc_saidao.DataSet.fieldbyname('status').AsString := 'CANCELADO';
        dsvinc_saidao.DataSet.Post;
      end
      else
        ShowMessage('Transação Cancelada!');
    end
    else
      ShowMessage('Saidão Já Cancelado Para Este Interno!');
  end;
end;

procedure TFrmSaidaoCadastro.SalvarClick(Sender: TObject);
begin
  Dsvinc_saidao.DataSet.DisableControls;
  inherited;
  Dsvinc_saidao.DataSet.EnableControls;

  dsvinc_saidao.DataSet.Close;
  dsvinc_saidao.DataSet.Open;

end;

procedure TFrmSaidaoCadastro.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  frmtiposaidao := tfrmtiposaidao.Create(Application);
  FrmTipoSaidao.ShowModal;
  FreeAndNil(FrmTipoSaidao);

  dm.Dstiposaidao.DataSet.Close;
  dm.Dstiposaidao.DataSet.Open;
end;

procedure TFrmSaidaoCadastro.Button1Click(Sender: TObject);
var
  interno: variant;
begin
  inherited;
{
  interno := BuscaGeral(nil, 'INTERNO', '', 100, 100, 1100, 400);
  if VarToStrDef(interno, '') <> '' then
  begin
    DBLookupComboBoxInterno.KeyValue := interno;
    //DsCadastro.DataSet.FieldByName('ID_INTERNO').AsInteger := DBLookupComboBoxInterno.KeyValue;
    BtnincluirClick(nil);
  end;}
end;

procedure TFrmSaidaoCadastro.BtnincluirClick(Sender: TObject);
begin
  inherited;
{  if DBLookupComboBoxinterno.Text = '' then
  begin
    showmessage('Digite Prontuário');
    if Editprontuario.canfocus then
      Editprontuario.SetFocus;
    exit;
  end;

  Dsvinc_saidao.DataSet.Append;
  Dsvinc_saidao.DataSet.fieldbyname('ID_vinc_saidao').AsInteger := 0;
  Dsvinc_saidao.DataSet.fieldbyname('id_saidao').AsInteger :=
    DsCadastro.DataSet.fieldbyname('ID_saidao').AsInteger;
  Dsvinc_saidao.DataSet.fieldbyname('status').Asstring := 'ATIVO';
  Dsvinc_saidao.DataSet.fieldbyname('id_interno').AsInteger := DBLookupComboBoxinterno.KeyValue;

  Dsvinc_saidao.DataSet.Post;

  DBLookupComboBoxinterno.KeyValue := null;
  Editprontuario.Text := '';

  if Editprontuario.canfocus then
    Editprontuario.SetFocus;
}
end;

procedure TFrmSaidaoCadastro.BitBtn2Click(Sender: TObject);
begin
  inherited;

  dm.SqlExecute.sql.Text := 'select id_interno from interno where coalesce(nome_interno,'''')<>'''' and st = ''A'' and id_up = ' + qs(inttostr(global_id_up));

  dm.DsExecute.DataSet.Close;
  dm.DsExecute.DataSet.Open;

  FrmAguarde := TFrmAguarde.Create(Application);

  with FrmAguarde do
  begin

    LblAguarde.Top := ProgressBarAguarde.Top - (LblAguarde.Height + 10);
    LblAguarde.Font.Size := 10;
    LblAguarde.Font.Color := clBlack;
    LblAguarde.Anchors := [akLeft, akBottom];
    ProgressBarAguarde.Visible := true;
    ProgressBarAguarde.Max := dm.DsExecute.DataSet.RecordCount;
    ProgressBarAguarde.Position := 0;
    LblAguarde.Visible := true;
    Show;

    frmaguarde.Refresh;
    try
      dm.DsExecute.DataSet.First;
      Screen.Cursor := crSQLWait;

      while not dm.DsExecute.DataSet.Eof do
      begin

        ProgressBarAguarde.Position := dm.DsExecute.DataSet.recno;
        LblAguarde.Caption := inttostr(dm.DsExecute.DataSet.recno) + ' de ' + inttostr(dm.DsExecute.DataSet.recordcount);
        lblaguarde.repaint;
        Application.ProcessMessages;

        Dsvinc_saidao.DataSet.Append;
        Dsvinc_saidao.DataSet.fieldbyname('ID_vinc_saidao').AsInteger := 0;
        Dsvinc_saidao.DataSet.fieldbyname('id_saidao').AsInteger :=
          DsCadastro.DataSet.fieldbyname('ID_saidao').AsInteger;
        Dsvinc_saidao.DataSet.fieldbyname('status').Asstring := 'ATIVO';
        Dsvinc_saidao.DataSet.fieldbyname('id_interno').AsInteger := dm.DsExecute.DataSet.fieldbyname('id_interno').value;
        Dsvinc_saidao.DataSet.Post;

        Application.ProcessMessages;

        dm.DsExecute.DataSet.Next;
      end;

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

  if assigned(FrmAguarde) then
  begin
    FrmAguarde.close;
    FreeAndNil(FrmAguarde);
  end;

end;

procedure TFrmSaidaoCadastro.EditarClick(Sender: TObject);
begin
  inherited;

  dsvinc_saidao.DataSet.Close;
  dsvinc_saidao.DataSet.Open;

end;

procedure TFrmSaidaoCadastro.CancelarClick(Sender: TObject);
begin
  inherited;

  SQLvinc_saidao.ParamByName('id_saidao').AsInteger := DsCadastro.DataSet.fieldbyname('id_saidao').AsInteger;
  dsvinc_saidao.DataSet.Close;
  dsvinc_saidao.DataSet.Open;

end;

procedure TFrmSaidaoCadastro.DsCadastroDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_SAIDAO)
    and not ContemValor('E', PERMISSAO_SAIDAO)
    and not ContemValor('D', PERMISSAO_SAIDAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SAIDAO)
    and not ContemValor('E', PERMISSAO_SAIDAO)
    and not ContemValor('D', PERMISSAO_SAIDAO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SAIDAO)
    and ContemValor('E', PERMISSAO_SAIDAO)
    and not ContemValor('D', PERMISSAO_SAIDAO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SAIDAO)
    and ContemValor('E', PERMISSAO_SAIDAO)
    and ContemValor('D', PERMISSAO_SAIDAO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SAIDAO)
    and not ContemValor('E', PERMISSAO_SAIDAO)
    and ContemValor('D', PERMISSAO_SAIDAO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SAIDAO)
    and not ContemValor('E', PERMISSAO_SAIDAO)
    and ContemValor('D', PERMISSAO_SAIDAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SAIDAO)
    and ContemValor('E', PERMISSAO_SAIDAO)
    and not ContemValor('D', PERMISSAO_SAIDAO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

end.

