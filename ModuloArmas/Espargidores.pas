unit Espargidores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, DBCtrls, ToolWin, ExtCtrls,
  Mask, frxCtrls, jpeg;

type
  TFrmEspargidores = class(TFrmModeloCadastro)
    Label3: TLabel;
    DBEditCODIGO: TDBEdit;
    DBEdit24: TDBEdit;
    Label26: TLabel;
    Label5: TLabel;
    DBEditdatafabricacao: TDBEdit;
    Label6: TLabel;
    DBEditdatavalidade: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label13: TLabel;
    Bevel2: TBevel;
    frxComboBoxMarca: TfrxComboBox;
    SqlLista: TSQLQuery;
    DspLista: TDataSetProvider;
    CdsLista: TClientDataSet;
    DsLista: TDataSource;
    DBRadioGroup2: TDBRadioGroup;
    LabelQuantidade: TLabel;
    DBEditQuantidade: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    DBLookupComboBoxPostoTrabalho: TDBLookupComboBox;
    Label44: TLabel;
    Label29: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure CdsCadastroBeforePost(DataSet: TDataSet);
    procedure NovoClick(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
  private
    procedure PreencheCombos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEspargidores: TFrmEspargidores;

implementation

uses Lib, DmPrincipal;

{$R *.dfm}

procedure TFrmEspargidores.CdsCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('TIPO_BASE').AsString := 'ESPARGIDORES'; //(ARMAMENTO,EXPLOSIVOS,MUNIÇÕES,ESPARGIDORES)
  //  DataSet.FieldByName('ID_UP').AsInteger := GLOBAL_ID_UP;
  DataSet.FieldByName('MARCA').AsString := UpperCase(frxComboBoxMarca.Text);

end;

procedure TFrmEspargidores.PreencheCombos();
begin

  SqlLista.SQL.Text := 'select marca from patrimonio where tipo_base = ' + qs('ESPARGIDORES') + ' group by marca ';

  frxComboBoxMarca.Items.Clear;

  with DsLista.DataSet do
  begin
    Open;
    while not EOF do
    begin
      frxComboBoxMarca.Items.Add(FieldByName('marca').AsString);
      Next;
    end;
    close;
  end;

end;

procedure TFrmEspargidores.NovoClick(Sender: TObject);
begin
  inherited;

  frxComboBoxMarca.Text := '';
  PreencheCombos();
  DsCadastro.DataSet.FieldByName('QUANTIDADE').AsFloat := 0;
  LabelQuantidade.Visible := True;
  DBEditQuantidade.Visible := True;

end;

procedure TFrmEspargidores.EditarClick(Sender: TObject);
begin
  inherited;
  PreencheCombos();
  frxComboBoxMarca.Text := UpperCase(DsCadastro.DataSet.FieldByName('MARCA').AsString);
  LabelQuantidade.Visible := False;
  DBEditQuantidade.Visible := False;

end;

procedure TFrmEspargidores.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  with DsCadastro.DataSet do
  begin
    if not Active then
      Exit;

    if IsEmpty then
      Exit;

    if state in [dsbrowse] then
    begin
      frxComboBoxMarca.Text := UpperCase(DsCadastro.DataSet.FieldByName('MARCA').AsString);
    end;

  end;

end;

procedure TFrmEspargidores.FormCreate(Sender: TObject);
begin
  //  SqlCadastro.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;
  inherited;

end;

procedure TFrmEspargidores.FormShow(Sender: TObject);
begin
  inherited;
  DBEditdatafabricacao.Field.EditMask := '99\/99\/9999;1;_';
  DBEditdatavalidade.Field.EditMask := '99\/99\/9999;1;_';

  DM.DsPostoTrabalho.DataSet.Close;
  DM.DsPostoTrabalho.DataSet.open;

  DM.DsUP.DataSet.Close;
  DM.DsUP.DataSet.open;
  DBGridConsulta.SelectedIndex := 1;  

end;

procedure TFrmEspargidores.SalvarClick(Sender: TObject);
begin
  PageControlModeloCadastro.SetFocus;

  if DsCadastro.DataSet.FieldByName('QUANTIDADE').AsFloat <= 0 then
  begin
    ShowMessage('Tem que ter quantidade.');
    Exit;
  end;

  DsCadastro.DataSet.FieldByName('MARCA').AsString := UpperCase(frxComboBoxMarca.Text);

  DsCadastro.DataSet.FieldByName('nome').AsString :=
    'ESPARGIDOR - ' +
    UpperCase(DsCadastro.DataSet.FieldByName('TIPO_ESPARGIDORES').AsString) + ' - MARCA ' +
    DsCadastro.DataSet.FieldByName('MARCA').AsString;

  inherited;

  LabelQuantidade.Visible := False;
  DBEditQuantidade.Visible := False;

end;

procedure TFrmEspargidores.CancelarClick(Sender: TObject);
begin
  inherited;
  LabelQuantidade.Visible := False;
  DBEditQuantidade.Visible := False;

end;

end.

