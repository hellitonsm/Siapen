unit CadastroInternoPsicossocial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloInterno, FMTBcd, DB, DBClient, Provider, SqlExpr, ImgList,
  ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, Mask, Buttons,
  ToolWin, jpeg, dbcgrids, Menus, Lib, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFrmCadastroInternoPsicossocial = class(TFrmModeloInterno)
    TabSheet1: TTabSheet;
    PageControlPsicossocial: TPageControl;
    TabSheet12: TTabSheet;
    Label81: TLabel;
    Label138: TLabel;
    Label160: TLabel;
    Label161: TLabel;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBComboBox8: TDBComboBox;
    DBComboBox9: TDBComboBox;
    DBLookupComboBox10: TDBLookupComboBox;
    DBEdit41: TDBEdit;
    DBComboBox29: TDBComboBox;
    DBEdit91: TDBEdit;
    TabSheet13: TTabSheet;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBComboBox10: TDBComboBox;
    DBComboBox11: TDBComboBox;
    DBComboBox12: TDBComboBox;
    DBComboBox13: TDBComboBox;
    DBComboBox14: TDBComboBox;
    DBEdit46: TDBEdit;
    DBComboBox15: TDBComboBox;
    DBComboBox16: TDBComboBox;
    DBComboBox17: TDBComboBox;
    TabSheet14: TTabSheet;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    DBComboBox18: TDBComboBox;
    DBEdit52: TDBEdit;
    DBComboBox19: TDBComboBox;
    DBComboBox20: TDBComboBox;
    DBEdit50: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBComboBox21: TDBComboBox;
    DBComboBox22: TDBComboBox;
    DBComboBox23: TDBComboBox;
    TabSheet15: TTabSheet;
    Label111: TLabel;
    Label112: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    DBEdit51: TDBEdit;
    TabSheet16: TTabSheet;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    DBEdit53: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    DBLookupComboBox7: TDBLookupComboBox;
    DBEdit61: TDBEdit;
    TabSheet18: TTabSheet;
    Label128: TLabel;
    Label129: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    DBEdit63: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit70: TDBEdit;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    DBEdit73: TDBEdit;
    DBLookupComboBox8: TDBLookupComboBox;
    TabSheet19: TTabSheet;
    Label135: TLabel;
    Label136: TLabel;
    Label137: TLabel;
    DBGrid4: TDBGrid;
    DBMemo3: TDBMemo;
    Memo1: TMemo;
    DBLookupComboBox9: TDBLookupComboBox;
    MaskEdit3: TMaskEdit;
    Button3: TButton;
    DSATENDIMENTO: TDataSource;
    CDSATENDIMENTO: TClientDataSet;
    CDSATENDIMENTOID_ATENDIMENTO: TIntegerField;
    CDSATENDIMENTOIDINTERNO: TIntegerField;
    CDSATENDIMENTODATAATENDIMENTO: TSQLTimeStampField;
    CDSATENDIMENTOIDTECNICO: TIntegerField;
    CDSATENDIMENTODESCRICAO_ATENDIMENTO: TStringField;
    CDSATENDIMENTOTCNICOA: TStringField;
    DSPATENDIMENTO: TDataSetProvider;
    SQLATENDIMENTOold: TSQLQuery;
    Label8: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    TabSheet2: TTabSheet;
    Label165: TLabel;
    Label166: TLabel;
    Label167: TLabel;
    Label168: TLabel;
    Label169: TLabel;
    Label170: TLabel;
    Label171: TLabel;
    Label172: TLabel;
    Label173: TLabel;
    Label174: TLabel;
    Label175: TLabel;
    Label17: TLabel;
    Label67: TLabel;
    DBEdit92: TDBEdit;
    DBEdit93: TDBEdit;
    DBEdit94: TDBEdit;
    DBEdit95: TDBEdit;
    DBEdit96: TDBEdit;
    DBComboBox26: TDBComboBox;
    DBComboBox27: TDBComboBox;
    DBEdit97: TDBEdit;
    DBEdit98: TDBEdit;
    DBEdit99: TDBEdit;
    DBEdit100: TDBEdit;
    DBEdit101: TDBEdit;
    DBEdit15: TDBEdit;
    TabSheet3: TTabSheet;
    Label176: TLabel;
    Label177: TLabel;
    Label178: TLabel;
    Label179: TLabel;
    Label180: TLabel;
    Label181: TLabel;
    Label182: TLabel;
    Label183: TLabel;
    Label184: TLabel;
    DBEdit102: TDBEdit;
    DBEdit103: TDBEdit;
    DBEdit104: TDBEdit;
    DBEdit105: TDBEdit;
    DBEdit106: TDBEdit;
    DBEdit107: TDBEdit;
    DBEdit108: TDBEdit;
    DBEdit109: TDBEdit;
    DBEdit110: TDBEdit;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup5: TDBRadioGroup;
    DBRadioGroup9: TDBRadioGroup;
    DBRadioGroup8: TDBRadioGroup;
    DBRadioGroup7: TDBRadioGroup;
    DBRadioGroup6: TDBRadioGroup;
    SQLATENDIMENTO: TFDQuery;
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure CancelarClick(Sender: TObject);
    procedure PageControlModeloCadastroChange(Sender: TObject);
    procedure EditLocalizarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroInternoPsicossocial: TFrmCadastroInternoPsicossocial;

