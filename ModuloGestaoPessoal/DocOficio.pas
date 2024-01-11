unit DocOficio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls, lib,
  ToolWin, Mask, adpDBDateTimePicker, System.ImageList, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmDocOficio = class(TFrmModeloCadastro)
    Label2: TLabel;
    edtIdoficios: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EdtNumDocMov: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtDocAutorizando: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    edtDiaspermanencia: TDBEdit;
    cmdOrgao: TDBLookupComboBox;
    cmdDataDocumento: TadpDBDateTimePicker;
    cmdDatachegadaDoc: TadpDBDateTimePicker;
    cmdIdFuncionario: TDBLookupComboBox;
    SqlCadastroID_DOC_OFICIO: TIntegerField;
    SqlCadastroID_ORGAO: TIntegerField;
    SqlCadastroID_FUNC_AUTORIZADOR: TIntegerField;
    SqlCadastroDOC_DESCRICAO: TStringField;
    SqlCadastroDOC_DATA: TSQLTimeStampField;
    SqlCadastroDOC_DATA_CGICR: TSQLTimeStampField;
    SqlCadastroDOC_AUTORIZADOR_DOC_NUMERO: TStringField;
    SqlCadastroDOC_AUTORIZADOR_DOC_DATA: TSQLTimeStampField;
    SqlCadastroDOC_DIAS_PERMANENCIA: TIntegerField;
    SqlCadastroID_SOLICITACAO_VAGA: TIntegerField;
    CdsCadastroID_DOC_OFICIO: TIntegerField;
    CdsCadastroID_ORGAO: TIntegerField;
    CdsCadastroID_FUNC_AUTORIZADOR: TIntegerField;
    CdsCadastroDOC_DESCRICAO: TStringField;
    CdsCadastroDOC_DATA: TSQLTimeStampField;
    CdsCadastroDOC_DATA_CGICR: TSQLTimeStampField;
    CdsCadastroDOC_AUTORIZADOR_DOC_NUMERO: TStringField;
    CdsCadastroDOC_AUTORIZADOR_DOC_DATA: TSQLTimeStampField;
    CdsCadastroDOC_DIAS_PERMANENCIA: TIntegerField;
    CdsCadastroID_SOLICITACAO_VAGA: TIntegerField;
    CdsCadastroRESPONSAVEL: TStringField;
    cmdSolicitacaoVaga: TDBLookupComboBox;
    Label11: TLabel;
    cmdDataDocAutorizador: TadpDBDateTimePicker;
    DSPflagautorizador: TDataSetProvider;
    CDSflagautorizador: TClientDataSet;
    DSflagautorizador: TDataSource;
    CDSflagautorizadorFuncionario: TStringField;
    CDSflagautorizadorID_FUNCIONARIO_AUTORIZADOR: TIntegerField;
    CDSflagautorizadorID_FUNCIONARIO: TIntegerField;
    CDSflagautorizadorDESCRICAO_AUTORIZADOR: TStringField;
    DBGrid1: TDBGrid;
    DSPGridInterno: TDataSetProvider;
    cdsGridInterno: TClientDataSet;
    dsGridInterno: TDataSource;
    DSinterno: TDataSource;
    CDSinterno: TClientDataSet;
    DSPinterno: TDataSetProvider;
    dspinternoinclusao: TDataSetProvider;
    dsinternoinclusao: TDataSource;
    cdsinternoinclusao: TClientDataSet;
    cdsGridInternoID_INTERNO_VAGA: TIntegerField;
    cdsGridInternoID_INTERNO_INCLUSAO: TIntegerField;
    cdsGridInternoID_SOLICITACAO_VAGA: TIntegerField;
    cdsGridInternoSTATUS: TStringField;
    DSoficiointerno: TDataSource;
    CDSoficiointerno: TClientDataSet;
    DSPoficiointerno: TDataSetProvider;
    DBRvalidacao: TDBRadioGroup;
    SQLSolicitacaoVagaold: TSQLQuery;
    SQLSolicitacaoVagaoldID_SOLICITACAO_VAGA: TIntegerField;
    SQLSolicitacaoVagaoldID_ORGAO: TIntegerField;
    SQLSolicitacaoVagaoldID_UP: TIntegerField;
    SQLSolicitacaoVagaoldQTD_VAGAS_SOLICITADAS: TIntegerField;
    SQLSolicitacaoVagaoldQTD_VAGAS_AUTORIZADAS: TIntegerField;
    SQLSolicitacaoVagaoldQTD_VAGAS_UTILIZADAS: TIntegerField;
    SQLSolicitacaoVagaoldDATA_AUTORIZA_VAGAS: TSQLTimeStampField;
    SQLSolicitacaoVagaoldOFICIO_DESC: TStringField;
    SQLSolicitacaoVagaoldQTD_VAGAS_SEM_EFEITO: TIntegerField;
    dspSolicitacaoVaga: TDataSetProvider;
    cdsSolicitacaoVaga: TClientDataSet;
    cdsSolicitacaoVagaID_SOLICITACAO_VAGA: TIntegerField;
    cdsSolicitacaoVagaID_ORGAO: TIntegerField;
    cdsSolicitacaoVagaID_UP: TIntegerField;
    cdsSolicitacaoVagaQTD_VAGAS_SOLICITADAS: TIntegerField;
    cdsSolicitacaoVagaQTD_VAGAS_AUTORIZADAS: TIntegerField;
    cdsSolicitacaoVagaQTD_VAGAS_UTILIZADAS: TIntegerField;
    cdsSolicitacaoVagaDATA_AUTORIZA_VAGAS: TSQLTimeStampField;
    cdsSolicitacaoVagaOFICIO_DESC: TStringField;
    cdsSolicitacaoVagaQTD_VAGAS_SEM_EFEITO: TIntegerField;
    dsSolicitacaoVaga: TDataSource;
    Button1: TButton;
    Button2: TButton;
    cdsGridInternoNOME: TStringField;
    SQLflagautorizador: TFDQuery;
    SQLGridInterno: TFDQuery;
    SQLinterno: TFDQuery;
    SQLinternoinclusao: TFDQuery;
    SQloficiointerno: TFDQuery;
    SQLSolicitacaoVaga: TFDQuery;
    procedure NovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmdSolicitacaoVagaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure SalvarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cdsGridInternoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDocOficio: TfrmDocOficio;

