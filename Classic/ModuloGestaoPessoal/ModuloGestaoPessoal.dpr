program ModuloGestaoPessoal;

uses
  ExceptionLog,
  Forms,
  SysUtils,
  WinSkinData,
  WinSkinStore,
  PrincipalGestaoPessoal in 'PrincipalGestaoPessoal.pas' {FrmPrincipalGestaoPessoal},
  Lib in '..\lib\Lib.pas',
  Aguarde in '..\templete\Aguarde.pas' {FrmAguarde},
  ConsultaGeral in '..\templete\ConsultaGeral.pas' {FrmConsultaGeral},
  ModeloCadastro in '..\templete\ModeloCadastro.pas' {FrmModeloCadastro},
  ModeloFormulario in '..\templete\ModeloFormulario.pas' {FrmModeloFormulario},
  ModeloInterno in '..\templete\ModeloInterno.pas' {FrmModeloInterno},
  ModeloMovimentacao in '..\templete\ModeloMovimentacao.pas' {FrmModeloMovimentacao},
  SkinGraphic in '..\templete\SkinGraphic.pas',
  CadastroFuncaoFuncionario in '..\ModuloPrincipal\CadastroFuncaoFuncionario.pas' {FrmCadastroFuncaoFuncionario},
  CadastroFuncionario in '..\ModuloPrincipal\CadastroFuncionario.pas' {FrmCadastroFuncionario},
  CadastroFornecedor in '..\ModuloPrincipal\CadastroFornecedor.pas' {FrmCadastroFornecedor},
  CadastroUnidadePenal in '..\ModuloPrincipal\CadastroUnidadePenal.pas' {FrmCadastroUnidadePenal},
  DMConfiguracoes in '..\DataModule\DMConfiguracoes.pas' {DMIMG: TDataModule},
  DmPrincipal in '..\DataModule\DmPrincipal.pas' {DM: TDataModule},
  Login in '..\ModuloPrincipal\Login.pas' {TelaLogin},
  MenuRelatorio in '..\ModuloPrincipal\MenuRelatorio.pas' {FrmMenuRelatorio},
  PostoTrabalho in '..\ModuloPrincipal\PostoTrabalho.pas' {FrmPostoTrabalho},
  CadastroCurso in '..\ModuloPrincipal\CadastroCurso.pas' {FrmCadastroCurso},
  AgendaAssuntos in '..\ModuloPrincipal\AgendaAssuntos.pas' {FrmAgendaAssuntos},
  AgendaAtendimento in '..\ModuloPrincipal\AgendaAtendimento.pas' {FrmAgendaAtendimento},
  AgendaSituacao in '..\ModuloPrincipal\AgendaSituacao.pas' {FrmAgendaSituacao},
  AgendaTipoContatos in '..\ModuloPrincipal\AgendaTipoContatos.pas' {FrmAgendaTipoContatos},
  AgenteEquipe in '..\ModuloPrincipal\AgenteEquipe.pas' {FrmAgenteEquipe},
  CadastroAdvogado in '..\ModuloPrincipal\CadastroAdvogado.pas' {FrmCadastroAdvogado},
  CadastroAreaServidor in '..\ModuloPrincipal\CadastroAreaServidor.pas' {FrmCadastroAreaServidor},
  CadastroArtigo in '..\ModuloPrincipal\CadastroArtigo.pas' {FrmCadastroArtigo},
  CadastroCidade in '..\ModuloPrincipal\CadastroCidade.pas' {FrmCadastroCidade},
  CadastroClinicaMedica in '..\ModuloPrincipal\CadastroClinicaMedica.pas' {FrmCadastroClinicaMedica},
  CadastroCondicaoInterno in '..\ModuloPrincipal\CadastroCondicaoInterno.pas' {FrmCadastroCondicaoInterno},
  CadastroDestino in '..\ModuloPrincipal\CadastroDestino.pas' {FrmCadastroDestino},
  CadastroEnfermagem in '..\ModuloPrincipal\CadastroEnfermagem.pas' {FrmCadastroEnfermagem},
  CadastroEscolaridade in '..\ModuloPrincipal\CadastroEscolaridade.pas' {FrmCadastroEscolaridade},
  CadastroFaltasDisciplinares in '..\ModuloPrincipal\CadastroFaltasDisciplinares.pas' {FrmCadastroFaltasDisciplinares},
  CadastroFarmacia in '..\ModuloPrincipal\CadastroFarmacia.pas' {FrmCadastroFarmacia},
  CadastroFuncaoInterno in '..\ModuloPrincipal\CadastroFuncaoInterno.pas' {FrmCadastroFuncaoInterno},
  CadastroInteligencia in '..\ModuloPrincipal\CadastroInteligencia.pas' {FrmCadastroInteligencia},
  CadastroLivro in '..\ModuloPrincipal\CadastroLivro.pas' {FrmCadastroLivro},
  CadastroNacionalidade in '..\ModuloPrincipal\CadastroNacionalidade.pas' {FrmCadastroNacionalidade},
  CadastroNaturalidade in '..\ModuloPrincipal\CadastroNaturalidade.pas' {FrmCadastroNaturalidade},
  CadastroOdontologia in '..\ModuloPrincipal\CadastroOdontologia.pas' {FrmCadastroOdontologia},
  CadastroPadrao in '..\ModuloPrincipal\CadastroPadrao.pas' {FrmCadastroPadrao},
  CadastroPedagogia in '..\ModuloPrincipal\CadastroPedagogia.pas' {FrmCadastroPedagogia},
  CadastroProcedencia in '..\ModuloPrincipal\CadastroProcedencia.pas' {FrmCadastroProcedencia},
  CadastroProcedimentos in '..\ModuloPrincipal\CadastroProcedimentos.pas' {FrmCadastroProcedimentos},
  CadastroProcesso in '..\ModuloPrincipal\CadastroProcesso.pas' {FrmCadastroProcesso},
  CadastroProfissao in '..\ModuloPrincipal\CadastroProfissao.pas' {FrmCadastroProfissao},
  Cadastropsicologia in '..\ModuloPrincipal\Cadastropsicologia.pas' {FrmCadastropsicologia},
  CadastroPsiquiatria in '..\ModuloPrincipal\CadastroPsiquiatria.pas' {FrmCadastroPsiquiatria},
  CadastroRaca in '..\ModuloPrincipal\CadastroRaca.pas' {FrmCadastroRaca},
  CadastroRemedio in '..\ModuloPrincipal\CadastroRemedio.pas' {FrmCadastroRemedio},
  CadastroSerieEstudo in '..\ModuloPrincipal\CadastroSerieEstudo.pas' {FrmCadastroSerieEstudo},
  CadastroServicoSocial in '..\ModuloPrincipal\CadastroServicoSocial.pas' {FrmCadastroServicoSocial},
  CadastroServidores in '..\ModuloPrincipal\CadastroServidores.pas' {FrmCadastroServidores},
  CadastroSetorTrablalho in '..\ModuloPrincipal\CadastroSetorTrablalho.pas' {FrmCadastroSetorTrabalho},
  CadastroTerapiaOcup in '..\ModuloPrincipal\CadastroTerapiaOcup.pas' {FrmCadastroTerapiaOcup},
  CalculoTrabalho in '..\ModuloPrincipal\CalculoTrabalho.pas' {FrmCalculoTrabalho},
  ConclusaoCD in '..\ModuloPrincipal\ConclusaoCD.pas' {FrmConclusaoCD},
  ConsultaInterno in '..\ModuloPrincipal\ConsultaInterno.pas' {FrmConsultaInterno},
  CTC in '..\ModuloPrincipal\CTC.pas' {FrmCTC},
  Equipe in '..\ModuloPrincipal\Equipe.pas' {FrmEquipe},
  EscolhendoSkin in '..\ModuloPrincipal\EscolhendoSkin.pas' {FrmEscolhendoSkin},
  FiltroAgendaAtendimento in '..\ModuloPrincipal\FiltroAgendaAtendimento.pas' {FrmFiltroAgendaAtendimento},
  FiltroPostoTrabalho in '..\ModuloPrincipal\FiltroPostoTrabalho.pas' {FrmFiltroPostoTrabalho},
  FiltroProcedimentos in '..\ModuloPrincipal\FiltroProcedimentos.pas' {FrmFiltroProcedimentos},
  HistoricoInterno in '..\ModuloPrincipal\HistoricoInterno.pas' {FrmHistoricoInterno},
  HistoricoPadrao in '..\ModuloPrincipal\HistoricoPadrao.pas' {Frmhistoricopadrao},
  HorarioFuncionario in '..\ModuloPrincipal\HorarioFuncionario.pas' {FrmHorarioFuncionario},
  InformandoOcorrencia in '..\ModuloPrincipal\InformandoOcorrencia.pas' {FrmInformandoOcorrencia},
  MedicacaoInterno in '..\ModuloPrincipal\MedicacaoInterno.pas' {FrmMedicacaoInterno},
  Mensagem in '..\ModuloPrincipal\Mensagem.pas' {Frmmensagem},
  MensagemBancoDados in '..\ModuloPrincipal\MensagemBancoDados.pas' {FrmMensagemBancoDados},
  ModuloPrincipal in '..\ModuloPrincipal\ModuloPrincipal.pas' {FrmModuloPrincipal},
  MotivoEncerrarProcedimento in '..\ModuloPrincipal\MotivoEncerrarProcedimento.pas' {FrmMotivoEncerrarProcedimento},
  MovimentoProcedimentos in '..\ModuloPrincipal\MovimentoProcedimentos.pas' {FrmMovimentoProcedimentos},
  MudaSkin in '..\ModuloPrincipal\MudaSkin.pas' {FrmMudaSkin},
  NovaEscala in '..\ModuloPrincipal\NovaEscala.pas' {FrmNovaEscala},
  Ocorrencias in '..\ModuloPrincipal\Ocorrencias.pas' {FrmOcorrencias},
  Padrao in '..\ModuloPrincipal\Padrao.pas' {FrmPadrao},
  Patrimonio in '..\ModuloPrincipal\Patrimonio.pas' {FrmPatrimonio},
  PermaneciaScaner in '..\ModuloPrincipal\PermaneciaScaner.pas' {FrmPermaneciaScaner},
  QualOcorrencia in '..\ModuloPrincipal\QualOcorrencia.pas' {FrmQualOcorrencia},
  QualProcedimento in '..\ModuloPrincipal\QualProcedimento.pas' {FrmQualProcedimento},
  SelecionarAutosPermanencia in '..\ModuloPrincipal\SelecionarAutosPermanencia.pas' {FrmSelecionarAutosPermanencia},
  Sobre in '..\ModuloPrincipal\Sobre.pas' {Frmsobre},
  CadastroCela in '..\ModuloConfere\CadastroCela.pas' {FrmCadastroCela},
  CadastroGaleria in '..\ModuloConfere\CadastroGaleria.pas' {FrmCadastroGaleria},
  CadastroInternoDisciplina in '..\ModuloConfere\CadastroInternoDisciplina.pas' {FrmCadastroInternoDisciplina},
  CadastroInternoEducacao in '..\ModuloConfere\CadastroInternoEducacao.pas' {FrmCadastroInternoEducacao},
  CadastroInternoJuridico in '..\ModuloConfere\CadastroInternoJuridico.pas' {FrmCadastroInternoJuridico},
  CadastroInternoPsicossocial in '..\ModuloConfere\CadastroInternoPsicossocial.pas' {FrmCadastroInternoPsicossocial},
  CadastroInternoSaude in '..\ModuloConfere\CadastroInternoSaude.pas' {FrmCadastroInternoSaude},
  CadastroInternoTrabalho in '..\ModuloConfere\CadastroInternoTrabalho.pas' {FrmCadastroInternoTrabalho},
  CadastroMovInterno in '..\ModuloConfere\CadastroMovInterno.pas' {FrmCadastroMovInterno},
  CadastroPavilhao in '..\ModuloConfere\CadastroPavilhao.pas' {FrmCadastroPavilhao},
  CadastroSolario in '..\ModuloConfere\CadastroSolario.pas' {FrmCadastroSolario},
  MovimentoInternos in '..\ModuloConfere\MovimentoInternos.pas' {FrmMovimentoInternos},
  SituacaoDisciplinar in '..\ModuloConfere\SituacaoDisciplinar.pas' {FrmSituacaoDisciplinar},
  CadastroGrauParentesco in '..\ModuloVisitante\CadastroGrauParentesco.pas' {FrmCadastroGrauParentesco},
  CadastroVisitante in '..\ModuloVisitante\CadastroVisitante.pas' {FrmCadastroVisitante},
  ConsultaVisitante in '..\ModuloVisitante\ConsultaVisitante.pas' {FrmConsultaVisitante},
  MovimentoVisitante in '..\ModuloVisitante\MovimentoVisitante.pas' {FrmMovimentoVisitante},
  VisitanteInterno in '..\ModuloVisitante\VisitanteInterno.pas' {FrmVisitanteInterno},
  VisitanteMenores in '..\ModuloVisitante\VisitanteMenores.pas' {FrmVisitanteMenores},
  CadastroInternos in '..\ModuloConfere\CadastroInternos.pas' {FrmCadastroInternos},
  TrocarSenha in '..\ModuloPrincipal\TrocarSenha.pas' {FRMTrocarSenha},
  TipoPatrimonio in '..\ModuloPrincipal\TipoPatrimonio.pas' {FrmTipoPatrimonio},
  WebCam in '..\webcam\WebCam.pas' {FrmWebCam},
  VFrames in '..\webcam\Common\VFrames.pas',
  VSample in '..\webcam\Common\VSample.pas',
  Direct3D9 in '..\webcam\Common\DirectX\Direct3D9.pas',
  DirectDraw in '..\webcam\Common\DirectX\DirectDraw.pas',
  DirectShow9 in '..\webcam\Common\DirectX\DirectShow9.pas',
  DirectSound in '..\webcam\Common\DirectX\DirectSound.pas',
  DXTypes in '..\webcam\Common\DirectX\DXTypes.pas',
  CadastroArmas in '..\ModuloArmas\CadastroArmas.pas' {FrmCadastroArmas},
  ControlePortaria in '..\ModuloPrincipal\ControlePortaria.pas' {FrmControlePortaria},
  SelecionarTipoVisita in '..\ModuloPrincipal\SelecionarTipoVisita.pas' {FrmSelecionarTipoVisita},
  MovimentacaoPortaria in '..\ModuloPrincipal\MovimentacaoPortaria.pas' {Frmmovimentacaoportaria},
  Explosivos in '..\ModuloPrincipal\Explosivos.pas' {FrmExplosivos},
  Municoes in '..\ModuloArmas\Municoes.pas' {FrmMunicoes},
  Espargidores in '..\ModuloArmas\Espargidores.pas' {FrmEspargidores},
  InventarioPatrimonio in '..\ModuloArmas\InventarioPatrimonio.pas' {FrmInventarioPatrimonio},
  MovimentoPatrimonio in '..\ModuloArmas\MovimentoPatrimonio.pas' {FrmMovimentoPatrimonio},
  FinalizarMovimentoPatrimonio in '..\ModuloArmas\FinalizarMovimentoPatrimonio.pas' {FrmFinalizarMovimentoPatrimonio},
  CadastroAcessorio in '..\ModuloArmas\CadastroAcessorio.pas' {FrmCadastroAcessorio},
  VisualizadorOLE in '..\ModuloPrincipal\VisualizadorOLE.pas' {FrmVisualizadorOLE},
  Memorando in 'Memorando.pas' {frmMemorando},
  OrgaoSolicitante in 'OrgaoSolicitante.pas' {frmOrgaoSolicitante},
  DocOficio in 'DocOficio.pas' {frmDocOficio},
  CadastroSolicitacaoVaga in 'CadastroSolicitacaoVaga.pas' {frmSolicitacaoVaga},
  CadastroMeioTransporte in 'CadastroMeioTransporte.pas' {FrmCadastroMeioTransporte},
  CadastroItinerario in 'CadastroItinerario.pas' {frmCadastroItinerario},
  CadastroEscolta in 'CadastroEscolta.pas' {frmCadastroEscolta},
  CadastroItinerarioEscolta in 'CadastroItinerarioEscolta.pas' {FrmItinerarioEscolta},
  CadastroInterno in 'CadastroInterno.pas' {frmCadastroInterno};

{$R *.res}

begin
  Application.Initialize;
  GLOBAL_PATCH_SISTEMA := ExtractFilePath(Application.ExeName);

  Application.Title := 'Siap';
  Application.CreateForm(TDM, DM);
  FrmPrincipalGestaoPessoal := TFrmPrincipalGestaoPessoal.Create(Application);

  TelaLogin := TTelaLogin.create(Application);
  TelaLogin.showmodal;

  if not TelaLogin.liberado then
  begin
    FreeAndNil(TelaLogin);
    Application.Terminate;
    Exit;
  end;

  FreeAndNil(TelaLogin);

  DM.AbreConexao();

  Application.Title := 'Siap';

  FrmPrincipalGestaoPessoal.ShowModal;

  Application.Run;


end.

