unit CadastroFarmacia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloInterno, FMTBcd, DB, DBClient, Provider, SqlExpr, ImgList,
  ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Mask, Buttons,
  ToolWin, Menus, jpeg, dbcgrids;

type
  TFrmCadastroFarmacia = class(TFrmModeloInterno)
    TabSheet1: TTabSheet;
    Label53: TLabel;
    DateTimePickerHistorico: TDateTimePicker;
    MemoDescricao: TMemo;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    SQLfarmacia: TSQLQuery;
    DSPfarmacia: TDataSetProvider;
    CDSfarmacia: TClientDataSet;
    DSfarmacia: TDataSource;
    CDSfarmaciaID_HISTORICO_FARMACIA: TIntegerField;
    CDSfarmaciaDESCRICAO: TStringField;
    CDSfarmaciaDATA: TSQLTimeStampField;
    CDSfarmaciaID_FUNCIONARIO: TIntegerField;
    CDSfarmaciaID_INTERNO: TIntegerField;
    CDSfarmaciaFUNCIONRIO: TStringField;
    TabSheet2: TTabSheet;
    Label8: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    SpeedButton3: TSpeedButton;
    DBLookupComboBoxremedio: TDBLookupComboBox;
    DateTimePickerdata: TDateTimePicker;
    Memomedicacao: TMemo;
    DBGrid2: TDBGrid;
    DBMemo2: TDBMemo;
    Button2: TButton;
    SQLmedicacaointerno: TSQLQuery;
    DSPmedicacaointerno: TDataSetProvider;
    CDSmedicacaointerno: TClientDataSet;
    CDSmedicacaointernoID_REMEDIO_INTERNO: TIntegerField;
    CDSmedicacaointernoID_REMEDIO: TIntegerField;
    CDSmedicacaointernoID_INTERNO: TIntegerField;
    CDSmedicacaointernoDATA: TSQLTimeStampField;
    CDSmedicacaointernoOBS: TStringField;
    CDSmedicacaointernoRemedio: TStringField;
    DSmedicacaointerno: TDataSource;
    CDSmedicacaointernoID_FUNCIONARIO: TIntegerField;
    CDSmedicacaointernoFuncionrioa: TStringField;
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
  FrmCadastroFarmacia: TFrmCadastroFarmacia;

implementation

uses Lib, DmPrincipal, MedicacaoInterno;

{$R *.dfm}

