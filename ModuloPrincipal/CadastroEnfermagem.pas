unit CadastroEnfermagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloInterno, FMTBcd, DB, DBClient, Provider, SqlExpr, ImgList,
  ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Mask, Buttons,
  ToolWin, jpeg, Menus, dbcgrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFrmCadastroEnfermagem = class(TFrmModeloInterno)
    TabSheet1: TTabSheet;
    Label53: TLabel;
    DateTimePickerHistorico: TDateTimePicker;
    MemoDescricao: TMemo;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    SQLEnfermagemold: TSQLQuery;
    DSPEnfermagem: TDataSetProvider;
    CDSEnfermageml: TClientDataSet;
    DSEnfermagem: TDataSource;
    CDSEnfermagemlID_HISTORICO_ENFERMAGEM: TIntegerField;
    CDSEnfermagemlDESCRICAO: TStringField;
    CDSEnfermagemlDATA: TSQLTimeStampField;
    CDSEnfermagemlID_FUNCIONARIO: TIntegerField;
    CDSEnfermagemlID_INTERNO: TIntegerField;
    CDSEnfermagemlFUNCIONRIO: TStringField;
    TabSheet2: TTabSheet;
    Label8: TLabel;
    Label14: TLabel;
    DBLookupComboBoxremedio: TDBLookupComboBox;
    Label15: TLabel;
    SpeedButton3: TSpeedButton;
    DateTimePickerdata: TDateTimePicker;
    Memomedicacao: TMemo;
    DBGrid2: TDBGrid;
    SQLmedicacaointernoold: TSQLQuery;
    DSPmedicacaointerno: TDataSetProvider;
    CDSmedicacaointerno: TClientDataSet;
    DSmedicacaointerno: TDataSource;
    CDSmedicacaointernoID_REMEDIO_INTERNO: TIntegerField;
    CDSmedicacaointernoID_REMEDIO: TIntegerField;
    CDSmedicacaointernoID_INTERNO: TIntegerField;
    CDSmedicacaointernoDATA: TSQLTimeStampField;
    CDSmedicacaointernoOBS: TStringField;
    CDSmedicacaointernoRemedio: TStringField;
    DBMemo2: TDBMemo;
    Button2: TButton;
    CDSmedicacaointernoID_FUNCIONARIO: TIntegerField;
    CDSmedicacaointernoFuncionrioa: TStringField;
    SQLmedicacaointerno: TFDQuery;
    SQLEnfermagem: TFDQuery;
    procedure Button1Click(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure CancelarClick(Sender: TObject);
    procedure PageControlModeloCadastroChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroEnfermagem: TFrmCadastroEnfermagem;

implementation

uses Lib, DmPrincipal, CadastroLivro, MedicacaoInterno, CadastroRemedio;

{$R *.dfm}

procedure TFrmCadastroEnfermagem.Button1Click(Sender: TObject);
begin
  inherited;
  DSEnfermagem.DataSet.Append;
  DSEnfermagem.DataSet.fieldbyname('id_historico_enfermagem').AsInteger := DM.SQLConnect.ExecSQLScalar('SELECT GEN_ID(COD_UP,0)||GEN_ID(idenfermagem,1) FROM RDB$DATABASE');
  DSEnfermagem.DataSet.fieldbyname('id_interno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  DSEnfermagem.DataSet.fieldbyname('id_funcionario').AsInteger := GLOBAL_ID_FUNCIONARIO;
  DSEnfermagem.DataSet.fieldbyname('data').AsString :=
    FormatDateTime('dd/mm/yyyy', DateTimePickerHistorico.Date);
  DSEnfermagem.DataSet.fieldbyname('descricao').AsString := MemoDescricao.Lines.Text;
  DSEnfermagem.DataSet.Post;

  MemoDescricao.Lines.Clear;

end;

procedure TFrmCadastroEnfermagem.SalvarClick(Sender: TObject);
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

    if DSEnfermagem.DataSet.State in [dsedit, dsinsert] then
      DSEnfermagem.DataSet.Post;

    if DSmedicacaointerno.DataSet.State in [dsedit, dsinsert] then
      DSmedicacaointerno.DataSet.Post;

    IniciaTransCadastro;

    iErro := TClientDataSet(DSEnfermagem.DataSet).ApplyUpdates(0)
      + TClientDataSet(DSmedicacaointerno.DataSet).ApplyUpdates(0);

    if iErro = 0 then
      finalizaTransCadastro
    else
      CancelaTransCadastro;
    StatusBar1.Panels[1].Text := '...';
    DSEnfermagem.DataSet.Refresh;
    PanelCadastro.Enabled := False;
    ShowMessage('Registro Salvo com Sucesso!');
  except
    ShowMessage('Erro na transação');
  end;
  CorNosCampos;

  PageControlPrincipal.ActivePageIndex := 0;

  DSEnfermagem.DataSet.Close;
  DSEnfermagem.DataSet.OPEN;

  DSmedicacaointerno.DataSet.Close;
  DSmedicacaointerno.DataSet.OPEN;
end;

procedure TFrmCadastroEnfermagem.FormShow(Sender: TObject);
begin
  inherited;

  DSEnfermagem.DataSet.Close;
  DSEnfermagem.DataSet.OPEN;

  DSmedicacaointerno.DataSet.Close;
  DSmedicacaointerno.DataSet.OPEN;

  DM.DSRemedio.DataSet.Close;
  DM.DSRemedio.DataSet.Open;

  DateTimePickerHistorico.Date := Date;
  DateTimePickerdata.Date := Date;

end;

procedure TFrmCadastroEnfermagem.Button2Click(Sender: TObject);
begin
  inherited;

  DSmedicacaointerno.DataSet.Append;
  DSmedicacaointerno.DataSet.fieldbyname('id_remedio_interno').AsInteger := 0;
  DSmedicacaointerno.DataSet.fieldbyname('id_interno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  DSmedicacaointerno.DataSet.fieldbyname('id_remedio').AsInteger := DBLookupComboBoxremedio.KeyValue;
  DSmedicacaointerno.DataSet.fieldbyname('data').AsString :=
    FormatDateTime('dd/mm/yyyy', DateTimePickerdata.Date);
  DSmedicacaointerno.DataSet.fieldbyname('obs').AsString := Memomedicacao.Lines.Text;
  DSmedicacaointerno.DataSet.FieldByName('id_funcionario').AsInteger := GLOBAL_ID_FUNCIONARIO;
  DSmedicacaointerno.DataSet.Post;

  DBLookupComboBoxremedio.KeyValue := null;
  Memomedicacao.Lines.Clear;

end;

procedure TFrmCadastroEnfermagem.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  //Verificando se o usuário tem a permissão de acesso ao cadastro.
  if (PERMISSAO_CADASTRO = '') or (PERMISSAO_CADASTRO = 'R') then
  begin
    ShowMessage('Você não possui Permissão de Acesso ao menu de Cadastros!');
    Exit;
  end;

  FrmCadastroRemedio := TFrmCadastroRemedio.Create(Application);
  FrmCadastroRemedio.ShowModal;
  FreeAndNil(FrmCadastroRemedio);

  DM.DSRemedio.DataSet.Close;
  dm.DSRemedio.DataSet.OPEN;
end;

procedure TFrmCadastroEnfermagem.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_ENFERMAGEM)
    and not ContemValor('E', PERMISSAO_ENFERMAGEM)
    and not ContemValor('D', PERMISSAO_ENFERMAGEM) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_ENFERMAGEM)
    and not ContemValor('E', PERMISSAO_ENFERMAGEM)
    and not ContemValor('D', PERMISSAO_ENFERMAGEM) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_ENFERMAGEM)
    and ContemValor('E', PERMISSAO_ENFERMAGEM)
    and not ContemValor('D', PERMISSAO_ENFERMAGEM) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_ENFERMAGEM)
    and ContemValor('E', PERMISSAO_ENFERMAGEM)
    and ContemValor('D', PERMISSAO_ENFERMAGEM) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_ENFERMAGEM)
    and not ContemValor('E', PERMISSAO_ENFERMAGEM)
    and ContemValor('D', PERMISSAO_ENFERMAGEM) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_ENFERMAGEM)
    and not ContemValor('E', PERMISSAO_ENFERMAGEM)
    and ContemValor('D', PERMISSAO_ENFERMAGEM) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_ENFERMAGEM)
    and ContemValor('E', PERMISSAO_ENFERMAGEM)
    and not ContemValor('D', PERMISSAO_ENFERMAGEM) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroEnfermagem.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_ENFERMAGEM)
    and not ContemValor('E', PERMISSAO_ENFERMAGEM)
    and not ContemValor('D', PERMISSAO_ENFERMAGEM) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_ENFERMAGEM)
    and not ContemValor('E', PERMISSAO_ENFERMAGEM)
    and not ContemValor('D', PERMISSAO_ENFERMAGEM) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_ENFERMAGEM)
    and ContemValor('E', PERMISSAO_ENFERMAGEM)
    and not ContemValor('D', PERMISSAO_ENFERMAGEM) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_ENFERMAGEM)
    and ContemValor('E', PERMISSAO_ENFERMAGEM)
    and ContemValor('D', PERMISSAO_ENFERMAGEM) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_ENFERMAGEM)
    and not ContemValor('E', PERMISSAO_ENFERMAGEM)
    and ContemValor('D', PERMISSAO_ENFERMAGEM) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_ENFERMAGEM)
    and not ContemValor('E', PERMISSAO_ENFERMAGEM)
    and ContemValor('D', PERMISSAO_ENFERMAGEM) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_ENFERMAGEM)
    and ContemValor('E', PERMISSAO_ENFERMAGEM)
    and not ContemValor('D', PERMISSAO_ENFERMAGEM) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroEnfermagem.CancelarClick(Sender: TObject);
begin
  inherited;
  DSEnfermagem.DataSet.Close;
  DSEnfermagem.DataSet.OPEN;

  DSmedicacaointerno.DataSet.Close;
  DSmedicacaointerno.DataSet.OPEN;
end;

procedure TFrmCadastroEnfermagem.PageControlModeloCadastroChange(
  Sender: TObject);
begin
  //inherited;
  if PageControlModeloCadastro.ActivePageIndex = 1 then
  begin
    CancelarClick(nil);
  end;
end;

end.

