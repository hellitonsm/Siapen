unit MovimentoSemiAberto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloMovimentacao, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, Grids, DBGrids, StdCtrls, ToolWin, ExtCtrls, DBCtrls,
  adpDBDateTimePicker, Mask, Buttons, unCompBio, System.ImageList,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmMovimentoSemiAberto = class(TFrmModeloMovimentacao)
    RadioGroupTipoLocalizar: TRadioGroup;
    Label4: TLabel;
    DBImage1: TDBImage;
    SqlConsultaTodos: TSQLQuery;
    DBEdit1: TDBEdit;
    tbInserir: TToolButton;
    DspMov_Diario: TDataSetProvider;
    CdsMov_Diario: TClientDataSet;
    DsMov_Diario: TDataSource;
    CdsMovimentoID_MOVIMENTO_SEMIABERTO: TIntegerField;
    CdsMovimentoDATA_MOVIMENTO: TSQLTimeStampField;
    CdsMovimentoID_INTERNO: TIntegerField;
    CdsMovimentoSTATUS: TStringField;
    CdsMovimentoID_UP: TIntegerField;
    CdsMovimentoInterno: TStringField;
    adpDBDateTimePicker1: TadpDBDateTimePicker;
    Label3: TLabel;
    Label5: TLabel;
    adpDBDateTimePicker2: TadpDBDateTimePicker;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    CdsMovimentoProntuario: TStringField;
    TabSheet1: TTabSheet;
    dspmovretorno: TDataSetProvider;
    cdsmovretorno: TClientDataSet;
    dsmovretorno: TDataSource;
    DBGrid2: TDBGrid;
    cdsmovretornoID_MOVIMENTO_SEMIABERTO: TIntegerField;
    cdsmovretornoDATA_MOVIMENTO: TSQLTimeStampField;
    cdsmovretornoID_INTERNO: TIntegerField;
    cdsmovretornoHORA_ENTRADA: TTimeField;
    cdsmovretornoSTATUS: TStringField;
    cdsmovretornoID_UP: TIntegerField;
    cdsmovretornoHORA_SAIDA: TTimeField;
    cdsmovretornoInterno: TStringField;
    cdsmovretornoPronturio: TStringField;
    CdsMovimentoHORA_ENTRADA: TTimeField;
    CdsMovimentoHORA_SAIDA: TTimeField;
    BitBtnCancelaEntrada: TBitBtn;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label75: TLabel;
    DBEditentradasemanal: TDBEdit;
    DBEditsaidasemanal: TDBEdit;
    DBEdit22: TDBEdit;
    DBEditentradasaidao: TDBEdit;
    DBEditsaidasaidao: TDBEdit;
    DBEditentradasabado: TDBEdit;
    DBEditsaidasabado: TDBEdit;
    DBEditentradadomingo: TDBEdit;
    DBEditsaidadomingo: TDBEdit;
    DBEdit41: TDBEdit;
    Tverificardigital: TToolButton;
    Label8: TLabel;
    DspDigital: TDataSetProvider;
    CdsDigital: TClientDataSet;
    DsDigital: TDataSource;
    BtnIniciar: TButton;
    BtnParar: TButton;
    Label9: TLabel;
    ComboBoxdigital: TComboBox;
    CdsMovimentoID_FUNCIONARIO_SAIDA: TIntegerField;
    CdsMovimentoID_FUNCIONARIO_ENTRADA: TIntegerField;
    CdsMovimentoFORA_HORA_SAIDA: TStringField;
    CdsMovimentoFORA_HORA_ENTRADA: TStringField;
    CdsMovimentoJUSTIFICA_HORA_SAIDA: TStringField;
    CdsMovimentoJUSTIFICA_HORA_ENTRADA: TStringField;
    CdsMovimentoDATA_ENTRADA: TSQLTimeStampField;
    CdsMovimentoIDSETOR_TRABALHO: TIntegerField;
    SqlMov_Diario: TFDQuery;
    SQLmovretorno: TFDQuery;
    SqlDigital: TFDQuery;
    procedure EditLocalizarChange(Sender: TObject);
    procedure tbInserirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure RadioGroupTipoLocalizarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnCancelaEntradaClick(Sender: TObject);
    procedure EditLocalizarClick(Sender: TObject);
    procedure TverificardigitalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnIniciarClick(Sender: TObject);
    procedure BtnPararClick(Sender: TObject);
    procedure EditLocalizarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CancelarClick(Sender: TObject);
  private
    { Private declarations }
    prvBio: TCompBio;
    function RetornaDigital: string;
    procedure rPesquisa(var pStr: string);
    procedure rEvtImg(var pBmp: TBitmap);
  public
    { Public declarations }
    DigitalReconhecida: boolean;
  end;

