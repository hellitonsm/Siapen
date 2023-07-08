unit CadastroSubEvento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, DBCtrls, ToolWin, ExtCtrls,
  Mask, jpeg, Lib;

type
  TFrmCadastroSubEvento = class(TFrmModeloCadastro)
    CdsCadastroID_SUB_EVENTOS: TIntegerField;
    CdsCadastroDESCRICAO_EVENTOS: TStringField;
    CdsCadastroCODIGO_SUB_EVENTO: TIntegerField;
    Label2: TLabel;
    DBEditcodigo: TDBEdit;
    Label3: TLabel;
    DBEdtDescricao: TDBEdit;
    Label4: TLabel;
    DBEdtCodigoEvento: TDBEdit;
    DBLkpEventoPrincipal: TDBLookupComboBox;
    Label5: TLabel;
    DsEventos: TDataSource;
    CdsEventos: TClientDataSet;
    DspEventos: TDataSetProvider;
    SqlEventos: TSQLQuery;
    CdsCadastroID_EVENTOS: TIntegerField;
    CbTipoEvento: TComboBox;
    Label6: TLabel;
    procedure NovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CbTipoEventoChange(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure PageControlModeloCadastroChange(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroSubEvento: TFrmCadastroSubEvento;

implementation

uses DmPrincipal;

{$R *.dfm}

procedure TFrmCadastroSubEvento.NovoClick(Sender: TObject);
begin
  inherited;
  DBLkpEventoPrincipal.SetFocus;
  CbTipoEvento.ItemIndex := 0;
  CbTipoEventoChange(nil);
end;

procedure TFrmCadastroSubEvento.FormShow(Sender: TObject);
begin
  inherited;
  DsEventos.DataSet.Close;
  DsEventos.DataSet.Open;

  DsEventos.DataSet.Filtered := False;

  DM.SqlExecute.SQL.Text := 'SELECT TIPO_EVENTO FROM EVENTOS WHERE ID_EVENTOS = '
    + DsCadastro.DataSet.FieldByName('ID_EVENTOS').AsString;
  DM.SqlExecute.Close;
  DM.SqlExecute.Open;

  if DM.SqlExecute.fieldbyname('TIPO_EVENTO').AsString = '1' then
  begin
    CbTipoEvento.ItemIndex := 0;
    DsEventos.DataSet.Filter := 'TIPO_EVENTO = 1';
    DsEventos.DataSet.Filtered := True;
  end;

  if DM.SqlExecute.fieldbyname('TIPO_EVENTO').AsString = '2' then
  begin
    CbTipoEvento.ItemIndex := 1;
    DsEventos.DataSet.Filter := 'TIPO_EVENTO = 2';
    DsEventos.DataSet.Filtered := True;
  end;

  DM.SqlExecute.SQL.Clear;
  DM.SqlExecute.Close;

end;

procedure TFrmCadastroSubEvento.CbTipoEventoChange(Sender: TObject);
begin
  inherited;
  if CbTipoEvento.ItemIndex = 0 then
  begin
    DsEventos.DataSet.Filter := 'TIPO_EVENTO = 1';
    DsEventos.DataSet.Filtered := True;
    DBLkpEventoPrincipal.KeyValue := Null;
  end;

  if CbTipoEvento.ItemIndex = 1 then
  begin
    DsEventos.DataSet.Filter := 'TIPO_EVENTO = 2';
    DsEventos.DataSet.Filtered := True;
    DBLkpEventoPrincipal.KeyValue := Null;
  end;


end;

procedure TFrmCadastroSubEvento.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if DsCadastro.DataSet.State in [dsedit] then
  begin
    DsEventos.DataSet.Filtered := False;

    DM.SqlExecute.SQL.Text := 'SELECT TIPO_EVENTO FROM EVENTOS WHERE ID_EVENTOS = '
      + DsCadastro.DataSet.FieldByName('ID_EVENTOS').AsString;
    DM.SqlExecute.Close;
    DM.SqlExecute.Open;

    if DM.SqlExecute.fieldbyname('TIPO_EVENTO').AsString = '1' then
    begin
      CbTipoEvento.ItemIndex := 0;
      DsEventos.DataSet.Filter := 'TIPO_EVENTO = 1';
      DsEventos.DataSet.Filtered := True;
    end;

    if DM.SqlExecute.fieldbyname('TIPO_EVENTO').AsString = '2' then
    begin
      CbTipoEvento.ItemIndex := 1;
      DsEventos.DataSet.Filter := 'TIPO_EVENTO = 2';
      DsEventos.DataSet.Filtered := True;
    end;

    DM.SqlExecute.SQL.Clear;
    DM.SqlExecute.Close;
  end;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_SUBEVENTOS)
    and not ContemValor('E', PERMISSAO_SUBEVENTOS)
    and not ContemValor('D', PERMISSAO_SUBEVENTOS) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SUBEVENTOS)
    and not ContemValor('E', PERMISSAO_SUBEVENTOS)
    and not ContemValor('D', PERMISSAO_SUBEVENTOS) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SUBEVENTOS)
    and ContemValor('E', PERMISSAO_SUBEVENTOS)
    and not ContemValor('D', PERMISSAO_SUBEVENTOS) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SUBEVENTOS)
    and ContemValor('E', PERMISSAO_SUBEVENTOS)
    and ContemValor('D', PERMISSAO_SUBEVENTOS) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SUBEVENTOS)
    and not ContemValor('E', PERMISSAO_SUBEVENTOS)
    and ContemValor('D', PERMISSAO_SUBEVENTOS) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SUBEVENTOS)
    and not ContemValor('E', PERMISSAO_SUBEVENTOS)
    and ContemValor('D', PERMISSAO_SUBEVENTOS) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SUBEVENTOS)
    and ContemValor('E', PERMISSAO_SUBEVENTOS)
    and not ContemValor('D', PERMISSAO_SUBEVENTOS) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;
  
