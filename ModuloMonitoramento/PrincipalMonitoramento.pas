unit PrincipalMonitoramento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Menus, ImgList, FMTBcd, DB, DBClient,
  Provider, SqlExpr, dbcgrids, DBCtrls, Buttons, ComCtrls, Grids, DBGrids, ShellAPI;

type
  TFrmPrincipalMonitoramento = class(TForm)
    Panel2: TPanel;
    Image2: TImage;
    LabelTitulo: TLabel;
    Image3: TImage;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Lancamentos1: TMenuItem;
    Relatrios1: TMenuItem;
    Sobre1: TMenuItem;
    Sobre2: TMenuItem;
    Sair1: TMenuItem;
    ImageList1: TImageList;
    RelatorioEventos: TMenuItem;
    Eventos1: TMenuItem;
    SubEventos1: TMenuItem;
    Panel1: TPanel;
    BtnAtualizarEventos: TBitBtn;
    RelatorioCameras: TMenuItem;
    LivroPlantao: TMenuItem;
    DsMonitoramentoEventos: TDataSource;
    CdsMonitoramentoEventos: TClientDataSet;
    DspMonitoramentoEventos: TDataSetProvider;
    GbUnidadeEventos: TGroupBox;
    CkPFCG: TCheckBox;
    CkPFCAT: TCheckBox;
    CkPFMOS: TCheckBox;
    CkPFPV: TCheckBox;
    CkDEPEN: TCheckBox;
    DBGridEventos: TDBGrid;
    Panel3: TPanel;
    SqlMonitoramentoEventos: TSQLQuery;
    SqlMonitoramentoEventosBackup: TSQLQuery;
    LbTotalEventos: TLabel;
    TimerEventos: TTimer;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    procedure Eventos1Click(Sender: TObject);
    procedure SubEventos1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Relatrios1Click(Sender: TObject);
    procedure Sobre2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RelatorioEventosClick(Sender: TObject);
    procedure BtnAtualizarEventosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEventosDblClick(Sender: TObject);
    procedure DsMonitoramentoEventosDataChange(Sender: TObject;
      Field: TField);
    procedure TimerEventosTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipalMonitoramento: TFrmPrincipalMonitoramento;

implementation

uses Lib, DmPrincipal, CadastroInteligencia, CadastroFuncionario,
  CadastroUnidadePenal, PostoTrabalho, MonitoramentoEventos,
  CadastroEventos, CadastroSubEvento, MenuRelatorio, Sobre,
  VisualizadorOLE, RelacionamentoInterno, maps_google,
  CadastroMonitoramentoEventos;

{$R *.dfm}

procedure TFrmPrincipalMonitoramento.Eventos1Click(Sender: TObject);
begin
  FrmCadastroEventos := TFrmCadastroEventos.Create(Application);
  FrmCadastroEventos.ShowModal;
  FreeAndNil(FrmCadastroEventos);

end;

procedure TFrmPrincipalMonitoramento.SubEventos1Click(Sender: TObject);
begin
  FrmCadastroSubEvento := TFrmCadastroSubEvento.Create(Application);
  FrmCadastroSubEvento.ShowModal;
  FreeAndNil(FrmCadastroSubEvento);

end;

procedure TFrmPrincipalMonitoramento.Sair1Click(Sender: TObject);
begin
  close;
end;

procedure TFrmPrincipalMonitoramento.Relatrios1Click(Sender: TObject);
begin
  FrmMenuRelatorio := TFrmMenuRelatorio.Create(Application);
  FrmMenuRelatorio.ShowModal;
  FreeAndNil(FrmMenuRelatorio);

end;

procedure TFrmPrincipalMonitoramento.Sobre2Click(Sender: TObject);
begin

  Frmsobre := TFrmsobre.Create(Application);
  Frmsobre.ShowModal;
  FreeAndNil(Frmsobre);

end;

procedure TFrmPrincipalMonitoramento.FormActivate(Sender: TObject);
begin
  if GLOBAL_IDCONEXAO > 0 then
  begin
    IniciaTransMovimento;
    try
      DM.SQLConnect.ExecuteDirect('update conexao set tela_momento = ' + qs(Self.Caption)
        + ' where idconexao=' + IntToStr(GLOBAL_IDCONEXAO));
    except
    end;
    FinalizaTransMovimento;
  end;

end;

procedure TFrmPrincipalMonitoramento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  FreeAndNil(FrmPrincipalMonitoramento);
end;

procedure TFrmPrincipalMonitoramento.RelatorioEventosClick(
  Sender: TObject);
begin
  FrmCadastroMonitoramentoEventos := TFrmCadastroMonitoramentoEventos.Create(Application);
  FrmCadastroMonitoramentoEventos.ShowModal;
  FreeAndNil(FrmCadastroMonitoramentoEventos);