var
  FrmMovimentoSemiAberto: TFrmMovimentoSemiAberto;

implementation

uses Lib, DmPrincipal, UnRecDig;

{$R *.dfm}

procedure TFrmMovimentoSemiAberto.rPesquisa(var pStr: string);
var
  lvLog: string;
  Probalidade: integer;
  sMensagem: array[0..1000] of Char;
  //------------------------------------------------------------------------------
  function fPesquisa_digitalBase(): boolean;
  var
    lvStr, lvNm, digital: string;
    lvIdx: integer;
    lvSc: integer;
  begin
    Result := false;
    Probalidade := 0;

    if ComboBoxdigital.ItemIndex = 0 then
      digital := 'CHAVE_POLEGAR_ESQUERDO'
    else if ComboBoxdigital.ItemIndex = 1 then
      digital := 'CHAVE_INDICADOR_ESQUERDO'
    else if ComboBoxdigital.ItemIndex = 2 then
      digital := 'CHAVE_MEDIO_ESQUERDO'
    else if ComboBoxdigital.ItemIndex = 3 then
      digital := 'CHAVE_ANELAR_ESQUERDO'
    else if ComboBoxdigital.ItemIndex = 4 then
      digital := 'CHAVE_MINIMO_ESQUERDO'
    else if ComboBoxdigital.ItemIndex = 5 then
      digital := 'CHAVE_POLEGAR_DIREITO'
    else if ComboBoxdigital.ItemIndex = 6 then
      digital := 'CHAVE_INDICADOR_DIREITO'
    else if ComboBoxdigital.ItemIndex = 7 then
      digital := 'CHAVE_MEDIO_DIREITO'
    else if ComboBoxdigital.ItemIndex = 8 then
      digital := 'CHAVE_ANELAR_DIREITO'
    else if ComboBoxdigital.ItemIndex = 9 then
      digital := 'CHAVE_MINIMO_DIREITO';

    frmmovimentosemiaberto.DsDigital.DataSet.first;
    while not frmmovimentosemiaberto.DsDigital.DataSet.eof do
    begin

      lvStr := frmmovimentosemiaberto.DsDigital.DataSet.fieldbyname(digital).asstring;

      prvBio.fIdentifica(lvStr, lvSc);
      if lvSc > Probalidade then
        Probalidade := lvSc;
      Result := (lvSc >= 60);
      DigitalReconhecida := false;
      if (Result = true) then
      begin
        DigitalReconhecida := true;
        break;
      end;

      frmmovimentosemiaberto.DsDigital.DataSet.Next;

    end;

  end;
begin
  if frmmovimentosemiaberto.DsDigital.tag = 1 then
    exit;
  frmmovimentosemiaberto.DsDigital.tag := 1;
  try
    lvLog := FormatDateTime('dd/MM/yyyy HH:mm:sss', now) + ' - ';
    if (fPesquisa_digitalBase()) then
    begin

      // coloque aqui outras informacoes
     // mmLog.Lines.Add(lvLog + 'Digital identificada... (' + inttostr(Probalidade) + ')');
    //  mmLog.Lines.Add('Nome: ' + frmmovimentosemiaberto.DsDigital.DataSet.fieldbyname('NOME_INTERNO').asstring);

      //StrPCopy(sMensagem, 'Digital identificada, nome: ' + frmmovimentosemiaberto.DsDigital.DataSet.fieldbyname('NOME_INTERNO').asstring + '. Retornar?');

     // if Application.MessageBox(sMensagem,
      //  'Confirme', mb_YesNo + Mb_IconQuestion) = idYes then
      //begin
      //close;
      //end;

    end
    else
    begin
      //mmLog.Lines.Add(lvLog + 'Digital não identificada... (' + inttostr(Probalidade) + ')');
     // imgDig.Picture := nil;
    end;
  except
  end;
  frmmovimentosemiaberto.DsDigital.tag := 0;
