program SIAPEN;

uses
  SysUtils,
  DiaLogs,
  Forms,
  Windows,
  ModuloPrincipal in 'ModuloPrincipal.pas' {Frm\ModuloPrincipal},
  ModeloCadastro in '..\templete\ModeloCadastro.pas' {FrmModeloCadastro},
  DmPrincipal in '..\DataModule\DmPrincipal.pas' {DM: TDataModule},
  Lib in '..\lib\Lib.pas',
  CadastroInternos in '..\ModuloConfere\CadastroInternos.pas' {FrmCadastroInternos},
  ConsultaGeral in '..\templete\ConsultaGeral.pas' {FrmConsultaGeral},
  Aguarde in '..\templete\Aguarde.pas' {FrmAguarde},
  CadastroCela in '..\ModuloConfere\CadastroCela.pas' {FrmCadastroCela},
  CadastroPavilhao in '..\ModuloConfere\CadastroPavilhao.pas' {FrmCadastroPavilhao},
  CadastroGaleria in '..\ModuloConfere\CadastroGaleria.pas' {FrmCadastroGaleria},
  CadastroSolario in '..\ModuloConfere\CadastroSolario.pas' {FrmCadastroSolario},
  CadastroCidade in 'CadastroCidade.pas' {FrmCadastroCidade},
  CadastroUnidadePenal in 'CadastroUnidadePenal.pas' {FrmCadastroUnidadePenal},
  CadastroPadrao in 'CadastroPadrao.pas' {FrmCadastroPadrao},
  CadastroServidores in 'CadastroServidores.pas' {FrmCadastroServidores},
  CadastroFuncaoFuncionario in 'CadastroFuncaoFuncionario.pas' {FrmCadastroFuncaoFuncionario},
  CadastroAreaServidor in 'CadastroAreaServidor.pas' {FrmCadastroAreaServidor},
  CadastroNacionalidade in 'CadastroNacionalidade.pas' {FrmCadastroNacionalidade},
  CadastroRaca in 'CadastroRaca.pas' {FrmCadastroRaca},
  CadastroEscolaridade in 'CadastroEscolaridade.pas' {FrmCadastroEscolaridade},
  CadastroAdvogado in 'CadastroAdvogado.pas' {FrmCadastroAdvogado},
  CadastroArtigo in 'CadastroArtigo.pas' {FrmCadastroArtigo},
  CadastroProcedencia in 'CadastroProcedencia.pas' {FrmCadastroProcedencia},
  CadastroDestino in 'CadastroDestino.pas' {FrmCadastroDestino},
  CadastroProcesso in 'CadastroProcesso.pas' {FrmCadastroProcesso},
  CadastroMovInterno in '..\ModuloConfere\CadastroMovInterno.pas' {FrmCadastroMovInterno},
  MenuRelatorio in 'MenuRelatorio.pas' {FrmMenuRelatorio},
  Login in 'Login.pas' {TelaLogin},
  ModeloMovimentacao in '..\templete\ModeloMovimentacao.pas' {FrmModeloMovimentacao},
  MovimentoInternos in '..\ModuloConfere\MovimentoInternos.pas' {FrmMovimentoInternos},
  CadastroVisitante in '..\ModuloVisitante\CadastroVisitante.pas' {FrmCadastroVisitante},
  CadastroGrauParentesco in '..\ModuloVisitante\CadastroGrauParentesco.pas' {FrmCadastroGrauParentesco},
  CadastroCondicaoInterno in 'CadastroCondicaoInterno.pas' {FrmCadastroCondicaoInterno},
  CadastroFuncionario in 'CadastroFuncionario.pas' {FrmCadastroFuncionario},
  ConsultaInterno in 'ConsultaInterno.pas' {FrmConsultaInterno},
  MovimentoVisitante in '..\ModuloVisitante\MovimentoVisitante.pas' {FrmMovimentoVisitante},
  ModeloFormulario in '..\templete\ModeloFormulario.pas' {FrmModeloFormulario},
  VisitanteInterno in '..\ModuloVisitante\VisitanteInterno.pas' {FrmVisitanteInterno},
  VisitanteMenores in '..\ModuloVisitante\VisitanteMenores.pas' {FrmVisitanteMenores},
  SituacaoDisciplinar in '..\ModuloConfere\SituacaoDisciplinar.pas' {FrmSituacaoDisciplinar},
  CadastroSetorTrablalho in 'CadastroSetorTrablalho.pas' {FrmCadastroSetorTrabalho},
  CalculoTrabalho in 'CalculoTrabalho.pas' {FrmCalculoTrabalho},
  CadastroFuncaoInterno in 'CadastroFuncaoInterno.pas' {FrmCadastroFuncaoInterno},
  ConsultaVisitante in '..\ModuloVisitante\ConsultaVisitante.pas' {FrmConsultaVisitante},
  CadastroNaturalidade in 'CadastroNaturalidade.pas' {FrmCadastroNaturalidade},
  CadastroProfissao in 'CadastroProfissao.pas' {FrmCadastroProfissao},
  TrocarSenha in 'TrocarSenha.pas' {FRMTrocarSenha},
  CadastroSerieEstudo in 'CadastroSerieEstudo.pas' {FrmCadastroSerieEstudo},
  HistoricoInterno in 'HistoricoInterno.pas' {FrmHistoricoInterno},
  AgendaAssuntos in 'AgendaAssuntos.pas' {FrmAgendaAssuntos},
  AgendaSituacao in 'AgendaSituacao.pas' {FrmAgendaSituacao},
  AgendaTipoContatos in 'AgendaTipoContatos.pas' {FrmAgendaTipoContatos},
  AgendaAtendimento in 'AgendaAtendimento.pas' {FrmAgendaAtendimento},
  FiltroAgendaAtendimento in 'FiltroAgendaAtendimento.pas' {FrmFiltroAgendaAtendimento},
  HistoricoPadrao in 'HistoricoPadrao.pas' {Frmhistoricopadrao},
  CadastroFaltasDisciplinares in 'CadastroFaltasDisciplinares.pas' {FrmCadastroFaltasDisciplinares},
  ModeloInterno in '..\templete\ModeloInterno.pas' {FrmModeloInterno},
  CadastroInternoTrabalho in '..\ModuloConfere\CadastroInternoTrabalho.pas' {FrmCadastroInternoTrabalho},
  CadastroServicoSocial in 'CadastroServicoSocial.pas' {FrmCadastroServicoSocial},
  CadastroInternoEducacao in '..\ModuloConfere\CadastroInternoEducacao.pas' {FrmCadastroInternoEducacao},
  CadastroEnfermagem in 'CadastroEnfermagem.pas' {FrmCadastroEnfermagem},
  CadastroFarmacia in 'CadastroFarmacia.pas' {FrmCadastroFarmacia},
  CadastroClinicaMedica in 'CadastroClinicaMedica.pas' {FrmCadastroClinicaMedica},
  CadastroInternoJuridico in '..\ModuloConfere\CadastroInternoJuridico.pas' {FrmCadastroInternoJuridico},
  CadastroInternoDisciplina in '..\ModuloConfere\CadastroInternoDisciplina.pas' {FrmCadastroInternoDisciplina},
  CadastroPsiquiatria in 'CadastroPsiquiatria.pas' {FrmCadastroPsiquiatria},
  CadastroOdontologia in 'CadastroOdontologia.pas' {FrmCadastroOdontologia},
  Cadastropsicologia in 'Cadastropsicologia.pas' {FrmCadastropsicologia},
  CadastroTerapiaOcup in 'CadastroTerapiaOcup.pas' {FrmCadastroTerapiaOcup},
  CadastroPedagogia in 'CadastroPedagogia.pas' {FrmCadastroPedagogia},
  Sobre in 'Sobre.pas' {Frmsobre},
  CadastroInternoPsicossocial in '..\ModuloConfere\CadastroInternoPsicossocial.pas' {FrmCadastroInternoPsicossocial},
  CadastroInternoSaude in '..\ModuloConfere\CadastroInternoSaude.pas' {FrmCadastroInternoSaude},
  ConclusaoCD in 'ConclusaoCD.pas' {FrmConclusaoCD},
  CadastroFornecedor in 'CadastroFornecedor.pas' {FrmCadastroFornecedor},
  CadastroRemedio in 'CadastroRemedio.pas' {FrmCadastroRemedio},
  CadastroLivro in 'CadastroLivro.pas' {FrmCadastroLivro},
  CadastroProcedimentos in 'CadastroProcedimentos.pas' {FrmCadastroProcedimentos},
  FiltroProcedimentos in 'FiltroProcedimentos.pas' {FrmFiltroProcedimentos},
  MovimentoProcedimentos in 'MovimentoProcedimentos.pas' {FrmMovimentoProcedimentos},
  MedicacaoInterno in 'MedicacaoInterno.pas' {FrmMedicacaoInterno},
  Mensagem in 'Mensagem.pas' {Frmmensagem},
  PermaneciaScaner in 'PermaneciaScaner.pas' {FrmPermaneciaScaner},
  SelecionarAutosPermanencia in 'SelecionarAutosPermanencia.pas' {FrmSelecionarAutosPermanencia},
  PostoTrabalho in 'PostoTrabalho.pas' {FrmPostoTrabalho},
  Equipe in 'Equipe.pas' {FrmEquipe},
  AgenteEquipe in 'AgenteEquipe.pas' {FrmAgenteEquipe},
  Ocorrencias in 'Ocorrencias.pas' {FrmOcorrencias},
  MotivoEncerrarProcedimento in 'MotivoEncerrarProcedimento.pas' {FrmMotivoEncerrarProcedimento},
  InformandoOcorrencia in 'InformandoOcorrencia.pas' {FrmInformandoOcorrencia},
  QualOcorrencia in 'QualOcorrencia.pas' {FrmQualOcorrencia},
  QualProcedimento in 'QualProcedimento.pas' {FrmQualProcedimento},
  FiltroPostoTrabalho in 'FiltroPostoTrabalho.pas' {FrmFiltroPostoTrabalho},
  CadastroCurso in 'CadastroCurso.pas' {FrmCadastroCurso},
  MudaSkin in 'MudaSkin.pas' {FrmMudaSkin},
  SkinGraphic in '..\templete\SkinGraphic.pas',
  HorarioFuncionario in 'HorarioFuncionario.pas' {FrmHorarioFuncionario},
  NovaEscala in 'NovaEscala.pas' {FrmNovaEscala},
  MensagemBancoDados in 'MensagemBancoDados.pas' {FrmMensagemBancoDados},
  TipoPatrimonio in 'TipoPatrimonio.pas' {FrmTipoPatrimonio},
  Patrimonio in 'Patrimonio.pas' {FrmPatrimonio},
  CadastroInteligencia in 'CadastroInteligencia.pas' {FrmCadastroInteligencia},
  ControlePortaria in 'ControlePortaria.pas' {FrmControlePortaria},
  CTC in 'CTC.pas' {FrmCTC},
  WebCam in '..\webcam\WebCam.pas' {FrmWebCam},
  VFrames in '..\webcam\Common\VFrames.pas',
  VSample in '..\webcam\Common\VSample.pas',
  Direct3D9 in '..\webcam\Common\DirectX\Direct3D9.pas',
  DirectDraw in '..\webcam\Common\DirectX\DirectDraw.pas',
  DirectShow9 in '..\webcam\Common\DirectX\DirectShow9.pas',
  DirectSound in '..\webcam\Common\DirectX\DirectSound.pas',
  DXTypes in '..\webcam\Common\DirectX\DXTypes.pas',
  PrincipalInteligencia in '..\ModuloInteligencia\PrincipalInteligencia.pas' {FrmPrincipalInteligencia},
  CadastroArmas in '..\ModuloArmas\CadastroArmas.pas' {FrmCadastroArmas},
  Espargidores in '..\ModuloArmas\Espargidores.pas' {FrmEspargidores},
  FinalizarMovimentoPatrimonio in '..\ModuloArmas\FinalizarMovimentoPatrimonio.pas' {FrmFinalizarMovimentoPatrimonio},
  InventarioPatrimonio in '..\ModuloArmas\InventarioPatrimonio.pas' {FrmInventarioPatrimonio},
  MovimentoPatrimonio in '..\ModuloArmas\MovimentoPatrimonio.pas' {FrmMovimentoPatrimonio},
  Municoes in '..\ModuloArmas\Municoes.pas' {FrmMunicoes},
  PrincipalArmas in '..\ModuloArmas\PrincipalArmas.pas' {FrmPrincipalArmas},
  CadastroEventos in 'CadastroEventos.pas' {FrmCadastroEventos},
  CadastroSubEvento in 'CadastroSubEvento.pas' {FrmCadastroSubEvento},
  CadastroAcessorio in '..\ModuloArmas\CadastroAcessorio.pas' {FrmCadastroAcessorio},
  MonitoramentoEventos in '..\ModuloInteligencia\MonitoramentoEventos.pas' {FrmMonitoramentoEventos},
  RelacionamentoInterno in 'RelacionamentoInterno.pas' {FrmRelacionamentoInterno},
  VisualizadorOLE in 'VisualizadorOLE.pas' {FrmVisualizadorOLE},
  MensagemTexto in 'MensagemTexto.pas' {FrmMensagemTexto},
  SalvarProgressbar in 'SalvarProgressbar.pas' {FrmSalvarProgressbar},
  ConsGridSetup in '..\templete\ConsGridSetup.pas' {FrmConsGridSetup},
  Filtros in '..\templete\Filtros.pas' {FrmFiltros},
  PlanilhaDinamica in 'PlanilhaDinamica.pas' {FrmPlanilhaDinamica},
  maps_google in 'maps_google.pas' {Frmmapas_google},
  Detracao in 'Detracao.pas' {FrmDetracao},
  Interrupcao in 'Interrupcao.pas' {FrmInterrupcao},
  Remicao in 'Remicao.pas' {FrmRemicao},
  Dm_Proced in '..\DataModule\Dm_Proced.pas' {DmProced: TDataModule},
  ConsultaProced in '..\ModuloConfere\ConsultaProced.pas' {FrmConsultaProced},
  transferenciainterno in 'transferenciainterno.pas' {Frmtransferenciainterno},
  Vara in 'Vara.pas' {FrmVara},
  Saidao in 'Saidao.pas' {FrmSaidao},
  CancelarSaidao in 'CancelarSaidao.pas' {FrmCancelarSaidao},
  CancelarTransferencia in 'CancelarTransferencia.pas' {FrmCancelarTransferencia},
  FrmMedico in 'FrmMedico.pas' {FrmFrmMedico},
  CadastroTipoDieta in 'CadastroTipoDieta.pas' {FrmCadastroTipoDieta},
  TipoSaidao in 'TipoSaidao.pas' {FrmTipoSaidao},
  RecebimentoTransferencia in 'RecebimentoTransferencia.pas' {FrmRecebimentoTransferencia},
  DocRecebimentoTrasnferencia in 'DocRecebimentoTrasnferencia.pas' {FrmDocRecebimentoTrasnferencia},
  Padrao in 'Padrao.pas' {FrmPadrao},
  FiltroCela in 'FiltroCela.pas' {FrmFiltroCela},
  MudancaCela in 'MudancaCela.pas' {FrmMudancaCela},
  CadastroEnfermidade in 'CadastroEnfermidade.pas' {FrmCadastroEnfermidade},
  RevogacaoBeneficio in 'RevogacaoBeneficio.pas' {FrmRevogacaoBeneficio},
  EventoProcesso in 'EventoProcesso.pas' {FrmEventoProcesso},
  TipoEventoProcesso in 'TipoEventoProcesso.pas' {FrmTipoEventoProcesso},
  Comutacao in 'Comutacao.pas' {FrmComutacao},
  CadastroLocalTrabalho in 'CadastroLocalTrabalho.pas' {FrmCadastroLocalTrabalho},
  MotivoDispensaTrabalho in 'MotivoDispensaTrabalho.pas' {FrmMotivoDispensaTrabalho},
  MensagemViaFastReport in 'MensagemViaFastReport.pas' {FrmMensagemViaFastReport},
  AgendaSaidaInterno in 'AgendaSaidaInterno.pas' {FrmAgendaSaidaInterno},
  RegraVisita in 'RegraVisita.pas' {FrmRegraVisita},
  CadastroDeficiencia in 'CadastroDeficiencia.pas' {FrmCadastroDeficiencia},
  CadastroVacina in 'CadastroVacina.pas' {FrmCadastroVacina},
  BatePapo in 'BatePapo.pas' {FrmBatePapo},
  FuncBancoHoras in 'FuncBancoHoras.pas' {FrmFuncBancoHoras},
  TipoHora in 'TipoHora.pas' {FrmTipoHora},
  CirculacaoInterno in 'CirculacaoInterno.pas' {FrmCirculacaoInterno},
  DmSecundario in '..\DataModule\DmSecundario.pas' {DM2: TDataModule},
  SenhaFuncionario in 'SenhaFuncionario.pas' {FrmSenhaFuncionario},
  MapaCarcerario in 'MapaCarcerario.pas' {FrmMapaCarcerario},
  CadastroFaccao in 'CadastroFaccao.pas' {FrmCadastroFaccao},
  CadastroEscolta in '..\ModuloGestaoPessoal\CadastroEscolta.pas' {frmCadastroEscolta},
  CadastroFuncionarioAutorizador in '..\ModuloGestaoPessoal\CadastroFuncionarioAutorizador.pas' {FrmCadastroFuncionarioAutorizador},
  CadastroInterno in '..\ModuloGestaoPessoal\CadastroInterno.pas' {frmCadastroInterno},
  CadastroItinerario in '..\ModuloGestaoPessoal\CadastroItinerario.pas' {frmCadastroItinerario},
  CadastroItinerarioEscolta in '..\ModuloGestaoPessoal\CadastroItinerarioEscolta.pas' {FrmItinerarioEscolta},
  CadastroMeioTransporte in '..\ModuloGestaoPessoal\CadastroMeioTransporte.pas' {FrmCadastroMeioTransporte},
  CadastroSolicitacaoVaga in '..\ModuloGestaoPessoal\CadastroSolicitacaoVaga.pas' {frmSolicitacaoVaga},
  DocOficio in '..\ModuloGestaoPessoal\DocOficio.pas' {frmDocOficio},
  Memorando in '..\ModuloGestaoPessoal\Memorando.pas' {frmMemorando},
  OrgaoSolicitante in '..\ModuloGestaoPessoal\OrgaoSolicitante.pas' {frmOrgaoSolicitante},
  PrincipalGestaoPessoal in '..\ModuloGestaoPessoal\PrincipalGestaoPessoal.pas' {FrmPrincipalGestaoPessoal},
  VincFaltaDisiciplinar in 'VincFaltaDisiciplinar.pas' {FrmVincFaltaDisiciplinar},
  RecuperarFotoArquivo in 'RecuperarFotoArquivo.pas' {FrmRecuperarFotoArquivo},
  LancamentoRemicaoTrabalho in 'LancamentoRemicaoTrabalho.pas' {FrmLancamentoRemicaoTrabalho},
  CadastroVestimentas in 'CadastroVestimentas.pas' {FrmCadastroVestimentas},
  Roupas in 'Roupas.pas' {FrmRoupas},
  MovimentoSemiAberto in 'MovimentoSemiAberto.pas' {FrmMovimentoSemiAberto},
  Monitoramento_Eletronico in 'Monitoramento_Eletronico.pas' {FrmMonitoramento_Eletronico},
  CadastroOcorrenciaPlantao in 'CadastroOcorrenciaPlantao.pas' {FrmCadastroOcorrenciaPlantao},
  ConsultaLocalizacaoPorProntuario in 'ConsultaLocalizacaoPorProntuario.pas' {FrmConsultaLocalizacaoPorProntuario},
  CadastroNaturezaOcorrencia in 'CadastroNaturezaOcorrencia.pas' {FrmCadastroNaturezaOcorrencia},
  WebBrowser in 'WebBrowser.pas' {FrmWebBrowser},
  UnCaptDig in '..\biometria\UnCaptDig.pas' {frmDigital},
  unCompBio in '..\biometria\unCompBio.pas',
  UnRecDig in '..\biometria\UnRecDig.pas' {frmRecDig},
  FrmCapturaBiometria in '..\biometria\FrmCapturaBiometria.pas' {FrmCapturaBiometrica},
  CadastroRoupa in 'CadastroRoupa.pas' {FrmRoupa},
  CadastroConselhoDisciplinar in 'CadastroConselhoDisciplinar.pas' {frmConselhoDisciplinar},
  CadastroCorrespondencia in 'CadastroCorrespondencia.pas' {FrmCadastroCorrespondencia},
  CadastroVisitanteTrafico in 'CadastroVisitanteTrafico.pas' {FrmVisitanteTrafico},
  SaidaoCadastro in 'SaidaoCadastro.pas' {FrmSaidaoCadastro},
  CadastroPerfilUsuario in 'CadastroPerfilUsuario.pas' {FrmCadastroPerfilUsuario},
  PrincipalMonitoramento in '..\ModuloMonitoramento\PrincipalMonitoramento.pas' {FrmPrincipalMonitoramento},
  CadastroMonitoramentoEventos in '..\ModuloMonitoramento\CadastroMonitoramentoEventos.pas' {FrmCadastroMonitoramentoEventos},
  EncerrarPortaria in 'EncerrarPortaria.pas' {FrmEncerrar_portaria},
  CargaHorariaMutipla in 'CargaHorariaMutipla.pas' {FrmCargaHorariaMutipla},
  Vcl.Themes,
  Vcl.Styles,
  WindowsDarkMode in 'WindowsDarkMode.pas',
  mudarTema in 'mudarTema.pas',
  atualizar in 'atualizar.pas',
  RoundedPanel in 'RoundedPanel.pas',
  Progresso in '..\Templete\Progresso.pas';

