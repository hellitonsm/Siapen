unit MovimentoProcedimentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, DBCtrls, ToolWin, ExtCtrls,
  Mask, Buttons, jpeg, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFrmMovimentoProcedimentos = class(TFrmModeloCadastro)
    DateTimePicker1: TDateTimePicker;
    DsMovAdv: TDataSource;
    CdsMovAdv: TClientDataSet;
    DspMovAdv: TDataSetProvider;
    SqlMovAdvold: TSQLQuery;
    SqlMovFuncold: TSQLQuery;
    DspMovFunc: TDataSetProvider;
    CdsMovFunc: TClientDataSet;
    DsMovFunc: TDataSource;
    SqlMovIntold: TSQLQuery;
    DspMovInt: TDataSetProvider;
    CdsMovInt: TClientDataSet;
    DsMovInt: TDataSource;
    SqlMovVisold: TSQLQuery;
    DspMovVis: TDataSetProvider;
    CdsMovVis: TClientDataSet;
    DsMovVis: TDataSource;
    PageControlPrincipal: TPageControl;
    TabSheetInterno: TTabSheet;
    TabSheetAdvogado: TTabSheet;
    TabSheetFuncionario: TTabSheet;
    TabSheetVisitante: TTabSheet;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    CdsMovAdvIDMOV_PROCEDIMENTOS_ADV: TIntegerField;
    CdsMovAdvIDMOV_PROCEDIMENTOS: TIntegerField;
    CdsMovAdvIDADVOGADO: TIntegerField;
    CdsMovAdvADVOGADO: TStringField;
    CdsMovFuncIDMOV_PROCEDIMENTOS_FUNC: TIntegerField;
    CdsMovFuncIDMOV_PROCEDIMENTOS: TIntegerField;
    CdsMovFuncIDFUNCIONARIO: TIntegerField;
    CdsMovFuncFUNCIONARIO: TStringField;
    CdsMovIntIDMOV_PROCEDIMENTOS_INT: TIntegerField;
    CdsMovIntIDMOV_PROCEDIMENTOS: TIntegerField;
    CdsMovIntIDINTERNO: TIntegerField;
    CdsMovIntINTERNO: TStringField;
    CdsMovVisIDMOV_PROCEDIMENTOS_VIS: TIntegerField;
    CdsMovVisIDMOV_PROCEDIMENTOS: TIntegerField;
    CdsMovVisIDVISITANTE: TIntegerField;
    CdsMovVisVISITANTE: TStringField;
    DBGridInterno: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    Panel1: TPanel;
    DBLookupComboBoxInterno: TDBLookupComboBox;
    Label33: TLabel;
    BtnInserirInterno: TButton;
    BtnDeletarInterno: TButton;
    Panel2: TPanel;
    Label5: TLabel;
    DBLookupComboBoxAdvogado: TDBLookupComboBox;
    BtnInserirAdvogado: TButton;
    BtnDeletarAdvogado: TButton;
    Panel3: TPanel;
    Label6: TLabel;
    DBLookupComboBoxFuncionario: TDBLookupComboBox;
    BtnInserirFuncionario: TButton;
    BtnDeletarFuncionario: TButton;
    Panel4: TPanel;
    Label7: TLabel;
    DBLookupComboBoxVisitante: TDBLookupComboBox;
    BtnInserirVisitante: TButton;
    BtnDeletarVisitante: TButton;
    DBMemo1: TDBMemo;
    Label8: TLabel;
    CheckBoxData: TCheckBox;
    SqlMovInt: TFDQuery;
    SqlMovFunc: TFDQuery;
    SqlMovAdv: TFDQuery;
    SqlMovVis: TFDQuery;
    procedure NovoClick(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure SalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnInserirInternoClick(Sender: TObject);
    procedure BtnDeletarInternoClick(Sender: TObject);
    procedure CdsMovAdvAfterInsert(DataSet: TDataSet);
    procedure CdsMovFuncAfterInsert(DataSet: TDataSet);
    procedure CdsMovIntAfterInsert(DataSet: TDataSet);
    procedure CdsMovVisAfterInsert(DataSet: TDataSet);
    procedure BtnInserirAdvogadoClick(Sender: TObject);
    procedure BtnDeletarAdvogadoClick(Sender: TObject);
    procedure BtnInserirFuncionarioClick(Sender: TObject);
    procedure BtnDeletarFuncionarioClick(Sender: TObject);
    procedure BtnInserirVisitanteClick(Sender: TObject);
    procedure BtnDeletarVisitanteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure CheckBoxDataClick(Sender: TObject);
  private
    IDMOV_PROCEDIMENTOS:Integer;
    { Private declarations }
  public
    IDPROCEDIMENTOS, IDMOV_PROCEDIMENTOS_PRINCIPAL:Integer;
    DESCRICAO_PROCEDIMENTOS, ENVOLVE_ADVOGADO, ENVOLVE_FUNCIONARIO,
    ENVOLVE_INTERNO, ENVOLVE_VISITANTE, OBSERVACAO, FUNCAO_FUNCIONARIO:String;
    HORA_INICIAL, HORA_FINAL:TDateTime;
    { Public declarations }
  end;

var
  FrmMovimentoProcedimentos: TFrmMovimentoProcedimentos;

implementation

uses Lib, DmPrincipal;

{$R *.dfm}

procedure TFrmMovimentoProcedimentos.NovoClick(Sender: TObject);
begin
  inherited;

  CheckBoxData.Checked := False;
  Data_DateTimePicker(DateTimePicker1,Date);

  if IDMOV_PROCEDIMENTOS_PRINCIPAL = 0 then
  begin
    if not CheckBoxData.Checked then
    begin
      DsCadastro.DataSet.FieldByName('DATA').AsVariant := Null;
      DsCadastro.DataSet.FieldByName('HORA_INICIAL').AsVariant := Null;
      DsCadastro.DataSet.FieldByName('HORA_FINAL').AsVariant := Null;
    end;
  end
  else
  begin
      DsCadastro.DataSet.FieldByName('IDMOV_PROCEDIMENTOS_PRINCIPAL').AsInteger := IDMOV_PROCEDIMENTOS_PRINCIPAL ;
  end;

  DateTimePicker1.Enabled := CheckBoxData.Checked;
  DBEdit1.Enabled := CheckBoxData.Checked;
  DBEdit2.Enabled := CheckBoxData.Checked;


  DM.SqlExecute.SQL.Text := 'SELECT GEN_ID(COD_UP,0)||GEN_ID(IDMOV_PROCEDIMENTOS,1) IDMOV_PROCEDIMENTOS FROM RDB$DATABASE';
  DM.SqlExecute.Open;
  IDMOV_PROCEDIMENTOS := DM.SqlExecute.fieldbyname('IDMOV_PROCEDIMENTOS').AsInteger;
  DM.SqlExecute.Close;

  DsCadastro.DataSet.fieldbyname('ID_UP').AsInteger := GLOBAL_ID_UP;
  DsCadastro.DataSet.fieldbyname('IDMOV_PROCEDIMENTOS').AsInteger := IDMOV_PROCEDIMENTOS;
  DsCadastro.DataSet.fieldbyname('IDPROCEDIMENTOS').AsInteger := IDPROCEDIMENTOS;
  DsCadastro.DataSet.fieldbyname('OBSERVACAO').AsString := OBSERVACAO;

  if FUNCAO_FUNCIONARIO <> '' then
    DM.DsFuncionario.DataSet.Filter := 'FUNCAO='+QS(FUNCAO_FUNCIONARIO);

end;

procedure TFrmMovimentoProcedimentos.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  with DsCadastro.DataSet do
  begin
    if not Active then
      Exit;

    if IsEmpty then
      Exit;

    if state in [dsedit] then
      Data_DateTimePicker(DateTimePicker1,fieldbyname('DATA').AsDateTime);

  end;
end;

procedure TFrmMovimentoProcedimentos.SalvarClick(Sender: TObject);
var
  iErro, ierro1: integer;
begin

  if TabSheetAdvogado.TabVisible then
  begin
    if DsMovAdv.DataSet.IsEmpty then
    begin
      ShowMessage('Este procedimento exige informar um advogado.');
      Exit;
    end;
  end;

  if TabSheetInterno.TabVisible then
  begin
    if DsMovInt.DataSet.IsEmpty then
    begin
      ShowMessage('Este procedimento exige informar um interno.');
      Exit;
    end;
  end;

  if TabSheetFuncionario.TabVisible then
  begin
    if DsMovFunc.DataSet.IsEmpty then
    begin
      ShowMessage('Este procedimento exige informar um funcionário.');
      Exit;
    end;
  end;

  if TabSheetVisitante.TabVisible then
  begin
    if DsMovVis.DataSet.IsEmpty then
    begin
      ShowMessage('Este procedimento exige informar um visitante.');
      Exit;
    end;
  end;

  DBLookupComboBoxInterno.KeyValue := null;
  DBLookupComboBoxAdvogado.KeyValue := null;
  DBLookupComboBoxFuncionario.KeyValue := null;
  DBLookupComboBoxVisitante.KeyValue := null;

  try
    StatusBar1.Panels[1].Text := 'SALVANDO';
    Novo.Enabled := True;
    Editar.Enabled := True;
    Excluir.Enabled := True;
    Salvar.Enabled := False;
    Cancelar.Enabled := False;

    if DsCadastro.DataSet.State in [dsedit, dsinsert] then
    begin
      if CheckBoxData.Checked then
        DsCadastro.DataSet.FieldByName('DATA').AsDateTime := StrToDate(FormatDateTime('DD/MM/YYYY',DateTimePicker1.Date));
      DsCadastro.DataSet.Post;
    end;

    if DsMovAdv.DataSet.State in [dsedit, dsinsert] then
      DsMovAdv.DataSet.Post;

    if DsMovFunc.DataSet.State in [dsedit, dsinsert] then
      DsMovFunc.DataSet.Post;

    if DsMovInt.DataSet.State in [dsedit, dsinsert] then
      DsMovInt.DataSet.Post;

    if DsMovVis.DataSet.State in [dsedit, dsinsert] then
      DsMovVis.DataSet.Post;

    IniciaTransCadastro;

    iErro := TClientDataSet(DsCadastro.DataSet).ApplyUpdates(0)
    + TClientDataSet(DsMovAdv.DataSet).ApplyUpdates(0)
    + TClientDataSet(DsMovFunc.DataSet).ApplyUpdates(0)
    + TClientDataSet(DsMovInt.DataSet).ApplyUpdates(0)
    + TClientDataSet(DsMovVis.DataSet).ApplyUpdates(0)
    ;

    if iErro = 0 then
      finalizaTransCadastro
    else
      CancelaTransCadastro;

    StatusBar1.Panels[1].Text := '...';
    DsCadastro.DataSet.Refresh;
    PanelCadastro.Enabled := False;
  except
    ShowMessage('Erro na transação');
  end;
  CorNosCampos;
  PageControlPrincipal.ActivePageIndex := 0;

  DsMovAdv.DataSet.Close;
  DsMovAdv.DataSet.Open;

  DsMovFunc.DataSet.Close;
  DsMovFunc.DataSet.Open;

  DsMovInt.DataSet.Close;
  DsMovInt.DataSet.Open;

  DsMovVis.DataSet.Close;
  DsMovVis.DataSet.Open;

end;

procedure TFrmMovimentoProcedimentos.FormCreate(Sender: TObject);
begin
  inherited;

  IDMOV_PROCEDIMENTOS_PRINCIPAL := 0;

  PageControlPrincipal.ActivePageIndex := 0;

  DsMovAdv.DataSet.Close;
  DsMovAdv.DataSet.Open;

  DsMovFunc.DataSet.Close;
  DsMovFunc.DataSet.Open;

  DsMovInt.DataSet.Close;
  DsMovInt.DataSet.Open;

  DsMovVis.DataSet.Close;
  DsMovVis.DataSet.Open;

  dm.DsAdvogado.DataSet.Close;
  dm.DsAdvogado.DataSet.Open;

  dm.DsFuncionario.DataSet.Close;
  dm.DsFuncionario.DataSet.Open;

  dm.DsInterno.DataSet.Close;
  dm.DsInterno.DataSet.Open;

  dm.DsVisitante.DataSet.Close;
  dm.DsVisitante.DataSet.Open;

  Data_DateTimePicker(DateTimePicker1,Date);

end;

procedure TFrmMovimentoProcedimentos.BtnInserirInternoClick(Sender: TObject);
begin
  inherited;

  if DBLookupComboBoxInterno.KeyValue > 0 then
  begin
    with DsMovInt.DataSet do
    begin
      if recordcount > 0 then
      begin
        if ENVOLVE_INTERNO='S' then
        begin
          ShowMessage('No procedimento está especificado apenas um(1) interno.');
          Exit;
        end;
      end;
      Append;
      FieldByName('IDMOV_PROCEDIMENTOS').AsInteger:= IDMOV_PROCEDIMENTOS;
      FieldByName('IDINTERNO').AsInteger:= DBLookupComboBoxInterno.KeyValue;
      Post;
    end;
  end
  else
  begin
    ShowMessage('Informe o interno.');
  end;

end;

procedure TFrmMovimentoProcedimentos.BtnDeletarInternoClick(Sender: TObject);
begin
  inherited;
  with DsMovInt.DataSet do
  begin

    if not Active then
      Exit;

    if IsEmpty then
      Exit;

    Delete;
    
  end;

end;

procedure TFrmMovimentoProcedimentos.CdsMovAdvAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('IDMOV_PROCEDIMENTOS_ADV').AsInteger := 0;

end;

procedure TFrmMovimentoProcedimentos.CdsMovFuncAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('IDMOV_PROCEDIMENTOS_FUNC').AsInteger := 0;

end;

procedure TFrmMovimentoProcedimentos.CdsMovIntAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('IDMOV_PROCEDIMENTOS_INT').AsInteger := 0;

end;

procedure TFrmMovimentoProcedimentos.CdsMovVisAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('IDMOV_PROCEDIMENTOS_VIS').AsInteger := 0;

end;

procedure TFrmMovimentoProcedimentos.BtnInserirAdvogadoClick(
  Sender: TObject);
begin
  inherited;

  if DBLookupComboBoxAdvogado.KeyValue > 0 then
  begin
    with DsMovAdv.DataSet do
    begin
      if recordcount > 0 then
      begin
        if ENVOLVE_ADVOGADO='S' then
        begin
          ShowMessage('No procedimento está especificado apenas um(1) advogado.');
          Exit;
        end;
      end;
      Append;
      FieldByName('IDMOV_PROCEDIMENTOS').AsInteger:= IDMOV_PROCEDIMENTOS;
      FieldByName('IDADVOGADO').AsInteger:= DBLookupComboBoxAdvogado.KeyValue;
      Post;
    end;
  end
  else
  begin
    ShowMessage('Informe o advogado.');
  end;

end;

procedure TFrmMovimentoProcedimentos.BtnDeletarAdvogadoClick(
  Sender: TObject);
begin
  inherited;
  
  with DsMovAdv.DataSet do
  begin

    if not Active then
      Exit;

    if IsEmpty then
      Exit;

    Delete;
    
  end;

end;

procedure TFrmMovimentoProcedimentos.BtnInserirFuncionarioClick(
  Sender: TObject);
begin
  inherited;

  if DBLookupComboBoxFuncionario.KeyValue > 0 then
  begin
    with DsMovFunc.DataSet do
    begin
      if recordcount > 0 then
      begin
        if ENVOLVE_FUNCIONARIO='S' then
        begin
          ShowMessage('No procedimento está especificado apenas um(1) funcionário.');
          Exit;
        end;
      end;
      Append;
      FieldByName('IDMOV_PROCEDIMENTOS').AsInteger:= IDMOV_PROCEDIMENTOS;
      FieldByName('IDFUNCIONARIO').AsInteger:= DBLookupComboBoxFuncionario.KeyValue;
      Post;
    end;
  end
  else
  begin
    ShowMessage('Informe o funcionário.');
  end;

end;

procedure TFrmMovimentoProcedimentos.BtnDeletarFuncionarioClick(
  Sender: TObject);
begin
  inherited;
  with DsMovFunc.DataSet do
  begin

    if not Active then
      Exit;

    if IsEmpty then
      Exit;

    Delete;
    
  end;


end;

procedure TFrmMovimentoProcedimentos.BtnInserirVisitanteClick(
  Sender: TObject);
begin
  inherited;

  if DBLookupComboBoxVisitante.KeyValue > 0 then
  begin
    with DsMovVis.DataSet do
    begin
      if recordcount > 0 then
      begin
        if ENVOLVE_VISITANTE='S' then
        begin
          ShowMessage('No procedimento está especificado apenas um(1) visitante.');
          Exit;
        end;
      end;
      Append;
      FieldByName('IDMOV_PROCEDIMENTOS').AsInteger:= IDMOV_PROCEDIMENTOS;
      FieldByName('IDVISITANTE').AsInteger:= DBLookupComboBoxVisitante.KeyValue;
      Post;
    end;
  end
  else
  begin
    ShowMessage('Informe o visitante.');
  end;

end;

procedure TFrmMovimentoProcedimentos.BtnDeletarVisitanteClick(
  Sender: TObject);
begin
  inherited;

  with DsMovVis.DataSet do
  begin

    if not Active then
      Exit;

    if IsEmpty then
      Exit;

    Delete;
    
  end;

end;

procedure TFrmMovimentoProcedimentos.FormShow(Sender: TObject);
begin
  inherited;
  TabSheetAdvogado.TabVisible := not (ENVOLVE_ADVOGADO='N');
  TabSheetInterno.TabVisible := not (ENVOLVE_INTERNO='N');
  TabSheetFuncionario.TabVisible := not (ENVOLVE_FUNCIONARIO='N');
  TabSheetVisitante.TabVisible := not (ENVOLVE_VISITANTE='N');

  PageControlPrincipal.Visible := not ((ENVOLVE_ADVOGADO+ENVOLVE_INTERNO+ENVOLVE_FUNCIONARIO+ENVOLVE_VISITANTE)='NNNN');

end;

procedure TFrmMovimentoProcedimentos.CancelarClick(Sender: TObject);
begin
  DBLookupComboBoxInterno.KeyValue := null;
  DBLookupComboBoxAdvogado.KeyValue := null;
  DBLookupComboBoxFuncionario.KeyValue := null;
  DBLookupComboBoxVisitante.KeyValue := null;

  inherited;

end;

procedure TFrmMovimentoProcedimentos.CheckBoxDataClick(Sender: TObject);
begin
  inherited;
  if not CheckBoxData.Checked then
  begin
    DsCadastro.DataSet.FieldByName('DATA').AsVariant := Null;
    DsCadastro.DataSet.FieldByName('HORA_INICIAL').AsVariant := Null;
    DsCadastro.DataSet.FieldByName('HORA_FINAL').AsVariant := Null;
  end
  else
  begin
    DsCadastro.DataSet.fieldbyname('HORA_INICIAL').AsDateTime := HORA_INICIAL;
    DsCadastro.DataSet.fieldbyname('HORA_FINAL').AsDateTime := HORA_FINAL;
  end;

  DateTimePicker1.Enabled := CheckBoxData.Checked;
  DBEdit1.Enabled := CheckBoxData.Checked;
  DBEdit2.Enabled := CheckBoxData.Checked;

end;

end.
