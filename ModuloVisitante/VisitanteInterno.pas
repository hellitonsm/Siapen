unit VisitanteInterno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloFormulario, ExtCtrls, StdCtrls, DBCtrls, Buttons, jpeg,
  FMTBcd, DB, DBClient, Provider, SqlExpr, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmVisitanteInterno = class(TFrmModeloFormulario)
    Label33: TLabel;
    DBLookupComboBoxInterno: TDBLookupComboBox;
    BitBtnConfirma: TBitBtn;
    BitBtnCancela: TBitBtn;
    DBLookupComboBoxParentesco: TDBLookupComboBox;
    Label1: TLabel;
    Button1: TButton;
    SpeedButton1: TSpeedButton;
    Label9: TLabel;
    Editprontuario: TEdit;
    SqlInternoold: TSQLQuery;
    DspInterno: TDataSetProvider;
    CdsInterno: TClientDataSet;
    DsInterno: TDataSource;
    SqlInterno: TFDQuery;
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBoxInternoClick(Sender: TObject);
    procedure DBLookupComboBoxParentescoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure EditprontuarioExit(Sender: TObject);
  private
    procedure ValidaPreenchimento;
    { Private declarations }
  public
    FiltroPavilhao: string;
    { Public declarations }
  end;

var
  FrmVisitanteInterno: TFrmVisitanteInterno;

implementation

uses DmPrincipal, Lib, CadastroGrauParentesco;

{$R *.dfm}

procedure TFrmVisitanteInterno.FormShow(Sender: TObject);
begin
  inherited;

  DsInterno.DataSet.Close;

  if GLOBAL_ID_UP > 0 then
  begin
    if (FiltroPavilhao <> 'Todos') and (FiltroPavilhao <> '') then
    begin
      SqlInterno.SQL.Text := 'SELECT INTERNO.ID_INTERNO, INTERNO.NOME_INTERNO, INTERNO.RGI FROM INTERNO' +
        ' JOIN PAVILHAO ON (INTERNO.IDPAVILHAO=PAVILHAO.ID_PAVILHAO AND PAVILHAO.PAVILHAO = ' + qs(FiltroPavilhao) +
        ') WHERE INTERNO.ST=''A'' AND INTERNO.ID_UP = '
        + inttostr(GLOBAL_ID_UP) + ' ORDER BY INTERNO.NOME_INTERNO';
    end
    else
    begin
      SqlInterno.SQL.Text := 'SELECT INTERNO.ID_INTERNO, INTERNO.NOME_INTERNO, INTERNO.RGI FROM INTERNO WHERE ST=''A'' AND INTERNO.ID_UP = '
        + inttostr(GLOBAL_ID_UP) + ' ORDER BY INTERNO.NOME_INTERNO';

    end;
  end;

  DsInterno.DataSet.Close;
  DsInterno.DataSet.Open;

  DM.DSGrauParentesco.DataSet.Close;
  DM.DSGrauParentesco.DataSet.Open;

end;

procedure TFrmVisitanteInterno.ValidaPreenchimento();
begin
  BitBtnConfirma.Enabled := ((DBLookupComboBoxInterno.KeyValue > 0) and (DBLookupComboBoxParentesco.KeyValue > 0));
end;

procedure TFrmVisitanteInterno.DBLookupComboBoxInternoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPreenchimento;
  if DBLookupComboBoxInterno.KeyValue > 0 then
    Editprontuario.Text := DsInterno.dataset.fieldbyname('RGI').asstring;
end;

procedure TFrmVisitanteInterno.DBLookupComboBoxParentescoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPreenchimento;
end;

procedure TFrmVisitanteInterno.Button1Click(Sender: TObject);
var
  interno: variant;
begin
  inherited;

  interno := BuscaGeral(nil, 'INTERNO', '', 100, 100, 800, 400);

  if VarToStrDef(interno, '') <> '' then
  begin
    DBLookupComboBoxInterno.KeyValue := interno;
    Editprontuario.Text := DsInterno.dataset.fieldbyname('RGI').asstring;
  end;

end;

procedure TFrmVisitanteInterno.SpeedButton1Click(Sender: TObject);
begin
  inherited;

  //Verifica se o usuário tem permissão de acesso ao cadastro.
  if (PERMISSAO_VISITANTE = '') or (PERMISSAO_VISITANTE = 'R') then
  begin
    ShowMessage('Você não possui Permissão de Acesso ao menu de Cadastros!');
    Exit;
  end;
  
  FrmCadastroGrauParentesco := TFrmCadastroGrauParentesco.Create(Application);
  FrmCadastroGrauParentesco.ShowModal;
  FreeAndNil(FrmCadastroGrauParentesco);

  DM.DSGrauParentesco.DataSet.Close;
  DM.DSGrauParentesco.DataSet.OPEN;

end;

procedure TFrmVisitanteInterno.EditprontuarioExit(Sender: TObject);
begin
  inherited;

  if Editprontuario.Text <> '' then
  begin

    DM.SqlExecute.sql.text := 'select id_interno, nome_interno, rgi from interno where rgi =' + Qs(Editprontuario.Text)
      + ' and id_up = ' + IntToStr(GLOBAL_ID_UP) + 'and st = ''A''';
    DM.DsExecute.dataset.close;
    DM.DsExecute.dataset.open;

    if DM.DsExecute.dataset.recordcount > 0 then
    begin
      DBLookupComboBoxinterno.KeyValue := DM.DsExecute.DataSet.fieldbyname('id_interno').Asfloat;
    end
    else
    begin
      showmessage('Interno não Localizado!');
      if Editprontuario.canfocus then
        Editprontuario.SetFocus;
    end;

    DM.DsExecute.dataset.close;

  end;

end;

end.

