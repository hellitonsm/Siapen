unit Padrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, DBCtrls, ToolWin, ExtCtrls,
  Mask, jpeg, System.ImageList, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,DmPrincipal;

type
  TFrmPadrao = class(TFrmModeloCadastro)
    DBEditcodigo: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    DspPavilhao: TDataSetProvider;
    CdsPavilhao: TClientDataSet;
    DsPavilhao: TDataSource;
    DsGaleria: TDataSource;
    CdsGaleria: TClientDataSet;
    DspGaleria: TDataSetProvider;
    DspSolario: TDataSetProvider;
    CdsSolario: TClientDataSet;
    DsSolario: TDataSource;
    DsCela: TDataSource;
    CdsCela: TClientDataSet;
    DspCela: TDataSetProvider;
    DBRadioGroup1: TDBRadioGroup;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label14: TLabel;
    LabelCela: TLabel;
    LabelSolario: TLabel;
    LabelGaleria: TLabel;
    LabelPavilhao: TLabel;
    DBLookupComboBoxCela: TDBLookupComboBox;
    DBLookupComboBoxSolario: TDBLookupComboBox;
    DBLookupComboBoxGaleria: TDBLookupComboBox;
    DBLookupComboBoxPavilhao: TDBLookupComboBox;
    Label11: TLabel;
    DBRadioGroup3: TDBRadioGroup;
    SqlPavilhao: TFDQuery;
    SqlGaleria: TFDQuery;
    SqlSolario: TFDQuery;
    SqlCela: TFDQuery;
    procedure SalvarClick(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPadrao: TFrmPadrao;

implementation

uses Lib;

{$R *.dfm}

procedure TFrmPadrao.SalvarClick(Sender: TObject);
begin
  if DsCadastro.DataSet.State in [dsedit,dsinsert] then
     DsCadastro.DataSet.FieldByName('cod_up').AsInteger := GLOBAL_ID_UP;

  inherited;

end;

procedure TFrmPadrao.NovoClick(Sender: TObject);
begin
  if not DsCadastro.DataSet.IsEmpty then
  begin
    showmessage('Não pode inserir um novo padrão, edite o existente.');
    exit;
  end;
  inherited;

end;

procedure TFrmPadrao.FormShow(Sender: TObject);
begin
  inherited;

  SqlCadastro.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;
  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.Open;

  LabelPavilhao.Caption := GLOBAL_NIVEL_1;
  LabelGaleria.Caption := GLOBAL_NIVEL_2;
  LabelSolario.Caption := GLOBAL_NIVEL_3;
  LabelCela.Caption := GLOBAL_NIVEL_4;

  SqlPavilhao.SQL.Text := ' select * from pavilhao where id_up=' + inttostr(GLOBAL_ID_UP) + ' order by pavilhao';

  DsPavilhao.DataSet.Close;
  DsPavilhao.DataSet.Open;

  DsGaleria.DataSet.Close;
  DsGaleria.DataSet.Open;

  DsSolario.DataSet.Close;
  DsSolario.DataSet.Open;

  DsCela.DataSet.Close;
  DsCela.DataSet.Open;
  DBGridConsulta.SelectedIndex := 2;  

end;

procedure TFrmPadrao.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_PADRAOSISTEMA)
    and not ContemValor('E', PERMISSAO_PADRAOSISTEMA)
    and not ContemValor('D', PERMISSAO_PADRAOSISTEMA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PADRAOSISTEMA)
    and not ContemValor('E', PERMISSAO_PADRAOSISTEMA)
    and not ContemValor('D', PERMISSAO_PADRAOSISTEMA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PADRAOSISTEMA)
    and ContemValor('E', PERMISSAO_PADRAOSISTEMA)
    and not ContemValor('D', PERMISSAO_PADRAOSISTEMA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PADRAOSISTEMA)
    and ContemValor('E', PERMISSAO_PADRAOSISTEMA)
    and ContemValor('D', PERMISSAO_PADRAOSISTEMA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PADRAOSISTEMA)
    and not ContemValor('E', PERMISSAO_PADRAOSISTEMA)
    and ContemValor('D', PERMISSAO_PADRAOSISTEMA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PADRAOSISTEMA)
    and not ContemValor('E', PERMISSAO_PADRAOSISTEMA)
    and ContemValor('D', PERMISSAO_PADRAOSISTEMA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PADRAOSISTEMA)
    and ContemValor('E', PERMISSAO_PADRAOSISTEMA)
    and not ContemValor('D', PERMISSAO_PADRAOSISTEMA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmPadrao.DsCadastroDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_PADRAOSISTEMA)
    and not ContemValor('E', PERMISSAO_PADRAOSISTEMA)
    and not ContemValor('D', PERMISSAO_PADRAOSISTEMA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PADRAOSISTEMA)
    and not ContemValor('E', PERMISSAO_PADRAOSISTEMA)
    and not ContemValor('D', PERMISSAO_PADRAOSISTEMA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PADRAOSISTEMA)
    and ContemValor('E', PERMISSAO_PADRAOSISTEMA)
    and not ContemValor('D', PERMISSAO_PADRAOSISTEMA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PADRAOSISTEMA)
    and ContemValor('E', PERMISSAO_PADRAOSISTEMA)
    and ContemValor('D', PERMISSAO_PADRAOSISTEMA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PADRAOSISTEMA)
    and not ContemValor('E', PERMISSAO_PADRAOSISTEMA)
    and ContemValor('D', PERMISSAO_PADRAOSISTEMA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PADRAOSISTEMA)
    and not ContemValor('E', PERMISSAO_PADRAOSISTEMA)
    and ContemValor('D', PERMISSAO_PADRAOSISTEMA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PADRAOSISTEMA)
    and ContemValor('E', PERMISSAO_PADRAOSISTEMA)
    and not ContemValor('D', PERMISSAO_PADRAOSISTEMA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

end.
