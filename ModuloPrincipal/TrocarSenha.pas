unit TrocarSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CADASTROPADRAO, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, DBCtrls, ExtCtrls, Grids, DBGrids, StdCtrls, ToolWin,
  Buttons, Mask;

type
  TFRMTrocarSenha = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    BitBtn1: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMTrocarSenha: TFRMTrocarSenha;

implementation

uses Lib, DmPrincipal;

{$R *.dfm}

procedure TFRMTrocarSenha.Button1Click(Sender: TObject);
var
  senhaatual, senhanova: string;
begin

  senhanova := Edit2.Text;

  if Edit2.Text <> Edit3.Text then
  begin
    showmessage('Confirmação de Senha Não Confere!');
    Edit2.SetFocus;
  end
  else
  begin

    //if not DsVisitanteInterno.DataSet.Locate('PAVILHAO', QualPavilhao, []) then
    if dm.dsfuncionario.DataSet.locate('id_funcionario', GLOBAL_ID_FUNCIONARIO, []) = true then
    begin

      if dm.dsfuncionario.DataSet.FieldByName('AUTORIZADO_DELPHI').AsString <> '' then
        senhaatual := Senha(dm.dsfuncionario.DataSet.FieldByName('SENHA').AsString)
      else
        senhaatual := dm.dsfuncionario.DataSet.FieldByName('SENHA').AsString;

      if senhaatual <> Edit1.text then
      begin
        showmessage('Senha Atual Invalida!');
        Edit1.SetFocus;
      end
      else
      begin
        dm.dsfuncionario.DataSet.edit;
        dm.dsfuncionario.DataSet.FieldByName('AUTORIZADO_DELPHI').AsString := 'S';
        dm.dsfuncionario.DataSet.FieldByName('SENHA').AsString := senha(UpperCase(senhanova));
        dm.dsfuncionario.DataSet.Post;
        TClientDataSet(DM.DSFUNCIONARIO.DataSet).ApplyUpdates(0);
        ShowMessage('Senha Alterada Com Sucesso!');
        CLOSE;
      end;

    end;
  end;
end;

procedure TFRMTrocarSenha.FormCreate(Sender: TObject);
begin
  if GLOBAL_IDCONEXAO > 0 then
  begin
    IniciaTransMovimento;
    try
      DM.SQLConnect.ExecSql('update conexao set tela_momento = ' + qs(Self.Caption)
        + ' where idconexao=' + IntToStr(GLOBAL_IDCONEXAO));
    except
    end;
    FinalizaTransMovimento;
  end;

  DM.dsfuncionario.DataSet.Close;
  DM.dsfuncionario.DataSet.Open;
end;

end.

