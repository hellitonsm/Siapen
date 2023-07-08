unit CalculoTrabalho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ExtCtrls, ImgList, StdCtrls, Grids, DBGrids,
  FMTBcd, DB, DBClient, Provider, SqlExpr, Mask, DBCtrls,
  ModeloCadastro, jpeg, System.ImageList;


type
  TFrmCalculoTrabalho = class(TFrmModeloCadastro)
    Label2: TLabel;
    DBEditid: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label7: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Button1: TButton;
    GroupBox1: TGroupBox;
    CHDomingo: TCheckBox;
    CHsabado: TCheckBox;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    SQLcalc_trabalho_itens: TSQLQuery;
    DSPcalc_trabalho_itens: TDataSetProvider;
    CDScalc_trabalho_itens: TClientDataSet;
    DScalc_trabalho_itens: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    Label10: TLabel;
    CDScalc_trabalho_itensID_CALC_TRABALHO_ITENS: TIntegerField;
    CDScalc_trabalho_itensID_CALC_TRABALHO: TIntegerField;
    CDScalc_trabalho_itensDATA_INICIAL: TSQLTimeStampField;
    CDScalc_trabalho_itensDATA_FINAL: TSQLTimeStampField;
    CDScalc_trabalho_itensID_SETOR_TRABALHO: TIntegerField;
    CDScalc_trabalho_itensDIASTRABALHADO: TIntegerField;
    CDScalc_trabalho_itensDIASREMIDO: TIntegerField;
    Button2: TButton;
    CDScalc_trabalho_itensSetorTrabalho: TStringField;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);


    //    Procedure EntreDatas(DataFinal,DataInicial : TDate ; var Anos,Meses,Dias : Integer) ;
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
  FrmCalculoTrabalho: TFrmCalculoTrabalho;

implementation

uses DmPrincipal, Lib, ModeloMovimentacao, CadastroPadrao;

{$R *.dfm}

procedure TFrmCalculoTrabalho.CorNosCampos();
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

function TFrmCalculoTrabalho.IniciaTransCadastro: Boolean;
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

function TFrmCalculoTrabalho.ReeiniciaTransCadastro: Boolean;
begin
  try
    FinalizaTransCadastro;
    TD.TransactionID := TD.TransactionID + 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    DM.SQLConnect.StartTransaction(TD);
  except
  end;
end;

function TFrmCalculoTrabalho.FinalizaTransCadastro: Boolean;
begin
  try
    Result := False;
    if DM.SQLConnect.InTransaction then
      DM.SQLConnect.Commit(TD);
    Result := True;
  except
  end;
end;

function TFrmCalculoTrabalho.CancelaTransCadastro: Boolean;
begin
  try
    if DM.SQLConnect.InTransaction then
      DM.SQLConnect.Rollback(TD);
  except
  end;

end;

procedure TFrmCalculoTrabalho.FormShow(Sender: TObject);
begin
  inherited;
  dm.DsInterno.DataSet.Close;
  dm.DsInterno.DataSet.OPEN;

  dm.DsSetorTrabalho.DataSet.Close;
  dm.DsSetorTrabalho.DataSet.OPEN;
end;

procedure TFrmCalculoTrabalho.Button1Click(Sender: TObject);
var
  naoremir: string;

begin
  naoremir := '';

  if CHDomingo.Checked = True then
    naoremir := naoremir + '0';

  if CHsabado.Checked = True then
    naoremir := naoremir + '6';

  DsCadastro.DataSet.FieldByName('QTDEDIASTRABALHADO').AsInteger :=
    DiasUteis(DsCadastro.DataSet.FieldByName('DATA_inicial').asdatetime
    , DsCadastro.DataSet.FieldByName('DATA_final').asdatetime, naoremir);

  DsCadastro.DataSet.FieldByName('QTDEDIASREMIDO').AsFLOAT := ((DsCadastro.DataSet.FieldByName('QTDEDIASTRABALHADO').AsFLOAT) / 3);

end;

procedure TFrmCalculoTrabalho.EditarClick(Sender: TObject);
begin
  inherited;
  DBEdit2.SetFocus;
end;

procedure TFrmCalculoTrabalho.NovoClick(Sender: TObject);
begin
  inherited;
  dm.SqlExecute.SQL.Text := 'select gen_id (cod_up, 0) || gen_id (ID_CALC_SETOR_TRABALHO, 1) as ID from rdb$database';
  dm.DsExecute.DataSet.Close;
  dm.DsExecute.DataSet.Open;
  DsCadastro.DataSet.fieldbyname('IDCALC_SETOR_TRABALHO').AsInteger := dm.DsExecute.DataSet.FieldByName('ID').AsInteger;
  dm.DsExecute.DataSet.Close;
end;