{$E exe}

{$R *.res}



var
  PastaUsuario: String;
 // SourcePath: String;
  DestinationPath: String;
 // FileName : String;
 // IsFileFound: Boolean;
  ShortDateFormat:String;
begin
  PastaUsuario := GetEnvironmentVariable('APPDATA');
 // Filename := 'dbxconnections.ini';
  //SourcePath := ExtractFilePath(Application.ExeName) +'..\config\'+ FileName;
  DestinationPath := PastaUsuario + '\Siapen';

  if not DirectoryExists(DestinationPath) then
    CreateDir(DestinationPath);

  //DestinationPath := DestinationPath + FileName;
 // IsFileFound := FileExists(DestinationPath);

  //Fun��o para atualizar bibliotecas caso n�o tenha o arquivo dbxfb.dll na pasta do Aplicativo

  atualizador;


 {
  if not IsFileFound then
  begin
     if FileExists(SourcePath) then
      begin
        // Copiar o arquivo da pasta do aplicativo para a pasta do usu�rio
        CopyFile(PChar(SourcePath), PChar(DestinationPath), False);
        //ShowMessage(FileName + ' copiado com sucesso!');
      end;
  end;
  }
  Application.Initialize;

  Application.UpdateFormatSettings := False;
  ShortDateFormat := 'dd/mm/yyyy';

  GLOBAL_PATCH_SISTEMA := GetCurrentDir + '\';

  GLOBAL_PASTA_LOCAL := GLOBAL_PATCH_SISTEMA;


 // TStyleManager.TrySetStyle('Carbon');
  SetVCLThemeFromConfig;
  //TStyleManager.TrySetStyle('Windows10');
  Application.Title := 'SIAPEN - Sistema Integrado de Administra��o Penitenci�ria';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDM2, DM2);
  //Application.CreateForm(TDmProced, DmProced);
  Application.Run;
  FrmModuloPrincipal := TFrmModuloPrincipal.Create(Application);

  GLOBAL_ID_FUNCIONARIO := -1;
  GLOBAL_IDCONEXAO := -1;

  TelaLogin := TTelaLogin.create(Application);
  TelaLogin.showmodal;
  if not TelaLogin.liberado then
  begin
    FreeAndNil(TelaLogin);
    Application.Terminate;
    Exit;
  end;

  FreeAndNil(TelaLogin);

  //DM.AbreConexao();

  Application.Title := 'Siapen';

  if FileExists('logo_panel1.jpg') then
    FrmModuloPrincipal.Image2.Picture.LoadFromFile('logo_panel1.jpg');

  if FileExists('logo_fundo.jpg') then
    FrmModuloPrincipal.Image1.Picture.LoadFromFile('logo_fundo.jpg');

  FrmModuloPrincipal.ShowModal;
 // FrmPatrimonio := TFrmPatrimonio.Create(Application);
 // FrmPatrimonio.ShowModal;
  Application.Run;

end.