implementation

uses DmPrincipal, OrgaoSolicitante, CadastroFuncionarioAutorizador;

{$R *.dfm}

procedure TfrmDocOficio.NovoClick(Sender: TObject);
begin
  inherited;
  DsCadastro.DataSet.FieldByName('id_doc_oficio').AsInteger := DBGenerator('id_doc_oficio');

  DBRvalidacao.Value := 'N';

end;

procedure TfrmDocOficio.FormCreate(Sender: TObject);
begin
  inherited;
  dsInternoInclusao.DataSet.Close;
  dsInternoInclusao.DataSet.open;

  DSinterno.DataSet.Close;
  DSinterno.DataSet.Open;

  dm.dsOrgao.DataSet.Close;
  dm.dsOrgao.DataSet.Open;

  dm.DsFuncionarioLista.DataSet.Close;
  dm.DsFuncionarioLista.DataSet.Open;

  dsSolicitacaoVaga.DataSet.Close;
  dsSolicitacaoVaga.DataSet.Open;

  DSoficiointerno.DataSet.Close;
  DSoficiointerno.DataSet.Open;

  DSflagautorizador.DataSet.Close;
  DSflagautorizador.DataSet.Open;

end;

procedure TfrmDocOficio.cmdSolicitacaoVagaClick(Sender: TObject);
begin
  inherited;
  {dsGridInterno.DataSet.Close;
  SQLGridInterno.ParamByName('id_solicitacao_vaga').AsInteger :=   dm.dsSolicitacaoVaga.DataSet.FieldByName('id_solicitacao_vaga').AsInteger;
  dsGridInterno.DataSet.Open;
   selecionar na grid os internos
  }

end;

