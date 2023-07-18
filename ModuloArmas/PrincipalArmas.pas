unit PrincipalArmas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ImgList, ExtCtrls,
  Grids, DBGrids, jpeg, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls,
  System.ImageList,FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmPrincipalArmas = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Armas1: TMenuItem;
    Funcionrios1: TMenuItem;
    N1: TMenuItem;
    Relatrios1: TMenuItem;
    ImageList1: TImageList;
    Sobre1: TMenuItem;
    Sobre2: TMenuItem;
    Sair1: TMenuItem;
    Explosivos1: TMenuItem;
    Munies1: TMenuItem;
    Espargidores1: TMenuItem;
    UnidadePenal1: TMenuItem;
    PostodeTrabalho1: TMenuItem;
    Movimentaes1: TMenuItem;
    SaidaemCautela1: TMenuItem;
    DevoluodeCautela1: TMenuItem;
    Panel1: TPanel;
    Image1: TImage;
    rocadePostos1: TMenuItem;
    N2: TMenuItem;
    Manuteno11: TMenuItem;
    ManutenoIIIIVeVEscaloSaidadaUnidade1: TMenuItem;
    Inoperante1: TMenuItem;
    Munio1: TMenuItem;
    N3: TMenuItem;
    Armamento1: TMenuItem;
    Consumo1: TMenuItem;
    EntradanoPaiol1: TMenuItem;
    EmusoValidade6meses1: TMenuItem;
    N4: TMenuItem;
    Consumo2: TMenuItem;
    Panel2: TPanel;
    LabelTitulo: TLabel;
    Image2: TImage;
    Image3: TImage;
    EstravioFurtoRoubo1: TMenuItem;
    N5: TMenuItem;
    Vistoria1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Funcionrios1Click(Sender: TObject);
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
    procedure UnidadePenal1Click(Sender: TObject);
    procedure PostodeTrabalho1Click(Sender: TObject);
    procedure SaidaemCautela1Click(Sender: TObject);
    procedure DevoluodeCautela1Click(Sender: TObject);
    procedure rocadePostos1Click(Sender: TObject);
    procedure Inoperante1Click(Sender: TObject);
    procedure Manuteno11Click(Sender: TObject);
    procedure ManutenoIIIIVeVEscaloSaidadaUnidade1Click(Sender: TObject);
    procedure EntradanoPaiol1Click(Sender: TObject);
    procedure Consumo2Click(Sender: TObject);
    procedure EstravioFurtoRoubo1Click(Sender: TObject);
    procedure Vistoria1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    procedure MudarComEnter(var Msg: TMsg; var Handled: Boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipalArmas: TFrmPrincipalArmas;

implementation

uses CadastroFuncionario, Lib, DmPrincipal, Patrimonio, Sobre,
  CadastroArmas, Explosivos, Municoes, Espargidores, MenuRelatorio,
  CadastroUnidadePenal, PostoTrabalho, MovimentoPatrimonio;

{$R *.dfm}

procedure TFrmPrincipalArmas.MudarComEnter(var Msg: TMsg; var Handled: Boolean);
begin
end;

procedure TFrmPrincipalArmas.FormCreate(Sender: TObject);
var
  iComp: Integer;
begin

  for iComp := 0 to Componentcount - 1 do
    if (Components[iComp] is TSQLQuery) then
      TFDQuery(Components[iComp]).Connection := DM.SQLConnect;

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

procedure TFrmPrincipalArmas.Funcionrios1Click(Sender: TObject);
begin
  if (PERMISSAO_FUNCIONARIO = '') or (PERMISSAO_FUNCIONARIO = 'R') then
  begin

    if Sender is TMenuItem then
      ShowMessage('Não Há Permissão Para Acesso - ' + TMenuItem(Sender).Caption);

    Exit;
  end;

  FrmCadastrofuncionario := TFrmCadastrofuncionario.Create(Application);
  FrmCadastrofuncionario.ShowModal;
  FreeAndNil(FrmCadastrofuncionario);

end;

procedure TFrmPrincipalArmas.Armas1Click(Sender: TObject);
begin

  FrmCadastroArmas := TFrmCadastroArmas.Create(Application);
  FrmCadastroArmas.ShowModal;
  FreeAndNil(FrmCadastroArmas);

end;

procedure TFrmPrincipalArmas.Sobre2Click(Sender: TObject);
begin

  Frmsobre := TFrmsobre.Create(Application);
  Frmsobre.ShowModal;
  FreeAndNil(Frmsobre);

end;

procedure TFrmPrincipalArmas.Sair1Click(Sender: TObject);
begin
  close;
end;

procedure TFrmPrincipalArmas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

  CanClose := False;

  if Application.MessageBox('Sair do Sistema?',
    'Confirme', mb_YesNo + Mb_IconQuestion) = idYes then
  begin
    CanClose := True;
  end;

end;

procedure TFrmPrincipalArmas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then
  begin
    close;
  end;

end;

procedure TFrmPrincipalArmas.Explosivos1Click(Sender: TObject);
begin

  FrmExplosivos := TFrmExplosivos.Create(Application);
  FrmExplosivos.ShowModal;
  FreeAndNil(FrmExplosivos);

end;

procedure TFrmPrincipalArmas.Munies1Click(Sender: TObject);
begin
  FrmMunicoes := TFrmMunicoes.Create(Application);
  FrmMunicoes.ShowModal;
  FreeAndNil(FrmMunicoes);
end;

procedure TFrmPrincipalArmas.Espargidores1Click(Sender: TObject);
begin
  FrmEspargidores := TFrmEspargidores.Create(Application);
  FrmEspargidores.ShowModal;
  FreeAndNil(FrmEspargidores);
end;

procedure TFrmPrincipalArmas.Relatrios1Click(Sender: TObject);
begin
  FrmMenuRelatorio := TFrmMenuRelatorio.Create(Application);
  FrmMenuRelatorio.ShowModal;
  FreeAndNil(FrmMenuRelatorio);

end;

procedure TFrmPrincipalArmas.UnidadePenal1Click(Sender: TObject);
begin
  if (PERMISSAO_UNIDADEPENAL = '') or (PERMISSAO_UNIDADEPENAL = 'R') then
  begin

    if Sender is TMenuItem then
      ShowMessage('Não Há Permissão Para Acesso - ' + TMenuItem(Sender).Caption);

    Exit;
  end;

  FrmCadastroUnidadePenal := TFrmCadastroUnidadePenal.Create(Application);
  FrmCadastroUnidadePenal.ShowModal;
  FreeAndNil(FrmCadastroUnidadePenal);

end;

procedure TFrmPrincipalArmas.PostodeTrabalho1Click(Sender: TObject);
begin

  FrmPostoTrabalho := TFrmPostoTrabalho.Create(Application);
  FrmPostoTrabalho.ShowModal;
  FreeAndNil(FrmPostoTrabalho);

end;

procedure TFrmPrincipalArmas.SaidaemCautela1Click(Sender: TObject);
begin

  FrmMovimentoPatrimonio := TFrmMovimentoPatrimonio.Create(Application);
  FrmMovimentoPatrimonio.fTipo_Base := fArmamento;
  FrmMovimentoPatrimonio.fTipo_Movimento := fSaida;
  FrmMovimentoPatrimonio.ShowModal;
  FreeAndNil(FrmMovimentoPatrimonio);

end;

procedure TFrmPrincipalArmas.DevoluodeCautela1Click(Sender: TObject);
begin

  FrmMovimentoPatrimonio := TFrmMovimentoPatrimonio.Create(Application);
  FrmMovimentoPatrimonio.fTipo_Base := fArmamento;
  FrmMovimentoPatrimonio.fTipo_Movimento := fDevolucao;
  FrmMovimentoPatrimonio.ShowModal;
  FreeAndNil(FrmMovimentoPatrimonio);

end;

procedure TFrmPrincipalArmas.rocadePostos1Click(Sender: TObject);
begin

  FrmMovimentoPatrimonio := TFrmMovimentoPatrimonio.Create(Application);
  FrmMovimentoPatrimonio.fTipo_Base := fArmamento;
  FrmMovimentoPatrimonio.fTipo_Movimento := fTrocaPosto;
  FrmMovimentoPatrimonio.ShowModal;
  FreeAndNil(FrmMovimentoPatrimonio);

end;

procedure TFrmPrincipalArmas.Inoperante1Click(Sender: TObject);
begin

  FrmMovimentoPatrimonio := TFrmMovimentoPatrimonio.Create(Application);
  FrmMovimentoPatrimonio.fTipo_Base := fArmamento;
  FrmMovimentoPatrimonio.fTipo_Movimento := fInoperante;
  FrmMovimentoPatrimonio.ShowModal;
  FreeAndNil(FrmMovimentoPatrimonio);

end;

procedure TFrmPrincipalArmas.Manuteno11Click(Sender: TObject);
begin

  FrmMovimentoPatrimonio := TFrmMovimentoPatrimonio.Create(Application);
  FrmMovimentoPatrimonio.fTipo_Base := fArmamento;
  FrmMovimentoPatrimonio.fTipo_Movimento := fManutencao1;
  FrmMovimentoPatrimonio.ShowModal;
  FreeAndNil(FrmMovimentoPatrimonio);

end;

procedure TFrmPrincipalArmas.ManutenoIIIIVeVEscaloSaidadaUnidade1Click(
  Sender: TObject);
begin

  FrmMovimentoPatrimonio := TFrmMovimentoPatrimonio.Create(Application);
  FrmMovimentoPatrimonio.fTipo_Base := fArmamento;
  FrmMovimentoPatrimonio.fTipo_Movimento := fManutencao3;
  FrmMovimentoPatrimonio.ShowModal;
  FreeAndNil(FrmMovimentoPatrimonio);

end;

procedure TFrmPrincipalArmas.EntradanoPaiol1Click(Sender: TObject);
begin

  FrmMovimentoPatrimonio := TFrmMovimentoPatrimonio.Create(Application);
  FrmMovimentoPatrimonio.fTipo_Base := fArmamento;
  FrmMovimentoPatrimonio.fTipo_Movimento := fEntrada;
  FrmMovimentoPatrimonio.ShowModal;
  FreeAndNil(FrmMovimentoPatrimonio);

end;

procedure TFrmPrincipalArmas.Consumo2Click(Sender: TObject);
begin

  FrmMovimentoPatrimonio := TFrmMovimentoPatrimonio.Create(Application);
  FrmMovimentoPatrimonio.fTipo_Base := fArmamento;
  FrmMovimentoPatrimonio.fTipo_Movimento := fConsumo;
  FrmMovimentoPatrimonio.ShowModal;
  FreeAndNil(FrmMovimentoPatrimonio);

end;

procedure TFrmPrincipalArmas.EstravioFurtoRoubo1Click(Sender: TObject);
begin
  FrmMovimentoPatrimonio := TFrmMovimentoPatrimonio.Create(Application);
  FrmMovimentoPatrimonio.fTipo_Base := fArmamento;
  FrmMovimentoPatrimonio.fTipo_Movimento := fExtravio;
  FrmMovimentoPatrimonio.ShowModal;
  FreeAndNil(FrmMovimentoPatrimonio);
end;

procedure TFrmPrincipalArmas.Vistoria1Click(Sender: TObject);
begin
  FrmMovimentoPatrimonio := TFrmMovimentoPatrimonio.Create(Application);
  FrmMovimentoPatrimonio.fTipo_Base := fArmamento;
  FrmMovimentoPatrimonio.fTipo_Movimento := fVistoria;
  FrmMovimentoPatrimonio.ShowModal;
  FreeAndNil(FrmMovimentoPatrimonio);
end;

procedure TFrmPrincipalArmas.FormActivate(Sender: TObject);
begin
  if GLOBAL_IDCONEXAO > 0 then
  begin
    IniciaTransMovimento;
    try
      DM.SQLConnect.Execsql('update conexao set tela_momento = ' + qs(Self.Caption)
        + ' where idconexao=' + IntToStr(GLOBAL_IDCONEXAO));
    except
    end;
    FinalizaTransMovimento;
  end;

end;

end.

