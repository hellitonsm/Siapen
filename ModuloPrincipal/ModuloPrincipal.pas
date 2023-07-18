unit ModuloPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, Buttons, StdCtrls,
  Grids,
  frxClass,
  frxPreview,
  frxChart,
  ComCtrls,
  ImgList,
  DBGrids, ToolWin, FMTBcd, DB, DBClient, Provider, SqlExpr, frxDBSet,
  frxGradient, frxDock, frxDBXComponents, DBCtrls, Mask, ColorGrd,
  System.ImageList, IniFiles, System.IOUtils, RoundedPanel, progresso,
  Threading,FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmModuloPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Visitantes1: TMenuItem;
    SetorTrabalho1: TMenuItem;
    SetordeEducao1: TMenuItem;
    Cadastro1: TMenuItem;
    Cela1: TMenuItem;
    Pavilho1: TMenuItem;
    Galeria1: TMenuItem;
    Solario1: TMenuItem;
    N2: TMenuItem;
    CadastrodeInternos2: TMenuItem;
    Procedncia1: TMenuItem;
    cIDADE1: TMenuItem;
    N3: TMenuItem;
    Relatrios1: TMenuItem;
    Advogado1: TMenuItem;
    Escolaridade1: TMenuItem;
    Raa1: TMenuItem;
    Nacionalidade1: TMenuItem;
    N4: TMenuItem;
    Visitante1: TMenuItem;
    GrauParentesco1: TMenuItem;
    CondiodoInterno1: TMenuItem;
    Bevel1: TBevel;
    Destino1: TMenuItem;
    FunoFuncionrio1: TMenuItem;
    ConsultaInterno1: TMenuItem;
    Interno1: TMenuItem;
    EntradadeVisitantes1: TMenuItem;
    PanelCabecalho: TPanel;
    Image2: TImage;
    TimerAtivaImagem: TTimer;
    TimerDataHora: TTimer;
    Configurao1: TMenuItem;
    Sair1: TMenuItem;
    Funcionrio2: TMenuItem;
    trabalho2: TMenuItem;
    SetorTrabalho2: TMenuItem;
    UnidadePenal2: TMenuItem;
    ClculodeTrabalho1: TMenuItem;
    FunoInterno1: TMenuItem;
    Consulta1: TMenuItem;
    Profisso1: TMenuItem;
    Manuteno1: TMenuItem;
    rocarSenha1: TMenuItem;
    SrieFaseAtual1: TMenuItem;
    educ: TMenuItem;
    N1: TMenuItem;
    PadroSist1: TMenuItem;
    PSICOSSOCIAL1: TMenuItem;
    Jurdica1: TMenuItem;
    disciplina1: TMenuItem;
    frxReport1: TfrxReport;
    frxChartObject1: TfrxChartObject;
    PopupMenu1: TPopupMenu;
    Desing1: TMenuItem;
    Agendamento1: TMenuItem;
    ipodeContatos1: TMenuItem;
    Assunto1: TMenuItem;
    Situao1: TMenuItem;
    N5: TMenuItem;
    AgendadeAtendimento1: TMenuItem;
    frxReport2: TfrxReport;
    pm1: TPopupMenu;
    MenuItem1: TMenuItem;
    tmr1: TTimer;
    Reabilitao1: TMenuItem;
    Sade1: TMenuItem;
    ServicoSocial: TMenuItem;
    erapiaOcupacional: TMenuItem;
    Pedagogia: TMenuItem;
    Enfermagem: TMenuItem;
    farmacia: TMenuItem;
    clinicamedica: TMenuItem;
    Psiquiatria: TMenuItem;
    Odontologia: TMenuItem;
    Psicologia: TMenuItem;
    Disciplina2: TMenuItem;
    FaltaDisciplinar1: TMenuItem;
    Setores1: TMenuItem;
    MenudeRelatrios1: TMenuItem;
    PageControlSiap: TPageControl;
    TabSheet1: TTabSheet;
    Image1: TImage;
    LabelLOGIN: TLabel;
    LabelDatabase: TLabel;
    LabelDATA_HORA: TLabel;
    BitBtn7: TBitBtn;
    BtnAgendaAtendimento: TBitBtn;
    BtnConfere: TBitBtn;
    Btnconsultageral: TBitBtn;
    Btnrelatorio: TBitBtn;
    pnl1: TPanel;
    frxPreview2: TfrxPreview;
    Panel1: TPanel;
    frxPreview1: TfrxPreview;
    TabSheet2: TTabSheet;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    Sobre1: TMenuItem;
    BitBtn16: TBitBtn;
    N6: TMenuItem;
    Sade2: TMenuItem;
    ImageList1: TImageList;
    N7: TMenuItem;
    N8: TMenuItem;
    Processos1: TMenuItem;
    Jurdico1: TMenuItem;
    Artigo1: TMenuItem;
    N9: TMenuItem;
    TabSheetProcedimentos: TTabSheet;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    Livro1: TMenuItem;
    Remdio1: TMenuItem;
    Fornecedor1: TMenuItem;
    SqlMovProcDetalhado: TSQLQuery;
    DspMovProcDetalhado: TDataSetProvider;
    CdsMovProcDetalhado: TClientDataSet;
    DsMovProcDetalhado: TDataSource;
    ToolButtonAtualizar: TToolButton;
    N10: TMenuItem;
    Equipe1: TMenuItem;
    PostoLocaldeTrabalho1: TMenuItem;
    AgenteporEquipe1: TMenuItem;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    PopupMenuProcedimentos: TPopupMenu;
    Encerrar1: TMenuItem;
    Panel2: TPanel;
    frxDBDataset1: TfrxDBDataset;
    frxGradientObject1: TfrxGradientObject;
    frxPreview3: TfrxPreview;
    frxReport3: TfrxReport;
    RadioGroupDiaProcedimento: TRadioGroup;
    RadioGroupEncerrado: TRadioGroup;
    frxReportOutros: TfrxReport;
    ToolButtonPostoTrabalho: TToolButton;
    Informaes1: TMenuItem;
    N11: TMenuItem;
    MudaSkin1: TMenuItem;
    TabSheetEscala: TTabSheet;
    DBGridEscalaPlantao: TDBGrid;
    HorarioFuncionrio1: TMenuItem;
    Panel3: TPanel;
    DateTimePickerEscala: TDateTimePicker;
    Label1: TLabel;
    BitBtn17: TBitBtn;
    BitBtn19: TBitBtn;
    N12: TMenuItem;
    MensagemdoBancodeDados1: TMenuItem;
    Patrimnio1: TMenuItem;
    CadastrodePatrimonio1: TMenuItem;
    N13: TMenuItem;
    ipodePatrimnio1: TMenuItem;
    SqlEscalaPlantao: TSQLQuery;
    DspEscalaPlantao: TDataSetProvider;
    CdsEscalaPlantao: TClientDataSet;
    DsEscalaPlantao: TDataSource;
    CdsEscalaPlantaoIDESCALA_PLANTAO: TIntegerField;
    CdsEscalaPlantaoIDEQUIPE: TIntegerField;
    CdsEscalaPlantaoIDFUNCIONARIO: TIntegerField;
    CdsEscalaPlantaoIDFUNC_SUBSTITUTO: TIntegerField;
    CdsEscalaPlantaoIDPOSTO_TRABALHO: TIntegerField;
    CdsEscalaPlantaoDATA_PLANTAO: TSQLTimeStampField;
    CdsEscalaPlantaoHORA_INICIO: TTimeField;
    CdsEscalaPlantaoHORA_FIM: TTimeField;
    CdsEscalaPlantaoPOSTO_ROTATIVO: TStringField;
    CdsEscalaPlantaoOBSERVACOES: TStringField;
    CdsEscalaPlantaoEQUIPE: TStringField;
    CdsEscalaPlantaoNOME_FUNCIONARIO: TStringField;
    CdsEscalaPlantaoPOSTO_TRABALHO: TStringField;
    BtnAtualizarEscalaDia: TBitBtn;
    DBLookupComboBoxEquipe: TDBLookupComboBox;
    Label3: TLabel;
    CdsEscalaPlantaoSUBSTITUTO: TStringField;
    DBNavigator1: TDBNavigator;
    BitBtn18: TBitBtn;
    Inteligncia1: TMenuItem;
    CTC1: TMenuItem;
    N14: TMenuItem;
    DBLookupComboBoxUP: TDBLookupComboBox;
    DsUP: TDataSource;
    CdsUP: TClientDataSet;
    DspUP: TDataSetProvider;
    SqlUP: TSQLQuery;
    ControledePortaria1: TMenuItem;
    N15: TMenuItem;
    MduloGestodeArmas1: TMenuItem;
    N16: TMenuItem;
    Mdulos1: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    BitBtn20: TBitBtn;
    N20: TMenuItem;
    Copiarumarquivo1: TMenuItem;
    TabSheet3: TTabSheet;
    N21: TMenuItem;
    PlanilhaDinmica1: TMenuItem;
    Detrao1: TMenuItem;
    N22: TMenuItem;
    InterrupesdaPena1: TMenuItem;
    RemiesdePena1: TMenuItem;
    N23: TMenuItem;
    ConsultaPROCED1: TMenuItem;
    N24: TMenuItem;
    VaradeExecuo1: TMenuItem;
    Movimentao1: TMenuItem;
    ransfernciadeInterno1: TMenuItem;
    Saido1: TMenuItem;
    N25: TMenuItem;
    RecebimentodeTransferncia1: TMenuItem;
    Identificacao: TTabSheet;
    SQLfuncionario: TSQLQuery;
    dspfuncionario: TDataSetProvider;
    cdsfuncionario: TClientDataSet;
    DsFuncionario: TDataSource;
    DBImageFOTOFUNCIONARIO: TDBImage;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBText2: TDBText;
    DBText4: TDBText;
    OpenDialog1: TOpenDialog;
    DBText1: TDBText;
    SqlUltimosLogs: TSQLQuery;
    DspUltimosLogs: TDataSetProvider;
    CdsUltimosLogs: TClientDataSet;
    DsUltimosLogs: TDataSource;
    PageControl1: TPageControl;
    TabSheet5: TTabSheet;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    ransfernciadeInternoMovimentoInterno1: TMenuItem;
    N26: TMenuItem;
    TabSheetInteligencia: TTabSheet;
    MemoInteligencia: TMemo;
    TimerIdentificacao: TTimer;
    N28: TMenuItem;
    N29: TMenuItem;
    Manual1: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    RegraparaVisitano1: TMenuItem;
    N27: TMenuItem;
    SiapenMessenger1: TMenuItem;
    N32: TMenuItem;
    DepartamentoPEssoal1: TMenuItem;
    DadosUsuarioLogado: TMenuItem;
    BancodeHoras1: TMenuItem;
    CirculaodeInterno1: TMenuItem;
    N34: TMenuItem;
    MduloGestodePessoas1: TMenuItem;
    RemioTrabalho1: TMenuItem;
    Planto1: TMenuItem;
    Roupas1: TMenuItem;
    N35: TMenuItem;
    MovimentoSemiAberto1: TMenuItem;
    N36: TMenuItem;
    MonitoramentoEletrnico1: TMenuItem;
    AtribuicaoSetores1: TMenuItem;
    Ocorrncias1: TMenuItem;
    Faco1: TMenuItem;
    RadioGroupBancoDados: TRadioGroup;
    N37: TMenuItem;
    LocalizaoPorPronturio1: TMenuItem;
    N38: TMenuItem;
    WebBrowser1: TMenuItem;
    Biometria1: TMenuItem;
    Biometria2: TMenuItem;
    ConselhoDi1: TMenuItem;
    mnuCorrespondencia: TMenuItem;
    VisitantesTrfico1: TMenuItem;
    CadastroPortaria1: TMenuItem;
    BitBtnOcorrencia: TBitBtn;
    PerfildeUsurio1: TMenuItem;
    Monitoramento1: TMenuItem;
    N33: TMenuItem;
    TimeraAtualizaRelAgendaDia: TTimer;
    TimerAtualizaRelQtdPresos: TTimer;
    CargaHorria1: TMenuItem;
    RoundedPanel1: TRoundedPanel;
    verlogs: TButton;
    procedure CadastrodeInternos1Click(Sender: TObject);
    procedure Cela1Click(Sender: TObject);
    procedure Galeria1Click(Sender: TObject);
    procedure Pavilho1Click(Sender: TObject);
    procedure Solario1Click(Sender: TObject);
    procedure Procedncia1Click(Sender: TObject);
    procedure cIDADE1Click(Sender: TObject);
    procedure Advogado1Click(Sender: TObject);
    procedure Escolaridade1Click(Sender: TObject);
    procedure Raa1Click(Sender: TObject);
    procedure CadastrarnoConfere1Click(Sender: TObject);
    procedure GrauParentesco1Click(Sender: TObject);
    procedure Visitante1Click(Sender: TObject);
    procedure CondiodoInterno1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Destino1Click(Sender: TObject);
    procedure DadosUsuarioLogadoClick(Sender: TObject);
    procedure FunoFuncionrio1Click(Sender: TObject);
    procedure Interno1Click(Sender: TObject);
    procedure BtnConfereClick(Sender: TObject);
    procedure EntradadeVisitantes1Click(Sender: TObject);
    procedure BtnrelatorioClick(Sender: TObject);
    procedure TimerAtivaImagemTimer(Sender: TObject);
    procedure TimerDataHoraTimer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BtnconsultageralClick(Sender: TObject);
    procedure Funcionrio2Click(Sender: TObject);
    procedure trabalho2Click(Sender: TObject);
    procedure SetorTrabalho2Click(Sender: TObject);
    procedure UnidadePenal2Click(Sender: TObject);
    procedure ClculodeTrabalho1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FunoInterno1Click(Sender: TObject);
    procedure BtnAgendaAtendimentoClick(Sender: TObject);
    procedure Consulta1Click(Sender: TObject);
    procedure Nacionalidade1Click(Sender: TObject);
    procedure Profisso1Click(Sender: TObject);
    procedure rocarSenha1Click(Sender: TObject);
    procedure SrieFaseAtual1Click(Sender: TObject);
    procedure educClick(Sender: TObject);
    procedure BtneducacaoClick(Sender: TObject);
    procedure Destino2Click(Sender: TObject);
    procedure Procedncia2Click(Sender: TObject);
    procedure PadroSist1Click(Sender: TObject);
    procedure PSICOSSOCIAL1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure frxPreview1Click(Sender: TObject);
    procedure Desing1Click(Sender: TObject);
    procedure ipodeContatos1Click(Sender: TObject);
    procedure Assunto1Click(Sender: TObject);
    procedure Situao1Click(Sender: TObject);
    procedure AgendadeAtendimento1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure PedagogiaClick(Sender: TObject);
    procedure FaltaDisciplinar1Click(Sender: TObject);
    procedure ServicoSocialClick(Sender: TObject);
    procedure EnfermagemClick(Sender: TObject);
    procedure farmaciaClick(Sender: TObject);
    procedure clinicamedicaClick(Sender: TObject);
    procedure PsiquiatriaClick(Sender: TObject);
    procedure OdontologiaClick(Sender: TObject);
    procedure PsicologiaClick(Sender: TObject);
    procedure erapiaOcupacionalClick(Sender: TObject);
    procedure Disciplina2Click(Sender: TObject);
    procedure MenudeRelatrios1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure Sade2Click(Sender: TObject);
    procedure Jurdico1Click(Sender: TObject);
    procedure Artigo1Click(Sender: TObject);
    procedure Processos1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure Livro1Click(Sender: TObject);
    procedure Remdio1Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure ToolButtonAtualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Equipe1Click(Sender: TObject);
    procedure PostoLocaldeTrabalho1Click(Sender: TObject);
    procedure AgenteporEquipe1Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure Encerrar1Click(Sender: TObject);
    procedure DBGridProcedimentosDblClick(Sender: TObject);
    procedure DBGridProcedimentosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure frxReport3ClickObject(Sender: TfrxView; Button: TMouseButton;
      Shift: TShiftState; var Modified: Boolean);
    procedure RadioGroupEncerradoClick(Sender: TObject);
    procedure RadioGroupDiaProcedimentoClick(Sender: TObject);
    procedure PageControlSiapChange(Sender: TObject);
    procedure ToolButtonPostoTrabalhoClick(Sender: TObject);
    procedure MudaSkin1Click(Sender: TObject);
    procedure HorarioFuncionrio1Click(Sender: TObject);
    procedure MensagemdoBancodeDados1Click(Sender: TObject);
    procedure ipodePatrimnio1Click(Sender: TObject);
    procedure CadastrodePatrimonio1Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BtnAtualizarEscalaDiaClick(Sender: TObject);
    procedure CdsEscalaPlantaoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure BitBtn19Click(Sender: TObject);
    procedure CdsEscalaPlantaoAfterInsert(DataSet: TDataSet);
    procedure CdsEscalaPlantaoAfterPost(DataSet: TDataSet);
    procedure BitBtn18Click(Sender: TObject);
    procedure Inteligncia1Click(Sender: TObject);
    procedure CTC1Click(Sender: TObject);
    procedure DBLookupComboBoxUPClick(Sender: TObject);
    procedure ControledePortaria1Click(Sender: TObject);
    procedure WebCam1Click(Sender: TObject);
    procedure MduloGestodeArmas1Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure Copiarumarquivo1Click(Sender: TObject);
    procedure PlanilhaDinmica1Click(Sender: TObject);
    procedure Detrao1Click(Sender: TObject);
    procedure InterrupesdaPena1Click(Sender: TObject);
    procedure RemiesdePena1Click(Sender: TObject);
    procedure ConsultaPROCED1Click(Sender: TObject);
    procedure VaradeExecuo1Click(Sender: TObject);
    procedure ransfernciadeInterno1Click(Sender: TObject);
    procedure Saido1Click(Sender: TObject);
    procedure RecebimentodeTransferncia1Click(Sender: TObject);
    procedure DBImageFOTOFUNCIONARIOClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ransfernciadeInternoMovimentoInterno1Click(Sender: TObject);
    procedure Manual1Click(Sender: TObject);
    procedure AgendadeSada1Click(Sender: TObject);
    procedure RegraparaVisitano1Click(Sender: TObject);
    procedure SiapenMessenger1Click(Sender: TObject);
    procedure BancodeHoras1Click(Sender: TObject);
    procedure CirculaodeInterno1Click(Sender: TObject);
    procedure MduloGestodePessoas1Click(Sender: TObject);
    procedure RemioTrabalho1Click(Sender: TObject);
    procedure Roupas1Click(Sender: TObject);
    procedure MovimentoSemiAberto1Click(Sender: TObject);
    procedure MonitoramentoEletrnico1Click(Sender: TObject);
    procedure AtribuicaoSetores1Click(Sender: TObject);
    procedure Ocorrncias1Click(Sender: TObject);
    procedure Faco1Click(Sender: TObject);
    procedure RadioGroupBancoDadosClick(Sender: TObject);
    procedure LocalizaoPorPronturio1Click(Sender: TObject);
    procedure WebBrowser1Click(Sender: TObject);
    procedure ConselhoDi1Click(Sender: TObject);
    procedure mnuCorrespondenciaClick(Sender: TObject);
    procedure VisitantesTrfico1Click(Sender: TObject);
    procedure CadastroPortaria1Click(Sender: TObject);
    procedure BitBtnOcorrenciaClick(Sender: TObject);
    procedure PerfildeUsurio1Click(Sender: TObject);
    procedure Monitoramento1Click(Sender: TObject);
    procedure TimeraAtualizaRelAgendaDiaTimer(Sender: TObject);
    procedure TimerAtualizaRelQtdPresosTimer(Sender: TObject);
    procedure CargaHorria1Click(Sender: TObject);
    procedure frxPreview2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure verlogsClick(Sender: TObject);

  private
    Data1, Data2: TDateTime;
    FormProgresso: TFormProgresso;
    procedure MudarComEnter(var Msg: TMsg; var Handled: Boolean);
    procedure BuscaOcorrencia;
    procedure MontaRelProcedimentos;
    procedure MontaRelExtratoProcedimentos;
    procedure AbreAgendaOURequerimento;
    procedure deixararredondado;
    procedure atualizarprogressbar;

    // procedure deixararrendondado;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmModuloPrincipal: TFrmModuloPrincipal;
  TelaOcorrenciaAberta: Boolean = False;
  mudanca_diretorio: string = '';

implementation