implementation

uses DmPrincipal;

{$R *.dfm}

procedure TFrmCadastroInternoPsicossocial.Button3Click(Sender: TObject);
begin
  inherited;
  DSATENDIMENTO.DataSet.Append;
  DSATENDIMENTO.DataSet.fieldbyname('id_atendimento').AsInteger := DM.SQLConnect.ExecSQLScalar('SELECT GEN_ID(COD_UP,0)||GEN_ID(idatendiemnto_psicosocial,1) FROM RDB$DATABASE');
  DSATENDIMENTO.DataSet.fieldbyname('idinterno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  DSATENDIMENTO.DataSet.fieldbyname('dataatendimento').AsString := MaskEdit3.Text;
  DSATENDIMENTO.DataSet.fieldbyname('idtecnico').AsInteger := DBLookupComboBox9.KeyValue;
  DSATENDIMENTO.DataSet.fieldbyname('descricao_atendimento').AsString := Memo1.Text;
  DSATENDIMENTO.DataSet.Post;

  Memo1.Text := '';
  MaskEdit3.Text := '';
  DBLookupComboBox9.KeyValue := null;

end;

procedure TFrmCadastroInternoPsicossocial.FormShow(Sender: TObject);
begin
  inherited;
  DSATENDIMENTO.DataSet.Close;
  DSATENDIMENTO.DataSet.Open;

  dm.dsadvogado.DataSet.Close;
  dm.dsadvogado.DataSet.Open;
end;

procedure TFrmCadastroInternoPsicossocial.SalvarClick(Sender: TObject);
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

    if DsCadastro.DataSet.State in [dsedit, dsinsert] then
      DsCadastro.DataSet.Post;

    if DSATENDIMENTO.DataSet.State in [dsedit, dsinsert] then
      DSATENDIMENTO.DataSet.Post;

    IniciaTransCadastro;

    iErro := TClientDataSet(DsCadastro.DataSet).ApplyUpdates(0)
      + TClientDataSet(DSATENDIMENTO.DataSet).ApplyUpdates(0);

    if iErro = 0 then
      finalizaTransCadastro
    else
      CancelaTransCadastro;
    StatusBar1.Panels[1].Text := '...';
    DsCadastro.DataSet.Refresh;
    PanelCadastro.Enabled := False;
  except
    ShowMessage('Erro na transação');
  end;
  CorNosCampos;
  PageControlPrincipal.ActivePageIndex := 0;

  DSATENDIMENTO.DataSet.Close;
  DSATENDIMENTO.DataSet.OPEN;

end;

procedure TFrmCadastroInternoPsicossocial.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_PSICOSSOCIAL)
    and not ContemValor('E', PERMISSAO_PSICOSSOCIAL)
    and not ContemValor('D', PERMISSAO_PSICOSSOCIAL) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PSICOSSOCIAL)
    and not ContemValor('E', PERMISSAO_PSICOSSOCIAL)
    and not ContemValor('D', PERMISSAO_PSICOSSOCIAL) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PSICOSSOCIAL)
    and ContemValor('E', PERMISSAO_PSICOSSOCIAL)
    and not ContemValor('D', PERMISSAO_PSICOSSOCIAL) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PSICOSSOCIAL)
    and ContemValor('E', PERMISSAO_PSICOSSOCIAL)
    and ContemValor('D', PERMISSAO_PSICOSSOCIAL) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PSICOSSOCIAL)
    and not ContemValor('E', PERMISSAO_PSICOSSOCIAL)
    and ContemValor('D', PERMISSAO_PSICOSSOCIAL) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PSICOSSOCIAL)
    and not ContemValor('E', PERMISSAO_PSICOSSOCIAL)
    and ContemValor('D', PERMISSAO_PSICOSSOCIAL) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PSICOSSOCIAL)
    and ContemValor('E', PERMISSAO_PSICOSSOCIAL)
    and not ContemValor('D', PERMISSAO_PSICOSSOCIAL) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroInternoPsicossocial.DsCadastroDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_PSICOSSOCIAL)
    and not ContemValor('E', PERMISSAO_PSICOSSOCIAL)
    and not ContemValor('D', PERMISSAO_PSICOSSOCIAL) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PSICOSSOCIAL)
    and not ContemValor('E', PERMISSAO_PSICOSSOCIAL)
    and not ContemValor('D', PERMISSAO_PSICOSSOCIAL) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PSICOSSOCIAL)
    and ContemValor('E', PERMISSAO_PSICOSSOCIAL)
    and not ContemValor('D', PERMISSAO_PSICOSSOCIAL) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PSICOSSOCIAL)
    and ContemValor('E', PERMISSAO_PSICOSSOCIAL)
    and ContemValor('D', PERMISSAO_PSICOSSOCIAL) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_PSICOSSOCIAL)
    and not ContemValor('E', PERMISSAO_PSICOSSOCIAL)
    and ContemValor('D', PERMISSAO_PSICOSSOCIAL) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PSICOSSOCIAL)
    and not ContemValor('E', PERMISSAO_PSICOSSOCIAL)
    and ContemValor('D', PERMISSAO_PSICOSSOCIAL) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_PSICOSSOCIAL)
    and ContemValor('E', PERMISSAO_PSICOSSOCIAL)
    and not ContemValor('D', PERMISSAO_PSICOSSOCIAL) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroInternoPsicossocial.EditLocalizarChange(Sender: TObject);
