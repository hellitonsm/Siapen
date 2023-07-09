unit VincFaltaDisiciplinar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls,
  ToolWin, adpDBDateTimePicker,DateUtils, Mask;

type
  TFrmVincFaltaDisiciplinar = class(TFrmModeloCadastro)
    Label15: TLabel;
    Sqlfaltadisciplinar: TSQLQuery;
    Dspfaltadisciplinar: TDataSetProvider;
    Cdsfaltadisciplinar: TClientDataSet;
    Dsfaltadisciplinar: TDataSource;
    Label27: TLabel;
    Label2: TLabel;
    DBEditId: TDBEdit;
    Label8: TLabel;
    DBEditNumeroPdi: TDBEdit;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBoxFaltaDisciplinar: TDBLookupComboBox;
    Memo1: TMemo;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    DBEditQtddias: TDBEdit;
    DBEditDataFimIsolPrev: TDBEdit;
    DBEditDataInicioIsolPrev: TDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    DBRadioGroupPreventivo: TDBRadioGroup;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBComboBoxResultado: TDBComboBox;
    Label9: TLabel;
    DBComboBoxTipoSancao: TDBComboBox;
    Label10: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label22: TLabel;
    DBComboBoxClassificacaoConduta: TDBComboBox;
    DBRadioGroupHomologado: TDBRadioGroup;
    GroupBoxRecurso: TGroupBox;
    Label24: TLabel;
    DBComboBoxDecisaoRecurso: TDBComboBox;
    DBRadioGroupRecurso: TDBRadioGroup;
    DBComboBoxSituacao: TDBComboBox;
    Label29: TLabel;
    Label23: TLabel;
    DBEditDataReabilitacao: TDBEdit;
    Label18: TLabel;
    Label30: TLabel;
    DBMemo1: TDBMemo;
    Label7: TLabel;
    Label25: TLabel;
    DBEditDataIncidencia: TDBEdit;
    DBEditDataInstPortaria: TDBEdit;
    Label26: TLabel;
    DBEditDataInicio: TDBEdit;
    DBEditDataResultado: TDBEdit;
    DBEditDataFimIsol: TDBEdit;
    DBEditQuantidadeDias: TDBEdit;
    Label11: TLabel;
    DBEditDataCondenacao: TDBEdit;
    DBEditNumProcesso: TDBEdit;
    DBComboBoxTipo: TDBComboBox;
    DBEditDataProcedimento: TDBEdit;
    DBEditConclusao: TDBEdit;
    DBEditNatureza: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure DBEditDataIncidenciaKeyPress(Sender: TObject; var Key: Char);
    procedure DBEditDataIncidenciaExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBRadioGroupPreventivoClick(Sender: TObject);
    procedure DBRadioGroupRecursoClick(Sender: TObject);
    procedure DBEditQtddiasExit(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVincFaltaDisiciplinar: TFrmVincFaltaDisiciplinar;

implementation

uses DmPrincipal, lib, CadastroConselhoDisciplinar, Math;

{$R *.dfm}

procedure TFrmVincFaltaDisiciplinar.FormCreate(Sender: TObject);
begin
  inherited;
  dm.DsInterno.DataSet.close;
  dm.DsInterno.DataSet.open;

  Dsfaltadisciplinar.DataSet.Close;
  Dsfaltadisciplinar.DataSet.Open;

  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.Open;
end;

procedure TFrmVincFaltaDisiciplinar.FormShow(Sender: TObject);
begin
  inherited;
  Memo1.Text := DBLookupComboBoxFaltaDisciplinar.Text;
end;

procedure TFrmVincFaltaDisiciplinar.DBLookupComboBox2Click(
  Sender: TObject);
begin
  inherited;
 Memo1.Text := DBLookupComboBoxFaltaDisciplinar.Text;
end;

procedure TFrmVincFaltaDisiciplinar.DBEditDataIncidenciaKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  ValidaDataKeyPress(sender, Key);
end;

procedure TFrmVincFaltaDisiciplinar.DBEditDataIncidenciaExit(
  Sender: TObject);
begin
  inherited;
  ValidaDataExit(sender);
end;

procedure TFrmVincFaltaDisiciplinar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmConselhoDisciplinar.Dsvincfaltadisciplinar.dataset.close;
  frmConselhoDisciplinar.Dsvincfaltadisciplinar.dataset.open;
end;

procedure TFrmVincFaltaDisiciplinar.DBRadioGroupPreventivoClick(
  Sender: TObject);
begin
  inherited;
  If DBRadioGroupPreventivo.ItemIndex = 0 then begin
    GroupBox1.Enabled := true;
  end else
    if (DsCadastro.DataSet.State in [dsedit]) then begin
      DsCadastro.DataSet.FieldByName('dt_inicio_isolamento').AsString := '';
      DsCadastro.DataSet.FieldByName('dt_fim_isolamento').AsString := '';
      DsCadastro.DataSet.FieldByName('QTDE_DIAS_ISOLAMENTO').AsString := '';
    end;
    GroupBox1.Enabled := false;
end;

procedure TFrmVincFaltaDisiciplinar.DBRadioGroupRecursoClick(Sender: TObject);
begin
  inherited;
  //habilita e desabilita o groupbox e limpa a combo se a seleção for não para recurso
  if DBRadioGroupRecurso.ItemIndex = 1 then begin
    DsCadastro.DataSet.FieldByName('DECISAO_RECURSO').AsString := '';
    GroupBoxRecurso.Enabled := false;
  end else
    GroupBoxRecurso.Enabled := true;
end;

procedure TFrmVincFaltaDisiciplinar.DBEditQtddiasExit(Sender: TObject);
var
    DataInicial : TDateTime;
    Dias : Integer;
begin
  inherited;
{  DBEditDataFimIsolPrev.Text := '';
  DataInicial := StrToDate(DBEditDataInicioIsolPrev.Text);
  Dias:= StrToInt(DBEditQtddias.Text);
  DBEditDataFimIsolPrev.Text := DateToStr(IncDay(DataInicial, Dias));}

end;

procedure TFrmVincFaltaDisiciplinar.ExcluirClick(Sender: TObject);
begin
  inherited;
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
end;

end.

