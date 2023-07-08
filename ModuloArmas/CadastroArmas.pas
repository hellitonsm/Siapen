
//TIPO_BASE = (ARMAMENTO,EXPLOSIVOS,MUNIÇÕES,ESPARGIDORES)

unit CadastroArmas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, DBCtrls, ToolWin, ExtCtrls,
  Mask, frxCtrls, Buttons, jpeg;

type
  TFrmCadastroArmas = class(TFrmModeloCadastro)
    PageControlArmas: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    DBEditCODIGO: TDBEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label17: TLabel;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    DBEdit16: TDBEdit;
    Label19: TLabel;
    DBEdit17: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    Label20: TLabel;
    DBEdit18: TDBEdit;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup5: TDBRadioGroup;
    DBRadioGroup6: TDBRadioGroup;
    Label21: TLabel;
    DBEdit19: TDBEdit;
    LabelOrigem: TLabel;
    DBEditORIGEM: TDBEdit;
    Label23: TLabel;
    DBEditdatamanutencao: TDBEdit;
    Label25: TLabel;
    DBEdit23: TDBEdit;
    DsLista: TDataSource;
    CdsLista: TClientDataSet;
    DspLista: TDataSetProvider;
    SqlLista: TSQLQuery;
    frxComboBoxEspecie: TfrxComboBox;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    frxComboBoxMarca: TfrxComboBox;
    frxComboBoxModelo: TfrxComboBox;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label6: TLabel;
    DBEditdatanf: TDBEdit;
    Label10: TLabel;
    DBEditdataexpedicao: TDBEdit;
    Label24: TLabel;
    DBEditdatafabricacao: TDBEdit;
    DBEdit24: TDBEdit;
    Label26: TLabel;
    DBEdit4: TDBEdit;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit8: TDBEdit;
    DBLookupComboBoxPostoTrabalho: TDBLookupComboBox;
    Label44: TLabel;
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    Label22: TLabel;
    SpeedButton4: TSpeedButton;
    DBLookupComboBoxacessorio: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    Editqtde: TEdit;
    Quantidade: TLabel;
    DBGrid1: TDBGrid;
    dsitensacessorio: TDataSource;
    cdsitensacessorio: TClientDataSet;
    dspitensacessorio: TDataSetProvider;
    SQLitensacessorio: TSQLQuery;
    cdsitensacessorioID_ITENS_PATRIMONIO: TIntegerField;
    cdsitensacessorioID_PATRIMONIO: TIntegerField;
    cdsitensacessorioID_ACESSORIOS: TIntegerField;
    cdsitensacessorioQTDE: TIntegerField;
    cdsitensacessorioAcessrio: TStringField;
    procedure DBRadioGroup6Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure CdsCadastroBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure DBEdit3Exit(Sender: TObject);
  private
    procedure PreencheCombos();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroArmas: TFrmCadastroArmas;

implementation

uses Lib, CadastroAcessorio, DmPrincipal;

{$R *.dfm}

procedure TFrmCadastroArmas.DBRadioGroup6Change(Sender: TObject);
begin
  inherited;
  with DsCadastro.DataSet do
  begin
    if not Active then
      Exit;

    if IsEmpty then
      Exit;

    if state in [dsedit, dsinsert] then
    begin
      if DBRadioGroup6.ItemIndex = 0 then
      begin
        DBEditORIGEM.Field.AsString := '';
        DBEditORIGEM.Enabled := False;
        LabelOrigem.Enabled := False;
      end
      else
      begin
        DBEditORIGEM.Enabled := True;
        LabelOrigem.Enabled := True;
      end;
    end;

  end;
end;

procedure TFrmCadastroArmas.FormCreate(Sender: TObject);
begin
  SqlCadastro.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;
  inherited;
  PageControlArmas.ActivePageIndex := 0;

  dm.dsacessorios.dataset.close;
  dm.dsacessorios.dataset.Open;

  dsitensacessorio.dataset.close;
  dsitensacessorio.dataset.Open;

end;

