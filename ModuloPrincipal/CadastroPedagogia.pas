unit CadastroPedagogia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloInterno, FMTBcd, DB, DBClient, Provider, SqlExpr, ImgList,
  ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Mask, Buttons,
  ToolWin, Menus, jpeg, dbcgrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFrmCadastroPedagogia = class(TFrmModeloInterno)
    TabSheet1: TTabSheet;
    SQLPedagogiaold: TSQLQuery;
    DSPpedagogia: TDataSetProvider;
    CDSpedagogia: TClientDataSet;
    DSpedagogia: TDataSource;
    CDSpedagogiaID_HISTORICO_PEDAGOGIA: TIntegerField;
    CDSpedagogiaDESCRICAO: TStringField;
    CDSpedagogiaDATA: TSQLTimeStampField;
    CDSpedagogiaID_FUNCIONARIO: TIntegerField;
    CDSpedagogiaID_INTERNO: TIntegerField;
    CDSpedagogiaFuncionrioa: TStringField;
    Label53: TLabel;
    DateTimePickerHistorico: TDateTimePicker;
    MemoDescricao: TMemo;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    TabSheet2: TTabSheet;
    Label8: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    SpeedButton3: TSpeedButton;
    dtpDataEntrega: TDateTimePicker;
    Memolivro: TMemo;
    dbgridIncluir: TDBGrid;
    DBMemo2: TDBMemo;
    BtnIncluir: TButton;
    SQLlivrointernoold: TSQLQuery;
    DSPlivrointerno: TDataSetProvider;
    CDSLIvrointerno: TClientDataSet;
    DSlivrointerno: TDataSource;
    CDSLIvrointernoID_LIVRO_INTERNO: TIntegerField;
    CDSLIvrointernoID_LIVRO: TIntegerField;
    CDSLIvrointernoID_INTERNO: TIntegerField;
    CDSLIvrointernoDATA: TSQLTimeStampField;
    CDSLIvrointernoOBS: TStringField;
    btnLivro: TSpeedButton;
    SQLLivroold: TSQLQuery;
    dspLivro: TDataSetProvider;
    cdsLivro: TClientDataSet;
    dsLivro: TDataSource;
    cmbLivro: TDBLookupComboBox;
    SQLlivrointernooldID_LIVRO_INTERNO: TIntegerField;
    SQLlivrointernooldID_LIVRO: TIntegerField;
    SQLlivrointernooldID_INTERNO: TIntegerField;
    SQLlivrointernooldDATA_ENTREGA: TSQLTimeStampField;
    SQLlivrointernooldDATA: TSQLTimeStampField;
    SQLlivrointernooldOBS: TStringField;
    CDSLIvrointernoDATA_ENTREGA: TSQLTimeStampField;
    CDSLIvrointernoLivro: TStringField;
    CDSLIvrointernoquant: TIntegerField;
    Label16: TLabel;
    Label17: TLabel;
    SQLlivrointerno: TFDQuery;
    SQLPedagogia: TFDQuery;
    SQLLivro: TFDQuery;
    procedure Button1Click(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure btnLivroClick(Sender: TObject);
    procedure dbgridIncluirDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure PageControlModeloCadastroChange(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure cmbLivroClick(Sender: TObject);
    procedure cmbLivroDropDown(Sender: TObject);
    procedure EditLocalizarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroPedagogia: TFrmCadastroPedagogia;
  usaDmExecute: boolean;

implementation

uses Lib, DmPrincipal, CadastroLivro, CadastroFuncionario;

{$R *.dfm}

procedure TFrmCadastroPedagogia.Button1Click(Sender: TObject);
begin
  inherited;

  dspedagogia.DataSet.Append;
  dspedagogia.DataSet.fieldbyname('id_historico_pedagogia').AsInteger := DM.SQLConnect.ExecSQLScalar('SELECT GEN_ID(COD_UP,0)||GEN_ID(idpedagogia,1) FROM RDB$DATABASE');
  dspedagogia.DataSet.fieldbyname('id_interno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  dspedagogia.DataSet.fieldbyname('id_funcionario').AsInteger := GLOBAL_ID_FUNCIONARIO;
  dspedagogia.DataSet.fieldbyname('data').AsString :=
    FormatDateTime('dd/mm/yyyy', DateTimePickerHistorico.Date);
  dspedagogia.DataSet.fieldbyname('descricao').AsString := MemoDescricao.Lines.Text;
  dspedagogia.DataSet.Post;

  MemoDescricao.Lines.Clear;
end;

procedure TFrmCadastroPedagogia.SalvarClick(Sender: TObject);
var
  iErro, ierro1: integer;
begin
  try
    StatusBar1.Panels[1].Text := 'SALVANDO';
    Novo.Enabled := True;
    Editar.Enabled := True;
    Excluir.Enabled := True;
    Salvar.Enabled := False;
    Cancelar.Enabled := False;

    if dspedagogia.DataSet.State in [dsedit, dsinsert] then
      dspedagogia.DataSet.Post;

    if DSlivrointerno.DataSet.State in [dsedit, dsinsert] then
      DSlivrointerno.DataSet.Post;

    if dm.DsExecute.DataSet.State in [dsedit, dsinsert] then
      dm.DsExecute.DataSet.Post;

    if DSlivro.DataSet.State in [dsedit, dsinsert] then
      DSlivro.DataSet.Post;


    IniciaTransCadastro;

    if usaDmExecute then
    begin
      iErro := TClientDataSet(dspedagogia.DataSet).ApplyUpdates(0)
        + TClientDataSet(DSlivrointerno.DataSet).ApplyUpdates(0) + TClientDataSet(dm.DsExecute.DataSet).ApplyUpdates(0) +
        TClientDataSet(dsLivro.DataSet).ApplyUpdates(0);
    end
    else
    begin
      iErro := TClientDataSet(dspedagogia.DataSet).ApplyUpdates(0)
        + TClientDataSet(DSlivrointerno.DataSet).ApplyUpdates(0) +
        TClientDataSet(dsLivro.DataSet).ApplyUpdates(0);
    end;

    if iErro = 0 then
      finalizaTransCadastro
    else
      CancelaTransCadastro;

    StatusBar1.Panels[1].Text := '...';
    dspedagogia.DataSet.Refresh;
    PanelCadastro.Enabled := False;
    ShowMessage('Registro Salvo com Sucesso!');
  except
    ShowMessage('Erro na transação');
  end;
  CorNosCampos;

  PageControlPrincipal.ActivePageIndex := 0;

  dspedagogia.DataSet.Close;
  dspedagogia.DataSet.OPEN;

  DSlivrointerno.DataSet.Close;
  DSlivrointerno.DataSet.OPEN;

  if usaDmExecute then
  begin
    dm.DsExecute.DataSet.Close;
    dm.DsExecute.DataSet.Open;
  end;

  dsLivro.DataSet.Close;
  dsLivro.DataSet.Open;

  usaDmExecute := false;
end;

procedure TFrmCadastroPedagogia.FormShow(Sender: TObject);

begin
  inherited;
  SQLLivro.close;
  SQLLivro.ParamByName('id_up').AsInteger := GLOBAL_ID_UP;
  SQLLivro.open;

  DSlivro.DataSet.Close;
  DSlivro.DataSet.Open;


  dm.DSlivro.DataSet.Close;
  dm.DSlivro.DataSet.Open;

  dspedagogia.DataSet.Close;
  dspedagogia.DataSet.OPEN;

  DSlivrointerno.DataSet.Close;
  DSlivrointerno.DataSet.OPEN;

  usaDmExecute := false;

  dtpDataEntrega.Date := Date;
end;

procedure TFrmCadastroPedagogia.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  FrmCadastrolivro := TFrmCadastrolivro.Create(Application);
  FrmCadastrolivro.ShowModal;
  FreeAndNil(FrmCadastrolivro);

  DSlivrointerno.DataSet.Close;
  DSlivrointerno.DataSet.OPEN;
end;

procedure TFrmCadastroPedagogia.BtnIncluirClick(Sender: TObject);
var
  teste: Integer;
begin
  inherited;
  DSlivrointerno.DataSet.Append;
  DSlivrointerno.DataSet.fieldbyname('id_livro_interno').AsInteger := DM.SQLConnect.ExecSQLScalar('SELECT GEN_ID(COD_UP,0)||GEN_ID(idremediointerno,1) FROM RDB$DATABASE');
  DSlivrointerno.DataSet.fieldbyname('id_interno').AsInteger := DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  DSlivrointerno.DataSet.fieldbyname('id_livro').AsInteger := DSlivro.DataSet.fieldbyname('id_livro').AsInteger;
  DSlivrointerno.DataSet.FieldByName('data_entrega').AsString := FormatDateTime('dd/mm/yyyy', dtpDataEntrega.Date);
  //será informado quando der o duplo clique
  //DSlivrointerno.DataSet.fieldbyname('data').AsString := FormatDateTime('dd/mm/yyyy', dtpDataDevolucao.Date);
  DSlivrointerno.DataSet.fieldbyname('obs').AsString := Memolivro.Lines.Text;
  DSlivrointerno.DataSet.Post;

  //bloco onde e inserido mais um no campo utilizado
  dm.SqlExecute.sql.text := 'select * from LIVRO where id_livro =  ' + IntToStr(cmbLivro.KeyValue);
  dm.DsExecute.DataSet.close;
  dm.DsExecute.DataSet.Open;
  teste := dm.DsExecute.DataSet.FieldByName('UTILIZADO').AsInteger;
  teste := teste + 1;
  dm.DsExecute.Edit;
  dm.DsExecute.DataSet.FieldByName('UTILIZADO').AsInteger := teste;
  dm.DsExecute.DataSet.Post;
  MemoDescricao.Lines.Clear;

  usaDmExecute := true;
  SalvarClick(nil);
  EditarClick(nil);
  PageControlPrincipal.ActivePageIndex := 3;

  SQLLivro.close;
  SQLLivro.ParamByName('id_up').AsInteger := GLOBAL_ID_UP;
  SQLLivro.open;
end;

procedure TFrmCadastroPedagogia.btnLivroClick(Sender: TObject);
begin
  FrmCadastrolivro := TFrmCadastrolivro.Create(Application);
  FrmCadastrolivro.ShowModal;
  FreeAndNil(FrmCadastrolivro);

  DSlivrointerno.DataSet.Close;
  DSlivrointerno.DataSet.OPEN;
end;

procedure TFrmCadastroPedagogia.dbgridIncluirDblClick(Sender: TObject);
var
  teste: integer; Data_Devolucao: string; formato_data_ok, data_valida: boolean;
begin
  inherited;

  Data_Devolucao := DateToStr(date);
  formato_data_ok := false;
  data_valida := false;

  if DSlivrointerno.DataSet.FieldByName('data').AsString = '' then
  begin
    if MessageDlg('Tem certeza que deseja efetuar a devolução do livro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin

      if InputQuery('Informe a data de devolução do Livro!', 'Qual a data de devolução do Livro?', Data_Devolucao) = false then
        exit;

      while (formato_data_ok = false) or (data_valida = false) do
      begin

        //Verifica se a data digitada está no formato dd/mm/aaaa.
        if ((Length(Data_Devolucao) >= 1) and (Length(Data_Devolucao) <> 10)) then
        begin
          formato_data_ok := false;
          ShowMessage('Data em formato inválido!' + #13 + 'Formato: dd/mm/aaaa');
          Data_Devolucao := DateToStr(date);
        end
        else
          formato_data_ok := true;

        if formato_data_ok = false then
        begin
          if InputQuery('Informe a data de devolução do Livro!', 'Informe uma data Válida!', Data_Devolucao) = false then
          begin
            exit;
          end;

        end
        else
        begin
          data_valida := ValidaData(Data_Devolucao);

          if data_valida = false then
          begin
            formato_data_ok := false;
            Data_Devolucao := DateToStr(date);

            if InputQuery('Informe a data de devolução do Livro!', 'Informe uma data Válida!', Data_Devolucao) = false then
            begin
              exit;
            end;

          end;

        end;

      end;

      dm.SqlExecute.sql.text := 'select * from livro where id_livro =  ' + DSlivrointerno.DataSet.fieldByName('id_livro').asString;
      dm.DsExecute.DataSet.close;
      dm.DsExecute.DataSet.Open;
      teste := dm.DsExecute.DataSet.FieldByName('UTILIZADO').AsInteger;
      teste := teste - 1;
      dm.DsExecute.Edit;
      dm.DsExecute.DataSet.FieldByName('UTILIZADO').AsInteger := teste;
      dm.DsExecute.DataSet.Post;
      MemoDescricao.Lines.Clear;

      DSlivrointerno.DataSet.edit;
      DSlivrointerno.DataSet.FieldByName('data').AsDateTime := StrToDate(Data_Devolucao);
      DSlivrointerno.DataSet.Post;

      usaDmExecute := true;
      SalvarClick(nil);
      EditarClick(nil);
      PageControlPrincipal.ActivePageIndex := 3;
    end;
  end
  else
    showmessage('Livro já devolvido.' + #13#13 + 'Caso queira alterar a data de devolução, apague a data no Grid e refaça o procedimnto.');
end;

procedure TFrmCadastroPedagogia.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_PEDAGOGIA)
    and not ContemValor('E', PERMISSAO_PEDAGOGIA)
    and not ContemValor('D', PERMISSAO_PEDAGOGIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PEDAGOGIA)
    and not ContemValor('E', PERMISSAO_PEDAGOGIA)
    and not ContemValor('D', PERMISSAO_PEDAGOGIA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PEDAGOGIA)
    and ContemValor('E', PERMISSAO_PEDAGOGIA)
    and not ContemValor('D', PERMISSAO_PEDAGOGIA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PEDAGOGIA)
    and ContemValor('E', PERMISSAO_PEDAGOGIA)
    and ContemValor('D', PERMISSAO_PEDAGOGIA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PEDAGOGIA)
    and not ContemValor('E', PERMISSAO_PEDAGOGIA)
    and ContemValor('D', PERMISSAO_PEDAGOGIA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PEDAGOGIA)
    and not ContemValor('E', PERMISSAO_PEDAGOGIA)
    and ContemValor('D', PERMISSAO_PEDAGOGIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PEDAGOGIA)
    and ContemValor('E', PERMISSAO_PEDAGOGIA)
    and not ContemValor('D', PERMISSAO_PEDAGOGIA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroPedagogia.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_PEDAGOGIA)
    and not ContemValor('E', PERMISSAO_PEDAGOGIA)
    and not ContemValor('D', PERMISSAO_PEDAGOGIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PEDAGOGIA)
    and not ContemValor('E', PERMISSAO_PEDAGOGIA)
    and not ContemValor('D', PERMISSAO_PEDAGOGIA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PEDAGOGIA)
    and ContemValor('E', PERMISSAO_PEDAGOGIA)
    and not ContemValor('D', PERMISSAO_PEDAGOGIA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PEDAGOGIA)
    and ContemValor('E', PERMISSAO_PEDAGOGIA)
    and ContemValor('D', PERMISSAO_PEDAGOGIA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PEDAGOGIA)
    and not ContemValor('E', PERMISSAO_PEDAGOGIA)
    and ContemValor('D', PERMISSAO_PEDAGOGIA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PEDAGOGIA)
    and not ContemValor('E', PERMISSAO_PEDAGOGIA)
    and ContemValor('D', PERMISSAO_PEDAGOGIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PEDAGOGIA)
    and ContemValor('E', PERMISSAO_PEDAGOGIA)
    and not ContemValor('D', PERMISSAO_PEDAGOGIA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroPedagogia.EditLocalizarChange(Sender: TObject);
begin
   if RadioGroupTipoLocalizar.ItemIndex = 1 then
  begin
    if ((EditLocalizar.Text <> '') and (Length(EditLocalizar.Text) >= 3)) or
      (EditLocalizar.Text = ' ') then
    begin
      //showmessage('foi');
      DsConsulta.DataSet.filtered := False;
      DsConsulta.DataSet.Filter := 'NOME_INTERNO LIKE ''%' + EditLocalizar.Text + '%''';
      DsConsulta.DataSet.filtered := True;
    end
    else
      DsConsulta.DataSet.filtered := False;
  end
  else
  begin
    if EditLocalizar.Text <> '' then
    begin
      DsConsulta.DataSet.filtered := False;
      DsConsulta.DataSet.Filter := 'RGI = ''' + EditLocalizar.Text + '''';
      DsConsulta.DataSet.filtered := True;
    end
    else
      DsConsulta.DataSet.filtered := False;
  end;
end;

procedure TFrmCadastroPedagogia.PageControlModeloCadastroChange(
  Sender: TObject);
begin
  //inherited;
  if PageControlModeloCadastro.ActivePageIndex = 1 then
  begin
    CancelarClick(nil);
  end;
end;

procedure TFrmCadastroPedagogia.CancelarClick(Sender: TObject);
begin
  inherited;

  dspedagogia.DataSet.Close;
  dspedagogia.DataSet.OPEN;

  DSlivrointerno.DataSet.Close;
  DSlivrointerno.DataSet.OPEN;

  dsLivro.DataSet.Close;
  dsLivro.DataSet.Open;
end;

procedure TFrmCadastroPedagogia.cmbLivroClick(Sender: TObject);
begin
  inherited;
  dsLivro.DataSet.Refresh;
end;

procedure TFrmCadastroPedagogia.cmbLivroDropDown(Sender: TObject);
begin
  inherited;
  dsLivro.DataSet.Close;
  dsLivro.DataSet.Open;
end;

end.

