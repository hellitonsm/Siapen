unit ReplicacaoViaWindows;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, PrincipalSincronismo, uThreadReplicacao,
  ExtCtrls, ShellAPI, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP;

const
  wm_IconMessage = wm_User;

type
  TTipoConexao = (cOrigem, cDestino);
  TFrmReplicacaoViaWindows = class(TForm)
    MainMenu1: TMainMenu;
    Parar1: TMenuItem;
    Minimizar1: TMenuItem;
    PopupMenu1: TPopupMenu;
    TelaPrincipal1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Fechar2: TMenuItem;
    Ativar1: TMenuItem;
    Timer1: TTimer;
    IdHTTP1: TIdHTTP;
    procedure Ativar1Click(Sender: TObject);
    procedure Parar1Click(Sender: TObject);
    procedure Minimizar1Click(Sender: TObject);
    procedure TelaPrincipal1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Fechar2Click(Sender: TObject);
    procedure OnTermine(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure TrayIcon1DblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    procedure AtivaSincronismo(TipoConexao: TTipoConexao;
      sConexao: string);
    procedure OcultaBarra(Sender: TObject);
    procedure CriarIconeAtalho;
    procedure ApagariconeAtalho;
    procedure IconTray(var Msg: TMessage);
      message wm_IconMessage;
    { Private declarations }
  public
    nid: TNotifyIconData;
    { Public declarations }
  end;

var
  FrmReplicacaoViaWindows: TFrmReplicacaoViaWindows;
  FormPrincipalSincronismo: array of tFrmPrincipalSincronismo;
  num_conexao: integer;
  tot_conexao: integer;
  dentro_time: boolean;
  ThreadReplicacao: array of TThreadReplicacao;
  sDatabaseOrigens: array of string;
  ConexaoComErro: Boolean = False;
  NaoMinimizar: Boolean = false;
  FecharSistema: Boolean = false;
  sDatabaseUtilizado: string;

implementation

uses DmReplicacao, SqlExpr;

function AbreConexao(sConexao: string = ''): Boolean;
var
  sErro: string;
begin
  try
    Result := False;
    DM.SQLConnect.Connected := False;
    if sConexao <> '' then
      DM.SQLConnect.Params.Values['Database'] := sConexao;

    DM.SQLConnect.Connected := True;
    Result := DM.SQLConnect.Connected;
  except
    on e: exception do
    begin
      Result := False;
    end;
  end;
end;

{$R *.dfm}

procedure TFrmReplicacaoViaWindows.AtivaSincronismo(TipoConexao: TTipoConexao; sConexao: string);
var
  sTipoConexao, sDB_IDSINCRONISMO_CONTROLE, sDB_CONEXAO: string;

  procedure monta_form_replicacao();
  begin

    if Assigned(FormPrincipalSincronismo[num_conexao]) then
      FreeAndNil(FormPrincipalSincronismo[num_conexao]);

    FormPrincipalSincronismo[num_conexao] := tFrmPrincipalSincronismo.Create(Application);
    FormPrincipalSincronismo[num_conexao].top := (50 * (num_conexao));
    FormPrincipalSincronismo[num_conexao].Left := 0;
    FormPrincipalSincronismo[num_conexao].Width := self.Width - 40;
    FormPrincipalSincronismo[num_conexao].varIDSINCRONISMO_CONTROLE := sDB_IDSINCRONISMO_CONTROLE;
    FormPrincipalSincronismo[num_conexao].varCONEXAOOrigem := sConexao;
    FormPrincipalSincronismo[num_conexao].Tag := 0;
    FormPrincipalSincronismo[num_conexao].var_frm_Indice := num_conexao;
    FormPrincipalSincronismo[num_conexao].show;
    FormPrincipalSincronismo[num_conexao].var_Caption := sTipoConexao + ': [' + sConexao + '] - ' + '[' + sDB_CONEXAO + ']';

    // Criamos a Tread e acrescentamos suas propriedades
    ThreadReplicacao[num_conexao] := TThreadReplicacao.Create(true);
    ThreadReplicacao[num_conexao].Prioridade := 1;
    //    ThreadReplicacao[num_conexao].FormPrincipalSincronismo := FormPrincipalSincronismo[num_conexao];
    ThreadReplicacao[num_conexao].Indice := num_conexao;
    ThreadReplicacao[num_conexao].FreeOnTerminate := True;
    ThreadReplicacao[num_conexao].Conexao := num_conexao;

    if pos(UPPERCASE(sDB_CONEXAO), UPPERCASE('xx' + sDatabaseUtilizado)) = 0 then
    begin
      sDatabaseUtilizado := sDatabaseUtilizado + ',' + sDB_CONEXAO;
      sDatabaseOrigens[num_conexao] := sDB_CONEXAO;
    end;

    // Chamamos a Tread
    ThreadReplicacao[num_conexao].Resume;
  end;
begin
  Dm.SQLConnect.Params.Values['Database'] := sConexao;

  //importante para criar campos de usuario e senha na tabela sincronismo_controle;
  DM.CriarFieldsNovos(sConexao);

  if not AbreConexao(sConexao) then
  begin
    Self.Caption := 'Erro de conexão com banco de dados :' + sConexao;
    Exit;
  end;


  DM.DsControleSincronismo.DataSet.Close;
  DM.SqlControleSincronismo.SQL.Text := 'SELECT IDSINCRONISMO_CONTROLE, DESCRICAO, '
    + 'CONEXAO FROM SINCRONISMO_CONTROLE WHERE IDEMPRESA IS NULL';
  DM.DsControleSincronismo.DataSet.CursorPosChanged;
  DM.DsControleSincronismo.DataSet.Open;
  DM.DsControleSincronismo.DataSet.First;

  Self.Height := Screen.Height - 30;

  while not DM.DsControleSincronismo.DataSet.EOF do
  begin

    sDB_CONEXAO := DM.DsControleSincronismo.DataSet.FieldByname('CONEXAO').AsString;
    sDB_IDSINCRONISMO_CONTROLE := DM.DsControleSincronismo.DataSet.FieldByname('IDSINCRONISMO_CONTROLE').AsString;

    if pos(sDB_CONEXAO, 'xx' + sDatabaseUtilizado) = 0 then
      sTipoConexao := 'Local'
    else
      sTipoConexao := 'Externo';

    monta_form_replicacao;

    Inc(num_conexao);

    DM.DsControleSincronismo.DataSet.next;
  end;

  DM.DsControleSincronismo.DataSet.Close;
  DM.SQLConnect.Connected := False;
end;

procedure TFrmReplicacaoViaWindows.Ativar1Click(Sender: TObject);
var
  X, inum: Integer;
  existe_form: Boolean;
  tempo_espera: Integer;
begin
//  Sleep(1000);
  Parar1Click(nil);

  //tentativa religacao da replicacao
  existe_form := True;
  tempo_espera := 0;
  tot_conexao := num_conexao;

  while existe_form do
  begin
    existe_form := False;
    if tot_conexao > 0 then
    begin
      for inum := 0 to tot_conexao - 1 do
      begin
        if Assigned(FormPrincipalSincronismo[inum]) then
        begin
          FormPrincipalSincronismo[inum].Close;
          FreeAndNil(FormPrincipalSincronismo[inum]);
          existe_form := True;
        end;
      end;

      if existe_form then
      begin
//        Sleep(1000);
        Inc(tempo_espera);

        if tempo_espera >= 20 then
          Break;
      end;
    end;

  end;
  //tentativa religacao da replicacao

  DM.LoadParamsConnect();

  num_conexao := 0;
  tot_conexao := 0;
  SetLength(FormPrincipalSincronismo, 99);
  SetLength(ThreadReplicacao, 99);
  SetLength(sDatabaseOrigens, 99);

  sDatabaseUtilizado := Dm.SQLConnect.Params.Values['Database'];

  AtivaSincronismo(cOrigem, sDatabaseUtilizado);

  if DM.ReplicaReverso then
  begin
    for X := 0 to 98 do
    begin
      if sDatabaseOrigens[X] <> '' then
      begin
        AtivaSincronismo(cOrigem, sDatabaseOrigens[X]);
      end;
    end;
  end;

  Self.Caption := 'Total de conexões ativas :' + IntToStr(num_conexao);

  Timer1.Enabled := true;

//  Sleep(1000);

end;

procedure TFrmReplicacaoViaWindows.Parar1Click(Sender: TObject);
var
  sMensErro: string;
  inum: Integer;
  tempo_espera: Integer;
begin
  Sleep(1000);
  Timer1.Enabled := False;

  tot_conexao := num_conexao;
  for inum := 0 to tot_conexao - 1 do
  begin
    if Assigned(FormPrincipalSincronismo[inum]) then
    begin
      FrmReplicacaoViaWindows.Caption := ' [Parando Replicador: ]' + IntToStr(inum + 1);
      FormPrincipalSincronismo[inum].bParar_Sincronismo := True;
      Sleep(100);
      while FormPrincipalSincronismo[inum].Tag = 0 do
      begin
        FormPrincipalSincronismo[inum].bParar_Sincronismo := True;
        FormPrincipalSincronismo[inum].LinhaPorLinha;
        Sleep(100);
      end
    end;
  end;

  for inum := 0 to tot_conexao - 1 do
  begin
    if Assigned(ThreadReplicacao[inum]) then
//    if Assigned(FormPrincipalSincronismo[inum]) then
    begin
//      tempo_espera := 0;
//      while (FormPrincipalSincronismo[inum].Tag <> 999) and (tempo_espera < 20) do
//      begin
//        Inc(tempo_espera);
//        Sleep(100);
//      end;
      while Assigned(ThreadReplicacao[inum]) do
//      while Assigned(FormPrincipalSincronismo[inum]) do
      begin
        try
          FreeAndNil(ThreadReplicacao[inum]);
          FrmReplicacaoViaWindows.Caption := ' [Fechando Replicador: ' + IntToStr(inum + 1) + ']';
          FormPrincipalSincronismo[inum].Close;
          FrmReplicacaoViaWindows.Caption := ' [Destruindo Replicador: ' + IntToStr(inum + 1) + ']';
          FreeAndNil(FormPrincipalSincronismo[inum]);
//          FrmReplicacaoViaWindows.Caption := ' [Replicador ' + IntToStr(inum + 1) + ' Destruido]';
        except
          on e: exception do
          begin
            try
              if Assigned(FormPrincipalSincronismo[inum]) then
                FreeAndNil(FormPrincipalSincronismo[inum]);
              if Assigned(ThreadReplicacao[inum]) then
                FreeAndNil(ThreadReplicacao[inum]);
            except
            end;
            //          sMensErro := e.Message;
            //          Self.Caption := sMensErro;
          end;
        end;
      end;
    end;
  end;
  Sleep(1000);
end;

procedure TFrmReplicacaoViaWindows.Minimizar1Click(Sender: TObject);
begin
  try
    Application.Minimize;
  except
  end;
end;

procedure TFrmReplicacaoViaWindows.TelaPrincipal1Click(Sender: TObject);
begin
  try
    Application.Restore;
  except
  end;
end;

procedure TFrmReplicacaoViaWindows.Fechar1Click(Sender: TObject);
begin
  Parar1Click(nil);
  FecharSistema := true;
  close;
end;

procedure TFrmReplicacaoViaWindows.Fechar2Click(Sender: TObject);
begin
  Parar1Click(nil);
  FecharSistema := True;
  Close;
end;

procedure TFrmReplicacaoViaWindows.OnTermine(Sender: TObject);
begin
  if Assigned(FormPrincipalSincronismo[TThreadReplicacao(Sender).conexao]) then
  begin
    FormPrincipalSincronismo[TThreadReplicacao(Sender).conexao].close;
    FreeAndNil(FormPrincipalSincronismo[TThreadReplicacao(Sender).conexao]);
  end;
end;

procedure TFrmReplicacaoViaWindows.Timer1Timer(Sender: TObject);
begin
//Exit;
//  Timer1.Interval := DM.TempoReconexao * 1000;
  Timer1.Enabled := false;
  Application.OnMinimize := OcultaBarra;
  Application.OnRestore := OcultaBarra;
  Ativar1Click(nil);
  Timer1.Enabled := false;
//  Timer1.Enabled := true;
  //Application.Minimize;
end;

procedure TFrmReplicacaoViaWindows.TrayIcon1DblClick(Sender: TObject);
begin
  TelaPrincipal1Click(nil);
end;

procedure TFrmReplicacaoViaWindows.OcultaBarra(Sender: TObject);
var
  H: HWnd;
begin
  try
    if IsIconic(Application.Handle) then
    begin
      { Minimizado }
      if not NaoMinimizar then
      begin
        H := FindWindow(nil, pchar(Application.Title));
        {não Aparecer na barra de tarefa}
        if H <> 0 then
          ShowWindow(H, SW_HIDE);
        CriarIconeAtalho;
      end
      else
      begin
        { Não minimizado }
        ApagariconeAtalho;
      end;
    end
    else
    begin
      { Não minimizado }
      ApagariconeAtalho;
    end;

  except
  end;

end;

procedure TFrmReplicacaoViaWindows.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

  if not FecharSistema then
  begin
    NaoMinimizar := false;
    Application.Minimize;
    CanClose := false;
    exit;
  end;

end;

procedure TFrmReplicacaoViaWindows.CriarIconeAtalho;
var
  EstiloAtual: LongInt;
begin
  try
    // carrega o ícone inicial
    Icon.Handle := LoadIcon(HInstance, 'MAINICON');
    // preenche os dados da estrutura NotifyIcon
    nid.cbSize := sizeof(nid);
    nid.wnd := Handle;
    nid.uID := 1; // Identificador do ícone
    nid.uCallBAckMessage := wm_IconMessage;
    nid.hIcon := Application.Icon.Handle;
    nid.szTip := 'Replicação Via Windows' + #13 + #10 + 'On Line ';
    nid.uFlags := nif_Message or nif_Icon or nif_Tip;
    //  Shell_NotifyIcon (NIM_MODIFY, @nid);
    Shell_NotifyIcon(NIM_ADD, @nid);

    EstiloAtual := GetWindowLong(Handle, GWL_STYLE);
    SetWindowLong(Handle, GWL_STYLE, EstiloAtual and not WS_EX_PALETTEWINDOW);
    SetWindowPos(Handle, 0, 0, 0, 0, 0, SWP_DRAWFRAME or SWP_NOACTIVATE or
      SWP_NOMOVE or SWP_NOSIZE or SWP_NOZORDER);

  except
  end;
end;

procedure TFrmReplicacaoViaWindows.ApagariconeAtalho;
begin

  try
    nid.uFlags := 0;
    Shell_NotifyIcon(NIM_DELETE, @nid);
  except
  end;

end;

procedure TFrmReplicacaoViaWindows.IconTray(var Msg: TMessage);
var
  Pt: TPoint;
begin
  try
    if Msg.lParam = wm_rbuttondown then
    begin
      GetCursorPos(Pt);
      PopupMenu1.Popup(Pt.x, Pt.y);
    end;

    if Msg.LParam = WM_LBUTTONDBLCLK then
    begin
      Application.Restore;
      self.SetFocus;
    end;
  except
  end;

end;

procedure TFrmReplicacaoViaWindows.FormCreate(Sender: TObject);
begin
  Application.OnMinimize := OcultaBarra;
  Application.OnRestore := OcultaBarra;

end;

function PostData(sScript:string): string;
var param: TStringList;
  valid: boolean;
  url, text: string;
  http: TIDHttp;
begin
  http := TIDHttp.Create(nil);
  http.HandleRedirects := true;
  http.ReadTimeout := 5000;
  param := TStringList.create;
  param.Clear;
  param.Add('usuario=siapen');
  param.Add('senha=agepensiapsenha');
  param.Add('script='+'"update unidade_penal set endereco=''TESTE...'' "');
  valid := true;
  url := 'http://localhost/nat/atualiza.php';
  try
    text := http.Post(url, param);
  except
    on E: Exception do
    begin
      valid := false;
    end;
  end;
  if valid then
    PostData := text
  else
    PostData := '';
end;

end.

