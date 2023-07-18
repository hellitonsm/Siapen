unit ModeloCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ExtCtrls, ImgList, StdCtrls, Grids, DBGrids,
  FMTBcd, DB, DBClient, Provider , Mask, DBCtrls, jpeg,
  Menus, adpDBDateTimePicker, System.ImageList, FireDAC.DBX.Migrate, FireDAC.Phys.Intf, FireDAC.Stan.Intf, FireDAC.Stan.Option,
FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmModeloCadastro = class(TForm)
    ImageListCadastro: TImageList;
    PanelBotoes: TPanel;
    ToolBarModeloCadastro: TToolBar;
    Novo: TToolButton;
    Editar: TToolButton;
    Cancelar: TToolButton;
    Salvar: TToolButton;
    Excluir: TToolButton;
    Fechar: TToolButton;
    PanelModeloCadastro: TPanel;
    PanelTituloModeloCadastro: TPanel;
    PageControlModeloCadastro: TPageControl;
    TabSheetCadastro: TTabSheet;
    TabSheetConsulta: TTabSheet;
    PanelLocalizaConsulta: TPanel;
    PanelCadastro: TPanel;
    PanelConsulta: TPanel;
    Label1: TLabel;
    EditLocalizar: TEdit;
    DBGridConsulta: TDBGrid;
    SqlCadastro: TFDQuery;
    DspCadastro: TDataSetProvider;
    CdsCadastro: TClientDataSet;
    DsCadastro: TDataSource;
    StatusBar1: TStatusBar;
    DBNavigator1: TDBNavigator;
    Image3: TImage;
    LabelTitulo: TLabel;
    Image2: TImage;
    procedure CreateParams(var Params: TCreateParams); // override;
    procedure NovoClick(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
    procedure FecharClick(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure DBGridConsultaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridConsultaTitleClick(Column: TColumn);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridConsultaDblClick(Sender: TObject);
    procedure DBGridConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditLocalizarChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBEditCPFExit(Sender: TObject);
    procedure DBEditCNPJExit(Sender: TObject);
    procedure PageControlModeloCadastroChange(Sender: TObject);
    procedure CdsCadastroFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
  private
    { Private declarations }
    CompLookupComboBox: array of TDBLookupComboBox;
    CompDBEdit: array of TDBEdit;
    CompClientDataSet: array of TClientDataSet;
  public
    procedure ClientDataSetReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TFDUpdateRequest;
      var Action: TReconcileAction);
    procedure CorNosCampos;
    function IniciaTransCadastro: Boolean;
    function FinalizaTransCadastro: Boolean;
    function CancelaTransCadastro: Boolean;
    function ReeiniciaTransCadastro: Boolean;

    { Public declarations }
  end;

var
  FrmModeloCadastro: TFrmModeloCadastro;
  TD: TFDDBXTransactionDesc; // Para os Lançamentos .

implementation

uses DmPrincipal, Lib, MenuRelatorio;

{$R *.dfm}

procedure TFrmModeloCadastro.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params); { call the inherited first }
  with Params do
  begin
    Style := Style or WS_CHILD; { add a style flag }
    WndParent := Application.MainForm.Handle;
  end;
end;

procedure TFrmModeloCadastro.NovoClick(Sender: TObject);
var
  CompEdit: TComponent;
begin
  PanelCadastro.Enabled := true;
  PageControlModeloCadastro.ActivePageIndex := 0;
  StatusBar1.Panels[1].Text := 'NOVO';
  Editar.Enabled := False;
  Salvar.Enabled := True;
  Cancelar.Enabled := True;
  Excluir.Enabled := False;
  DsCadastro.DataSet.Append;

  CompEdit := FindComponent('DBEditCodigo');

  if assigned(CompEdit) then
  begin
    TDBEdit(CompEdit).field.value := 0;
  end;

  Salvar.Visible := True;

  CorNosCampos;

end;

