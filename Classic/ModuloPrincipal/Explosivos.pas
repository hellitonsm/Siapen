unit Explosivos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, DBCtrls, ToolWin, ExtCtrls,
  Mask, frxCtrls, jpeg;

type
  TFrmExplosivos = class(TFrmModeloCadastro)
    DBRadioGroup2: TDBRadioGroup;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEditCODIGO: TDBEdit;
    DBEdit24: TDBEdit;
    Label26: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
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
    LabelQuantidade: TLabel;
    DBEditQuantidade: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    DBLookupComboBoxPostoTrabalho: TDBLookupComboBox;
    Label44: TLabel;
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
  FrmExplosivos: TFrmExplosivos;

implementation

uses Lib, DmPrincipal;

{$R *.dfm}

procedure TFrmExplosivos.CdsCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('TIPO_BASE').AsString := 'EXPLOSIVOS'; //(ARMAMENTO,EXPLOSIVOS,MUNIÇÕES,ESPARGIDORES)
  DataSet.FieldByName('ID_UP').AsInteger := GLOBAL_ID_UP;

  DataSet.FieldByName('MARCA').AsString := UpperCase(frxComboBoxMarca.Text);

end;

procedure TFrmExplosivos.PreencheCombos();
begin

  SqlLista.SQL.Text := 'select marca from patrimonio where tipo_base = ' + qs('EXPLOSIVOS') + ' group by marca ';

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

procedure TFrmExplosivos.NovoClick(Sender: TObject);
begin
  inherited;
  frxComboBoxMarca.Text := '';
  PreencheCombos();
  DsCadastro.DataSet.FieldByName('QUANTIDADE').AsFloat := 0;
  LabelQuantidade.Visible := True;
  DBEditQuantidade.Visible := True;

end;

procedure TFrmExplosivos.EditarClick(Sender: TObject);
begin
  inherited;
  LabelQuantidade.Visible := False;
  DBEditQuantidade.Visible := False;
  PreencheCombos();
  frxComboBoxMarca.Text := UpperCase(DsCadastro.DataSet.FieldByName('MARCA').AsString);

end;

procedure TFrmExplosivos.DsCadastroDataChange(Sender: TObject;
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

procedure TFrmExplosivos.FormCreate(Sender: TObject);
begin
  SqlCadastro.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;
  inherited;

end;

procedure TFrmExplosivos.FormShow(Sender: TObject);
begin
  inherited;
  DBEditdatafabricacao.Field.EditMask := '99\/99\/9999;1;_';
  DBEditdatavalidade.Field.EditMask := '99\/99\/9999;1;_';

  DM.DsPostoTrabalho.DataSet.Close;
  DM.DsPostoTrabalho.DataSet.open;
  DBGridConsulta.SelectedIndex := 1;  

end;

procedure TFrmExplosivos.SalvarClick(Sender: TObject);
begin
  PageControlModeloCadastro.SetFocus;

  if DsCadastro.DataSet.FieldByName('QUANTIDADE').AsFloat <= 0 then
  begin
    ShowMessage('Tem que ter quantidade.');
    Exit;
  end;

  DsCadastro.DataSet.FieldByName('MARCA').AsString := UpperCase(frxComboBoxMarca.Text);

  DsCadastro.DataSet.FieldByName('nome').AsString :=
    DsCadastro.DataSet.FieldByName('EXPLOSIVO_COD_REFERENCIA').AsString + ' - ' +
    UpperCase(DsCadastro.DataSet.FieldByName('TIPO_EXPLOSIVO').AsString) + ' - ' +
    DsCadastro.DataSet.FieldByName('COMPOSTO_QUIMICO').AsString + ' - ' +
    DsCadastro.DataSet.FieldByName('PESO').AsString + 'GR - MARCA ' +
    DsCadastro.DataSet.FieldByName('MARCA').AsString;

  inherited;
  LabelQuantidade.Visible := False;
  DBEditQuantidade.Visible := False;

end;

procedure TFrmExplosivos.CancelarClick(Sender: TObject);
begin
  inherited;
  LabelQuantidade.Visible := False;
  DBEditQuantidade.Visible := False;

end;

end.