uses CadastroCela, CadastroInternos, CadastroGaleria, CadastroPavilhao,
  CadastroSolario, CadastroProcedencia, CadastroCidade, MenuRelatorio,
  CadastroAdvogado, CadastroEscolaridade, CadastroRaca, MovimentoInternos,
  CadastroGrauParentesco, CadastroVisitante, Lib, CadastroCondicaoInterno,
  CadastroDestino, CadastroUnidadePenal, CadastroFuncionario,
  CadastroFuncaoFuncionario, ConsultaInterno, MovimentoVisitante,
  CadastroSetorTrablalho, CalculoTrabalho, DmPrincipal,
  CadastroFuncaoInterno, ConsultaVisitante, CadastroNacionalidade,
  CadastroProfissao, TrocarSenha, CadastroSerieEstudo, Padrao,
  HistoricoInterno, AgendaAssuntos, AgendaSituacao, AgendaTipoContatos,
  AgendaAtendimento, HistoricoPadrao, CadastroFaltasDisciplinares,
  CadastroInternoTrabalho, CadastroInternoEducacao, CadastroServicoSocial,
  CadastroEnfermagem, CadastroFarmacia, CadastroClinicaMedica,
  CadastroPsiquiatria, CadastroOdontologia, Cadastropsicologia,
  CadastroInternoJuridico,
  CadastroPedagogia, CadastroTerapiaOcup,
  CadastroInternoDisciplina, Sobre, CadastroInternoPsicossocial,
  CadastroInternoSaude, CadastroArtigo, CadastroProcesso,
  CadastroProcedimentos, FiltroProcedimentos, MovimentoProcedimentos,
  CadastroLivro, CadastroRemedio, CadastroFornecedor,
  Mensagem, AgenteEquipe, Equipe, PostoTrabalho, Ocorrencias,
  MotivoEncerrarProcedimento, QualOcorrencia, QualProcedimento,
  FiltroPostoTrabalho, EscolhendoSkin, MudaSkin, HorarioFuncionario,
  MensagemBancoDados, TipoPatrimonio, Patrimonio, NovaEscala,
  CadastroInteligencia, CTC, ControlePortaria, MovimentacaoPortaria,
  WebCam, PrincipalArmas, PrincipalInteligencia, RelacionamentoInterno,
  SalvarProgressbar, PlanilhaDinamica, Detracao, Interrupcao, Remicao,
  Dm_Proced, ConsultaProced, Vara, transferenciainterno, TranfInterno,
  Saidao, RecebimentoTransferencia, DocRecebimentoTrasnferencia,
  MudancaCela, MensagemViaFastReport, VisualizadorOLE, AgendaSaidaInterno,
  RegraVisita, BatePapo, FuncBancoHoras, CirculacaoInterno,
  PrincipalGestaoPessoal, LancamentoRemicaoTrabalho, Roupas,
  MovimentoSemiAberto, Monitoramento_Eletronico, CadastroOcorrenciaPlantao,
  CadastroFaccao, ConsultaLocalizacaoPorProntuario, WebBrowser,
  CadastroRoupa, CadastroConselhoDisciplinar, FiltroAgendaAtendimento,
  CadastroCorrespondencia, CadastroVisitanteTrafico, SaidaoCadastro,
  CadastroPerfilUsuario, PrincipalMonitoramento,
  CadastroMonitoramentoEventos, CargaHorariaMutipla;
// CadastroCorrespondencia;
// PrincipalGestaoPessoal;

{$R *.dfm}

procedure TFrmModuloPrincipal.Cela1Click(Sender: TObject);
begin
  FrmCadastroCela := TFrmCadastroCela.create(Application);
  FrmCadastroCela.ShowModal;
  FreeAndNil(FrmCadastroCela);
end;

procedure TFrmModuloPrincipal.CadastrodeInternos1Click(Sender: TObject);
begin
  FrmCadastroInternos := TFrmCadastroInternos.create(Application);
  FrmCadastroInternos.ShowModal;
  FreeAndNil(FrmCadastroInternos);

  // if not Assigned(FrmCadastroInternos) then
  // FrmCadastroInternos := TFrmCadastroInternos.Create(Application)
  // else
  // begin
  // if not Assigned(FrmCadastroInternos.novo) then
  // begin
  // FrmCadastroInternos := nil;
  // FrmCadastroInternos := TFrmCadastroInternos.Create(Application)
  // end;
  // end;
  //
  // FrmCadastroInternos.Show;
  //

end;

procedure TFrmModuloPrincipal.Galeria1Click(Sender: TObject);
begin
  FrmCadastrogaleria := TFrmCadastrogaleria.create(Application);
  FrmCadastrogaleria.ShowModal;
  FreeAndNil(FrmCadastrogaleria);
end;

procedure TFrmModuloPrincipal.Escolaridade1Click(Sender: TObject);
begin
  FrmCadastroEscolaridade := TFrmCadastroEscolaridade.create(Application);
  FrmCadastroEscolaridade.ShowModal;
  FreeAndNil(FrmCadastroEscolaridade);
end;

procedure TFrmModuloPrincipal.Raa1Click(Sender: TObject);
begin
  FrmCadastroRaca := TFrmCadastroRaca.create(Application);
  FrmCadastroRaca.ShowModal;
  FreeAndNil(FrmCadastroRaca);
end;

procedure TFrmModuloPrincipal.Pavilho1Click(Sender: TObject);
begin
  FrmCadastroPavilhao := TFrmCadastroPavilhao.create(Application);
  FrmCadastroPavilhao.ShowModal;
  FreeAndNil(FrmCadastroPavilhao);
end;

procedure TFrmModuloPrincipal.Solario1Click(Sender: TObject);
begin
  FrmCadastrosolario := TFrmCadastroSolario.create(Application);
  FrmCadastrosolario.ShowModal;
  FreeAndNil(FrmCadastrosolario);
end;

procedure TFrmModuloPrincipal.Procedncia1Click(Sender: TObject);
begin
  FrmCadastroprocedencia := TFrmCadastroProcedencia.create(Application);
  FrmCadastroprocedencia.ShowModal;
  FreeAndNil(FrmCadastroprocedencia);
end;

procedure TFrmModuloPrincipal.cIDADE1Click(Sender: TObject);
begin
  FrmCadastrocidade := TFrmCadastroCidade.create(Application);
  FrmCadastrocidade.ShowModal;
  FreeAndNil(FrmCadastrocidade);
end;

procedure TFrmModuloPrincipal.Advogado1Click(Sender: TObject);
begin
  FrmCadastroadvogado := TFrmCadastroadvogado.create(Application);
  FrmCadastroadvogado.ShowModal;
  FreeAndNil(FrmCadastroadvogado);
end;

procedure TFrmModuloPrincipal.CadastrarnoConfere1Click(Sender: TObject);
begin
  FrmMovimentoInternos := TFrmMovimentoInternos.create(Application);
  FrmMovimentoInternos.ShowModal;
  FreeAndNil(FrmMovimentoInternos);
end;

procedure TFrmModuloPrincipal.GrauParentesco1Click(Sender: TObject);
begin
  FrmCadastroGrauParentesco := TFrmCadastroGrauParentesco.create(Application);
  FrmCadastroGrauParentesco.ShowModal;
  FreeAndNil(FrmCadastroGrauParentesco);
end;

procedure TFrmModuloPrincipal.Visitante1Click(Sender: TObject);
begin
  FrmCadastroVisitante := TFrmCadastroVisitante.create(Application);
  FrmCadastroVisitante.ShowModal;
  FreeAndNil(FrmCadastroVisitante);
end;

procedure TFrmModuloPrincipal.CondiodoInterno1Click(Sender: TObject);
begin

  FrmCadastroCondicaoInterno := TFrmCadastroCondicaoInterno.create(Application);
  FrmCadastroCondicaoInterno.ShowModal;
  FreeAndNil(FrmCadastroCondicaoInterno);

end;

procedure TFrmModuloPrincipal.FormCreate(Sender: TObject);
var
  iComp: Integer;
  IniFile: TIniFile;
  ConfigFilePath: string;
  WindowStateValue: Integer;

begin

  // RadioGroupBancoDados.Visible := DirectoryExists(GLOBAL_PASTA_LOCAL);
  ConfigFilePath := GetEnvironmentVariable('APPDATA');

  // Crie o caminho completo para o arquivo INI
  ConfigFilePath := IncludeTrailingPathDelimiter(ConfigFilePath) +
    'Siapen\config.ini';

  // ConfigFilePath := TPath.Combine(TPath.GetLibraryPath, 'config.ini');

  if FileExists(ConfigFilePath) then
  begin
    IniFile := TIniFile.create(ConfigFilePath);
    try
      WindowStateValue := IniFile.ReadInteger('WindowState', 'State',
        Ord(wsNormal));
      WindowState := TWindowState(WindowStateValue);

      if WindowState = wsNormal then
      begin
        Left := IniFile.ReadInteger('WindowPosition', 'Left', Left);
        Top := IniFile.ReadInteger('WindowPosition', 'Top', Top);
        Width := IniFile.ReadInteger('WindowSize', 'Width', Width);
        Height := IniFile.ReadInteger('WindowSize', 'Height', Height);
      end;
    finally
      IniFile.Free;
    end;
  end;
  // if GLOBAL_UF <> '' then
  // RadioGroupBancoDados.Items.Add(GLOBAL_UF)
  // else
  // RadioGroupBancoDados.Items.Add('Local');

  for iComp := 0 to Componentcount - 1 do
  begin

    if (Components[iComp] is TFDQuery) then
      TFDQuery(Components[iComp]).Connection := DM.SQLConnect;

  end;

  // Self.Width := Screen.WorkAreaWidth;
  // Self.Height := Screen.WorkAreaHeight;
  Self.BorderIcons := [biSystemMenu, biMinimize, biMaximize];
  { if not AtivouSkin then
    begin

    SkinDataSystem.SkinFile := GLOBAL_PATCH_SISTEMA + '\skin\' + skin_padrao;
    try
    if not SkinDataSystem.Active then
    begin
    SkinDataSystem.Active := True;
    end;
    AtivouSkin := True;
    except
    showmessage('Skin n�o carregada');
    SkinDataSystem.Active := False;
    end;
    end; }

  TimerAtivaImagem.Enabled := False;
  TimerDataHora.Enabled := False;
  tmr1.Enabled := False;

  // Application.OnMessage := MudarComEnter;

end;

procedure TFrmModuloPrincipal.Destino1Click(Sender: TObject);
begin
  FrmCadastroDestino := TFrmCadastroDestino.create(Application);
  FrmCadastroDestino.ShowModal;
  FreeAndNil(FrmCadastroDestino);
end;

procedure TFrmModuloPrincipal.BtnConfereClick(Sender: TObject);
begin
  CadastrarnoConfere1Click(nil);
end;

procedure TFrmModuloPrincipal.EntradadeVisitantes1Click(Sender: TObject);
begin

  if not(PERMISSAO_ENTRADAVISITANTE = 'S') then
  begin

    if Sender is TMenuItem then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TMenuItem(Sender)
        .Caption);

    if Sender is TBitBtn then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TBitBtn(Sender).Caption);

    Exit;
  end;

  FrmMovimentoVisitante := TFrmMovimentoVisitante.create(Application);
  FrmMovimentoVisitante.ShowModal;
  FreeAndNil(FrmMovimentoVisitante);

end;

procedure TFrmModuloPrincipal.BtnrelatorioClick(Sender: TObject);
begin
  FrmMenuRelatorio := TFrmMenuRelatorio.create(Application);
  FrmMenuRelatorio.ShowModal;
  FreeAndNil(FrmMenuRelatorio);
end;

procedure TFrmModuloPrincipal.DadosUsuarioLogadoClick(Sender: TObject);
begin
  EDITANDO_SEUS_DADOS_DE_USUARIO := True;
  FrmCadastrofuncionario := TFrmCadastrofuncionario.create(Application);
  FrmCadastrofuncionario.ShowModal;
  FreeAndNil(FrmCadastrofuncionario);
end;

procedure TFrmModuloPrincipal.FunoFuncionrio1Click(Sender: TObject);
begin
  FrmCadastrofuncaofuncionario := TFrmCadastroFuncaoFuncionario.create
    (Application);
  FrmCadastrofuncaofuncionario.ShowModal;
  FreeAndNil(FrmCadastrofuncaofuncionario);
end;

procedure TFrmModuloPrincipal.Interno1Click(Sender: TObject);
begin
  FrmConsultainterno := TFrmConsultaInterno.create(Application);
  FrmConsultainterno.ShowModal;
  FreeAndNil(FrmConsultainterno);
end;

procedure TFrmModuloPrincipal.MudarComEnter(var Msg: TMsg;
  var Handled: Boolean);
begin

end;

procedure TFrmModuloPrincipal.TimerAtivaImagemTimer(Sender: TObject);
var
  fazendo: Boolean;
begin
  FrmModuloPrincipal.Image1.Visible := True;
  FrmModuloPrincipal.Image2.Visible := True;
  TimerAtivaImagem.Enabled := False;
  TimerDataHora.Enabled := True;
  PanelCabecalho.Caption :=
    'SIAPEN - Sistema Integrado de Administra��o Penitenci�ria';
  {
    while fazendo do
    begin
    if (Self.Width < 995) then
    begin
    if (Self.Width < 990) then
    Self.Width := Self.Width + 99
    else
    Self.Width := Self.Width + 1;
    end;

    if (Self.Height < 705) then
    begin
    if (Self.Height < 700) then
    Self.Height := Self.Height + 70
    else
    Self.Height := Self.Height + 1;
    end;

    Self.Top := trunc((Screen.Height - Self.Height) / 2);
    Self.Left := trunc((Screen.Width - Self.Width) / 2);

    if ((Self.Width >= 995) and (Self.Height >= 705)) then
    fazendo := False;
    Repaint;
    end;
  }

end;

procedure TFrmModuloPrincipal.TimerDataHoraTimer(Sender: TObject);
begin

  LabelDATA_HORA.Caption := FormatDateTime('dd/mm/yyyy hh:mm:ss', now);
  LabelLOGIN.Caption := 'USU�RIO: ' + LOGIN_CONECTADO + ' | ' +
    NOME_PERFILUSUARIO_LOGADO;
  LabelDatabase.Caption := DM.SQLConnect.Params.Values['Database'];
  // LabelDatabase.Color:= ClWhite;

end;

procedure TFrmModuloPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = vk_escape then
  begin
    close;
  end;

end;

procedure TFrmModuloPrincipal.FormPaint(Sender: TObject);
begin
  { rgn := CreateRoundRectRgn(0, 0, Image1.Width, Image1.Height, RoundedPanel1.RoundedRadius, RoundedPanel1.RoundedRadius);
    dc := GetDC(RoundedPanel1.Handle);
    SetWindowRgn(RoundedPanel1.Handle, rgn, true);
    ReleaseDC(RoundedPanel1.Handle, dc);
    DeleteObject(rgn); }
  { rgn:=arredondar(RoundedPanel1, RoundedPanel1.RoundedRadius);
    DeleteObject(Rgn);

    rgn1:=arredondar(PanelCabecalho, 20);
    DeleteObject(Rgn1); }
end;

procedure TFrmModuloPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  IniFile: TIniFile;
  ConfigFilePath: String;
begin
  ConfigFilePath := GetEnvironmentVariable('APPDATA');

  // Crie o caminho completo para o arquivo INI
  ConfigFilePath := IncludeTrailingPathDelimiter(ConfigFilePath) +
    'Siapen\config.ini';
  IniFile := TIniFile.create(ConfigFilePath);
  try
    IniFile.WriteInteger('WindowState', 'State', Ord(WindowState));
    if WindowState = wsNormal then
    begin
      IniFile.WriteInteger('WindowPosition', 'Left', Left);
      IniFile.WriteInteger('WindowPosition', 'Top', Top);
      IniFile.WriteInteger('WindowSize', 'Width', Width);
      IniFile.WriteInteger('WindowSize', 'Height', Height);
    end;
  finally
    IniFile.Free;
  end;
end;

procedure TFrmModuloPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin

  CanClose := False;

  if Application.MessageBox('Sair do Sistema?', 'Confirme',
    mb_YesNo + Mb_IconQuestion) = idYes then
  begin
    CanClose := True;
  end;

end;

procedure TFrmModuloPrincipal.BtnconsultageralClick(Sender: TObject);
begin
  FrmConsultainterno := TFrmConsultaInterno.create(Application);
  FrmConsultainterno.ShowModal;
  FreeAndNil(FrmConsultainterno);
end;

procedure TFrmModuloPrincipal.Funcionrio2Click(Sender: TObject);
begin
  EDITANDO_SEUS_DADOS_DE_USUARIO := False;
  FrmCadastrofuncionario := TFrmCadastrofuncionario.create(Application);
  FrmCadastrofuncionario.ShowModal;
  FreeAndNil(FrmCadastrofuncionario);
end;

procedure TFrmModuloPrincipal.trabalho2Click(Sender: TObject);
begin
  if (PERMISSAO_TRABALHO = '') or (PERMISSAO_TRABALHO = 'R') then
  begin

    if Sender is TMenuItem then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TMenuItem(Sender)
        .Caption);

    if Sender is TBitBtn then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TBitBtn(Sender).Caption);

    Exit;
  end;
  FrmCadastroInternoTrabalho := TFrmCadastroInternoTrabalho.create(Application);
  FrmCadastroInternoTrabalho.ShowModal;
  FreeAndNil(FrmCadastroInternoTrabalho);

end;

procedure TFrmModuloPrincipal.SetorTrabalho2Click(Sender: TObject);
begin
  FrmCadastrosetortrabalho := TFrmCadastrosetortrabalho.create(Application);
  FrmCadastrosetortrabalho.ShowModal;
  FreeAndNil(FrmCadastrosetortrabalho);
end;

procedure TFrmModuloPrincipal.UnidadePenal2Click(Sender: TObject);
begin
  FrmCadastrounidadepenal := TFrmCadastrounidadepenal.create(Application);
  FrmCadastrounidadepenal.ShowModal;
  FreeAndNil(FrmCadastrounidadepenal);
end;

procedure TFrmModuloPrincipal.ClculodeTrabalho1Click(Sender: TObject);
begin
  FrmCalculoTrabalho := TFrmCalculoTrabalho.create(Application);
  FrmCalculoTrabalho.ShowModal;
  FreeAndNil(FrmCalculoTrabalho);
end;

procedure TFrmModuloPrincipal.Sair1Click(Sender: TObject);
begin
  close;
end;

procedure TFrmModuloPrincipal.FunoInterno1Click(Sender: TObject);
begin

  FrmCadastroFuncaoInterno := TFrmCadastroFuncaoInterno.create(Application);
  FrmCadastroFuncaoInterno.ShowModal;
  FreeAndNil(FrmCadastroFuncaoInterno);
end;

procedure TFrmModuloPrincipal.BtnAgendaAtendimentoClick(Sender: TObject);
begin

  StatusAgenda := 'A';

  AbreAgendaOURequerimento();

end;

procedure TFrmModuloPrincipal.Consulta1Click(Sender: TObject);
begin

  FrmConsultavisitante := TFrmConsultavisitante.create(Application);
  FrmConsultavisitante.ShowModal;
  FreeAndNil(FrmConsultavisitante);

end;

procedure TFrmModuloPrincipal.Nacionalidade1Click(Sender: TObject);
begin
  FrmCadastroNacionalidade := TFrmCadastroNacionalidade.create(Application);
  FrmCadastroNacionalidade.ShowModal;
  FreeAndNil(FrmCadastroNacionalidade);
end;

procedure TFrmModuloPrincipal.Profisso1Click(Sender: TObject);
begin
  FrmCadastroProfissao := TFrmCadastroProfissao.create(Application);
  FrmCadastroProfissao.ShowModal;
  FreeAndNil(FrmCadastroProfissao);
end;

procedure TFrmModuloPrincipal.rocarSenha1Click(Sender: TObject);
begin
  Frmtrocarsenha := TFrmtrocarsenha.create(Application);
  Frmtrocarsenha.ShowModal;
  FreeAndNil(Frmtrocarsenha);
end;

procedure TFrmModuloPrincipal.SrieFaseAtual1Click(Sender: TObject);
begin

  Frmcadastroserieestudo := TFrmcadastroserieestudo.create(Application);
  Frmcadastroserieestudo.ShowModal;
  FreeAndNil(Frmcadastroserieestudo);

end;

procedure TFrmModuloPrincipal.educClick(Sender: TObject);
begin

  if (PERMISSAO_EDUCACAO = '') or (PERMISSAO_EDUCACAO = 'R') then
  begin

    if Sender is TMenuItem then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TMenuItem(Sender)
        .Caption);

    if Sender is TBitBtn then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TBitBtn(Sender).Caption);

    Exit;
  end;

  FrmCadastroInternoEducacao := TFrmCadastroInternoEducacao.create(Application);
  FrmCadastroInternoEducacao.ShowModal;
  FreeAndNil(FrmCadastroInternoEducacao);

end;

procedure TFrmModuloPrincipal.BtneducacaoClick(Sender: TObject);
begin

  FrmCadastroInternos := TFrmCadastroInternos.create(Application);
  FrmCadastroInternos.ShowModal;
  FreeAndNil(FrmCadastroInternos);

end;

procedure TFrmModuloPrincipal.Destino2Click(Sender: TObject);
begin
  Destino1Click(nil);
end;

procedure TFrmModuloPrincipal.Procedncia2Click(Sender: TObject);
begin
  Procedncia1Click(nil);
end;

procedure TFrmModuloPrincipal.PadroSist1Click(Sender: TObject);
begin
  Frmpadrao := TFrmpadrao.create(Application);
  Frmpadrao.ShowModal;
  FreeAndNil(Frmpadrao);
end;

procedure TFrmModuloPrincipal.PSICOSSOCIAL1Click(Sender: TObject);
begin
  if (PERMISSAO_PSICOSSOCIAL = '') or (PERMISSAO_PSICOSSOCIAL = 'R') then
  begin

    if Sender is TMenuItem then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TMenuItem(Sender)
        .Caption);

    if Sender is TBitBtn then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TBitBtn(Sender).Caption);

    Exit;
  end;
  FrmCadastroInternoPsicossocial := TFrmCadastroInternoPsicossocial.create
    (Application);
  FrmCadastroInternoPsicossocial.ShowModal;
  FreeAndNil(FrmCadastroInternoPsicossocial);
end;