procedure TfrmDocOficio.FormActivate(Sender: TObject);
begin
  inherited;
  dsGridInterno.DataSet.close;
  dsGridInterno.DataSet.open;

end;

procedure TfrmDocOficio.DBGrid1DblClick(Sender: TObject);
var
  teste: string;
begin
  inherited;
  teste := dsGridInterno.DataSet.FieldByName('status').asString;
  if teste = 'S' then
  begin
    if MessageDlg('Realmente deseja desabilitar este interno', mtConfirmation, [mbYes, mbNo], 0) = MrYes then
    begin
      dsGridInterno.DataSet.Edit;
      dsGridInterno.DataSet.FieldByName('status').AsString := 'N';
      dsGridInterno.DataSet.Post;
    end;
  end
  else
  begin
    if MessageDlg('Realmente deseja habilitar este interno', mtConfirmation, [mbYes, mbNo], 0) = MrYes then
    begin
      dsGridInterno.DataSet.Edit;
      dsGridInterno.DataSet.FieldByName('status').AsString := 'S';
      dsGridInterno.DataSet.Post;
    end;
  end;
end;

procedure TfrmDocOficio.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  {  dsGridInterno.DataSet.Close;
    SQLGridInterno.ParamByName('id_solicitacao_vaga').AsInteger :=   dm.dsSolicitacaoVaga.DataSet.FieldByName('id_solicitacao_vaga').AsInteger;
    dsGridInterno.DataSet.Open;  - selecionar internos na grid}
end;

procedure TfrmDocOficio.SalvarClick(Sender: TObject);
var
  teste: integer;
  nome: string;
begin

  if DBRvalidacao.Value = 'S' then
  begin

    with dsGridInterno.DataSet do
    begin
      if not active then
      begin
        ShowMessage('Erro tabela fechada.');
        exit;
      end;

      if IsEmpty then
      begin
        ShowMessage('Não tem interno.');
        exit;
      end;

      first;
      while not eof do
      begin
        if fieldbyname('status').asstring = 'S' then
        begin

          // nome:= dsGridInterno.DataSet.FieldByName('NOME_INTERNO').AsString;
         //  teste := DBGenerator('id_interno');

          DSinterno.DataSet.Append;
          teste := DBGenerator('id_interno');
          DSinterno.DataSet.FieldByName('id_interno').AsInteger := teste;
          DSinterno.DataSet.FieldByName('NOME_INTERNO').AsString := dsGridInterno.DataSet.FieldByName('NOME_INTERNO').AsString;
          DSinterno.DataSet.post;

          DSoficiointerno.DataSet.Append;
          DSoficiointerno.DataSet.FieldByName('id_ofico_interno').AsInteger := 0;
          DSoficiointerno.DataSet.FieldByName('id_doc_oficio').AsInteger := DsCadastro.DataSet.FieldByName('id_doc_oficio').AsInteger;
          DSoficiointerno.DataSet.FieldByName('id_interno').AsInteger := teste;
          DSoficiointerno.DataSet.Post;

        end;
        next;
      end;
    end;
  end;

  inherited;

end;

procedure TfrmDocOficio.Button1Click(Sender: TObject);
begin
  inherited;
  frmOrgaoSolicitante := tfrmOrgaoSolicitante.create(Application);
  frmOrgaoSolicitante.showmodal;
  FreeAndNil(frmOrgaoSolicitante);

  dm.dsOrgao.DataSet.Close;
  dm.dsOrgao.DataSet.open;
end;

procedure TfrmDocOficio.Button2Click(Sender: TObject);
begin
  inherited;
  FrmCadastroFuncionarioAutorizador := TFrmCadastroFuncionarioAutorizador.create(Application);
  FrmCadastroFuncionarioAutorizador.showmodal;
  FreeAndNil(FrmCadastroFuncionarioAutorizador);

  DSflagautorizador.DataSet.Close;
  DSflagautorizador.DataSet.open;
end;

procedure TfrmDocOficio.cdsGridInternoCalcFields(DataSet: TDataSet);
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

end.o