end;

//------------------------------------------------------------------------------
// Evento de associacao da imagem
//------------------------------------------------------------------------------

procedure TFrmMovimentoSemiAberto.rEvtImg(var pBmp: TBitmap);
begin
  //imgDig.Picture.Bitmap.Assign(pBmp);
end;

procedure TFrmMovimentoSemiAberto.EditLocalizarChange(Sender: TObject);
var
  Status, Campo: string;
begin
  inherited;

  case RadioGroupTipoLocalizar.ItemIndex of
    0: Campo := 'RGI';
    1: Campo := 'NOME_INTERNO';
    2: Campo := 'ID_INTERNO';
  end;

  if RadioGroupTipoLocalizar.ItemIndex = 0 then
  begin
    SqlConsulta.SQL.Text := SqlConsultatodos.sql.text
      + ' and interno.' + campo + ' = ' + qs(EditLocalizar.text)
      + ' and interno.id_up = ' + IntToStr(global_id_up)
      + ' order by interno.nome_interno ';
  end;

  if RadioGroupTipoLocalizar.ItemIndex = 1 then
  begin
    SqlConsulta.SQL.Text := SqlConsultatodos.sql.text
      + ' and interno.' + campo + ' like ' + qs(EditLocalizar.text + '%')
      + ' and interno.id_up = ' + IntToStr(global_id_up)
      + ' order by interno.nome_interno ';
  end;

  if RadioGroupTipoLocalizar.ItemIndex = 2 then
  begin
    SqlConsulta.SQL.Text := SqlConsultatodos.sql.text
      + ' and interno.' + campo + ' = ' + qs(EditLocalizar.text)
      + ' and interno.id_up = ' + IntToStr(global_id_up);
  end;


  DsConsulta.DataSet.close;

  if EditLocalizar.Text <> '' then
    DsConsulta.DataSet.open;

  PageControlConsulta.ActivePageIndex := 1;

end;

procedure TFrmMovimentoSemiAberto.tbInserirClick(Sender: TObject);
const
  semana: array[1..7] of string = ('Domingo', 'Segunda-feira', 'Terça-feira', 'Quarta-feira', 'Quinta-feira', 'Sexta-feira', 'Sábado');
var
  status, sHora_Correta: string;
  Fator_Dia_Trabalho: Integer;
  sMensagem, stitulo: array[0..1000] of Char;
  HORARIO_SAIDA, HORARIO_ENTRADA, HORA_BASE: TTime;
  DATA_LIMITE_ENTRADA: TDateTime;