procedure TFrmModeloCadastro.EditarClick(Sender: TObject);
begin
  PanelCadastro.Enabled := true;
  PageControlModeloCadastro.ActivePageIndex := 0;
  //  IniciaTransCadastro;
  StatusBar1.Panels[1].Text := 'EDIÇÃO';
  Novo.Enabled := False;
  Editar.Enabled := False;
  Salvar.Enabled := True;
  Cancelar.Enabled := True;
  Excluir.Enabled := False;
  DsCadastro.DataSet.Edit;
  CorNosCampos;

end;

procedure TFrmModeloCadastro.CancelarClick(Sender: TObject);
var
  iComp: Integer;
begin

  StatusBar1.Panels[1].Text := 'CANCELANDO';
  Novo.Enabled := True;
  Editar.Enabled := True;
  Salvar.Enabled := False;
  Excluir.Enabled := True;
  Cancelar.Enabled := False;
  if PageControlModeloCadastro.CanFocus then
    PageControlModeloCadastro.SetFocus;
  DsCadastro.DataSet.Cancel;
  StatusBar1.Panels[1].Text := '...';
  cancelaTransCadastro;
  CorNosCampos;
  PanelCadastro.Enabled := False;

  {for iComp := Low(CompClientDataSet) to High(CompClientDataSet) do
  begin
    with (CompClientDataSet[iComp] as TClientDataSet) do
    begin
      Close;
      Open;
    end;
  end;}

end;

procedure TFrmModeloCadastro.SalvarClick(Sender: TObject);
var
  erro_transacao, iComp: Integer;
  ItenRecord: TBookmark;
begin
  ItenRecord := nil;

  if not DBGridConsulta.DataSource.DataSet.IsEmpty then
    ItenRecord := DBGridConsulta.DataSource.DataSet.GetBookmark;

  if PageControlModeloCadastro.CanFocus then
    PageControlModeloCadastro.SetFocus;

  try
    StatusBar1.Panels[1].Text := 'SALVANDO';
    Novo.Enabled := True;
    Editar.Enabled := True;
    Excluir.Enabled := True;
    Salvar.Enabled := False;
    Cancelar.Enabled := False;

    if DsCadastro.DataSet.State in [dsedit, dsinsert] then
      DsCadastro.DataSet.Post;

    IniciaTransCadastro;

    erro_transacao := 0;

    erro_transacao := erro_transacao + TClientDataSet(DsCadastro.DataSet).ApplyUpdates(0);

    if erro_transacao = 0 then
    begin
      for iComp := Low(CompClientDataSet) to High(CompClientDataSet) do
      begin
        with (CompClientDataSet[iComp] as TClientDataSet) do
        begin

          TClientDataSet(CompClientDataSet[iComp]).OnReconcileError := ClientDataSetReconcileError;

          if Active then
          begin

            if State in [dsedit, dsinsert] then
              Post;

            if ChangeCount > 0 then
              erro_transacao := erro_transacao + ApplyUpdates(-1);

          end;
        end;
      end;
    end;
  except
    on e: Exception do
    begin
      erro_transacao := 1;
      CancelaTransCadastro;
    end;
  end;

  if erro_transacao = 0 then
    finalizaTransCadastro
  else
  begin
    CancelaTransCadastro;
    ShowMessage('Erro na transação, não salvou.');
    exit;
  end;

  StatusBar1.Panels[1].Text := '...';
  DsCadastro.DataSet.Refresh;
  PanelCadastro.Enabled := False;
  DBGridConsulta.DataSource.DataSet.Close;

  if Salvar.Tag = 0 then
    ShowMessage('Registro Salvo com Sucesso!');

  EditLocalizar.Text := '';
  DBGridConsulta.DataSource.DataSet.Open;

  if Assigned(ItenRecord) then
  begin
    try
      if DBGridConsulta.DataSource.DataSet.BookmarkValid(ItenRecord) then
        DBGridConsulta.DataSource.DataSet.GotoBookmark(ItenRecord);
    finally
      DBGridConsulta.DataSource.DataSet.FreeBookmark(ItenRecord);
    end;
  end;

  CorNosCampos;

end;

