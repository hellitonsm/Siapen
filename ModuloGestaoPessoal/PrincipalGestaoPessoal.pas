unit PrincipalGestaoPessoal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ImgList, ExtCtrls,
  Grids, DBGrids, jpeg, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls,
  DBCtrls, ToolWin, frxClass, frxPreview, Buttons, System.ImageList;

type
  TFrmPrincipalGestaoPessoal = class(TForm)
    MainMenu1: TMainMenu;
    mnuCadastro: TMenuItem;
    mnuFuncionarios: TMenuItem;
    Relatrios1: TMenuItem;
    ImageList1: TImageList;
    Sobre1: TMenuItem;
    Sobre2: TMenuItem;
    Sair1: TMenuItem;
    mnuUnidadePenal: TMenuItem;
    Movimentaes1: TMenuItem;
    MnuMemorando: TMenuItem;
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    LabelTitulo: TLabel;
    Image2: TImage;
    Image3: TImage;
    mnuOrdemMissao: TMenuItem;
    mnuOrgao: TMenuItem;
    mnuOficios: TMenuItem;
    mnuSolicitacaoVagas: TMenuItem;
    mnuMeioTransporte: TMenuItem;
    mnuItinerario: TMenuItem;
    mnuEscolta: TMenuItem;
    mnuItinerarioEscolta: TMenuItem;
    mnuInterno: TMenuItem;
    FuncionrioAutorizador1: TMenuItem;
    BtnSolVagas: TBitBtn;
    BtnOficios: TBitBtn;
    BtnEscolta: TBitBtn;
    BtnRelatorios: TBitBtn;
    BtnMemorando: TBitBtn;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure mnuFuncionariosClick(Sender: TObject);
    procedure Armas1Click(Sender: TObject);
    procedure Sobre2Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Explosivos1Click(Sender: TObject);
    procedure Munies1Click(Sender: TObject);
    procedure Espargidores1Click(Sender: TObject);
    procedure Relatrios1Click(Sender: TObject);
    procedure mnuUnidadePenalClick(Sender: TObject);
    procedure PostodeTrabalho1Click(Sender: TObject);
    procedure SaidaemCautela1Click(Sender: TObject);
    procedure MnuMemorandoClick(Sender: TObject);
    procedure rocadePostos1Click(Sender: TObject);
    procedure Inoperante1Click(Sender: TObject);
    procedure Manuteno11Click(Sender: TObject);
    procedure ManutenoIIIIVeVEscaloSaidadaUnidade1Click(Sender: TObject);
    procedure EntradanoPaiol1Click(Sender: TObject);
    procedure Consumo2Click(Sender: TObject);
    procedure mnuOrdemMissaoClick(Sender: TObject);
    procedure Vistoria1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure mnuOrgaoClick(Sender: TObject);
    procedure mnuOficiosClick(Sender: TObject);
    procedure mnuSolicitacaoVagasClick(Sender: TObject);
    procedure mnuMeioTransporteClick(Sender: TObject);
    procedure mnuItinerarioClick(Sender: TObject);
    procedure mnuEscoltaClick(Sender: TObject);
    procedure mnuItinerarioEscoltaClick(Sender: TObject);
    procedure mnuInternoClick(Sender: TObject);
    procedure FuncionrioAutorizador1Click(Sender: TObject);
    procedure BtnSolVagasClick(Sender: TObject);
    procedure BtnOficiosClick(Sender: TObject);
    procedure BtnEscoltaClick(Sender: TObject);
    procedure BtnMemorandoClick(Sender: TObject);
    procedure BtnRelatoriosClick(Sender: TObject);
  private
    procedure MudarComEnter(var Msg: TMsg; var Handled: Boolean);
    { Private declarations }
  public
    { Public declarations }
    //esta função testa em qual modulo a pessoa vai logar
    //se entrar neste modulo, a aba ficará invisivel

  end;

var
  FrmPrincipalGestaoPessoal: TFrmPrincipalGestaoPessoal;

implementation

uses CadastroFuncionario, Lib, DmPrincipal, Patrimonio, Sobre,
  CadastroArmas, Explosivos, Municoes, Espargidores, MenuRelatorio,
  CadastroUnidadePenal, PostoTrabalho, MovimentoPatrimonio, Memorando,
  OrgaoSolicitante, DocOficio, CadastroSolicitacaoVaga,
  CadastroMeioTransporte, CadastroItinerario, CadastroEscolta,
  CadastroItinerarioEscolta, CadastroInterno,
  CadastroFuncionarioAutorizador;

{$R *.dfm}

procedure TFrmPrincipalGestaoPessoal.MudarComEnter(var Msg: TMsg; var Handled: Boolean);
begin
end;