begin
  inherited;

  if DayOfWeek(DATE) = 1 then
  begin
    HORARIO_SAIDA := DsCadastro.DataSet.fieldbyname('HORARIO_SAIDA_DOMINGO').AsDateTime;
    HORARIO_ENTRADA := DsCadastro.DataSet.fieldbyname('HORARIO_ENTRADA_DOMINGO').AsDateTime;
  end;

  if DayOfWeek(DATE) = 2 then
  begin
    HORARIO_SAIDA := DsCadastro.DataSet.fieldbyname('HORARIO_SAIDA_SEG').AsDateTime;
    HORARIO_ENTRADA := DsCadastro.DataSet.fieldbyname('HORARIO_ENTRADA_SEG').AsDateTime;
  end;

  if DayOfWeek(DATE) = 3 then
  begin
    HORARIO_SAIDA := DsCadastro.DataSet.fieldbyname('HORARIO_SAIDA_TER').AsDateTime;
    HORARIO_ENTRADA := DsCadastro.DataSet.fieldbyname('HORARIO_ENTRADA_TER').AsDateTime;
  end;

  if DayOfWeek(DATE) = 4 then
  begin
    HORARIO_SAIDA := DsCadastro.DataSet.fieldbyname('HORARIO_SAIDA_QUA').AsDateTime;
    HORARIO_ENTRADA := DsCadastro.DataSet.fieldbyname('HORARIO_ENTRADA_QUA').AsDateTime;
  end;

  if DayOfWeek(DATE) = 5 then
  begin
    HORARIO_SAIDA := DsCadastro.DataSet.fieldbyname('HORARIO_SAIDA_QUI').AsDateTime;
    HORARIO_ENTRADA := DsCadastro.DataSet.fieldbyname('HORARIO_ENTRADA_QUI').AsDateTime;
  end;

  if DayOfWeek(DATE) = 6 then
  begin
    HORARIO_SAIDA := DsCadastro.DataSet.fieldbyname('HORARIO_SAIDA_SEX').AsDateTime;
    HORARIO_ENTRADA := DsCadastro.DataSet.fieldbyname('HORARIO_ENTRADA_SEX').AsDateTime;
  end;

  if DayOfWeek(DATE) = 7 then
  begin
    HORARIO_SAIDA := DsCadastro.DataSet.fieldbyname('HORARIO_SAIDA_SABADO').AsDateTime;
    HORARIO_ENTRADA := DsCadastro.DataSet.fieldbyname('HORARIO_ENTRADA_SABADO').AsDateTime;
  end;                                                                                                       

  Fator_Dia_Trabalho := 0;
  if (HORARIO_SAIDA > HORARIO_ENTRADA) then
    Fator_Dia_Trabalho := 1;

  HORA_BASE := Time;

  SqlMov_Diario.SQL.Text :=
    'select first 1 * from movimento_semiaberto m '
    + ' where hora_entrada is null '
    + ' and m.id_interno = ' + DsCadastro.DataSet.fieldbyname('id_interno').AsString
    + ' and m.id_up = ' + inttostr(GLOBAL_ID_UP)
    + ' order by hora_entrada';

  DsMov_Diario.DataSet.Close;
  DsMov_Diario.DataSet.open;

  sHora_Correta := '';

  if (not DsMov_Diario.DataSet.IsEmpty) then
  begin
    status := 'ENTRADA';
    DATA_LIMITE_ENTRADA := DsMov_Diario.DataSet.FieldByName('DATA_MOVIMENTO').AsDateTime + Fator_Dia_Trabalho;
    sHora_Correta := 'ENTRADA até as ' + TimeToStr(HORARIO_ENTRADA) + 'h do dia '
      + datetostr(DATA_LIMITE_ENTRADA);
    DsMov_Diario.DataSet.edit;
    DsMov_Diario.DataSet.FieldByName('DATA_ENTRADA').value := Date;
    DsMov_Diario.DataSet.FieldByName('HORA_ENTRADA').value := HORA_BASE;
    DsMov_Diario.DataSet.FieldByName('ID_FUNCIONARIO_ENTRADA').value := GLOBAL_ID_FUNCIONARIO;

    if (DATA_LIMITE_ENTRADA) < Date then
      DsMov_Diario.DataSet.FieldByName('FORA_HORA_ENTRADA').value := 'S';

    if (DATA_LIMITE_ENTRADA) = Date then
      if time > HORARIO_ENTRADA then
        DsMov_Diario.DataSet.FieldByName('FORA_HORA_ENTRADA').value := 'S';

    if DsMov_Diario.DataSet.FieldByName('FORA_HORA_ENTRADA').value = 'S' then
    begin
      ShowMessage(sHora_Correta + ', por favor justifique.');
      while length(DsMov_Diario.DataSet.FieldByName('JUSTIFICA_HORA_ENTRADA').asstring) < 5 do
      begin
        DsMov_Diario.DataSet.FieldByName('JUSTIFICA_HORA_ENTRADA').asstring :=
          InputBox('Fora de horário, ENTRADA até as ' + TimeToStr(HORARIO_ENTRADA) + 'h do dia '
          + datetostr(DATA_LIMITE_ENTRADA), 'Justifique! Minímo de 5 letras',
          DsMov_Diario.DataSet.FieldByName('JUSTIFICA_HORA_ENTRADA').asstring);
      end;
      sHora_Correta := sHora_Correta + ', Justificativa: ' + DsMovimento.DataSet.FieldByName('JUSTIFICA_HORA_ENTRADA').asstring;

    end;

    DsMov_Diario.DataSet.post;
  end
  else
  begin
    if trim(DsCadastro.DataSet.fieldbyname('BLOQUEIO_TRABALHO').AsString) <> '' then
    begin
      showmessage('O interno: ' + DsCadastro.DataSet.fieldbyname('nome_interno').AsString
        + ', está bloqueado! Motivo: ' + trim(DsCadastro.DataSet.fieldbyname('BLOQUEIO_TRABALHO').AsString));
      exit;
    end;

    if (HORARIO_SAIDA) = 0 then
    begin
      showmessage('O interno: ' + DsCadastro.DataSet.fieldbyname('nome_interno').AsString
        + ', não tem horário para sair ' + semana[DayOfWeek(DATE)] + '!');
      exit;
    end;

    status := 'SAÍDA';
    sHora_Correta := 'SAÍDA apartir das ' + TimeToStr(HORARIO_SAIDA) + 'h';
    DsMovimento.DataSet.Append;
    DsMovimento.DataSet.FieldByName('id_movimento_semiaberto').value := 0;
    DsMovimento.DataSet.FieldByName('data_movimento').value := date;
    DsMovimento.DataSet.FieldByName('id_interno').value := DsCadastro.DataSet.fieldbyname('id_interno').value;
    DsMovimento.DataSet.FieldByName('IDSETOR_TRABALHO').value := DsCadastro.DataSet.fieldbyname('IDSETOR_TRABALHO').value;
    DsMovimento.DataSet.FieldByName('hora_saida').value := HORA_BASE;
    DsMovimento.DataSet.FieldByName('id_up').value := GLOBAL_ID_UP;
    DsMovimento.DataSet.FieldByName('ID_FUNCIONARIO_SAIDA').value := GLOBAL_ID_FUNCIONARIO;

    if time < HORARIO_SAIDA then
      DsMovimento.DataSet.FieldByName('FORA_HORA_SAIDA').value := 'S';

    if DsMovimento.DataSet.FieldByName('FORA_HORA_SAIDA').value = 'S' then
    begin
      ShowMessage(sHora_Correta + ', por favor justifique.');
      while length(DsMovimento.DataSet.FieldByName('JUSTIFICA_HORA_SAIDA').asstring) < 5 do
      begin
        DsMovimento.DataSet.FieldByName('JUSTIFICA_HORA_SAIDA').asstring :=
          InputBox('Fora de horário, SAÍDA apartir das ' + TimeToStr(HORARIO_SAIDA) + 'h', 'Justifique! Minímo de 5 letras',
          DsMovimento.DataSet.FieldByName('JUSTIFICA_HORA_SAIDA').asstring);
      end;
      sHora_Correta := sHora_Correta + ', Justificativa: ' + DsMovimento.DataSet.FieldByName('JUSTIFICA_HORA_SAIDA').asstring;
    end;

    DsMovimento.DataSet.post;

  end;

  StrPCopy(sMensagem, 'Confirma ' + status + ' do interno(a) '
    + DsCadastro.DataSet.fieldbyname('nome_interno').AsString
    + ' as ' + TimeToStr(HORA_BASE) + 'h? ' + sHora_Correta);

  StrPCopy(stitulo, 'Confirme '
    + '..::[ ' + status + ' ]::.. '
    + '..::[ ' + status + ' ]::.. '
    + '..::[ ' + status + ' ]::.. '
    );

  if Application.MessageBox(smensagem,
    stitulo, mb_YesNo + Mb_IconQuestion) = idYes then
    SalvarClick(nil)
  else
    CancelarClick(nil);

