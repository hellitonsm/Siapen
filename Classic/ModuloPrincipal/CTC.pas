unit CTC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, DBCtrls, ToolWin, ExtCtrls,
  Mask, Buttons, jpeg,Lib;

type
  TFrmCTC = class(TFrmModeloCadastro)
    PageControlPrincipal: TPageControl;
    TabSheetPrincipal: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label27: TLabel;
    Label36: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label163: TLabel;
    Label164: TLabel;
    lbl1: TLabel;
    Label43: TLabel;
    Label18: TLabel;
    Label44: TLabel;
    Label10: TLabel;
    Label40: TLabel;
    Label55: TLabel;
    Label38: TLabel;
    Label49: TLabel;
    DBEditID: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEditID_PROCEDENCIA: TDBEdit;
    DBLookupComboBoxID_PROCEDENCIA: TDBLookupComboBox;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit6: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit7: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBImageFOTOInterno: TDBImage;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit35: TDBEdit;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    DBEdit84: TDBEdit;
    DBEdit85: TDBEdit;
    DBEdit86: TDBEdit;
    dbrgrpST: TDBRadioGroup;
    DBEdit4: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit29: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBEditpermanencia: TDBEdit;
    TabSheetDadosGerais: TTabSheet;
    Label11: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label20: TLabel;
    Label37: TLabel;
    Label13: TLabel;
    Label5: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label39: TLabel;
    Label47: TLabel;
    Label52: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    lbl2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    DBEdit5: TDBEdit;
    DBLookupComboBoxIDNATURALIDADE: TDBLookupComboBox;
    DBLookupComboBoxIDNACIONALIDADE: TDBLookupComboBox;
    DBLookupComboBoxIDRACA: TDBLookupComboBox;
    DBLookupComboBoxIDESCOLARIDADE: TDBLookupComboBox;
    DBEdit18: TDBEdit;
    DBLookupComboBoxIDPROFISSAO: TDBLookupComboBox;
    DBEdit9: TDBEdit;
    DBEdit19: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBLookupComboBoxIDCIDADE: TDBLookupComboBox;
    DBLookupComboBoxIDNACIONALIDADE1: TDBLookupComboBox;
    TabSheet1: TTabSheet;
    Label8: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label26: TLabel;
    Label29: TLabel;
    Label17: TLabel;
    DBEdit8: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit30: TDBEdit;
    DBMemo1: TDBMemo;
    DBMemo19: TDBMemo;
    TabSheet2: TTabSheet;
    Label41: TLabel;
    Label42: TLabel;
    Label48: TLabel;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DBMemo15: TDBMemo;
    TabSheet3: TTabSheet;
    Label50: TLabel;
    Label51: TLabel;
    Label53: TLabel;
    DBMemo4: TDBMemo;
    DBMemo5: TDBMemo;
    DBMemo6: TDBMemo;
    TabSheet4: TTabSheet;
    Label54: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    DBMemo7: TDBMemo;
    DBMemo8: TDBMemo;
    DBMemo9: TDBMemo;
    TabSheet5: TTabSheet;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    DBMemo10: TDBMemo;
    DBMemo11: TDBMemo;
    DBMemo12: TDBMemo;
    TabSheet6: TTabSheet;
    Label61: TLabel;
    Label62: TLabel;
    Label68: TLabel;
    DBMemo16: TDBMemo;
    DBMemo17: TDBMemo;
    DBMemo18: TDBMemo;
    TabSheet8: TTabSheet;
    Label69: TLabel;
    DBMemo13: TDBMemo;
    TabSheet7: TTabSheet;
    Label70: TLabel;
    DBMemo14: TDBMemo;
    Label71: TLabel;
    DBLookupComboBoxInterno: TDBLookupComboBox;
    SqInterno: TSQLQuery;
    DspInterno: TDataSetProvider;
    CdsInterno: TClientDataSet;
    DBRadioGroup3: TDBRadioGroup;
    DsInterno: TDataSource;
    BtnSituacaoProcessual: TBitBtn;
    BtnInTeligencia: TBitBtn;
    BtnMotivacaoInclusao: TBitBtn;
    BtnCondutaDentroUnidade: TBitBtn;
    BtnServicoSocial: TBitBtn;
    Btnenfermagem: TBitBtn;
    BtnFarmacia: TBitBtn;
    BtnOdontologia: TBitBtn;
    BtnPsiquiatria: TBitBtn;
    BtnClinicaMedica: TBitBtn;
    BtnPedagogia: TBitBtn;
    BtnTerapiaOcupacional: TBitBtn;
    BtnPsicologia: TBitBtn;
    BtnAssistenciaJuridica: TBitBtn;
    BtnAssistenciaMaterial: TBitBtn;
    BtnAssistenciaReligiosa: TBitBtn;
    procedure CdsCadastroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCTC: TFrmCTC;

implementation

uses DmPrincipal;

