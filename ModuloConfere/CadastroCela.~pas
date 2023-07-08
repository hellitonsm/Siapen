unit CadastroCela;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, ToolWin, ExtCtrls, Mask,
  DBCtrls, jpeg;

type
  TFrmCadastroCela = class(TFrmModeloCadastro)
    Label2: TLabel;
    DBEditcodigo: TDBEdit;
    LabelCela: TLabel;
    DBEdit2: TDBEdit;
    CdsCadastroID_CELA: TIntegerField;
    CdsCadastroCELA: TStringField;
    CdsCadastroIDSOLARIO: TIntegerField;
    CdsCadastroIDPAVILHAO: TIntegerField;
    CdsCadastroIDGALERIA: TIntegerField;
    CdsCadastroSOLARIO: TStringField;
    CdsCadastroPAVILHAO: TStringField;
    DBRadioGroup2: TDBRadioGroup;
    CdsCadastroISOLAMENTO: TStringField;
    CdsCadastroGALERIA: TStringField;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    CdsCadastroLIMITE_POR_CELA: TIntegerField;
    CdsCadastroEM_MANUTENCAO: TStringField;
    CdsCadastroMOTIVO_MANUTENCAO: TStringField;
    SqlConsulta: TSQLQuery;
    Dspconsulta: TDataSetProvider;
    CdsConsulta: TClientDataSet;
    DsConsulta: TDataSource;
    SqlSelectcela: TSQLQuery;
    CdsConsultaID_CELA: TIntegerField;
    CdsConsultaCELA: TStringField;
    CdsConsultaIDSOLARIO: TIntegerField;
    CdsConsultaIDPAVILHAO: TIntegerField;
    CdsConsultaIDGALERIA: TIntegerField;
    CdsConsultaISOLAMENTO: TStringField;
    CdsConsultaLIMITE_POR_CELA: TIntegerField;
    CdsConsultaEM_MANUTENCAO: TStringField;
    CdsConsultaMOTIVO_MANUTENCAO: TStringField;
    CdsConsultaPAVILHO: TStringField;
    CdsConsultaGALERIA: TStringField;
    CdsConsultaSOLRIO: TStringField;
    LabelPavilhao: TLabel;
    DBLookupComboBoxPavilhao: TDBLookupComboBox;
    LabelGaleria: TLabel;
    DBLookupComboBoxGaleria: TDBLookupComboBox;
    LabelSolario: TLabel;
    DBLookupComboBoxSolario: TDBLookupComboBox;
    SqlPavilhao: TSQLQuery;
    DspPavilhao: TDataSetProvider;
    CdsPavilhao: TClientDataSet;
    DsPavilhao: TDataSource;
    DsGaleria: TDataSource;
    CdsGaleria: TClientDataSet;
    DspGaleria: TDataSetProvider;
    SqlGaleria: TSQLQuery;
    SqlSolario: TSQLQuery;
    DspSolario: TDataSetProvider;
    CdsSolario: TClientDataSet;
    DsSolario: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure EditLocalizarChange(Sender: TObject);
    procedure DBLookupComboBoxPavilhaoClick(Sender: TObject);
    procedure DBLookupComboBoxGaleriaClick(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure PageControlModeloCadastroChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroCela: TFrmCadastroCela;

implementation

uses Lib, DmPrincipal;

{$R *.dfm}

procedure TFrmCadastroCela.FormCreate(Sender: TObject);
begin

  LabelPavilhao.Caption := GLOBAL_NIVEL_1;
  LabelGaleria.Caption := GLOBAL_NIVEL_2;
  LabelSolario.Caption := GLOBAL_NIVEL_3;
  LabelCela.Caption := GLOBAL_NIVEL_4;

  DBGridConsulta.Columns[0].Title.Caption := GLOBAL_NIVEL_1;
  DBGridConsulta.Columns[1].Title.Caption := GLOBAL_NIVEL_2;
  DBGridConsulta.Columns[2].Title.Caption := GLOBAL_NIVEL_3;
  DBGridConsulta.Columns[3].Title.Caption := GLOBAL_NIVEL_4;
  SqlCadastro.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;

  inherited;
  DM.DsPavilhao.DataSet.Close;
  DM.DsPavilhao.DataSet.Open;

  DM.DsGaleria.DataSet.Close;
  DM.DsGaleria.DataSet.Open;

  DM.DsSolario.DataSet.Close;
  DM.DsSolario.DataSet.Open;

  SqlPavilhao.SQL.Text := ' select * from pavilhao where id_up=' + inttostr(GLOBAL_ID_UP) + ' order by pavilhao';

  DsPavilhao.DataSet.Close;
  DsPavilhao.DataSet.Open;

  DsGaleria.DataSet.Close;
  DsGaleria.DataSet.Open;

  DsSolario.DataSet.Close;
  DsSolario.DataSet.Open;

  // SqlSelectcela.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_CELA)
    and not ContemValor('E', PERMISSAO_CELA)
    and not ContemValor('D', PERMISSAO_CELA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CELA)
    and not ContemValor('E', PERMISSAO_CELA)
    and not ContemValor('D', PERMISSAO_CELA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CELA)
    and ContemValor('E', PERMISSAO_CELA)
    and not ContemValor('D', PERMISSAO_CELA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CELA)
    and ContemValor('E', PERMISSAO_CELA)
    and ContemValor('D', PERMISSAO_CELA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CELA)
    and not ContemValor('E', PERMISSAO_CELA)
    and ContemValor('D', PERMISSAO_CELA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CELA)
    and not ContemValor('E', PERMISSAO_CELA)
    and ContemValor('D', PERMISSAO_CELA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CELA)
    and ContemValor('E', PERMISSAO_CELA)
    and not ContemValor('D', PERMISSAO_CELA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;


end;

procedure TFrmCadastroCela.EditLocalizarChange(Sender: TObject);
begin
  inherited;

  DsCadastro.DataSet.Filter := 'CELA LIKE ' + QS(EditLocalizar.Text + '%');

  DsCadastro.DataSet.Filtered := False;
  if Trim(EditLocalizar.Text) <> '' then
    DsCadastro.DataSet.Filtered := True;

end;

procedure TFrmCadastroCela.DBLookupComboBoxPavilhaoClick(Sender: TObject);
begin
  inherited;
  DBLookupComboBoxGaleria.KeyValue := null;
  DBLookupComboBoxSolario.KeyValue := null;

end;

procedure TFrmCadastroCela.DBLookupComboBoxGaleriaClick(Sender: TObject);
begin
  inherited;
  DBLookupComboBoxSolario.KeyValue := null;

end;

procedure TFrmCadastroCela.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_CELA)
    and not ContemValor('E', PERMISSAO_CELA)
    and not ContemValor('D', PERMISSAO_CELA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CELA)
    and not ContemValor('E', PERMISSAO_CELA)
    and not ContemValor('D', PERMISSAO_CELA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CELA)
    and ContemValor('E', PERMISSAO_CELA)
    and not ContemValor('D', PERMISSAO_CELA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CELA)
    and ContemValor('E', PERMISSAO_CELA)
    and ContemValor('D', PERMISSAO_CELA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CELA)
    and not ContemValor('E', PERMISSAO_CELA)
    and ContemValor('D', PERMISSAO_CELA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CELA)
    and not ContemValor('E', PERMISSAO_CELA)
    and ContemValor('D', PERMISSAO_CELA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CELA)
    and ContemValor('E', PERMISSAO_CELA)
    and not ContemValor('D', PERMISSAO_CELA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroCela.PageControlModeloCadastroChange(
  Sender: TObject);
begin
  inherited;
  if PageControlModeloCadastro.ActivePageIndex = 1 then
  begin
    DBGridConsulta.SelectedIndex := 4;
  end;
end;

procedure TFrmCadastroCela.FormShow(Sender: TObject);
begin
  inherited;
  if not ContemValor('I', PERMISSAO_CELA) then
  begin
    DBLookupComboBoxPavilhao.Enabled := False;
    DBLookupComboBoxGaleria.Enabled := False;
    DBLookupComboBoxSolario.Enabled := False;
    DBEdit2.Enabled := False;
  end;
end;

end.

