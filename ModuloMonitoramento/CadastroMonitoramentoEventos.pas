unit CadastroMonitoramentoEventos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls,
  ToolWin, Buttons, adpDBDateTimePicker, Mask, Lib, ShellAPI, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFrmCadastroMonitoramentoEventos = class(TFrmModeloCadastro)
    DBLkpUpCadastroEvento: TDBLookupComboBox;
    DBLkpUpOcorrenciaEvento: TDBLookupComboBox;
    DsConsulta: TDataSource;
    CdsConsulta: TClientDataSet;
    Dspconsulta: TDataSetProvider;
    DtpDataInicial: TDateTimePicker;
    DtpDataFinal: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    BtnAtualizarBusca: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    DblkpFuncionarioMonitor: TDBLookupComboBox;
    Label6: TLabel;
    DsEventos: TDataSource;
    CdsEventos: TClientDataSet;
    DspEventos: TDataSetProvider;
    DBLkpEventoPrincipal: TDBLookupComboBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdtDataEvento: TDBEdit;
    DBEdtHoraEvento: TDBEdit;
    DBMemoObservacao: TDBMemo;
    DBEdtArquivoRelacionado: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    Button1: TButton;
    OpenDialogArquivo: TOpenDialog;
    Label13: TLabel;
    SqlSubEventos: TSQLQuery;
    DspSubEventos: TDataSetProvider;
    CdsSubEventos: TClientDataSet;
    DsSubEventos: TDataSource;
    DBEditCodigo: TDBEdit;
    Label14: TLabel;
    DBCbPlantaoOcorrencia: TDBComboBox;
    Label15: TLabel;
    DBLkpSubEvento: TDBLookupComboBox;
    Label16: TLabel;
    CkTodasUnidades: TCheckBox;
    SqlConsulta: TFDQuery;
    SqlEventos: TFDQuery;
    SqlConsultaUnidade: TFDQuery;
    SQLConsultaUnidadeTodas: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure BtnAtualizarBuscaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure DBEdtHoraEventoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdtDataEventoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdtDataEventoExit(Sender: TObject);
    procedure DBLkpEventoPrincipalCloseUp(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure DBLkpEventoPrincipalKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CancelarClick(Sender: TObject);
    procedure PageControlModeloCadastroChange(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure DBGridConsultaDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditLocalizarChange(Sender: TObject);
    procedure CdsConsultaFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure DsConsultaDataChange(Sender: TObject; Field: TField);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroMonitoramentoEventos: TFrmCadastroMonitoramentoEventos;

implementation

uses DmPrincipal;

{$R *.dfm}

procedure TFrmCadastroMonitoramentoEventos.FormCreate(Sender: TObject);
begin
  inherited;

  DBEdtHoraEvento.Field.EditMask := '99:99';

  DM.DsUP.DataSet.Close;
  DM.DsUP.DataSet.Open;

  DM.DsFuncionario.DataSet.Close;
  DM.DsFuncionario.DataSet.Open;

  DsEventos.DataSet.Close;
  DsEventos.DataSet.Open;

  DsSubEventos.DataSet.Close;
  DsSubEventos.DataSet.Open;

  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.Open;

  if VISUALIZA_OUTRAS_UP = 'S' then
  begin
    DBLkpUpOcorrenciaEvento.Enabled := True;
    CkTodasUnidades.Enabled := True;
    //CkTodasUnidades.Checked := True;
  end;

  if (NOME_PERFILUSUARIO_LOGADO = 'ADMINISTRADOR') then
  begin
    DBLkpUpCadastroEvento.Enabled := True;
  end;


  DtpDataInicial.Date := Date;
  DtpDataFinal.Date := Date;
  BtnAtualizarBuscaClick(nil);

  {Verifica as permiss�es que o usu�rio possui para esta tela
  e habilita ou n�o os respectivos bot�es.
  Estas verifica��es devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permiss�o referente � tela nas verifica��es abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_MONITORAMENTOEVENTOS)
    and not ContemValor('E', PERMISSAO_MONITORAMENTOEVENTOS)
    and not ContemValor('D', PERMISSAO_MONITORAMENTOEVENTOS) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_MONITORAMENTOEVENTOS)
    and not ContemValor('E', PERMISSAO_MONITORAMENTOEVENTOS)
    and not ContemValor('D', PERMISSAO_MONITORAMENTOEVENTOS) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_MONITORAMENTOEVENTOS)
    and ContemValor('E', PERMISSAO_MONITORAMENTOEVENTOS)
    and not ContemValor('D', PERMISSAO_MONITORAMENTOEVENTOS) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_MONITORAMENTOEVENTOS)
    and ContemValor('E', PERMISSAO_MONITORAMENTOEVENTOS)
    and ContemValor('D', PERMISSAO_MONITORAMENTOEVENTOS) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_MONITORAMENTOEVENTOS)
    and not ContemValor('E', PERMISSAO_MONITORAMENTOEVENTOS)
    and ContemValor('D', PERMISSAO_MONITORAMENTOEVENTOS) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_MONITORAMENTOEVENTOS)
    and not ContemValor('E', PERMISSAO_MONITORAMENTOEVENTOS)
    and ContemValor('D', PERMISSAO_MONITORAMENTOEVENTOS) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_MONITORAMENTOEVENTOS)
    and ContemValor('E', PERMISSAO_MONITORAMENTOEVENTOS)
    and not ContemValor('D', PERMISSAO_MONITORAMENTOEVENTOS) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroMonitoramentoEventos.BtnAtualizarBuscaClick(
  Sender: TObject);