{$R *.dfm}

procedure TFrmCTC.CdsCadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('IDCTC').AsInteger := 0;
  DataSet.FieldByName('STATUS').AsString := 'NOVO';
  DataSet.FieldByName('DATA_INICIO').AsDateTime := Date;

end;

procedure TFrmCTC.FormShow(Sender: TObject);
begin
  inherited;

  DsInterno.DataSet.Close;
  DsInterno.DataSet.Open;

  dm.DsInterno.DataSet.Close;
  dm.DsInterno.DataSet.Open;

  DM.DsProcedencia.DataSet.Close;
  DM.DsProcedencia.DataSet.Open;

  DM.DsCondicaoInterno.DataSet.Close;
  DM.DsCondicaoInterno.DataSet.Open;

  DM.DSESCOLARIDADE.DataSet.Close;
  DM.DSESCOLARIDADE.DataSet.Open;

  DM.dsfuncionario.DataSet.Close;
  DM.dsfuncionario.DataSet.open;

  DM.DSCIDADE.DataSet.Close;
  DM.DSCIDADE.DataSet.Open;

  DM.DSNACIONALIDADE.DataSet.Close;
  DM.DSNACIONALIDADE.DataSet.Open;

  DM.DSRACA.DataSet.Close;
  DM.DSRACA.DataSet.Open;

  DM.DsProfissao.DataSet.Close;
  DM.DsProfissao.DataSet.Open;

  DM.DsSetorTrabalho.DataSet.Close;
  DM.DsSetorTrabalho.DataSet.Open;

  DM.DSFUNCAOINTERNO.DataSet.Close;
  DM.DSFUNCAOINTERNO.DataSet.Open;

  PageControlPrincipal.ActivePageIndex := 0;

  DBGridConsulta.SelectedIndex := 1;

end;

procedure TFrmCTC.DsCadastroDataChange(Sender: TObject; Field: TField);
var
  i: Integer;
begin
  inherited;

  with DsCadastro.DataSet do
  begin

    if not Active then
      Exit;

    if IsEmpty then
      Exit;

    if not (state in [dsedit, dsinsert]) then
    begin

      PanelTituloModeloCadastro.Caption := FrmCTC.Caption;

      Exit;
    end;

    PanelTituloModeloCadastro.Caption := 'CTC: N:' + FieldByName('IDCTC').AsString
      + ' - ' + FieldByName('STATUS').AsString + ' - ' + FieldByName('DATA_INICIO').AsString;

    if FieldByName('STATUS').AsString = 'FINALIZADO' then
    begin

      for i := 2 to PageControlPrincipal.PageCount - 1 do
      begin
        PageControlPrincipal.Pages[i].Enabled := False;
      end;

    end
    else
    begin

      for i := 2 to PageControlPrincipal.PageCount - 1 do
      begin
        PageControlPrincipal.Pages[i].Enabled := True;
      end;

    end;

  end;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_CTC)
    and not ContemValor('E', PERMISSAO_CTC)
    and not ContemValor('D', PERMISSAO_CTC) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CTC)
    and not ContemValor('E', PERMISSAO_CTC)
    and not ContemValor('D', PERMISSAO_CTC) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CTC)
    and ContemValor('E', PERMISSAO_CTC)
    and not ContemValor('D', PERMISSAO_CTC) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CTC)
    and ContemValor('E', PERMISSAO_CTC)
    and ContemValor('D', PERMISSAO_CTC) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CTC)
    and not ContemValor('E', PERMISSAO_CTC)
    and ContemValor('D', PERMISSAO_CTC) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CTC)
    and not ContemValor('E', PERMISSAO_CTC)
    and ContemValor('D', PERMISSAO_CTC) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CTC)
    and ContemValor('E', PERMISSAO_CTC)
    and not ContemValor('D', PERMISSAO_CTC) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;
  
end;

procedure TFrmCTC.FormCreate(Sender: TObject);
begin
  inherited;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChange do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_CTC)
    and not ContemValor('E', PERMISSAO_CTC)
    and not ContemValor('D', PERMISSAO_CTC) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CTC)
    and not ContemValor('E', PERMISSAO_CTC)
    and not ContemValor('D', PERMISSAO_CTC) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CTC)
    and ContemValor('E', PERMISSAO_CTC)
    and not ContemValor('D', PERMISSAO_CTC) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CTC)
    and ContemValor('E', PERMISSAO_CTC)
    and ContemValor('D', PERMISSAO_CTC) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CTC)
    and not ContemValor('E', PERMISSAO_CTC)
    and ContemValor('D', PERMISSAO_CTC) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CTC)
    and not ContemValor('E', PERMISSAO_CTC)
    and ContemValor('D', PERMISSAO_CTC) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CTC)
    and ContemValor('E', PERMISSAO_CTC)
    and not ContemValor('D', PERMISSAO_CTC) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;
  
end;

end.