procedure TFrmModuloPrincipal.BitBtn7Click(Sender: TObject);
begin

  ShowMessage
    ('Os lan�amentos de hist�ricos dever�o ser feitos atrav�s do respectivo m�dulo do Setor!'
    + #13#13 + 'Recomenda-se n�o usar o mesmo!');

  // Exit;

  if PERMISSAO_DISCIPLINA = '' then
  begin

    if Sender is TMenuItem then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TMenuItem(Sender)
        .Caption);

    if Sender is TBitBtn then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TBitBtn(Sender).Caption);

    Exit;
  end;

  FrmHistoricoInterno := TFrmHistoricoInterno.create(Application);
  FrmHistoricoInterno.ShowModal;
  FreeAndNil(FrmHistoricoInterno);

end;

procedure TFrmModuloPrincipal.FormActivate(Sender: TObject);
begin

  if GLOBAL_IDCONEXAO > 0 then
  begin
    IniciaTransMovimento;
    try
      DM.SQLConnect.ExecSql('update conexao set tela_momento = ' +
        qs('Modulo Principal') + ' where idconexao=' +
        IntToStr(GLOBAL_IDCONEXAO));
    except
    end;
    FinalizaTransMovimento;
  end;

  tmr1Timer(nil);
  {
    if not Assigned(FrmMensagemViaFastReport) then
    begin
    MensagemAoUsuarioViaFastReport();
    FrmModuloPrincipal.SetFocus;
    end;
  }
end;

procedure TFrmModuloPrincipal.frxPreview1Click(Sender: TObject);
// var
// PastaUsuario: String;
// SourcePath: String;
// DestinationPath: String;
// FileName : String;
// IsFileFound: Boolean;
begin
  // PastaUsuario := GetEnvironmentVariable('userprofile');
  // Filename := 'dbxconnections.ini';
  // SourcePath := ExtractFilePath(Application.ExeName) +'\config\'+ FileName;
  // DestinationPath := PastaUsuario + '\config\' + FileName;
  // IsFileFound := FileExists(DestinationPath);

  // if not IsFileFound then
  // begin
  // if FileExists(SourcePath) then
  // begin
  // // Copiar o arquivo da pasta do aplicativo para a pasta do usu�rio
  // CopyFile(PChar(SourcePath), PChar(DestinationPath), False);
  // end;
  // end;
  frxReport1.PrepareReport;
end;

procedure TFrmModuloPrincipal.Desing1Click(Sender: TObject);
begin
  try
    frxReport1.DesignReport;
  except
  end;

end;

procedure TFrmModuloPrincipal.ipodeContatos1Click(Sender: TObject);
begin
  FrmAgendaTipoContatos := TFrmAgendaTipoContatos.create(Application);
  FrmAgendaTipoContatos.ShowModal;
  FreeAndNil(FrmAgendaTipoContatos);
end;

procedure TFrmModuloPrincipal.Assunto1Click(Sender: TObject);
begin
  FrmAgendaAssuntos := TFrmAgendaAssuntos.create(Application);
  FrmAgendaAssuntos.ShowModal;
  FreeAndNil(FrmAgendaAssuntos);
end;

procedure TFrmModuloPrincipal.Situao1Click(Sender: TObject);
begin
  FrmAgendaSituacao := TFrmAgendaSituacao.create(Application);
  FrmAgendaSituacao.ShowModal;
  FreeAndNil(FrmAgendaSituacao);
end;

procedure TFrmModuloPrincipal.AgendadeAtendimento1Click(Sender: TObject);
begin
  StatusAgenda := 'A';

  AbreAgendaOURequerimento();
end;

procedure TFrmModuloPrincipal.MenuItem1Click(Sender: TObject);
begin
  try
    frxReport2.DesignReport;
  except
  end;

end;

procedure TFrmModuloPrincipal.tmr1Timer(Sender: TObject);
var
  rel1, rel2: string;
begin

  { frxReport1.Preview := nil;
    frxReport2.Preview := nil;
    frxPreview1.Report := nil;
    frxPreview2.Report := nil; }

  tmr1.Enabled := False;
  // SetCurrentDir(GetCurrentDir);
  SetCurrentDir(ExtractFilePath(Application.ExeName));
  // ToolButtonAtualizar.OnClick(nil);
  // prevent saving/restoring a report when previewing. This will destroy
  // objects that are loaded in the designer and will lead to AV.
  // frxReport1.EngineOptions.DestroyForms := False;
  // set the custom preview

  rel1 := GLOBAL_PATCH_RELATORIO + '\SYSTEM\relatorio_tela.fr3';
  rel2 := GLOBAL_PATCH_RELATORIO + '\SYSTEM\relatorio_tela2.fr3'; // problema

  if FileExists(rel1) then
  begin
    frxReport1.Preview := frxPreview1;
    frxReport1.LoadFromFile(rel1);
    frxReport1.Variables.DeleteVariable('ID_UP');
    frxReport1.Variables.AddVariable('SIAP', 'ID_UP', GLOBAL_ID_UP);
    frxReport1.Variables.DeleteVariable('ID_FUNCIONARIO');
    frxReport1.Variables.AddVariable('SIAP', 'ID_FUNCIONARIO',
      GLOBAL_ID_FUNCIONARIO);
  end;

  // prevent saving/restoring a report when previewing. This will destroy
  // objects that are loaded in the designer and will lead to AV.
  // frxReport2.EngineOptions.DestroyForms := False;
  // set the custom preview
  frxReport2.Preview := frxPreview2;

  if FileExists(rel2) then
  begin
    frxReport2.Preview := frxPreview2;
    frxReport2.LoadFromFile(rel2);
    frxReport2.Variables.DeleteVariable('ID_UP');
    frxReport2.Variables.AddVariable('SIAP', 'ID_UP', GLOBAL_ID_UP);
    frxReport2.Variables.DeleteVariable('ID_FUNCIONARIO');
    frxReport2.Variables.AddVariable('SIAP', 'ID_FUNCIONARIO',
      GLOBAL_ID_FUNCIONARIO);
  end;
  try
    if FileExists(rel1) then
      frxReport1.PrepareReport;

    if FileExists(rel2) then
      frxReport2.PrepareReport;
  except
    on E: Exception do
      ShowMessage(E.ClassName + ' error raised, with message : ' + E.Message);
  end;

end;

procedure TFrmModuloPrincipal.btn1Click(Sender: TObject);
begin

  (*
    //>> Alexandre Notebook Sansung>> inicio: 21/11/2011 09:08:41
    FrmCadastroInternos := TFrmCadastroInternos.Create(Application);

    if PERMISSAO_DISCIPLINA = '' then
    FrmCadastroInternos.TabSheet10.TabVisible := false;

    if PERMISSAO_TRABALHO = '' then
    FrmCadastroInternos.TabSheet4.TabVisible := false;

    if PERMISSAO_EDUCACAO = '' then
    FrmCadastroInternos.TabSheet7.TabVisible := false;

    if PERMISSAO_JURIDICA = '' then
    FrmCadastroInternos.TabSheet8.TabVisible := false;

    if PERMISSAO_PSICOSSOCIAL = '' then
    FrmCadastroInternos.TabSheet11.TabVisible := false;

    FrmCadastroInternos.ShowModal;

    FreeAndNil(FrmCadastroInternos);
    //21/11/2011 09:08:41 :Fim<< Alexandre Notebook Sansung<<
  *)

  FrmCadastroInternoTrabalho := TFrmCadastroInternoTrabalho.create(Application);

  FrmCadastroInternoTrabalho.ShowModal;

  FreeAndNil(FrmCadastroInternoTrabalho);

end;

procedure TFrmModuloPrincipal.PedagogiaClick(Sender: TObject);
begin
  if (PERMISSAO_PEDAGOGIA = '') or (PERMISSAO_PEDAGOGIA = 'R') then
  begin

    if Sender is TMenuItem then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TMenuItem(Sender)
        .Caption);

    if Sender is TBitBtn then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TBitBtn(Sender).Caption);

    Exit;
  end;
  Frmcadastropedagogia := TFrmcadastropedagogia.create(Application);
  Frmcadastropedagogia.ShowModal;
  FreeAndNil(Frmcadastropedagogia);
end;

procedure TFrmModuloPrincipal.FaltaDisciplinar1Click(Sender: TObject);
begin
  Frmcadastrofaltasdisciplinares := TFrmcadastrofaltasdisciplinares.create
    (Application);
  Frmcadastrofaltasdisciplinares.ShowModal;
  FreeAndNil(Frmcadastrofaltasdisciplinares);
end;

procedure TFrmModuloPrincipal.ServicoSocialClick(Sender: TObject);
begin
  if (PERMISSAO_SERVICOSOCIAL = '') or (PERMISSAO_SERVICOSOCIAL = 'R') then
  begin

    if Sender is TMenuItem then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TMenuItem(Sender)
        .Caption);

    if Sender is TBitBtn then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TBitBtn(Sender).Caption);

    Exit;
  end;
  Frmcadastroservicosocial := TFrmcadastroservicosocial.create(Application);
  Frmcadastroservicosocial.ShowModal;
  FreeAndNil(Frmcadastroservicosocial);
end;

procedure TFrmModuloPrincipal.EnfermagemClick(Sender: TObject);
begin
  if (PERMISSAO_ENFERMAGEM = '') or (PERMISSAO_ENFERMAGEM = 'R') then
  begin

    if Sender is TMenuItem then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TMenuItem(Sender)
        .Caption);

    if Sender is TBitBtn then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TBitBtn(Sender).Caption);

    Exit;
  end;

  Frmcadastroenfermagem := TFrmcadastroenfermagem.create(Application);
  Frmcadastroenfermagem.ShowModal;
  FreeAndNil(Frmcadastroenfermagem);
end;

procedure TFrmModuloPrincipal.farmaciaClick(Sender: TObject);
begin
  if (PERMISSAO_FARMACIA = '') or (PERMISSAO_FARMACIA = 'R') then
  begin

    if Sender is TMenuItem then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TMenuItem(Sender)
        .Caption);

    if Sender is TBitBtn then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TBitBtn(Sender).Caption);

    Exit;
  end;
  Frmcadastrofarmacia := TFrmcadastrofarmacia.create(Application);
  Frmcadastrofarmacia.ShowModal;
  FreeAndNil(Frmcadastrofarmacia);
end;

procedure TFrmModuloPrincipal.clinicamedicaClick(Sender: TObject);
begin

  if (PERMISSAO_CLINICAMEDICA = '') or (PERMISSAO_CLINICAMEDICA = 'R') then
  begin

    if Sender is TMenuItem then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TMenuItem(Sender)
        .Caption);

    if Sender is TBitBtn then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TBitBtn(Sender).Caption);

    Exit;
  end;

  Frmcadastroclinicamedica := TFrmcadastroclinicamedica.create(Application);
  Frmcadastroclinicamedica.ShowModal;
  FreeAndNil(Frmcadastroclinicamedica);
end;

procedure TFrmModuloPrincipal.PsiquiatriaClick(Sender: TObject);
begin
  if (PERMISSAO_PSIQUIATRIA = '') or (PERMISSAO_PSIQUIATRIA = 'R') then
  begin

    if Sender is TMenuItem then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TMenuItem(Sender)
        .Caption);

    if Sender is TBitBtn then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TBitBtn(Sender).Caption);

    Exit;
  end;
  Frmcadastropsiquiatria := TFrmcadastropsiquiatria.create(Application);
  Frmcadastropsiquiatria.ShowModal;
  FreeAndNil(Frmcadastropsiquiatria);
end;

procedure TFrmModuloPrincipal.OdontologiaClick(Sender: TObject);
begin
  if (PERMISSAO_ODONTOLOGIA = '') or (PERMISSAO_ODONTOLOGIA = 'R') then
  begin

    if Sender is TMenuItem then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TMenuItem(Sender)
        .Caption);

    if Sender is TBitBtn then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TBitBtn(Sender).Caption);

    Exit;
  end;
  Frmcadastroodontologia := TFrmcadastroodontologia.create(Application);
  Frmcadastroodontologia.ShowModal;
  FreeAndNil(Frmcadastroodontologia);
end;

procedure TFrmModuloPrincipal.PsicologiaClick(Sender: TObject);
begin
  if (PERMISSAO_PSICOLOGIA = '') or (PERMISSAO_PSICOLOGIA = 'R') then
  begin

    if Sender is TMenuItem then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TMenuItem(Sender)
        .Caption);

    if Sender is TBitBtn then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TBitBtn(Sender).Caption);

    Exit;
  end;
  Frmcadastropsicologia := TFrmcadastropsicologia.create(Application);
  Frmcadastropsicologia.ShowModal;
  FreeAndNil(Frmcadastropsicologia);
end;

procedure TFrmModuloPrincipal.erapiaOcupacionalClick(Sender: TObject);
begin
  if (PERMISSAO_TERAPIAOCUPACIONAL = '') or (PERMISSAO_TERAPIAOCUPACIONAL = 'R')
  then
  begin

    if Sender is TMenuItem then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TMenuItem(Sender)
        .Caption);

    if Sender is TBitBtn then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TBitBtn(Sender).Caption);

    Exit;
  end;

  Frmcadastroterapiaocup := TFrmcadastroterapiaocup.create(Application);
  Frmcadastroterapiaocup.ShowModal;
  FreeAndNil(Frmcadastroterapiaocup);
end;

procedure TFrmModuloPrincipal.Disciplina2Click(Sender: TObject);
begin

  if (PERMISSAO_DISCIPLINA = '') or (PERMISSAO_DISCIPLINA = 'R') then
  begin

    if Sender is TMenuItem then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TMenuItem(Sender)
        .Caption);

    if Sender is TBitBtn then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TBitBtn(Sender).Caption);

    Exit;
  end;

  FrmCadastroInternoDisciplina := TFrmCadastroInternoDisciplina.create
    (Application);
  FrmCadastroInternoDisciplina.ShowModal;
  FreeAndNil(FrmCadastroInternoDisciplina);
end;

procedure TFrmModuloPrincipal.MenudeRelatrios1Click(Sender: TObject);
begin
  FrmMenuRelatorio := TFrmMenuRelatorio.create(Application);
  FrmMenuRelatorio.ShowModal;
  FreeAndNil(FrmMenuRelatorio);
end;

procedure TFrmModuloPrincipal.Sobre1Click(Sender: TObject);
begin
  Frmsobre := TFrmsobre.create(Application);
  Frmsobre.ShowModal;
  FreeAndNil(Frmsobre);
end;

procedure TFrmModuloPrincipal.Sade2Click(Sender: TObject);
begin

  if (PERMISSAO_SAUDE = '') or (PERMISSAO_SAUDE = 'R') then
  begin

    if Sender is TMenuItem then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TMenuItem(Sender)
        .Caption);

    if Sender is TBitBtn then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TBitBtn(Sender).Caption);

    Exit;
  end;

  FrmCadastroInternoSaude := TFrmCadastroInternoSaude.create(Application);
  FrmCadastroInternoSaude.ShowModal;
  FreeAndNil(FrmCadastroInternoSaude);

end;

procedure TFrmModuloPrincipal.Jurdico1Click(Sender: TObject);
begin
  FrmCadastroInternoJuridico := TFrmCadastroInternoJuridico.create(Application);
  FrmCadastroInternoJuridico.ShowModal;
  FreeAndNil(FrmCadastroInternoJuridico);
end;

procedure TFrmModuloPrincipal.Artigo1Click(Sender: TObject);
begin
  FrmCadastroartigo := TFrmCadastroartigo.create(Application);
  FrmCadastroartigo.ShowModal;
  FreeAndNil(FrmCadastroartigo);
end;

procedure TFrmModuloPrincipal.Processos1Click(Sender: TObject);
begin
  FrmCadastroprocesso := TFrmCadastroprocesso.create(Application);
  FrmCadastroprocesso.ShowModal;
  FreeAndNil(FrmCadastroprocesso);

end;

procedure TFrmModuloPrincipal.BitBtn3Click(Sender: TObject);
var
  iComp: Integer;
begin

  for iComp := 0 to Componentcount - 1 do
    if (Components[iComp] is TSQLQuery) then
      TFDQuery(Components[iComp]).Connection := DM.SQLConnect;

  if (PERMISSAO_JURIDICA = '') or (PERMISSAO_JURIDICA = 'R') then
  begin

    if Sender is TMenuItem then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TMenuItem(Sender)
        .Caption);

    if Sender is TBitBtn then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TBitBtn(Sender).Caption);

    Exit;
  end;
  FrmCadastroInternoJuridico := TFrmCadastroInternoJuridico.create(Application);
  FrmCadastroInternoJuridico.ShowModal;
  FreeAndNil(FrmCadastroInternoJuridico);
end;

procedure TFrmModuloPrincipal.ToolButton2Click(Sender: TObject);
begin
  FrmCadastroProcedimentos := TFrmCadastroProcedimentos.create(Application);
  FrmCadastroProcedimentos.ShowModal;
  FreeAndNil(FrmCadastroProcedimentos);
end;

procedure TFrmModuloPrincipal.ToolButton1Click(Sender: TObject);
begin

  FrmFiltroProcedimentos := TFrmFiltroProcedimentos.create(Application);
  DM.DsProcedimentos.DataSet.close;
  DM.DsProcedimentos.DataSet.Open;
  if FrmFiltroProcedimentos.ShowModal = mrok then
  begin
    FrmMovimentoProcedimentos := TFrmMovimentoProcedimentos.create(Application);
    FrmMovimentoProcedimentos.IDPROCEDIMENTOS :=
      FrmFiltroProcedimentos.DBLookupComboBoxProcedimentos.KeyValue;
    FrmMovimentoProcedimentos.SqlCadastro.ParamByName('IDPROCEDIMENTOS')
      .AsInteger := FrmFiltroProcedimentos.
      DBLookupComboBoxProcedimentos.KeyValue;
    FrmMovimentoProcedimentos.SqlCadastro.ParamByName('IDMOV_PROCEDIMENTOS')
      .AsInteger := -1;
    FrmMovimentoProcedimentos.TabSheetConsulta.TabVisible := False;
    FrmMovimentoProcedimentos.TabSheetConsulta.TabVisible := False;
    FrmMovimentoProcedimentos.Editar.Visible := False;
    FrmMovimentoProcedimentos.Excluir.Visible := False;
    FrmMovimentoProcedimentos.DESCRICAO_PROCEDIMENTOS :=
      FrmFiltroProcedimentos.DBLookupComboBoxProcedimentos.Text;
    FrmMovimentoProcedimentos.ENVOLVE_ADVOGADO :=
      DM.DsProcedimentos.DataSet.fieldbyname('ENVOLVE_ADVOGADO').AsString;
    FrmMovimentoProcedimentos.ENVOLVE_FUNCIONARIO :=
      DM.DsProcedimentos.DataSet.fieldbyname('ENVOLVE_FUNCIONARIO').AsString;
    FrmMovimentoProcedimentos.ENVOLVE_INTERNO :=
      DM.DsProcedimentos.DataSet.fieldbyname('ENVOLVE_INTERNO').AsString;
    FrmMovimentoProcedimentos.ENVOLVE_VISITANTE :=
      DM.DsProcedimentos.DataSet.fieldbyname('ENVOLVE_VISITANTE').AsString;
    FrmMovimentoProcedimentos.HORA_INICIAL :=
      DM.DsProcedimentos.DataSet.fieldbyname('HORA_INICIAL').AsDateTime;
    FrmMovimentoProcedimentos.HORA_FINAL :=
      DM.DsProcedimentos.DataSet.fieldbyname('HORA_FINAL').AsDateTime;
    FrmMovimentoProcedimentos.OBSERVACAO :=
      DM.DsProcedimentos.DataSet.fieldbyname('OBSERVACAO').AsString;
    FrmMovimentoProcedimentos.FUNCAO_FUNCIONARIO :=
      DM.DsProcedimentos.DataSet.fieldbyname('FUNCAO_FUNCIONARIO').AsString;
    FrmMovimentoProcedimentos.Caption :=
      FrmFiltroProcedimentos.DBLookupComboBoxProcedimentos.Text;
    FrmMovimentoProcedimentos.PanelTituloModeloCadastro.Caption :=
      FrmFiltroProcedimentos.DBLookupComboBoxProcedimentos.Text;
    FreeAndNil(FrmFiltroProcedimentos);
    FrmMovimentoProcedimentos.ShowModal;
    FreeAndNil(FrmMovimentoProcedimentos);
  end
  else
    FreeAndNil(FrmFiltroProcedimentos);
  DM.DsProcedimentos.DataSet.close;
  DsMovProcDetalhado.DataSet.close;
  DsMovProcDetalhado.DataSet.Open;

end;

procedure TFrmModuloPrincipal.Livro1Click(Sender: TObject);
begin
  FrmCadastroLivro := TFrmCadastroLivro.create(Application);
  FrmCadastroLivro.ShowModal;
  FreeAndNil(FrmCadastroLivro);
end;

procedure TFrmModuloPrincipal.Remdio1Click(Sender: TObject);
begin
  FrmCadastroremedio := TFrmCadastroremedio.create(Application);
  FrmCadastroremedio.ShowModal;
  FreeAndNil(FrmCadastroremedio);
end;

procedure TFrmModuloPrincipal.Fornecedor1Click(Sender: TObject);
begin

  FrmCadastroFornecedor := TFrmCadastroFornecedor.create(Application);
  FrmCadastroFornecedor.ShowModal;
  FreeAndNil(FrmCadastroFornecedor);

end;

procedure TFrmModuloPrincipal.FormShow(Sender: TObject);
var
  sMensagemInteligencia: string;