end;

procedure TFrmMovimentoSemiAberto.FormCreate(Sender: TObject);
begin
  inherited;

  dm.DsInterno.DataSet.Close;
  DM.SqlInterno.Params[0].Value := GLOBAL_ID_UP;
  dm.DsInterno.DataSet.OPEN;

  DsMovimento.DataSet.Close;
  SqlMovimento.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;
  DsMovimento.DataSet.open;

  dsmovretorno.DataSet.Close;
  SQLmovretorno.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;
  dsmovretorno.DataSet.open;

  PageControlConsulta.ActivePageIndex := 0;

  DsDigital.DataSet.Close;
  DsDigital.DataSet.Open;

  {inicia biometria}
  {ComboBoxdigital.ItemIndex := 6;

  label9.Caption := 'Busca Biométrica Dedo ' + ComboBoxdigital.Text;

  if (not fGriauleLoadLib()) then
    ShowMessage('Falha ao carregar a DLL (GrFinger.dll)');

  BtnIniciarClick(nil);}

  // Verifica as permissões que o usuário possui para esta tela.
  if not ContemValor('I', PERMISSAO_MOVIMENTOSEMIABERTO) then
  begin
    tbInserir.Visible := False;
    Tverificardigital.Visible := False;
  end;

  if not (ContemValor('E', PERMISSAO_MOVIMENTOSEMIABERTO) or ContemValor('D', PERMISSAO_MOVIMENTOSEMIABERTO)) then
  begin
    BitBtnCancelaEntrada.Enabled := False;
  end;