procedure TFrmCalculoTrabalho.Button2Click(Sender: TObject);
begin
  DScalc_trabalho_itens.DataSet.Append;
  DScalc_trabalho_itens.DataSet.fieldbyname('id_calc_trabalho_itens').AsInteger := 0;
  DScalc_trabalho_itens.DataSet.fieldbyname('id_calc_trabalho').AsInteger := DsCadastro.DataSet.fieldbyname('idcalc_setor_trabalho').AsInteger;
  DScalc_trabalho_itens.DataSet.fieldbyname('data_inicial').AsInteger := DsCadastro.DataSet.fieldbyname('data_inicial').AsInteger;
  DScalc_trabalho_itens.DataSet.fieldbyname('data_final').AsInteger := DsCadastro.DataSet.fieldbyname('data_final').AsInteger;
  DScalc_trabalho_itens.DataSet.fieldbyname('id_setor_trabalho').Asfloat := DsCadastro.DataSet.fieldbyname('id_setor_trabalho').AsInteger;
  DScalc_trabalho_itens.DataSet.fieldbyname('diastrabalhado').Asfloat := DsCadastro.DataSet.fieldbyname('qtdediastrabalhado').AsInteger;
  DScalc_trabalho_itens.DataSet.fieldbyname('diasremido').Asfloat := DsCadastro.DataSet.fieldbyname('qtdediasremido').AsInteger;
  DScalc_trabalho_itens.DataSet.Post;


  DsCadastro.DataSet.fieldbyname('data_inicial').AsString := '';
  DsCadastro.DataSet.fieldbyname('data_final').AsString := '';
  DsCadastro.DataSet.fieldbyname('id_setor_trabalho').AsString := '';
  DsCadastro.DataSet.fieldbyname('qtdediastrabalhado').AsString := '';
  DsCadastro.DataSet.fieldbyname('qtdediasremido').AsString := '';

end;

procedure TFrmCalculoTrabalho.SalvarClick(Sender: TObject);
var iErro: integer;
begin
  try
    StatusBar1.Panels[1].Text := 'SALVANDO';
    Novo.Enabled := True;
    Editar.Enabled := True;
    Excluir.Enabled := True;
    Salvar.Enabled := False;
    Cancelar.Enabled := False;

    if DsCadastro.DataSet.State in [dsedit, dsinsert] then
      DsCadastro.DataSet.Post;

    if DScalc_trabalho_itens.DataSet.State in [dsedit, dsinsert] then
      DScalc_trabalho_itens.DataSet.Post;

    IniciaTransCadastro;

    iErro := TClientDataSet(DsCadastro.DataSet).ApplyUpdates(0);
    iErro := iErro + TClientDataSet(DScalc_trabalho_itens.DataSet).ApplyUpdates(0);

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

end;

procedure TFrmCalculoTrabalho.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_CALCULOTRABALHO)
    and not ContemValor('E', PERMISSAO_CALCULOTRABALHO)
    and not ContemValor('D', PERMISSAO_CALCULOTRABALHO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CALCULOTRABALHO)
    and not ContemValor('E', PERMISSAO_CALCULOTRABALHO)
    and not ContemValor('D', PERMISSAO_CALCULOTRABALHO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CALCULOTRABALHO)
    and ContemValor('E', PERMISSAO_CALCULOTRABALHO)
    and not ContemValor('D', PERMISSAO_CALCULOTRABALHO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CALCULOTRABALHO)
    and ContemValor('E', PERMISSAO_CALCULOTRABALHO)
    and ContemValor('D', PERMISSAO_CALCULOTRABALHO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CALCULOTRABALHO)
    and not ContemValor('E', PERMISSAO_CALCULOTRABALHO)
    and ContemValor('D', PERMISSAO_CALCULOTRABALHO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CALCULOTRABALHO)
    and not ContemValor('E', PERMISSAO_CALCULOTRABALHO)
    and ContemValor('D', PERMISSAO_CALCULOTRABALHO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CALCULOTRABALHO)
    and ContemValor('E', PERMISSAO_CALCULOTRABALHO)
    and not ContemValor('D', PERMISSAO_CALCULOTRABALHO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCalculoTrabalho.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_CALCULOTRABALHO)
    and not ContemValor('E', PERMISSAO_CALCULOTRABALHO)
    and not ContemValor('D', PERMISSAO_CALCULOTRABALHO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CALCULOTRABALHO)
    and not ContemValor('E', PERMISSAO_CALCULOTRABALHO)
    and not ContemValor('D', PERMISSAO_CALCULOTRABALHO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CALCULOTRABALHO)
    and ContemValor('E', PERMISSAO_CALCULOTRABALHO)
    and not ContemValor('D', PERMISSAO_CALCULOTRABALHO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CALCULOTRABALHO)
    and ContemValor('E', PERMISSAO_CALCULOTRABALHO)
    and ContemValor('D', PERMISSAO_CALCULOTRABALHO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CALCULOTRABALHO)
    and not ContemValor('E', PERMISSAO_CALCULOTRABALHO)
    and ContemValor('D', PERMISSAO_CALCULOTRABALHO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CALCULOTRABALHO)
    and not ContemValor('E', PERMISSAO_CALCULOTRABALHO)
    and ContemValor('D', PERMISSAO_CALCULOTRABALHO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CALCULOTRABALHO)
    and ContemValor('E', PERMISSAO_CALCULOTRABALHO)
    and not ContemValor('D', PERMISSAO_CALCULOTRABALHO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

end.

