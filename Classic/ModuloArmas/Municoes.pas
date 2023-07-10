unit Municoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, DBCtrls, ToolWin, ExtCtrls,
  Mask, frxCtrls, jpeg;

type
  TFrmMunicoes = class(TFrmModeloCadastro)
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
    Label4: TLabel;
    Bevel3: TBevel;
    frxComboBoxProjetil: TfrxComboBox;
    LabelQuantidade: TLabel;
    DBEditQuantidade: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
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
  FrmMunicoes: TFrmMunicoes;

implementation

uses Lib, DmPrincipal;

{$R *.dfm}

procedure TFrmMunicoes.CdsCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('TIPO_BASE').AsString := 'MUNI합ES'; //(ARMAMENTO,EXPLOSIVOS,MUNI합ES,ESPARGIDORES)
  //  DataSet.FieldByName('ID_UP').AsInteger := GLOBAL_ID_UP;

  DataSet.FieldByName('MARCA').AsString := UpperCase(frxComboBoxMarca.Text);
  DataSet.FieldByName('PROJETIL').AsString := UpperCase(frxComboBoxProjetil.Text);

end;

procedure TFrmMunicoes.PreencheCombos();
begin

  SqlLista.SQL.Text := 'select marca from patrimonio where tipo_base = ' + qs('MUNI합ES') + ' group by marca ';

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

  SqlLista.SQL.Text := 'select Projetil from patrimonio where tipo_base = ' + qs('MUNI합ES') + ' group by Projetil ';

  frxComboBoxProjetil.Items.Clear;

  with DsLista.DataSet do
  begin
    Open;
    while not EOF do
    begin
      frxComboBoxProjetil.Items.Add(FieldByName('Projetil').AsString);
      Next;
    end;
    close;
  end;

end;

procedure TFrmMunicoes.NovoClick(Sender: TObject);
begin
  inherited;
  frxComboBoxMarca.Text := '';
  frxComboBoxProjetil.Text := '';
  PreencheCombos();
  DsCadastro.DataSet.FieldByName('QUANTIDADE').AsFloat := 0;
  DsCadastro.DataSet.FieldByName('ID_UP').AsInteger := GLOBAL_ID_UP;
  LabelQuantidade.Visible := True;
  DBEditQuantidade.Visible := True;

end;

procedure TFrmMunicoes.EditarClick(Sender: TObject);
begin
  inherited;
  PreencheCombos();
  frxComboBoxMarca.Text := UpperCase(DsCadastro.DataSet.FieldByName('MARCA').AsString);
  frxComboBoxProjetil.Text := UpperCase(DsCadastro.DataSet.FieldByName('PROJETIL').AsString);
  LabelQuantidade.Visible := False;
  DBEditQuantidade.Visible := False;

end;

procedure TFrmMunicoes.DsCadastroDataChange(Sender: TObject;
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
      frxComboBoxProjetil.Text := UpperCase(DsCadastro.DataSet.FieldByName('PROJETIL').AsString);
    end;

  end;

end;

procedure TFrmMunicoes.FormCreate(Sender: TObject);
begin
  SqlCadastro.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;
  inherited;

end;

procedure TFrmMunicoes.FormShow(Sender: TObject);
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

procedure TFrmMunicoes.SalvarClick(Sender: TObject);
begin
  PageControlModeloCadastro.SetFocus;

  if DsCadastro.DataSet.FieldByName('QUANTIDADE').AsFloat <= 0 then
  begin
    ShowMessage('Tem que ter quantidade.');
    Exit;
  end;

  DsCadastro.DataSet.FieldByName('MARCA').AsString := UpperCase(frxComboBoxMarca.Text);
  DsCadastro.DataSet.FieldByName('PROJETIL').AsString := UpperCase(frxComboBoxProjetil.Text);

  DsCadastro.DataSet.FieldByName('nome').AsString :=
    'MUNI플O - ' +
    UpperCase(DsCadastro.DataSet.FieldByName('CALIBRE').AsString) + ' - ' +
    DsCadastro.DataSet.FieldByName('MARCA').AsString + ' - ' +
    DsCadastro.DataSet.FieldByName('PROJETIL').AsString;

  inherited;
  LabelQuantidade.Visible := False;
  DBEditQuantidade.Visible := False;

end;

procedure TFrmMunicoes.CancelarClick(Sender: TObject);
begin
  inherited;
  LabelQuantidade.Visible := False;
  DBEditQuantidade.Visible := False;

end;

end.