end;

procedure TFrmMovimentoSemiAberto.SalvarClick(Sender: TObject);
var
  Status, Campo: string;
begin
  inherited;

  DsMovimento.DataSet.Close;
  DsMovimento.DataSet.Open;

  dsmovretorno.DataSet.Close;
  dsmovretorno.DataSet.Open;

  DsMov_Diario.DataSet.Close;
  DsMov_Diario.DataSet.Open;

  DsMovimento.DataSet.first;

  EditLocalizar.Text := '';
  PageControlConsulta.ActivePageIndex := 0;

  if EditLocalizar.CanFocus then
    EditLocalizar.SetFocus;

end;

procedure TFrmMovimentoSemiAberto.RadioGroupTipoLocalizarClick(
  Sender: TObject);
var
  Status, Campo: string;
begin
  inherited;

  case RadioGroupTipoLocalizar.ItemIndex of
    0: Campo := 'Interno.rgi';
    1: Campo := 'Interno.NOME_INTERNO';
    2: Campo := 'interno.NOME_INTERNO';
  end;

  sqlconsulta.sql.text := SqlConsultaTodos.SQL.Text
    + ' AND ' + Campo + ' = ''xxxxxxxxxxx'' ';

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

  EditLocalizar.Text := '';

  PageControlConsulta.ActivePageIndex := 0;

  if RadioGroupTipoLocalizar.ItemIndex = 2 then
  begin
    EditLocalizarClick(nil);
  end;

  if EditLocalizar.CanFocus then
    EditLocalizar.SetFocus;

end;

procedure TFrmMovimentoSemiAberto.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = vk_f10 then
  begin
    Tbinserir.onclick(nil);
  end;

  if key = vk_f12 then
  begin
    Tverificardigital.OnClick(nil);
  end;

end;

procedure TFrmMovimentoSemiAberto.BitBtnCancelaEntradaClick(
  Sender: TObject);
var
  erro_transacao, iComp: Integer;