procedure TFrmCadastroArmas.NovoClick(Sender: TObject);
begin
  inherited;
  dm.SqlExecute.SQL.Text := 'select gen_id (cod_up, 0) || gen_id (IDpatrimonio, 1) as ID from rdb$database';
  dm.DsExecute.DataSet.Close;
  dm.DsExecute.DataSet.Open;
  DsCadastro.DataSet.fieldbyname('IDpatrimonio').AsInteger := dm.DsExecute.DataSet.FieldByName('ID').AsInteger;
  dm.DsExecute.DataSet.Close;

  PageControlArmas.ActivePageIndex := 0;
  PreencheCombos();
  frxComboBoxEspecie.Text := '';
  frxComboBoxMarca.Text := '';
  frxComboBoxModelo.Text := '';

  DsCadastro.DataSet.FieldByName('ID_UP').AsInteger := GLOBAL_ID_UP;
  DsCadastro.DataSet.FieldByName('CNPJ_NOTA_FISCAL').AsString := '00.394.494/0008-02';
  DsCadastro.DataSet.FieldByName('TIPO_PESSOA').AsString := 'J';
  DsCadastro.DataSet.FieldByName('pais_fabricacao').AsString := 'BRASIL';

end;

procedure TFrmCadastroArmas.EditarClick(Sender: TObject);
begin
  inherited;

  PageControlArmas.ActivePageIndex := 0;

  frxComboBoxEspecie.Text := UpperCase(DsCadastro.DataSet.FieldByName('ESPECIE').AsString);
  frxComboBoxMarca.Text := UpperCase(DsCadastro.DataSet.FieldByName('MARCA').AsString);
  frxComboBoxModelo.Text := UpperCase(DsCadastro.DataSet.FieldByName('MODELO').AsString);

  PreencheCombos();

end;

procedure TFrmCadastroArmas.CdsCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('TIPO_BASE').AsString := 'ARMAMENTO'; //(ARMAMENTO,EXPLOSIVOS,MUNIÇÕES,ESPARGIDORES)
  DataSet.FieldByName('QUANTIDADE').AsFloat := 1;
  //DataSet.FieldByName('ID_UP').AsInteger := GLOBAL_ID_UP;

  DataSet.FieldByName('ESPECIE').AsString := UpperCase(frxComboBoxEspecie.Text);
  DataSet.FieldByName('MARCA').AsString := UpperCase(frxComboBoxMarca.Text);
  DataSet.FieldByName('MODELO').AsString := UpperCase(frxComboBoxModelo.Text);

end;

procedure TFrmCadastroArmas.PreencheCombos();
begin

  SqlLista.SQL.Text := 'select especie from patrimonio where tipo_base = ' + qs('ARMAMENTO') + ' group by especie ';

  frxComboBoxEspecie.Items.Clear;

  with DsLista.DataSet do
  begin
    Open;
    while not EOF do
    begin
      frxComboBoxEspecie.Items.Add(FieldByName('especie').AsString);
      Next;
    end;
    close;
  end;

  SqlLista.SQL.Text := 'select marca from patrimonio where tipo_base = ' + qs('ARMAMENTO') + ' group by marca ';

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

  SqlLista.SQL.Text := 'select modelo from patrimonio where tipo_base = ' + qs('ARMAMENTO') + ' group by modelo ';

  frxComboBoxModelo.Items.Clear;

  with DsLista.DataSet do
  begin
    Open;
    while not EOF do
    begin
      frxComboBoxModelo.Items.Add(FieldByName('modelo').AsString);
      Next;
    end;
    close;
  end;
end;

procedure TFrmCadastroArmas.FormShow(Sender: TObject);
begin
  inherited;
  DBEditdatamanutencao.Field.EditMask := '99\/99\/9999;1;_';
  DBEditdatanf.Field.EditMask := '99\/99\/9999;1;_';
  DBEditdataexpedicao.Field.EditMask := '99\/99\/9999;1;_';
  DBEditdatafabricacao.Field.EditMask := '99\/99\/9999;1;_';

  DM.DsPostoTrabalho.DataSet.Close;
  DM.DsPostoTrabalho.DataSet.open;

  DM.DsUP.DataSet.Close;
  DM.DsUP.DataSet.open;
  DBGridConsulta.SelectedIndex := 1;