begin
  if RadioGroupTipoLocalizar.ItemIndex = 1 then
  begin
    if ((EditLocalizar.Text <> '') and (Length(EditLocalizar.Text) >= 3)) or
      (EditLocalizar.Text = ' ') then
    begin
      //showmessage('foi');
      DsConsulta.DataSet.filtered := False;
      DsConsulta.DataSet.Filter := 'NOME_INTERNO LIKE ''%' + EditLocalizar.Text + '%''';
      DsConsulta.DataSet.filtered := True;
    end
    else
      DsConsulta.DataSet.filtered := False;
  end
  else
  begin
    if EditLocalizar.Text <> '' then
    begin
      DsConsulta.DataSet.filtered := False;
      DsConsulta.DataSet.Filter := 'RGI = ''' + EditLocalizar.Text + '''';
      DsConsulta.DataSet.filtered := True;
    end
    else
      DsConsulta.DataSet.filtered := False;
  end;

end;

procedure TFrmCadastroInternoPsicossocial.CancelarClick(Sender: TObject);
begin
  inherited;
  DSATENDIMENTO.DataSet.Close;
  DSATENDIMENTO.DataSet.OPEN;
  
end;

procedure TFrmCadastroInternoPsicossocial.PageControlModeloCadastroChange(
  Sender: TObject);
begin
  //inherited;
  if PageControlModeloCadastro.ActivePageIndex = 1 then
  begin
    CancelarClick(nil);
  end;
end;

end.