end;

procedure TFrmCadastroSubEvento.PageControlModeloCadastroChange(
  Sender: TObject);
begin
  inherited;
  if PageControlModeloCadastro.ActivePageIndex = 1 then
  begin
    DsEventos.DataSet.Filtered := False;
    DBGridConsulta.SelectedIndex := 1;
  end;
end;

procedure TFrmCadastroSubEvento.SalvarClick(Sender: TObject);
begin

  if DBLkpEventoPrincipal.KeyValue <= 0 then
  begin
    ShowMessage('O campo Evento Principal não pode ser vazio!');

    if DBLkpEventoPrincipal.CanFocus then
      DBLkpEventoPrincipal.SetFocus;

    Exit;
  end;

  if Trim(DBEdtCodigoEvento.Text) = '' then
  begin
    ShowMessage('O campo Código não pode ser vazio!');

    if DBEdtCodigoEvento.CanFocus then
      DBEdtCodigoEvento.SetFocus;

    Exit;
  end;

  if Trim(DBEdtDescricao.Text) = '' then
  begin
    ShowMessage('O campo Descrição do Evento não pode ser vazio!');

    if DBEdtDescricao.CanFocus then
      DBEdtDescricao.SetFocus;

    Exit;
  end;

  inherited;

  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.Open;

  DsEventos.DataSet.Filtered := False;

  DM.SqlExecute.SQL.Text := 'SELECT TIPO_EVENTO FROM EVENTOS WHERE ID_EVENTOS = '
    + DsCadastro.DataSet.FieldByName('ID_EVENTOS').AsString;
  DM.SqlExecute.Close;
  DM.SqlExecute.Open;

  if DM.SqlExecute.fieldbyname('TIPO_EVENTO').AsString = '1' then
  begin
    CbTipoEvento.ItemIndex := 0;
    DsEventos.DataSet.Filter := 'TIPO_EVENTO = 1';
    DsEventos.DataSet.Filtered := True;
  end;

  if DM.SqlExecute.fieldbyname('TIPO_EVENTO').AsString = '2' then
  begin
    CbTipoEvento.ItemIndex := 1;
    DsEventos.DataSet.Filter := 'TIPO_EVENTO = 2';
    DsEventos.DataSet.Filtered := True;
  end;

  DM.SqlExecute.SQL.Clear;
  DM.SqlExecute.Close;

  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.Open;
end;

procedure TFrmCadastroSubEvento.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_SUBEVENTOS)
    and not ContemValor('E', PERMISSAO_SUBEVENTOS)
    and not ContemValor('D', PERMISSAO_SUBEVENTOS) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SUBEVENTOS)
    and not ContemValor('E', PERMISSAO_SUBEVENTOS)
    and not ContemValor('D', PERMISSAO_SUBEVENTOS) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SUBEVENTOS)
    and ContemValor('E', PERMISSAO_SUBEVENTOS)
    and not ContemValor('D', PERMISSAO_SUBEVENTOS) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SUBEVENTOS)
    and ContemValor('E', PERMISSAO_SUBEVENTOS)
    and ContemValor('D', PERMISSAO_SUBEVENTOS) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SUBEVENTOS)
    and not ContemValor('E', PERMISSAO_SUBEVENTOS)
    and ContemValor('D', PERMISSAO_SUBEVENTOS) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SUBEVENTOS)
    and not ContemValor('E', PERMISSAO_SUBEVENTOS)
    and ContemValor('D', PERMISSAO_SUBEVENTOS) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SUBEVENTOS)
    and ContemValor('E', PERMISSAO_SUBEVENTOS)
    and not ContemValor('D', PERMISSAO_SUBEVENTOS) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

end.