procedure TFrmCadastroFarmacia.Button1Click(Sender: TObject);
begin
  inherited;
  DSfarmacia.DataSet.Append;
  DSfarmacia.DataSet.fieldbyname('id_historico_farmacia').AsInteger := 0;
  DSfarmacia.DataSet.fieldbyname('id_interno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  DSfarmacia.DataSet.fieldbyname('id_funcionario').AsInteger := GLOBAL_ID_FUNCIONARIO;
  DSfarmacia.DataSet.fieldbyname('data').AsString :=
    FormatDateTime('dd/mm/yyyy', DateTimePickerHistorico.Date);
  DSfarmacia.DataSet.fieldbyname('descricao').AsString := MemoDescricao.Lines.Text;
  DSfarmacia.DataSet.Post;

  MemoDescricao.Lines.Clear;

end;

procedure TFrmCadastroFarmacia.SalvarClick(Sender: TObject);
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

    if DSfarmacia.DataSet.State in [dsedit, dsinsert] then
      DSfarmacia.DataSet.Post;

    if DSmedicacaointerno.DataSet.State in [dsedit, dsinsert] then
      DSmedicacaointerno.DataSet.Post;

    IniciaTransCadastro;

    iErro := TClientDataSet(DSfarmacia.DataSet).ApplyUpdates(0)
      + TClientDataSet(DSmedicacaointerno.DataSet).ApplyUpdates(0);

    if iErro = 0 then
      finalizaTransCadastro
    else
      CancelaTransCadastro;
    StatusBar1.Panels[1].Text := '...';
    DSfarmacia.DataSet.Refresh;
    PanelCadastro.Enabled := False;
    ShowMessage('Registro Salvo com Sucesso!');
  except
    ShowMessage('Erro na transação');
  end;
  CorNosCampos;

  PageControlPrincipal.ActivePageIndex := 0;

  DSfarmacia.DataSet.Close;
  DSfarmacia.DataSet.OPEN;
end;

procedure TFrmCadastroFarmacia.FormShow(Sender: TObject);
begin
  inherited;
  DSfarmacia.DataSet.Close;
  DSfarmacia.DataSet.OPEN;

  DSmedicacaointerno.DataSet.Close;
  DSmedicacaointerno.DataSet.OPEN;

  DM.DSRemedio.DataSet.Close;
  DM.DSRemedio.DataSet.Open;

  DateTimePickerHistorico.Date := Date;
  DateTimePickerdata.Date := Date;
end;

procedure TFrmCadastroFarmacia.Button2Click(Sender: TObject);
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

  MemoDescricao.Lines.Clear;

end;

procedure TFrmCadastroFarmacia.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  Frmmedicacaointerno := TFrmmedicacaointerno.Create(Application);
  Frmmedicacaointerno.ShowModal;
  FreeAndNil(Frmmedicacaointerno);

  DSmedicacaointerno.DataSet.Close;
  DSmedicacaointerno.DataSet.OPEN;
end;

procedure TFrmCadastroFarmacia.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_FARMACIA)
    and not ContemValor('E', PERMISSAO_FARMACIA)
    and not ContemValor('D', PERMISSAO_FARMACIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FARMACIA)
    and not ContemValor('E', PERMISSAO_FARMACIA)
    and not ContemValor('D', PERMISSAO_FARMACIA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FARMACIA)
    and ContemValor('E', PERMISSAO_FARMACIA)
    and not ContemValor('D', PERMISSAO_FARMACIA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FARMACIA)
    and ContemValor('E', PERMISSAO_FARMACIA)
    and ContemValor('D', PERMISSAO_FARMACIA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FARMACIA)
    and not ContemValor('E', PERMISSAO_FARMACIA)
    and ContemValor('D', PERMISSAO_FARMACIA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FARMACIA)
    and not ContemValor('E', PERMISSAO_FARMACIA)
    and ContemValor('D', PERMISSAO_FARMACIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FARMACIA)
    and ContemValor('E', PERMISSAO_FARMACIA)
    and not ContemValor('D', PERMISSAO_FARMACIA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroFarmacia.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_FARMACIA)
    and not ContemValor('E', PERMISSAO_FARMACIA)
    and not ContemValor('D', PERMISSAO_FARMACIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FARMACIA)
    and not ContemValor('E', PERMISSAO_FARMACIA)
    and not ContemValor('D', PERMISSAO_FARMACIA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FARMACIA)
    and ContemValor('E', PERMISSAO_FARMACIA)
    and not ContemValor('D', PERMISSAO_FARMACIA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FARMACIA)
    and ContemValor('E', PERMISSAO_FARMACIA)
    and ContemValor('D', PERMISSAO_FARMACIA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FARMACIA)
    and not ContemValor('E', PERMISSAO_FARMACIA)
    and ContemValor('D', PERMISSAO_FARMACIA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FARMACIA)
    and not ContemValor('E', PERMISSAO_FARMACIA)
    and ContemValor('D', PERMISSAO_FARMACIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FARMACIA)
    and ContemValor('E', PERMISSAO_FARMACIA)
    and not ContemValor('D', PERMISSAO_FARMACIA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroFarmacia.CancelarClick(Sender: TObject);
begin
  inherited;
  DSfarmacia.DataSet.Close;
  DSfarmacia.DataSet.OPEN;

  DSmedicacaointerno.DataSet.Close;
  DSmedicacaointerno.DataSet.Open;
end;

procedure TFrmCadastroFarmacia.PageControlModeloCadastroChange(
  Sender: TObject);
begin
  //inherited;
  if PageControlModeloCadastro.ActivePageIndex = 1 then
  begin
    CancelarClick(nil);
  end;
end;

end.

