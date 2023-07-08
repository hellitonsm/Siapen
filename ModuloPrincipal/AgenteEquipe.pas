unit AgenteEquipe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, Mask, DBCtrls, DB, DBClient, Provider,
  SqlExpr, ImgList, ComCtrls, Grids, DBGrids, StdCtrls, ToolWin, ExtCtrls,
  Buttons, jpeg, Lib;

type
  TFrmAgenteEquipe = class(TFrmModeloCadastro)
    Label2: TLabel;
    DBEditCODIGO: TDBEdit;
    Status: TDBRadioGroup;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBLookupComboBox2: TDBLookupComboBox;
    Label4: TLabel;
    SpeedButton3: TSpeedButton;
    DBLookupComboBox3: TDBLookupComboBox;
    Label5: TLabel;
    CdsCadastroIDAGENTE_EQUIPE: TIntegerField;
    CdsCadastroIDEQUIPE: TIntegerField;
    CdsCadastroIDFUNCIONARIO: TIntegerField;
    CdsCadastroIDPOSTO_TRABALHO: TIntegerField;
    CdsCadastroST: TStringField;
    CdsCadastroEQUIPE: TStringField;
    CdsCadastroFUNCIONARIO: TStringField;
    CdsCadastroPOSTO_TRABALHO: TStringField;
    Label6: TLabel;
    DBLookupComboBoxFiltroEquipe: TDBLookupComboBox;
    SpeedButton4: TSpeedButton;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    SpeedButton5: TSpeedButton;
    Label9: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    SpeedButton6: TSpeedButton;
    Label10: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    SpeedButton7: TSpeedButton;
    CdsCadastroROTATIVO_1: TStringField;
    CdsCadastroROTATIVO_2: TStringField;
    CdsCadastroROTATIVO_3: TStringField;
    CdsCadastroROTATIVO_4: TStringField;
    CdsCadastroROTATIVO_5: TStringField;
    CdsCadastroROTATIVO_6: TStringField;
    CdsCadastroIDPOSTO_ROTATIVO_1: TIntegerField;
    CdsCadastroIDPOSTO_ROTATIVO_2: TIntegerField;
    CdsCadastroIDPOSTO_ROTATIVO_3: TIntegerField;
    CdsCadastroIDPOSTO_ROTATIVO_4: TIntegerField;
    CdsCadastroIDPOSTO_ROTATIVO_5: TIntegerField;
    CdsCadastroIDPOSTO_ROTATIVO_6: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure DBLookupComboBoxFiltroEquipeClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAgenteEquipe: TFrmAgenteEquipe;

implementation

uses DmPrincipal, Equipe, PostoTrabalho, CadastroFuncionario;

{$R *.dfm}

procedure TFrmAgenteEquipe.FormShow(Sender: TObject);
begin
  inherited;

  dm.DsEquipe.DataSet.Close;
  dm.DsEquipe.DataSet.Open;

  dm.DsPostoTrabalho.DataSet.Close;
  dm.DsPostoTrabalho.DataSet.Open;

  dm.DsFuncionario.DataSet.Close;
  dm.DsFuncionario.DataSet.Open;

  DM.DsPostoTrabalhoRotativo.DataSet.Close;
  DM.DsPostoTrabalhoRotativo.DataSet.Open;
end;

procedure TFrmAgenteEquipe.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  DsCadastro.DataSet.FieldByName('IDEQUIPE').AsVariant := null;

  FrmEquipe := TFrmEquipe.create(Application);
  FrmEquipe.showmodal;
  FreeAndNil(FrmEquipe);
  CorNosCampos;

  DM.DsEquipe.DataSet.Close;
  DM.DsEquipe.DataSet.Open;

end;

procedure TFrmAgenteEquipe.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  DsCadastro.DataSet.FieldByName('IDFUNCIONARIO').AsVariant := null;

  FrmCadastroFuncionario := TFrmCadastroFuncionario.create(Application);
  FrmCadastroFuncionario.showmodal;
  FreeAndNil(FrmCadastroFuncionario);
  CorNosCampos;

  DM.DsFuncionario.DataSet.Close;
  DM.DsFuncionario.DataSet.Open;

end;

procedure TFrmAgenteEquipe.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  DsCadastro.DataSet.FieldByName('IDPOSTO_TRABALHO').AsVariant := null;

  FrmPostoTrabalho := TFrmPostoTrabalho.create(Application);
  FrmPostoTrabalho.showmodal;
  FreeAndNil(FrmPostoTrabalho);
  CorNosCampos;

  DM.DsPostoTrabalho.DataSet.Close;
  DM.DsPostoTrabalho.DataSet.Open;

  DM.DsPostoTrabalhoRotativo.DataSet.Close;
  DM.DsPostoTrabalhoRotativo.DataSet.Open;

end;

procedure TFrmAgenteEquipe.NovoClick(Sender: TObject);
begin
  inherited;
  DsCadastro.DataSet.FieldByName('ST').AsVariant := 'A';
end;

procedure TFrmAgenteEquipe.DBLookupComboBoxFiltroEquipeClick(
  Sender: TObject);