end;

procedure TFrmPrincipalMonitoramento.BtnAtualizarEventosClick(
  Sender: TObject);
var
  sqlAbreCondicao, sqlFechaCondicao, sqlFinal, sqlOu: string;
  separador: Boolean;
  x: Integer;
begin
  separador := False;
  sqlAbreCondicao := ' and ( ';
  sqlFechaCondicao := ' ) ';
  sqlOu := ' or ';
  sqlFinal := SqlMonitoramentoEventosBackup.SQL.Text;

  SqlMonitoramentoEventos.ParamByName('DATA1').AsDate := Date;
  SqlMonitoramentoEventos.ParamByName('DATA2').AsDate := Date;

  if (CkPFCG.Checked) or (CkDEPEN.Checked) or (CkPFMOS.Checked) or (CkPFCAT.Checked) or (CkPFPV.Checked) then
  begin
    sqlFinal := sqlFinal + sqlAbreCondicao;

    if CkPFCG.Checked then
    begin

      if separador then
        sqlFinal := sqlFinal + sqlOu;

      sqlFinal := sqlFinal
        + ' ( (id_up_lancamento = 101) and (id_up_ocorrencia = 101) ) ';

      separador := True;

    end;

    if CkDEPEN.Checked then
    begin

      if separador then
        sqlFinal := sqlFinal + sqlOu;

      sqlFinal := sqlFinal
        + ' ( (id_up_lancamento = 201) or (id_up_ocorrencia = 201) ) ';

      separador := True;

    end;

    if CkPFMOS.Checked then
    begin

      if separador then
        sqlFinal := sqlFinal + sqlOu;

      sqlFinal := sqlFinal
        + ' ( (id_up_lancamento = 301) and (id_up_ocorrencia = 301) ) ';

      separador := True;

    end;

    if CkPFCAT.Checked then
    begin

      if separador then
        sqlFinal := sqlFinal + sqlOu;

      sqlFinal := sqlFinal
        + ' ( (id_up_lancamento = 401) and (id_up_ocorrencia = 401) ) ';

      separador := True;

    end;

    if CkPFPV.Checked then
    begin

      if separador then
        sqlFinal := sqlFinal + sqlOu;

      sqlFinal := sqlFinal
        + ' ( (id_up_lancamento = 501) and (id_up_ocorrencia = 501) ) ';

      separador := True;

    end;

    sqlFinal := sqlFinal + sqlFechaCondicao
      + ' order by me.data_evento desc, me.hora_evento desc, e.codigo || '' - '' || e.descricao_evento ';

    SqlMonitoramentoEventos.SQL.Text := sqlFinal;

  end
  else
  begin
    SqlMonitoramentoEventos.SQL.Text := SqlMonitoramentoEventosBackup.SQL.Text + ' and 1<>1 ';
  end;


  DsMonitoramentoEventos.DataSet.Close;
  DsMonitoramentoEventos.DataSet.Open;

  DM.SqlExecute.SQL.Text := ' select up_oco.sigla as up_ocorrencia, count(me.id_up_ocorrencia) as QTD '
    + ' from monitoramento_eventos me left join unidade_penal up_oco on (up_oco.id_up = me.id_up_ocorrencia) '
    + ' where me.data_evento between ' + Qs(FormatDateTime('dd.mm.yyyy', Date)) + ' and ' + Qs(FormatDateTime('dd.mm.yyyy', Date)) + ' and me.id_up_ocorrencia <> 201 group by up_oco.sigla '
    + ' order by up_oco.sigla desc ';
  DM.SqlExecute.Close;
  DM.SqlExecute.Open;

  if not DM.SqlExecute.Eof then
  begin
    label3.Caption := DM.SqlExecute.fieldbyname('UP_OCORRENCIA').AsString + ' = ' + DM.SqlExecute.fieldbyname('QTD').AsString + ' eventos';
    Label3.Visible := True;
    DM.SqlExecute.Next;
  end;

  if not DM.SqlExecute.Eof then
  begin
    label4.Caption := DM.SqlExecute.fieldbyname('UP_OCORRENCIA').AsString + ' = ' + DM.SqlExecute.fieldbyname('QTD').AsString + ' eventos';
    Label4.Visible := True;
    DM.SqlExecute.Next;
  end;

  if not DM.SqlExecute.Eof then
  begin
    label5.Caption := DM.SqlExecute.fieldbyname('UP_OCORRENCIA').AsString + ' = ' + DM.SqlExecute.fieldbyname('QTD').AsString + ' eventos';
    Label5.Visible := True;
    DM.SqlExecute.Next;
  end;

  if not DM.SqlExecute.Eof then
  begin
    label6.Caption := DM.SqlExecute.fieldbyname('UP_OCORRENCIA').AsString + ' = ' + DM.SqlExecute.fieldbyname('QTD').AsString + ' eventos';
    Label6.Visible := True;
    DM.SqlExecute.Next;
  end;

  if not DM.SqlExecute.Eof then
  begin
    label7.Caption := DM.SqlExecute.fieldbyname('UP_OCORRENCIA').AsString + ' = ' + DM.SqlExecute.fieldbyname('QTD').AsString + ' eventos';
    Label7.Visible := True;
    DM.SqlExecute.Next;
  end;