begin
  deixararredondado;
  RadioGroupBancoDados.Items.Add('SPF');
  RadioGroupBancoDados.Items.Add('DF');
  RadioGroupBancoDados.Items.Add('MA');
  RadioGroupBancoDados.Items.Add('MS');
  RadioGroupBancoDados.Items.Add('MT');
  RadioGroupBancoDados.Items.Add('PB');

  if GLOBAL_UF = 'SPF' then
    RadioGroupBancoDados.ItemIndex := 0;
  if GLOBAL_UF = 'DF' then
    RadioGroupBancoDados.ItemIndex := 1;
  if GLOBAL_UF = 'MA' then
    RadioGroupBancoDados.ItemIndex := 2;
  if GLOBAL_UF = 'MS' then
    RadioGroupBancoDados.ItemIndex := 3;
  if GLOBAL_UF = 'MT' then
    RadioGroupBancoDados.ItemIndex := 4;
  if GLOBAL_UF = 'PB' then
    RadioGroupBancoDados.ItemIndex := 5;

  RadioGroupBancoDados.Visible := (VISUALIZA_OUTRAS_UP = 'S');

  DM.SqlPadrao.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;
  DM.DsPadrao.DataSet.close;
  DM.DsPadrao.DataSet.Open;

  GLOBAL_NIVEL_1 := 'Pavilh�o';
  GLOBAL_NIVEL_2 := 'Galeria';
  GLOBAL_NIVEL_3 := 'Solario';
  GLOBAL_NIVEL_4 := 'Cela';

  if not DM.DsPadrao.DataSet.IsEmpty then
  begin
    GLOBAL_PADRAO_SISTEMA := DM.DsPadrao.DataSet.fieldbyname('SISTEMA')
      .AsString;
    GLOBAL_NIVEL_1 := DM.DsPadrao.DataSet.fieldbyname('NOME_PAVILHAO').AsString;
    GLOBAL_NIVEL_2 := DM.DsPadrao.DataSet.fieldbyname('NOME_GALERIA').AsString;
    GLOBAL_NIVEL_3 := DM.DsPadrao.DataSet.fieldbyname('NOME_SOLARIO').AsString;
    GLOBAL_NIVEL_4 := DM.DsPadrao.DataSet.fieldbyname('NOME_CELA').AsString;
    GLOBAL_RGI := DM.DsPadrao.DataSet.fieldbyname('RGI_AUTOMATICO').AsString;
  end;

  Pavilho1.Caption := GLOBAL_NIVEL_1;
  Galeria1.Caption := GLOBAL_NIVEL_2;
  Solario1.Caption := GLOBAL_NIVEL_3;
  Cela1.Caption := GLOBAL_NIVEL_4;

  // Verificando as permiss�es e liberando ou n�o os itens no menu.

  // ************ PRINCIPAL ****************//
  if (PERMISSAO_CONFERE = '') or (PERMISSAO_CONFERE = 'R') then
  begin
    BtnConfere.Enabled := False;
  end;

  if (PERMISSAO_AGENDAATENDIMENTO = '') or (PERMISSAO_AGENDAATENDIMENTO = 'R')
  then
  begin
    BtnAgendaAtendimento.Enabled := False;
  end;

  if (PERMISSAO_OCORRENCIA = '') or (PERMISSAO_OCORRENCIA = 'R') then
  begin
    BitBtnOcorrencia.Visible := False;
  end;

  if not ContemValor('C', PERMISSAO_CONFERE) then
  begin
    ConsultaInterno1.Visible := False;
    Btnconsultageral.Enabled := False;
  end;
  // ************ FIM PRINCIPAL ****************//



  // ************ CADASTRO ****************//

  if ((PERMISSAO_PAVILHAO = '') or (PERMISSAO_PAVILHAO = 'R')) and
    ((PERMISSAO_GALERIA = '') or (PERMISSAO_GALERIA = 'R')) and
    ((PERMISSAO_SOLARIO = '') or (PERMISSAO_SOLARIO = 'R')) and
    ((PERMISSAO_CELA = '') or (PERMISSAO_CELA = 'R')) and
    ((PERMISSAO_CADASTRO = '') or (PERMISSAO_CADASTRO = 'R')) and
    ((PERMISSAO_CONDICAOINTERNO = '') or (PERMISSAO_CONDICAOINTERNO = 'R')) and
    ((PERMISSAO_ADVOGADO = '') or (PERMISSAO_ADVOGADO = 'R')) and
    ((PERMISSAO_FACCAO = '') or (PERMISSAO_FACCAO = 'R')) and
    ((PERMISSAO_CIDADE = '') or (PERMISSAO_CIDADE = 'R')) and
    ((PERMISSAO_RACA = '') or (PERMISSAO_RACA = 'R')) and
    ((PERMISSAO_ESCOLARIDADE = '') or (PERMISSAO_ESCOLARIDADE = 'R')) and
    ((PERMISSAO_NACIONALIDADE = '') or (PERMISSAO_NACIONALIDADE = 'R')) and
    ((PERMISSAO_PROCEDENCIA = '') or (PERMISSAO_PROCEDENCIA = 'R')) and
    ((PERMISSAO_DESTINO = '') or (PERMISSAO_DESTINO = 'R')) and
    ((PERMISSAO_FORNECEDOR = '') or (PERMISSAO_FORNECEDOR = 'R')) and
    ((PERMISSAO_PROFISSAO = '') or (PERMISSAO_PROFISSAO = 'R')) and
    ((PERMISSAO_CTC = '') or (PERMISSAO_CTC = 'R')) then
  begin

    Cadastro1.Visible := False;

  end
  else
  begin
    if (PERMISSAO_PAVILHAO = '') or (PERMISSAO_PAVILHAO = 'R') then
    begin
      Pavilho1.Visible := False;
    end;

    if (PERMISSAO_GALERIA = '') or (PERMISSAO_GALERIA = 'R') then
    begin
      Galeria1.Visible := False;
    end;

    if (PERMISSAO_SOLARIO = '') or (PERMISSAO_SOLARIO = 'R') then
    begin
      Solario1.Visible := False;
    end;

    if (PERMISSAO_CELA = '') or (PERMISSAO_CELA = 'R') then
    begin
      Cela1.Visible := False;
    end;

    if (PERMISSAO_CADASTRO = '') or (PERMISSAO_CADASTRO = 'R') then
    begin
      CadastrodeInternos2.Visible := False;
    end;

    if (PERMISSAO_CONDICAOINTERNO = '') or (PERMISSAO_CONDICAOINTERNO = 'R')
    then
    begin
      CondiodoInterno1.Visible := False;
    end;

    if (PERMISSAO_ADVOGADO = '') or (PERMISSAO_ADVOGADO = 'R') then
    begin
      Advogado1.Visible := False;
    end;

    if (PERMISSAO_FACCAO = '') or (PERMISSAO_FACCAO = 'R') then
    begin
      Faco1.Visible := False;
    end;

    if (PERMISSAO_CIDADE = '') or (PERMISSAO_CIDADE = 'R') then
    begin
      cIDADE1.Visible := False;
    end;

    if (PERMISSAO_RACA = '') or (PERMISSAO_RACA = 'R') then
    begin
      Raa1.Visible := False;
    end;

    if (PERMISSAO_ESCOLARIDADE = '') or (PERMISSAO_ESCOLARIDADE = 'R') then
    begin
      Escolaridade1.Visible := False;
    end;

    if (PERMISSAO_NACIONALIDADE = '') or (PERMISSAO_NACIONALIDADE = 'R') then
    begin
      Nacionalidade1.Visible := False;
    end;

    if (PERMISSAO_PROCEDENCIA = '') or (PERMISSAO_PROCEDENCIA = 'R') then
    begin
      Procedncia1.Visible := False;
    end;

    if (PERMISSAO_DESTINO = '') or (PERMISSAO_DESTINO = 'R') then
    begin
      Destino1.Visible := False;
    end;

    if (PERMISSAO_FORNECEDOR = '') or (PERMISSAO_FORNECEDOR = 'R') then
    begin
      Fornecedor1.Visible := False;
    end;

    if (PERMISSAO_PROFISSAO = '') or (PERMISSAO_PROFISSAO = 'R') then
    begin
      Profisso1.Visible := False;
    end;

    if (PERMISSAO_CTC = '') or (PERMISSAO_CTC = 'R') then
    begin
      CTC1.Visible := False;
    end;

  end;
  // ************ FIM CADASTRO ****************//

  // ************ MOVIMENTA��O ****************//
  if ((PERMISSAO_TRANSFERENCIAINTERNO = '') or
    (PERMISSAO_TRANSFERENCIAINTERNO = 'R')) and
    ((PERMISSAO_MUDANCACELA = '') or (PERMISSAO_MUDANCACELA = 'R')) and
    ((PERMISSAO_SAIDAO = '') or (PERMISSAO_SAIDAO = 'R')) and
    ((PERMISSAO_CIRCULACAOINTERNO = '') or (PERMISSAO_CIRCULACAOINTERNO = 'R'))
    and ((PERMISSAO_MOVIMENTOSEMIABERTO = '') or
    (PERMISSAO_MOVIMENTOSEMIABERTO = 'R')) then
  begin
    Movimentao1.Visible := False;
  end
  else
  begin
    if (PERMISSAO_TRANSFERENCIAINTERNO = '') or
      (PERMISSAO_TRANSFERENCIAINTERNO = 'R') then
    begin
      ransfernciadeInterno1.Visible := False;
      RecebimentodeTransferncia1.Visible := False;
    end;

    if (PERMISSAO_MUDANCACELA = '') or (PERMISSAO_MUDANCACELA = 'R') then
    begin
      ransfernciadeInternoMovimentoInterno1.Visible := False;
    end;

    if (PERMISSAO_SAIDAO = '') or (PERMISSAO_SAIDAO = 'R') then
    begin
      Saido1.Visible := False;
      CadastroPortaria1.Visible := False;
    end;

    if (PERMISSAO_CIRCULACAOINTERNO = '') or (PERMISSAO_CIRCULACAOINTERNO = 'R')
    then
    begin
      CirculaodeInterno1.Visible := False;
    end;

    if (PERMISSAO_MOVIMENTOSEMIABERTO = '') or
      (PERMISSAO_MOVIMENTOSEMIABERTO = 'R') then
    begin
      MovimentoSemiAberto1.Visible := False;
    end;

    if not(ContemValor('C', PERMISSAO_TRANSFERENCIAINTERNO) or ContemValor('C',
      PERMISSAO_MUDANCACELA)) then
    begin
      LocalizaoPorPronturio1.Visible := False;
    end;
  end;
  // ************ FIM MOVIMENTA��O ****************//

  // ************ SETORES ****************//
  if ((PERMISSAO_DISCIPLINA = '') or (PERMISSAO_DISCIPLINA = 'R')) and
    ((PERMISSAO_FALTADISCIPLINAR = '') or (PERMISSAO_FALTADISCIPLINAR = 'R'))
  then
  begin
    disciplina1.Visible := False;
    BitBtn1.Enabled := False;
  end
  else
  begin
    if (PERMISSAO_DISCIPLINA = '') or (PERMISSAO_DISCIPLINA = 'R') then
    begin
      Disciplina2.Visible := False;
      BitBtn1.Enabled := False;
    end;

    if (PERMISSAO_FALTADISCIPLINAR = '') or (PERMISSAO_FALTADISCIPLINAR = 'R')
    then
    begin
      FaltaDisciplinar1.Visible := False;
    end;
  end;

  if ((PERMISSAO_EDUCACAO = '') or (PERMISSAO_EDUCACAO = 'R')) and
    ((PERMISSAO_SERIEFASEESTUDO = '') or (PERMISSAO_SERIEFASEESTUDO = 'R')) and
    ((PERMISSAO_LIVROREVISTA = '') or (PERMISSAO_LIVROREVISTA = 'R')) then
  begin
    SetordeEducao1.Visible := False;
    BitBtn2.Enabled := False;
  end
  else
  begin
    if (PERMISSAO_EDUCACAO = '') or (PERMISSAO_EDUCACAO = 'R') then
    begin
      educ.Visible := False;
      BitBtn2.Enabled := False;
    end;

    if (PERMISSAO_SERIEFASEESTUDO = '') or (PERMISSAO_SERIEFASEESTUDO = 'R')
    then
    begin
      SrieFaseAtual1.Visible := False;
    end;

    if (PERMISSAO_LIVROREVISTA = '') or (PERMISSAO_LIVROREVISTA = 'R') then
    begin
      Livro1.Visible := False;
    end;
  end;

  if ((PERMISSAO_JURIDICA = '') or (PERMISSAO_JURIDICA = 'R')) and
    ((PERMISSAO_PROCESSOCONDENACAO = '') or (PERMISSAO_PROCESSOCONDENACAO = 'R')
    ) and ((PERMISSAO_DETRACAO = '') or (PERMISSAO_DETRACAO = 'R')) and
    ((PERMISSAO_INTERRUPCAO = '') or (PERMISSAO_INTERRUPCAO = 'R')) and
    ((PERMISSAO_REMICAO = '') or (PERMISSAO_REMICAO = 'R')) and
    ((PERMISSAO_ARTIGOPENAL = '') or (PERMISSAO_ARTIGOPENAL = 'R')) and
    ((PERMISSAO_VARAEXECUCAO = '') or (PERMISSAO_VARAEXECUCAO = 'R')) then
  begin
    Jurdica1.Visible := False;
    BitBtn3.Enabled := False;
  end
  else
  begin
    if (PERMISSAO_JURIDICA = '') or (PERMISSAO_JURIDICA = 'R') then
    begin
      Jurdico1.Visible := False;
      BitBtn3.Enabled := False;
    end;

    if (PERMISSAO_PROCESSOCONDENACAO = '') or
      (PERMISSAO_PROCESSOCONDENACAO = 'R') then
    begin
      Processos1.Visible := False;
    end;

    if (PERMISSAO_DETRACAO = '') or (PERMISSAO_DETRACAO = 'R') then
    begin
      Detrao1.Visible := False;
    end;

    if (PERMISSAO_INTERRUPCAO = '') or (PERMISSAO_INTERRUPCAO = 'R') then
    begin
      InterrupesdaPena1.Visible := False;
    end;

    if (PERMISSAO_REMICAO = '') or (PERMISSAO_REMICAO = 'R') then
    begin
      RemiesdePena1.Visible := False;
    end;

    if (PERMISSAO_ARTIGOPENAL = '') or (PERMISSAO_ARTIGOPENAL = 'R') then
    begin
      Artigo1.Visible := False;
    end;

    if (PERMISSAO_VARAEXECUCAO = '') or (PERMISSAO_VARAEXECUCAO = 'R') then
    begin
      VaradeExecuo1.Visible := False;
    end;
  end;

  if (PERMISSAO_PSICOSSOCIAL = '') or (PERMISSAO_PSICOSSOCIAL = 'R') then
  begin
    PSICOSSOCIAL1.Visible := False;
    BitBtn4.Enabled := False;
  end;

  if ((PERMISSAO_PEDAGOGIA = '') or (PERMISSAO_PEDAGOGIA = 'R')) and
    ((PERMISSAO_SERVICOSOCIAL = '') or (PERMISSAO_SERVICOSOCIAL = 'R')) and
    ((PERMISSAO_TERAPIAOCUPACIONAL = '') or (PERMISSAO_TERAPIAOCUPACIONAL = 'R'))
  then
  begin
    Reabilitao1.Visible := False;
    BitBtn6.Enabled := False;
    BitBtn8.Enabled := False;
    BitBtn9.Enabled := False;
  end
  else
  begin
    if (PERMISSAO_PEDAGOGIA = '') or (PERMISSAO_PEDAGOGIA = 'R') then
    begin
      Pedagogia.Visible := False;
      BitBtn6.Enabled := False;
    end;

    if (PERMISSAO_SERVICOSOCIAL = '') or (PERMISSAO_SERVICOSOCIAL = 'R') then
    begin
      ServicoSocial.Visible := False;
      BitBtn8.Enabled := False;
    end;

    if (PERMISSAO_TERAPIAOCUPACIONAL = '') or
      (PERMISSAO_TERAPIAOCUPACIONAL = 'R') then
    begin
      erapiaOcupacional.Visible := False;
      BitBtn9.Enabled := False;
    end;
  end;

  if ((PERMISSAO_CLINICAMEDICA = '') or (PERMISSAO_CLINICAMEDICA = 'R')) and
    ((PERMISSAO_ENFERMAGEM = '') or (PERMISSAO_ENFERMAGEM = 'R')) and
    ((PERMISSAO_FARMACIA = '') or (PERMISSAO_FARMACIA = 'R')) and
    ((PERMISSAO_ODONTOLOGIA = '') or (PERMISSAO_ODONTOLOGIA = 'R')) and
    ((PERMISSAO_PSICOLOGIA = '') or (PERMISSAO_PSICOLOGIA = 'R')) and
    ((PERMISSAO_PSIQUIATRIA = '') or (PERMISSAO_PSIQUIATRIA = 'R')) and
    ((PERMISSAO_REMEDIO = '') or (PERMISSAO_REMEDIO = 'R')) and
    ((PERMISSAO_SAUDE = '') or (PERMISSAO_SAUDE = 'R')) then
  begin
    Sade1.Visible := False;
    BitBtn15.Enabled := False;
    BitBtn14.Enabled := False;
    BitBtn10.Enabled := False;
    BitBtn11.Enabled := False;
    BitBtn12.Enabled := False;
    BitBtn13.Enabled := False;
    BitBtn16.Enabled := False;
  end
  else
  begin
    if (PERMISSAO_CLINICAMEDICA = '') or (PERMISSAO_CLINICAMEDICA = 'R') then
    begin
      clinicamedica.Visible := False;
      BitBtn15.Enabled := False;
    end;

    if (PERMISSAO_ENFERMAGEM = '') or (PERMISSAO_ENFERMAGEM = 'R') then
    begin
      Enfermagem.Visible := False;
      BitBtn14.Enabled := False;
    end;

    if (PERMISSAO_FARMACIA = '') or (PERMISSAO_FARMACIA = 'R') then
    begin
      farmacia.Visible := False;
      BitBtn10.Enabled := False;
    end;

    if (PERMISSAO_ODONTOLOGIA = '') or (PERMISSAO_ODONTOLOGIA = 'R') then
    begin
      Odontologia.Visible := False;
      BitBtn11.Enabled := False;
    end;

    if (PERMISSAO_PSICOLOGIA = '') or (PERMISSAO_PSICOLOGIA = 'R') then
    begin
      Psicologia.Visible := False;
      BitBtn12.Enabled := False;
    end;

    if (PERMISSAO_PSIQUIATRIA = '') or (PERMISSAO_PSIQUIATRIA = 'R') then
    begin
      Psiquiatria.Visible := False;
      BitBtn13.Enabled := False;
    end;

    if (PERMISSAO_REMEDIO = '') or (PERMISSAO_REMEDIO = 'R') then
    begin
      Remdio1.Visible := False;
    end;

    if (PERMISSAO_SAUDE = '') or (PERMISSAO_SAUDE = 'R') then
    begin
      Sade2.Visible := False;
      BitBtn16.Enabled := False;
    end;

  end;

  if ((PERMISSAO_TRABALHO = '') or (PERMISSAO_TRABALHO = 'R')) and
    ((PERMISSAO_SETORTRABALHOCAD = '') or (PERMISSAO_SETORTRABALHOCAD = 'R'))
    and ((PERMISSAO_FUNCAOINTERNO = '') or (PERMISSAO_FUNCAOINTERNO = 'R')) and
    ((PERMISSAO_CALCULOTRABALHO = '') or (PERMISSAO_CALCULOTRABALHO = 'R')) and
    ((PERMISSAO_REMICAOTRABALHO = '') or (PERMISSAO_REMICAOTRABALHO = 'R')) then
  begin
    SetorTrabalho1.Visible := False;
    BitBtn5.Enabled := False;
  end
  else
  begin

    if (PERMISSAO_TRABALHO = '') or (PERMISSAO_TRABALHO = 'R') then
    begin
      trabalho2.Visible := False;
      BitBtn5.Enabled := False;
    end;

    if (PERMISSAO_SETORTRABALHOCAD = '') or (PERMISSAO_SETORTRABALHOCAD = 'R')
    then
    begin
      SetorTrabalho2.Visible := False;
    end;

    if (PERMISSAO_FUNCAOINTERNO = '') or (PERMISSAO_FUNCAOINTERNO = 'R') then
    begin
      FunoInterno1.Visible := False;
    end;

    if (PERMISSAO_CALCULOTRABALHO = '') or (PERMISSAO_CALCULOTRABALHO = 'R')
    then
    begin
      ClculodeTrabalho1.Visible := False;
    end;

    if (PERMISSAO_REMICAOTRABALHO = '') or (PERMISSAO_REMICAOTRABALHO = 'R')
    then
    begin
      RemioTrabalho1.Visible := False;
    end;

  end;

  if ((PERMISSAO_OCORRENCIA = '') or (PERMISSAO_OCORRENCIA = 'R')) and
    ((PERMISSAO_ROUPAS = '') or (PERMISSAO_ROUPAS = 'R')) then
  begin
    Planto1.Visible := False;
  end
  else
  begin
    if (PERMISSAO_OCORRENCIA = '') or (PERMISSAO_OCORRENCIA = 'R') then
    begin
      Ocorrncias1.Visible := False;
    end;

    if (PERMISSAO_ROUPAS = '') or (PERMISSAO_ROUPAS = 'R') then
    begin
      Roupas1.Visible := False;
    end;
  end;

  if (PERMISSAO_CONSELHODISCIPLINAR = '') or
    (PERMISSAO_CONSELHODISCIPLINAR = 'R') then
  begin
    ConselhoDi1.Visible := False;
  end;

  if (PERMISSAO_CORRESPONDENCIA = '') or (PERMISSAO_CORRESPONDENCIA = 'R') then
  begin
    mnuCorrespondencia.Visible := False;
  end;

  if (disciplina1.Visible = False) and (SetordeEducao1.Visible = False) and
    (Jurdica1.Visible = False) and (PSICOSSOCIAL1.Visible = False) and
    (Reabilitao1.Visible = False) and (Sade1.Visible = False) and
    (SetorTrabalho1.Visible = False) and (Planto1.Visible = False) and
    (ConselhoDi1.Visible = False) and (mnuCorrespondencia.Visible = False) then
  begin
    Setores1.Visible := False;
  end;
  // ************ FIM SETORES ****************//

  // ************ VISITANTES ****************//
  if (not(PERMISSAO_ENTRADAVISITANTE = 'S')) and
    ((PERMISSAO_GRAUPARENTESCO = '') or (PERMISSAO_GRAUPARENTESCO = 'R')) and
    ((PERMISSAO_VISITANTE = '') or (PERMISSAO_VISITANTE = 'R')) and
    ((PERMISSAO_VISITANTETRAFICO = '') or (PERMISSAO_VISITANTETRAFICO = 'R'))
  then
  begin
    Visitantes1.Visible := False;
  end
  else
  begin
    if not(PERMISSAO_ENTRADAVISITANTE = 'S') then
    begin
      EntradadeVisitantes1.Visible := False;
    end;

    if (PERMISSAO_GRAUPARENTESCO = '') or (PERMISSAO_GRAUPARENTESCO = 'R') then
    begin
      GrauParentesco1.Visible := False;
    end;

    if (PERMISSAO_VISITANTE = '') or (PERMISSAO_VISITANTE = 'R') then
    begin
      Consulta1.Visible := False;
      Visitante1.Visible := False;
    end;

    if (PERMISSAO_VISITANTETRAFICO = '') or (PERMISSAO_VISITANTETRAFICO = 'R')
    then
    begin
      VisitantesTrfico1.Visible := False;
    end;
  end;
  // ************ FIM VISITANTES ****************//

  // ************ M�DULOS ****************//
  if ((PERMISSAO_ARMAS = '') or (PERMISSAO_ARMAS = 'R'))
  // and ((PERMISSAO_INTELIGENCIA = '') or (PERMISSAO_INTELIGENCIA = 'R'))
    and ((PERMISSAO_MONITORAMENTO = '') or (PERMISSAO_MONITORAMENTO = 'R')) and
    ((PERMISSAO_MONITORAMENTOEVENTOS = '') or
    (PERMISSAO_MONITORAMENTOEVENTOS = 'R')) then
  begin
    Mdulos1.Visible := False;
  end
  else
  begin
    if (PERMISSAO_ARMAS = '') or (PERMISSAO_ARMAS = 'R') then
    begin
      MduloGestodeArmas1.Visible := False;
    end;

    // if (PERMISSAO_INTELIGENCIA = '') or (PERMISSAO_INTELIGENCIA = 'R') then
    // begin
    // Inteligncia1.Visible := False;
    // end;

    if (PERMISSAO_MONITORAMENTOEVENTOS = '') or
      (PERMISSAO_MONITORAMENTOEVENTOS = 'R') then
    begin
      Monitoramento1.Visible := False;
    end;

    if (PERMISSAO_MONITORAMENTO = '') or (PERMISSAO_MONITORAMENTO = 'R') then
    begin
      MonitoramentoEletrnico1.Visible := False;
    end;
  end;
  // ************ FIM M�DULOS ****************//

  // ************ CONFIGURA��ES / CADASTRO ****************//
  if ((PERMISSAO_FUNCIONARIO = '') or (PERMISSAO_FUNCIONARIO = 'R')) and
    ((PERMISSAO_FUNCAOFUNCIONARIO = '') or (PERMISSAO_FUNCAOFUNCIONARIO = 'R'))
    and ((PERMISSAO_UNIDADEPENAL = '') or (PERMISSAO_UNIDADEPENAL = 'R')) and
    ((PERMISSAO_HORARIOFUNCIONARIO = '') or (PERMISSAO_HORARIOFUNCIONARIO = 'R')
    ) and ((PERMISSAO_PADRAOSISTEMA = '') or (PERMISSAO_PADRAOSISTEMA = 'R'))
    and ((PERMISSAO_EQUIPE = '') or (PERMISSAO_EQUIPE = 'R')) and
    ((PERMISSAO_LOCALPOSTOTRABALHO = '') or (PERMISSAO_LOCALPOSTOTRABALHO = 'R')
    ) and ((PERMISSAO_AGENTEPOREQUIPE = '') or (PERMISSAO_AGENTEPOREQUIPE = 'R')
    ) and ((PERMISSAO_REGRAVISITACAO = '') or (PERMISSAO_REGRAVISITACAO = 'R'))
    and ((PERMISSAO_PERFILUSUARIO = '') or (PERMISSAO_PERFILUSUARIO = 'R')) then
  begin
    Configurao1.Visible := False;
  end
  else
  begin

    if (PERMISSAO_FUNCIONARIO = '') or (PERMISSAO_FUNCIONARIO = 'R') then
    begin
      Funcionrio2.Visible := False;
    end;

    if (PERMISSAO_FUNCAOFUNCIONARIO = '') or (PERMISSAO_FUNCAOFUNCIONARIO = 'R')
    then
    begin
      FunoFuncionrio1.Visible := False;
    end;

    if (PERMISSAO_UNIDADEPENAL = '') or (PERMISSAO_UNIDADEPENAL = 'R') then
    begin
      UnidadePenal2.Visible := False;
    end;

    if (PERMISSAO_HORARIOFUNCIONARIO = '') or
      (PERMISSAO_HORARIOFUNCIONARIO = 'R') then
    begin
      HorarioFuncionrio1.Visible := False;
    end;

    if (PERMISSAO_PADRAOSISTEMA = '') or (PERMISSAO_PADRAOSISTEMA = 'R') then
    begin
      PadroSist1.Visible := False;
    end;

    if (PERMISSAO_EQUIPE = '') or (PERMISSAO_EQUIPE = 'R') then
    begin
      Equipe1.Visible := False;
    end;

    if (PERMISSAO_LOCALPOSTOTRABALHO = '') or
      (PERMISSAO_LOCALPOSTOTRABALHO = 'R') then
    begin
      PostoLocaldeTrabalho1.Visible := False;
    end;

    if (PERMISSAO_AGENTEPOREQUIPE = '') or (PERMISSAO_AGENTEPOREQUIPE = 'R')
    then
    begin
      AgenteporEquipe1.Visible := False;
    end;

    if (PERMISSAO_REGRAVISITACAO = '') or (PERMISSAO_REGRAVISITACAO = 'R') then
    begin
      RegraparaVisitano1.Visible := False;
    end;

    if (PERMISSAO_PERFILUSUARIO = '') or (PERMISSAO_PERFILUSUARIO = 'R') then
    begin
      PerfildeUsurio1.Visible := False;
    end;

  end;
  // ************ FIM CONFIGURA��ES / CADASTRO ****************//

  // ************ AGENDAMENTO ****************//
  if ((PERMISSAO_AGENDAATENDIMENTO = '') or (PERMISSAO_AGENDAATENDIMENTO = 'R'))
    and ((PERMISSAO_ASSUNTO = '') or (PERMISSAO_ASSUNTO = 'R')) and
    ((PERMISSAO_SITUACAO = '') or (PERMISSAO_SITUACAO = 'R')) and
    ((PERMISSAO_TIPOCONTATO = '') or (PERMISSAO_TIPOCONTATO = 'R')) then
  begin
    Agendamento1.Visible := False;
  end
  else
  begin
    if (PERMISSAO_AGENDAATENDIMENTO = '') or (PERMISSAO_AGENDAATENDIMENTO = 'R')
    then
    begin
      AgendadeAtendimento1.Visible := False;
    end;

    if (PERMISSAO_ASSUNTO = '') or (PERMISSAO_ASSUNTO = 'R') then
    begin
      Assunto1.Visible := False;
    end;

    if (PERMISSAO_SITUACAO = '') or (PERMISSAO_SITUACAO = 'R') then
    begin
      Situao1.Visible := False;
    end;

    if (PERMISSAO_TIPOCONTATO = '') or (PERMISSAO_TIPOCONTATO = 'R') then
    begin
      ipodeContatos1.Visible := False;
    end;
  end;
  // ************ FIM AGENDAMENTO ****************//

  ToolButtonPostoTrabalho.Enabled := (GLOBAL_IDPOSTO_TRABALHO = 0);

  if 1 <> 1 then
  begin

    DM.DScalcpermanencia.DataSet.close;
    DM.Sqlcalcpermanencia.Params[0].Value := date;
    DM.DScalcpermanencia.DataSet.Open;

    if DM.DScalcpermanencia.DataSet.RecordCount > 0 then
    begin
      Frmmensagem := TFrmmensagem.create(Application);
      Frmmensagem.Show;
    end;

    DM.DScalcpermanencia.DataSet.close;

  end;

  PageControlSiap.ActivePageIndex := 0;

  SqlEscalaPlantao.Sql.Text :=
    'SELECT * FROM ESCALA_PLANTAO WHERE DATA_PLANTAO = ' +
    qs(FormatDateTime('dd.mm.yyyy', DateTimePickerEscala.date));

  DsEscalaPlantao.DataSet.close;
  DsEscalaPlantao.DataSet.Open;

  DM.DsPostoTrabalho.DataSet.close;
  DM.DsPostoTrabalho.DataSet.Open;

  DM.DsEquipe.DataSet.close;
  DM.DsEquipe.DataSet.Open;

  DM.DsFuncionario.DataSet.close;
  DM.DsFuncionario.DataSet.Open;

  DateTimePickerEscala.date := date;

  TimerAtivaImagem.Enabled := True;
  tmr1.Enabled := True;

  DsUP.DataSet.close;
  DsUP.DataSet.Open;

  DBLookupComboBoxUP.KeyValue := GLOBAL_ID_UP;

  SQLfuncionario.Sql.Text :=
    'SELECT F.ID_FUNCIONARIO, F.NOME_FUNCIONARIO, F.FOTO, ' +
    ' F.DTNASCIMENTO, F.MATRICULA' + ' FROM FUNCIONARIO F ' +
    ' WHERE F.ID_FUNCIONARIO=' + IntToStr(GLOBAL_ID_FUNCIONARIO);
  DsFuncionario.DataSet.close;
  DsFuncionario.DataSet.Open;

  { SqlUltimosLogs.Sql.Text :=
    'select first 100 l.data_hora,l.script_reversao,l.ip_maquina from log_sistema l '
    + ' where l.id_funcionario=' + IntToStr(GLOBAL_ID_FUNCIONARIO) +
    ' order by l.data_hora desc';
  }
  DsUltimosLogs.DataSet.close;
  // DsUltimosLogs.DataSet.Open;
  {
    if PERMISSAO_INTELIGENCIA <> '' then
    begin
    DM.SqlExecute.SQL.Text := 'select u.nome_up, ' +
    ' (select count(*) from interno i ' +
    ' where i.idcela=p.id_cela ' +
    ' and not exists(select null from inteligencia t ' +
    '                where t.id_interno=i.id_interno ' +
    '                and t.parecer_inclusao = ''S'')) as total_inclusao ' +
    ' from padrao p ' +
    ' join unidade_penal u on p.cod_up=u.id_up ' +
    ' where p.envia_mensagem_inteligencia = ''S'' ';
    with dm.DsExecute.DataSet do
    begin
    Close;
    Open;

    sMensagemInteligencia := '';
    while not eof do
    begin
    sMensagemInteligencia := sMensagemInteligencia
    + '..::   A T E N � � O   ::..'
    + #13#10 + '...........................'
    + #13#10 + 'EM: ' + fieldbyname('nome_up').asstring
    + #13#10 + '...........................'
    + #13#10 + 'TEM (' + fieldbyname('total_inclusao').asstring + ') INTERNOS.'
    + #13#10 + 'AGUARDANDO PARECER DO SETOR DE INTELIG�NCIA.' + #13#10 + #13#10
    ;
    next;
    end;

    if sMensagemInteligencia <> '' then
    MensagemAoUsuario(sMensagemInteligencia);

    dm.DsExecute.DataSet.Close;

    end;

    DM.SqlExecute.SQL.Clear;
    end;
  }

  // self.Caption := self.Caption + ' - ' + GetBuildInfo(Application.ExeName) + ' (DEV)';
  Self.Caption := 'SIAPEN' + ' - ' + GetBuildInfo + ' - Data/Hora da vers�o: ' +
    FormatDateTime('dd/MM/yyy hh:mm',
    FileDateToDateTime(FileAge(Application.ExeName)));
  // Self.Caption := 'SIAPEN em Desenvolvimento';
  // Arrendodar TPanel

