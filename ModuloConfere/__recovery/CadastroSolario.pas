unit CadastroSolario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, ToolWin, ExtCtrls, Mask,
  DBCtrls, jpeg, Buttons,FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFrmCadastroSolario = class(TFrmModeloCadastro)
    SqlPavilhaoold: TSQLQuery;
    DspPavilhao: TDataSetProvider;
    CdsPavilhao: TClientDataSet;
    DsPavilhao: TDataSource;
    DsGaleria: TDataSource;
    CdsGaleria: TClientDataSet;
    DspGaleria: TDataSetProvider;
    SqlGaleriaold: TSQLQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    DBEditcodigo: TDBEdit;
    LabelPavilhao: TLabel;
    DBLookupComboBoxPavilhao: TDBLookupComboBox;
    LabelGaleria: TLabel;
    DBLookupComboBoxGaleria: TDBLookupComboBox;
    LabelSolario: TLabel;
    DBEdit2: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    SqlRecursosold: TSQLQuery;
    DSPRecursos: TDataSetProvider;
    CDSRecursos: TClientDataSet;
    DSRecursos: TDataSource;
    DBRadioGroup3: TDBRadioGroup;
    SqlPavilhao: TFDQuery;
    SqlGaleria: TFDQuery;
    SqlRecursos: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBoxPavilhaoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure DBGridConsultaDblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroSolario: TFrmCadastroSolario;

implementation

uses Lib, DmPrincipal;

{$R *.dfm}

procedure TFrmCadastroSolario.FormCreate(Sender: TObject);
begin

  LabelPavilhao.Caption := GLOBAL_NIVEL_1;
  LabelGaleria.Caption := GLOBAL_NIVEL_2;
  LabelSolario.Caption := GLOBAL_NIVEL_3;
  Self.Caption := 'Cadastro de ' + GLOBAL_NIVEL_3;
  SqlCadastro.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;
  inherited;

  DM.DsPavilhao.DataSet.Close;
  DM.DsPavilhao.DataSet.Open;

  DM.DsGaleria.DataSet.Close;
  DM.DsGaleria.DataSet.Open;

  SqlPavilhao.SQL.Text := ' select * from pavilhao where id_up=' + inttostr(GLOBAL_ID_UP) + ' order by pavilhao';

  DsPavilhao.DataSet.Close;
  DsPavilhao.DataSet.Open;

  DsGaleria.DataSet.Close;
  DsGaleria.DataSet.Open;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_SOLARIO)
    and not ContemValor('E', PERMISSAO_SOLARIO)
    and not ContemValor('D', PERMISSAO_SOLARIO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SOLARIO)
    and not ContemValor('E', PERMISSAO_SOLARIO)
    and not ContemValor('D', PERMISSAO_SOLARIO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SOLARIO)
    and ContemValor('E', PERMISSAO_SOLARIO)
    and not ContemValor('D', PERMISSAO_SOLARIO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SOLARIO)
    and ContemValor('E', PERMISSAO_SOLARIO)
    and ContemValor('D', PERMISSAO_SOLARIO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SOLARIO)
    and not ContemValor('E', PERMISSAO_SOLARIO)
    and ContemValor('D', PERMISSAO_SOLARIO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SOLARIO)
    and not ContemValor('E', PERMISSAO_SOLARIO)
    and ContemValor('D', PERMISSAO_SOLARIO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SOLARIO)
    and ContemValor('E', PERMISSAO_SOLARIO)
    and not ContemValor('D', PERMISSAO_SOLARIO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroSolario.DBLookupComboBoxPavilhaoClick(
  Sender: TObject);
begin
  inherited;
  DBLookupComboBoxGaleria.KeyValue := null;

end;

procedure TFrmCadastroSolario.FormShow(Sender: TObject);
begin
  inherited;
  DBGridConsulta.SelectedIndex := 1;
end;

procedure TFrmCadastroSolario.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_SOLARIO)
    and not ContemValor('E', PERMISSAO_SOLARIO)
    and not ContemValor('D', PERMISSAO_SOLARIO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SOLARIO)
    and not ContemValor('E', PERMISSAO_SOLARIO)
    and not ContemValor('D', PERMISSAO_SOLARIO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SOLARIO)
    and ContemValor('E', PERMISSAO_SOLARIO)
    and not ContemValor('D', PERMISSAO_SOLARIO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SOLARIO)
    and ContemValor('E', PERMISSAO_SOLARIO)
    and ContemValor('D', PERMISSAO_SOLARIO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_SOLARIO)
    and not ContemValor('E', PERMISSAO_SOLARIO)
    and ContemValor('D', PERMISSAO_SOLARIO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SOLARIO)
    and not ContemValor('E', PERMISSAO_SOLARIO)
    and ContemValor('D', PERMISSAO_SOLARIO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_SOLARIO)
    and ContemValor('E', PERMISSAO_SOLARIO)
    and not ContemValor('D', PERMISSAO_SOLARIO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroSolario.DBGridConsultaDblClick(Sender: TObject);
begin
  inherited;
  CDSRecursos.Close;
  DM.cdsvestimentas.Open;
  while not DM.cdsvestimentas.Eof do
  begin
    ComboBox1.Items.Add(DM.cdsvestimentas.fieldByName('Vestimentas').AsString);
    DM.cdsvestimentas.Next;
  end;
  SQLRecursos.ParamByName('id_solario').Value := DsCadastro.DataSet.fieldbyname('id_solario').AsInteger;
  CDSRecursos.Open;
end;

procedure TFrmCadastroSolario.BitBtn1Click(Sender: TObject);
var
 SqlFind : TFDQuery;
 Texto : String;
begin
  inherited;
  DSRecursos.DataSet.Append;
  DSRecursos.DataSet.fieldbyname('id_recurso_ala').AsInteger := 0;
  DSRecursos.DataSet.fieldbyname('id_solario').AsInteger := DsCadastro.DataSet.fieldbyname('id_solario').AsInteger;
  DSRecursos.DataSet.FieldByName('data').AsString := FormatDateTime('dd/mm/yyyy', now);
  DSRecursos.DataSet.FieldByName('descricao').AsString := Edit1.Text;
  DSREcursos.DataSet.FieldByName('OBSERVACAO').AsString := Edit2.Text;
  try
    Texto := comboBox1.Text;
    sqlfind:= TFDQuery.Create(nil);
    sqlfind.Connection := DM.SQLConnect;
    sqlfind.SQL.Text := 'SELECT ID_VESTIMENTAS, VESTIMENTAS FROM VESTIMENTAS WHERE VESTIMENTAS = :vest;';
    Sqlfind.ParamByName('vest').AsString := Texto;
      //SqlFind.PrepareStatement;
    Sqlfind.Open;
    DSRecursos.DataSet.FieldByName('id_tipo').AsInteger := SQlfind.fieldbyName('ID_VESTIMENTAS').AsInteger;
  finally
    sqlfind.Free;
  end;
  DSRecursos.DataSet.fieldbyname('id_funcionario').AsInteger := GLOBAL_ID_FUNCIONARIO;
  DSRecursos.DataSet.Post;
end;

end.

