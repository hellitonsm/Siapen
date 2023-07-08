unit ModeloMovimentacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ExtCtrls, ImgList, StdCtrls, Grids, DBGrids,
  FMTBcd, DB, DBClient, Provider, SqlExpr, Mask, DBCtrls,
  adpDBDateTimePicker, System.ImageList;

type
  TFrmModeloMovimentacao = class(TForm)
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
    PageControlModeloCadastro: TPageControl;
    TabSheetCadastro: TTabSheet;
    SqlCadastro: TSQLQuery;
    DspCadastro: TDataSetProvider;
    CdsCadastro: TClientDataSet;
    DsCadastro: TDataSource;
    StatusBar1: TStatusBar;
    PageControlConsulta: TPageControl;
    TabSheetConsulta: TTabSheet;
    PanelLocalizaConsulta: TPanel;
    Label1: TLabel;
    EditLocalizar: TEdit;
    DBGridConsulta: TDBGrid;
    SqlMovimento: TSQLQuery;
    DspMovimento: TDataSetProvider;
    CdsMovimento: TClientDataSet;
    DsMovimento: TDataSource;
    TabSheetMovimentacao: TTabSheet;
    DBGrid1: TDBGrid;
    SqlConsulta: TSQLQuery;
    DspConsulta: TDataSetProvider;
    CdsConsulta: TClientDataSet;
    DsConsulta: TDataSource;
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
    procedure CdsCadastroReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure DBEditCPFExit(Sender: TObject);
    procedure DBEditCNPJExit(Sender: TObject);
  private
    CompClientDataSet: array of TClientDataSet;
    procedure CorNosCampos;
    { Private declarations }
  public
    procedure ClientDataSetReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    function IniciaTransCadastro: Boolean;
    function FinalizaTransCadastro: Boolean;
    function CancelaTransCadastro: Boolean;
    function ReeiniciaTransCadastro: Boolean;

    function IniciaTransFilhoCadastro: Boolean;
    function FinalizaTransFilhoCadastro: Boolean;
    function CancelaTransFilhoCadastro: Boolean;
    function ReeiniciaTransFilhoCadastro: Boolean;
    { Public declarations }
  end;

var
  FrmModeloMovimentacao: TFrmModeloMovimentacao;
  CompLookupComboBox: array of TDBLookupComboBox;
  CompDBEdit: array of TDBEdit;
  TD: TTransactionDesc; // Para os Lançamentos .
  TD_Filho: TTransactionDesc; // Para os Lançamentos .

implementation

uses DmPrincipal, Lib, MovimentoInternos;

{$R *.dfm}

procedure TFrmModeloMovimentacao.NovoClick(Sender: TObject);
var
  CompEdit: TComponent;
begin
  PageControlModeloCadastro.Enabled := true;
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
  DBGridConsulta.Enabled := False;

  CorNosCampos;

end;

procedure TFrmModeloMovimentacao.EditarClick(Sender: TObject);
begin
  PageControlModeloCadastro.Enabled := true;
  StatusBar1.Panels[1].Text := 'EDIÇÃO';
  Novo.Enabled := False;
  Editar.Enabled := False;
  Salvar.Enabled := True;
  Cancelar.Enabled := True;
  Excluir.Enabled := False;
  DsCadastro.DataSet.Edit;

  DBGridConsulta.Enabled := False;

  CorNosCampos;

end;

procedure TFrmModeloMovimentacao.CancelarClick(Sender: TObject);
begin

  StatusBar1.Panels[1].Text := 'CANCELANDO';
  Novo.Enabled := True;
  Editar.Enabled := True;
  Salvar.Enabled := False;
  Excluir.Enabled := True;
  Cancelar.Enabled := False;
  DsCadastro.DataSet.Cancel;
  StatusBar1.Panels[1].Text := '...';
  cancelaTransCadastro;

  DBGridConsulta.Enabled := True;

  CorNosCampos;
  PageControlModeloCadastro.Enabled := false;

end;

procedure TFrmModeloMovimentacao.SalvarClick(Sender: TObject);
var
  erro_transacao, iComp: Integer;
begin

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
      ShowMessage('Inconsistência nos dados:' + TrataExceptionErro(e.Message));
    end;
  end;

  if erro_transacao = 0 then
  begin
    finalizaTransCadastro;
    DBGridConsulta.Enabled := True;
  end
  else
  begin
    CancelaTransCadastro;
    ShowMessage('Erro na transação, não salvou.');
    exit;
  end;

  StatusBar1.Panels[1].Text := '...';
  DsCadastro.DataSet.Refresh;
  if Salvar.Tag = 0 then
    ShowMessage('Registro Salvo com Sucesso!');
    
  CorNosCampos;

end;

procedure TFrmModeloMovimentacao.ExcluirClick(Sender: TObject);
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
    except
      ShowMessage('Não pode excluir existe tabelas dependentes.');
      CancelaTransCadastro;
    end;

  end;

  StatusBar1.Panels[1].Text := '...';
  CorNosCampos;

end;