end;

procedure TFrmCadastroArmas.SalvarClick(Sender: TObject);
begin

//  IF DBLookupComboBoxLOTACAO.Text = '' then
//  begin
//    ShowMessage('Preencher Lotação!');
//    PageControlArmas.ActivePageIndex :=1;
//    DBLookupComboBoxLOTACAO.SetFocus;
//    Exit;
//  end;

  DsCadastro.DataSet.FieldByName('ESPECIE').AsString := UpperCase(frxComboBoxEspecie.Text);
  DsCadastro.DataSet.FieldByName('MARCA').AsString := UpperCase(frxComboBoxMarca.Text);
  DsCadastro.DataSet.FieldByName('MODELO').AsString := UpperCase(frxComboBoxModelo.Text);

  DsCadastro.DataSet.FieldByName('nome').AsString :=
    DsCadastro.DataSet.FieldByName('ESPECIE').AsString + ' - ' +
    DsCadastro.DataSet.FieldByName('MARCA').AsString + ' - ' +
    DsCadastro.DataSet.FieldByName('MODELO').AsString + ' NUM:  ' +
    DsCadastro.DataSet.FieldByName('NUMERO_ARMA').AsString + ' CALIBRE: ' +
    DsCadastro.DataSet.FieldByName('CALIBRE').AsString + ' CAPACIDADE ' +
    DsCadastro.DataSet.FieldByName('CAPACIDADE').AsString;

  inherited;

end;

procedure TFrmCadastroArmas.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  FrmCadastroAcessorio := TFrmCadastroAcessorio.Create(Application);
  FrmCadastroAcessorio.ShowModal;
  FreeAndNil(FrmCadastroAcessorio);

  dm.dsacessorios.dataset.close;
  dm.dsacessorios.dataset.Open;

end;

procedure TFrmCadastroArmas.BitBtn1Click(Sender: TObject);
begin
  inherited;
  dsitensacessorio.DataSet.Append;
  dsitensacessorio.DataSet.fieldbyname('ID_itens_patrimonio').AsInteger := 0;
  dsitensacessorio.DataSet.fieldbyname('id_patrimonio').AsInteger :=
    DsCadastro.DataSet.fieldbyname('idpatrimonio').AsInteger;
  dsitensacessorio.DataSet.fieldbyname('id_acessorios').AsInteger := DBLookupComboBoxacessorio.KeyValue;
  dsitensacessorio.DataSet.fieldbyname('qtde').AsString := Editqtde.Text;
  dsitensacessorio.DataSet.Post;

  DBLookupComboBoxacessorio.KeyValue := null;
  Editqtde.Text := '';

end;

procedure TFrmCadastroArmas.DsCadastroDataChange(Sender: TObject;
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
      frxComboBoxEspecie.Text := UpperCase(DsCadastro.DataSet.FieldByName('ESPECIE').AsString);
      frxComboBoxMarca.Text := UpperCase(DsCadastro.DataSet.FieldByName('MARCA').AsString);
      frxComboBoxModelo.Text := UpperCase(DsCadastro.DataSet.FieldByName('MODELO').AsString);
    end;

  end;

end;

procedure TFrmCadastroArmas.DBEdit3Exit(Sender: TObject);
begin
  inherited;
  if DBRadioGroup1.ItemIndex <> -1 then
  begin
    if DBRadioGroup1.Items[DBRadioGroup1.ItemIndex] = 'PF' then
    begin
      if not ValidaCPF(DBEdit3.text) then
      begin
        showMessage('CPF Inválido!');
        DBEdit3.setfocus;
      end;
    end;

    if DBRadioGroup1.Items[DBRadioGroup1.ItemIndex] = 'PJ' then
    begin
      if not ValidaCNPJ(DBEdit3.text) then
      begin
        showMessage('CNPJ Inválido!');
        DBEdit3.setfocus;
      end;
    end;
  end;
end;

end.

