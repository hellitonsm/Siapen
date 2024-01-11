unit CadastroFaltasDisciplinares;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, DBCtrls, ToolWin, ExtCtrls,
  Mask, jpeg, Lib, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFrmCadastroFaltasDisciplinares = class(TFrmModeloCadastro)
    Label2: TLabel;
    DBEditcodigo: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBComboBox1: TDBComboBox;
    SqlCadastroID_FALTA_DISCIPLINAR: TIntegerField;
    SqlCadastroFALTA_DISCIPLINAR: TStringField;
    SqlCadastroTEMPOREABILITACAO: TIntegerField;
    SqlCadastroTIPOFALTA: TStringField;
    procedure NovoClick(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroFaltasDisciplinares: TFrmCadastroFaltasDisciplinares;

implementation



{$R *.dfm}

procedure TFrmCadastroFaltasDisciplinares.NovoClick(Sender: TObject);
begin
  inherited;
  DBEDIT2.SETFOCUS;
end;

procedure TFrmCadastroFaltasDisciplinares.SalvarClick(Sender: TObject);
begin

  if DBEdit2.Text = '' then
  begin
    ShowMessage('Digite Descrição da Falta Disciplinar!');
    DBEdit2.SetFocus;
  end
  else
  begin
    if DBEdit3.Text = '' then
    begin
      ShowMessage('Digite o Tempo de Reabilitação!');
      DBEdit3.SetFocus;
    end
    else
    begin
      if DBComboBox1.Text = '' then
      begin
        ShowMessage('Digite Tipo da Falta!');
        DBComboBox1.SetFocus;
      end
      else
        inherited;
    end;
  end;
end;

procedure TFrmCadastroFaltasDisciplinares.FormShow(Sender: TObject);
begin
  inherited;
  DBGridConsulta.SelectedIndex := 1;
end;

procedure TFrmCadastroFaltasDisciplinares.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.Open;
end;

procedure TFrmCadastroFaltasDisciplinares.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_FALTADISCIPLINAR)
    and not ContemValor('E', PERMISSAO_FALTADISCIPLINAR)
    and not ContemValor('D', PERMISSAO_FALTADISCIPLINAR) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FALTADISCIPLINAR)
    and not ContemValor('E', PERMISSAO_FALTADISCIPLINAR)
    and not ContemValor('D', PERMISSAO_FALTADISCIPLINAR) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FALTADISCIPLINAR)
    and ContemValor('E', PERMISSAO_FALTADISCIPLINAR)
    and not ContemValor('D', PERMISSAO_FALTADISCIPLINAR) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FALTADISCIPLINAR)
    and ContemValor('E', PERMISSAO_FALTADISCIPLINAR)
    and ContemValor('D', PERMISSAO_FALTADISCIPLINAR) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FALTADISCIPLINAR)
    and not ContemValor('E', PERMISSAO_FALTADISCIPLINAR)
    and ContemValor('D', PERMISSAO_FALTADISCIPLINAR) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FALTADISCIPLINAR)
    and not ContemValor('E', PERMISSAO_FALTADISCIPLINAR)
    and ContemValor('D', PERMISSAO_FALTADISCIPLINAR) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FALTADISCIPLINAR)
    and ContemValor('E', PERMISSAO_FALTADISCIPLINAR)
    and not ContemValor('D', PERMISSAO_FALTADISCIPLINAR) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroFaltasDisciplinares.DsCadastroDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_FALTADISCIPLINAR)
    and not ContemValor('E', PERMISSAO_FALTADISCIPLINAR)
    and not ContemValor('D', PERMISSAO_FALTADISCIPLINAR) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FALTADISCIPLINAR)
    and not ContemValor('E', PERMISSAO_FALTADISCIPLINAR)
    and not ContemValor('D', PERMISSAO_FALTADISCIPLINAR) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FALTADISCIPLINAR)
    and ContemValor('E', PERMISSAO_FALTADISCIPLINAR)
    and not ContemValor('D', PERMISSAO_FALTADISCIPLINAR) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FALTADISCIPLINAR)
    and ContemValor('E', PERMISSAO_FALTADISCIPLINAR)
    and ContemValor('D', PERMISSAO_FALTADISCIPLINAR) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FALTADISCIPLINAR)
    and not ContemValor('E', PERMISSAO_FALTADISCIPLINAR)
    and ContemValor('D', PERMISSAO_FALTADISCIPLINAR) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FALTADISCIPLINAR)
    and not ContemValor('E', PERMISSAO_FALTADISCIPLINAR)
    and ContemValor('D', PERMISSAO_FALTADISCIPLINAR) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FALTADISCIPLINAR)
    and ContemValor('E', PERMISSAO_FALTADISCIPLINAR)
    and not ContemValor('D', PERMISSAO_FALTADISCIPLINAR) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

end.