begin
  inherited;

  if DsMovimento.DataSet.IsEmpty then
  begin
    showmessage('Não há Interno no dia de hoje.');
    exit;
  end;

  if MessageDlg('Cancelar o MOVIMENTO deste interno: ' + dsmovimento.DataSet.fieldbyname('interno').AsString + '?'
    + ' A responsabilidade deste cancelamento estará no seu código de funcionário!',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    if MessageDlg('Não é possível extornar cancelamentos, CONFIRMA?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin

      DsMovimento.DataSet.Delete;

      if PageControlModeloCadastro.CanFocus then
        PageControlModeloCadastro.SetFocus;

      if DsMovimento.DataSet.State in [dsedit, dsinsert] then
        DsMovimento.DataSet.Post;

      IniciaTransCadastro;

      TClientDataSet(DsMovimento.DataSet).ApplyUpdates(0);

      finalizaTransCadastro;

      DsMovimento.DataSet.Close;
      DsMovimento.DataSet.Open;

      //    DsConsulta.DataSet.Close;
      //    DsConsulta.DataSet.Open;

      dsmovretorno.DataSet.Close;
      dsmovretorno.DataSet.Open;

      ShowMessage('Movimento cancelado, a responsabilidade do cancelamento está em seu usúario!');
    end;
  end;

end;

function TFrmMovimentoSemiAberto.RetornaDigital(): string;
begin

  IniciaTelaAguarde();
  InterageTelaAguarde();
  FinalizaTelaAguarde;

  recDig_bmp := TBitmap.Create();
  frmRecDig := TfrmRecDig.Create(Self);
  frmRecDig.ShowModal;
  if frmRecDig.DigitalReconhecida then
    result := DsDigital.DataSet.fieldbyname('ID_INTERNO').AsString;
  freeandnil(frmRecDig);
  freeandnil(recDig_bmp);

end;

procedure TFrmMovimentoSemiAberto.EditLocalizarClick(Sender: TObject);
begin
  inherited;
  if RadioGroupTipoLocalizar.ItemIndex = 2 then
    EditLocalizar.Text := RetornaDigital;

end;

procedure TFrmMovimentoSemiAberto.TverificardigitalClick(Sender: TObject);
begin
  inherited;

  if RadioGroupTipoLocalizar.ItemIndex = 2 then
  begin
    EditLocalizarClick(nil);
  end;

  RadioGroupTipoLocalizar.ItemIndex := 2;

end;

procedure TFrmMovimentoSemiAberto.FormShow(Sender: TObject);
begin
  inherited;
  RadioGroupTipoLocalizar.ItemIndex := 0;
end;

procedure TFrmMovimentoSemiAberto.BtnIniciarClick(Sender: TObject);
begin
  inherited;
  BtnPararClick(nil);

  prvBio := TCompBio.Create(Self);
  prvBio.OnEvt := rPesquisa;
  // prvBio.plPn01 := pnSts;
  // prvBio.plPn02 := pnQual;
  prvBio.plBmp := recDig_bmp;
  prvBio.OnImg := rEvtImg;
  prvBio.fInitGrFinger();

  BtnIniciar.Enabled := false;
  BtnParar.Enabled := true;

end;

procedure TFrmMovimentoSemiAberto.BtnPararClick(Sender: TObject);
begin
  inherited;
  BtnIniciar.Enabled := true;
  BtnParar.Enabled := false;
  if assigned(prvBio) then
  begin
    try
      prvBio.rFinalizeGrFinger();
      FreeAndNil(prvBio);
    except
    end;
  end;

end;

procedure TFrmMovimentoSemiAberto.EditLocalizarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = vk_tab) or (key = vk_return) then
  begin
    if not dsconsulta.dataset.IsEmpty then
    begin
      tbInserirClick(nil);
    end;
  end;

end;

procedure TFrmMovimentoSemiAberto.CancelarClick(Sender: TObject);
begin
  inherited;

  DsMovimento.DataSet.Close;
  DsMovimento.DataSet.Open;

  dsmovretorno.DataSet.Close;
  dsmovretorno.DataSet.Open;

  DsMov_Diario.DataSet.Close;
  DsMov_Diario.DataSet.Open;

  DsMovimento.DataSet.first;

  EditLocalizar.Text := '';
  PageControlConsulta.ActivePageIndex := 0;

  if EditLocalizar.CanFocus then
    EditLocalizar.SetFocus;

end;

end.