procedure TFrmPrincipalGestaoPessoal.FormCreate(Sender: TObject);
var
  iComp: Integer;
begin

  for iComp := 0 to Componentcount - 1 do
    if (Components[iComp] is TSQLQuery) then
      TSQLQuery(Components[iComp]).SQLConnection := DM.SQLConnect;

  if (Screen.Width <= 800) and (Screen.Height <= 600) then
  begin
    Image1.Left := Trunc((Screen.Width - Image1.Width) / 2);
    Image1.Top := Trunc((Screen.Height - Image1.Height) / 2);
  end
  else
  begin
    Image1.Left := Trunc((Screen.Width - Image1.Width) / 2);
    Image1.Top := Trunc((Screen.Height - Image1.Height) / 2) - 40;
  end;

  if FileExists('LogoTela.jpg') then
    Image1.Picture.LoadFromFile('logotela.jpg');

  LabelTitulo.Caption := GLOBAL_DEPARTAMENTO;

end;

procedure TFrmPrincipalGestaoPessoal.mnuFuncionariosClick(Sender: TObject);
begin
  if (PERMISSAO_FUNCIONARIO = '') or (PERMISSAO_FUNCIONARIO = 'R') then
  begin

    if Sender is TMenuItem then
      ShowMessage('Não Há Permissão Para Acesso - ' + TMenuItem(Sender).Caption);

    Exit;
  end;

  FrmCadastrofuncionario := TFrmCadastrofuncionario.Create(Application);
  FrmCadastrofuncionario.TabPermissao.TabVisible := false;
  FrmCadastrofuncionario.ShowModal;
  FreeAndNil(FrmCadastrofuncionario);

end;

procedure TFrmPrincipalGestaoPessoal.Armas1Click(Sender: TObject);
begin
  if (PERMISSAO_ARMAS = '') or (PERMISSAO_ARMAS = 'R') then
  begin

    if Sender is TMenuItem then
      ShowMessage('Não Há Permissão Para Acesso - ' + TMenuItem(Sender).Caption);

    Exit;
  end;

  FrmCadastroArmas := TFrmCadastroArmas.Create(Application);
  FrmCadastroArmas.ShowModal;
  FreeAndNil(FrmCadastroArmas);

end;

procedure TFrmPrincipalGestaoPessoal.Sobre2Click(Sender: TObject);
begin

  Frmsobre := TFrmsobre.Create(Application);
  Frmsobre.ShowModal;
  FreeAndNil(Frmsobre);

end;

procedure TFrmPrincipalGestaoPessoal.Sair1Click(Sender: TObject);
begin
  close;
end;

procedure TFrmPrincipalGestaoPessoal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

  CanClose := False;

  if Application.MessageBox('Sair do Sistema?',
    'Confirme', mb_YesNo + Mb_IconQuestion) = idYes then
  begin
    CanClose := True;
  end;

end;

procedure TFrmPrincipalGestaoPessoal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
  begin
    close;
  end;

end;

procedure TFrmPrincipalGestaoPessoal.Explosivos1Click(Sender: TObject);
begin
  FrmExplosivos := TFrmExplosivos.Create(Application);
  FrmExplosivos.ShowModal;
  FreeAndNil(FrmExplosivos);

end;

procedure TFrmPrincipalGestaoPessoal.Munies1Click(Sender: TObject);
begin
  FrmMunicoes := TFrmMunicoes.Create(Application);
  FrmMunicoes.ShowModal;
  FreeAndNil(FrmMunicoes);
end;

procedure TFrmPrincipalGestaoPessoal.Espargidores1Click(Sender: TObject);
begin
  FrmEspargidores := TFrmEspargidores.Create(Application);
  FrmEspargidores.ShowModal;
  FreeAndNil(FrmEspargidores);
end;

procedure TFrmPrincipalGestaoPessoal.Relatrios1Click(Sender: TObject);
begin
  FrmMenuRelatorio := TFrmMenuRelatorio.Create(Application);
  FrmMenuRelatorio.ShowModal;
  FreeAndNil(FrmMenuRelatorio);

end;

procedure TFrmPrincipalGestaoPessoal.mnuUnidadePenalClick(Sender: TObject);
begin
  if not (PERMISSAO_UNIDADEPENAL = '') or (PERMISSAO_UNIDADEPENAL = 'R') then
  begin

    if Sender is TMenuItem then
      ShowMessage('Não Há Permissão Para Acesso - ' + TMenuItem(Sender).Caption);

    Exit;
  end;

  FrmCadastroUnidadePenal := TFrmCadastroUnidadePenal.Create(Application);
  FrmCadastroUnidadePenal.ShowModal;
  FreeAndNil(FrmCadastroUnidadePenal);

end;

