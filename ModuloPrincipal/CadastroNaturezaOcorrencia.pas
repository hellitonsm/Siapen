unit CadastroNaturezaOcorrencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroCidade, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, jpeg, ExtCtrls, Grids, DBGrids, StdCtrls, Mask,
  DBCtrls, ToolWin, Lib, System.ImageList, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmCadastroNaturezaOcorrencia = class(TFrmCadastroCidade)
    CdsCadastroNATUREZA_OCORRENCIA: TStringField;
    CdsCadastroID_NATUREZA_OCORRENCIA: TIntegerField;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroNaturezaOcorrencia: TFrmCadastroNaturezaOcorrencia;

implementation

uses DmPrincipal, CadastroOcorrenciaPlantao;


{$R *.dfm}

procedure TFrmCadastroNaturezaOcorrencia.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmCadastroOcorrenciaPlantao.DsNaturezaOcorrencia.DataSet.Close;  // Todos os dataset do formulários devem ser fechados e abertos no FormCreate
  FrmCadastroOcorrenciaPlantao.DsNaturezaOcorrencia.DataSet.Open;
end;

procedure TFrmCadastroNaturezaOcorrencia.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_OCORRENCIA)
    and not ContemValor('E', PERMISSAO_OCORRENCIA)
    and not ContemValor('D', PERMISSAO_OCORRENCIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_OCORRENCIA)
    and not ContemValor('E', PERMISSAO_OCORRENCIA)
    and not ContemValor('D', PERMISSAO_OCORRENCIA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_OCORRENCIA)
    and ContemValor('E', PERMISSAO_OCORRENCIA)
    and not ContemValor('D', PERMISSAO_OCORRENCIA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_OCORRENCIA)
    and ContemValor('E', PERMISSAO_OCORRENCIA)
    and ContemValor('D', PERMISSAO_OCORRENCIA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_OCORRENCIA)
    and not ContemValor('E', PERMISSAO_OCORRENCIA)
    and ContemValor('D', PERMISSAO_OCORRENCIA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_OCORRENCIA)
    and not ContemValor('E', PERMISSAO_OCORRENCIA)
    and ContemValor('D', PERMISSAO_OCORRENCIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_OCORRENCIA)
    and ContemValor('E', PERMISSAO_OCORRENCIA)
    and not ContemValor('D', PERMISSAO_OCORRENCIA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroNaturezaOcorrencia.DsCadastroDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_OCORRENCIA)
    and not ContemValor('E', PERMISSAO_OCORRENCIA)
    and not ContemValor('D', PERMISSAO_OCORRENCIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_OCORRENCIA)
    and not ContemValor('E', PERMISSAO_OCORRENCIA)
    and not ContemValor('D', PERMISSAO_OCORRENCIA) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_OCORRENCIA)
    and ContemValor('E', PERMISSAO_OCORRENCIA)
    and not ContemValor('D', PERMISSAO_OCORRENCIA) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_OCORRENCIA)
    and ContemValor('E', PERMISSAO_OCORRENCIA)
    and ContemValor('D', PERMISSAO_OCORRENCIA) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_OCORRENCIA)
    and not ContemValor('E', PERMISSAO_OCORRENCIA)
    and ContemValor('D', PERMISSAO_OCORRENCIA) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_OCORRENCIA)
    and not ContemValor('E', PERMISSAO_OCORRENCIA)
    and ContemValor('D', PERMISSAO_OCORRENCIA) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_OCORRENCIA)
    and ContemValor('E', PERMISSAO_OCORRENCIA)
    and not ContemValor('D', PERMISSAO_OCORRENCIA) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

end.