procedure TFrmModeloMovimentacao.FecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmModeloMovimentacao.DsCadastroDataChange(Sender: TObject;
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
      Exit;
    end;

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
  end;

end;

procedure TFrmModeloMovimentacao.DBGridConsultaDrawColumnCell(Sender: TObject;
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

procedure TFrmModeloMovimentacao.DBGridConsultaTitleClick(Column: TColumn);
begin
  TClientDataSet(Column.Field.DataSet).IndexFieldNames := Column.FieldName;
end;

procedure TFrmModeloMovimentacao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_escape then
    close;
end;

procedure TFrmModeloMovimentacao.FormCloseQuery(Sender: TObject;
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

procedure TFrmModeloMovimentacao.FormCreate(Sender: TObject);
var
  iComp: Integer;
  confere: string;
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

  SetCurrentDir(GLOBAL_PATCH_SISTEMA);
  PageControlModeloCadastro.Enabled := False;

  for iComp := 0 to Componentcount - 1 do
  begin

    if (Components[iComp] is TDBEdit) then
    begin
      SetLength(CompDBEdit, High(CompDBEdit) + 2);
      CompDBEdit[High(CompDBEdit)] := (Components[iComp] as TDBEdit);
      (Components[iComp] as TDBEdit).Color := CorCompInativo;
    end;

    if (Components[iComp] is TDBLookupComboBox) then
    begin
      SetLength(CompLookupComboBox, High(CompLookupComboBox) + 2);
      CompLookupComboBox[High(CompLookupComboBox)] := (Components[iComp] as TDBLookupComboBox);
      (Components[iComp] as TDBLookupComboBox).Color := CorCompInativo;
    end;

    if (Components[iComp] is TSQLQuery) then
      if not assigned(TSQLQuery(Components[iComp]).SQLConnection) then
        TSQLQuery(Components[iComp]).SQLConnection := DM.SQLConnect;

    if (Components[iComp] is TadpDBDateTimePicker) then
      TadpDBDateTimePicker(Components[iComp]).Time := 0;

    if (Components[iComp] is TClientDataSet) then
    begin
      if TClientDataSet(Components[iComp]).Name <> CdsCadastro.Name then
      begin
        SetLength(CompClientDataSet, High(CompClientDataSet) + 2);
        CompClientDataSet[High(CompClientDataSet)] := (Components[iComp] as TClientDataSet);
      end;
    end;

  end;

  PageControlModeloCadastro.ActivePageIndex := 0;
  PageControlConsulta.ActivePageIndex := 0;

end;

procedure TFrmModeloMovimentacao.FormShow(Sender: TObject);
begin
  DsCadastro.DataSet.Open;
  PageControlModeloCadastro.ActivePageIndex := 0;
  if DsCadastro.DataSet.State in [dsinsert, dsedit] then
    DsCadastro.DataSet.Cancel;
  CancelarClick(nil);
end;

procedure TFrmModeloMovimentacao.CorNosCampos();
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
            if (DsCadastro.DataSet.State in [dsbrowse]) then
            begin
              Color := CorCompInativo;
              PageControlModeloCadastro.Enabled := false;
            end
            else
            begin
              Color := CorCompAtivo;
              PageControlModeloCadastro.Enabled := True;
            end;
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
          if (DsCadastro.DataSet.State in [dsbrowse]) then
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

function TFrmModeloMovimentacao.IniciaTransCadastro: Boolean;
begin
  try
    TD.TransactionID := 0;
    TD.IsolationLevel := xilREADCOMMITTED;
    DM.SQLConnect.StartTransaction(TD);
    DM.SQLConnect.ExecuteDirect('EXECUTE PROCEDURE set_context(' + inttostr(GLOBAL_ID_FUNCIONARIO) + ')');
  except //se der erro para abrir uma TransCadastro
  end;
end;

function TFrmModeloMovimentacao.ReeiniciaTransCadastro: Boolean;
begin
  try
    FinalizaTransCadastro;
    TD.TransactionID := TD.TransactionID + 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    DM.SQLConnect.StartTransaction(TD);
  except
  end;
end;

function TFrmModeloMovimentacao.FinalizaTransCadastro: Boolean;
begin
  try
    Result := False;
    if DM.SQLConnect.InTransaction then
      DM.SQLConnect.Commit(TD);
    Result := True;
  except
  end;
end;

function TFrmModeloMovimentacao.CancelaTransCadastro: Boolean;
begin
  try
    if DM.SQLConnect.InTransaction then
      DM.SQLConnect.Rollback(TD);
  except
  end;

end;

function TFrmModeloMovimentacao.IniciaTransFilhoCadastro: Boolean;
begin
  try
    TD_Filho.GlobalID := TD_Filho.TransactionID;
    TD_Filho.TransactionID := TD.TransactionID + 1;
    TD_Filho.IsolationLevel := xilREADCOMMITTED;
    DM.SQLConnect.StartTransaction(TD_Filho);
  except //se der erro para abrir uma TransFilhoCadastro
  end;
end;

function TFrmModeloMovimentacao.ReeiniciaTransFilhoCadastro: Boolean;
begin
  try
    FinalizaTransFilhoCadastro;
    TD_Filho.GlobalID := TD_Filho.TransactionID;
    TD_Filho.TransactionID := TD_Filho.TransactionID + 1;
    TD_Filho.IsolationLevel := xilREADCOMMITTED;
    DM.SQLConnect.StartTransaction(TD_Filho);
  except
  end;
end;

function TFrmModeloMovimentacao.FinalizaTransFilhoCadastro: Boolean;
begin
  try
    Result := False;
    if DM.SQLConnect.InTransaction then
      DM.SQLConnect.Commit(TD_Filho);
    Result := True;
  except
  end;
end;

function TFrmModeloMovimentacao.CancelaTransFilhoCadastro: Boolean;
begin
  try
    if DM.SQLConnect.InTransaction then
      DM.SQLConnect.Rollback(TD_Filho);
  except
  end;

end;

procedure TFrmModeloMovimentacao.FormDestroy(Sender: TObject);
begin
  SetLength(CompLookupComboBox, 0);
  SetLength(CompDBEdit, 0);

end;

procedure TFrmModeloMovimentacao.CdsCadastroReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
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

procedure TFrmModeloMovimentacao.ClientDataSetReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
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

procedure TFrmModeloMovimentacao.DBEditCPFExit(Sender: TObject);
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

procedure TFrmModeloMovimentacao.DBEditCNPJExit(Sender: TObject);
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


end.

