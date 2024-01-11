unit CadastroAdvogado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, ToolWin, ExtCtrls, Mask,
  DBCtrls, jpeg, Buttons, System.ImageList, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmCadastroAdvogado = class(TFrmModeloCadastro)
    Label2: TLabel;
    DBEDITCODIGO: TDBEdit;
    Label3: TLabel;
    dbedtADVOGADO: TDBEdit;
    Label4: TLabel;
    dbedtOAB: TDBEdit;
    Dspconsulta: TDataSetProvider;
    CdsConsulta: TClientDataSet;
    DsConsulta: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    Dspinternoadvogado: TDataSetProvider;
    Cdsinternoadvogado: TClientDataSet;
    Dsinternoadvogado: TDataSource;
    Label5: TLabel;
    DBImagefotoadvogado: TDBImage;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    DBEditcep: TDBEdit;
    Label9: TLabel;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    DBEditCPF: TDBEdit;
    Label11: TLabel;
    DBEditrg: TDBEdit;
    Label33: TLabel;
    DBLookupComboBoxIDCIDADE: TDBLookupComboBox;
    SpeedButton11: TSpeedButton;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    Label13: TLabel;
    DBEdit8: TDBEdit;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    OpenDialog1: TOpenDialog;
    SqlSelectadvogado: TFDQuery;
    SqlConsulta: TFDQuery;
    Sqlinternoadvogado: TFDQuery;
    procedure NovoClick(Sender: TObject);
    procedure EditLocalizarChange(Sender: TObject);
    procedure DBGridConsultaDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure DBImagefotoadvogadoClick(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroAdvogado: TFrmCadastroAdvogado;

implementation

uses Lib, CadastroCidade, DmPrincipal;

{$R *.dfm}

procedure TFrmCadastroAdvogado.NovoClick(Sender: TObject);
begin
  inherited;
  dbedtADVOGADO.SetFocus;
end;

procedure TFrmCadastroAdvogado.EditLocalizarChange(Sender: TObject);
begin
  inherited;
  SqlConsulta.sql.text := SqlSelectadvogado.SQL.Text + ' where advogado like upper('
    + qs('%' + EditLocalizar.text + '%') + ') order by advogado ';

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

  DBGridConsulta.SelectedIndex := 1;
end;

procedure TFrmCadastroAdvogado.DBGridConsultaDblClick(Sender: TObject);
var
  cod: integer;
begin
  cod := DsConsulta.DataSet.FieldByName('id_advogado').AsInteger;

  if DsCadastro.DataSet.Locate('id_advogado', cod, []) = true then
    EditarClick(nil);
end;

procedure TFrmCadastroAdvogado.FormShow(Sender: TObject);
begin
  inherited;

  Dsinternoadvogado.DataSet.close;
  Dsinternoadvogado.DataSet.Open;

  DsConsulta.DataSet.close;
  DsConsulta.DataSet.Open;

  dm.DSCIDADE.DataSet.close;
  dm.DSCIDADE.DataSet.Open;
  PageControlModeloCadastro.ActivePageIndex := 1;

  if EditLocalizar.CanFocus then
  begin
    EditLocalizar.SetFocus;
  end;

  DBEditcpf.Field.EditMask := '999\.999\.999-99;1;_';
  DBEditcep.field.editmask := '99.999-999;1;_';

  DBGridConsulta.SelectedIndex := 1;
end;

procedure TFrmCadastroAdvogado.SpeedButton11Click(Sender: TObject);
begin
  inherited;
  FrmCadastroCidade := TFrmCadastroCidade.create(Application);
  FrmCadastroCidade.showmodal;
  FreeAndNil(FrmCadastroCidade);

  DM.DSCIDADE.DataSet.Close;
  DM.DSCIDADE.DataSet.OPEN;

end;

procedure TFrmCadastroAdvogado.DBImagefotoadvogadoClick(Sender: TObject);
var
  sOrigem, sDestino: string;
  JPeg: TJpegImage;
begin
  with DsCadastro.DataSet do
  begin
    if state in [dsedit, dsinsert] then
    begin
      if OpenDialog1.Execute then
      begin
        JPeg := TJPEGImage.Create;
        JPeg.LoadFromFile(ConverterBmpParaJPeg(JpgToBmp(OpenDialog1.FileName)));
        DBImageFOTOadvogado.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end;
end;

procedure TFrmCadastroAdvogado.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_ADVOGADO)
    and not ContemValor('E', PERMISSAO_ADVOGADO)
    and not ContemValor('D', PERMISSAO_ADVOGADO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_ADVOGADO)
    and not ContemValor('E', PERMISSAO_ADVOGADO)
    and not ContemValor('D', PERMISSAO_ADVOGADO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_ADVOGADO)
    and ContemValor('E', PERMISSAO_ADVOGADO)
    and not ContemValor('D', PERMISSAO_ADVOGADO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_ADVOGADO)
    and ContemValor('E', PERMISSAO_ADVOGADO)
    and ContemValor('D', PERMISSAO_ADVOGADO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_ADVOGADO)
    and not ContemValor('E', PERMISSAO_ADVOGADO)
    and ContemValor('D', PERMISSAO_ADVOGADO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_ADVOGADO)
    and not ContemValor('E', PERMISSAO_ADVOGADO)
    and ContemValor('D', PERMISSAO_ADVOGADO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_ADVOGADO)
    and ContemValor('E', PERMISSAO_ADVOGADO)
    and not ContemValor('D', PERMISSAO_ADVOGADO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroAdvogado.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_ADVOGADO)
    and not ContemValor('E', PERMISSAO_ADVOGADO)
    and not ContemValor('D', PERMISSAO_ADVOGADO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_ADVOGADO)
    and not ContemValor('E', PERMISSAO_ADVOGADO)
    and not ContemValor('D', PERMISSAO_ADVOGADO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_ADVOGADO)
    and ContemValor('E', PERMISSAO_ADVOGADO)
    and not ContemValor('D', PERMISSAO_ADVOGADO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_ADVOGADO)
    and ContemValor('E', PERMISSAO_ADVOGADO)
    and ContemValor('D', PERMISSAO_ADVOGADO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_ADVOGADO)
    and not ContemValor('E', PERMISSAO_ADVOGADO)
    and ContemValor('D', PERMISSAO_ADVOGADO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_ADVOGADO)
    and not ContemValor('E', PERMISSAO_ADVOGADO)
    and ContemValor('D', PERMISSAO_ADVOGADO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_ADVOGADO)
    and ContemValor('E', PERMISSAO_ADVOGADO)
    and not ContemValor('D', PERMISSAO_ADVOGADO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

end.

