unit CadastroDestino;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, ToolWin, ExtCtrls, DBCtrls,
  Mask, jpeg, Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFrmCadastroDestino = class(TFrmModeloCadastro)
    Label2: TLabel;
    DBEDITCODIGO: TDBEdit;
    Label3: TLabel;
    dbedtDESTINO: TDBEdit;
    dbrgrpCAPITAL: TDBRadioGroup;
    Label28: TLabel;
    DBEdit10: TDBEdit;
    Label30: TLabel;
    DBEdit12: TDBEdit;
    Label31: TLabel;
    DBEdit13: TDBEdit;
    Label32: TLabel;
    DBEditcep: TDBEdit;
    SpeedButton11: TSpeedButton;
    DBLookupComboBoxIDCIDADE: TDBLookupComboBox;
    Label14: TLabel;
    Label34: TLabel;
    DBEditfone: TDBEdit;
    Label29: TLabel;
    DBEdit11: TDBEdit;
    Label5: TLabel;
    DBComboBox6: TDBComboBox;
    Label41: TLabel;
    DBComboBox7: TDBComboBox;
    Label42: TLabel;
    DBComboBox8: TDBComboBox;
    Label48: TLabel;
    DBEdit31: TDBEdit;
    Label16: TLabel;
    DBLookupComboBoxPostoTrabalho: TDBLookupComboBox;
    SpeedButton8: TSpeedButton;
    Button4: TButton;
    DBRadioGroupTIPO_DESTINO: TDBRadioGroup;
    procedure NovoClick(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    TIPO_PADRAO: string;
    ID_CIDADE: integer;
    { Public declarations }
  end;

var
  FrmCadastroDestino: TFrmCadastroDestino;

implementation

uses CadastroCidade, DmPrincipal, Lib;

{$R *.dfm}

procedure TFrmCadastroDestino.NovoClick(Sender: TObject);
begin
  inherited;

  if dbedtDESTINO.CANFOCUS then
    dbedtDESTINO.SetFocus;

  DsCadastro.DataSet.fieldbyname('TIPO_DESTINO').AsString := 'OUTROS';

  if TIPO_PADRAO <> '' then
  begin
    DsCadastro.DataSet.fieldbyname('TIPO_DESTINO').AsString := TIPO_PADRAO;
    DBRadioGroupTIPO_DESTINO.Enabled := false;
  end;

  if ID_CIDADE>0 then
    DsCadastro.DataSet.fieldbyname('IDCIDADE').AsInteger := ID_CIDADE;


end;

procedure TFrmCadastroDestino.SpeedButton11Click(Sender: TObject);
begin
  FrmCadastroCidade := TFrmCadastroCidade.create(Application);
  FrmCadastroCidade.showmodal;
  FreeAndNil(FrmCadastroCidade);

  DM.DSCIDADE.DataSet.Close;
  DM.DSCIDADE.DataSet.OPEN;

end;

procedure TFrmCadastroDestino.FormCreate(Sender: TObject);
begin
  inherited;
  ID_CIDADE := 0;
  DM.DSCIDADE.DataSet.Close;
  DM.DSCIDADE.DataSet.OPEN;

  DM.DsPostoTrabalho.DataSet.Close;
  DM.DsPostoTrabalho.DataSet.Open;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_DESTINO)
    and not ContemValor('E', PERMISSAO_DESTINO)
    and not ContemValor('D', PERMISSAO_DESTINO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_DESTINO)
    and not ContemValor('E', PERMISSAO_DESTINO)
    and not ContemValor('D', PERMISSAO_DESTINO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_DESTINO)
    and ContemValor('E', PERMISSAO_DESTINO)
    and not ContemValor('D', PERMISSAO_DESTINO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_DESTINO)
    and ContemValor('E', PERMISSAO_DESTINO)
    and ContemValor('D', PERMISSAO_DESTINO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_DESTINO)
    and not ContemValor('E', PERMISSAO_DESTINO)
    and ContemValor('D', PERMISSAO_DESTINO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_DESTINO)
    and not ContemValor('E', PERMISSAO_DESTINO)
    and ContemValor('D', PERMISSAO_DESTINO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_DESTINO)
    and ContemValor('E', PERMISSAO_DESTINO)
    and not ContemValor('D', PERMISSAO_DESTINO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;
  
end;

procedure TFrmCadastroDestino.FormShow(Sender: TObject);
begin
  inherited;
  if TIPO_PADRAO <> '' then
  begin
    SqlCadastro.SQL.Text := 'SELECT * FROM DESTINO WHERE TIPO_DESTINO=' + QS(TIPO_PADRAO);
    DsCadastro.DataSet.Close;
    DsCadastro.DataSet.open;
  end;

  DBGridConsulta.SelectedIndex := 1;
end;

procedure TFrmCadastroDestino.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_DESTINO)
    and not ContemValor('E', PERMISSAO_DESTINO)
    and not ContemValor('D', PERMISSAO_DESTINO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_DESTINO)
    and not ContemValor('E', PERMISSAO_DESTINO)
    and not ContemValor('D', PERMISSAO_DESTINO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_DESTINO)
    and ContemValor('E', PERMISSAO_DESTINO)
    and not ContemValor('D', PERMISSAO_DESTINO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_DESTINO)
    and ContemValor('E', PERMISSAO_DESTINO)
    and ContemValor('D', PERMISSAO_DESTINO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_DESTINO)
    and not ContemValor('E', PERMISSAO_DESTINO)
    and ContemValor('D', PERMISSAO_DESTINO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_DESTINO)
    and not ContemValor('E', PERMISSAO_DESTINO)
    and ContemValor('D', PERMISSAO_DESTINO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_DESTINO)
    and ContemValor('E', PERMISSAO_DESTINO)
    and not ContemValor('D', PERMISSAO_DESTINO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;
  
end;

end.