procedure TFrmPrincipalGestaoPessoal.PostodeTrabalho1Click(Sender: TObject);
begin

  FrmPostoTrabalho := TFrmPostoTrabalho.Create(Application);
  FrmPostoTrabalho.ShowModal;
  FreeAndNil(FrmPostoTrabalho);

end;

procedure TFrmPrincipalGestaoPessoal.SaidaemCautela1Click(Sender: TObject);
begin

  FrmMovimentoPatrimonio := TFrmMovimentoPatrimonio.Create(Application);
  FrmMovimentoPatrimonio.fTipo_Base := fArmamento;
  FrmMovimentoPatrimonio.fTipo_Movimento := fSaida;
  FrmMovimentoPatrimonio.ShowModal;
  FreeAndNil(FrmMovimentoPatrimonio);

end;

procedure TFrmPrincipalGestaoPessoal.MnuMemorandoClick(Sender: TObject);
begin

  frmMemorando := TfrmMemorando.Create(Application);
  frmMemorando.ShowModal;
  FreeAndNil(frmMemorando);

end;

procedure TFrmPrincipalGestaoPessoal.rocadePostos1Click(Sender: TObject);
begin

  FrmMovimentoPatrimonio := TFrmMovimentoPatrimonio.Create(Application);
  FrmMovimentoPatrimonio.fTipo_Base := fArmamento;
  FrmMovimentoPatrimonio.fTipo_Movimento := fTrocaPosto;
  FrmMovimentoPatrimonio.ShowModal;
  FreeAndNil(FrmMovimentoPatrimonio);

end;

procedure TFrmPrincipalGestaoPessoal.Inoperante1Click(Sender: TObject);
begin

  FrmMovimentoPatrimonio := TFrmMovimentoPatrimonio.Create(Application);
  FrmMovimentoPatrimonio.fTipo_Base := fArmamento;
  FrmMovimentoPatrimonio.fTipo_Movimento := fInoperante;
  FrmMovimentoPatrimonio.ShowModal;
  FreeAndNil(FrmMovimentoPatrimonio);

end;

procedure TFrmPrincipalGestaoPessoal.Manuteno11Click(Sender: TObject);
begin

  FrmMovimentoPatrimonio := TFrmMovimentoPatrimonio.Create(Application);
  FrmMovimentoPatrimonio.fTipo_Base := fArmamento;
  FrmMovimentoPatrimonio.fTipo_Movimento := fManutencao1;
  FrmMovimentoPatrimonio.ShowModal;
  FreeAndNil(FrmMovimentoPatrimonio);

end;

procedure TFrmPrincipalGestaoPessoal.ManutenoIIIIVeVEscaloSaidadaUnidade1Click(
  Sender: TObject);
begin

  FrmMovimentoPatrimonio := TFrmMovimentoPatrimonio.Create(Application);
  FrmMovimentoPatrimonio.fTipo_Base := fArmamento;
  FrmMovimentoPatrimonio.fTipo_Movimento := fManutencao3;
  FrmMovimentoPatrimonio.ShowModal;
  FreeAndNil(FrmMovimentoPatrimonio);

end;

procedure TFrmPrincipalGestaoPessoal.EntradanoPaiol1Click(Sender: TObject);
begin

  FrmMovimentoPatrimonio := TFrmMovimentoPatrimonio.Create(Application);
  FrmMovimentoPatrimonio.fTipo_Base := fArmamento;
  FrmMovimentoPatrimonio.fTipo_Movimento := fEntrada;
  FrmMovimentoPatrimonio.ShowModal;
  FreeAndNil(FrmMovimentoPatrimonio);

end;

procedure TFrmPrincipalGestaoPessoal.Consumo2Click(Sender: TObject);
begin

  FrmMovimentoPatrimonio := TFrmMovimentoPatrimonio.Create(Application);
  FrmMovimentoPatrimonio.fTipo_Base := fArmamento;
  FrmMovimentoPatrimonio.fTipo_Movimento := fConsumo;
  FrmMovimentoPatrimonio.ShowModal;
  FreeAndNil(FrmMovimentoPatrimonio);

end;

procedure TFrmPrincipalGestaoPessoal.mnuOrdemMissaoClick(Sender: TObject);
begin
  FrmMovimentoPatrimonio := TFrmMovimentoPatrimonio.Create(Application);
  FrmMovimentoPatrimonio.fTipo_Base := fArmamento;
  FrmMovimentoPatrimonio.fTipo_Movimento := fExtravio;
  FrmMovimentoPatrimonio.ShowModal;
  FreeAndNil(FrmMovimentoPatrimonio);
end;