end;

procedure TFrmModuloPrincipal.ToolButtonAtualizarClick(Sender: TObject);
begin

  if TelaOcorrenciaAberta then
    Exit;

  SqlMovProcDetalhado.Sql.Text :=
    'select * from mov_procedimentos m JOIN PROCEDIMENTOS P ON P.IDPROCEDIMENTOS=M.IDPROCEDIMENTOS';

  with DsMovProcDetalhado.DataSet do
  begin

    close;
    Open;

  end;

  if GLOBAL_IDPOSTO_TRABALHO = 0 then
  begin
    FrmFiltroPostoTrabalho := TFrmFiltroPostoTrabalho.create(Application);
    if FrmFiltroPostoTrabalho.ShowModal = mrok then
      GLOBAL_IDPOSTO_TRABALHO :=
        FrmFiltroPostoTrabalho.DBLookupComboBox3.KeyValue;
    FreeAndNil(FrmFiltroPostoTrabalho);
  end;

  MontaRelProcedimentos();

end;

procedure TFrmModuloPrincipal.Equipe1Click(Sender: TObject);
begin
  FrmEquipe := TFrmEquipe.create(Application);
  FrmEquipe.ShowModal;
  FreeAndNil(FrmEquipe);
end;

procedure TFrmModuloPrincipal.PostoLocaldeTrabalho1Click(Sender: TObject);
begin
  FrmPostoTrabalho := TFrmPostoTrabalho.create(Application);
  FrmPostoTrabalho.ShowModal;
  FreeAndNil(FrmPostoTrabalho);
end;

procedure TFrmModuloPrincipal.AgenteporEquipe1Click(Sender: TObject);
begin
  FrmAgenteEquipe := TFrmAgenteEquipe.create(Application);
  FrmAgenteEquipe.ShowModal;
  FreeAndNil(FrmAgenteEquipe);
end;

procedure TFrmModuloPrincipal.ToolButton4Click(Sender: TObject);
begin
  FrmOcorrencias := TFrmOcorrencias.create(Application);
  FrmOcorrencias.ShowModal;
  FreeAndNil(FrmOcorrencias);
end;

procedure TFrmModuloPrincipal.Encerrar1Click(Sender: TObject);
begin

  FrmMotivoEncerrarProcedimento := TFrmMotivoEncerrarProcedimento.create
    (Application);
  FrmMotivoEncerrarProcedimento.IDMOV_PROCEDIMENTOS :=
    DsMovProcDetalhado.DataSet.fieldbyname('IDMOV_PROCEDIMENTOS').AsInteger;
  FrmMotivoEncerrarProcedimento.ShowModal;
  FreeAndNil(FrmMotivoEncerrarProcedimento);

end;

procedure TFrmModuloPrincipal.DBGridProcedimentosDblClick(Sender: TObject);
begin
  BuscaOcorrencia;
end;

procedure TFrmModuloPrincipal.BuscaOcorrencia();
begin

  TelaOcorrenciaAberta := True;

  DM.SqlExecute.Sql.Text :=
    'select FIRST 1 * from mov_procedimentos where idmov_procedimentos_principal = '
    + DsMovProcDetalhado.DataSet.fieldbyname('IDMOV_PROCEDIMENTOS').AsString;

  DM.DsExecute.DataSet.close;
  DM.DsExecute.DataSet.Open;

  if DM.DsExecute.DataSet.IsEmpty then
  begin
    FrmQualOcorrencia := TFrmQualOcorrencia.create(Application);
    FrmQualOcorrencia.IDMOV_PROCEDIMENTOS :=
      DsMovProcDetalhado.DataSet.fieldbyname('IDMOV_PROCEDIMENTOS').AsInteger;
    FrmQualOcorrencia.IDPROCEDIMENTOS := DsMovProcDetalhado.DataSet.fieldbyname
      ('IDPROCEDIMENTOS').AsInteger;
    FrmQualOcorrencia.Data_Ocorrencia1 := Data1;
    FrmQualOcorrencia.Data_Ocorrencia2 := Data2;
    FrmQualOcorrencia.Caption := DsMovProcDetalhado.DataSet.fieldbyname
      ('descricao').AsString;
    FrmQualOcorrencia.ShowModal;
    FreeAndNil(FrmQualOcorrencia);
  end
  else
  begin
    FrmQualProcedimento := TFrmQualProcedimento.create(Application);
    FrmQualProcedimento.IDMOV_PROCEDIMENTOS_PRINCIPAL :=
      DsMovProcDetalhado.DataSet.fieldbyname('IDMOV_PROCEDIMENTOS').AsInteger;
    FrmQualProcedimento.Data_Procedimento1 := Data1;
    FrmQualProcedimento.Data_Procedimento2 := Data2;
    FrmQualProcedimento.Caption := DsMovProcDetalhado.DataSet.fieldbyname
      ('descricao').AsString;
    FrmQualProcedimento.ShowModal;
    FreeAndNil(FrmQualProcedimento);
  end;

  DM.DsExecute.DataSet.close;

  TelaOcorrenciaAberta := False;

end;

procedure TFrmModuloPrincipal.DBGridProcedimentosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    BuscaOcorrencia;
  end;
end;