begin
  inherited;
  EditLocalizar.Text := '';
  SqlConsulta.ParamByName('DATA1').AsDate := DtpDataInicial.Date;
  SqlConsulta.ParamByName('DATA2').AsDate := DtpDataFinal.Date;

  if CkTodasUnidades.Checked = False then
  begin
    if VISUALIZA_OUTRAS_UP = 'S' then
    begin
      Dspconsulta.DataSet := SQLConsultaUnidadeTodas;
      SQLConsultaUnidadeTodas.ParamByName('DATA1').AsDate := DtpDataInicial.Date;
      SQLConsultaUnidadeTodas.ParamByName('DATA2').AsDate := DtpDataFinal.Date;
      SQLConsultaUnidadeTodas.ParamByName('ID_UP_LANCAMENTO').AsInteger := GLOBAL_ID_UP;
    end
    else
    begin
      Dspconsulta.DataSet := SqlConsultaUnidade;
      SqlConsultaUnidade.ParamByName('DATA1').AsDate := DtpDataInicial.Date;
      SqlConsultaUnidade.ParamByName('DATA2').AsDate := DtpDataFinal.Date;
      SqlConsultaUnidade.ParamByName('ID_UP_LANCAMENTO').AsInteger := GLOBAL_ID_UP;
    end;
  end
  else
  begin
    Dspconsulta.DataSet := SqlConsulta;
  end;

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

  if EditLocalizar.CanFocus then
  begin
    EditLocalizar.SetFocus;
  end;

end;

procedure TFrmCadastroMonitoramentoEventos.Button1Click(Sender: TObject);
begin
  inherited;
  if OpenDialogArquivo.Execute then
  begin
    SetCurrentDir(GLOBAL_PATCH_SISTEMA);
    if not (DsCadastro.DataSet.State in [dsedit, dsinsert]) then
      DsCadastro.DataSet.Edit;

    DsCadastro.DataSet.FieldByName('ARQUIVO_RELACIONADO').AsString := OpenDialogArquivo.FileName;

  end;
end;

procedure TFrmCadastroMonitoramentoEventos.NovoClick(Sender: TObject);
begin
  inherited;
  DBEdtHoraEvento.Field.EditMask := '99:99';

  DsCadastro.DataSet.FieldByName('ID_UP_LANCAMENTO').AsInteger := GLOBAL_ID_UP;

  if VISUALIZA_OUTRAS_UP = 'S' then
    DsCadastro.DataSet.FieldByName('ID_UP_OCORRENCIA').AsVariant := Null
  else
    DsCadastro.DataSet.FieldByName('ID_UP_OCORRENCIA').AsInteger := GLOBAL_ID_UP;

  DsCadastro.DataSet.FieldByName('ID_FUNCIONARIO_MONITOR').AsInteger := GLOBAL_ID_FUNCIONARIO;

  DBCbPlantaoOcorrencia.ItemIndex := -1;

  DsCadastro.DataSet.FieldByName('ID_SUB_EVENTOS').AsVariant := Null;
  DBLkpSubEvento.Enabled := False;
  DsSubEventos.DataSet.Filtered := False;

  DsCadastro.DataSet.FieldByName('DATA_EVENTO').AsString := DateToStr(Date);
  DsCadastro.DataSet.FieldByName('HORA_EVENTO').AsString := FormatDateTime('HH:mm', Now);
