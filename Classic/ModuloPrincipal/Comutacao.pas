unit Comutacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, Mask, DBCtrls, DB, DBClient, Provider,
  SqlExpr, ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls,
  ToolWin, adpDBDateTimePicker, Buttons;

type
  TFrmComutacao = class(TFrmModeloCadastro)
    Label2: TLabel;
    DBEditCODIGO: TDBEdit;
    DBLookupComboBoxNomeInterno: TDBLookupComboBox;
    Label7: TLabel;
    adpDBDateTimePicker1: TadpDBDateTimePicker;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    adpDBDateTimePicker2: TadpDBDateTimePicker;
    Label78: TLabel;
    Label81: TLabel;
    DBEdit28: TDBEdit;
    DBEdit31: TDBEdit;
    Label79: TLabel;
    DBEdit33: TDBEdit;
    Label80: TLabel;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    Button1: TButton;
    SqlProcesso: TSQLQuery;
    DspProcesso: TDataSetProvider;
    CdsProcesso: TClientDataSet;
    DsProcesso: TDataSource;
    Button2: TButton;
    SqlCidadeVara: TSQLQuery;
    DspCidadeVara: TDataSetProvider;
    CdsCidadeVara: TClientDataSet;
    DsCidadeVara: TDataSource;
    DsVara: TDataSource;
    CdsVara: TClientDataSet;
    DspVara: TDataSetProvider;
    SqlVara: TSQLQuery;
    Label139: TLabel;
    DBLookupComboBoxCOMARCA: TDBLookupComboBox;
    Label37: TLabel;
    DBLookupComboBoxVara: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBoxVaraClick(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmComutacao: TFrmComutacao;

implementation

uses Lib, DmPrincipal, CadastroDestino;

{$R *.dfm}

procedure TFrmComutacao.Button1Click(Sender: TObject);
var
  PROCESSO: variant;
  sSql: string;
begin
  inherited;

  try
    IniciaTransMovimento;
    DsCadastro.DataSet.Post;
    CdsCadastro.ApplyUpdates(-1);
  except
    FinalizaTransMovimento;
    exit;
  end;
  FinalizaTransMovimento;

  DsCadastro.DataSet.Edit;

  sSql := ' SELECT ' +
    ' P.IDPROCESSO CODIGO, ' +
    ' P.NPROCESSO, ' +
    ' P.VARA, ' +
    ' P.DATA_INICIO_CONDENACAO, ' +
    ' UPPER(P.SITUACAOJURIDICA) SITUACAOJURIDICA, ' +
    ' P.TOTAL_PENA_ANO, ' +
    ' P.TOTAL_PENA_MES, ' +
    ' P.TOTAL_PENA_DIA ' +
    ' FROM PROCESSO P ' +
    ' WHERE UPPER(COALESCE(P.SITUACAOJURIDICA,'''')) LIKE ''CONDEN%'' ' +
    ' AND P.IDINTERNO=' + DsCadastro.DataSet.FieldByname('ID_INTERNO').AsString;

  PROCESSO := BuscaGeral(nil, '', sSql, 100, 100, 800, 400);

  if VarToStrDef(PROCESSO, '') <> '' then
  begin
    try
      try
        IniciaTransMovimento;
        DM.SQLConnect.ExecuteDirect('INSERT INTO VINC_COMUTACAO (ID_VINC_COMUTACAO,ID_COMUTACAO,IDPROCESSO) VALUES (0,'
          + DsCadastro.DataSet.fieldbyname('ID_COMUTACAO').AsString + ','
          + VarToStr(PROCESSO) + ')');
      except
      end;
    finally
      FinalizaTransMovimento;
    end;
    DsProcesso.DataSet.Close;
    DsProcesso.DataSet.Open;
  end;

end;

procedure TFrmComutacao.NovoClick(Sender: TObject);
begin
  inherited;
  DsCadastro.DataSet.fieldbyname('ID_COMUTACAO').AsInteger := DBGenerator('ID_COMUTACAO');
  DsCadastro.DataSet.fieldbyname('DATA').AsDateTime := Date;
  DsCadastro.DataSet.fieldbyname('ID_INTERNO').AsInteger :=
    SqlCadastro.ParamByName('ID_INTERNO').AsInteger

end;

procedure TFrmComutacao.FormCreate(Sender: TObject);
begin
  inherited;
  DM.DsInterno.DataSet.Close;
  DM.DsInterno.DataSet.Open;

  DsProcesso.DataSet.Close;
  DsProcesso.DataSet.Open;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_JURIDICA)
    and not ContemValor('E', PERMISSAO_JURIDICA)
    and not ContemValor('D', PERMISSAO_JURIDICA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_JURIDICA)
    and not ContemValor('E', PERMISSAO_JURIDICA)
    and not ContemValor('D', PERMISSAO_JURIDICA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_JURIDICA)
    and ContemValor('E', PERMISSAO_JURIDICA)
    and not ContemValor('D', PERMISSAO_JURIDICA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_JURIDICA)
    and ContemValor('E', PERMISSAO_JURIDICA)
    and ContemValor('D', PERMISSAO_JURIDICA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_JURIDICA)
    and not ContemValor('E', PERMISSAO_JURIDICA)
    and ContemValor('D', PERMISSAO_JURIDICA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_JURIDICA)
    and not ContemValor('E', PERMISSAO_JURIDICA)
    and ContemValor('D', PERMISSAO_JURIDICA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_JURIDICA)
    and ContemValor('E', PERMISSAO_JURIDICA)
    and not ContemValor('D', PERMISSAO_JURIDICA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmComutacao.Button2Click(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Deletar este processo? Não será possivel reverter.',
    'Confirme.', mb_YesNo + Mb_IconQuestion) = idYes then
  begin
    try
      try
        IniciaTransMovimento;
        DM.SQLConnect.ExecuteDirect('DELETE FROM VINC_COMUTACAO WHERE ID_VINC_COMUTACAO = '
          + DsProcesso.DataSet.fieldbyname('ID_VINC_COMUTACAO').AsString);
      except
      end;
    finally
      FinalizaTransMovimento;
    end;
  end;

  DsProcesso.DataSet.Close;
  DsProcesso.DataSet.Open;

end;

procedure TFrmComutacao.SpeedButton1Click(Sender: TObject);
begin
  inherited;

  FrmCadastroDestino := TFrmCadastrodestino.Create(Application);
  FrmCadastrodestino.TIPO_PADRAO := 'VARA';
  FrmCadastrodestino.ID_CIDADE := DBLookupComboBoxCOMARCA.KeyValue;
  FrmCadastrodestino.ShowModal;
  FreeAndNil(FrmCadastrodestino);

  DsVara.DataSet.Close;
  DsVara.DataSet.OPEN;

end;

procedure TFrmComutacao.FormShow(Sender: TObject);
begin
  inherited;
  DsCidadeVara.DataSet.Close;
  DsCidadeVara.DataSet.OPEN;

  DsVara.DataSet.Close;
  DsVara.DataSet.OPEN;

end;

procedure TFrmComutacao.DBLookupComboBoxVaraClick(Sender: TObject);
begin
  inherited;

  DsCadastro.dataset.fieldbyname('VARA').AsString := DBLookupComboBoxVara.Text;

end;

procedure TFrmComutacao.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_JURIDICA)
    and not ContemValor('E', PERMISSAO_JURIDICA)
    and not ContemValor('D', PERMISSAO_JURIDICA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_JURIDICA)
    and not ContemValor('E', PERMISSAO_JURIDICA)
    and not ContemValor('D', PERMISSAO_JURIDICA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_JURIDICA)
    and ContemValor('E', PERMISSAO_JURIDICA)
    and not ContemValor('D', PERMISSAO_JURIDICA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_JURIDICA)
    and ContemValor('E', PERMISSAO_JURIDICA)
    and ContemValor('D', PERMISSAO_JURIDICA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_JURIDICA)
    and not ContemValor('E', PERMISSAO_JURIDICA)
    and ContemValor('D', PERMISSAO_JURIDICA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_JURIDICA)
    and not ContemValor('E', PERMISSAO_JURIDICA)
    and ContemValor('D', PERMISSAO_JURIDICA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_JURIDICA)
    and ContemValor('E', PERMISSAO_JURIDICA)
    and not ContemValor('D', PERMISSAO_JURIDICA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

end.