procedure TFrmModuloPrincipal.frxReport3ClickObject(Sender: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
var
  vTextoMemo, vID: string;
begin

  if (Sender.Name = 'SqlProcedimentosDESCRICAO') or
    (Sender.Name = 'SqlProcedimentosDATA') then
  begin

    vTextoMemo := TfrxMemoView(Sender).Memo.Text;

    if (Sender.Name = 'SqlProcedimentosDATA') then
      vTextoMemo := TfrxPictureView(Sender).TagStr;

    vID := Trim(Copy(vTextoMemo, Pos('ID:', vTextoMemo) + 3,
      Length(vTextoMemo)));

    if DsMovProcDetalhado.DataSet.Locate('IDMOV_PROCEDIMENTOS',
      StrToInt(vID), []) then
    begin
      BuscaOcorrencia;
      Exit;
    end;

  end;

  if Sender.Name = 'Picture1' then
  begin

    vTextoMemo := TfrxPictureView(Sender).TagStr;
    vID := Trim(Copy(vTextoMemo, Pos('ID:', vTextoMemo) + 3,
      Length(vTextoMemo)));

    if DsMovProcDetalhado.DataSet.Locate('IDMOV_PROCEDIMENTOS',
      StrToInt(vID), []) then
    begin
      if Application.MessageBox('Arquivar/Encerrar o procedimento.', 'Confirme',
        mb_YesNo + Mb_IconQuestion) = idYes then
      begin
        Encerrar1Click(nil);
        ToolButtonAtualizar.OnClick(nil);
      end;
      Exit;
    end;

  end;

  if Sender.Name = 'Picture2' then
  begin

    vTextoMemo := TfrxPictureView(Sender).TagStr;
    vID := Trim(Copy(vTextoMemo, Pos('ID:', vTextoMemo) + 3,
      Length(vTextoMemo)));

    if DsMovProcDetalhado.DataSet.Locate('IDMOV_PROCEDIMENTOS',
      StrToInt(vID), []) then
    begin
      if Application.MessageBox('Ativar/Reabrir o procedimento.', 'Confirme',
        mb_YesNo + Mb_IconQuestion) = idYes then
      begin
        DM.SQLConnect.Execsql
          ('UPDATE MOV_PROCEDIMENTOS SET ST=''A'', DATA_ENCERRAMENTO=NULL,' +
          ' MOTIVO_ENCERRAMENTO=NULL WHERE IDMOV_PROCEDIMENTOS=' + vID);
        ToolButtonAtualizar.OnClick(nil);
      end;
      Exit;
    end;

  end;

  if Sender.Name = 'PictureExtrato' then
  begin

    vTextoMemo := TfrxPictureView(Sender).TagStr;
    vID := Trim(Copy(vTextoMemo, Pos('ID:', vTextoMemo) + 3,
      Length(vTextoMemo)));

    if DsMovProcDetalhado.DataSet.Locate('IDMOV_PROCEDIMENTOS',
      StrToInt(vID), []) then
    begin
      MontaRelExtratoProcedimentos;
      Exit;
    end;

  end;

  if Sender.Name = 'PictureNovo' then
  begin

    if Application.MessageBox('Agendar um procedimento de detalhe?', 'Confirme',
      mb_YesNo + Mb_IconQuestion) <> idYes then
      Exit;

    vTextoMemo := TfrxPictureView(Sender).TagStr;
    vID := Trim(Copy(vTextoMemo, Pos('ID:', vTextoMemo) + 3,
      Length(vTextoMemo)));

    if DsMovProcDetalhado.DataSet.Locate('IDMOV_PROCEDIMENTOS',
      StrToInt(vID), []) then
    begin
      FrmFiltroProcedimentos := TFrmFiltroProcedimentos.create(Application);
      DM.DsProcedimentos.DataSet.close;
      DM.DsProcedimentos.DataSet.Open;
      DM.DsProcedimentos.DataSet.Filtered := False;
      DM.DsProcedimentos.DataSet.Filter := 'IDPROCEDIMENTOS_MESTRE = ' +
        DsMovProcDetalhado.DataSet.fieldbyname('IDPROCEDIMENTOS').AsString;
      DM.DsProcedimentos.DataSet.Filtered := True;
      if DM.DsProcedimentos.DataSet.RecordCount > 0 then
      begin
        if FrmFiltroProcedimentos.ShowModal = mrok then
        begin
          FrmMovimentoProcedimentos := TFrmMovimentoProcedimentos.create
            (Application);
          FrmMovimentoProcedimentos.IDPROCEDIMENTOS :=
            FrmFiltroProcedimentos.DBLookupComboBoxProcedimentos.KeyValue;
          FrmMovimentoProcedimentos.SqlCadastro.ParamByName('IDPROCEDIMENTOS')
            .AsInteger :=
            FrmFiltroProcedimentos.DBLookupComboBoxProcedimentos.KeyValue;
          FrmMovimentoProcedimentos.SqlCadastro.ParamByName
            ('IDMOV_PROCEDIMENTOS').AsInteger := -1;
          FrmMovimentoProcedimentos.TabSheetConsulta.TabVisible := False;
          FrmMovimentoProcedimentos.TabSheetConsulta.TabVisible := False;
          FrmMovimentoProcedimentos.Editar.Visible := False;
          FrmMovimentoProcedimentos.Excluir.Visible := False;
          FrmMovimentoProcedimentos.IDMOV_PROCEDIMENTOS_PRINCIPAL :=
            StrToInt(vID);
          FrmMovimentoProcedimentos.DESCRICAO_PROCEDIMENTOS :=
            FrmFiltroProcedimentos.DBLookupComboBoxProcedimentos.Text;
          FrmMovimentoProcedimentos.ENVOLVE_ADVOGADO :=
            DM.DsProcedimentos.DataSet.fieldbyname('ENVOLVE_ADVOGADO').AsString;
          FrmMovimentoProcedimentos.ENVOLVE_FUNCIONARIO :=
            DM.DsProcedimentos.DataSet.fieldbyname
            ('ENVOLVE_FUNCIONARIO').AsString;
          FrmMovimentoProcedimentos.ENVOLVE_INTERNO :=
            DM.DsProcedimentos.DataSet.fieldbyname('ENVOLVE_INTERNO').AsString;
          FrmMovimentoProcedimentos.ENVOLVE_VISITANTE :=
            DM.DsProcedimentos.DataSet.fieldbyname('ENVOLVE_VISITANTE')
            .AsString;
          FrmMovimentoProcedimentos.HORA_INICIAL :=
            DM.DsProcedimentos.DataSet.fieldbyname('HORA_INICIAL').AsDateTime;
          FrmMovimentoProcedimentos.HORA_FINAL :=
            DM.DsProcedimentos.DataSet.fieldbyname('HORA_FINAL').AsDateTime;
          FrmMovimentoProcedimentos.OBSERVACAO :=
            DM.DsProcedimentos.DataSet.fieldbyname('OBSERVACAO').AsString;
          FrmMovimentoProcedimentos.FUNCAO_FUNCIONARIO :=
            DM.DsProcedimentos.DataSet.fieldbyname
            ('FUNCAO_FUNCIONARIO').AsString;
          FrmMovimentoProcedimentos.Caption :=
            FrmFiltroProcedimentos.DBLookupComboBoxProcedimentos.Text;
          FrmMovimentoProcedimentos.PanelTituloModeloCadastro.Caption :=
            FrmFiltroProcedimentos.DBLookupComboBoxProcedimentos.Text;
          FreeAndNil(FrmFiltroProcedimentos);
          FrmMovimentoProcedimentos.ShowModal;
          FreeAndNil(FrmMovimentoProcedimentos);
        end
        else
          FreeAndNil(FrmFiltroProcedimentos);
      end
      else
      begin
        ShowMessage('N�o tem procedimento de detalhe deste.');
      end;

      DsMovProcDetalhado.DataSet.close;
      DsMovProcDetalhado.DataSet.Open;
      DM.DsProcedimentos.DataSet.close;
      DM.DsProcedimentos.DataSet.Filtered := False;
      DM.DsProcedimentos.DataSet.Filter := '';
      Exit;

    end;

  end;

end;

procedure TFrmModuloPrincipal.MontaRelProcedimentos();
var
  rel3: string;
begin

  frxReport3.EngineOptions.DestroyForms := False;
  frxReport3.Preview := frxPreview3;
  rel3 := GLOBAL_PATCH_RELATORIO + '\SYSTEM\relatorio_procedimentos.fr3';

  case RadioGroupDiaProcedimento.ItemIndex of
    0:
      begin
        Data1 := date - 7;
        Data2 := date - 1;
      end;
    1:
      begin
        Data1 := date - 1;
        Data2 := date - 1;
      end;
    2:
      begin
        Data1 := date;
        Data2 := date;
      end;
    3:
      begin
        Data1 := date + 1;
        Data2 := date + 1;
      end;
    4:
      begin
        Data1 := date + 1;
        Data2 := date + 7;
      end;
    5:
      begin
        Data1 := date - 9999;
        Data2 := date + 9999;
      end;
  end;

  if FileExists(rel3) then
  begin

    frxReport3.LoadFromFile(rel3);

    frxReport3.Variables.DeleteVariable('ID_UP');
    frxReport3.Variables.AddVariable('SIAP', 'ID_UP', GLOBAL_ID_UP);

    frxReport3.Variables.DeleteVariable('ID_FUNCIONARIO');
    frxReport3.Variables.AddVariable('SIAP', 'ID_FUNCIONARIO',
      GLOBAL_ID_FUNCIONARIO);

    frxReport3.Variables.DeleteVariable('ST');
    if RadioGroupEncerrado.ItemIndex = 0 then
      frxReport3.Variables.AddVariable('SIAP', 'ST', qs('A'));

    if RadioGroupEncerrado.ItemIndex = 1 then
      frxReport3.Variables.AddVariable('SIAP', 'ST', qs('E'));

    frxReport3.Variables.DeleteVariable('GLOBAL_ORGAO');
    frxReport3.Variables.AddVariable('SIAP', 'GLOBAL_ORGAO', qs(GLOBAL_ORGAO));

    frxReport3.Variables.DeleteVariable('GLOBAL_DEPARTAMENTO');
    frxReport3.Variables.AddVariable('SIAP', 'GLOBAL_DEPARTAMENTO',
      qs(GLOBAL_DEPARTAMENTO));

    frxReport3.Variables.DeleteVariable('GLOBAL_DIRETORIA');
    frxReport3.Variables.AddVariable('SIAP', 'GLOBAL_DIRETORIA',
      qs(GLOBAL_DIRETORIA));

    frxReport3.Variables.DeleteVariable('DATA1');
    frxReport3.Variables.AddVariable('SIAP', 'DATA1',
      qs(FormatDateTime('dd.mm.yyyy', Data1)));

    frxReport3.Variables.DeleteVariable('DATA2');
    frxReport3.Variables.AddVariable('SIAP', 'DATA2',
      qs(FormatDateTime('dd.mm.yyyy', Data2)));

    frxReport3.Variables.DeleteVariable('IDPOSTO_TRABALHO');
    frxReport3.Variables.AddVariable('SIAP', 'IDPOSTO_TRABALHO',
      GLOBAL_IDPOSTO_TRABALHO);

    frxReport3.PrepareReport;

  end;

end;

procedure TFrmModuloPrincipal.MontaRelExtratoProcedimentos();
var
  relOutros: string;
begin

  relOutros := GLOBAL_PATCH_RELATORIO + '\SYSTEM\extrato_procedimentos.fr3';

  if FileExists(relOutros) then
  begin
    frxReportOutros.LoadFromFile(relOutros);
    frxReportOutros.Variables.DeleteVariable('ID_UP');
    frxReportOutros.Variables.AddVariable('SIAP', 'ID_UP', GLOBAL_ID_UP);
    frxReportOutros.Variables.DeleteVariable('ID_FUNCIONARIO');
    frxReportOutros.Variables.AddVariable('SIAP', 'ID_FUNCIONARIO',
      GLOBAL_ID_FUNCIONARIO);
    frxReportOutros.Variables.DeleteVariable('GLOBAL_ORGAO');
    frxReportOutros.Variables.AddVariable('SIAP', 'GLOBAL_ORGAO',
      qs(GLOBAL_ORGAO));
    frxReportOutros.Variables.DeleteVariable('GLOBAL_DEPARTAMENTO');
    frxReportOutros.Variables.AddVariable('SIAP', 'GLOBAL_DEPARTAMENTO',
      qs(GLOBAL_DEPARTAMENTO));
    frxReportOutros.Variables.DeleteVariable('GLOBAL_DIRETORIA');
    frxReportOutros.Variables.AddVariable('SIAP', 'GLOBAL_DIRETORIA',
      qs(GLOBAL_DIRETORIA));
    frxReportOutros.Variables.DeleteVariable('IDMOV_PROCEDIMENTOS');
    frxReportOutros.Variables.AddVariable('SIAP', 'IDMOV_PROCEDIMENTOS',
      DsMovProcDetalhado.DataSet.fieldbyname('IDMOV_PROCEDIMENTOS').AsInteger);
    frxReportOutros.Variables.DeleteVariable('IDPOSTO_TRABALHO');
    frxReportOutros.Variables.AddVariable('SIAP', 'IDPOSTO_TRABALHO',
      GLOBAL_IDPOSTO_TRABALHO);
    frxReportOutros.ShowReport;
  end;

end;

procedure TFrmModuloPrincipal.RadioGroupEncerradoClick(Sender: TObject);
begin
  ToolButtonAtualizar.OnClick(nil);
end;

procedure TFrmModuloPrincipal.RadioGroupDiaProcedimentoClick(Sender: TObject);
begin
  MontaRelProcedimentos;

  case RadioGroupDiaProcedimento.ItemIndex of
    0:
      begin
        Data1 := date - 7;
        Data2 := date - 1;
      end;
    1:
      begin
        Data1 := date - 1;
        Data2 := date - 1;
      end;
    2:
      begin
        Data1 := date;
        Data2 := date;
      end;
    3:
      begin
        Data1 := date + 1;
        Data2 := date + 1;
      end;
    4:
      begin
        Data1 := date + 1;
        Data2 := date + 7;
      end;
    5:
      begin
        Data1 := date - 9999;
        Data2 := date + 9999;
      end;
  end;

end;

procedure TFrmModuloPrincipal.PageControlSiapChange(Sender: TObject);
begin
  // if PageControlSiap.ActivePage = TabSheetProcedimentos then
  // ToolButtonAtualizar.OnClick(nil);

  if PageControlSiap.ActivePage = TabSheetEscala then
    BtnAtualizarEscalaDia.OnClick(nil);

end;

procedure TFrmModuloPrincipal.ToolButtonPostoTrabalhoClick(Sender: TObject);
begin

  FrmFiltroPostoTrabalho := TFrmFiltroPostoTrabalho.create(Application);
  if FrmFiltroPostoTrabalho.ShowModal = mrok then
    GLOBAL_IDPOSTO_TRABALHO :=
      FrmFiltroPostoTrabalho.DBLookupComboBox3.KeyValue;
  FreeAndNil(FrmFiltroPostoTrabalho);
  ToolButtonAtualizarClick(nil);

end;

procedure TFrmModuloPrincipal.MudaSkin1Click(Sender: TObject);
begin
  FrmMudaSkin := TFrmMudaSkin.create(Application);
  FrmMudaSkin.ShowModal;
  FreeAndNil(FrmMudaSkin);
end;

procedure TFrmModuloPrincipal.HorarioFuncionrio1Click(Sender: TObject);
begin

  FrmHorarioFuncionario := TFrmHorarioFuncionario.create(Application);
  FrmHorarioFuncionario.ShowModal;
  FreeAndNil(FrmHorarioFuncionario);

end;

procedure TFrmModuloPrincipal.MensagemdoBancodeDados1Click(Sender: TObject);
begin
  FrmMensagemBancoDados := TFrmMensagemBancoDados.create(Application);
  FrmMensagemBancoDados.ShowModal;
  FreeAndNil(FrmMensagemBancoDados);
end;

procedure TFrmModuloPrincipal.ipodePatrimnio1Click(Sender: TObject);
begin
  FrmTipoPatrimonio := TFrmTipoPatrimonio.create(Application);
  FrmTipoPatrimonio.ShowModal;
  FreeAndNil(FrmTipoPatrimonio);
end;

procedure TFrmModuloPrincipal.CadastrodePatrimonio1Click(Sender: TObject);
begin
  FrmPatrimonio := TFrmPatrimonio.create(Application);
  FrmPatrimonio.ShowModal;
  FreeAndNil(FrmPatrimonio);
end;

procedure TFrmModuloPrincipal.BitBtn17Click(Sender: TObject);
begin

  FrmNovaEscala := TFrmNovaEscala.create(Application);
  FrmNovaEscala.ShowModal;
  FreeAndNil(FrmNovaEscala);
  BtnAtualizarEscalaDia.OnClick(nil);

end;

procedure TFrmModuloPrincipal.BtnAtualizarEscalaDiaClick(Sender: TObject);
begin

  SqlEscalaPlantao.Sql.Text :=
    'SELECT * FROM ESCALA_PLANTAO WHERE DATA_PLANTAO = ' +
    qs(FormatDateTime('dd.mm.yyyy', DateTimePickerEscala.date));

  DsEscalaPlantao.DataSet.close;
  DsEscalaPlantao.DataSet.Open;

end;

procedure TFrmModuloPrincipal.CdsEscalaPlantaoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  if DataSet.fieldbyname('IDEQUIPE').AsVariant = null then
  begin
    MessageDlg('Informe a equipe.', mtWarning, [mbOK], 0);
    Abort;
  end;

  if DataSet.fieldbyname('IDFUNCIONARIO').AsVariant = null then
  begin
    MessageDlg('Informe a funcion�rio.', mtWarning, [mbOK], 0);
    Abort;
  end;

  if DataSet.fieldbyname('IDPOSTO_TRABALHO').AsVariant = null then
  begin
    MessageDlg('Informe a posto de trabalho.', mtWarning, [mbOK], 0);
    Abort;
  end;

end;

procedure TFrmModuloPrincipal.BitBtn19Click(Sender: TObject);
begin

  if not(DBLookupComboBoxEquipe.KeyValue > 0) then
  begin
    ShowMessage('Escolha a equipe.');
    Exit;
  end;

  if Application.MessageBox('Apagar a escala deste dia da equipe?', 'Confirme',
    mb_YesNo + Mb_IconQuestion) = idYes then
  begin
    DM.SQLConnect.Execsql('DELETE FROM ESCALA_PLANTAO WHERE IDEQUIPE =' +
      IntToStr(DBLookupComboBoxEquipe.KeyValue) + ' AND DATA_PLANTAO = ' +
      qs(FormatDateTime('dd.mm.yyyy', DateTimePickerEscala.date)));
  end;

  BtnAtualizarEscalaDia.OnClick(nil);

end;

procedure TFrmModuloPrincipal.CdsEscalaPlantaoAfterInsert(DataSet: TDataSet);
begin
  DataSet.fieldbyname('IDESCALA_PLANTAO').AsInteger := 0;
  DataSet.fieldbyname('DATA_PLANTAO').AsDateTime := DateTimePickerEscala.date;

  if (DBLookupComboBoxEquipe.KeyValue > 0) then
  begin
    DataSet.fieldbyname('IDEQUIPE').AsInteger :=
      DBLookupComboBoxEquipe.KeyValue;
  end;

end;

procedure TFrmModuloPrincipal.CdsEscalaPlantaoAfterPost(DataSet: TDataSet);
begin
  IniciaTransMovimento;
  TClientDataSet(DataSet).ApplyUpdates(0);
  FinalizaTransMovimento;
end;

procedure TFrmModuloPrincipal.BitBtn18Click(Sender: TObject);
var
  relOutros: string;
begin

  relOutros := GLOBAL_PATCH_RELATORIO + '\SYSTEM\EscalaPlantaoDia.fr3';

  if FileExists(relOutros) then
  begin

    frxReportOutros.LoadFromFile(relOutros);

    frxReportOutros.Variables.DeleteVariable('ID_UP');
    frxReportOutros.Variables.AddVariable('SIAP', 'ID_UP', GLOBAL_ID_UP);
    frxReportOutros.Variables.DeleteVariable('ID_FUNCIONARIO');
    frxReportOutros.Variables.AddVariable('SIAP', 'ID_FUNCIONARIO',
      GLOBAL_ID_FUNCIONARIO);
    frxReportOutros.Variables.DeleteVariable('GLOBAL_ORGAO');
    frxReportOutros.Variables.AddVariable('SIAP', 'GLOBAL_ORGAO',
      qs(GLOBAL_ORGAO));
    frxReportOutros.Variables.DeleteVariable('GLOBAL_DEPARTAMENTO');
    frxReportOutros.Variables.AddVariable('SIAP', 'GLOBAL_DEPARTAMENTO',
      qs(GLOBAL_DEPARTAMENTO));
    frxReportOutros.Variables.DeleteVariable('GLOBAL_DIRETORIA');
    frxReportOutros.Variables.AddVariable('SIAP', 'GLOBAL_DIRETORIA',
      qs(GLOBAL_DIRETORIA));
    frxReportOutros.Variables.DeleteVariable('DATA_PLANTAO');
    frxReportOutros.Variables.AddVariable('SIAP', 'DATA_PLANTAO',
      qs(FormatDateTime('dd.mm.yyyy', DateTimePickerEscala.date)));

    frxReportOutros.ShowReport;

  end;

end;

procedure TFrmModuloPrincipal.Inteligncia1Click(Sender: TObject);
begin
  // FrmPrincipalInteligencia := TFrmPrincipalInteligencia.Create(Application);
  // FrmPrincipalInteligencia.ShowModal;
  // FreeAndNil(FrmPrincipalInteligencia);
end;

procedure TFrmModuloPrincipal.CTC1Click(Sender: TObject);
begin

  FrmCTC := TFrmCTC.create(Application);
  FrmCTC.ShowModal;
  FreeAndNil(FrmCTC);

end;

procedure TFrmModuloPrincipal.DBLookupComboBoxUPClick(Sender: TObject);
begin

  if not(VISUALIZA_OUTRAS_UP = 'S') then
  begin
    DBLookupComboBoxUP.KeyValue := GLOBAL_ID_UP;
    ShowMessage('Sem permiss�o para visualizar outro estabelecimento penal.');
    Exit;
  end;

  with DsUP.DataSet do
  begin

    if not Active then
      Exit;

    if IsEmpty then
      Exit;

    UP_Logado := DsUP.DataSet.fieldbyname('SIGLA').AsString;
    GLOBAL_NOME_UP := DsUP.DataSet.fieldbyname('NOME_UP').AsString;

    GLOBAL_ID_UP := fieldbyname('ID_UP').AsInteger;
    GLOBAL_PATCH_RELATORIO := GLOBAL_PATCH_SISTEMA + '..\' +
      IntToStr(GLOBAL_ID_UP);

    if not DirectoryExists(GLOBAL_PATCH_RELATORIO) then
    begin
      GLOBAL_PATCH_RELATORIO := GLOBAL_PATCH_SISTEMA + '..\Relat�rios';
    end;

    if not DirectoryExists(GLOBAL_PATCH_RELATORIO) then
    begin
      CreateDir(GLOBAL_PATCH_SISTEMA + '..\Relat�rios');
      GLOBAL_PATCH_RELATORIO := GLOBAL_PATCH_SISTEMA + '..\Sem Relat�rio';
    end;

    DM.AbreConexao;

    tmr1.Enabled := True;

    DM.SqlPadrao.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;
    DM.DsPadrao.DataSet.close;
    DM.DsPadrao.DataSet.Open;

    GLOBAL_NIVEL_1 := 'Pavilh�o';
    GLOBAL_NIVEL_2 := 'Galeria';
    GLOBAL_NIVEL_3 := 'Solario';
    GLOBAL_NIVEL_4 := 'Cela';

    if not DM.DsPadrao.DataSet.IsEmpty then
    begin
      GLOBAL_PADRAO_SISTEMA := DM.DsPadrao.DataSet.fieldbyname
        ('SISTEMA').AsString;
      GLOBAL_NIVEL_1 := DM.DsPadrao.DataSet.fieldbyname
        ('NOME_PAVILHAO').AsString;
      GLOBAL_NIVEL_2 := DM.DsPadrao.DataSet.fieldbyname('NOME_GALERIA')
        .AsString;
      GLOBAL_NIVEL_3 := DM.DsPadrao.DataSet.fieldbyname('NOME_SOLARIO')
        .AsString;
      GLOBAL_NIVEL_4 := DM.DsPadrao.DataSet.fieldbyname('NOME_CELA').AsString;
      GLOBAL_RGI := DM.DsPadrao.DataSet.fieldbyname('RGI_AUTOMATICO').AsString;
    end;

    Pavilho1.Caption := GLOBAL_NIVEL_1;
    Galeria1.Caption := GLOBAL_NIVEL_2;
    Solario1.Caption := GLOBAL_NIVEL_3;
    Cela1.Caption := GLOBAL_NIVEL_4;

    if GLOBAL_IDCONEXAO > 0 then
    begin
      IniciaTransMovimento;
      try
        DM.SQLConnect.Execsql('update conexao set tela_momento = ' +
          qs(DBLookupComboBoxUP.Text) + ' where idconexao=' +
          IntToStr(GLOBAL_IDCONEXAO));
      except
      end;
      FinalizaTransMovimento;
    end;

  end;

end;

procedure TFrmModuloPrincipal.ControledePortaria1Click(Sender: TObject);
begin
  FrmControlePortaria := TFrmControlePortaria.create(Application);
  FrmControlePortaria.ShowModal;
  FreeAndNil(FrmControlePortaria);

end;

procedure TFrmModuloPrincipal.WebCam1Click(Sender: TObject);
begin

  FrmWebCam := TFrmWebCam.create(Application);
  FrmWebCam.SalvarImagemDireto := False;
  FrmWebCam.ShowModal;
  FreeAndNil(FrmWebCam);

end;

procedure TFrmModuloPrincipal.MduloGestodeArmas1Click(Sender: TObject);
begin

  FrmPrincipalArmas := TFrmPrincipalArmas.create(Application);
  FrmPrincipalArmas.ShowModal;
  FreeAndNil(FrmPrincipalArmas);

end;

procedure TFrmModuloPrincipal.AbreAgendaOURequerimento();
begin
  FrmFiltroAgendaAtendimento := TFrmFiltroAgendaAtendimento.create(Application);
  if StatusAgenda = 'R' then
  begin
    FrmFiltroAgendaAtendimento.BtnAgenda.Visible := False;
    FrmFiltroAgendaAtendimento.BtnRequerimento.Visible := True;
    FrmFiltroAgendaAtendimento.Label8.Caption := 'REQUERIMENTO PARA QUAL SETOR?'
  end
  else
  begin
    FrmFiltroAgendaAtendimento.BtnAgenda.Visible := True;
    FrmFiltroAgendaAtendimento.BtnRequerimento.Visible := False;
  end;

  if GLOBAL_IDPOSTO_TRABALHO > 0 then
    FrmFiltroAgendaAtendimento.DBLookupComboBoxPostoTrabalho.KeyValue :=
      GLOBAL_IDPOSTO_TRABALHO;

  FrmFiltroAgendaAtendimento.ShowModal;
  if FrmFiltroAgendaAtendimento.liberado = '' then
  begin
    FreeAndNil(FrmFiltroAgendaAtendimento);
    Exit;
  end;

  FreeAndNil(FrmFiltroAgendaAtendimento);

  FrmAgendaAtendimento := TFrmAgendaAtendimento.create(Application);
  FrmAgendaAtendimento.ShowModal;
  FreeAndNil(FrmAgendaAtendimento);

end;

procedure TFrmModuloPrincipal.BitBtn20Click(Sender: TObject);
begin
  StatusAgenda := 'R';
  AbreAgendaOURequerimento();

end;

procedure TFrmModuloPrincipal.Copiarumarquivo1Click(Sender: TObject);
begin
  FrmSalvarProgressbar := TFrmSalvarProgressbar.create(Application);
  FrmSalvarProgressbar.ShowModal;
  FreeAndNil(FrmSalvarProgressbar);
end;

procedure TFrmModuloPrincipal.PlanilhaDinmica1Click(Sender: TObject);
begin
  FrmPlanilhaDinamica := TFrmPlanilhaDinamica.create(Application);
  FrmPlanilhaDinamica.ShowModal;
  FreeAndNil(FrmPlanilhaDinamica);
end;

procedure TFrmModuloPrincipal.Detrao1Click(Sender: TObject);
begin
  FrmDetracao := TFrmDetracao.create(Application);
  FrmDetracao.ShowModal;
  FreeAndNil(FrmDetracao);
end;

procedure TFrmModuloPrincipal.InterrupesdaPena1Click(Sender: TObject);
begin
  FrmInterrupcao := TFrmInterrupcao.create(Application);
  FrmInterrupcao.ShowModal;
  FreeAndNil(FrmInterrupcao);

end;

procedure TFrmModuloPrincipal.RemiesdePena1Click(Sender: TObject);
begin
  FrmRemicao := TFrmRemicao.create(Application);
  FrmRemicao.ShowModal;
  FreeAndNil(FrmRemicao);
end;

procedure TFrmModuloPrincipal.ConsultaPROCED1Click(Sender: TObject);
begin
  FrmConsultaProced := TFrmConsultaProced.create(Application);
  FrmConsultaProced.ShowModal;
  FreeAndNil(FrmConsultaProced);

end;

procedure TFrmModuloPrincipal.VaradeExecuo1Click(Sender: TObject);
begin

  FrmVara := TFrmVara.create(Application);
  FrmVara.ShowModal;
  FreeAndNil(FrmVara);

end;

procedure TFrmModuloPrincipal.verlogsClick(Sender: TObject);
var
  i: Integer;
  Task: ITask;
begin
  SqlUltimosLogs.Sql.Text :=
    'select first 100 l.data_hora,l.script_reversao,l.ip_maquina from log_sistema l '
    + ' where l.id_funcionario=' + IntToStr(GLOBAL_ID_FUNCIONARIO) +
    ' order by l.data_hora desc';

  // atualizarprogressbar;
  atualizarprogressbar;
  // Task.Start;
  // DsUltimosLogs.DataSet.Open;
  // DBGrid1.Visible := True;
  /// Tasks[0] := TTask.create(atualizarprogressbar);

  // Tasks[1] := TTask.create(DsUltimosLogs.DataSet.Open);


  // Tasks[0].Start;

  // Tasks[1].Start;


  // TTask.WaitForAll(Tasks);

  // dbgrid1.Visible := true;

  // Chame o m�todo AtualizarProgresso para atualizar o ProgressBar na thread principal

  {
    DsUltimosLogs.DataSet.Open;
    FormProgresso.ProgressBar1.Max:=100;
    for i := 0 to 100 do
    begin
    FormProgresso.ProgressBar1.Position :=
    FormProgresso.ProgressBar1.Position + 1;
    sleep(200);
    end; }
  // DsUltimosLogs.DataSet.Open;




  // Associe o manipulador de eventos personalizado ao evento OnDataChange do DataSource

end;

procedure TFrmModuloPrincipal.ransfernciadeInterno1Click(Sender: TObject);
begin
  FrmTransferenciaInterno := TFrmTransferenciaInterno.create(Application);
  FrmTransferenciaInterno.ShowModal;
  FreeAndNil(FrmTransferenciaInterno);

end;

procedure TFrmModuloPrincipal.Saido1Click(Sender: TObject);
begin

  Frmsaidao := TFrmsaidao.create(Application);
  Frmsaidao.ShowModal;
  FreeAndNil(Frmsaidao);

end;

procedure TFrmModuloPrincipal.RecebimentodeTransferncia1Click(Sender: TObject);
begin

  FrmRecebimentoTransferencia := TFrmRecebimentoTransferencia.create
    (Application);
  FrmRecebimentoTransferencia.ShowModal;
  FreeAndNil(FrmRecebimentoTransferencia);

end;

procedure TFrmModuloPrincipal.DBImageFOTOFUNCIONARIOClick(Sender: TObject);
var
  sOrigem, sDestino: string;
  jpeg: TJpegImage;
begin
  with DsFuncionario.DataSet do
  begin
    IniciaTransMovimento;
    try
      Edit;
      if OpenDialog1.Execute then
      begin
        jpeg := TJpegImage.create;
        jpeg.LoadFromFile(ConverterBmpParaJPeg(JpgToBmp(OpenDialog1.FileName)));
        DBImageFOTOFUNCIONARIO.Picture.Bitmap.Assign(jpeg);
      end;
      post;
      cdsfuncionario.ApplyUpdates(0);
    except
    end;
    FinalizaTransMovimento;
  end;

end;

procedure TFrmModuloPrincipal.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (State <> [gdSelected]) and (State <> [gdSelected, gdFocused]) then
  begin

    TDBGrid(Sender).Canvas.Font.Color := clBlack;

    if odd(TDBGrid(Sender).DataSource.DataSet.Recno) then
    begin
      TDBGrid(Sender).Canvas.Brush.Color := cl3DLight;
    end
    else
    begin
      TDBGrid(Sender).Canvas.Brush.Color := clWhite;
    end;

    TDBGrid(Sender).Canvas.FillRect(Rect);
    TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);

  end
  else
  begin
    TDBGrid(Sender).Canvas.Brush.Color := $00854F3F;
    TDBGrid(Sender).Canvas.Font.Color := clWhite;
    TDBGrid(Sender).Canvas.FillRect(Rect);
    TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
  end;