procedure TFrmModeloCadastro.ExcluirClick(Sender: TObject);
begin

  StatusBar1.Panels[1].Text := 'EXCLUINDO';

  if Application.MessageBox(' Excluir este registro?',
    'Confirme.', mb_YesNo + Mb_IconQuestion) = idYes then
  begin

    try
      IniciaTransCadastro;
      DsCadastro.DataSet.Delete;
      if TClientDataSet(DsCadastro.DataSet).ApplyUpdates(0) = 0 then
      begin
        finalizaTransCadastro;
        ShowMessage('Registro Excluído com Sucesso!');
      end
      else
        CancelaTransCadastro;

      PanelCadastro.Enabled := False;
    except
      ShowMessage('Não pode excluir existe tabelas dependentes.');
      CancelaTransCadastro;
    end;

  end;

  DBGridConsulta.DataSource.DataSet.Close;
  DBGridConsulta.DataSource.DataSet.Open;

  StatusBar1.Panels[1].Text := '...';
  CorNosCampos;

end;

procedure TFrmModeloCadastro.FecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmModeloCadastro.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  with DsCadastro.DataSet do
  begin

    if not Active then
      Exit;

    if state in [dsedit, dsinsert] then
    begin
      Novo.Enabled := False;
      Editar.Enabled := False;
      Excluir.Enabled := False;
      Salvar.Enabled := True;
      Cancelar.Enabled := True;
      TabSheetCadastro.Enabled := true;
      Exit;
    end;

    TabSheetCadastro.Enabled := false;
    Novo.Enabled := True;
    Editar.Enabled := True;
    Excluir.Enabled := True;
    Salvar.Enabled := False;
    Cancelar.Enabled := False;

    if IsEmpty then
    begin
      Editar.Enabled := False;
      Excluir.Enabled := False;
      Exit;
    end;

   { if not ContemValor('I', PERMISSAO_CADASTRO) then
      Novo.Visible := False;
    if not ContemValor('E', PERMISSAO_CADASTRO) then
    begin
      Editar.Visible := False;
     // Salvar.Visible := False;
    end;
    if not ContemValor('D', PERMISSAO_CADASTRO) then
      Excluir.Visible := False; }

  end;

end;

procedure TFrmModeloCadastro.DBGridConsultaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (State <> [gdSelected]) and (State <> [gdSelected, gdFocused]) then
  begin

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

end;

procedure TFrmModeloCadastro.DBGridConsultaTitleClick(Column: TColumn);
begin
  if Column.Field.FieldKind in [fkData] then
    TClientDataSet(Column.Field.DataSet).IndexFieldNames := Column.FieldName;
end;

procedure TFrmModeloCadastro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_escape then
    close;
end;

procedure TFrmModeloCadastro.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  sfechar: array[0..1000] of Char;
begin

  StrPCopy(sfechar, 'Fechar ' + self.Caption + '?');

  with DsCadastro.DataSet do
  begin
    CanClose := False;
    if state in [dsedit, dsinsert] then
    begin
      if Application.MessageBox(' Cancelar inserção/edição?',
        'Confirme.', mb_YesNo + Mb_IconQuestion) = idYes then
      begin
        CanClose := True;
        Cancel;
      end;
    end
    else if Application.MessageBox(sfechar,
      'Confirme.', mb_YesNo + Mb_IconQuestion) = mrYes then
    begin
      CanClose := True;
      Active := false;
    end;
  end;

end;

procedure TFrmModeloCadastro.FormCreate(Sender: TObject);
var
  iComp: Integer;
