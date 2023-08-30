unit CadastroSolicitacaoVaga;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls, lib,
  ToolWin, adpDBDateTimePicker, Mask, Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TfrmSolicitacaoVaga = class(TFrmModeloCadastro)
    Label2: TLabel;
    EdtIdSolicitacaoVaga: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    EdtNumDocumento: TDBEdit;
    cmdOrgao: TDBLookupComboBox;
    cmdPenitenciario: TDBLookupComboBox;
    cmdDataDocSolicitante: TadpDBDateTimePicker;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label8: TLabel;
    edtQtdVagasUtilizadas: TDBEdit;
    edtQtdSemEfeito: TDBEdit;
    Label11: TLabel;
    edtQtdVagasAutorizadas: TDBEdit;
    Label7: TLabel;
    edtQtdVagasSolicitadas: TDBEdit;
    Button1: TButton;
    cmdPesquisaInterno: TDBLookupComboBox;
    DspPesquisa: TDataSetProvider;
    cdsPesquisa: TClientDataSet;
    dsPesquisa: TDataSource;
    CdsCadastroID_SOLICITACAO_VAGA: TIntegerField;
    CdsCadastroID_ORGAO: TIntegerField;
    CdsCadastroID_UP: TIntegerField;
    CdsCadastroQTD_VAGAS_SOLICITADAS: TIntegerField;
    CdsCadastroQTD_VAGAS_AUTORIZADAS: TIntegerField;
    CdsCadastroQTD_VAGAS_UTILIZADAS: TIntegerField;
    CdsCadastroDATA_AUTORIZA_VAGAS: TSQLTimeStampField;
    CdsCadastroOFICIO_DESC: TStringField;
    CdsCadastroQTD_VAGAS_SEM_EFEITO: TIntegerField;
    DBGrid1: TDBGrid;
    dspGrid: TDataSetProvider;
    cdsGrid: TClientDataSet;
    dsGrid: TDataSource;
    SqlCadastroID_SOLICITACAO_VAGA: TIntegerField;
    SqlCadastroID_ORGAO: TIntegerField;
    SqlCadastroID_UP: TIntegerField;
    SqlCadastroQTD_VAGAS_SOLICITADAS: TIntegerField;
    SqlCadastroQTD_VAGAS_AUTORIZADAS: TIntegerField;
    SqlCadastroQTD_VAGAS_UTILIZADAS: TIntegerField;
    SqlCadastroDATA_AUTORIZA_VAGAS: TSQLTimeStampField;
    SqlCadastroOFICIO_DESC: TStringField;
    SqlCadastroQTD_VAGAS_SEM_EFEITO: TIntegerField;
    Button2: TButton;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    cdsGridID_INTERNO_VAGA: TIntegerField;
    cdsGridID_INTERNO_INCLUSAO: TIntegerField;
    cdsGridID_SOLICITACAO_VAGA: TIntegerField;
    cdsGridSTATUS: TStringField;
    cdsGridNOME: TStringField;
    SQLPesquisa: TFDQuery;
    SQLGrid: TFDQuery;
    procedure NovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cdsGridCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSolicitacaoVaga: TfrmSolicitacaoVaga;

implementation

uses DmPrincipal, OrgaoSolicitante;// InternoInclusao;

{$R *.dfm}

procedure TfrmSolicitacaoVaga.NovoClick(Sender: TObject);
begin
  inherited;
  DsCadastro.DataSet.FieldByName('id_solicitacao_vaga').AsInteger := DBGenerator('id_solicitacao_vaga');
  dsPesquisa.DataSet.Close;
  dsPesquisa.DataSet.Open;
end;

procedure TfrmSolicitacaoVaga.FormCreate(Sender: TObject);
begin

  inherited;
  //DsCadastro.DataSet.Close;
 // DsCadastro.DataSet.Open;

end;

procedure TfrmSolicitacaoVaga.Button1Click(Sender: TObject);
begin
  inherited;
  DsGrid.DataSet.Append;
  DsGrid.DataSet.FieldByName('ID_interno_vaga').AsInteger := 0;
  DsGrid.DataSet.FieldByName('ID_solicitacao_vaga').AsInteger := dsCadastro.DataSet.FieldByName('id_solicitacao_vaga').AsInteger;
  DsGrid.DataSet.FieldByName('id_interno_inclusao').AsInteger := dsPesquisa.DataSet.FieldByName('id_interno_inclusao').AsInteger;
  DsGrid.DataSet.Post;
end;

procedure TfrmSolicitacaoVaga.FormShow(Sender: TObject);
begin
  inherited;
  dm.DsUP.DataSet.Close;
  dm.DsUP.DataSet.open;

  dsPesquisa.DataSet.Close;
  dsPesquisa.DataSet.Open;

  DSgrid.DataSet.Close;
  DSGrid.DataSet.Open;

  DM.dsOrgao.DataSet.Close;
  DM.dsOrgao.DataSet.Open;

end;

procedure TfrmSolicitacaoVaga.Button2Click(Sender: TObject);
begin
  inherited;
  frmOrgaoSolicitante := tfrmOrgaoSolicitante.create(Application);
  frmOrgaoSolicitante.showmodal;
  FreeAndNil(frmOrgaoSolicitante);

  DM.dsOrgao.DataSet.Close;
  DM.dsOrgao.DataSet.Open;

end;

procedure TfrmSolicitacaoVaga.SpeedButton1Click(Sender: TObject);
begin
  inherited;

  {FrmInternoInclusao := TFrmInternoInclusao.create(Application);
  FrmInternoInclusao.showmodal;
  FreeAndNil(FrmInternoInclusao);}

  dsPesquisa.DataSet.Close;
  dsPesquisa.DataSet.Open;

end;

procedure TfrmSolicitacaoVaga.cdsGridCalcFields(DataSet: TDataSet);
begin
  inherited;

  if DataSet.FieldByName('ID_INTERNO_INCLUSAO').AsString <> '' then
  begin
  
    DM.SqlExecute.SQL.Text := 'SELECT NOME_INTERNO FROM INTERNO_INCLUSAO WHERE ID_INTERNO_INCLUSAO = '
      + DataSet.FieldByName('ID_INTERNO_INCLUSAO').AsString;
    DM.DsExecute.DataSet.Close;
    DM.DsExecute.DataSet.Open;

    DataSet.FieldByName('NOME').AsString :=
      DM.DsExecute.DataSet.fieldbyname('NOME_INTERNO').AsString;

    DM.DsExecute.DataSet.Close;

  end;

end;

end.

