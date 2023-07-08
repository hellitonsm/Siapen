unit MovimentacaoPortaria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloMovimentacao, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, ToolWin, ExtCtrls, DBCtrls,
  Mask, Buttons, Jpeg;

type
  TFrmMovimentacaoPortaria = class(TFrmModeloMovimentacao)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    SqlVisitanteInterno: TSQLQuery;
    DspVisitanteInterno: TDataSetProvider;
    CdsVisitanteInterno: TClientDataSet;
    DsVisitanteInterno: TDataSource;
    Panel2: TPanel;
    SqlSelectVisitante: TSQLQuery;
    OpenDialogFOTO: TOpenDialog;
    DBRadioGroup2: TDBRadioGroup;
    SqlMenores: TSQLQuery;
    DspMenores: TDataSetProvider;
    CdsMenores: TClientDataSet;
    DsMenores: TDataSource;
    LabelTotalVisitante: TLabel;
    DBImageFOTO: TDBImage;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    BitBtnCancelaEntrada: TBitBtn;
    Label4: TLabel;
    Label8: TLabel;
    PanelCadastro: TPanel;
    PanelBotao: TPanel;
    PanelLocaliza: TPanel;
    Label1: TLabel;
    EditLocalizar: TEdit;
    RadioGroupTipoLocalizar: TRadioGroup;
    ToolBarModeloCadastro: TToolBar;
    Novo: TToolButton;
    Editar: TToolButton;
    Cancelar: TToolButton;
    Salvar: TToolButton;
    Excluir: TToolButton;
    Fechar: TToolButton;
    TbMovimentar: TToolButton;
    procedure ButtonNovoInternoClick(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure CdsVisitanteInternoCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure EditLocalizarChange(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure DsConsultaDataChange(Sender: TObject; Field: TField);
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
    procedure DBRadioGroup2Change(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
  private
    function ValidarVisitante: boolean;
    function CodigoIgual: Boolean;
    function ValidaPreenchimento: Boolean;
    function MaximoInternoVisitante: boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMovimentacaoPortaria: TFrmMovimentacaoPortaria;
  novo_registro: Boolean = False;

implementation

uses VisitanteInterno, DmPrincipal, Lib, VisitanteMenores;

{$R *.dfm}

procedure TFrmMovimentacaoPortaria.ButtonNovoInternoClick(Sender: TObject);
begin
  inherited;

  if ValidarVisitante then
  begin
    if TClientDataSet(DsCadastro.DataSet).State in [dsinsert] then
    begin
      try
        IniciaTransCadastro;
        TClientDataSet(DsCadastro.DataSet).Post;
        if TClientDataSet(DsCadastro.DataSet).ApplyUpdates(0) = 0 then
          FinalizaTransCadastro
        else
          CancelaTransCadastro;
      except
        CancelaTransCadastro;
      end;

    end;

  end;

end;

procedure TFrmMovimentacaoPortaria.NovoClick(Sender: TObject);
begin
  inherited;
  novo_registro := true;
  dm.SqlExecute.SQL.Text := 'select gen_id (cod_up, 0) || gen_id (id_visitante, 1) as ID from rdb$database';
  dm.DsExecute.DataSet.Close;
  dm.DsExecute.DataSet.Open;
  DsCadastro.DataSet.fieldbyname('id_visitante').AsInteger := dm.DsExecute.DataSet.FieldByName('ID').AsInteger;
  DsCadastro.DataSet.fieldbyname('NUMERO_CARTEIRINHA').AsString := EditLocalizar.Text;
  DsCadastro.DataSet.fieldbyname('STATUS').AsString := 'A';
  DsCadastro.DataSet.fieldbyname('SEXO').AsString := 'F';
  dm.DsExecute.DataSet.Close;

  if DBEdit4.canfocus then
    DBEdit4.setfocus;
end;

procedure TFrmMovimentacaoPortaria.CdsVisitanteInternoCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  //  dm.DsExecute.DataSet.Close;
  //
  //  if (DataSet.FieldByName('ID_INTERNO').AsVariant <> null) then
  //  begin
  //    dm.SqlExecute.SQL.Text := 'select nome_interno from interno where id_interno = ' + DataSet.FieldByName('ID_INTERNO').AsString;
  //    dm.DsExecute.DataSet.Open;
  //    DataSet.FieldByName('NOME_INTERNO').AsString := dm.DsExecute.DataSet.FieldByName('NOME_INTERNO').AsString;
  //    dm.DsExecute.DataSet.Close;
  //  end;
  //
  //  if (DataSet.FieldByName('ID_GRAU_PARENTESCO').AsVariant <> null) then
  //  begin
  //    dm.SqlExecute.SQL.Text := 'SELECT GRAU_PARENTESCO FROM GRAU_PARENTESCO WHERE ID_GRAU_PARENTESCO = ' + DataSet.FieldByName('ID_GRAU_PARENTESCO').AsString;
  //    dm.DsExecute.DataSet.Open;
  //    DataSet.FieldByName('GRAU_PARENTESCO').AsString := dm.DsExecute.DataSet.FieldByName('GRAU_PARENTESCO').AsString;
  //    dm.DsExecute.DataSet.Close;
  //  end;

end;

procedure TFrmMovimentacaoPortaria.FormShow(Sender: TObject);
begin
  inherited;
  DsVisitanteInterno.DataSet.Open;
  DsMenores.DataSet.Open;
  DsMovimento.DataSet.Open;

end;

procedure TFrmMovimentacaoPortaria.FormCreate(Sender: TObject);
begin
  inherited;

  SqlMovimento.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;

  DsVisitanteInterno.DataSet.Close;
  DsMenores.DataSet.Close;
  DsMovimento.DataSet.Close;

  RadioGroupTipoLocalizarClick(nil);
end;

procedure TFrmMovimentacaoPortaria.Button2Click(Sender: TObject);
begin
  inherited;
  try
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
  DsVisitanteInterno.DataSet.Open;
end;

procedure TFrmMovimentacaoPortaria.SalvarClick(Sender: TObject);
begin
  novo_registro := False;
  inherited;

  try
    IniciaTransCadastro;

    if TClientDataSet(DsMenores.DataSet).ChangeCount > 0 then
      TClientDataSet(DsMenores.DataSet).ApplyUpdates(0);

    FinalizaTransCadastro;
  except
    CancelaTransCadastro;
  end;

  EditLocalizar.Text := '';

  if EditLocalizar.CanFocus then
    EditLocalizar.SetFocus;

  PageControlConsulta.ActivePageIndex := 0;

end;

procedure TFrmMovimentacaoPortaria.EditLocalizarChange(Sender: TObject);
var
  Status, Campo: string;
begin
  inherited;
  //  CancelarClick(nil);

  case RadioGroupTipoLocalizar.ItemIndex of
    0: Campo := 'NUMERO_CARTEIRINHA';
    1: Campo := 'VISITANTE';
  end;
  {
    sqlconsulta.sql.text := SqlSelectVisitante.SQL.Text + ' where visitante.status = ' + qs(Status) + ' and ' + Campo + ' like '
      + qs(EditLocalizar.text + '%') + ' order by  ';

    DsConsulta.DataSet.Close;
    DsConsulta.DataSet.Open;
  }

  DsConsulta.DataSet.Locate(Campo, EditLocalizar.text, [loCaseInsensitive, loPartialKey]);

  PageControlConsulta.ActivePageIndex := 1;
  PageControlModeloCadastro.ActivePageIndex := 0;

end;

procedure TFrmMovimentacaoPortaria.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  with DsCadastro.DataSet do
  begin
    //    Image1.Picture.Metafile.Clear;

    if not Active then
      Exit;

    if IsEmpty then
    begin
      Exit;
    end;

    if state in [dsedit, dsinsert] then
    begin
    end
    else
    begin
      //      if fileexists(fieldbyname('foto').asstring) then
      //        Image1.Picture.LoadFromFile(fieldbyname('foto').asstring);
    end;

  end;

end;

procedure TFrmMovimentacaoPortaria.DsConsultaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  with DsConsulta.DataSet do
  begin

    if not Active then
      Exit;

    if IsEmpty then
    begin
      SqlCadastro.SQL.Text := 'SELECT * FROM VISITANTE WHERE ID_VISITANTE = -1 ';
      DsCadastro.DataSet.Close;
      DsCadastro.DataSet.Open;
      Exit;
    end;

    SqlCadastro.SQL.Text := 'SELECT * FROM VISITANTE WHERE ID_VISITANTE = ' + Fieldbyname('ID_VISITANTE').AsString;
    DsCadastro.DataSet.Close;
    DsCadastro.DataSet.Open;

  end;

end;

procedure TFrmMovimentacaoPortaria.Image1Click(Sender: TObject);
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
        JPeg.LoadFromFile(ConverterBmpParaJPeg(JpgToBmp(OpenDialogFOTO.FileName)));
        DBImageFOTO.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end;
end;

procedure TFrmMovimentacaoPortaria.TbMovimentarClick(Sender: TObject);
var
  sQuantidade_Menor: string;
begin
  inherited;
  with DsCadastro.DataSet do
  begin

    if not Active then
      Exit;

    if IsEmpty then
    begin
      ShowMessage('Sem cadastro de visitante.');
      Exit;
    end;

    if not novo_registro then
    begin
      if not CodigoIgual then
      begin
        ShowMessage('Código diferente do que está no cadastro do visitante.');
        Exit;
      end;
    end;

    if not ValidaPreenchimento then
    begin
      Editar.OnClick(nil);
      Exit;
    end;

    if fieldbyname('STATUS').AsString = 'I' then
    begin
      ShowMessage('Visitante inativo. Motivo: ' + fieldbyname('MOTIVO_INATIVO').AsString + '.');
      if EditLocalizar.CanFocus then
        EditLocalizar.SetFocus;
      Exit;
    end;

    if fieldbyname('data_ult_visita').AsDateTime = Date then
    begin
      ShowMessage('Visitante já lançado.');
      if EditLocalizar.CanFocus then
        EditLocalizar.SetFocus;
      Exit;
    end;

    if DsVisitanteInterno.DataSet.IsEmpty then
    begin
      ShowMessage('Informe ao menos um interno(a).');
      Editar.OnClick(nil);
      //      ButtonNovoInterno.OnClick(nil);
      Exit;
    end;


    if MaximoInternoVisitante then
    begin
      ShowMessage('Interno(a):' +
        DsVisitanteInterno.DataSet.fieldbyname('NOME_INTERNO').asstring + ', já recebeu o maximo de visita liberado.');
      if MessageDlg('Liberar mais uma visita para o interno(a):' +
        DsVisitanteInterno.DataSet.fieldbyname('NOME_INTERNO').asstring + '?',
        mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
      begin
        Exit;
      end;
    end;

    DsVisitanteInterno.DataSet.First;
    if DsVisitanteInterno.DataSet.Locate('ISOLAMENTO', 'S', []) then
    begin
      if DsVisitanteInterno.DataSet.fieldbyname('ISOLAMENTO').AsString = 'S' then
      begin
        if MessageDlg('A cela ' + DsVisitanteInterno.DataSet.fieldbyname('CELA').AsString + ' é isolamento, continuar?',
          mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
        begin
          Exit;
        end;
      end;
    end;

    PageControlConsulta.ActivePageIndex := 0;

    //if MessageDlg('Confirma entrada de visitante?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin

      dm.SqlExecute.SQL.Text := 'update visitante set id_up=' + inttostr(GLOBAL_ID_UP)
        + ', data_ult_visita=current_date where id_visitante='
        + fieldbyname('id_visitante').AsString;
      if state in [dsedit, dsinsert] then
      begin
        Salvar.OnClick(nil);
        Refresh;
      end;

      try
        IniciaTransCadastro;
        dm.SqlExecute.ExecSQL();
        FinalizaTransCadastro;
      except
        CancelaTransCadastro;
      end;

      if StrToIntDef(sQuantidade_Menor, 0) > 0 then
      begin
        try
          IniciaTransCadastro;
          dm.SqlExecute.SQL.Text := 'update visitante set quantidade_menor = ' + sQuantidade_Menor
            + ' where id_visitante = '
            + fieldbyname('id_visitante').AsString;
          dm.SqlExecute.ExecSQL();
          dm.SqlExecute.SQL.Text := 'update mov_diario_visitantes set quantidade_menor = ' + sQuantidade_Menor
            + ' where data_visita=current_date and id_visitante = '
            + fieldbyname('id_visitante').AsString;
          dm.SqlExecute.ExecSQL();
          FinalizaTransCadastro;
        except
          CancelaTransCadastro;
        end;
      end;

      DsMovimento.DataSet.Close;
      DsMovimento.DataSet.Open;

      DsMovimento.DataSet.last;
      EditLocalizar.Text := '';
      EditLocalizar.SetFocus;

    end;

  end;

end;

procedure TFrmMovimentacaoPortaria.ButtonNovoMenorClick(Sender: TObject);
begin
  inherited;

  FrmVisitanteMenores := TFrmVisitanteMenores.Create(Application);
  if FrmVisitanteMenores.ShowModal = mrok then
  begin
    DsMenores.DataSet.Append;
    DsMenores.DataSet.fieldbyname('id_menores').AsInteger := 0;
    DsMenores.DataSet.fieldbyname('id_visitante').AsInteger := DsCadastro.DataSet.fieldbyname('id_visitante').AsInteger;
    DsMenores.DataSet.fieldbyname('NOME_MENORES').AsString := FrmVisitanteMenores.EditMenor.Text;
    DsMenores.DataSet.Post;
  end;

end;

procedure TFrmMovimentacaoPortaria.Button6Click(Sender: TObject);
begin
  inherited;
  DsMenores.DataSet.Delete;
end;

function TFrmMovimentacaoPortaria.ValidarVisitante(): boolean;
begin
  result := true;

end;

procedure TFrmMovimentacaoPortaria.DsMovimentoDataChange(Sender: TObject;
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

procedure TFrmMovimentacaoPortaria.RadioGroupStatusClick(Sender: TObject);
begin
  inherited;
  RadioGroupTipoLocalizarClick(nil);
end;

function TFrmMovimentacaoPortaria.CodigoIgual(): Boolean;
begin
  //default: valida o código
  Result := EditLocalizar.Text = DsCadastro.DataSet.FieldByName('NUMERO_CARTEIRINHA').AsString;
  //se for por nome ignorar e validar como verdadeiro
  if RadioGroupTipoLocalizar.ItemIndex = 1 then
    Result := True;
end;

procedure TFrmMovimentacaoPortaria.EditLocalizarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = vk_return then
  begin
    TbMovimentar.OnClick(nil);
  end;
end;

procedure TFrmMovimentacaoPortaria.BitBtnCancelaEntradaClick(
  Sender: TObject);
begin
  inherited;
  if MessageDlg('Cancelar entrada deste visitante: ' + dsmovimento.DataSet.fieldbyname('NOME_VISITANTE').AsString + '?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      IniciaTransCadastro;
      dm.SqlExecute.SQL.Text := 'update mov_diario_visitantes set cancelado=''S'' where id_mov_diario_visitantes='
        + dsmovimento.DataSet.FieldByname('id_mov_diario_visitantes').AsString;
      dm.SqlExecute.ExecSQL();
      dm.SqlExecute.SQL.Text := 'update visitante set data_ult_visita = null where id_visitante='
        + dsmovimento.DataSet.FieldByname('id_visitante').AsString;
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

function TFrmMovimentacaoPortaria.ValidaPreenchimento(): Boolean;
begin
  with DsCadastro.DataSet do
  begin

    if Trim(fieldbyname('NUMERO_CARTEIRINHA').AsString) = '' then
    begin
      ShowMessage('Código do Cartão está vazio.');
      result := false;
      Exit;
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

  end;

  result := true;

end;

procedure TFrmMovimentacaoPortaria.RadioGroupTipoLocalizarClick(
  Sender: TObject);
var
  Status, Campo: string;
begin
  inherited;
  CancelarClick(nil);

  case RadioGroupTipoLocalizar.ItemIndex of
    0: Campo := 'NUMERO_CARTEIRINHA';
    1: Campo := 'VISITANTE';
  end;

  sqlconsulta.sql.text := SqlSelectVisitante.SQL.Text
    + ' order by ' + Campo;

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

end;

procedure TFrmMovimentacaoPortaria.EditLocalizarKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if RadioGroupTipoLocalizar.ItemIndex = 0 then
  begin
    if not (key in ['0'..'9', #8]) then
      Key := #0;
  end;
end;

procedure TFrmMovimentacaoPortaria.DBRadioGroup2Change(Sender: TObject);
var
  sMotivo_Inativo: string;
begin
  inherited;
  if DBRadioGroup2.ItemIndex = 1 then
  begin
    if DsCadastro.DataSet.State in [dsedit, dsinsert] then
    begin
      sMotivo_Inativo := InputBox('Informe o motivo de ficar inativo', 'Inativo por que?', 'CANCELAMENTO DO CARTÃO');
      DsCadastro.DataSet.FieldByName('MOTIVO_INATIVO').AsString := sMotivo_Inativo;
    end;
  end;
end;

procedure TFrmMovimentacaoPortaria.CancelarClick(Sender: TObject);
begin
  novo_registro := False;
  inherited;

end;

procedure TFrmMovimentacaoPortaria.ExcluirClick(Sender: TObject);
begin
  novo_registro := False;
  inherited;

end;

function TFrmMovimentacaoPortaria.MaximoInternoVisitante(): boolean;
begin

  result := false;

  //pega só do principal
  DsVisitanteInterno.DataSet.first;
  dm.SqlExecute.SQL.Text
    := 'select count(*) total from visitante v, visitante_interno i where v.id_visitante=i.id_visitante '
    + ' and v.data_ult_visita=current_date and i.id_interno in ('
    + DsVisitanteInterno.DataSet.fieldbyname('ID_INTERNO').asstring + ')';

  dm.dsExecute.dataset.close;
  dm.dsExecute.dataset.open;

end;

end.