end;

procedure TFrmModuloPrincipal.ransfernciadeInternoMovimentoInterno1Click
  (Sender: TObject);
begin
  FrmMudancaCela := TFrmMudancaCela.create(Application);
  FrmMudancaCela.ShowModal;
  FreeAndNil(FrmMudancaCela);
end;

procedure TFrmModuloPrincipal.Manual1Click(Sender: TObject);
var
  nome_arquivo, Dir: string;
begin

  // Manual
  Dir := GLOBAL_MEUS_DOCUMENTOS + '\view\' + IntToStr(GLOBAL_ID_FUNCIONARIO) +
    '\Manual\';

  if not DirectoryExists(Dir) then
    ForceDirectories(Dir);

  nome_arquivo := Dir + 'Manual.pdf';

  FrmSalvarProgressbar := TFrmSalvarProgressbar.create(Application);
  FrmSalvarProgressbar.CopyFileWithProgressBar2('..\Manual\Manual.pdf',
    nome_arquivo);
  FreeAndNil(FrmSalvarProgressbar);

  if FileExists(nome_arquivo) then
  begin

    FrmVisualizadorOLE := TFrmVisualizadorOLE.create(Application);

    with FrmVisualizadorOLE do
    begin
      ObjectFileName := nome_arquivo;
      JaFez := False;
      ShowModal;
    end;

    FreeAndNil(FrmVisualizadorOLE);

  end;

end;

procedure TFrmModuloPrincipal.AgendadeSada1Click(Sender: TObject);
begin

  FrmAgendaSaidaInterno := TFrmAgendaSaidaInterno.create(Application);
  FrmAgendaSaidaInterno.ShowModal;
  FreeAndNil(FrmAgendaSaidaInterno);

end;

procedure TFrmModuloPrincipal.RegraparaVisitano1Click(Sender: TObject);
begin

  FrmRegraVisita := TFrmRegraVisita.create(Application);
  FrmRegraVisita.ShowModal;
  FreeAndNil(FrmRegraVisita);

end;

procedure TFrmModuloPrincipal.SiapenMessenger1Click(Sender: TObject);
begin

  FrmBatePapo := TFrmBatePapo.create(Application);
  FrmBatePapo.ShowModal;
  FreeAndNil(FrmBatePapo);

end;

procedure TFrmModuloPrincipal.BancodeHoras1Click(Sender: TObject);
begin

  FrmFuncBancoHoras := TFrmFuncBancoHoras.create(Application);
  FrmFuncBancoHoras.ShowModal;
  FreeAndNil(FrmFuncBancoHoras);

end;

procedure TFrmModuloPrincipal.CirculaodeInterno1Click(Sender: TObject);
begin
  Frmcirculacaointerno := TFrmcirculacaointerno.create(Application);
  Frmcirculacaointerno.ShowModal;
  FreeAndNil(Frmcirculacaointerno);
end;

procedure TFrmModuloPrincipal.MduloGestodePessoas1Click(Sender: TObject);
begin
  FrmPrincipalGestaoPessoal := TFrmPrincipalGestaoPessoal.create(Application);
  FrmPrincipalGestaoPessoal.ShowModal;
  FreeAndNil(FrmPrincipalGestaoPessoal);
end;

procedure TFrmModuloPrincipal.RemioTrabalho1Click(Sender: TObject);
begin
  Frmlancamentoremicaotrabalho := TFrmlancamentoremicaotrabalho.create
    (Application);
  Frmlancamentoremicaotrabalho.ShowModal;
  FreeAndNil(Frmlancamentoremicaotrabalho);
end;

procedure TFrmModuloPrincipal.Roupas1Click(Sender: TObject);
begin

  frmroupa := tfrmroupa.create(Application);
  frmroupa.ShowModal;
  FreeAndNil(frmroupa);

end;

procedure TFrmModuloPrincipal.MovimentoSemiAberto1Click(Sender: TObject);
begin

  Frmmovimentosemiaberto := TFrmmovimentosemiaberto.create(Application);
  Frmmovimentosemiaberto.ShowModal;
  FreeAndNil(Frmmovimentosemiaberto);

end;

procedure TFrmModuloPrincipal.MonitoramentoEletrnico1Click(Sender: TObject);
begin

  Frmmonitoramento_eletronico := TFrmmonitoramento_eletronico.create
    (Application);
  Frmmonitoramento_eletronico.ShowModal;
  FreeAndNil(Frmmonitoramento_eletronico);
end;

procedure TFrmModuloPrincipal.AtribuicaoSetores1Click(Sender: TObject);
var
  nome_arquivo, Dir: string;
begin

  // Atribui��o de cada setor da penitenci�ria
  Dir := GLOBAL_MEUS_DOCUMENTOS + '\view\' + IntToStr(GLOBAL_ID_FUNCIONARIO) +
    '\Manual\';

  if not DirectoryExists(Dir) then
    ForceDirectories(Dir);

  nome_arquivo := Dir + 'Atribuicao_Setores.pdf';

  FrmSalvarProgressbar := TFrmSalvarProgressbar.create(Application);
  FrmSalvarProgressbar.CopyFileWithProgressBar2
    ('..\Manual\Atribuicao_Setores.pdf', nome_arquivo);
  FreeAndNil(FrmSalvarProgressbar);

  if FileExists(nome_arquivo) then
  begin

    FrmVisualizadorOLE := TFrmVisualizadorOLE.create(Application);

    with FrmVisualizadorOLE do
    begin
      ObjectFileName := nome_arquivo;
      JaFez := False;
      ShowModal;
    end;

    FreeAndNil(FrmVisualizadorOLE);

  end;

end;

procedure TFrmModuloPrincipal.Ocorrncias1Click(Sender: TObject);
begin

  if PERMISSAO_OCORRENCIA = '' then
  begin

    if Sender is TMenuItem then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TMenuItem(Sender)
        .Caption);

    if Sender is TBitBtn then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TBitBtn(Sender).Caption);

    Exit;
  end;

  FrmCadastroOcorrenciaPlantao := TFrmCadastroOcorrenciaPlantao.create
    (Application);
  FrmCadastroOcorrenciaPlantao.ShowModal;
  FreeAndNil(FrmCadastroOcorrenciaPlantao);

end;

procedure TFrmModuloPrincipal.Faco1Click(Sender: TObject);
begin

  FrmCadastroFaccao := TFrmCadastroFaccao.create(Application);
  FrmCadastroFaccao.ShowModal;
  FreeAndNil(FrmCadastroFaccao);

end;