begin
  inherited;

  DsCadastro.DataSet.Filtered := False;

  if DBLookupComboBoxFiltroEquipe.KeyValue <> null then
  begin
    DsCadastro.DataSet.Filter := 'IDEQUIPE = ' + inttostr(DBLookupComboBoxFiltroEquipe.KeyValue);
    DsCadastro.DataSet.Filtered := True;
  end;

end;

procedure TFrmAgenteEquipe.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  
  DsCadastro.DataSet.Filtered := False;
  DBLookupComboBoxFiltroEquipe.KeyValue := null;

end;

procedure TFrmAgenteEquipe.SpeedButton5Click(Sender: TObject);
begin
  inherited;

  DsCadastro.DataSet.FieldByName('IDPOSTO_ROTATIVO_1').AsVariant := null;

  FrmPostoTrabalho := TFrmPostoTrabalho.create(Application);
  FrmPostoTrabalho.showmodal;
  FreeAndNil(FrmPostoTrabalho);
  CorNosCampos;

  DM.DsPostoTrabalhoRotativo.DataSet.Close;
  DM.DsPostoTrabalhoRotativo.DataSet.Open;

end;

procedure TFrmAgenteEquipe.SpeedButton6Click(Sender: TObject);
begin
  inherited;

  DsCadastro.DataSet.FieldByName('IDPOSTO_ROTATIVO_2').AsVariant := null;

  FrmPostoTrabalho := TFrmPostoTrabalho.create(Application);
  FrmPostoTrabalho.showmodal;
  FreeAndNil(FrmPostoTrabalho);
  CorNosCampos;

  DM.DsPostoTrabalhoRotativo.DataSet.Close;
  DM.DsPostoTrabalhoRotativo.DataSet.Open;

end;

procedure TFrmAgenteEquipe.SpeedButton7Click(Sender: TObject);
begin
  inherited;

  DsCadastro.DataSet.FieldByName('IDPOSTO_ROTATIVO_3').AsVariant := null;

  FrmPostoTrabalho := TFrmPostoTrabalho.create(Application);
  FrmPostoTrabalho.showmodal;
  FreeAndNil(FrmPostoTrabalho);
  CorNosCampos;

  DM.DsPostoTrabalhoRotativo.DataSet.Close;
  DM.DsPostoTrabalhoRotativo.DataSet.Open;


end;

procedure TFrmAgenteEquipe.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_AGENTEPOREQUIPE)
    and not ContemValor('E', PERMISSAO_AGENTEPOREQUIPE)
    and not ContemValor('D', PERMISSAO_AGENTEPOREQUIPE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_AGENTEPOREQUIPE)
    and not ContemValor('E', PERMISSAO_AGENTEPOREQUIPE)
    and not ContemValor('D', PERMISSAO_AGENTEPOREQUIPE) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_AGENTEPOREQUIPE)
    and ContemValor('E', PERMISSAO_AGENTEPOREQUIPE)
    and not ContemValor('D', PERMISSAO_AGENTEPOREQUIPE) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_AGENTEPOREQUIPE)
    and ContemValor('E', PERMISSAO_AGENTEPOREQUIPE)
    and ContemValor('D', PERMISSAO_AGENTEPOREQUIPE) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_AGENTEPOREQUIPE)
    and not ContemValor('E', PERMISSAO_AGENTEPOREQUIPE)
    and ContemValor('D', PERMISSAO_AGENTEPOREQUIPE) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_AGENTEPOREQUIPE)
    and not ContemValor('E', PERMISSAO_AGENTEPOREQUIPE)
    and ContemValor('D', PERMISSAO_AGENTEPOREQUIPE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_AGENTEPOREQUIPE)
    and ContemValor('E', PERMISSAO_AGENTEPOREQUIPE)
    and not ContemValor('D', PERMISSAO_AGENTEPOREQUIPE) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmAgenteEquipe.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_AGENTEPOREQUIPE)
    and not ContemValor('E', PERMISSAO_AGENTEPOREQUIPE)
    and not ContemValor('D', PERMISSAO_AGENTEPOREQUIPE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_AGENTEPOREQUIPE)
    and not ContemValor('E', PERMISSAO_AGENTEPOREQUIPE)
    and not ContemValor('D', PERMISSAO_AGENTEPOREQUIPE) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_AGENTEPOREQUIPE)
    and ContemValor('E', PERMISSAO_AGENTEPOREQUIPE)
    and not ContemValor('D', PERMISSAO_AGENTEPOREQUIPE) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_AGENTEPOREQUIPE)
    and ContemValor('E', PERMISSAO_AGENTEPOREQUIPE)
    and ContemValor('D', PERMISSAO_AGENTEPOREQUIPE) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_AGENTEPOREQUIPE)
    and not ContemValor('E', PERMISSAO_AGENTEPOREQUIPE)
    and ContemValor('D', PERMISSAO_AGENTEPOREQUIPE) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_AGENTEPOREQUIPE)
    and not ContemValor('E', PERMISSAO_AGENTEPOREQUIPE)
    and ContemValor('D', PERMISSAO_AGENTEPOREQUIPE) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_AGENTEPOREQUIPE)
    and ContemValor('E', PERMISSAO_AGENTEPOREQUIPE)
    and not ContemValor('D', PERMISSAO_AGENTEPOREQUIPE) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

end.