end;

procedure TFrmCadastroMonitoramentoEventos.DBEdtHoraEventoKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  SoNumeros(Key);
end;

procedure TFrmCadastroMonitoramentoEventos.DBEdtDataEventoKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  ValidaDataKeyPress(Sender, Key);
end;

procedure TFrmCadastroMonitoramentoEventos.DBEdtDataEventoExit(
  Sender: TObject);
begin
  inherited;
  ValidaDataExit(Sender);
end;

procedure TFrmCadastroMonitoramentoEventos.DBLkpEventoPrincipalCloseUp(
  Sender: TObject);
begin
  inherited;

  if ((DBLkpEventoPrincipal.KeyValue > 0) and ((Sender is TDBLookupComboBox) or (Sender is TToolButton) or (Sender is TDBGrid))) then
  begin
    if DsEventos.DataSet.FieldByName('SUB_EVENTOS').AsString = 'S' then
    begin
      DsSubEventos.DataSet.Filter := 'ID_EVENTOS = ' + IntToStr(DBLkpEventoPrincipal.KeyValue);
      DsSubEventos.DataSet.Filtered := True;
      DBLkpSubEvento.Enabled := True;
    end
    else
    begin
      DsCadastro.DataSet.FieldByName('ID_SUB_EVENTOS').AsVariant := Null;
      DBLkpSubEvento.Enabled := False;
      DsSubEventos.DataSet.Filtered := False;
    end;
  end
  else
  begin
    DsCadastro.DataSet.FieldByName('ID_SUB_EVENTOS').AsVariant := Null;
    DBLkpSubEvento.Enabled := False;
    DsSubEventos.DataSet.Filtered := False;
  end;

end;

procedure TFrmCadastroMonitoramentoEventos.SalvarClick(Sender: TObject);
var
  x, y: integer;
  msg: string;
