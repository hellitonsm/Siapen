unit CadastroUnidadePenal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, ToolWin, ExtCtrls, DBCtrls,
  Mask, jpeg, Lib, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFrmCadastroUnidadePenal = class(TFrmModeloCadastro)
    Label2: TLabel;
    DBEditcodigo: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEditcep: TDBEdit;
    Label10: TLabel;
    DBEditfone: TDBEdit;
    Label11: TLabel;
    DBEditfax: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBRadioGroup1: TDBRadioGroup;
    Label14: TLabel;
    Label16: TLabel;
    dbedtSIGLA: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    Label9: TLabel;
    DBEditemail: TDBEdit;
    Label13: TLabel;
    DBEditCNPJ: TDBEdit;
    procedure NovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroUnidadePenal: TFrmCadastroUnidadePenal;

implementation

uses DmPrincipal;

{$R *.dfm}

procedure TFrmCadastroUnidadePenal.NovoClick(Sender: TObject);
begin
  inherited;
  DBEdit2.SetFocus;
end;

procedure TFrmCadastroUnidadePenal.FormCreate(Sender: TObject);
begin
  inherited;
  DM.DSCIDADE.DataSet.Close;
  DM.DSCIDADE.DataSet.Open;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_UNIDADEPENAL)
    and not ContemValor('E', PERMISSAO_UNIDADEPENAL)
    and not ContemValor('D', PERMISSAO_UNIDADEPENAL) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_UNIDADEPENAL)
    and not ContemValor('E', PERMISSAO_UNIDADEPENAL)
    and not ContemValor('D', PERMISSAO_UNIDADEPENAL) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_UNIDADEPENAL)
    and ContemValor('E', PERMISSAO_UNIDADEPENAL)
    and not ContemValor('D', PERMISSAO_UNIDADEPENAL) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_UNIDADEPENAL)
    and ContemValor('E', PERMISSAO_UNIDADEPENAL)
    and ContemValor('D', PERMISSAO_UNIDADEPENAL) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_UNIDADEPENAL)
    and not ContemValor('E', PERMISSAO_UNIDADEPENAL)
    and ContemValor('D', PERMISSAO_UNIDADEPENAL) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_UNIDADEPENAL)
    and not ContemValor('E', PERMISSAO_UNIDADEPENAL)
    and ContemValor('D', PERMISSAO_UNIDADEPENAL) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_UNIDADEPENAL)
    and ContemValor('E', PERMISSAO_UNIDADEPENAL)
    and not ContemValor('D', PERMISSAO_UNIDADEPENAL) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroUnidadePenal.FormShow(Sender: TObject);
begin
  inherited;
  DBEditfax.Field.EditMask := '(99)9999-9999;1;_';
  DBEditfone.Field.EditMask := '(99)9999-9999;1;_';
  DBEditcep.field.editmask := '99.999-999;0;_';
  DBEditCNPJ.Field.EditMask := '99.999.999/9999-99;1;_';
  DBGridConsulta.SelectedIndex := 1;  
end;

procedure TFrmCadastroUnidadePenal.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_UNIDADEPENAL)
    and not ContemValor('E', PERMISSAO_UNIDADEPENAL)
    and not ContemValor('D', PERMISSAO_UNIDADEPENAL) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_UNIDADEPENAL)
    and not ContemValor('E', PERMISSAO_UNIDADEPENAL)
    and not ContemValor('D', PERMISSAO_UNIDADEPENAL) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_UNIDADEPENAL)
    and ContemValor('E', PERMISSAO_UNIDADEPENAL)
    and not ContemValor('D', PERMISSAO_UNIDADEPENAL) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_UNIDADEPENAL)
    and ContemValor('E', PERMISSAO_UNIDADEPENAL)
    and ContemValor('D', PERMISSAO_UNIDADEPENAL) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_UNIDADEPENAL)
    and not ContemValor('E', PERMISSAO_UNIDADEPENAL)
    and ContemValor('D', PERMISSAO_UNIDADEPENAL) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_UNIDADEPENAL)
    and not ContemValor('E', PERMISSAO_UNIDADEPENAL)
    and ContemValor('D', PERMISSAO_UNIDADEPENAL) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_UNIDADEPENAL)
    and ContemValor('E', PERMISSAO_UNIDADEPENAL)
    and not ContemValor('D', PERMISSAO_UNIDADEPENAL) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

end.