procedure TFrmPrincipalGestaoPessoal.Vistoria1Click(Sender: TObject);
begin
  FrmMovimentoPatrimonio := TFrmMovimentoPatrimonio.Create(Application);
  FrmMovimentoPatrimonio.fTipo_Base := fArmamento;
  FrmMovimentoPatrimonio.fTipo_Movimento := fVistoria;
  FrmMovimentoPatrimonio.ShowModal;
  FreeAndNil(FrmMovimentoPatrimonio);
end;

procedure TFrmPrincipalGestaoPessoal.FormActivate(Sender: TObject);
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

procedure TFrmPrincipalGestaoPessoal.mnuOrgaoClick(Sender: TObject);
begin
  frmOrgaoSolicitante := TfrmOrgaoSolicitante.Create(Application);
  frmOrgaoSolicitante.ShowModal;
  FreeAndNil(frmOrgaoSolicitante);
end;

procedure TFrmPrincipalGestaoPessoal.mnuOficiosClick(Sender: TObject);
begin
  frmDocOficio := TfrmDocOficio.Create(Application);
  frmDocOficio.ShowModal;
  FreeAndNil(frmDocOficio);
end;

procedure TFrmPrincipalGestaoPessoal.mnuSolicitacaoVagasClick(
  Sender: TObject);
begin
  frmSolicitacaoVaga := TfrmSolicitacaoVaga.Create(Application);
  frmSolicitacaoVaga.ShowModal;
  FreeAndNil(frmSolicitacaoVaga);
end;

procedure TFrmPrincipalGestaoPessoal.mnuMeioTransporteClick(
  Sender: TObject);
begin
  FrmCadastroMeioTransporte := TFrmCadastroMeioTransporte.Create(Application);
  FrmCadastroMeioTransporte.ShowModal;
  FreeAndNil(FrmCadastroMeioTransporte);
end;

procedure TFrmPrincipalGestaoPessoal.mnuItinerarioClick(Sender: TObject);
begin
  frmCadastroItinerario := TfrmCadastroItinerario.Create(Application);
  frmCadastroItinerario.ShowModal;
  FreeAndNil(frmCadastroItinerario);
end;

procedure TFrmPrincipalGestaoPessoal.mnuEscoltaClick(Sender: TObject);
begin
  frmCadastroEscolta := TfrmCadastroEscolta.Create(Application);
  frmCadastroEscolta.ShowModal;
  FreeAndNil(frmCadastroEscolta);
end;

procedure TFrmPrincipalGestaoPessoal.mnuItinerarioEscoltaClick(
  Sender: TObject);
begin
  FrmItinerarioEscolta := TFrmItinerarioEscolta.Create(Application);
  FrmItinerarioEscolta.ShowModal;
  FreeAndNil(FrmItinerarioEscolta);

end;

procedure TFrmPrincipalGestaoPessoal.mnuInternoClick(Sender: TObject);
begin
  frmCadastroInterno := TfrmCadastroInterno.Create(Application);
  frmCadastroInterno.ShowModal;
  FreeAndNil(frmCadastroInterno);
end;

procedure TFrmPrincipalGestaoPessoal.FuncionrioAutorizador1Click(
  Sender: TObject);
begin
  FrmCadastroFuncionarioAutorizador := TFrmCadastroFuncionarioAutorizador.Create(Application);
  FrmCadastroFuncionarioAutorizador.ShowModal;
  FreeAndNil(FrmCadastroFuncionarioAutorizador);

end;

procedure TFrmPrincipalGestaoPessoal.BtnSolVagasClick(Sender: TObject);
begin
  frmSolicitacaoVaga := TfrmSolicitacaoVaga.Create(Application);
  frmSolicitacaoVaga.ShowModal;
  FreeAndNil(frmSolicitacaoVaga);
end;

procedure TFrmPrincipalGestaoPessoal.BtnOficiosClick(Sender: TObject);
begin
  frmDocOficio := TfrmDocOficio.Create(Application);
  frmDocOficio.ShowModal;
  FreeAndNil(frmDocOficio);
end;

procedure TFrmPrincipalGestaoPessoal.BtnEscoltaClick(Sender: TObject);
begin
  frmCadastroEscolta := TfrmCadastroEscolta.Create(Application);
  frmCadastroEscolta.ShowModal;
  FreeAndNil(frmCadastroEscolta);
end;

procedure TFrmPrincipalGestaoPessoal.BtnMemorandoClick(Sender: TObject);
begin
  frmMemorando := TfrmMemorando.Create(Application);
  frmMemorando.ShowModal;
  FreeAndNil(frmMemorando);
end;

procedure TFrmPrincipalGestaoPessoal.BtnRelatoriosClick(Sender: TObject);
begin
  FrmMenuRelatorio := TFrmMenuRelatorio.Create(Application);
  FrmMenuRelatorio.ShowModal;
  FreeAndNil(FrmMenuRelatorio);
end;

end.