begin

  Screen.Cursor := crSQLWait;

  SetCurrentDir(GLOBAL_PATCH_SISTEMA);
  PageControlModeloCadastro.ActivePageIndex := 0;
  PanelTituloModeloCadastro.caption := self.caption;
  LabelTitulo.caption := self.caption;
  PanelCadastro.Enabled := False;

  for iComp := 0 to Componentcount - 1 do
  begin

    if (Components[iComp] is TDBEdit) then
    begin
      SetLength(CompDBEdit, High(CompDBEdit) + 2);
      CompDBEdit[High(CompDBEdit)] := (Components[iComp] as TDBEdit);
      (Components[iComp] as TDBEdit).Color := CorCompInativo;
      if TDBEdit(Components[iComp]).Tag = 0 then
        (Components[iComp] as TDBEdit).CharCase := ecUpperCase;


    end;

    if (Components[iComp] is TDBLookupComboBox) then
    begin
      SetLength(CompLookupComboBox, High(CompLookupComboBox) + 2);
      CompLookupComboBox[High(CompLookupComboBox)] := (Components[iComp] as TDBLookupComboBox);
      (Components[iComp] as TDBLookupComboBox).Color := CorCompInativo;
    end;

    if (Components[iComp] is TClientDataSet) then
    begin
      if TClientDataSet(Components[iComp]).Name <> CdsCadastro.Name then
      begin
        SetLength(CompClientDataSet, High(CompClientDataSet) + 2);
        CompClientDataSet[High(CompClientDataSet)] := (Components[iComp] as TClientDataSet);
      end;
    end;

    if (Components[iComp] is TFDQuery) then
      TFDQuery(Components[iComp]).SQLConnection := DM.SQLConnect;

    if (Components[iComp] is TadpDBDateTimePicker) then
      TadpDBDateTimePicker(Components[iComp]).Time := 0;

  end;

 { if not ContemValor('I', PERMISSAO_CADASTRO) then
    Novo.Visible := False;
  if not ContemValor('E', PERMISSAO_CADASTRO) then
  begin
    Editar.Visible := False;
    //Salvar.Visible := False;
  end;
  if not ContemValor('D', PERMISSAO_CADASTRO) then
    Excluir.Visible := False;  }

  Screen.Cursor := crDefault;

  Screen.Cursor := crSQLWait;
  DsCadastro.DataSet.close;
  DsCadastro.DataSet.Open;
  Screen.Cursor := crDefault;

end;

procedure TFrmModeloCadastro.FormShow(Sender: TObject);
begin
  PageControlModeloCadastro.ActivePageIndex := 0;
  //  if DsCadastro.DataSet.State in [dsinsert, dsedit] then
  //    DsCadastro.DataSet.Cancel;
  //  CancelarClick(nil);

end;

procedure TFrmModeloCadastro.CorNosCampos();
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
      end
      else
      begin

        with (CompDBEdit[iComp] as TDBEdit) do
        begin
          try
            Color := CorCompInativo
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

          if not (Enabled) then
          begin
            Color := CorCompInativo
          end;

        except
          CompLookupComboBox[iComp] := nil;
        end;

      end;
    end;
  end;

end;

function TFrmModeloCadastro.IniciaTransCadastro: Boolean;
begin
  try
    TD.TransactionID := 0;
    TD.IsolationLevel := xiReadCommitted;
    DM.SQLConnect.StartTransaction(TD);
    DM.SQLConnect.ExecuteDirect('EXECUTE PROCEDURE SET_CONTEXT(' + inttostr(GLOBAL_ID_FUNCIONARIO) + ')');
  except //se der erro para abrir uma TransCadastro
    begin //tente uma nova
      try
        Result := False;
        TD.TransactionID := TD.TransactionID + 1;
        TD.IsolationLevel := xiReadCommitted;
        DM.SQLConnect.StartTransaction(TD);
      except
      end;
    end;
  end;
end;

function TFrmModeloCadastro.ReeiniciaTransCadastro: Boolean;
begin
  try
    FinalizaTransCadastro;
    TD.TransactionID := TD.TransactionID + 1;
    TD.IsolationLevel := xiReadCommitted;
    DM.SQLConnect.StartTransaction(TD);
  except
  end;
end;

function TFrmModeloCadastro.FinalizaTransCadastro: Boolean;
begin
  try
    Result := False;
    if DM.SQLConnect.InTransaction then
      DM.SQLConnect.Commit(TD);
    Result := True;
  except
  end;
end;

function TFrmModeloCadastro.CancelaTransCadastro: Boolean;
begin
  try
    if DM.SQLConnect.InTransaction then
      DM.SQLConnect.Rollback(TD);
  except
  end;

end;