procedure TFrmModuloPrincipal.RadioGroupBancoDadosClick(Sender: TObject);
begin
  if RadioGroupBancoDados.ItemIndex = 0 then
  begin
    if DirectoryExists(GLOBAL_PASTA_SPF) then
    begin

      while DM.SQLConnect.Connected do
      begin
        try
          DM.SQLConnect.Connected := False;
        except
        end;
      end;

      GLOBAL_PATCH_SISTEMA := GLOBAL_PASTA_SPF;
      GLOBAL_ID_FUNCIONARIO := -1;

      DM.AbreConexao;

      DsUP.DataSet.close;
      DsUP.DataSet.Open;

      GLOBAL_PATCH_RELATORIO := GLOBAL_PATCH_SISTEMA + '..\' +
        IntToStr(GLOBAL_ID_UP);

      if not DirectoryExists(GLOBAL_PATCH_RELATORIO) then
      begin
        GLOBAL_PATCH_RELATORIO := GLOBAL_PATCH_SISTEMA + '..\Relat�rios';
      end;

      if not DirectoryExists(GLOBAL_PATCH_RELATORIO) then
      begin
        CreateDir(GLOBAL_PATCH_SISTEMA + '..\Relat�rios');
        GLOBAL_PATCH_RELATORIO := GLOBAL_PATCH_SISTEMA + '..\Sem Relat�rio';
      end;

      DBLookupComboBoxUP.KeyValue := GLOBAL_ID_UP;

      tmr1.Enabled := True;

      DM.SqlPadrao.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;
      DM.DsPadrao.DataSet.close;
      DM.DsPadrao.DataSet.Open;

      GLOBAL_NIVEL_1 := 'Pavilh�o';
      GLOBAL_NIVEL_2 := 'Galeria';
      GLOBAL_NIVEL_3 := 'Solario';
      GLOBAL_NIVEL_4 := 'Cela';

      if not DM.DsPadrao.DataSet.IsEmpty then
      begin

        GLOBAL_PADRAO_SISTEMA := DM.DsPadrao.DataSet.fieldbyname
          ('SISTEMA').AsString;
        GLOBAL_NIVEL_1 := DM.DsPadrao.DataSet.fieldbyname
          ('NOME_PAVILHAO').AsString;
        GLOBAL_NIVEL_2 := DM.DsPadrao.DataSet.fieldbyname
          ('NOME_GALERIA').AsString;
        GLOBAL_NIVEL_3 := DM.DsPadrao.DataSet.fieldbyname
          ('NOME_SOLARIO').AsString;
        GLOBAL_NIVEL_4 := DM.DsPadrao.DataSet.fieldbyname('NOME_CELA').AsString;
        GLOBAL_RGI := DM.DsPadrao.DataSet.fieldbyname('RGI_AUTOMATICO')
          .AsString;
      end;

      Pavilho1.Caption := GLOBAL_NIVEL_1;
      Galeria1.Caption := GLOBAL_NIVEL_2;
      Solario1.Caption := GLOBAL_NIVEL_3;
      Cela1.Caption := GLOBAL_NIVEL_4;

      if GLOBAL_IDCONEXAO > 0 then
      begin
        IniciaTransMovimento;
        try
          DM.SQLConnect.Execsql('update conexao set tela_momento = ' +
            qs(DBLookupComboBoxUP.Text) + ' where idconexao=' +
            IntToStr(GLOBAL_IDCONEXAO));
        except
        end;
        FinalizaTransMovimento;
      end;

    end;
  end;

  if RadioGroupBancoDados.ItemIndex = 1 then
  begin
    if DirectoryExists(GLOBAL_PASTA_DF) then
    begin

      while DM.SQLConnect.Connected do
      begin
        try
          DM.SQLConnect.Connected := False;
        except
        end;
      end;

      GLOBAL_PATCH_SISTEMA := GLOBAL_PASTA_DF;
      GLOBAL_ID_FUNCIONARIO := -1;

      DM.AbreConexao;

      DsUP.DataSet.close;
      DsUP.DataSet.Open;

      GLOBAL_PATCH_RELATORIO := GLOBAL_PATCH_SISTEMA + '..\' +
        IntToStr(GLOBAL_ID_UP);

      if not DirectoryExists(GLOBAL_PATCH_RELATORIO) then
      begin
        GLOBAL_PATCH_RELATORIO := GLOBAL_PATCH_SISTEMA + '..\Relat�rios';
      end;

      if not DirectoryExists(GLOBAL_PATCH_RELATORIO) then
      begin
        CreateDir(GLOBAL_PATCH_SISTEMA + '..\Relat�rios');
        GLOBAL_PATCH_RELATORIO := GLOBAL_PATCH_SISTEMA + '..\Sem Relat�rio';
      end;

      DBLookupComboBoxUP.KeyValue := GLOBAL_ID_UP;

      tmr1.Enabled := True;

      DM.SqlPadrao.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;
      DM.DsPadrao.DataSet.close;
      DM.DsPadrao.DataSet.Open;

      GLOBAL_NIVEL_1 := 'Pavilh�o';
      GLOBAL_NIVEL_2 := 'Galeria';
      GLOBAL_NIVEL_3 := 'Solario';
      GLOBAL_NIVEL_4 := 'Cela';

      if not DM.DsPadrao.DataSet.IsEmpty then
      begin
        GLOBAL_PADRAO_SISTEMA := DM.DsPadrao.DataSet.fieldbyname
          ('SISTEMA').AsString;
        GLOBAL_NIVEL_1 := DM.DsPadrao.DataSet.fieldbyname
          ('NOME_PAVILHAO').AsString;
        GLOBAL_NIVEL_2 := DM.DsPadrao.DataSet.fieldbyname
          ('NOME_GALERIA').AsString;
        GLOBAL_NIVEL_3 := DM.DsPadrao.DataSet.fieldbyname
          ('NOME_SOLARIO').AsString;
        GLOBAL_NIVEL_4 := DM.DsPadrao.DataSet.fieldbyname('NOME_CELA').AsString;
        GLOBAL_RGI := DM.DsPadrao.DataSet.fieldbyname('RGI_AUTOMATICO')
          .AsString;
      end;

      Pavilho1.Caption := GLOBAL_NIVEL_1;
      Galeria1.Caption := GLOBAL_NIVEL_2;
      Solario1.Caption := GLOBAL_NIVEL_3;
      Cela1.Caption := GLOBAL_NIVEL_4;

      if GLOBAL_IDCONEXAO > 0 then
      begin
        IniciaTransMovimento;
        try
          DM.SQLConnect.Execsql('update conexao set tela_momento = ' +
            qs(DBLookupComboBoxUP.Text) + ' where idconexao=' +
            IntToStr(GLOBAL_IDCONEXAO));
        except
        end;
        FinalizaTransMovimento;
      end;

    end
    else
    begin
      ShowMessage('N�o encontrou o banco de dados.');
    end;

  end;

  if RadioGroupBancoDados.ItemIndex = 2 then
  begin
    if DirectoryExists(GLOBAL_PASTA_MA) then
    begin

      while DM.SQLConnect.Connected do
      begin
        try
          DM.SQLConnect.Connected := False;
        except
        end;
      end;

      GLOBAL_PATCH_SISTEMA := GLOBAL_PASTA_MA;
      GLOBAL_ID_FUNCIONARIO := -1;

      DM.AbreConexao;

      DsUP.DataSet.close;
      DsUP.DataSet.Open;

      GLOBAL_PATCH_RELATORIO := GLOBAL_PATCH_SISTEMA + '..\' +
        IntToStr(GLOBAL_ID_UP);

      if not DirectoryExists(GLOBAL_PATCH_RELATORIO) then
      begin
        GLOBAL_PATCH_RELATORIO := GLOBAL_PATCH_SISTEMA + '..\Relat�rios';
      end;

      if not DirectoryExists(GLOBAL_PATCH_RELATORIO) then
      begin
        CreateDir(GLOBAL_PATCH_SISTEMA + '..\Relat�rios');
        GLOBAL_PATCH_RELATORIO := GLOBAL_PATCH_SISTEMA + '..\Sem Relat�rio';
      end;

      DBLookupComboBoxUP.KeyValue := GLOBAL_ID_UP;

      tmr1.Enabled := True;

      DM.SqlPadrao.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;
      DM.DsPadrao.DataSet.close;
      DM.DsPadrao.DataSet.Open;

      GLOBAL_NIVEL_1 := 'Virtual';
      GLOBAL_NIVEL_2 := 'Virtual';
      GLOBAL_NIVEL_3 := 'Virtual';
      GLOBAL_NIVEL_4 := 'Virtual';

      if not DM.DsPadrao.DataSet.IsEmpty then
      begin
        GLOBAL_PADRAO_SISTEMA := DM.DsPadrao.DataSet.fieldbyname
          ('SISTEMA').AsString;
        GLOBAL_NIVEL_1 := DM.DsPadrao.DataSet.fieldbyname
          ('NOME_PAVILHAO').AsString;
        GLOBAL_NIVEL_2 := DM.DsPadrao.DataSet.fieldbyname
          ('NOME_GALERIA').AsString;
        GLOBAL_NIVEL_3 := DM.DsPadrao.DataSet.fieldbyname
          ('NOME_SOLARIO').AsString;
        GLOBAL_NIVEL_4 := DM.DsPadrao.DataSet.fieldbyname('NOME_CELA').AsString;
        GLOBAL_RGI := DM.DsPadrao.DataSet.fieldbyname('RGI_AUTOMATICO')
          .AsString;
      end;

      Pavilho1.Caption := GLOBAL_NIVEL_1;
      Galeria1.Caption := GLOBAL_NIVEL_2;
      Solario1.Caption := GLOBAL_NIVEL_3;
      Cela1.Caption := GLOBAL_NIVEL_4;

      if GLOBAL_IDCONEXAO > 0 then
      begin
        IniciaTransMovimento;
        try
          DM.SQLConnect.Execsql('update conexao set tela_momento = ' +
            qs(DBLookupComboBoxUP.Text) + ' where idconexao=' +
            IntToStr(GLOBAL_IDCONEXAO));
        except
        end;
        FinalizaTransMovimento;
      end;

    end
    else
    begin
      ShowMessage('N�o encontrou o banco de dados.');
    end;

  end;

  if RadioGroupBancoDados.ItemIndex = 3 then
  begin
    if DirectoryExists(GLOBAL_PASTA_MS) then
    begin

      while DM.SQLConnect.Connected do
      begin
        try
          DM.SQLConnect.Connected := False;
        except
        end;
      end;

      GLOBAL_PATCH_SISTEMA := GLOBAL_PASTA_MS;
      GLOBAL_ID_FUNCIONARIO := -1;

      DM.AbreConexao;

      DsUP.DataSet.close;
      DsUP.DataSet.Open;

      GLOBAL_PATCH_RELATORIO := GLOBAL_PATCH_SISTEMA + '..\' +
        IntToStr(GLOBAL_ID_UP);

      if not DirectoryExists(GLOBAL_PATCH_RELATORIO) then
      begin
        GLOBAL_PATCH_RELATORIO := GLOBAL_PATCH_SISTEMA + '..\Relat�rios';
      end;

      if not DirectoryExists(GLOBAL_PATCH_RELATORIO) then
      begin
        CreateDir(GLOBAL_PATCH_SISTEMA + '..\Relat�rios');
        GLOBAL_PATCH_RELATORIO := GLOBAL_PATCH_SISTEMA + '..\Sem Relat�rio';
      end;

      DBLookupComboBoxUP.KeyValue := GLOBAL_ID_UP;

      tmr1.Enabled := True;

      DM.SqlPadrao.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;
      DM.DsPadrao.DataSet.close;
      DM.DsPadrao.DataSet.Open;

      GLOBAL_NIVEL_1 := 'Virtual';
      GLOBAL_NIVEL_2 := 'Virtual';
      GLOBAL_NIVEL_3 := 'Virtual';
      GLOBAL_NIVEL_4 := 'Virtual';

      if not DM.DsPadrao.DataSet.IsEmpty then
      begin
        GLOBAL_PADRAO_SISTEMA := DM.DsPadrao.DataSet.fieldbyname
          ('SISTEMA').AsString;
        GLOBAL_NIVEL_1 := DM.DsPadrao.DataSet.fieldbyname
          ('NOME_PAVILHAO').AsString;
        GLOBAL_NIVEL_2 := DM.DsPadrao.DataSet.fieldbyname
          ('NOME_GALERIA').AsString;
        GLOBAL_NIVEL_3 := DM.DsPadrao.DataSet.fieldbyname
          ('NOME_SOLARIO').AsString;
        GLOBAL_NIVEL_4 := DM.DsPadrao.DataSet.fieldbyname('NOME_CELA').AsString;
        GLOBAL_RGI := DM.DsPadrao.DataSet.fieldbyname('RGI_AUTOMATICO')
          .AsString;
      end;

      Pavilho1.Caption := GLOBAL_NIVEL_1;
      Galeria1.Caption := GLOBAL_NIVEL_2;
      Solario1.Caption := GLOBAL_NIVEL_3;
      Cela1.Caption := GLOBAL_NIVEL_4;

      if GLOBAL_IDCONEXAO > 0 then
      begin
        IniciaTransMovimento;
        try
          DM.SQLConnect.Execsql('update conexao set tela_momento = ' +
            qs(DBLookupComboBoxUP.Text) + ' where idconexao=' +
            IntToStr(GLOBAL_IDCONEXAO));
        except
        end;
        FinalizaTransMovimento;
      end;

    end
    else
    begin
      ShowMessage('N�o encontrou o banco de dados.');
    end;

  end;

  if RadioGroupBancoDados.ItemIndex = 4 then
  begin
    if DirectoryExists(GLOBAL_PASTA_MT) then
    begin

      while DM.SQLConnect.Connected do
      begin
        try
          DM.SQLConnect.Connected := False;
        except
        end;
      end;

      GLOBAL_PATCH_SISTEMA := GLOBAL_PASTA_MT;
      GLOBAL_ID_FUNCIONARIO := -1;

      DM.AbreConexao;

      DsUP.DataSet.close;
      DsUP.DataSet.Open;

      GLOBAL_PATCH_RELATORIO := GLOBAL_PATCH_SISTEMA + '..\' +
        IntToStr(GLOBAL_ID_UP);

      if not DirectoryExists(GLOBAL_PATCH_RELATORIO) then
      begin
        GLOBAL_PATCH_RELATORIO := GLOBAL_PATCH_SISTEMA + '..\Relat�rios';
      end;

      if not DirectoryExists(GLOBAL_PATCH_RELATORIO) then
      begin
        CreateDir(GLOBAL_PATCH_SISTEMA + '..\Relat�rios');
        GLOBAL_PATCH_RELATORIO := GLOBAL_PATCH_SISTEMA + '..\Sem Relat�rio';
      end;

      DBLookupComboBoxUP.KeyValue := GLOBAL_ID_UP;

      tmr1.Enabled := True;

      DM.SqlPadrao.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;
      DM.DsPadrao.DataSet.close;
      DM.DsPadrao.DataSet.Open;

      GLOBAL_NIVEL_1 := 'Virtual';
      GLOBAL_NIVEL_2 := 'Virtual';
      GLOBAL_NIVEL_3 := 'Virtual';
      GLOBAL_NIVEL_4 := 'Virtual';

      if not DM.DsPadrao.DataSet.IsEmpty then
      begin
        GLOBAL_PADRAO_SISTEMA := DM.DsPadrao.DataSet.fieldbyname
          ('SISTEMA').AsString;
        GLOBAL_NIVEL_1 := DM.DsPadrao.DataSet.fieldbyname
          ('NOME_PAVILHAO').AsString;
        GLOBAL_NIVEL_2 := DM.DsPadrao.DataSet.fieldbyname
          ('NOME_GALERIA').AsString;
        GLOBAL_NIVEL_3 := DM.DsPadrao.DataSet.fieldbyname
          ('NOME_SOLARIO').AsString;
        GLOBAL_NIVEL_4 := DM.DsPadrao.DataSet.fieldbyname('NOME_CELA').AsString;
        GLOBAL_RGI := DM.DsPadrao.DataSet.fieldbyname('RGI_AUTOMATICO')
          .AsString;
      end;

      Pavilho1.Caption := GLOBAL_NIVEL_1;
      Galeria1.Caption := GLOBAL_NIVEL_2;
      Solario1.Caption := GLOBAL_NIVEL_3;
      Cela1.Caption := GLOBAL_NIVEL_4;

      if GLOBAL_IDCONEXAO > 0 then
      begin
        IniciaTransMovimento;
        try
          DM.SQLConnect.Execsql('update conexao set tela_momento = ' +
            qs(DBLookupComboBoxUP.Text) + ' where idconexao=' +
            IntToStr(GLOBAL_IDCONEXAO));
        except
        end;
        FinalizaTransMovimento;
      end;

    end
    else
    begin
      ShowMessage('N�o encontrou o banco de dados.');
    end;

  end;

  if RadioGroupBancoDados.ItemIndex = 5 then
  begin
    if DirectoryExists(GLOBAL_PASTA_PB) then
    begin

      while DM.SQLConnect.Connected do
      begin
        try
          DM.SQLConnect.Connected := False;
        except
        end;
      end;

      GLOBAL_PATCH_SISTEMA := GLOBAL_PASTA_PB;
      GLOBAL_ID_FUNCIONARIO := -1;

      DM.AbreConexao;

      DsUP.DataSet.close;
      DsUP.DataSet.Open;

      GLOBAL_PATCH_RELATORIO := GLOBAL_PATCH_SISTEMA + '..\' +
        IntToStr(GLOBAL_ID_UP);

      if not DirectoryExists(GLOBAL_PATCH_RELATORIO) then
      begin
        GLOBAL_PATCH_RELATORIO := GLOBAL_PATCH_SISTEMA + '..\Relat�rios';
      end;

      if not DirectoryExists(GLOBAL_PATCH_RELATORIO) then
      begin
        CreateDir(GLOBAL_PATCH_SISTEMA + '..\Relat�rios');
        GLOBAL_PATCH_RELATORIO := GLOBAL_PATCH_SISTEMA + '..\Sem Relat�rio';
      end;

      DBLookupComboBoxUP.KeyValue := GLOBAL_ID_UP;

      tmr1.Enabled := True;

      DM.SqlPadrao.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;
      DM.DsPadrao.DataSet.close;
      DM.DsPadrao.DataSet.Open;

      GLOBAL_NIVEL_1 := 'Virtual';
      GLOBAL_NIVEL_2 := 'Virtual';
      GLOBAL_NIVEL_3 := 'Virtual';
      GLOBAL_NIVEL_4 := 'Virtual';

      if not DM.DsPadrao.DataSet.IsEmpty then
      begin
        GLOBAL_PADRAO_SISTEMA := DM.DsPadrao.DataSet.fieldbyname
          ('SISTEMA').AsString;
        GLOBAL_NIVEL_1 := DM.DsPadrao.DataSet.fieldbyname
          ('NOME_PAVILHAO').AsString;
        GLOBAL_NIVEL_2 := DM.DsPadrao.DataSet.fieldbyname
          ('NOME_GALERIA').AsString;
        GLOBAL_NIVEL_3 := DM.DsPadrao.DataSet.fieldbyname
          ('NOME_SOLARIO').AsString;
        GLOBAL_NIVEL_4 := DM.DsPadrao.DataSet.fieldbyname('NOME_CELA').AsString;
        GLOBAL_RGI := DM.DsPadrao.DataSet.fieldbyname('RGI_AUTOMATICO')
          .AsString;
      end;

      Pavilho1.Caption := GLOBAL_NIVEL_1;
      Galeria1.Caption := GLOBAL_NIVEL_2;
      Solario1.Caption := GLOBAL_NIVEL_3;
      Cela1.Caption := GLOBAL_NIVEL_4;

      if GLOBAL_IDCONEXAO > 0 then
      begin
        IniciaTransMovimento;
        try
          DM.SQLConnect.Execsql('update conexao set tela_momento = ' +
            qs(DBLookupComboBoxUP.Text) + ' where idconexao=' +
            IntToStr(GLOBAL_IDCONEXAO));
        except
        end;
        FinalizaTransMovimento;
      end;

    end
    else
    begin
      ShowMessage('N�o encontrou o banco de dados.');
    end;

  end;

end;

procedure TFrmModuloPrincipal.LocalizaoPorPronturio1Click(Sender: TObject);
begin
  FrmConsultaLocalizacaoPorProntuario :=
    TFrmConsultaLocalizacaoPorProntuario.create(Application);
  FrmConsultaLocalizacaoPorProntuario.ShowModal;
  FreeAndNil(FrmConsultaLocalizacaoPorProntuario);

end;

procedure TFrmModuloPrincipal.WebBrowser1Click(Sender: TObject);
begin

  FrmWebBrowser := TFrmWebBrowser.create(Self);
  FrmWebBrowser.ShowModal;
  FreeAndNil(FrmWebBrowser);

end;

procedure TFrmModuloPrincipal.ConselhoDi1Click(Sender: TObject);
begin
  frmConselhoDisciplinar := TfrmConselhoDisciplinar.create(Application);
  frmConselhoDisciplinar.ShowModal;
  FreeAndNil(frmConselhoDisciplinar);
end;

procedure TFrmModuloPrincipal.mnuCorrespondenciaClick(Sender: TObject);
begin
  FrmCadastroCorrespondencia := TFrmCadastroCorrespondencia.create(Application);
  FrmCadastroCorrespondencia.ShowModal;
  FreeAndNil(FrmCadastroCorrespondencia);
end;

procedure TFrmModuloPrincipal.VisitantesTrfico1Click(Sender: TObject);
begin
  FrmVisitanteTrafico := TFrmVisitanteTrafico.create(Application);
  FrmVisitanteTrafico.ShowModal;
  FreeAndNil(FrmVisitanteTrafico);
end;

procedure TFrmModuloPrincipal.CadastroPortaria1Click(Sender: TObject);
begin
  FrmSaidaoCadastro := TFrmSaidaoCadastro.create(Application);
  FrmSaidaoCadastro.ShowModal;
  FreeAndNil(FrmSaidaoCadastro);
end;

procedure TFrmModuloPrincipal.BitBtnOcorrenciaClick(Sender: TObject);
begin
  if PERMISSAO_OCORRENCIA = '' then
  begin

    if Sender is TMenuItem then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TMenuItem(Sender)
        .Caption);

    if Sender is TBitBtn then
      ShowMessage('N�o H� Permiss�o Para Acesso - ' + TBitBtn(Sender).Caption);

    Exit;
  end;

  FrmCadastroOcorrenciaPlantao := TFrmCadastroOcorrenciaPlantao.create
    (Application);
  FrmCadastroOcorrenciaPlantao.ShowModal;
  FreeAndNil(FrmCadastroOcorrenciaPlantao);
end;

procedure TFrmModuloPrincipal.PerfildeUsurio1Click(Sender: TObject);
begin
  FrmCadastroPerfilUsuario := TFrmCadastroPerfilUsuario.create(Application);
  FrmCadastroPerfilUsuario.ShowModal;
  FreeAndNil(FrmCadastroPerfilUsuario);
end;

procedure TFrmModuloPrincipal.Monitoramento1Click(Sender: TObject);
begin
  FrmPrincipalMonitoramento := TFrmPrincipalMonitoramento.create(Application);
  FrmPrincipalMonitoramento.Show;
end;

procedure TFrmModuloPrincipal.TimeraAtualizaRelAgendaDiaTimer(Sender: TObject);
// var
// PastaUsuario: String;
// SourcePath: String;
// DestinationPath: String;
// FileName : String;
// IsFileFound: Boolean;
begin
  // PastaUsuario := GetEnvironmentVariable('userprofile');
  // Filename := 'dbxconnections.ini';
  // SourcePath := ExtractFilePath(Application.ExeName) +'\config\'+ FileName;
  // DestinationPath := PastaUsuario + '\config\' + FileName;
  // IsFileFound := FileExists(DestinationPath);

  // if not IsFileFound then
  // begin
  // if FileExists(SourcePath) then
  // begin
  // Copiar o arquivo da pasta do aplicativo para a pasta do usu�rio
  // CopyFile(PChar(SourcePath), PChar(DestinationPath), False);
  // end;
  // end;
  frxReport2.PrepareReport;
end;

procedure TFrmModuloPrincipal.TimerAtualizaRelQtdPresosTimer(Sender: TObject);
// var
// PastaUsuario: String;
// SourcePath: String;
// DestinationPath: String;
// FileName : String;
// IsFileFound: Boolean;
begin
  // PastaUsuario := GetEnvironmentVariable('userprofile');
  // Filename := 'dbxconnections.ini';
  // SourcePath := ExtractFilePath(Application.ExeName) +'\config\'+ FileName;
  // DestinationPath := PastaUsuario + '\config\' + FileName;
  // IsFileFound := FileExists(DestinationPath);

  // if not IsFileFound then
  // begin
  // if FileExists(SourcePath) then
  // begin
  // Copiar o arquivo da pasta do aplicativo para a pasta do usu�rio
  // CopyFile(PChar(SourcePath), PChar(DestinationPath), False);
  // end;
  // end;
  frxReport1.PrepareReport;
end;

procedure TFrmModuloPrincipal.CargaHorria1Click(Sender: TObject);
begin
  FrmCargaHorariaMutipla := TFrmCargaHorariaMutipla.create(Application);
  FrmCargaHorariaMutipla.Show;
end;

procedure TFrmModuloPrincipal.frxPreview2Click(Sender: TObject);
begin
  frxReport2.PrepareReport;
end;

procedure TFrmModuloPrincipal.deixararredondado;
var
  rgn: HRGN;
begin
  rgn := arredondar(RoundedPanel1, RoundedPanel1.RoundedRadius);
  DeleteObject(rgn);

  rgn := arredondar(PanelCabecalho, 20);
  DeleteObject(rgn);

  rgn := arredondar(Panel1, 20);
  DeleteObject(rgn);

  rgn := arredondar(pnl1, 20);
  DeleteObject(rgn);
end;

procedure TFrmModuloPrincipal.atualizarprogressbar;
var
  FormProgresso: TFormProgresso;
  i: Integer;
begin
  FormProgresso := TFormProgresso.create(Application);
  FormProgresso.Label1.Caption:='Carregando...';
  FormProgresso.Label1.Visible:=True;
  FormProgresso.Show;
  try
    if not DBGrid1.Visible then
    begin
      FormProgresso.StartThreads(DsUltimosLogs);
      // DsUltimosLogs.DataSet.Open;
      // Ap�s abrir o dataset, fa�a o que for necess�rio
      Application.ProcessMessages;
      for i := 0 to 50 do
      begin
        FormProgresso.ProgressBar1.Position := i;
        Sleep(100);
      end;
      while not FormProgresso.ThreadsCompleted do
        Application.ProcessMessages;
      for i := 5 to 10 do
      begin
        FormProgresso.ProgressBar1.Position := (i*5)+50;
        Sleep(10);
      end;
      DBGrid1.Visible := True;
    end;

  finally
    FormProgresso.Free;
  end;
end;

{
  // Atualize o ProgressBar com base no progresso da thread de progresso
  if Assigned
  (ProgressoThread) then
  ProgressBar.Position := ProgressoThread.getposition;

  // Verifique se o carregamento do banco de dados foi conclu�do
  if Assigned(ProgressoThread) and not ProgressoThread.getactivedatasource then
  begin
  // Aguarde a conclus�o da thread de progresso
  ProgressoThread.WaitFor;

  // Libere a mem�ria da thread de progresso
  FreeAndNil(FormProgresso);
  FreeAndNil(ProgressoThread);

  // Fa�a o que for necess�rio ap�s o carregamento do banco de dados
  // ...

  DBGrid1.Visible := True;
  ShowMessage('Banco de dados carregado!');
  end
  else
  // Chame novamente o m�todo AtualizarProgresso ap�s um pequeno intervalo de tempo
  if Assigned(FormProgresso) then
  TThread.Queue(nil,
  procedure
  begin
  AtualizarProgresso(FormProgresso.ProgressBar1); // Pass the required parameter here
  end);
  end;
}
end.