begin

  if DBMemoObservacao.CanFocus then
    DBMemoObservacao.SetFocus;

  x := 0;
  y := 0;
  msg := '';

  if DBLkpUpOcorrenciaEvento.KeyValue <= 0 then
  begin
    ShowMessage('O campo Unidade de Ocorr�ncia do Evento n�o pode ser vazio!');

    if DBLkpUpOcorrenciaEvento.CanFocus then
      DBLkpUpOcorrenciaEvento.SetFocus;

    Exit;
  end;

  if DBCbPlantaoOcorrencia.Text = '' then
  begin
    ShowMessage('O campo Plant�o de Ocorr�ncia n�o pode ser vazio!');

    if DBCbPlantaoOcorrencia.CanFocus then
      DBCbPlantaoOcorrencia.SetFocus;

    Exit;
  end;

  if DBLkpEventoPrincipal.KeyValue <= 0 then
  begin
    ShowMessage('O campo Evento Principal n�o pode ser vazio!');

    if DBLkpEventoPrincipal.CanFocus then
      DBLkpEventoPrincipal.SetFocus;

    Exit;
  end;

  if (DBLkpSubEvento.KeyValue <= 0) and (DBLkpSubEvento.Enabled) then
  begin
    ShowMessage('O campo Sub-Evento n�o pode ser vazio!');

    if DBLkpSubEvento.CanFocus then
      DBLkpSubEvento.SetFocus;

    Exit;
  end;

  if DBEdtDataEvento.Text = '' then
  begin
    ShowMessage('O campo Data do Evento n�o pode ser vazio!');

    if DBEdtDataEvento.CanFocus then
      DBEdtDataEvento.SetFocus;

    Exit;
  end;

  if DBEdtHoraEvento.Text = '' then
  begin
    ShowMessage('O campo Hora do Evento n�o pode ser vazio!');

    if DBEdtHoraEvento.CanFocus then
      DBEdtHoraEvento.SetFocus;

    Exit;
  end;

  if DsCadastro.DataSet.State in [dsinsert, dsedit] then
  begin
    DM.SqlExecute.SQL.Text := ' select me.*, up_oco.sigla as sigla_ocorrencia, e.descricao_evento as evento, '
      + ' se.descricao_eventos as sub_evento from monitoramento_eventos me '
      + ' inner join unidade_penal up_oco on (up_oco.id_up = me.id_up_ocorrencia) '
      + ' inner join eventos e on (e.id_eventos = me.id_eventos) '
      + ' left join sub_eventos se on (se.id_sub_eventos = me.id_sub_eventos) '
      + ' where me.id_up_ocorrencia = ' + DsCadastro.DataSet.FieldByName('ID_UP_OCORRENCIA').AsString
      + ' and me.plantao_ocorrencia = ' + qs(DsCadastro.DataSet.FieldByName('PLANTAO_OCORRENCIA').AsString)
      + ' and me.data_evento = ' + qs(FormatDateTime('dd.mm.yyyy', StrToDate(DsCadastro.DataSet.FieldByName('DATA_EVENTO').AsString)))
      + ' and me.hora_evento = ' + qs(FormatDateTime('hh:mm:ss.zzz', strtotime(DsCadastro.DataSet.FieldByName('HORA_EVENTO').AsString)))
      + ' order by me.id_monitoramento_eventos ';

    Dm.DsExecute.DataSet.close;
    Dm.DsExecute.DataSet.open;

    if DsCadastro.DataSet.State in [dsinsert] then
    begin

      if DM.DsExecute.DataSet.RecordCount > 0 then
      begin

        for x := 1 to dm.DsExecute.DataSet.RecordCount do
        begin
          if x <= 7 then
          begin
            msg := msg + 'Lan�amento: ' + IntToStr(x) + #13
              + 'Ocorr�ncia: ' + dm.DsExecute.DataSet.FieldByName('SIGLA_OCORRENCIA').AsString + #13
              + 'Plant�o: ' + dm.DsExecute.DataSet.FieldByName('PLANTAO_OCORRENCIA').AsString + #13
              + 'Evento Principal: ' + dm.DsExecute.DataSet.FieldByName('EVENTO').AsString + #13
              + 'Sub-Evento: ' + dm.DsExecute.DataSet.FieldByName('SUB_EVENTO').AsString + #13#13;
            dm.DsExecute.DataSet.Next;
          end;
        end;

        if MessageDlg('Existe(m) ' + IntToStr(dm.DsExecute.DataSet.RecordCount) + ' lan�amento(s) de eventos nesta mesma data: '
          + DsCadastro.DataSet.FieldByName('DATA_EVENTO').AsString + ' e hora: '
          + DsCadastro.DataSet.FieldByName('HORA_EVENTO').AsString + '. Observe se o lan�amento n�o ser� duplicado!' + #13#13
          + msg
          + 'Deseja fazer este lan�amento mesmo assim?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
        begin
          Exit;
        end;

      end;

    end
    else
    begin

      if DM.DsExecute.DataSet.RecordCount > 1 then
      begin

        for x := 1 to dm.DsExecute.DataSet.RecordCount do
        begin
          if x <= 7 then
          begin
            if dm.DsExecute.DataSet.FieldByName('ID_MONITORAMENTO_EVENTOS').AsInteger
              <> DsCadastro.DataSet.FieldByName('ID_MONITORAMENTO_EVENTOS').AsInteger then
            begin
              y := y + 1;
              msg := msg + 'Lan�amento: ' + IntToStr(y) + #13
                + 'Ocorr�ncia: ' + dm.DsExecute.DataSet.FieldByName('SIGLA_OCORRENCIA').AsString + #13
                + 'Plant�o: ' + dm.DsExecute.DataSet.FieldByName('PLANTAO_OCORRENCIA').AsString + #13
                + 'Evento Principal: ' + dm.DsExecute.DataSet.FieldByName('EVENTO').AsString + #13
                + 'Sub-Evento: ' + dm.DsExecute.DataSet.FieldByName('SUB_EVENTO').AsString + #13#13;
            end;
            dm.DsExecute.DataSet.Next;
          end;
        end;

        if MessageDlg('Existe(m) ' + IntToStr(y) + ' lan�amento(s) de eventos nesta mesma data: '
          + DsCadastro.DataSet.FieldByName('DATA_EVENTO').AsString + ' e hora: '
          + DsCadastro.DataSet.FieldByName('HORA_EVENTO').AsString + '. Observe se o lan�amento n�o ser� duplicado!' + #13#13
          + msg
          + 'Deseja fazer este lan�amento mesmo assim?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
        begin
          Exit;
        end;

      end;

      if DM.DsExecute.DataSet.RecordCount = 1 then
      begin

        if dm.DsExecute.DataSet.FieldByName('ID_MONITORAMENTO_EVENTOS').AsInteger
          <> DsCadastro.DataSet.FieldByName('ID_MONITORAMENTO_EVENTOS').AsInteger then
        begin
          msg := msg + 'Lan�amento: 1' + #13
            + 'Ocorr�ncia: ' + dm.DsExecute.DataSet.FieldByName('SIGLA_OCORRENCIA').AsString + #13
            + 'Plant�o: ' + dm.DsExecute.DataSet.FieldByName('PLANTAO_OCORRENCIA').AsString + #13
            + 'Evento Principal: ' + dm.DsExecute.DataSet.FieldByName('EVENTO').AsString + #13
            + 'Sub-Evento: ' + dm.DsExecute.DataSet.FieldByName('SUB_EVENTO').AsString + #13#13;

          if MessageDlg('Existe 1 lan�amento de evento nesta mesma data: '
            + DsCadastro.DataSet.FieldByName('DATA_EVENTO').AsString + ' e hora: '
            + DsCadastro.DataSet.FieldByName('HORA_EVENTO').AsString + '. Observe se o lan�amento n�o ser� duplicado!' + #13#13
            + msg
            + 'Deseja fazer este lan�amento mesmo assim?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
          begin
            Exit;
          end;

        end;

      end;

    end;

  end;

  inherited;

  DsSubEventos.DataSet.Filtered := False;

  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.Open;

end;

procedure TFrmCadastroMonitoramentoEventos.DBLkpEventoPrincipalKeyUp(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if not ((Key = VK_RETURN) or (Key = VK_SPACE) or (Key = VK_ESCAPE) or (Key = VK_BACK)) then
    DBLkpEventoPrincipalCloseUp(Sender);
end;

procedure TFrmCadastroMonitoramentoEventos.CancelarClick(Sender: TObject);
begin
  inherited;
  DsSubEventos.DataSet.Filtered := False;
  DBLkpSubEvento.Enabled := True;
end;

procedure TFrmCadastroMonitoramentoEventos.PageControlModeloCadastroChange(
  Sender: TObject);
begin
  inherited;
  //Se o usu�rio trocar para a aba de Consulta a edi��o ou inser��o � cancelada.
  if PageControlModeloCadastro.ActivePageIndex = 1 then
  begin
    CancelarClick(nil);
    if EditLocalizar.CanFocus then
    begin
      EditLocalizar.SetFocus;
    end;
  end;
end;

procedure TFrmCadastroMonitoramentoEventos.EditarClick(Sender: TObject);
begin

  if not ((DsCadastro.DataSet.FieldByName('ID_FUNCIONARIO_MONITOR').AsInteger = GLOBAL_ID_FUNCIONARIO) or
    (NOME_PERFILUSUARIO_LOGADO = 'ADMINISTRADOR')) then
  begin
    ShowMessage('Voc� n�o pode alterar lan�amentos de outro usu�rio!');
    CancelarClick(nil);
    Exit;
  end;

  inherited;
  DBEdtHoraEvento.Field.EditMask := '99:99';
  DBLkpEventoPrincipalCloseUp(Sender);
end;

procedure TFrmCadastroMonitoramentoEventos.DBGridConsultaDblClick(
  Sender: TObject);
begin

  if (DBGridConsulta.SelectedField.FieldName = 'ARQUIVO_RELACIONADO') and (Trim(DBGridConsulta.SelectedField.AsString) <> '') then
  begin

    if ShellExecute(Handle, 'Open', PChar(DBGridConsulta.SelectedField.AsString), nil,
      nil, SW_SHOWNORMAL) <= 32 then
    begin
      ShowMessage('Arquivo n�o encontrado!');
    end;

    Exit;
  end;

  if (DBGridConsulta.SelectedField.FieldName = 'OBSERVACAO') and (Trim(DBGridConsulta.SelectedField.AsString) <> '') then
  begin
    ShowMessage(DBGridConsulta.SelectedField.AsString);
    Exit;
  end;

  inherited;
  EditarClick(Sender);
end;

procedure TFrmCadastroMonitoramentoEventos.FormShow(Sender: TObject);
begin
  inherited;
  PageControlModeloCadastro.ActivePageIndex := 1;
  if EditLocalizar.CanFocus then
  begin
    EditLocalizar.SetFocus;
  end;
  DBGridConsulta.SelectedIndex := 2;
end;

procedure TFrmCadastroMonitoramentoEventos.EditLocalizarChange(
  Sender: TObject);
begin
 // A pesquisa s� come�a a buscar a partir de 3 letras.

  if ((EditLocalizar.Text <> '') and (Length(EditLocalizar.Text) >= 3)) or (EditLocalizar.Text = ' ') then
  begin
    DsConsulta.DataSet.filtered := False;
    DsConsulta.DataSet.filtered := True;
  end
  else
    DsConsulta.DataSet.filtered := False;

end;

procedure TFrmCadastroMonitoramentoEventos.CdsConsultaFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
//  inherited;


  if DataSet[DBGridConsulta.Columns.Items[DBGridConsulta.SelectedIndex].FieldName] <> Null then
  begin

    if EditLocalizar.Text <> ' ' then
    begin

      if (DBGridConsulta.Columns.Items[DBGridConsulta.SelectedIndex].Field.DataType in [ftSmallint, ftInteger, ftWord, ftFloat, ftCurrency, ftFMTBcd]) then
      begin

        if AnsiUpperCase(RemoveAcentos(EditLocalizar.Text)) = AnsiUpperCase(RemoveAcentos(DataSet[DBGridConsulta.Columns.Items[DBGridConsulta.SelectedIndex].FieldName])) then
        begin
          Accept := true;
        end
        else
        begin
          Accept := false;
        end;

      end
      else
      begin

        if pos(AnsiUpperCase(RemoveAcentos(EditLocalizar.Text)),
          AnsiUpperCase(RemoveAcentos(DataSet[DBGridConsulta.Columns.Items[DBGridConsulta.SelectedIndex].FieldName]))) <> 0 then
        begin
          Accept := true;
        end else
        begin
          Accept := false;
        end;

      end;

    end
    else
    begin

      if pos(AnsiUpperCase(RemoveAcentos(EditLocalizar.Text)),
        AnsiUpperCase(RemoveAcentos(DataSet[DBGridConsulta.Columns.Items[DBGridConsulta.SelectedIndex].FieldName]))) = 1 then
      begin
        Accept := true;
      end else
      begin
        Accept := false;
      end;

    end;
  end
  else
  begin
    if EditLocalizar.Text = ' ' then
      Accept := true
    else
      Accept := false;
  end;

end;

procedure TFrmCadastroMonitoramentoEventos.DsConsultaDataChange(
  Sender: TObject; Field: TField);
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

    StatusBar1.Panels[2].Text := '[Registro: ' + inttostr(recno) + ' de ' + inttostr(recordcount) + '  ]';

  end;

end;

procedure TFrmCadastroMonitoramentoEventos.DsCadastroDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;

  {Verifica as permiss�es que o usu�rio possui para esta tela
  e habilita ou n�o os respectivos bot�es.
  Estas verifica��es devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permiss�o referente � tela nas verifica��es abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_MONITORAMENTOEVENTOS)
    and not ContemValor('E', PERMISSAO_MONITORAMENTOEVENTOS)
    and not ContemValor('D', PERMISSAO_MONITORAMENTOEVENTOS) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_MONITORAMENTOEVENTOS)
    and not ContemValor('E', PERMISSAO_MONITORAMENTOEVENTOS)
    and not ContemValor('D', PERMISSAO_MONITORAMENTOEVENTOS) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_MONITORAMENTOEVENTOS)
    and ContemValor('E', PERMISSAO_MONITORAMENTOEVENTOS)
    and not ContemValor('D', PERMISSAO_MONITORAMENTOEVENTOS) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_MONITORAMENTOEVENTOS)
    and ContemValor('E', PERMISSAO_MONITORAMENTOEVENTOS)
    and ContemValor('D', PERMISSAO_MONITORAMENTOEVENTOS) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_MONITORAMENTOEVENTOS)
    and not ContemValor('E', PERMISSAO_MONITORAMENTOEVENTOS)
    and ContemValor('D', PERMISSAO_MONITORAMENTOEVENTOS) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_MONITORAMENTOEVENTOS)
    and not ContemValor('E', PERMISSAO_MONITORAMENTOEVENTOS)
    and ContemValor('D', PERMISSAO_MONITORAMENTOEVENTOS) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_MONITORAMENTOEVENTOS)
    and ContemValor('E', PERMISSAO_MONITORAMENTOEVENTOS)
    and not ContemValor('D', PERMISSAO_MONITORAMENTOEVENTOS) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

end.

