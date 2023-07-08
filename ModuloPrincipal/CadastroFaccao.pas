unit CadastroFaccao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, DBCtrls,
  ToolWin, Mask, ActnColorMaps, ActnMan;

type
  TFrmCadastroFaccao = class(TFrmModeloCadastro)
    Label2: TLabel;
    DBEditCODIGO: TDBEdit;
    Label3: TLabel;
    DBEditFaccao: TDBEdit;
    Label4: TLabel;
    LbSigla: TLabel;
    DBEditSigla: TDBEdit;
    CBCorFaccao: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure CBCorFaccaoDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure EditarClick(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure DBGridConsultaDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    VerificaCorAtualxNova: string;
  end;

var
  FrmCadastroFaccao: TFrmCadastroFaccao;


implementation

uses DmPrincipal, Lib;

{$R *.dfm}

procedure TFrmCadastroFaccao.FormShow(Sender: TObject);
var
  x: integer;
begin
  inherited;
  DBGridConsulta.SelectedIndex := 1;

  for x := 0 to Length(CoresHexa) - 1 do
  begin
    CBCorFaccao.Items.Add(CoresHexa[x]);
  end;

  CBCorFaccao.ItemIndex := 0;
end;

procedure TFrmCadastroFaccao.SalvarClick(Sender: TObject);
begin

  if VerificaCorAtualxNova <> CBCorFaccao.Items[CBCorFaccao.ItemIndex] then
  begin
    DM.DsExecute.DataSet.Close;
    DM.SqlExecute.SQL.Text := 'Select * From Faccao where Cor = ' + '''' + CBCorFaccao.Items[CBCorFaccao.ItemIndex] + '''';
    DM.DsExecute.DataSet.Open;

    if DM.DsExecute.DataSet.RecordCount > 0 then
    begin
      if DM.DsExecute.DataSet.FieldByName('COR').AsString <> 'FFFFFF' then
      begin
        ShowMessage('A Facção "' + DM.DsExecute.DataSet.FieldByName('FACCAO').AsString +
          ' - ' + DM.DsExecute.DataSet.FieldByName('SIGLA').AsString +
          '" já está cadastrada com esta cor.' + #13 + #13 + 'Escolha outra cor ou deixe em branco!');
        Exit;
      end;
    end;
  end;

  DsCadastro.DataSet.FieldByName('COR').AsString := CBCorFaccao.Items[CBCorFaccao.ItemIndex];

  inherited;
end;

procedure TFrmCadastroFaccao.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  if DsCadastro.DataSet.FieldByName('COR').AsString <> '' then
    CBCorFaccao.ItemIndex := CBCorFaccao.Items.IndexOf(DsCadastro.DataSet.FieldByName('COR').AsString)
  else
    CBCorFaccao.ItemIndex := 0;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_FACCAO)
    and not ContemValor('E', PERMISSAO_FACCAO)
    and not ContemValor('D', PERMISSAO_FACCAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FACCAO)
    and not ContemValor('E', PERMISSAO_FACCAO)
    and not ContemValor('D', PERMISSAO_FACCAO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FACCAO)
    and ContemValor('E', PERMISSAO_FACCAO)
    and not ContemValor('D', PERMISSAO_FACCAO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FACCAO)
    and ContemValor('E', PERMISSAO_FACCAO)
    and ContemValor('D', PERMISSAO_FACCAO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FACCAO)
    and not ContemValor('E', PERMISSAO_FACCAO)
    and ContemValor('D', PERMISSAO_FACCAO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FACCAO)
    and not ContemValor('E', PERMISSAO_FACCAO)
    and ContemValor('D', PERMISSAO_FACCAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FACCAO)
    and ContemValor('E', PERMISSAO_FACCAO)
    and not ContemValor('D', PERMISSAO_FACCAO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;
  
end;

procedure TFrmCadastroFaccao.CBCorFaccaoDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
  inherited;
  with Control as TComboBox, Canvas do
  begin
    // Preenche o retângulo com branco
    Brush.Color := clWhite;
    FillRect(Rect);

    // Agora preeche um retangulo menor com a cor definida
    InflateRect(Rect, -2, -2);
    //Adiciono o $ para que o texto gravado no Combo vire tipo inteiro de cor.
    Brush.Color := StrToInt('$' + Items[Index]);
    FillRect(Rect);
  end;
end;

procedure TFrmCadastroFaccao.EditarClick(Sender: TObject);
begin
  inherited;
  VerificaCorAtualxNova := DsCadastro.DataSet.FieldByName('COR').AsString;
end;

procedure TFrmCadastroFaccao.NovoClick(Sender: TObject);
begin
  inherited;
  VerificaCorAtualxNova := 'FFFFFF';
end;

procedure TFrmCadastroFaccao.DBGridConsultaDblClick(Sender: TObject);
begin
  inherited;
  VerificaCorAtualxNova := DsCadastro.DataSet.FieldByName('COR').AsString;
end;

procedure TFrmCadastroFaccao.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_FACCAO)
    and not ContemValor('E', PERMISSAO_FACCAO)
    and not ContemValor('D', PERMISSAO_FACCAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FACCAO)
    and not ContemValor('E', PERMISSAO_FACCAO)
    and not ContemValor('D', PERMISSAO_FACCAO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FACCAO)
    and ContemValor('E', PERMISSAO_FACCAO)
    and not ContemValor('D', PERMISSAO_FACCAO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FACCAO)
    and ContemValor('E', PERMISSAO_FACCAO)
    and ContemValor('D', PERMISSAO_FACCAO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FACCAO)
    and not ContemValor('E', PERMISSAO_FACCAO)
    and ContemValor('D', PERMISSAO_FACCAO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FACCAO)
    and not ContemValor('E', PERMISSAO_FACCAO)
    and ContemValor('D', PERMISSAO_FACCAO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FACCAO)
    and ContemValor('E', PERMISSAO_FACCAO)
    and not ContemValor('D', PERMISSAO_FACCAO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

end.

