unit LancamentoRemicaoTrabalho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls,
  ToolWin, adpDBDateTimePicker, Mask, Buttons;

type
  TFrmLancamentoRemicaoTrabalho = class(TFrmModeloCadastro)
    Label2: TLabel;
    DBEditcodigo: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    adpDBDateTimePickerdata: TadpDBDateTimePicker;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label16: TLabel;
    DateTimePickerdatainicial: TDateTimePicker;
    Label17: TLabel;
    DateTimePickerdatafinal: TDateTimePicker;
    Label26: TLabel;
    Editdiastrabalhado: TEdit;
    DBGrid2: TDBGrid;
    BitBtn1: TBitBtn;
    SQLcalc_trabalho: TSQLQuery;
    dspcalc_trabalho: TDataSetProvider;
    cdscalc_trabalho: TClientDataSet;
    dscalc_trabalho: TDataSource;
    Label6: TLabel;
    DBLookupComboBoxinterno: TDBLookupComboBox;
    Label9: TLabel;
    Editprontuario: TEdit;
    cdscalc_trabalhoIDCALC_SETOR_TRABALHO: TIntegerField;
    cdscalc_trabalhoID_INTERNO: TIntegerField;
    cdscalc_trabalhoDATA_INICIAL: TSQLTimeStampField;
    cdscalc_trabalhoDATA_FINAL: TSQLTimeStampField;
    cdscalc_trabalhoQTDEDIASTRABALHADO: TFloatField;
    cdscalc_trabalhoDIANAOREMIDO: TIntegerField;
    cdscalc_trabalhoQTDEDIASREMIDO: TFloatField;
    cdscalc_trabalhoDIASTRABALHADOEXTENSO: TStringField;
    cdscalc_trabalhoDIASREMIDOEXTENSO: TStringField;
    cdscalc_trabalhoTOTALDIASTRABALHO: TIntegerField;
    cdscalc_trabalhoTOTALDIASREMIDO: TIntegerField;
    cdscalc_trabalhoID_SETOR_TRABALHO: TIntegerField;
    cdscalc_trabalhoID_LANCAMENTO_REMICAO_TRABALHO: TIntegerField;
    cdscalc_trabalhoInterno: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EditprontuarioExit(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLancamentoRemicaoTrabalho: TFrmLancamentoRemicaoTrabalho;

implementation

uses DmPrincipal, Lib;

{$R *.dfm}

procedure TFrmLancamentoRemicaoTrabalho.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if Editdiastrabalhado.Text = '' then
  begin
    showmessage('Informar Dias Trabalhados!');
    exit;
  end;

  DSCALC_TRABALHO.DataSet.Append;
  DSCALC_TRABALHO.DataSet.fieldbyname('idcalc_setor_trabalho').AsInteger := 0;
  DSCALC_TRABALHO.DataSet.fieldbyname('id_lancamento_remicao_trabalho').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_lancamento_remicao_trabalho').AsInteger;
  DSCALC_TRABALHO.DataSet.fieldbyname('id_interno').AsInteger :=
    DBLookupComboBoxinterno.KeyValue;
  DSCALC_TRABALHO.DataSet.fieldbyname('data_inicial').AsString := formatdatetime('dd/mm/yyyy', DateTimePickerdatainicial.date);
  DSCALC_TRABALHO.DataSet.fieldbyname('data_final').AsString := formatdatetime('dd/mm/yyyy', DateTimePickerdatafinal.date);
  DSCALC_TRABALHO.DataSet.fieldbyname('qtdediastrabalhado').AsString := Editdiastrabalhado.text;
  DSCALC_TRABALHO.DataSet.Post;

  Editprontuario.Text := '';
  Editdiastrabalhado.Text := '';
  DBLookupComboBoxinterno.KeyValue := null;
end;

procedure TFrmLancamentoRemicaoTrabalho.NovoClick(Sender: TObject);
begin
  inherited;
  adpDBDateTimePickerdata.date := date;

  DsCadastro.DataSet.FieldByName('ID_LANCAMENTO_REMICAO_TRABALHO').AsInteger := DBGenerator('ID_LANCAMENTO_REMICAO_TRABALHO');
  DsCadastro.DataSet.FieldByName('id_funcionario').AsInteger := GLOBAL_ID_FUNCIONARIO;
  DsCadastro.DataSet.FieldByName('id_up').AsInteger := GLOBAL_ID_UP;
end;

procedure TFrmLancamentoRemicaoTrabalho.FormCreate(Sender: TObject);
begin
  inherited;
  dm.dsfuncionario.dataset.close;
  dm.dsfuncionario.dataset.open;

  dm.dsup.dataset.close;
  dm.dsup.dataset.open;

  dm.DsInterno.dataset.close;
  dm.DsInterno.dataset.open;

  dscalc_trabalho.dataset.close;
  dscalc_trabalho.dataset.open;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_REMICAOTRABALHO)
    and not ContemValor('E', PERMISSAO_REMICAOTRABALHO)
    and not ContemValor('D', PERMISSAO_REMICAOTRABALHO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_REMICAOTRABALHO)
    and not ContemValor('E', PERMISSAO_REMICAOTRABALHO)
    and not ContemValor('D', PERMISSAO_REMICAOTRABALHO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_REMICAOTRABALHO)
    and ContemValor('E', PERMISSAO_REMICAOTRABALHO)
    and not ContemValor('D', PERMISSAO_REMICAOTRABALHO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_REMICAOTRABALHO)
    and ContemValor('E', PERMISSAO_REMICAOTRABALHO)
    and ContemValor('D', PERMISSAO_REMICAOTRABALHO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_REMICAOTRABALHO)
    and not ContemValor('E', PERMISSAO_REMICAOTRABALHO)
    and ContemValor('D', PERMISSAO_REMICAOTRABALHO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_REMICAOTRABALHO)
    and not ContemValor('E', PERMISSAO_REMICAOTRABALHO)
    and ContemValor('D', PERMISSAO_REMICAOTRABALHO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_REMICAOTRABALHO)
    and ContemValor('E', PERMISSAO_REMICAOTRABALHO)
    and not ContemValor('D', PERMISSAO_REMICAOTRABALHO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;
    
end;

procedure TFrmLancamentoRemicaoTrabalho.EditprontuarioExit(
  Sender: TObject);
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
      // BtnincluirClick(nil);
     // if Editprontuario.canfocus then
      //  Editprontuario.SetFocus;
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

procedure TFrmLancamentoRemicaoTrabalho.SalvarClick(Sender: TObject);
begin
  inherited;

  dscalc_trabalho.dataset.close;
  dscalc_trabalho.dataset.open;
end;

procedure TFrmLancamentoRemicaoTrabalho.DsCadastroDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_REMICAOTRABALHO)
    and not ContemValor('E', PERMISSAO_REMICAOTRABALHO)
    and not ContemValor('D', PERMISSAO_REMICAOTRABALHO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_REMICAOTRABALHO)
    and not ContemValor('E', PERMISSAO_REMICAOTRABALHO)
    and not ContemValor('D', PERMISSAO_REMICAOTRABALHO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_REMICAOTRABALHO)
    and ContemValor('E', PERMISSAO_REMICAOTRABALHO)
    and not ContemValor('D', PERMISSAO_REMICAOTRABALHO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_REMICAOTRABALHO)
    and ContemValor('E', PERMISSAO_REMICAOTRABALHO)
    and ContemValor('D', PERMISSAO_REMICAOTRABALHO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_REMICAOTRABALHO)
    and not ContemValor('E', PERMISSAO_REMICAOTRABALHO)
    and ContemValor('D', PERMISSAO_REMICAOTRABALHO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_REMICAOTRABALHO)
    and not ContemValor('E', PERMISSAO_REMICAOTRABALHO)
    and ContemValor('D', PERMISSAO_REMICAOTRABALHO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_REMICAOTRABALHO)
    and ContemValor('E', PERMISSAO_REMICAOTRABALHO)
    and not ContemValor('D', PERMISSAO_REMICAOTRABALHO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;
  
end;

end.