end;

procedure TFrmPrincipalMonitoramento.FormCreate(Sender: TObject);
begin

  case GLOBAL_ID_UP of
    101: begin
        CkPFCG.Checked := True;
        CkPFCG.Enabled := True;
      end;
    201: begin
        CkDEPEN.Checked := True;
        CkDEPEN.Enabled := True;
      end;
    301: begin
        CkPFMOS.Checked := True;
        CkPFMOS.Enabled := True;
      end;
    401: begin
        CkPFCAT.Checked := True;
        CkPFCAT.Enabled := True;
      end;
    501: begin
        CkPFPV.Checked := True;
        CkPFPV.Enabled := True;
      end;
  else begin
      ShowMessage('A Unidade Penal em que está logado não utiliza este módulo!');
    end;
  end;

  if VISUALIZA_OUTRAS_UP = 'S' then
  begin
    CkPFCG.Enabled := True;
    CkDEPEN.Enabled := True;
    CkPFMOS.Enabled := True;
    CkPFCAT.Enabled := True;
    CkPFPV.Enabled := True;
  end;

  BtnAtualizarEventosClick(nil);
end;

procedure TFrmPrincipalMonitoramento.DBGridEventosDblClick(
  Sender: TObject);
begin

  if (DBGridEventos.SelectedField.FieldName = 'ARQUIVO_RELACIONADO') and (Trim(DBGridEventos.SelectedField.AsString) <> '') then
  begin

    if ShellExecute(Handle, 'Open', PChar(DBGridEventos.SelectedField.AsString), nil,
      nil, SW_SHOWNORMAL) <= 32 then
    begin
      ShowMessage('Arquivo não encontrado!');
    end;

  end;

  if (DBGridEventos.SelectedField.FieldName = 'OBSERVACAO') and (Trim(DBGridEventos.SelectedField.AsString) <> '') then
  begin
    ShowMessage(DBGridEventos.SelectedField.AsString);
  end;

end;

procedure TFrmPrincipalMonitoramento.DsMonitoramentoEventosDataChange(
  Sender: TObject; Field: TField);
begin
  with DsMonitoramentoEventos.DataSet do
  begin

    if not Active then
    begin
      Exit;
    end;

    if IsEmpty then
    begin
      Exit;
    end;

    LbTotalEventos.Caption := '[Registro: ' + inttostr(recno) + ' de ' + inttostr(recordcount) + ']';

  end;
end;

procedure TFrmPrincipalMonitoramento.TimerEventosTimer(Sender: TObject);
begin
  BtnAtualizarEventosClick(nil);
end;

procedure TFrmPrincipalMonitoramento.FormShow(Sender: TObject);
begin
  if BtnAtualizarEventos.CanFocus then
    BtnAtualizarEventos.SetFocus;

  //************ CADASTRO ****************//
  if ((PERMISSAO_EVENTOS = '') or (PERMISSAO_EVENTOS = 'R'))
    and ((PERMISSAO_SUBEVENTOS = '') or (PERMISSAO_SUBEVENTOS = 'R')) then
  begin
    Cadastro1.Visible := False;
  end
  else
  begin
    if (PERMISSAO_EVENTOS = '') or (PERMISSAO_EVENTOS = 'R') then
    begin
      Eventos1.Visible := False;
    end;

    if (PERMISSAO_SUBEVENTOS = '') or (PERMISSAO_SUBEVENTOS = 'R') then
    begin
      SubEventos1.Visible := False;
    end;

  end;
  //************ FIM CADASTRO ****************//


  //************ LANÇAMENTOS ****************//
  if ((PERMISSAO_MONITORAMENTOEVENTOS = '') or (PERMISSAO_MONITORAMENTOEVENTOS = 'R')) then
  begin
    Lancamentos1.Visible := False;
  end
  else
  begin

    if (PERMISSAO_MONITORAMENTOEVENTOS = '') or (PERMISSAO_MONITORAMENTOEVENTOS = 'R') then
    begin
      RelatorioEventos.Visible := False;
    end;

  end;
  //************ FIM LANÇAMENTOS ****************//

end;

end.