procedure TFrmModeloCadastro.FormDestroy(Sender: TObject);
begin
  SetLength(CompLookupComboBox, 0);
  SetLength(CompDBEdit, 0);

end;

procedure TFrmModeloCadastro.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

end;

procedure TFrmModeloCadastro.DBGridConsultaDblClick(Sender: TObject);
begin
  EditarClick(nil);
end;

procedure TFrmModeloCadastro.DBGridConsultaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key = vk_return) then
  begin
    Editar.onclick(nil);
  end;

end;

procedure TFrmModeloCadastro.EditLocalizarChange(Sender: TObject);
begin
  TClientDataSet(DBGridConsulta.DataSource.DataSet).Filtered := False;
  if EditLocalizar.Text <> '' then
  begin
    if DBGridConsulta.datasource.dataset.active then
    begin

      if DBGridConsulta.Columns.Items[DBGridConsulta.SelectedIndex].Field.FieldKind in [fkdata] then
      begin

        TClientDataSet(DBGridConsulta.DataSource.DataSet).Filtered := False;
        TClientDataSet(DBGridConsulta.DataSource.DataSet).Filtered := True;

      end;

    end;
  end
  else
    TClientDataSet(DBGridConsulta.DataSource.DataSet).Filtered := False;
end;

procedure TFrmModeloCadastro.FormActivate(Sender: TObject);
begin

  if GLOBAL_IDCONEXAO > 0 then
  begin
    IniciaTransMovimento;
    try
      DM.SQLConnect.ExecuteDirect('update conexao set tela_momento = ' + qs(Self.Caption)
        + ' where idconexao=' + IntToStr(GLOBAL_IDCONEXAO));
    except
    end;
    FinalizaTransMovimento;
  end;

end;

procedure TFrmModeloCadastro.ClientDataSetReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TFDUpdateRequest; var Action: TReconcileAction);
var
  arquivo: TextFile;
  NomeArquivo: string;
begin

  try

    if not DirectoryExists('../log') then
      CreateDir('../log');

    NomeArquivo := '../log/' + Application.Name + '_' +
      SiapStringReplace(DateTimeToStr(Now), ' ', '_', ':', '', '/', '-') + '.txt';

    AssignFile(arquivo, NomeArquivo);
    Rewrite(arquivo);

    Writeln(arquivo, DateTimeToStr(Now) + #13#10 + 'cds: ' + DataSet.Name + ' - ' + E.Message);

    CloseFile(arquivo);

    Action := raAbort;

    ShowMessage('Inconsistência nos dados:' + TrataExceptionErro(e.Message));

  except
  end;

end;

procedure TFrmModeloCadastro.DBEditCPFExit(Sender: TObject);
var
  CompEdit: TComponent;
begin
  CompEdit := FindComponent('DBEditCPF');

  if assigned(CompEdit) then
  begin
    if not ValidaCPF(TDBEdit(CompEdit).text) then
    begin
      ShowMessage('CPF Inválido!');
      TDBEdit(CompEdit).setfocus;
      Exit;
    end;
  end;
end;

procedure TFrmModeloCadastro.DBEditCNPJExit(Sender: TObject);
var
  CompEdit: TComponent;
begin
  CompEdit := FindComponent('DBEditCNPJ');

  if assigned(CompEdit) then
  begin
    if not ValidaCNPJ(TDBEdit(CompEdit).text) then
    begin
      ShowMessage('CNPJ Inválido!');
      TDBEdit(CompEdit).setfocus;
      Exit;
    end;
  end;
end;

procedure TFrmModeloCadastro.PageControlModeloCadastroChange(
  Sender: TObject);
begin
  //Se o usuário trocar para a aba de Consulta a edição ou inserção é cancelada.
  if PageControlModeloCadastro.ActivePageIndex = 1 then
  begin
    CancelarClick(nil);
    if EditLocalizar.CanFocus then
    begin
      EditLocalizar.SetFocus;
    end;
  end;
end;

//Procedure que faz o filtro da busca

procedure TFrmModeloCadastro.CdsCadastroFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin

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

      
end;

end.

