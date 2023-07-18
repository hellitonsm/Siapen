unit ModeloInterno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, DBCtrls, ToolWin, ExtCtrls,
  Mask, Buttons, jpeg, dbcgrids, Menus, adpDBDateTimePicker, System.ImageList;

type
  TFrmModeloInterno = class(TFrmModeloCadastro)
    DsConsulta: TDataSource;
    CdsConsulta: TClientDataSet;
    DspConsulta: TDataSetProvider;
    SqlConsulta: TSQLQuery;
    RadioGroupStatus: TRadioGroup;
    chkSoundex: TCheckBox;
    PageControlPrincipal: TPageControl;
    TabSheetPrincipal: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    SpeedButton1: TSpeedButton;
    Label45: TLabel;
    Label46: TLabel;
    SpeedButton2: TSpeedButton;
    Label27: TLabel;
    Label36: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    lbl1: TLabel;
    DBEditCodigo: TDBEdit;
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
    DBEdit86: TDBEdit;
    dbrgrpST: TDBRadioGroup;
    TabSheetDadosGerais: TTabSheet;
    Label11: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label20: TLabel;
    Label37: TLabel;
    Label13: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Label5: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label39: TLabel;
    Label47: TLabel;
    Label52: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    DBEdit1: TDBEdit;
    DBEdit5: TDBEdit;
    DBLookupComboBoxIDNATURALIDADE: TDBLookupComboBox;
    DBLookupComboBoxIDNACIONALIDADE: TDBLookupComboBox;
    DBLookupComboBoxIDRACA: TDBLookupComboBox;
    DBLookupComboBoxIDESCOLARIDADE: TDBLookupComboBox;
    DBLookupComboBoxIDPROFISSAO: TDBLookupComboBox;
    DBEdit9: TDBEdit;
    DBEdit19: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit34: TDBEdit;
    Label43: TLabel;
    Label18: TLabel;
    Label44: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    SpeedButton11: TSpeedButton;
    lbl2: TLabel;
    btn1: TSpeedButton;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBLookupComboBoxIDCIDADE: TDBLookupComboBox;
    DBLookupComboBoxIDNACIONALIDADE1: TDBLookupComboBox;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    Label40: TLabel;
    DBEdit20: TDBEdit;
    Label55: TLabel;
    DBEdit29: TDBEdit;
    Label38: TLabel;
    DBComboBox2: TDBComboBox;
    Label49: TLabel;
    DBEditpermanencia: TDBEdit;
    DBCtrlGridConsulta: TDBCtrlGrid;
    LabelNome: TLabel;
    LabelPavilhao: TLabel;
    LabelGaleria: TLabel;
    LabelSolario: TLabel;
    LabelCela: TLabel;
    Label73sigla: TLabel;
    Label74vulgo: TLabel;
    DBTextNomeInterno: TDBText;
    DBTextVulgo: TDBText;
    DBTextSigla: TDBText;
    DBTextPavilhao: TDBText;
    DBTextGaleria: TDBText;
    DBTextSolario: TDBText;
    DBTextCela: TDBText;
    Label75facacao: TLabel;
    DBTextFaccao: TDBText;
    DBTextEstado: TDBText;
    LabelProced: TLabel;
    Image1: TImage;
    SqlConsultaBackup: TSQLQuery;
    MainMenu1: TMainMenu;
    Relatorios1: TMenuItem;
    Especifico1: TMenuItem;
    RadioGroupTipoLocalizar: TRadioGroup;
    Label69: TLabel;
    DBTextProntuario: TDBText;
    DBImage1: TDBImage;
    Label54: TLabel;
    DBLookupComboBoxFACCAO: TDBLookupComboBox;
    SpeedButton8: TSpeedButton;
    SqlFaccao: TSQLQuery;
    DspFaccao: TDataSetProvider;
    CdsFaccao: TClientDataSet;
    DsFaccao: TDataSource;
    OpenDialogCapturarFoto: TOpenDialog;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    DBEdit8: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit33: TDBEdit;
    DBComboBox5: TDBComboBox;
    DBComboBox4: TDBComboBox;
    LabelST: TLabel;
    DBTextST: TDBText;
    DBComboBoxReligiao1: TDBComboBox;
    procedure EditLocalizarChange(Sender: TObject);
    procedure chkSoundexClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure DBGridConsultaDblClick(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure RadioGroupStatusClick(Sender: TObject);
    procedure DsConsultaDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Especifico1Click(Sender: TObject);
    procedure DBImageFOTOInternoClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure CdsConsultaFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure RadioGroupTipoLocalizarClick(Sender: TObject);
  private
    { Private declarations }
    CompClientDataSet: array of TClientDataSet;
  public
    ID_INTERNO: integer;
    { Public declarations }
  end;

var
  FrmModeloInterno: TFrmModeloInterno;

implementation

uses Lib, DmPrincipal, CadastroProcedencia, CadastroCondicaoInterno,
  MenuRelatorio, CadastroFaccao;

{$R *.dfm}

procedure TFrmModeloInterno.EditLocalizarChange(Sender: TObject);
begin

  // Se a pesquisa for por nome só começa a buscar a partir de 3 letras.
  if RadioGroupTipoLocalizar.ItemIndex = 1 then
  begin
    if ((EditLocalizar.Text <> '') and (Length(EditLocalizar.Text) >= 3)) or (EditLocalizar.Text = ' ') then
    begin
      DsConsulta.DataSet.filtered := False;
      DsConsulta.DataSet.filtered := True;
    end
    else
      DsConsulta.DataSet.filtered := False;
  end
  else
  begin
    if EditLocalizar.Text <> '' then
    begin
      DsConsulta.DataSet.filtered := False;
      DsConsulta.DataSet.filtered := True;
    end
    else
      DsConsulta.DataSet.filtered := False;
  end;

end;

procedure TFrmModeloInterno.chkSoundexClick(Sender: TObject);
var
  Status: string;
begin
  inherited;
  {
  if Length(Trim(EditLocalizar.text)) < 2 then
    exit;

  case RadioGroupStatus.ItemIndex of
    0: Status := 'A';
    1: Status := 'I';
  end;

  if Status = 'I' then
  begin
    DsConsulta.DataSet.filter := 'st = ' + qs(Status)
      + ' and ((nome_interno like ' + qs('%' + BuscaTroca(EditLocalizar.text, ' ', '%') + '%')
      + ') or (nome_interno_soundex like ' + qs('%' + Soundex(EditLocalizar.text) + '%') + '))';
  end
  else
  begin
    DsConsulta.DataSet.filter := ' id_up=' + inttostr(GLOBAL_ID_UP)
      + ' and st = ' + qs(Status)
      + ' and ((nome_interno like ' + qs('%' + BuscaTroca(EditLocalizar.text, ' ', '%') + '%')
      + ') or (nome_interno_soundex like ' + qs('%' + Soundex(EditLocalizar.text) + '%') + '))';
  end;

  DsConsulta.DataSet.filtered := False;
  DsConsulta.DataSet.filtered := True;
 }
end;

procedure TFrmModeloInterno.FormShow(Sender: TObject);
begin

  LabelPavilhao.Caption := GLOBAL_NIVEL_1;
  LabelGaleria.Caption := GLOBAL_NIVEL_2;
  LabelSolario.Caption := GLOBAL_NIVEL_3;
  LabelCela.Caption := GLOBAL_NIVEL_4;

  if GLOBAL_RGI = 'S' then
  begin
    Label4.Enabled := False;
    DBEdit3.Enabled := False;
  end;

  IniciaTelaAguarde();
  InterageTelaAguarde();
  inherited;

  InterageTelaAguarde();

  DM.DsUP.DataSet.Open;
  InterageTelaAguarde();

  DM.DsProcedencia.DataSet.Close;
  DM.DsProcedencia.DataSet.Open;
  InterageTelaAguarde();

  DM.DsCondicaoInterno.DataSet.Close;
  DM.DsCondicaoInterno.DataSet.Open;
  InterageTelaAguarde();

  DM.DSESCOLARIDADE.DataSet.Close;
  DM.DSESCOLARIDADE.DataSet.Open;
  InterageTelaAguarde();

  DM.dsfuncionario.DataSet.Close;
  DM.dsfuncionario.DataSet.open;
  InterageTelaAguarde();

  DM.DSCIDADE.DataSet.Close;
  DM.DSCIDADE.DataSet.Open;
  InterageTelaAguarde();

  DM.DSNACIONALIDADE.DataSet.Close;
  DM.DSNACIONALIDADE.DataSet.Open;
  InterageTelaAguarde();

  DM.DSRACA.DataSet.Close;
  DM.DSRACA.DataSet.Open;
  InterageTelaAguarde();

  DM.DsProfissao.DataSet.Close;
  DM.DsProfissao.DataSet.Open;
  InterageTelaAguarde();

  DM.DsSetorTrabalho.DataSet.Close;
  DM.DsSetorTrabalho.DataSet.Open;
  InterageTelaAguarde();

  DM.DSFUNCAOINTERNO.DataSet.Close;
  DM.DSFUNCAOINTERNO.DataSet.Open;
  InterageTelaAguarde();

  DM.DSartigo_perfil.DataSet.close;
  dm.DSartigo_perfil.DataSet.Open;
  InterageTelaAguarde();

//  DM.Dsfaltadisciplinar.DataSet.close;
//  dm.Dsfaltadisciplinar.DataSet.Open;
//  InterageTelaAguarde();

  EditLocalizarChange(nil);
  InterageTelaAguarde();


  DsFaccao.DataSet.Close;
  DsFaccao.DataSet.OPEN;

  FinalizaTelaAguarde;

  Novo.Visible := False;
  Excluir.Visible := False;

  //  EditLocalizar.Text := '(Digite parte do nome do interno)';

  PageControlPrincipal.ActivePageIndex := 0;
  PageControlModeloCadastro.ActivePageIndex := 1;

  if EditLocalizar.CanFocus then
  begin
    EditLocalizar.SelectAll;
    EditLocalizar.SetFocus;
  end;

  RadioGroupStatusClick(nil);
  InterageTelaAguarde();

  if ID_INTERNO > 0 then
    Editar.OnClick(nil);

end;

procedure TFrmModeloInterno.EditarClick(Sender: TObject);
begin
  inherited;
  StatusBar1.Panels[0].Text := 'INTERNO:';
  StatusBar1.Panels[1].Text := DsCadastro.DataSet.fieldbyname('NOME_INTERNO').AsString;
  PageControlPrincipal.ActivePageIndex := 0;

end;

procedure TFrmModeloInterno.DBGridConsultaDblClick(Sender: TObject);
begin
  inherited;
  StatusBar1.Panels[0].Text := 'INTERNO:';
  StatusBar1.Panels[1].Text := DsCadastro.DataSet.fieldbyname('NOME_INTERNO').AsString;
  PageControlPrincipal.ActivePageIndex := 0;

end;

procedure TFrmModeloInterno.SalvarClick(Sender: TObject);
begin
  inherited;
  PageControlPrincipal.ActivePageIndex := 0;
end;

procedure TFrmModeloInterno.RadioGroupStatusClick(Sender: TObject);
var
  sNomeInterno, Campo: string;
begin
  inherited;

  case RadioGroupTipoLocalizar.ItemIndex of
    0: Campo := 'Prontuário';
    1: Campo := 'Nome';
  end;

  SqlConsulta.sql.text := SqlConsultaBackup.sql.text + ' and interno.id_up=' + inttostr(GLOBAL_ID_UP) + ' and interno.st= ' + qs('A') + ' order by interno.nome_interno ';
  if RadioGroupStatus.ItemIndex = 1 then
  begin
    sNomeInterno := '';
    while Length(trim(sNomeInterno)) < 3 do
      sNomeInterno := InputBox('Mínimo de TRÊS letras.', 'Digite pelo menos TRÊS letras do ' + Campo + ' do interno.', '');
    SqlConsulta.sql.text := SqlConsultaBackup.sql.text + ' and coalesce(interno.st,' + Qs('I') + ') = ' + qs('I') + ' and nome_interno like ' + qs('%' + UpperCase(sNomeInterno) + '%') +
      ' order by interno.nome_interno ';
  end;

  if ID_INTERNO > 0 then
  begin
    AddWhere(SqlConsulta, ' INTERNO.ID_INTERNO=' + inttostr(ID_INTERNO));
  end;

  DsConsulta.DataSet.filtered := False;
  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

  EditLocalizar.Text := UpperCase(sNomeInterno);
  EditLocalizarChange(nil);
  if EditLocalizar.CanFocus then
    EditLocalizar.SetFocus;
            
end;

procedure TFrmModeloInterno.DsConsultaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  with DsConsulta.DataSet do
  begin

    if not Active then
      Exit;

    if IsEmpty then
    begin
      Exit;
    end;

    StatusBar1.Panels[0].Text := 'INTERNO:';
    StatusBar1.Panels[1].Text := DsCadastro.DataSet.fieldbyname('NOME_INTERNO').AsString;

  end;

end;

procedure TFrmModeloInterno.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FrmCadastroprocedencia := TFrmCadastroProcedencia.Create(Application);
  FrmCadastroProcedencia.ShowModal;
  FreeAndNil(FrmCadastroProcedencia);

  DM.DsProcedencia.DataSet.Close;
  DM.DsProcedencia.DataSet.OPEN;

end;

procedure TFrmModeloInterno.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  FrmCadastroCondicaoInterno := TFrmCadastroCondicaoInterno.Create(Application);
  FrmCadastroCondicaoInterno.ShowModal;
  FreeAndNil(FrmCadastroCondicaoInterno);

  DM.DsCondicaoInterno.DataSet.Close;
  DM.DsCondicaoInterno.DataSet.OPEN;

end;

procedure TFrmModeloInterno.FormCreate(Sender: TObject);
begin
  SqlConsulta.sql.text := SqlConsultaBackup.sql.text + ' and interno.id_up=' + inttostr(GLOBAL_ID_UP) + ' order by interno.nome_interno ';
  inherited;
  ID_INTERNO := 0;
end;

procedure TFrmModeloInterno.Especifico1Click(Sender: TObject);
var
  sPath: string;
begin

  try

    with DsCadastro.DataSet do
    begin

      if not Active then
      begin
        ShowMessage('Não tem interno posicionado na tela.');
        exit;
      end;

      if IsEmpty then
      begin
        ShowMessage('Não tem interno posicionado na tela.');
        exit;
      end;

      if state in [dsinsert] then
      begin
        ShowMessage('Salve este registro de interno, depois posicione nele.');
        exit;
      end;

      GLOBAL_ID_INTERNO := fieldbyname('ID_INTERNO').AsInteger;

    end;

    if not DirectoryExists(GLOBAL_PATCH_SISTEMA + '\Específicos\') then
      CreateDir(GLOBAL_PATCH_SISTEMA + '\Específicos\');

    PATH_MOMENTO := GLOBAL_PATCH_SISTEMA + '\Específicos\' + trim(copy(self.Name, 4, 100)) + '\';
    if not DirectoryExists(PATH_MOMENTO) then
      CreateDir(PATH_MOMENTO);

    FrmMenuRelatorio := TFrmMenuRelatorio.Create(Application);
    FrmMenuRelatorio.ShowModal;
    FreeAndNil(FrmMenuRelatorio);

  except
  end;

  PATH_MOMENTO := '';

  SetCurrentDir(GLOBAL_PATCH_SISTEMA);

end;

procedure TFrmModeloInterno.DBImageFOTOInternoClick(Sender: TObject);
var
  sOrigem, sDestino: string;
  JPeg: TJpegImage;
begin

  with DsCadastro.DataSet do
  begin
    if state in [dsedit, dsinsert] then
    begin
      if OpenDialogCapturarFoto.Execute then
      begin
        JPeg := TJPEGImage.Create;
        JPeg.LoadFromFile(ConverterBmpParaJPeg(JpgToBmp(OpenDialogCapturarFoto.FileName)));
        DBImageFOTOInterno.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end;

end;

procedure TFrmModeloInterno.SpeedButton8Click(Sender: TObject);
begin
  inherited;

  FrmCadastroFaccao := TFrmCadastroFaccao.Create(Application);
  FrmCadastroFaccao.ShowModal;
  FreeAndNil(FrmCadastroFaccao);

  DsFaccao.DataSet.Close;
  DsFaccao.DataSet.OPEN;

end;

//Procedure que faz o filtro da busca

procedure TFrmModeloInterno.CdsConsultaFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var
  Status, Campo: string;
begin
  inherited;

  if chkSoundex.Checked then
  begin
    chkSoundexClick(nil);
    Exit;
  end;

  case RadioGroupStatus.ItemIndex of
    0: Status := 'A';
    1: Status := 'I';
  end;

  case RadioGroupTipoLocalizar.ItemIndex of
    0: Campo := 'RGI';
    1: Campo := 'NOME_INTERNO';
  end;

  if DataSet[Campo] <> Null then
  begin

    if EditLocalizar.Text <> ' ' then
    begin

      if Campo = 'NOME_INTERNO' then
      begin
        if Status = 'I' then
        begin

          if (DataSet['st'] = Status)
            and (pos(AnsiUpperCase(RemoveAcentos(EditLocalizar.Text)),
            AnsiUpperCase(RemoveAcentos(DataSet[Campo]))) <> 0) then
          begin
            Accept := true;
          end
          else
            Accept := false;

        end
        else
        begin

          if (DataSet['id_up'] = inttostr(GLOBAL_ID_UP)) and (DataSet['st'] = Status)
            and (pos(AnsiUpperCase(RemoveAcentos(EditLocalizar.Text)),
            AnsiUpperCase(RemoveAcentos(DataSet[Campo]))) <> 0) then
          begin
            Accept := true;
          end
          else
            Accept := false;

        end;
      end
      else
      begin
        if Status = 'I' then
        begin

          if (DataSet['st'] = Status)
            and (AnsiUpperCase(RemoveAcentos(EditLocalizar.Text)) =
            AnsiUpperCase(RemoveAcentos(DataSet[Campo]))) then
          begin
            Accept := true;
          end
          else
            Accept := false;

        end
        else
        begin

          if (DataSet['id_up'] = inttostr(GLOBAL_ID_UP)) and (DataSet['st'] = Status)
            and (AnsiUpperCase(RemoveAcentos(EditLocalizar.Text)) =
            AnsiUpperCase(RemoveAcentos(DataSet[Campo]))) then
          begin
            Accept := true;
          end
          else
            Accept := false;

        end;
      end;
    end
    else
    begin

      if (pos(AnsiUpperCase(RemoveAcentos(EditLocalizar.Text)),
        AnsiUpperCase(RemoveAcentos(DataSet[Campo]))) = 1) then
      begin
        Accept := true;
      end else
      begin
        Accept := false;
      end;

    end;

  end
  else
  begin
    if EditLocalizar.Text = ' ' then
      Accept := true
    else
      Accept := false;
  end;

end;

procedure TFrmModeloInterno.RadioGroupTipoLocalizarClick(Sender: TObject);
begin
  inherited;
  if EditLocalizar.CanFocus then
  begin
    EditLocalizar.SetFocus;
    EditLocalizar.Text := '';
  end;

end;

end.

