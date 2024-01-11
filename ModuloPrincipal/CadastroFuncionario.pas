unit CadastroFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ModeloCadastro, FMTBcd, DB, DBClient, Provider, SqlExpr,
  ImgList, ComCtrls, ExtCtrls, Grids, DBGrids, StdCtrls, ToolWin, DBCtrls,
  Mask, Jpeg, FileCtrl, Buttons, System.ImageList, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmCadastroFuncionario = class(TFrmModeloCadastro)
    SqlConsultaold: TSQLQuery;
    Dspconsulta: TDataSetProvider;
    CdsConsulta: TClientDataSet;
    DsConsulta: TDataSource;
    SqlSelectFuncionarioold: TSQLQuery;
    PageControlFuncionario: TPageControl;
    TabPrincipal: TTabSheet;
    DBImageFOTOFUNCIONARIO: TDBImage;
    Label2: TLabel;
    DBEditcodigo: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label17: TLabel;
    DBEdit12: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEditCPF: TDBEdit;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit6: TDBEdit;
    Label13: TLabel;
    Label16: TLabel;
    DBEdit11: TDBEdit;
    DBEdit14: TDBEdit;
    Label19: TLabel;
    Label14: TLabel;
    DBEditadmissao: TDBEdit;
    DBEditnascimento: TDBEdit;
    Label15: TLabel;
    Label20: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label21: TLabel;
    DBComboBox2: TDBComboBox;
    Label10: TLabel;
    DBComboBox1: TDBComboBox;
    Label22: TLabel;
    DBComboBox3: TDBComboBox;
    Label11: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBRadioGroup1: TDBRadioGroup;
    Label18: TLabel;
    DBEdit13: TDBEdit;
    TabEndereco: TTabSheet;
    TabPermissao: TTabSheet;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label12: TLabel;
    EdtConfirmaSenha: TEdit;
    DBImagedIGITAL: TDBImage;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label23: TLabel;
    DBEdit15: TDBEdit;
    Label24: TLabel;
    DBEdit16: TDBEdit;
    Label25: TLabel;
    Label26: TLabel;
    DBEditcep: TDBEdit;
    Label27: TLabel;
    DBEditfone: TDBEdit;
    Label28: TLabel;
    DBEditcelular: TDBEdit;
    Label29: TLabel;
    DBEdit21: TDBEdit;
    Label30: TLabel;
    DBEdit22: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    Label31: TLabel;
    FOTO: TLabel;
    Label32: TLabel;
    DBEditdtlotacao: TDBEdit;
    Label33: TLabel;
    DBComboBox4: TDBComboBox;
    DBRadioGroup3: TDBRadioGroup;
    Label34: TLabel;
    DBComboBox5: TDBComboBox;
    CdsConsultaNOME_FUNCIONARIO: TStringField;
    CdsConsultaMATRICULA: TStringField;
    CdsConsultaLOGIN: TStringField;
    CdsConsultaCPF: TStringField;
    CdsConsultaID_FUNCIONARIO: TIntegerField;
    Label35: TLabel;
    DBLookupComboBoxPostoTrabalho: TDBLookupComboBox;
    SpeedButton3: TSpeedButton;
    Label36: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    PageControlPermissao: TPageControl;
    TabGeral: TTabSheet;
    TabSetores: TTabSheet;
    GroupBox3: TGroupBox;
    cheditartrabalho: TCheckBox;
    chdeletartrabalho: TCheckBox;
    chConsultartrabalho: TCheckBox;
    chinserirtrabalho: TCheckBox;
    chtodastrabalho: TCheckBox;
    GroupBox4: TGroupBox;
    cheditareducacao: TCheckBox;
    chdeletareducacao: TCheckBox;
    chconsultareducacao: TCheckBox;
    chinserireducacao: TCheckBox;
    chtodaseducacao: TCheckBox;
    GroupBox7: TGroupBox;
    chconsultarjuridica: TCheckBox;
    cheditarjuridica: TCheckBox;
    chdeletarjuridica: TCheckBox;
    chinserirjuridica: TCheckBox;
    chtodasjuridica: TCheckBox;
    GroupBox8: TGroupBox;
    chconsultardisciplina: TCheckBox;
    cheditardisciplina: TCheckBox;
    chdeletardisciplina: TCheckBox;
    chinserirdisciplina: TCheckBox;
    chtodasdisciplina: TCheckBox;
    GroupBox6: TGroupBox;
    chconsultarpsicossocial: TCheckBox;
    cheditarpsicossocial: TCheckBox;
    chdeletarpsicossocial: TCheckBox;
    chinserirpsicossocial: TCheckBox;
    chtodaspsicossocial: TCheckBox;
    GroupBox1: TGroupBox;
    CHEditarConfere: TCheckBox;
    CHdeletarconfere: TCheckBox;
    CHConsultarConfere: TCheckBox;
    CHInserirConfere: TCheckBox;
    CHTodasConfere: TCheckBox;
    GroupBox2: TGroupBox;
    chEditarVisitante: TCheckBox;
    chdeletarVisitante: TCheckBox;
    chConsultarVisitante: TCheckBox;
    chInserirVisitante: TCheckBox;
    chTodasVisitante: TCheckBox;
    GbCadastroInternos: TGroupBox;
    chconsultarcadastro: TCheckBox;
    cheditarcadastro: TCheckBox;
    chdeletarcadastro: TCheckBox;
    chinserircadastro: TCheckBox;
    chtodascadastro: TCheckBox;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    GroupBox12: TGroupBox;
    GroupBox13: TGroupBox;
    GroupBox14: TGroupBox;
    GroupBox15: TGroupBox;
    GroupBox16: TGroupBox;
    GroupBox17: TGroupBox;
    GroupBox18: TGroupBox;
    chconsultarenfermagem: TCheckBox;
    cheditarenfermagem: TCheckBox;
    chdeletarenfermagem: TCheckBox;
    chinserirenfermagem: TCheckBox;
    chtodasenfermagem: TCheckBox;
    chconsultarodontologia: TCheckBox;
    cheditarodontologia: TCheckBox;
    chdeletarodontologia: TCheckBox;
    chinserirodontologia: TCheckBox;
    chtodasodontologia: TCheckBox;
    chconsultarclinicamedica: TCheckBox;
    cheditarclinicamedica: TCheckBox;
    chdeletarclinicamedica: TCheckBox;
    chinserirclinicamedica: TCheckBox;
    chtodasclinicamedica: TCheckBox;
    chconsultarfarmacia: TCheckBox;
    cheditarfarmacia: TCheckBox;
    chdeletarfarmacia: TCheckBox;
    chinserirfarmacia: TCheckBox;
    chtodasfarmacia: TCheckBox;
    chconsultarpedagogia: TCheckBox;
    cheditarpedagogia: TCheckBox;
    chdeletarpedagogia: TCheckBox;
    chinserirpedagogia: TCheckBox;
    chtodaspedagogia: TCheckBox;
    chconsultarpsiquiatria: TCheckBox;
    cheditarpsiquiatria: TCheckBox;
    chdeletarpsiquiatria: TCheckBox;
    chinserirpsiquiatria: TCheckBox;
    chtodaspsiquiatria: TCheckBox;
    chconsultarpsicologia: TCheckBox;
    cheditarpsicologia: TCheckBox;
    chdeletarpsicologia: TCheckBox;
    chinserirpsicologia: TCheckBox;
    chtodaspsicologia: TCheckBox;
    chconsultarservicosocial: TCheckBox;
    cheditarservicosocial: TCheckBox;
    chdeletarservicosocial: TCheckBox;
    chinserirservicosocial: TCheckBox;
    chtodasservicosocial: TCheckBox;
    chconsultarsaude: TCheckBox;
    cheditarsaude: TCheckBox;
    chdeletarsaude: TCheckBox;
    chinserirsaude: TCheckBox;
    chtodassaude: TCheckBox;
    chconsultarterapiaocupacional: TCheckBox;
    cheditarterapiaocupacional: TCheckBox;
    chdeletarterapiaocupacional: TCheckBox;
    chinserirterapiaocupacional: TCheckBox;
    chtodasterapiaocupacional: TCheckBox;
    chrelatoriotrabalho: TCheckBox;
    chrelatoriocadastro: TCheckBox;
    chrelatorioconfere: TCheckBox;
    chrelatoriovisitante: TCheckBox;
    chrelatorioeducacao: TCheckBox;
    chrelatoriopsicossocial: TCheckBox;
    chrelatorioenfermagem: TCheckBox;
    chrelatoriofaramcia: TCheckBox;
    chrelatoriopsiquiatria: TCheckBox;
    chrelatorioservicosocial: TCheckBox;
    chrelatorioterapiaocupacional: TCheckBox;
    chrelatoriosaude: TCheckBox;
    chrelatoriopsicologia: TCheckBox;
    chrelatoriopedagogia: TCheckBox;
    chrelatorioodontologia: TCheckBox;
    chrelatorioclinicamedica: TCheckBox;
    chrelatoriodisciplina: TCheckBox;
    chrelatoriojuridico: TCheckBox;
    GroupBoxinteligencia: TGroupBox;
    chconsultarinteligencia: TCheckBox;
    cheditarinteligencia: TCheckBox;
    chdeletarinteligencia: TCheckBox;
    chinseririnteligencia: TCheckBox;
    chrelatoriointeligencia: TCheckBox;
    chtodasinteligencia: TCheckBox;
    SQLpermissaointeligenciaold: TSQLQuery;
    DSPpermissaointeligencia: TDataSetProvider;
    cdspermissaointeligencia: TClientDataSet;
    dspermissaointeligencia: TDataSource;
    DBRadioGroupVISUALIZA_OUTRAS_UP: TDBRadioGroup;
    GroupBox19: TGroupBox;
    chconsultararmas: TCheckBox;
    cheditararmas: TCheckBox;
    chdeletararmas: TCheckBox;
    chinserirarmas: TCheckBox;
    chrelatorioarmas: TCheckBox;
    chtodasarmas: TCheckBox;
    OpenDialog1: TOpenDialog;
    Label37: TLabel;
    DBEdit5: TDBEdit;
    Label38: TLabel;
    DBComboBox6: TDBComboBox;
    Label39: TLabel;
    DBEdit9: TDBEdit;
    Label40: TLabel;
    GroupBox20: TGroupBox;
    chConsultaOcorrencia: TCheckBox;
    chEditaOcorrencia: TCheckBox;
    chDeletaOcorrencia: TCheckBox;
    chInsereOcorrencia: TCheckBox;
    chRelatorioOcorrencia: TCheckBox;
    chTodasOcorrencia: TCheckBox;
    Monitoramento: TGroupBox;
    chconsultarmonitoramento: TCheckBox;
    cheditarmonitoramento: TCheckBox;
    chdeletarmonitoramento: TCheckBox;
    chinserirmonitoramento: TCheckBox;
    chrelatoriomonitoramento: TCheckBox;
    chtodasmonitoramento: TCheckBox;
    GbConselhoDisciplinar: TGroupBox;
    chConsultarConsDisciplinar: TCheckBox;
    chEditarConsDisciplinar: TCheckBox;
    chDeletarConsDisciplinar: TCheckBox;
    chInserirConsDisciplinar: TCheckBox;
    chRelatorioConsDisciplinar: TCheckBox;
    chTodasConsDisciplinar: TCheckBox;
    TabMovimentacao: TTabSheet;
    GbTransferenciaInterno: TGroupBox;
    GbMudancaCela: TGroupBox;
    GbSaidao: TGroupBox;
    GbCirculacaoInterno: TGroupBox;
    GbMovimentoSemiAberto: TGroupBox;
    chConsultarTransferenciaInterno: TCheckBox;
    chEditarTransferenciaInterno: TCheckBox;
    chDeletarTransferenciaInterno: TCheckBox;
    chInserirTransferenciaInterno: TCheckBox;
    chRelatorioTransferenciaInterno: TCheckBox;
    chTodasTransferenciaInterno: TCheckBox;
    ChConsultarMudancaCela: TCheckBox;
    ChEditarMudancaCela: TCheckBox;
    ChDeletarMudancaCela: TCheckBox;
    ChInserirMudancaCela: TCheckBox;
    ChRelatorioMudancaCela: TCheckBox;
    ChTodasMudancaCela: TCheckBox;
    ChConsultarSaidao: TCheckBox;
    ChEditarSaidao: TCheckBox;
    ChDeletarSaidao: TCheckBox;
    ChInserirSaidao: TCheckBox;
    ChRelatorioSaidao: TCheckBox;
    ChTodasSaidao: TCheckBox;
    ChConsultarCirculacaoInterno: TCheckBox;
    ChEditarCirculacaoInterno: TCheckBox;
    ChDeletarCirculacaoInterno: TCheckBox;
    ChInserirCirculacaoInterno: TCheckBox;
    ChRelatorioCirculacaoInterno: TCheckBox;
    ChTodasCirculacaoInterno: TCheckBox;
    ChConsultarMovimentoSemiAberto: TCheckBox;
    ChEditarMovimentoSemiAberto: TCheckBox;
    ChDeletarMovimentoSemiAberto: TCheckBox;
    ChInserirMovimentoSemiAberto: TCheckBox;
    ChRelatorioMovimentoSemiAberto: TCheckBox;
    ChTodasMovimentoSemiAberto: TCheckBox;
    TabModulos: TTabSheet;
    DBrgEntradaVisitante: TDBRadioGroup;
    TabConfiguracao: TTabSheet;
    GbFuncionario: TGroupBox;
    GbFuncaoFuncionario: TGroupBox;
    GbUnidadePenal: TGroupBox;
    GbHorarioFuncionario: TGroupBox;
    GbPadraoSistema: TGroupBox;
    GbEquipe: TGroupBox;
    GbPostoLocalTrabalho: TGroupBox;
    GbAgenteEquipe: TGroupBox;
    GbRegraVisitacao: TGroupBox;
    ChConsultarFuncionario: TCheckBox;
    ChEditarFuncionario: TCheckBox;
    ChDeletarFuncionario: TCheckBox;
    ChInserirFuncionario: TCheckBox;
    ChRelatorioFuncionario: TCheckBox;
    ChTodasFuncionario: TCheckBox;
    ChConsultarFuncaoFuncionario: TCheckBox;
    ChEditarFuncaoFuncionario: TCheckBox;
    ChDeletarFuncaoFuncionario: TCheckBox;
    ChInserirFuncaoFuncionario: TCheckBox;
    ChRelatorioFuncaoFuncionario: TCheckBox;
    ChTodasFuncaoFuncionario: TCheckBox;
    ChConsultarUnidadePenal: TCheckBox;
    ChEditarUnidadePenal: TCheckBox;
    ChDeletarUnidadePenal: TCheckBox;
    ChInserirUnidadePenal: TCheckBox;
    ChRelatorioUnidadePenal: TCheckBox;
    ChTodasUnidadePenal: TCheckBox;
    ChConsultarHorarioFuncionario: TCheckBox;
    ChEditarHorarioFuncionario: TCheckBox;
    ChDeletarHorarioFuncionario: TCheckBox;
    ChInserirHorarioFuncionario: TCheckBox;
    ChRelatorioHorarioFuncionario: TCheckBox;
    ChTodasHorarioFuncionario: TCheckBox;
    ChConsultarPadraoSistema: TCheckBox;
    ChEditarPadraoSistema: TCheckBox;
    ChDeletarPadraoSistema: TCheckBox;
    ChInserirPadraoSistema: TCheckBox;
    ChRelatorioPadraoSistema: TCheckBox;
    ChTodasPadraoSistema: TCheckBox;
    ChConsultarEquipe: TCheckBox;
    ChEditarEquipe: TCheckBox;
    ChDeletarEquipe: TCheckBox;
    ChInserirEquipe: TCheckBox;
    ChRelatorioEquipe: TCheckBox;
    ChTodasEquipe: TCheckBox;
    ChConsultarPostoLocalTrabalho: TCheckBox;
    ChEditarPostoLocalTrabalho: TCheckBox;
    ChDeletarPostoLocalTrabalho: TCheckBox;
    ChInserirPostoLocalTrabalho: TCheckBox;
    ChRelatorioPostoLocalTrabalho: TCheckBox;
    ChTodasPostoLocalTrabalho: TCheckBox;
    ChConsultarAgenteEquipe: TCheckBox;
    ChEditarAgenteEquipe: TCheckBox;
    ChDeletarAgenteEquipe: TCheckBox;
    ChInserirAgenteEquipe: TCheckBox;
    ChRelatorioAgenteEquipe: TCheckBox;
    ChTodasAgenteEquipe: TCheckBox;
    ChConsultarRegraVisitacao: TCheckBox;
    ChEditarRegraVisitacao: TCheckBox;
    ChDeletarRegraVisitacao: TCheckBox;
    ChInserirRegraVisitacao: TCheckBox;
    ChRelatorioRegraVisitacao: TCheckBox;
    ChTodasRegraVisitacao: TCheckBox;
    GBPortariaSaidao: TGroupBox;
    ChConsultarSaidaoCadastro: TCheckBox;
    ChEditarSaidaoCadastro: TCheckBox;
    ChDeletarSaidaoCadastro: TCheckBox;
    ChInserirSaidaoCadastro: TCheckBox;
    chRelatorioSaidaoCadastro: TCheckBox;
    ChTodasSaidaoCadastro: TCheckBox;
    chDespachoOcorrencia: TCheckBox;
    DBRadioGroupAutorizadoWeb: TDBRadioGroup;
    DBRadioGroupAutorizadoDelphi: TDBRadioGroup;
    GbPerfilUsuario: TGroupBox;
    ChConsultarPerfilUsuario: TCheckBox;
    ChEditarPerfilUsuario: TCheckBox;
    ChDeletarPerfilUsuario: TCheckBox;
    ChInserirPerfilUsuario: TCheckBox;
    ChRelatorioPerfilUsuario: TCheckBox;
    ChTodasPerfilUsuario: TCheckBox;
    Label41: TLabel;
    DBLookupPerfilUsuario: TDBLookupComboBox;
    DsPerfilUsuario: TDataSource;
    CdsPerfilUsuario: TClientDataSet;
    DspPerfilUsuario: TDataSetProvider;
    SqlPerfilUsuarioold: TSQLQuery;
    DBCbReligiao: TDBComboBox;
    DBEdit10: TDBEdit;
    Label42: TLabel;
    DsPerfilAtribui: TDataSource;
    CDsPerfilAtribui: TClientDataSet;
    DSpPerfilAtribui: TDataSetProvider;
    SQLPerfilAtribuiold: TSQLQuery;
    Label43: TLabel;
    BtnLimparPermissoes: TButton;
    DbrDefinePerfilUsuario: TDBRadioGroup;
    DbrConcedePermissaoIndividual: TDBRadioGroup;
    TabCadastros: TTabSheet;
    GbPavilhao: TGroupBox;
    GbGaleria: TGroupBox;
    GbSolario: TGroupBox;
    GbCela: TGroupBox;
    GbEscolaridade: TGroupBox;
    GbCondicaoInterno: TGroupBox;
    GbCidade: TGroupBox;
    GbRaca: TGroupBox;
    GbAdvogado: TGroupBox;
    GroupBox21: TGroupBox;
    GbNacionalidade: TGroupBox;
    GbProcedencia: TGroupBox;
    GbDestino: TGroupBox;
    GFornecedor: TGroupBox;
    GbProfissao: TGroupBox;
    GbCTC: TGroupBox;
    GbVisitanteTrafico: TGroupBox;
    GbFaltaDisciplinar: TGroupBox;
    GbSerieFase: TGroupBox;
    TabCadastro2: TTabSheet;
    GbLivroRevista: TGroupBox;
    GbProcessoCondenacao: TGroupBox;
    GbDetracao: TGroupBox;
    GbInterrupcao: TGroupBox;
    GbRemicao: TGroupBox;
    GbArtigoPenal: TGroupBox;
    GbVaraExecucao: TGroupBox;
    GbRemedio: TGroupBox;
    GbcSetorTrabalhoCadastro: TGroupBox;
    GbFuncaoInterno: TGroupBox;
    GbCalculoTrabalho: TGroupBox;
    GbRemicaoTrabalho: TGroupBox;
    GbRoupas: TGroupBox;
    GbGrauParentesco: TGroupBox;
    GbTipoContato: TGroupBox;
    GbAssunto: TGroupBox;
    GbCorrespondencia: TGroupBox;
    GbAgendaAtendimento: TGroupBox;
    GbSituacao: TGroupBox;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label44: TLabel;
    ChConsultarAdvogado: TCheckBox;
    ChEditarAdvogado: TCheckBox;
    ChDeletarAdvogado: TCheckBox;
    ChInserirAdvogado: TCheckBox;
    ChRelatorioAdvogado: TCheckBox;
    ChTodasAdvogado: TCheckBox;
    ChConsultarVisitanteTrafico: TCheckBox;
    ChEditarVisitanteTrafico: TCheckBox;
    ChDeletarVisitanteTrafico: TCheckBox;
    ChInserirVisitanteTrafico: TCheckBox;
    ChRelatorioVisitanteTrafico: TCheckBox;
    ChTodasVisitanteTrafico: TCheckBox;
    ChConsultarFaccao: TCheckBox;
    ChEditarFaccao: TCheckBox;
    ChDeletarFaccao: TCheckBox;
    ChInserirFaccao: TCheckBox;
    ChRelatorioFaccao: TCheckBox;
    ChTodasFaccao: TCheckBox;
    ChConsultarCTC: TCheckBox;
    ChEditarCTC: TCheckBox;
    ChDeletarCTC: TCheckBox;
    ChInserirCTC: TCheckBox;
    ChRelatorioCTC: TCheckBox;
    ChTodasCTC: TCheckBox;
    ChConsultarAgendaAtendimento: TCheckBox;
    ChEditarAgendaAtendimento: TCheckBox;
    ChDeletarAgendaAtendimento: TCheckBox;
    ChInserirAgendaAtendimento: TCheckBox;
    ChRelatorioAgendaAtendimento: TCheckBox;
    ChTodasAgendaAtendimento: TCheckBox;
    ChConsultarCorrespondencia: TCheckBox;
    ChEditarCorrespondencia: TCheckBox;
    ChDeletarCorrespondencia: TCheckBox;
    ChInserirCorrespondencia: TCheckBox;
    ChRelatorioCorrespondencia: TCheckBox;
    ChTodasCorrespondencia: TCheckBox;
    ChConsultarLivroRevista: TCheckBox;
    ChEditarLivroRevista: TCheckBox;
    ChDeletarLivroRevista: TCheckBox;
    ChInserirLivroRevista: TCheckBox;
    ChRelatorioLivroRevista: TCheckBox;
    ChTodasLivroRevista: TCheckBox;
    ChConsultarPavilhao: TCheckBox;
    ChEditarPavilhao: TCheckBox;
    ChDeletarPavilhao: TCheckBox;
    ChInserirPavilhao: TCheckBox;
    ChRelatorioPavilhao: TCheckBox;
    ChTodasPavilhao: TCheckBox;
    ChConsultarGaleria: TCheckBox;
    ChEditarGaleria: TCheckBox;
    ChDeletarGaleria: TCheckBox;
    ChInserirGaleria: TCheckBox;
    ChRelatorioGaleria: TCheckBox;
    ChTodasGaleria: TCheckBox;
    ChConsultarSolario: TCheckBox;
    ChEditarSolario: TCheckBox;
    ChDeletarSolario: TCheckBox;
    ChInserirSolario: TCheckBox;
    ChRelatorioSolario: TCheckBox;
    ChTodasSolario: TCheckBox;
    ChConsultarCela: TCheckBox;
    ChEditarCela: TCheckBox;
    ChDeletarCela: TCheckBox;
    ChInserirCela: TCheckBox;
    ChRelatorioCela: TCheckBox;
    ChTodasCela: TCheckBox;
    ChConsultarCondicaoInterno: TCheckBox;
    ChEditarCondicaoInterno: TCheckBox;
    ChDeletarCondicaoInterno: TCheckBox;
    ChInserirCondicaoInterno: TCheckBox;
    ChRelatorioCondicaoInterno: TCheckBox;
    ChTodasCondicaoInterno: TCheckBox;
    ChConsultarCidade: TCheckBox;
    ChEditarCidade: TCheckBox;
    ChDeletarCidade: TCheckBox;
    ChInserirCidade: TCheckBox;
    ChRelatorioCidade: TCheckBox;
    ChTodasCidade: TCheckBox;
    ChConsultarRaca: TCheckBox;
    ChEditarRaca: TCheckBox;
    ChDeletarRaca: TCheckBox;
    ChInserirRaca: TCheckBox;
    ChRelatorioRaca: TCheckBox;
    ChTodasRaca: TCheckBox;
    ChConsultarEscolaridade: TCheckBox;
    ChEditarEscolaridade: TCheckBox;
    ChDeletarEscolaridade: TCheckBox;
    ChInserirEscolaridade: TCheckBox;
    ChRelatorioEscolaridade: TCheckBox;
    ChTodasEscolaridade: TCheckBox;
    ChConsultarNacionalidade: TCheckBox;
    CheditarNacionalidade: TCheckBox;
    ChDeletarNacionalidade: TCheckBox;
    ChInserirNacionalidade: TCheckBox;
    ChRelatorioNacionalidade: TCheckBox;
    ChTodasNacionalidade: TCheckBox;
    ChConsultarProcedencia: TCheckBox;
    ChEditarProcedencia: TCheckBox;
    ChDeletarProcedencia: TCheckBox;
    ChInserirProcedencia: TCheckBox;
    ChRelatorioProcedencia: TCheckBox;
    ChTodasProcedencia: TCheckBox;
    ChConsultarDestino: TCheckBox;
    ChEditarDestino: TCheckBox;
    ChDeletarDestino: TCheckBox;
    ChInserirDestino: TCheckBox;
    ChRelatorioDestino: TCheckBox;
    ChTodasDestino: TCheckBox;
    ChConsultarFornecedor: TCheckBox;
    ChEditarFornecedor: TCheckBox;
    ChDeletarFornecedor: TCheckBox;
    ChInserirFornecedor: TCheckBox;
    ChRelatorioFornecedor: TCheckBox;
    ChTodasFornecedor: TCheckBox;
    ChConsultarProfissao: TCheckBox;
    ChEditarProfissao: TCheckBox;
    ChDeletarProfissao: TCheckBox;
    ChInserirProfissao: TCheckBox;
    ChRelatorioProfissao: TCheckBox;
    ChTodasProfissao: TCheckBox;
    ChConsultarFaltaDisciplinar: TCheckBox;
    ChEditarFaltaDisciplinar: TCheckBox;
    ChDeletarFaltaDisciplinar: TCheckBox;
    ChInserirFaltaDisciplinar: TCheckBox;
    ChRelatorioFaltaDisciplinar: TCheckBox;
    ChTodasFaltaDisciplinar: TCheckBox;
    ChConsultarSerieFaseEstudo: TCheckBox;
    ChEditarSerieFaseEstudo: TCheckBox;
    ChDeletarSerieFaseEstudo: TCheckBox;
    ChInserirSerieFaseEstudo: TCheckBox;
    ChRelatorioSerieFaseEstudo: TCheckBox;
    ChTodasSerieFaseEstudo: TCheckBox;
    ChConsultarProcessoCondenacao: TCheckBox;
    ChEditarProcessoCondenacao: TCheckBox;
    ChDeletarProcessoCondenacao: TCheckBox;
    ChInserirProcessoCondenacao: TCheckBox;
    ChRelatorioProcessoCondenacao: TCheckBox;
    ChTodasProcessoCondenacao: TCheckBox;
    ChConsultarDetracao: TCheckBox;
    ChEditarDetracao: TCheckBox;
    ChDeletarDetracao: TCheckBox;
    ChInserirDetracao: TCheckBox;
    ChRelatorioDetracao: TCheckBox;
    ChTodasDetracao: TCheckBox;
    ChConsultarInterrupcao: TCheckBox;
    ChEditarInterrupcao: TCheckBox;
    ChDeletarInterrupcao: TCheckBox;
    ChInserirInterrupcao: TCheckBox;
    ChRelatorioInterrupcao: TCheckBox;
    ChTodasInterrupcao: TCheckBox;
    ChConsultarRemicao: TCheckBox;
    ChEditarRemicao: TCheckBox;
    ChDeletarRemicao: TCheckBox;
    ChInserirRemicao: TCheckBox;
    ChRelatorioRemicao: TCheckBox;
    ChTodasRemicao: TCheckBox;
    ChConsultarArtigoPenal: TCheckBox;
    ChEditarArtigoPenal: TCheckBox;
    ChDeletarArtigoPenal: TCheckBox;
    ChInserirArtigoPenal: TCheckBox;
    ChRelatorioArtigoPenal: TCheckBox;
    ChTodasArtigoPenal: TCheckBox;
    ChConsultarVaraExecucao: TCheckBox;
    ChEditarVaraExecucao: TCheckBox;
    ChDeletarVaraExecucao: TCheckBox;
    ChInserirVaraExecucao: TCheckBox;
    ChRelatorioVaraExecucao: TCheckBox;
    ChTodasVaraExecucao: TCheckBox;
    ChConsultarRemedio: TCheckBox;
    ChEditarRemedio: TCheckBox;
    ChDeletarRemedio: TCheckBox;
    ChInserirRemedio: TCheckBox;
    ChRelatorioRemedio: TCheckBox;
    ChTodasRemedio: TCheckBox;
    ChConsultarSetorTrabalhoCad: TCheckBox;
    ChEditarSetorTrabalhoCad: TCheckBox;
    ChDeletarSetorTrabalhoCad: TCheckBox;
    ChInserirSetorTrabalhoCad: TCheckBox;
    ChRelatorioSetorTrabalhoCad: TCheckBox;
    ChTodasSetorTrabalhoCad: TCheckBox;
    ChConsultarFuncaoInterno: TCheckBox;
    ChEditarFuncaoInterno: TCheckBox;
    ChDeletarFuncaoInterno: TCheckBox;
    ChInserirFuncaoInterno: TCheckBox;
    ChRelatorioFuncaoInterno: TCheckBox;
    ChTodasFuncaoInterno: TCheckBox;
    ChConsultarCalculoTrabalho: TCheckBox;
    ChEditarCalculoTrabalho: TCheckBox;
    ChDeletarCalculoTrabalho: TCheckBox;
    ChInserirCalculoTrabalho: TCheckBox;
    ChRelatorioCalculoTrabalho: TCheckBox;
    ChTodasCalculoTrabalho: TCheckBox;
    ChConsultarRemicaoTrabalho: TCheckBox;
    ChEditarRemicaoTrabalho: TCheckBox;
    ChDeletarRemicaoTrabalho: TCheckBox;
    ChInserirRemicaoTrabalho: TCheckBox;
    ChRelatorioRemicaoTrabalho: TCheckBox;
    ChTodasRemicaoTrabalho: TCheckBox;
    ChConsultarRoupas: TCheckBox;
    ChEditarRoupas: TCheckBox;
    ChDeletarRoupas: TCheckBox;
    ChInserirRoupas: TCheckBox;
    ChRelatorioRoupas: TCheckBox;
    ChTodasRoupas: TCheckBox;
    ChConsultarGrauParentesco: TCheckBox;
    ChEditarGrauParentesco: TCheckBox;
    ChDeletarGrauParentesco: TCheckBox;
    ChInserirGrauParentesco: TCheckBox;
    ChRelatorioGrauParentesco: TCheckBox;
    ChTodasGrauParentesco: TCheckBox;
    ChConsultarTipoContato: TCheckBox;
    ChEditarTipoContato: TCheckBox;
    ChDeletarTipoContato: TCheckBox;
    ChInserirTipoContato: TCheckBox;
    ChRelatorioTipoContato: TCheckBox;
    ChTodasTipoContato: TCheckBox;
    ChConsultarAssunto: TCheckBox;
    ChEditarAssunto: TCheckBox;
    ChDeletarAssunto: TCheckBox;
    ChInserirAssunto: TCheckBox;
    ChRelatorioAssunto: TCheckBox;
    ChTodasAssunto: TCheckBox;
    ChConsultarSituacao: TCheckBox;
    ChEditarSituacao: TCheckBox;
    ChDeletarSituacao: TCheckBox;
    ChInserirSituacao: TCheckBox;
    ChRelatorioSituacao: TCheckBox;
    ChTodasSituacao: TCheckBox;
    TabMonitoramento: TTabSheet;
    GbEventos: TGroupBox;
    GbSubEventos: TGroupBox;
    GbMonitEventos: TGroupBox;
    Label49: TLabel;
    Label50: TLabel;
    ChConsultarEventos: TCheckBox;
    ChEditarEventos: TCheckBox;
    ChDeletarEventos: TCheckBox;
    ChInserirEventos: TCheckBox;
    ChRelatorioEventos: TCheckBox;
    ChTodasEventos: TCheckBox;
    ChConsultarSubEventos: TCheckBox;
    ChEditarSubEventos: TCheckBox;
    ChDeletarSubEventos: TCheckBox;
    ChInserirSubEventos: TCheckBox;
    ChRelatorioSubEventos: TCheckBox;
    ChTodasSubEventos: TCheckBox;
    ChConsultarMonitEventos: TCheckBox;
    ChEditarMonitEventos: TCheckBox;
    ChDeletarMonitEventos: TCheckBox;
    ChInserirMonitEventos: TCheckBox;
    ChRelatorioMonitEventos: TCheckBox;
    ChTodasMonitEventos: TCheckBox;
    SQLPerfilAtribui: TFDQuery;
    SqlConsulta: TFDQuery;
    SqlSelectFuncionario: TFDQuery;
    SQLpermissaointeligencia: TFDQuery;
    SqlPerfilUsuario: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure CHConsultarConfereClick(Sender: TObject);
    procedure CHEditarConfereClick(Sender: TObject);
    procedure CHdeletarconfereClick(Sender: TObject);
    procedure CHInserirConfereClick(Sender: TObject);
    procedure CHTodasConfereClick(Sender: TObject);
    procedure chConsultarVisitanteClick(Sender: TObject);
    procedure chEditarVisitanteClick(Sender: TObject);
    procedure chdeletarVisitanteClick(Sender: TObject);
    procedure chInserirVisitanteClick(Sender: TObject);
    procedure chTodasVisitanteClick(Sender: TObject);
    procedure chtodastrabalhoClick(Sender: TObject);
    procedure chConsultartrabalhoClick(Sender: TObject);
    procedure cheditartrabalhoClick(Sender: TObject);
    procedure chdeletartrabalhoClick(Sender: TObject);
    procedure chinserirtrabalhoClick(Sender: TObject);
    procedure chconsultareducacaoClick(Sender: TObject);
    procedure cheditareducacaoClick(Sender: TObject);
    procedure chdeletareducacaoClick(Sender: TObject);
    procedure chinserireducacaoClick(Sender: TObject);
    procedure chtodaseducacaoClick(Sender: TObject);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure EditLocalizarChange(Sender: TObject);
    procedure DBGridConsultaDblClick(Sender: TObject);
    procedure DBImageFOTOFUNCIONARIOClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBImagedIGITALClick(Sender: TObject);
    procedure chconsultarcadastroClick(Sender: TObject);
    procedure cheditarcadastroClick(Sender: TObject);
    procedure chdeletarcadastroClick(Sender: TObject);
    procedure chinserircadastroClick(Sender: TObject);
    procedure chtodascadastroClick(Sender: TObject);
    procedure chconsultarpsicossocialClick(Sender: TObject);
    procedure cheditarpsicossocialClick(Sender: TObject);
    procedure chdeletarpsicossocialClick(Sender: TObject);
    procedure chinserirpsicossocialClick(Sender: TObject);
    procedure chconsultarjuridicaClick(Sender: TObject);
    procedure cheditarjuridicaClick(Sender: TObject);
    procedure chdeletarjuridicaClick(Sender: TObject);
    procedure chinserirjuridicaClick(Sender: TObject);
    procedure chconsultardisciplinaClick(Sender: TObject);
    procedure cheditardisciplinaClick(Sender: TObject);
    procedure chdeletardisciplinaClick(Sender: TObject);
    procedure chinserirdisciplinaClick(Sender: TObject);
    procedure chtodaspsicossocialClick(Sender: TObject);
    procedure chtodasjuridicaClick(Sender: TObject);
    procedure chtodasdisciplinaClick(Sender: TObject);
    procedure DBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox5KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure chconsultarclinicamedicaClick(Sender: TObject);
    procedure cheditarclinicamedicaClick(Sender: TObject);
    procedure chdeletarclinicamedicaClick(Sender: TObject);
    procedure chinserirclinicamedicaClick(Sender: TObject);
    procedure chtodasclinicamedicaClick(Sender: TObject);
    procedure chconsultarenfermagemClick(Sender: TObject);
    procedure cheditarenfermagemClick(Sender: TObject);
    procedure chdeletarenfermagemClick(Sender: TObject);
    procedure chinserirenfermagemClick(Sender: TObject);
    procedure chtodasenfermagemClick(Sender: TObject);
    procedure chconsultarfarmaciaClick(Sender: TObject);
    procedure cheditarfarmaciaClick(Sender: TObject);
    procedure chdeletarfarmaciaClick(Sender: TObject);
    procedure chinserirfarmaciaClick(Sender: TObject);
    procedure chtodasfarmaciaClick(Sender: TObject);
    procedure chconsultarpsiquiatriaClick(Sender: TObject);
    procedure cheditarpsiquiatriaClick(Sender: TObject);
    procedure chdeletarpsiquiatriaClick(Sender: TObject);
    procedure chinserirpsiquiatriaClick(Sender: TObject);
    procedure chtodaspsiquiatriaClick(Sender: TObject);
    procedure chconsultarservicosocialClick(Sender: TObject);
    procedure cheditarservicosocialClick(Sender: TObject);
    procedure chdeletarservicosocialClick(Sender: TObject);
    procedure chinserirservicosocialClick(Sender: TObject);
    procedure chtodasservicosocialClick(Sender: TObject);
    procedure chconsultarterapiaocupacionalClick(Sender: TObject);
    procedure cheditarterapiaocupacionalClick(Sender: TObject);
    procedure chdeletarterapiaocupacionalClick(Sender: TObject);
    procedure chinserirterapiaocupacionalClick(Sender: TObject);
    procedure chtodasterapiaocupacionalClick(Sender: TObject);
    procedure chconsultarodontologiaClick(Sender: TObject);
    procedure cheditarodontologiaClick(Sender: TObject);
    procedure chdeletarodontologiaClick(Sender: TObject);
    procedure chinserirodontologiaClick(Sender: TObject);
    procedure chtodasodontologiaClick(Sender: TObject);
    procedure chconsultarpedagogiaClick(Sender: TObject);
    procedure cheditarpedagogiaClick(Sender: TObject);
    procedure chdeletarpedagogiaClick(Sender: TObject);
    procedure chinserirpedagogiaClick(Sender: TObject);
    procedure chtodaspedagogiaClick(Sender: TObject);
    procedure chconsultarpsicologiaClick(Sender: TObject);
    procedure cheditarpsicologiaClick(Sender: TObject);
    procedure chdeletarpsicologiaClick(Sender: TObject);
    procedure chinserirpsicologiaClick(Sender: TObject);
    procedure chtodaspsicologiaClick(Sender: TObject);
    procedure chconsultarsaudeClick(Sender: TObject);
    procedure cheditarsaudeClick(Sender: TObject);
    procedure chdeletarsaudeClick(Sender: TObject);
    procedure chinserirsaudeClick(Sender: TObject);
    procedure chtodassaudeClick(Sender: TObject);
    procedure chrelatoriocadastroClick(Sender: TObject);
    procedure chrelatorioconfereClick(Sender: TObject);
    procedure chrelatoriovisitanteClick(Sender: TObject);
    procedure chrelatoriotrabalhoClick(Sender: TObject);
    procedure chrelatorioeducacaoClick(Sender: TObject);
    procedure chrelatoriopsicossocialClick(Sender: TObject);
    procedure chrelatorioenfermagemClick(Sender: TObject);
    procedure chrelatoriofaramciaClick(Sender: TObject);
    procedure chrelatoriopsiquiatriaClick(Sender: TObject);
    procedure chrelatorioservicosocialClick(Sender: TObject);
    procedure chrelatorioterapiaocupacionalClick(Sender: TObject);
    procedure chrelatoriojuridicoClick(Sender: TObject);
    procedure chrelatoriodisciplinaClick(Sender: TObject);
    procedure chrelatorioclinicamedicaClick(Sender: TObject);
    procedure chrelatorioodontologiaClick(Sender: TObject);
    procedure chrelatoriopedagogiaClick(Sender: TObject);
    procedure chrelatoriopsicologiaClick(Sender: TObject);
    procedure chrelatoriosaudeClick(Sender: TObject);
    procedure chconsultarinteligenciaClick(Sender: TObject);
    procedure cheditarinteligenciaClick(Sender: TObject);
    procedure chdeletarinteligenciaClick(Sender: TObject);
    procedure chinseririnteligenciaClick(Sender: TObject);
    procedure chrelatoriointeligenciaClick(Sender: TObject);
    procedure chtodasinteligenciaClick(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure SalvarClick(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure chconsultararmasClick(Sender: TObject);
    procedure cheditararmasClick(Sender: TObject);
    procedure chdeletararmasClick(Sender: TObject);
    procedure chinserirarmasClick(Sender: TObject);
    procedure chrelatorioarmasClick(Sender: TObject);
    procedure chtodasarmasClick(Sender: TObject);
    procedure chconsultarmonitoramentoClick(Sender: TObject);
    procedure cheditarmonitoramentoClick(Sender: TObject);
    procedure chdeletarmonitoramentoClick(Sender: TObject);
    procedure chinserirmonitoramentoClick(Sender: TObject);
    procedure chrelatoriomonitoramentoClick(Sender: TObject);
    procedure chtodasmonitoramentoClick(Sender: TObject);
    procedure chConsultaOcorrenciaClick(Sender: TObject);
    procedure chEditaOcorrenciaClick(Sender: TObject);
    procedure chDeletaOcorrenciaClick(Sender: TObject);
    procedure chInsereOcorrenciaClick(Sender: TObject);
    procedure chRelatorioOcorrenciaClick(Sender: TObject);
    procedure chTodasOcorrenciaClick(Sender: TObject);
    procedure chConsultarConsDisciplinarClick(Sender: TObject);
    procedure chEditarConsDisciplinarClick(Sender: TObject);
    procedure chDeletarConsDisciplinarClick(Sender: TObject);
    procedure chInserirConsDisciplinarClick(Sender: TObject);
    procedure chRelatorioConsDisciplinarClick(Sender: TObject);
    procedure chTodasConsDisciplinarClick(Sender: TObject);
    procedure chConsultarTransferenciaInternoClick(Sender: TObject);
    procedure chEditarTransferenciaInternoClick(Sender: TObject);
    procedure chDeletarTransferenciaInternoClick(Sender: TObject);
    procedure chInserirTransferenciaInternoClick(Sender: TObject);
    procedure chRelatorioTransferenciaInternoClick(Sender: TObject);
    procedure chTodasTransferenciaInternoClick(Sender: TObject);
    procedure ChConsultarMudancaCelaClick(Sender: TObject);
    procedure ChEditarMudancaCelaClick(Sender: TObject);
    procedure ChDeletarMudancaCelaClick(Sender: TObject);
    procedure ChInserirMudancaCelaClick(Sender: TObject);
    procedure ChRelatorioMudancaCelaClick(Sender: TObject);
    procedure ChTodasMudancaCelaClick(Sender: TObject);
    procedure ChConsultarSaidaoClick(Sender: TObject);
    procedure ChEditarSaidaoClick(Sender: TObject);
    procedure ChDeletarSaidaoClick(Sender: TObject);
    procedure ChInserirSaidaoClick(Sender: TObject);
    procedure ChRelatorioSaidaoClick(Sender: TObject);
    procedure ChTodasSaidaoClick(Sender: TObject);
    procedure ChConsultarCirculacaoInternoClick(Sender: TObject);
    procedure ChEditarCirculacaoInternoClick(Sender: TObject);
    procedure ChDeletarCirculacaoInternoClick(Sender: TObject);
    procedure ChInserirCirculacaoInternoClick(Sender: TObject);
    procedure ChRelatorioCirculacaoInternoClick(Sender: TObject);
    procedure ChTodasCirculacaoInternoClick(Sender: TObject);
    procedure ChConsultarMovimentoSemiAbertoClick(Sender: TObject);
    procedure ChEditarMovimentoSemiAbertoClick(Sender: TObject);
    procedure ChDeletarMovimentoSemiAbertoClick(Sender: TObject);
    procedure ChInserirMovimentoSemiAbertoClick(Sender: TObject);
    procedure ChRelatorioMovimentoSemiAbertoClick(Sender: TObject);
    procedure ChTodasMovimentoSemiAbertoClick(Sender: TObject);
    procedure ChConsultarFuncionarioClick(Sender: TObject);
    procedure ChEditarFuncionarioClick(Sender: TObject);
    procedure ChDeletarFuncionarioClick(Sender: TObject);
    procedure ChInserirFuncionarioClick(Sender: TObject);
    procedure ChRelatorioFuncionarioClick(Sender: TObject);
    procedure ChTodasFuncionarioClick(Sender: TObject);
    procedure ChConsultarFuncaoFuncionarioClick(Sender: TObject);
    procedure ChEditarFuncaoFuncionarioClick(Sender: TObject);
    procedure ChDeletarFuncaoFuncionarioClick(Sender: TObject);
    procedure ChInserirFuncaoFuncionarioClick(Sender: TObject);
    procedure ChRelatorioFuncaoFuncionarioClick(Sender: TObject);
    procedure ChTodasFuncaoFuncionarioClick(Sender: TObject);
    procedure ChConsultarUnidadePenalClick(Sender: TObject);
    procedure ChEditarUnidadePenalClick(Sender: TObject);
    procedure ChDeletarUnidadePenalClick(Sender: TObject);
    procedure ChInserirUnidadePenalClick(Sender: TObject);
    procedure ChRelatorioUnidadePenalClick(Sender: TObject);
    procedure ChTodasUnidadePenalClick(Sender: TObject);
    procedure ChConsultarHorarioFuncionarioClick(Sender: TObject);
    procedure ChEditarHorarioFuncionarioClick(Sender: TObject);
    procedure ChDeletarHorarioFuncionarioClick(Sender: TObject);
    procedure ChInserirHorarioFuncionarioClick(Sender: TObject);
    procedure ChRelatorioHorarioFuncionarioClick(Sender: TObject);
    procedure ChTodasHorarioFuncionarioClick(Sender: TObject);
    procedure ChConsultarPadraoSistemaClick(Sender: TObject);
    procedure ChEditarPadraoSistemaClick(Sender: TObject);
    procedure ChDeletarPadraoSistemaClick(Sender: TObject);
    procedure ChInserirPadraoSistemaClick(Sender: TObject);
    procedure ChRelatorioPadraoSistemaClick(Sender: TObject);
    procedure ChTodasPadraoSistemaClick(Sender: TObject);
    procedure ChConsultarEquipeClick(Sender: TObject);
    procedure ChEditarEquipeClick(Sender: TObject);
    procedure ChDeletarEquipeClick(Sender: TObject);
    procedure ChInserirEquipeClick(Sender: TObject);
    procedure ChRelatorioEquipeClick(Sender: TObject);
    procedure ChTodasEquipeClick(Sender: TObject);
    procedure ChConsultarPostoLocalTrabalhoClick(Sender: TObject);
    procedure ChEditarPostoLocalTrabalhoClick(Sender: TObject);
    procedure ChDeletarPostoLocalTrabalhoClick(Sender: TObject);
    procedure ChInserirPostoLocalTrabalhoClick(Sender: TObject);
    procedure ChRelatorioPostoLocalTrabalhoClick(Sender: TObject);
    procedure ChTodasPostoLocalTrabalhoClick(Sender: TObject);
    procedure ChConsultarAgenteEquipeClick(Sender: TObject);
    procedure ChEditarAgenteEquipeClick(Sender: TObject);
    procedure ChDeletarAgenteEquipeClick(Sender: TObject);
    procedure ChInserirAgenteEquipeClick(Sender: TObject);
    procedure ChRelatorioAgenteEquipeClick(Sender: TObject);
    procedure ChTodasAgenteEquipeClick(Sender: TObject);
    procedure ChConsultarRegraVisitacaoClick(Sender: TObject);
    procedure ChEditarRegraVisitacaoClick(Sender: TObject);
    procedure ChDeletarRegraVisitacaoClick(Sender: TObject);
    procedure ChInserirRegraVisitacaoClick(Sender: TObject);
    procedure ChRelatorioRegraVisitacaoClick(Sender: TObject);
    procedure ChTodasRegraVisitacaoClick(Sender: TObject);
    procedure ChConsultarSaidaoCadastroClick(Sender: TObject);
    procedure ChEditarSaidaoCadastroClick(Sender: TObject);
    procedure ChInserirSaidaoCadastroClick(Sender: TObject);
    procedure ChDeletarSaidaoCadastroClick(Sender: TObject);
    procedure chRelatorioSaidaoCadastroClick(Sender: TObject);
    procedure ChTodasSaidaoCadastroClick(Sender: TObject);
    procedure chDespachoOcorrenciaClick(Sender: TObject);
    procedure ChConsultarPerfilUsuarioClick(Sender: TObject);
    procedure ChEditarPerfilUsuarioClick(Sender: TObject);
    procedure ChDeletarPerfilUsuarioClick(Sender: TObject);
    procedure ChInserirPerfilUsuarioClick(Sender: TObject);
    procedure ChRelatorioPerfilUsuarioClick(Sender: TObject);
    procedure ChTodasPerfilUsuarioClick(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure DBEditnascimentoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEditdtlotacaoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEditdtlotacaoExit(Sender: TObject);
    procedure DBEditnascimentoExit(Sender: TObject);
    procedure DBEditadmissaoExit(Sender: TObject);
    procedure DBEditadmissaoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEditCPFKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupPerfilUsuarioCloseUp(Sender: TObject);
    procedure BtnLimparPermissoesClick(Sender: TObject);
    procedure DBLookupPerfilUsuarioKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ChConsultarAdvogadoClick(Sender: TObject);
    procedure ChEditarAdvogadoClick(Sender: TObject);
    procedure ChDeletarAdvogadoClick(Sender: TObject);
    procedure ChInserirAdvogadoClick(Sender: TObject);
    procedure ChRelatorioAdvogadoClick(Sender: TObject);
    procedure ChTodasAdvogadoClick(Sender: TObject);
    procedure ChConsultarVisitanteTraficoClick(Sender: TObject);
    procedure ChEditarVisitanteTraficoClick(Sender: TObject);
    procedure ChDeletarVisitanteTraficoClick(Sender: TObject);
    procedure ChInserirVisitanteTraficoClick(Sender: TObject);
    procedure ChRelatorioVisitanteTraficoClick(Sender: TObject);
    procedure ChTodasVisitanteTraficoClick(Sender: TObject);
    procedure ChConsultarFaccaoClick(Sender: TObject);
    procedure ChEditarFaccaoClick(Sender: TObject);
    procedure ChDeletarFaccaoClick(Sender: TObject);
    procedure ChInserirFaccaoClick(Sender: TObject);
    procedure ChRelatorioFaccaoClick(Sender: TObject);
    procedure ChTodasFaccaoClick(Sender: TObject);
    procedure ChConsultarCTCClick(Sender: TObject);
    procedure ChEditarCTCClick(Sender: TObject);
    procedure ChDeletarCTCClick(Sender: TObject);
    procedure ChInserirCTCClick(Sender: TObject);
    procedure ChRelatorioCTCClick(Sender: TObject);
    procedure ChTodasCTCClick(Sender: TObject);
    procedure ChConsultarAgendaAtendimentoClick(Sender: TObject);
    procedure ChEditarAgendaAtendimentoClick(Sender: TObject);
    procedure ChDeletarAgendaAtendimentoClick(Sender: TObject);
    procedure ChInserirAgendaAtendimentoClick(Sender: TObject);
    procedure ChRelatorioAgendaAtendimentoClick(Sender: TObject);
    procedure ChTodasAgendaAtendimentoClick(Sender: TObject);
    procedure ChConsultarCorrespondenciaClick(Sender: TObject);
    procedure ChEditarCorrespondenciaClick(Sender: TObject);
    procedure ChDeletarCorrespondenciaClick(Sender: TObject);
    procedure ChInserirCorrespondenciaClick(Sender: TObject);
    procedure ChRelatorioCorrespondenciaClick(Sender: TObject);
    procedure ChTodasCorrespondenciaClick(Sender: TObject);
    procedure ChConsultarLivroRevistaClick(Sender: TObject);
    procedure ChEditarLivroRevistaClick(Sender: TObject);
    procedure ChDeletarLivroRevistaClick(Sender: TObject);
    procedure ChInserirLivroRevistaClick(Sender: TObject);
    procedure ChRelatorioLivroRevistaClick(Sender: TObject);
    procedure ChTodasLivroRevistaClick(Sender: TObject);
    procedure ChConsultarPavilhaoClick(Sender: TObject);
    procedure ChEditarPavilhaoClick(Sender: TObject);
    procedure ChDeletarPavilhaoClick(Sender: TObject);
    procedure ChInserirPavilhaoClick(Sender: TObject);
    procedure ChRelatorioPavilhaoClick(Sender: TObject);
    procedure ChTodasPavilhaoClick(Sender: TObject);
    procedure ChConsultarGaleriaClick(Sender: TObject);
    procedure ChEditarGaleriaClick(Sender: TObject);
    procedure ChDeletarGaleriaClick(Sender: TObject);
    procedure ChInserirGaleriaClick(Sender: TObject);
    procedure ChRelatorioGaleriaClick(Sender: TObject);
    procedure ChTodasGaleriaClick(Sender: TObject);
    procedure ChConsultarSolarioClick(Sender: TObject);
    procedure ChEditarSolarioClick(Sender: TObject);
    procedure ChDeletarSolarioClick(Sender: TObject);
    procedure ChInserirSolarioClick(Sender: TObject);
    procedure ChRelatorioSolarioClick(Sender: TObject);
    procedure ChTodasSolarioClick(Sender: TObject);
    procedure ChConsultarCelaClick(Sender: TObject);
    procedure ChEditarCelaClick(Sender: TObject);
    procedure ChDeletarCelaClick(Sender: TObject);
    procedure ChInserirCelaClick(Sender: TObject);
    procedure ChRelatorioCelaClick(Sender: TObject);
    procedure ChTodasCelaClick(Sender: TObject);
    procedure ChConsultarCondicaoInternoClick(Sender: TObject);
    procedure ChEditarCondicaoInternoClick(Sender: TObject);
    procedure ChDeletarCondicaoInternoClick(Sender: TObject);
    procedure ChInserirCondicaoInternoClick(Sender: TObject);
    procedure ChRelatorioCondicaoInternoClick(Sender: TObject);
    procedure ChTodasCondicaoInternoClick(Sender: TObject);
    procedure ChConsultarCidadeClick(Sender: TObject);
    procedure ChEditarCidadeClick(Sender: TObject);
    procedure ChDeletarCidadeClick(Sender: TObject);
    procedure ChInserirCidadeClick(Sender: TObject);
    procedure ChRelatorioCidadeClick(Sender: TObject);
    procedure ChTodasCidadeClick(Sender: TObject);
    procedure ChConsultarRacaClick(Sender: TObject);
    procedure ChEditarRacaClick(Sender: TObject);
    procedure ChDeletarRacaClick(Sender: TObject);
    procedure ChInserirRacaClick(Sender: TObject);
    procedure ChRelatorioRacaClick(Sender: TObject);
    procedure ChTodasRacaClick(Sender: TObject);
    procedure ChConsultarEscolaridadeClick(Sender: TObject);
    procedure ChEditarEscolaridadeClick(Sender: TObject);
    procedure ChDeletarEscolaridadeClick(Sender: TObject);
    procedure ChInserirEscolaridadeClick(Sender: TObject);
    procedure ChRelatorioEscolaridadeClick(Sender: TObject);
    procedure ChTodasEscolaridadeClick(Sender: TObject);
    procedure ChConsultarNacionalidadeClick(Sender: TObject);
    procedure CheditarNacionalidadeClick(Sender: TObject);
    procedure ChDeletarNacionalidadeClick(Sender: TObject);
    procedure ChInserirNacionalidadeClick(Sender: TObject);
    procedure ChRelatorioNacionalidadeClick(Sender: TObject);
    procedure ChTodasNacionalidadeClick(Sender: TObject);
    procedure ChConsultarProcedenciaClick(Sender: TObject);
    procedure ChEditarProcedenciaClick(Sender: TObject);
    procedure ChDeletarProcedenciaClick(Sender: TObject);
    procedure ChInserirProcedenciaClick(Sender: TObject);
    procedure ChRelatorioProcedenciaClick(Sender: TObject);
    procedure ChTodasProcedenciaClick(Sender: TObject);
    procedure ChConsultarDestinoClick(Sender: TObject);
    procedure ChEditarDestinoClick(Sender: TObject);
    procedure ChDeletarDestinoClick(Sender: TObject);
    procedure ChInserirDestinoClick(Sender: TObject);
    procedure ChRelatorioDestinoClick(Sender: TObject);
    procedure ChTodasDestinoClick(Sender: TObject);
    procedure ChConsultarFornecedorClick(Sender: TObject);
    procedure ChEditarFornecedorClick(Sender: TObject);
    procedure ChDeletarFornecedorClick(Sender: TObject);
    procedure ChInserirFornecedorClick(Sender: TObject);
    procedure ChRelatorioFornecedorClick(Sender: TObject);
    procedure ChTodasFornecedorClick(Sender: TObject);
    procedure ChConsultarProfissaoClick(Sender: TObject);
    procedure ChEditarProfissaoClick(Sender: TObject);
    procedure ChDeletarProfissaoClick(Sender: TObject);
    procedure ChInserirProfissaoClick(Sender: TObject);
    procedure ChRelatorioProfissaoClick(Sender: TObject);
    procedure ChTodasProfissaoClick(Sender: TObject);
    procedure ChConsultarFaltaDisciplinarClick(Sender: TObject);
    procedure ChEditarFaltaDisciplinarClick(Sender: TObject);
    procedure ChDeletarFaltaDisciplinarClick(Sender: TObject);
    procedure ChInserirFaltaDisciplinarClick(Sender: TObject);
    procedure ChRelatorioFaltaDisciplinarClick(Sender: TObject);
    procedure ChTodasFaltaDisciplinarClick(Sender: TObject);
    procedure ChConsultarSerieFaseEstudoClick(Sender: TObject);
    procedure ChEditarSerieFaseEstudoClick(Sender: TObject);
    procedure ChDeletarSerieFaseEstudoClick(Sender: TObject);
    procedure ChInserirSerieFaseEstudoClick(Sender: TObject);
    procedure ChRelatorioSerieFaseEstudoClick(Sender: TObject);
    procedure ChTodasSerieFaseEstudoClick(Sender: TObject);
    procedure ChConsultarProcessoCondenacaoClick(Sender: TObject);
    procedure ChEditarProcessoCondenacaoClick(Sender: TObject);
    procedure ChDeletarProcessoCondenacaoClick(Sender: TObject);
    procedure ChInserirProcessoCondenacaoClick(Sender: TObject);
    procedure ChRelatorioProcessoCondenacaoClick(Sender: TObject);
    procedure ChTodasProcessoCondenacaoClick(Sender: TObject);
    procedure ChConsultarDetracaoClick(Sender: TObject);
    procedure ChEditarDetracaoClick(Sender: TObject);
    procedure ChDeletarDetracaoClick(Sender: TObject);
    procedure ChInserirDetracaoClick(Sender: TObject);
    procedure ChRelatorioDetracaoClick(Sender: TObject);
    procedure ChTodasDetracaoClick(Sender: TObject);
    procedure ChConsultarInterrupcaoClick(Sender: TObject);
    procedure ChEditarInterrupcaoClick(Sender: TObject);
    procedure ChDeletarInterrupcaoClick(Sender: TObject);
    procedure ChInserirInterrupcaoClick(Sender: TObject);
    procedure ChRelatorioInterrupcaoClick(Sender: TObject);
    procedure ChTodasInterrupcaoClick(Sender: TObject);
    procedure ChConsultarRemicaoClick(Sender: TObject);
    procedure ChEditarRemicaoClick(Sender: TObject);
    procedure ChDeletarRemicaoClick(Sender: TObject);
    procedure ChInserirRemicaoClick(Sender: TObject);
    procedure ChRelatorioRemicaoClick(Sender: TObject);
    procedure ChTodasRemicaoClick(Sender: TObject);
    procedure ChConsultarArtigoPenalClick(Sender: TObject);
    procedure ChEditarArtigoPenalClick(Sender: TObject);
    procedure ChDeletarArtigoPenalClick(Sender: TObject);
    procedure ChInserirArtigoPenalClick(Sender: TObject);
    procedure ChRelatorioArtigoPenalClick(Sender: TObject);
    procedure ChTodasArtigoPenalClick(Sender: TObject);
    procedure ChConsultarVaraExecucaoClick(Sender: TObject);
    procedure ChEditarVaraExecucaoClick(Sender: TObject);
    procedure ChDeletarVaraExecucaoClick(Sender: TObject);
    procedure ChInserirVaraExecucaoClick(Sender: TObject);
    procedure ChRelatorioVaraExecucaoClick(Sender: TObject);
    procedure ChTodasVaraExecucaoClick(Sender: TObject);
    procedure ChConsultarRemedioClick(Sender: TObject);
    procedure ChEditarRemedioClick(Sender: TObject);
    procedure ChDeletarRemedioClick(Sender: TObject);
    procedure ChInserirRemedioClick(Sender: TObject);
    procedure ChRelatorioRemedioClick(Sender: TObject);
    procedure ChTodasRemedioClick(Sender: TObject);
    procedure ChConsultarSetorTrabalhoCadClick(Sender: TObject);
    procedure ChEditarSetorTrabalhoCadClick(Sender: TObject);
    procedure ChDeletarSetorTrabalhoCadClick(Sender: TObject);
    procedure ChInserirSetorTrabalhoCadClick(Sender: TObject);
    procedure ChRelatorioSetorTrabalhoCadClick(Sender: TObject);
    procedure ChTodasSetorTrabalhoCadClick(Sender: TObject);
    procedure ChConsultarFuncaoInternoClick(Sender: TObject);
    procedure ChEditarFuncaoInternoClick(Sender: TObject);
    procedure ChDeletarFuncaoInternoClick(Sender: TObject);
    procedure ChInserirFuncaoInternoClick(Sender: TObject);
    procedure ChRelatorioFuncaoInternoClick(Sender: TObject);
    procedure ChTodasFuncaoInternoClick(Sender: TObject);
    procedure ChConsultarCalculoTrabalhoClick(Sender: TObject);
    procedure ChEditarCalculoTrabalhoClick(Sender: TObject);
    procedure ChDeletarCalculoTrabalhoClick(Sender: TObject);
    procedure ChInserirCalculoTrabalhoClick(Sender: TObject);
    procedure ChRelatorioCalculoTrabalhoClick(Sender: TObject);
    procedure ChTodasCalculoTrabalhoClick(Sender: TObject);
    procedure ChConsultarRemicaoTrabalhoClick(Sender: TObject);
    procedure ChEditarRemicaoTrabalhoClick(Sender: TObject);
    procedure ChDeletarRemicaoTrabalhoClick(Sender: TObject);
    procedure ChInserirRemicaoTrabalhoClick(Sender: TObject);
    procedure ChRelatorioRemicaoTrabalhoClick(Sender: TObject);
    procedure ChTodasRemicaoTrabalhoClick(Sender: TObject);
    procedure ChConsultarRoupasClick(Sender: TObject);
    procedure ChEditarRoupasClick(Sender: TObject);
    procedure ChDeletarRoupasClick(Sender: TObject);
    procedure ChInserirRoupasClick(Sender: TObject);
    procedure ChRelatorioRoupasClick(Sender: TObject);
    procedure ChTodasRoupasClick(Sender: TObject);
    procedure ChConsultarGrauParentescoClick(Sender: TObject);
    procedure ChEditarGrauParentescoClick(Sender: TObject);
    procedure ChDeletarGrauParentescoClick(Sender: TObject);
    procedure ChInserirGrauParentescoClick(Sender: TObject);
    procedure ChRelatorioGrauParentescoClick(Sender: TObject);
    procedure ChTodasGrauParentescoClick(Sender: TObject);
    procedure ChConsultarTipoContatoClick(Sender: TObject);
    procedure ChEditarTipoContatoClick(Sender: TObject);
    procedure ChDeletarTipoContatoClick(Sender: TObject);
    procedure ChInserirTipoContatoClick(Sender: TObject);
    procedure ChRelatorioTipoContatoClick(Sender: TObject);
    procedure ChTodasTipoContatoClick(Sender: TObject);
    procedure ChConsultarAssuntoClick(Sender: TObject);
    procedure ChEditarAssuntoClick(Sender: TObject);
    procedure ChDeletarAssuntoClick(Sender: TObject);
    procedure ChInserirAssuntoClick(Sender: TObject);
    procedure ChRelatorioAssuntoClick(Sender: TObject);
    procedure ChTodasAssuntoClick(Sender: TObject);
    procedure ChConsultarSituacaoClick(Sender: TObject);
    procedure ChEditarSituacaoClick(Sender: TObject);
    procedure ChDeletarSituacaoClick(Sender: TObject);
    procedure ChInserirSituacaoClick(Sender: TObject);
    procedure ChRelatorioSituacaoClick(Sender: TObject);
    procedure ChTodasSituacaoClick(Sender: TObject);
    procedure ChConsultarEventosClick(Sender: TObject);
    procedure ChEditarEventosClick(Sender: TObject);
    procedure ChDeletarEventosClick(Sender: TObject);
    procedure ChInserirEventosClick(Sender: TObject);
    procedure ChRelatorioEventosClick(Sender: TObject);
    procedure ChTodasEventosClick(Sender: TObject);
    procedure ChConsultarSubEventosClick(Sender: TObject);
    procedure ChEditarSubEventosClick(Sender: TObject);
    procedure ChDeletarSubEventosClick(Sender: TObject);
    procedure ChInserirSubEventosClick(Sender: TObject);
    procedure ChRelatorioSubEventosClick(Sender: TObject);
    procedure ChTodasSubEventosClick(Sender: TObject);
    procedure ChConsultarMonitEventosClick(Sender: TObject);
    procedure ChEditarMonitEventosClick(Sender: TObject);
    procedure ChDeletarMonitEventosClick(Sender: TObject);
    procedure ChInserirMonitEventosClick(Sender: TObject);
    procedure ChRelatorioMonitEventosClick(Sender: TObject);
    procedure ChTodasMonitEventosClick(Sender: TObject);
  private
    procedure ValidaPermissao(chConsulta, chEditar, chdeletar, chInserir,
      chrelatorio, chTodas: TCheckBox; sNomeCampo: string);
    procedure ValidaPermissaoOcorrencia(chConsulta, chEditar, chdeletar, chInserir,
      chrelatorio, chdespacho, chTodas: TCheckBox; sNomeCampo: string);
    procedure ValidaPermissaoTodas(chConsulta, chEditar, chDeletar,
      chInserir, chrelatorio, chTodas: TCheckBox);
    procedure ValidaPermissaoTodasOcorrencia(chConsulta, chEditar, chDeletar,
      chInserir, chrelatorio, chdespacho, chTodas: TCheckBox);
    procedure LimpaPermissaoTodas();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroFuncionario: TFrmCadastroFuncionario;

implementation

uses DmPrincipal, Lib, PostoTrabalho, CadastroCurso;

{$R *.dfm}

procedure TFrmCadastroFuncionario.FormCreate(Sender: TObject);
begin
  inherited;
  //DBRadioGroupVISUALIZA_OUTRAS_UP.Visible := (VISUALIZA_OUTRAS_UP = 'S');

  DM.DSFUNCAOFUNCIONARIO.DataSet.Close;
  DM.DSFUNCAOFUNCIONARIO.DataSet.OPEN;

  DM.DsPostoTrabalho.DataSet.Close;
  DM.DsPostoTrabalho.DataSet.Open;

  DsPerfilUsuario.DataSet.Close;
  DsPerfilUsuario.DataSet.Open;

  {  if not DirectoryExists(GLOBAL_PATCH_RELATORIO) then
    begin
      ShowMessage('N�o existe a pasta: ' + GLOBAL_PATCH_RELATORIO);
      DirectoryListBox1.Directory := GLOBAL_PATCH_SISTEMA;
      DirectoryListBoxTeste.Directory := GLOBAL_PATCH_SISTEMA;
    end
    else
    begin
      DirectoryListBoxTeste.Directory := GLOBAL_PATCH_RELATORIO;
      DirectoryListBox1.Directory := GLOBAL_PATCH_RELATORIO;
    end;    }

  {Verifica as permiss�es que o usu�rio possui para esta tela
  e habilita ou n�o os respectivos bot�es.
  Estas verifica��es devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permiss�o referente � tela nas verifica��es abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_FUNCIONARIO)
    and not ContemValor('E', PERMISSAO_FUNCIONARIO)
    and not ContemValor('D', PERMISSAO_FUNCIONARIO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FUNCIONARIO)
    and not ContemValor('E', PERMISSAO_FUNCIONARIO)
    and not ContemValor('D', PERMISSAO_FUNCIONARIO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FUNCIONARIO)
    and ContemValor('E', PERMISSAO_FUNCIONARIO)
    and not ContemValor('D', PERMISSAO_FUNCIONARIO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FUNCIONARIO)
    and ContemValor('E', PERMISSAO_FUNCIONARIO)
    and ContemValor('D', PERMISSAO_FUNCIONARIO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FUNCIONARIO)
    and not ContemValor('E', PERMISSAO_FUNCIONARIO)
    and ContemValor('D', PERMISSAO_FUNCIONARIO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FUNCIONARIO)
    and not ContemValor('E', PERMISSAO_FUNCIONARIO)
    and ContemValor('D', PERMISSAO_FUNCIONARIO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FUNCIONARIO)
    and ContemValor('E', PERMISSAO_FUNCIONARIO)
    and not ContemValor('D', PERMISSAO_FUNCIONARIO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroFuncionario.ValidaPermissao(chConsulta, chEditar, chDeletar, chInserir, chrelatorio, chTodas: TCheckBox; sNomeCampo:
  string);
var
  permissao: string;
begin
  if chConsulta.Checked and
    chEditar.Checked and
    chDeletar.Checked and
    chInserir.Checked and
    chrelatorio.Checked then
    chTodas.Checked := True
  else if chTodas.Checked then
    chTodas.Checked := False;

  if chEditar.Checked or chDeletar.Checked or chInserir.Checked then
    chConsulta.Checked := True;

  permissao := '';

  if chConsulta.Checked then
    permissao := permissao + 'C';
  if chEditar.Checked then
    permissao := permissao + 'E';
  if chdeletar.Checked then
    permissao := permissao + 'D';
  if chInserir.Checked then
    permissao := permissao + 'I';
  if chrelatorio.Checked then
    permissao := permissao + 'R';

  if dsCadastro.DataSet.State in [dsEdit, dsInsert] then
    dsCadastro.DataSet.FieldByName(sNomeCampo).AsString := permissao;

end;

procedure TFrmCadastroFuncionario.LimpaPermissaoTodas();
begin

  DBrgEntradaVisitante.ItemIndex := 1;
  DBRadioGroupVISUALIZA_OUTRAS_UP.ItemIndex := 1;
  DBRadioGroupAutorizadoWeb.ItemIndex := 1;
  DbrDefinePerfilUsuario.ItemIndex := 1;
  DbrConcedePermissaoIndividual.ItemIndex := 1;

  chtodascadastro.Checked := False;
  cheditarcadastro.Checked := False;
  chdeletarcadastro.Checked := False;
  chinserircadastro.Checked := False;
  chrelatoriocadastro.Checked := False;
  chconsultarcadastro.Checked := False;

  CHTodasConfere.Checked := False;
  CHEditarConfere.Checked := False;
  CHdeletarconfere.Checked := False;
  CHInserirConfere.Checked := False;
  chrelatorioconfere.Checked := False;
  CHConsultarConfere.Checked := False;

  chTodasVisitante.Checked := False;
  chEditarVisitante.Checked := False;
  chdeletarVisitante.Checked := False;
  chInserirVisitante.Checked := False;
  chrelatoriovisitante.Checked := False;
  chConsultarVisitante.Checked := False;

  CHTodasOcorrencia.Checked := False;
  CHEditaOcorrencia.Checked := False;
  CHdeletaOcorrencia.Checked := False;
  CHInsereOcorrencia.Checked := False;
  chrelatorioOcorrencia.Checked := False;
  chdespachoOcorrencia.Checked := False;
  CHConsultaOcorrencia.Checked := False;

  chtodastrabalho.Checked := False;
  cheditartrabalho.Checked := False;
  chdeletartrabalho.Checked := False;
  chinserirtrabalho.Checked := False;
  chrelatoriotrabalho.Checked := False;
  chConsultartrabalho.Checked := False;

  chtodaseducacao.Checked := False;
  cheditareducacao.Checked := False;
  chdeletareducacao.Checked := False;
  chinserireducacao.Checked := False;
  chrelatorioeducacao.Checked := False;
  chconsultareducacao.Checked := False;

  chtodasPSICOSSOCIAL.Checked := False;
  cheditarPSICOSSOCIAL.Checked := False;
  chdeletarPSICOSSOCIAL.Checked := False;
  chinserirPSICOSSOCIAL.Checked := False;
  chrelatoriopsicossocial.Checked := False;
  chconsultarPSICOSSOCIAL.Checked := False;

  chtodasenfermagem.Checked := False;
  cheditarenfermagem.Checked := False;
  chdeletarenfermagem.Checked := False;
  chinserirenfermagem.Checked := False;
  chrelatorioenfermagem.Checked := False;
  chconsultarenfermagem.Checked := False;

  chtodasfarmacia.Checked := False;
  cheditarfarmacia.Checked := False;
  chdeletarfarmacia.Checked := False;
  chinserirfarmacia.Checked := False;
  chrelatoriofaramcia.Checked := False;
  chconsultarfarmacia.Checked := False;

  chtodaspsiquiatria.Checked := False;
  cheditarpsiquiatria.Checked := False;
  chdeletarpsiquiatria.Checked := False;
  chinserirpsiquiatria.Checked := False;
  chrelatoriopsiquiatria.Checked := False;
  chconsultarpsiquiatria.Checked := False;

  chtodasservicosocial.Checked := False;
  cheditarservicosocial.Checked := False;
  chdeletarservicosocial.Checked := False;
  chinserirservicosocial.Checked := False;
  chrelatorioservicosocial.Checked := False;
  chconsultarservicosocial.Checked := False;

  chtodasterapiaocupacional.Checked := False;
  cheditarterapiaocupacional.Checked := False;
  chdeletarterapiaocupacional.Checked := False;
  chinserirterapiaocupacional.Checked := False;
  chrelatorioterapiaocupacional.Checked := False;
  chconsultarterapiaocupacional.Checked := False;

  chtodasJURIDICA.Checked := False;
  cheditarJURIDICA.Checked := False;
  chdeletarJURIDICA.Checked := False;
  chinserirJURIDICA.Checked := False;
  chrelatoriojuridico.Checked := False;
  chconsultarJURIDICA.Checked := False;

  chtodasDISCIPLINA.Checked := False;
  cheditarDISCIPLINA.Checked := False;
  chdeletarDISCIPLINA.Checked := False;
  chinserirDISCIPLINA.Checked := False;
  chrelatoriodisciplina.Checked := False;
  chconsultarDISCIPLINA.Checked := False;

  chtodasclinicamedica.Checked := False;
  cheditarclinicamedica.Checked := False;
  chdeletarclinicamedica.Checked := False;
  chinserirclinicamedica.Checked := False;
  chrelatorioclinicamedica.Checked := False;
  chconsultarclinicamedica.Checked := False;

  chtodasodontologia.Checked := False;
  cheditarodontologia.Checked := False;
  chdeletarodontologia.Checked := False;
  chinserirodontologia.Checked := False;
  chrelatorioodontologia.Checked := False;
  chconsultarodontologia.Checked := False;

  chtodaspedagogia.Checked := False;
  cheditarpedagogia.Checked := False;
  chdeletarpedagogia.Checked := False;
  chinserirpedagogia.Checked := False;
  chrelatoriopedagogia.Checked := False;
  chconsultarpedagogia.Checked := False;

  chtodaspsicologia.Checked := False;
  cheditarpsicologia.Checked := False;
  chdeletarpsicologia.Checked := False;
  chinserirpsicologia.Checked := False;
  chrelatoriopsicologia.Checked := False;
  chconsultarpsicologia.Checked := False;

  chtodassaude.Checked := False;
  cheditarsaude.Checked := False;
  chdeletarsaude.Checked := False;
  chinserirsaude.Checked := False;
  chrelatoriosaude.Checked := False;
  chconsultarsaude.Checked := False;

  chTodasConsDisciplinar.Checked := False;
  chEditarConsDisciplinar.Checked := False;
  chDeletarConsDisciplinar.Checked := False;
  chInserirConsDisciplinar.Checked := False;
  chRelatorioConsDisciplinar.Checked := False;
  chConsultarConsDisciplinar.Checked := False;

  chTodasTransferenciaInterno.Checked := False;
  chEditarTransferenciaInterno.Checked := False;
  chDeletarTransferenciaInterno.Checked := False;
  chInserirTransferenciaInterno.Checked := False;
  chRelatorioTransferenciaInterno.Checked := False;
  chConsultarTransferenciaInterno.Checked := False;

  ChTodasMudancaCela.Checked := False;
  ChEditarMudancaCela.Checked := False;
  ChDeletarMudancaCela.Checked := False;
  ChInserirMudancaCela.Checked := False;
  ChRelatorioMudancaCela.Checked := False;
  ChConsultarMudancaCela.Checked := False;

  ChTodasSaidao.Checked := False;
  ChEditarSaidao.Checked := False;
  ChDeletarSaidao.Checked := False;
  ChInserirSaidao.Checked := False;
  ChRelatorioSaidao.Checked := False;
  ChConsultarSaidao.Checked := False;

  ChTodasSaidaoCadastro.Checked := False;
  ChEditarSaidaoCadastro.Checked := False;
  ChDeletarSaidaoCadastro.Checked := False;
  ChInserirSaidaoCadastro.Checked := False;
  ChRelatorioSaidaoCadastro.Checked := False;
  ChConsultarSaidaoCadastro.Checked := False;

  ChTodasCirculacaoInterno.Checked := False;
  ChEditarCirculacaoInterno.Checked := False;
  ChDeletarCirculacaoInterno.Checked := False;
  ChInserirCirculacaoInterno.Checked := False;
  ChRelatorioCirculacaoInterno.Checked := False;
  ChConsultarCirculacaoInterno.Checked := False;

  ChTodasMovimentoSemiAberto.Checked := False;
  ChEditarMovimentoSemiAberto.Checked := False;
  ChDeletarMovimentoSemiAberto.Checked := False;
  ChInserirMovimentoSemiAberto.Checked := False;
  ChRelatorioMovimentoSemiAberto.Checked := False;
  ChConsultarMovimentoSemiAberto.Checked := False;

  chtodasinteligencia.Checked := False;
  cheditarinteligencia.Checked := False;
  chdeletarinteligencia.Checked := False;
  chinseririnteligencia.Checked := False;
  chrelatoriointeligencia.Checked := False;
  chconsultarinteligencia.Checked := False;

  chtodasarmas.Checked := False;
  cheditararmas.Checked := False;
  chdeletararmas.Checked := False;
  chinserirarmas.Checked := False;
  chrelatorioarmas.Checked := False;
  chconsultararmas.Checked := False;

  chtodasmonitoramento.Checked := False;
  cheditarmonitoramento.Checked := False;
  chdeletarmonitoramento.Checked := False;
  chinserirmonitoramento.Checked := False;
  chrelatoriomonitoramento.Checked := False;
  chconsultarmonitoramento.Checked := False;

  ChTodasFuncionario.Checked := False;
  ChEditarFuncionario.Checked := False;
  ChDeletarFuncionario.Checked := False;
  ChInserirFuncionario.Checked := False;
  ChRelatorioFuncionario.Checked := False;
  ChConsultarFuncionario.Checked := False;

  ChTodasFuncaoFuncionario.Checked := False;
  ChEditarFuncaoFuncionario.Checked := False;
  ChDeletarFuncaoFuncionario.Checked := False;
  ChInserirFuncaoFuncionario.Checked := False;
  ChRelatorioFuncaoFuncionario.Checked := False;
  ChConsultarFuncaoFuncionario.Checked := False;

  ChTodasUnidadePenal.Checked := False;
  ChEditarUnidadePenal.Checked := False;
  ChDeletarUnidadePenal.Checked := False;
  ChInserirUnidadePenal.Checked := False;
  ChRelatorioUnidadePenal.Checked := False;
  ChConsultarUnidadePenal.Checked := False;

  ChTodasHorarioFuncionario.Checked := False;
  ChEditarHorarioFuncionario.Checked := False;
  ChDeletarHorarioFuncionario.Checked := False;
  ChInserirHorarioFuncionario.Checked := False;
  ChRelatorioHorarioFuncionario.Checked := False;
  ChConsultarHorarioFuncionario.Checked := False;

  ChTodasPadraoSistema.Checked := False;
  ChEditarPadraoSistema.Checked := False;
  ChDeletarPadraoSistema.Checked := False;
  ChInserirPadraoSistema.Checked := False;
  ChRelatorioPadraoSistema.Checked := False;
  ChConsultarPadraoSistema.Checked := False;

  ChTodasEquipe.Checked := False;
  ChEditarEquipe.Checked := False;
  ChDeletarEquipe.Checked := False;
  ChInserirEquipe.Checked := False;
  ChRelatorioEquipe.Checked := False;
  ChConsultarEquipe.Checked := False;

  ChTodasPostoLocalTrabalho.Checked := False;
  ChEditarPostoLocalTrabalho.Checked := False;
  ChDeletarPostoLocalTrabalho.Checked := False;
  ChInserirPostoLocalTrabalho.Checked := False;
  ChRelatorioPostoLocalTrabalho.Checked := False;
  ChConsultarPostoLocalTrabalho.Checked := False;

  ChTodasAgenteEquipe.Checked := False;
  ChEditarAgenteEquipe.Checked := False;
  ChDeletarAgenteEquipe.Checked := False;
  ChInserirAgenteEquipe.Checked := False;
  ChRelatorioAgenteEquipe.Checked := False;
  ChConsultarAgenteEquipe.Checked := False;

  ChTodasRegraVisitacao.Checked := False;
  ChEditarRegraVisitacao.Checked := False;
  ChDeletarRegraVisitacao.Checked := False;
  ChInserirRegraVisitacao.Checked := False;
  ChRelatorioRegraVisitacao.Checked := False;
  ChConsultarRegraVisitacao.Checked := False;

  ChTodasPerfilUsuario.Checked := False;
  ChEditarPerfilUsuario.Checked := False;
  ChDeletarPerfilUsuario.Checked := False;
  ChInserirPerfilUsuario.Checked := False;
  ChRelatorioPerfilUsuario.Checked := False;
  ChConsultarPerfilUsuario.Checked := False;

  ChTodasAdvogado.Checked := False;
  ChEditarAdvogado.Checked := False;
  ChDeletarAdvogado.Checked := False;
  ChInserirAdvogado.Checked := False;
  ChRelatorioAdvogado.Checked := False;
  ChConsultarAdvogado.Checked := False;

  ChTodasVisitanteTrafico.Checked := False;
  ChEditarVisitanteTrafico.Checked := False;
  ChDeletarVisitanteTrafico.Checked := False;
  ChInserirVisitanteTrafico.Checked := False;
  ChRelatorioVisitanteTrafico.Checked := False;
  ChConsultarVisitanteTrafico.Checked := False;

  ChTodasFaccao.Checked := False;
  ChEditarFaccao.Checked := False;
  ChDeletarFaccao.Checked := False;
  ChInserirFaccao.Checked := False;
  ChRelatorioFaccao.Checked := False;
  ChConsultarFaccao.Checked := False;

  ChTodasCTC.Checked := False;
  ChEditarCTC.Checked := False;
  ChDeletarCTC.Checked := False;
  ChInserirCTC.Checked := False;
  ChRelatorioCTC.Checked := False;
  ChConsultarCTC.Checked := False;

  ChTodasCorrespondencia.Checked := False;
  ChEditarCorrespondencia.Checked := False;
  ChDeletarCorrespondencia.Checked := False;
  ChInserirCorrespondencia.Checked := False;
  ChRelatorioCorrespondencia.Checked := False;
  ChConsultarCorrespondencia.Checked := False;

  ChTodasAgendaAtendimento.Checked := False;
  ChEditarAgendaAtendimento.Checked := False;
  ChDeletarAgendaAtendimento.Checked := False;
  ChInserirAgendaAtendimento.Checked := False;
  ChRelatorioAgendaAtendimento.Checked := False;
  ChConsultarAgendaAtendimento.Checked := False;

  ChTodasLivroRevista.Checked := False;
  ChEditarLivroRevista.Checked := False;
  ChDeletarLivroRevista.Checked := False;
  ChInserirLivroRevista.Checked := False;
  ChRelatorioLivroRevista.Checked := False;
  ChConsultarLivroRevista.Checked := False;

  ChTodasPavilhao.Checked := False;
  ChEditarPavilhao.Checked := False;
  ChDeletarPavilhao.Checked := False;
  ChInserirPavilhao.Checked := False;
  ChRelatorioPavilhao.Checked := False;
  ChConsultarPavilhao.Checked := False;

  ChTodasGaleria.Checked := False;
  ChEditarGaleria.Checked := False;
  ChDeletarGaleria.Checked := False;
  ChInserirGaleria.Checked := False;
  ChRelatorioGaleria.Checked := False;
  ChConsultarGaleria.Checked := False;

  ChTodasSolario.Checked := False;
  ChEditarSolario.Checked := False;
  ChDeletarSolario.Checked := False;
  ChInserirSolario.Checked := False;
  ChRelatorioSolario.Checked := False;
  ChConsultarSolario.Checked := False;

  ChTodasCela.Checked := False;
  ChEditarCela.Checked := False;
  ChDeletarCela.Checked := False;
  ChInserirCela.Checked := False;
  ChRelatorioCela.Checked := False;
  ChConsultarCela.Checked := False;

  ChTodasCondicaoInterno.Checked := False;
  ChEditarCondicaoInterno.Checked := False;
  ChDeletarCondicaoInterno.Checked := False;
  ChInserirCondicaoInterno.Checked := False;
  ChRelatorioCondicaoInterno.Checked := False;
  ChConsultarCondicaoInterno.Checked := False;

  ChTodasCidade.Checked := False;
  ChEditarCidade.Checked := False;
  ChDeletarCidade.Checked := False;
  ChInserirCidade.Checked := False;
  ChRelatorioCidade.Checked := False;
  ChConsultarCidade.Checked := False;

  ChTodasRaca.Checked := False;
  ChEditarRaca.Checked := False;
  ChDeletarRaca.Checked := False;
  ChInserirRaca.Checked := False;
  ChRelatorioRaca.Checked := False;
  ChConsultarRaca.Checked := False;

  ChTodasEscolaridade.Checked := False;
  ChEditarEscolaridade.Checked := False;
  ChDeletarEscolaridade.Checked := False;
  ChInserirEscolaridade.Checked := False;
  ChRelatorioEscolaridade.Checked := False;
  ChConsultarEscolaridade.Checked := False;

  ChTodasNacionalidade.Checked := False;
  ChEditarNacionalidade.Checked := False;
  ChDeletarNacionalidade.Checked := False;
  ChInserirNacionalidade.Checked := False;
  ChRelatorioNacionalidade.Checked := False;
  ChConsultarNacionalidade.Checked := False;

  ChTodasProcedencia.Checked := False;
  ChEditarProcedencia.Checked := False;
  ChDeletarProcedencia.Checked := False;
  ChInserirProcedencia.Checked := False;
  ChRelatorioProcedencia.Checked := False;
  ChConsultarProcedencia.Checked := False;

  ChTodasDestino.Checked := False;
  ChEditarDestino.Checked := False;
  ChDeletarDestino.Checked := False;
  ChInserirDestino.Checked := False;
  ChRelatorioDestino.Checked := False;
  ChConsultarDestino.Checked := False;

  ChTodasFornecedor.Checked := False;
  ChEditarFornecedor.Checked := False;
  ChDeletarFornecedor.Checked := False;
  ChInserirFornecedor.Checked := False;
  ChRelatorioFornecedor.Checked := False;
  ChConsultarFornecedor.Checked := False;

  ChTodasProfissao.Checked := False;
  ChEditarProfissao.Checked := False;
  ChDeletarProfissao.Checked := False;
  ChInserirProfissao.Checked := False;
  ChRelatorioProfissao.Checked := False;
  ChConsultarProfissao.Checked := False;

  ChTodasFaltaDisciplinar.Checked := False;
  ChEditarFaltaDisciplinar.Checked := False;
  ChDeletarFaltaDisciplinar.Checked := False;
  ChInserirFaltaDisciplinar.Checked := False;
  ChRelatorioFaltaDisciplinar.Checked := False;
  ChConsultarFaltaDisciplinar.Checked := False;

  ChTodasSerieFaseEstudo.Checked := False;
  ChEditarSerieFaseEstudo.Checked := False;
  ChDeletarSerieFaseEstudo.Checked := False;
  ChInserirSerieFaseEstudo.Checked := False;
  ChRelatorioSerieFaseEstudo.Checked := False;
  ChConsultarSerieFaseEstudo.Checked := False;

  ChTodasProcessoCondenacao.Checked := False;
  ChEditarProcessoCondenacao.Checked := False;
  ChDeletarProcessoCondenacao.Checked := False;
  ChInserirProcessoCondenacao.Checked := False;
  ChRelatorioProcessoCondenacao.Checked := False;
  ChConsultarProcessoCondenacao.Checked := False;

  ChTodasDetracao.Checked := False;
  ChEditarDetracao.Checked := False;
  ChDeletarDetracao.Checked := False;
  ChInserirDetracao.Checked := False;
  ChRelatorioDetracao.Checked := False;
  ChConsultarDetracao.Checked := False;

  ChTodasInterrupcao.Checked := False;
  ChEditarInterrupcao.Checked := False;
  ChDeletarInterrupcao.Checked := False;
  ChInserirInterrupcao.Checked := False;
  ChRelatorioInterrupcao.Checked := False;
  ChConsultarInterrupcao.Checked := False;

  ChTodasRemicao.Checked := False;
  ChEditarRemicao.Checked := False;
  ChDeletarRemicao.Checked := False;
  ChInserirRemicao.Checked := False;
  ChRelatorioRemicao.Checked := False;
  ChConsultarRemicao.Checked := False;

  ChTodasArtigoPenal.Checked := False;
  ChEditarArtigoPenal.Checked := False;
  ChDeletarArtigoPenal.Checked := False;
  ChInserirArtigoPenal.Checked := False;
  ChRelatorioArtigoPenal.Checked := False;
  ChConsultarArtigoPenal.Checked := False;

  ChTodasVaraExecucao.Checked := False;
  ChEditarVaraExecucao.Checked := False;
  ChDeletarVaraExecucao.Checked := False;
  ChInserirVaraExecucao.Checked := False;
  ChRelatorioVaraExecucao.Checked := False;
  ChConsultarVaraExecucao.Checked := False;

  ChTodasRemedio.Checked := False;
  ChEditarRemedio.Checked := False;
  ChDeletarRemedio.Checked := False;
  ChInserirRemedio.Checked := False;
  ChRelatorioRemedio.Checked := False;
  ChConsultarRemedio.Checked := False;

  ChTodasFuncaoInterno.Checked := False;
  ChEditarFuncaoInterno.Checked := False;
  ChDeletarFuncaoInterno.Checked := False;
  ChInserirFuncaoInterno.Checked := False;
  ChRelatorioFuncaoInterno.Checked := False;
  ChConsultarFuncaoInterno.Checked := False;

  ChTodasCalculoTrabalho.Checked := False;
  ChEditarCalculoTrabalho.Checked := False;
  ChDeletarCalculoTrabalho.Checked := False;
  ChInserirCalculoTrabalho.Checked := False;
  ChRelatorioCalculoTrabalho.Checked := False;
  ChConsultarCalculoTrabalho.Checked := False;

  ChTodasRemicaoTrabalho.Checked := False;
  ChEditarRemicaoTrabalho.Checked := False;
  ChDeletarRemicaoTrabalho.Checked := False;
  ChInserirRemicaoTrabalho.Checked := False;
  ChRelatorioRemicaoTrabalho.Checked := False;
  ChConsultarRemicaoTrabalho.Checked := False;

  ChTodasRoupas.Checked := False;
  ChEditarRoupas.Checked := False;
  ChDeletarRoupas.Checked := False;
  ChInserirRoupas.Checked := False;
  ChRelatorioRoupas.Checked := False;
  ChConsultarRoupas.Checked := False;

  ChTodasGrauParentesco.Checked := False;
  ChEditarGrauParentesco.Checked := False;
  ChDeletarGrauParentesco.Checked := False;
  ChInserirGrauParentesco.Checked := False;
  ChRelatorioGrauParentesco.Checked := False;
  ChConsultarGrauParentesco.Checked := False;

  ChTodasTipoContato.Checked := False;
  ChEditarTipoContato.Checked := False;
  ChDeletarTipoContato.Checked := False;
  ChInserirTipoContato.Checked := False;
  ChRelatorioTipoContato.Checked := False;
  ChConsultarTipoContato.Checked := False;

  ChTodasAssunto.Checked := False;
  ChEditarAssunto.Checked := False;
  ChDeletarAssunto.Checked := False;
  ChInserirAssunto.Checked := False;
  ChRelatorioAssunto.Checked := False;
  ChConsultarAssunto.Checked := False;

  ChTodasSituacao.Checked := False;
  ChEditarSituacao.Checked := False;
  ChDeletarSituacao.Checked := False;
  ChInserirSituacao.Checked := False;
  ChRelatorioSituacao.Checked := False;
  ChConsultarSituacao.Checked := False;

  ChTodasSetorTrabalhoCad.Checked := False;
  ChEditarSetorTrabalhoCad.Checked := False;
  ChDeletarSetorTrabalhoCad.Checked := False;
  ChInserirSetorTrabalhoCad.Checked := False;
  ChRelatorioSetorTrabalhoCad.Checked := False;
  ChConsultarSetorTrabalhoCad.Checked := False;

  ChTodasEventos.Checked := False;
  ChEditarEventos.Checked := False;
  ChDeletarEventos.Checked := False;
  ChInserirEventos.Checked := False;
  ChRelatorioEventos.Checked := False;
  ChConsultarEventos.Checked := False;

  ChTodasSubEventos.Checked := False;
  ChEditarSubEventos.Checked := False;
  ChDeletarSubEventos.Checked := False;
  ChInserirSubEventos.Checked := False;
  ChRelatorioSubEventos.Checked := False;
  ChConsultarSubEventos.Checked := False;

  ChTodasMonitEventos.Checked := False;
  ChEditarMonitEventos.Checked := False;
  ChDeletarMonitEventos.Checked := False;
  ChInserirMonitEventos.Checked := False;
  ChRelatorioMonitEventos.Checked := False;
  ChConsultarMonitEventos.Checked := False;

end;

procedure TFrmCadastroFuncionario.ValidaPermissaoOcorrencia(chConsulta, chEditar, chDeletar, chInserir, chrelatorio, chdespacho, chTodas: TCheckBox; sNomeCampo:
  string);
var
  permissao: string;
begin
  if chConsulta.Checked and
    chEditar.Checked and
    chDeletar.Checked and
    chInserir.Checked and
    chrelatorio.Checked and
    chdespacho.Checked then
    chTodas.Checked := True
  else if chTodas.Checked then
    chTodas.Checked := False;

  if chEditar.Checked or chDeletar.Checked or chInserir.Checked or chdespacho.Checked then
//    chConsulta.Checked := True;
    chConsultaOcorrencia.Checked := True;

  permissao := '';

  if chConsulta.Checked then
    permissao := permissao + 'C';
  if chEditar.Checked then
    permissao := permissao + 'E';
  if chdeletar.Checked then
    permissao := permissao + 'D';
  if chInserir.Checked then
    permissao := permissao + 'I';
  if chrelatorio.Checked then
    permissao := permissao + 'R';
  if chdespacho.Checked then
    permissao := permissao + 'P';

  if dsCadastro.DataSet.State in [dsEdit, dsInsert] then
    dsCadastro.DataSet.FieldByName(sNomeCampo).AsString := permissao;

end;

procedure TFrmCadastroFuncionario.ValidaPermissaoTodas(chConsulta, chEditar, chDeletar, chInserir, chrelatorio, chTodas: TCheckBox);
var
  permissao: string;
begin

  if chTodas.Checked then
  begin
    (chConsulta.Checked := true);
    (chEditar.Checked := true);
    (chDeletar.Checked := True);
    (chInserir.Checked := True);
    (chrelatorio.Checked := True);
  end
  else if chConsulta.Checked and
    chEditar.Checked and
    chDeletar.Checked and
    chInserir.Checked and
    chrelatorio.Checked then
  begin
    (chEditar.Checked := false);
    (chDeletar.Checked := false);
    (chInserir.Checked := false);
    (chrelatorio.Checked := false);
    (chConsulta.Checked := false);
  end;

end;

procedure TFrmCadastroFuncionario.ValidaPermissaoTodasOcorrencia(chConsulta, chEditar, chDeletar, chInserir, chrelatorio, chdespacho, chTodas: TCheckBox);
var
  permissao: string;
begin

  if chTodas.Checked then
  begin
    (chConsulta.Checked := true);
    (chEditar.Checked := true);
    (chDeletar.Checked := True);
    (chInserir.Checked := True);
    (chrelatorio.Checked := True);
    (chdespacho.Checked := True);
  end
  else if chConsulta.Checked and
    chEditar.Checked and
    chDeletar.Checked and
    chInserir.Checked and
    chrelatorio.Checked and
    chdespacho.Checked then
  begin
    (chEditar.Checked := false);
    (chDeletar.Checked := false);
    (chInserir.Checked := false);
    (chrelatorio.Checked := false);
    (chDespacho.Checked := false);
    (chConsulta.Checked := false);
  end;

end;

procedure TFrmCadastroFuncionario.CHConsultarConfereClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(CHConsultarConfere, CHEditarConfere, CHdeletarconfere, CHInserirConfere, chrelatorioconfere, CHTodasConfere, 'PERMISSAO_CONFERE');
end;

procedure TFrmCadastroFuncionario.CHEditarConfereClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(CHConsultarConfere, CHEditarConfere, CHdeletarconfere, CHInserirConfere, chrelatorioconfere, CHTodasConfere, 'PERMISSAO_CONFERE');
end;

procedure TFrmCadastroFuncionario.CHdeletarconfereClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(CHConsultarConfere, CHEditarConfere, CHdeletarconfere, CHInserirConfere, chrelatorioconfere, CHTodasConfere, 'PERMISSAO_CONFERE');
end;

procedure TFrmCadastroFuncionario.CHInserirConfereClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(CHConsultarConfere, CHEditarConfere, CHdeletarconfere, CHInserirConfere, chrelatorioconfere, CHTodasConfere, 'PERMISSAO_CONFERE');
end;

procedure TFrmCadastroFuncionario.CHTodasConfereClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(CHConsultarConfere, CHEditarConfere, CHdeletarconfere, CHInserirConfere, chrelatorioconfere, CHTodasConfere);
end;

procedure TFrmCadastroFuncionario.chConsultarVisitanteClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarVisitante, chEditarVisitante, CHdeletarvisitante, chInserirVisitante, chrelatoriovisitante, chTodasVisitante,
    'PERMISSAO_VISITANTE');
end;

procedure TFrmCadastroFuncionario.chEditarVisitanteClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarVisitante, chEditarVisitante, CHdeletarvisitante, chInserirVisitante, chrelatoriovisitante, chTodasVisitante,
    'PERMISSAO_VISITANTE');
end;

procedure TFrmCadastroFuncionario.chdeletarVisitanteClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarVisitante, chEditarVisitante, CHdeletarvisitante, chInserirVisitante, chrelatoriovisitante, chTodasVisitante,
    'PERMISSAO_VISITANTE');
end;

procedure TFrmCadastroFuncionario.chInserirVisitanteClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarVisitante, chEditarVisitante, CHdeletarvisitante, chInserirVisitante, chrelatoriovisitante, chTodasVisitante,
    'PERMISSAO_VISITANTE');
end;

procedure TFrmCadastroFuncionario.chTodasVisitanteClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chConsultarVisitante, chEditarVisitante, chdeletarVisitante, chInserirVisitante, chrelatoriovisitante, chTodasVisitante);
end;

procedure TFrmCadastroFuncionario.chtodastrabalhoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chConsultartrabalho, cheditartrabalho, chdeletartrabalho, chinserirtrabalho, chrelatoriotrabalho, chtodastrabalho);
end;

procedure TFrmCadastroFuncionario.chConsultartrabalhoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultartrabalho, cheditartrabalho, chdeletartrabalho, chinserirtrabalho, chrelatoriotrabalho, chtodastrabalho,
    'PERMISSAO_SETORTRABALHO');
end;

procedure TFrmCadastroFuncionario.cheditartrabalhoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultartrabalho, cheditartrabalho, chdeletartrabalho, chinserirtrabalho, chrelatoriotrabalho, chtodastrabalho,
    'PERMISSAO_SETORTRABALHO');
end;

procedure TFrmCadastroFuncionario.chdeletartrabalhoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultartrabalho, cheditartrabalho, chdeletartrabalho, chinserirtrabalho, chrelatoriotrabalho, chtodastrabalho,
    'PERMISSAO_SETORTRABALHO');
end;

procedure TFrmCadastroFuncionario.chinserirtrabalhoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultartrabalho, cheditartrabalho, chdeletartrabalho, chinserirtrabalho, chrelatoriotrabalho, chtodastrabalho,
    'PERMISSAO_SETORTRABALHO');
end;

procedure TFrmCadastroFuncionario.chconsultareducacaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultareducacao, cheditareducacao, chdeletareducacao, chinserireducacao, chrelatorioeducacao, chtodaseducacao,
    'PERMISSAO_SETOREDUCACAO');
end;

procedure TFrmCadastroFuncionario.cheditareducacaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultareducacao, cheditareducacao, chdeletareducacao, chinserireducacao, chrelatorioeducacao, chtodaseducacao,
    'PERMISSAO_SETOREDUCACAO');
end;

procedure TFrmCadastroFuncionario.chdeletareducacaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultareducacao, cheditareducacao, chdeletareducacao, chinserireducacao, chrelatorioeducacao, chtodaseducacao,
    'PERMISSAO_SETOREDUCACAO');
end;

procedure TFrmCadastroFuncionario.chinserireducacaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultareducacao, cheditareducacao, chdeletareducacao, chinserireducacao, chrelatorioeducacao, chtodaseducacao,
    'PERMISSAO_SETOREDUCACAO');
end;

procedure TFrmCadastroFuncionario.chtodaseducacaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultareducacao, cheditareducacao, chdeletareducacao, chinserireducacao, chrelatorioeducacao, chtodaseducacao);
end;

function ContemValor(sCompare, sString: ShortString): Boolean;
var
  P: Byte;
begin
  try
    Result := False;
    P := Pos(sCompare, sString);
    if P > 0 then
      Result := True;
  except
  end;
end;

procedure TFrmCadastroFuncionario.DsCadastroDataChange(Sender: TObject;
  Field: TField);
var
  CONFERE, VISITANTE, TRABALHO, CADASTRO, EDUCACAO, PSICOSSOCIAL, JURIDICA, DISCIPLINA, INTELIGENCIA: string;
  ENFERMAGEM, FARMACIA, CLINICAMEDICA, PSICOLOGIA, PSIQUIATRIA, SAUDE, TERAPIAOCUPACIONAL, ODONTOLOGIA: string;
  PEDAGOGIA, SERVICOSOCIAL, ARMAS, MONITORAMENTO, OCORRENCIA, CONSELHODISCIPLINAR, TRANSFERENCIAINTERNO: string;
  MUDANCACELA, SAIDAO, SAIDAO_CADASTRO, CIRCULACAOINTERNO, MOVIMENTOSEMIABERTO: string;
  FUNCIONARIO, FUNCAOFUNCIONARIO, UNIDADEPENAL, HORARIOFUNCIONARIO: string;
  PADRAOSISTEMA, EQUIPE, LOCALPOSTOTRABALHO, AGENTEPOREQUIPE, REGRAVISITACAO: string;

  PERFILUSUARIO, ADVOGADO, VISITANTETRAFICO, FACCAO, CTC, CORRESPONDENCIA: string;
  AGENDAATENDIMENTO, LIVROREVISTA, PAVILHAO, GALERIA, SOLARIO, CELA: string;
  CONDICAOINTERNO, CIDADE, RACA, ESCOLARIDADE, NACIONALIDADE, PROCEDENCIA: string;
  DESTINO, FORNECEDOR, PROFISSAO, FALTADISCIPLINAR, SERIEFASEESTUDO: string;
  PROCESSOCONDENACAO, DETRACAO, INTERRUPCAO, REMICAO, ARTIGOPENAL: string;
  VARAEXECUCAO, REMEDIO, FUNCAOINTERNO, CALCULOTRABALHO, REMICAOTRABALHO: string;
  ROUPAS, GRAUPARENTESCO, TIPOCONTATO, ASSUNTO, SITUACAO, SETORTRABALHOCAD: string;

  EVENTOS, SUBEVENTOS, MONITORAMENTOEVENTOS : string;
begin

  if DsCadastro.DataSet.State in [dsBrowse] then
  begin

    DBLookupPerfilUsuarioCloseUp(Sender);

    CONFERE := dsCadastro.DataSet.FieldByName('PERMISSAO_CONFERE').AsString;
    VISITANTE := dsCadastro.DataSet.FieldByName('PERMISSAO_VISITANTE').AsString;
    TRABALHO := dsCadastro.DataSet.FieldByName('PERMISSAO_SETORTRABALHO').AsString;
    CADASTRO := dsCadastro.DataSet.FieldByName('PERMISSAO_CADASTRO').AsString;
    EDUCACAO := dsCadastro.DataSet.FieldByName('PERMISSAO_SETOREDUCACAO').AsString;
    PSICOSSOCIAL := dsCadastro.DataSet.FieldByName('PERMISSAO_PSICOSSOCIAL').AsString;
    JURIDICA := dsCadastro.DataSet.FieldByName('PERMISSAO_JURIDICA').AsString;
    DISCIPLINA := dsCadastro.DataSet.FieldByName('PERMISSAO_DISCIPLINA').AsString;
    INTELIGENCIA := dsCadastro.DataSet.FieldByName('PERMISSAO_INTELIGENCIA').AsString;
    ENFERMAGEM := dsCadastro.DataSet.FieldByName('PERMISSAO_ENFERMAGEM').AsString;
    FARMACIA := dsCadastro.DataSet.FieldByName('PERMISSAO_FARMACIA').AsString;
    CLINICAMEDICA := dsCadastro.DataSet.FieldByName('PERMISSAO_CLINICAMEDICA').AsString;
    PSICOLOGIA := dsCadastro.DataSet.FieldByName('PERMISSAO_PSICOLOGIA').AsString;
    PSIQUIATRIA := dsCadastro.DataSet.FieldByName('PERMISSAO_PSIQUIATRIA').AsString;
    SAUDE := dsCadastro.DataSet.FieldByName('PERMISSAO_SAUDE').AsString;
    TERAPIAOCUPACIONAL := dsCadastro.DataSet.FieldByName('PERMISSAO_TERAPIAOCUPACIONAL').AsString;
    ODONTOLOGIA := dsCadastro.DataSet.FieldByName('PERMISSAO_ODONTOLOGIA').AsString;
    PEDAGOGIA := dsCadastro.DataSet.FieldByName('PERMISSAO_PEDAGOGIA').AsString;
    SERVICOSOCIAL := dsCadastro.DataSet.FieldByName('PERMISSAO_SERVICOSOCIAL').AsString;
    ARMAS := dsCadastro.DataSet.FieldByName('PERMISSAO_ARMAS').AsString;
    MONITORAMENTO := dsCadastro.DataSet.FieldByName('PERMISSAO_MONITORAMENTO').AsString;
    OCORRENCIA := dsCadastro.DataSet.FieldByName('PERMISSAO_OCORRENCIA').AsString;
    CONSELHODISCIPLINAR := dsCadastro.DataSet.FieldByName('PERMISSAO_CONSELHODISCIPLINAR').AsString;
    TRANSFERENCIAINTERNO := dsCadastro.DataSet.FieldByName('PERMISSAO_TRANSFERENCIAINTERNO').AsString;
    MUDANCACELA := dsCadastro.DataSet.FieldByName('PERMISSAO_MUDANCACELA').AsString;
    SAIDAO := dsCadastro.DataSet.FieldByName('PERMISSAO_SAIDAO').AsString;
    SAIDAO_CADASTRO := dsCadastro.DataSet.FieldByName('PERMISSAO_SAIDAO_CADASTRO').AsString;
    CIRCULACAOINTERNO := dsCadastro.DataSet.FieldByName('PERMISSAO_CIRCULACAOINTERNO').AsString;
    MOVIMENTOSEMIABERTO := dsCadastro.DataSet.FieldByName('PERMISSAO_MOVIMENTOSEMIABERTO').AsString;
    FUNCIONARIO := dsCadastro.DataSet.FieldByName('PERMISSAO_FUNCIONARIO').AsString;
    FUNCAOFUNCIONARIO := dsCadastro.DataSet.FieldByName('PERMISSAO_FUNCAOFUNCIONARIO').AsString;
    UNIDADEPENAL := dsCadastro.DataSet.FieldByName('PERMISSAO_UNIDADEPENAL').AsString;
    HORARIOFUNCIONARIO := dsCadastro.DataSet.FieldByName('PERMISSAO_HORARIOFUNCIONARIO').AsString;
    PADRAOSISTEMA := dsCadastro.DataSet.FieldByName('PERMISSAO_PADRAOSISTEMA').AsString;
    EQUIPE := dsCadastro.DataSet.FieldByName('PERMISSAO_EQUIPE').AsString;
    LOCALPOSTOTRABALHO := dsCadastro.DataSet.FieldByName('PERMISSAO_LOCALPOSTOTRABALHO').AsString;
    AGENTEPOREQUIPE := dsCadastro.DataSet.FieldByName('PERMISSAO_AGENTEPOREQUIPE').AsString;
    REGRAVISITACAO := dsCadastro.DataSet.FieldByName('PERMISSAO_REGRAVISITACAO').AsString;
    PERFILUSUARIO := dsCadastro.DataSet.FieldByName('PERMISSAO_PERFILUSUARIO').AsString;
    ADVOGADO := dsCadastro.DataSet.FieldByName('PERMISSAO_ADVOGADO').AsString;
    VISITANTETRAFICO := dsCadastro.DataSet.FieldByName('PERMISSAO_VISITANTETRAFICO').AsString;
    FACCAO := dsCadastro.DataSet.FieldByName('PERMISSAO_FACCAO').AsString;
    CTC := dsCadastro.DataSet.FieldByName('PERMISSAO_CTC').AsString;
    CORRESPONDENCIA := dsCadastro.DataSet.FieldByName('PERMISSAO_CORRESPONDENCIA').AsString;
    AGENDAATENDIMENTO := dsCadastro.DataSet.FieldByName('PERMISSAO_AGENDAATENDIMENTO').AsString;
    LIVROREVISTA := dsCadastro.DataSet.FieldByName('PERMISSAO_LIVROREVISTA').AsString;
    PAVILHAO := dsCadastro.DataSet.FieldByName('PERMISSAO_PAVILHAO').AsString;
    GALERIA := dsCadastro.DataSet.FieldByName('PERMISSAO_GALERIA').AsString;
    SOLARIO := dsCadastro.DataSet.FieldByName('PERMISSAO_SOLARIO').AsString;
    CELA := dsCadastro.DataSet.FieldByName('PERMISSAO_CELA').AsString;
    CONDICAOINTERNO := dsCadastro.DataSet.FieldByName('PERMISSAO_CONDICAOINTERNO').AsString;
    CIDADE := dsCadastro.DataSet.FieldByName('PERMISSAO_CIDADE').AsString;
    RACA := dsCadastro.DataSet.FieldByName('PERMISSAO_RACA').AsString;
    ESCOLARIDADE := dsCadastro.DataSet.FieldByName('PERMISSAO_ESCOLARIDADE').AsString;
    NACIONALIDADE := dsCadastro.DataSet.FieldByName('PERMISSAO_NACIONALIDADE').AsString;
    PROCEDENCIA := dsCadastro.DataSet.FieldByName('PERMISSAO_PROCEDENCIA').AsString;
    DESTINO := dsCadastro.DataSet.FieldByName('PERMISSAO_DESTINO').AsString;
    FORNECEDOR := dsCadastro.DataSet.FieldByName('PERMISSAO_FORNECEDOR').AsString;
    PROFISSAO := dsCadastro.DataSet.FieldByName('PERMISSAO_PROFISSAO').AsString;
    FALTADISCIPLINAR := dsCadastro.DataSet.FieldByName('PERMISSAO_FALTADISCIPLINAR').AsString;
    SERIEFASEESTUDO := dsCadastro.DataSet.FieldByName('PERMISSAO_SERIEFASEESTUDO').AsString;
    PROCESSOCONDENACAO := dsCadastro.DataSet.FieldByName('PERMISSAO_PROCESSOCONDENACAO').AsString;
    DETRACAO := dsCadastro.DataSet.FieldByName('PERMISSAO_DETRACAO').AsString;
    INTERRUPCAO := dsCadastro.DataSet.FieldByName('PERMISSAO_INTERRUPCAO').AsString;
    REMICAO := dsCadastro.DataSet.FieldByName('PERMISSAO_REMICAO').AsString;
    ARTIGOPENAL := dsCadastro.DataSet.FieldByName('PERMISSAO_ARTIGOPENAL').AsString;
    VARAEXECUCAO := dsCadastro.DataSet.FieldByName('PERMISSAO_VARAEXECUCAO').AsString;
    REMEDIO := dsCadastro.DataSet.FieldByName('PERMISSAO_REMEDIO').AsString;
    FUNCAOINTERNO := dsCadastro.DataSet.FieldByName('PERMISSAO_FUNCAOINTERNO').AsString;
    CALCULOTRABALHO := dsCadastro.DataSet.FieldByName('PERMISSAO_CALCULOTRABALHO').AsString;
    REMICAOTRABALHO := dsCadastro.DataSet.FieldByName('PERMISSAO_REMICAOTRABALHO').AsString;
    ROUPAS := dsCadastro.DataSet.FieldByName('PERMISSAO_ROUPAS').AsString;
    GRAUPARENTESCO := dsCadastro.DataSet.FieldByName('PERMISSAO_GRAUPARENTESCO').AsString;
    TIPOCONTATO := dsCadastro.DataSet.FieldByName('PERMISSAO_TIPOCONTATO').AsString;
    ASSUNTO := dsCadastro.DataSet.FieldByName('PERMISSAO_ASSUNTO').AsString;
    SITUACAO := dsCadastro.DataSet.FieldByName('PERMISSAO_SITUACAO').AsString;
    SETORTRABALHOCAD := dsCadastro.DataSet.FieldByName('PERMISSAO_SETORTRABALHOCAD').AsString;
    EVENTOS := dsCadastro.DataSet.FieldByName('PERMISSAO_EVENTOS').AsString;
    SUBEVENTOS := dsCadastro.DataSet.FieldByName('PERMISSAO_SUBEVENTOS').AsString;
    MONITORAMENTOEVENTOS := dsCadastro.DataSet.FieldByName('PERMISSAO_MONITORAMENTOEVENTOS').AsString;

    chtodascadastro.Checked := ContemValor('CEDIR', CADASTRO);
    cheditarcadastro.Checked := ContemValor('E', CADASTRO);
    chdeletarcadastro.Checked := ContemValor('D', CADASTRO);
    chinserircadastro.Checked := ContemValor('I', CADASTRO);
    chrelatoriocadastro.Checked := ContemValor('R', CADASTRO);
    chconsultarcadastro.Checked := ContemValor('C', CADASTRO);

    CHTodasConfere.Checked := ContemValor('CEDIR', CONFERE);
    CHEditarConfere.Checked := ContemValor('E', CONFERE);
    CHdeletarconfere.Checked := ContemValor('D', CONFERE);
    CHInserirConfere.Checked := ContemValor('I', CONFERE);
    chrelatorioconfere.Checked := ContemValor('R', CONFERE);
    CHConsultarConfere.Checked := ContemValor('C', CONFERE);

    chTodasVisitante.Checked := ContemValor('CEDIR', VISITANTE);
    chEditarVisitante.Checked := ContemValor('E', VISITANTE);
    chdeletarVisitante.Checked := ContemValor('D', VISITANTE);
    chInserirVisitante.Checked := ContemValor('I', VISITANTE);
    chrelatoriovisitante.Checked := ContemValor('R', VISITANTE);
    chConsultarVisitante.Checked := ContemValor('C', VISITANTE);

    CHTodasOcorrencia.Checked := ContemValor('CEDIRP', OCORRENCIA);
    CHEditaOcorrencia.Checked := ContemValor('E', OCORRENCIA);
    CHdeletaOcorrencia.Checked := ContemValor('D', OCORRENCIA);
    CHInsereOcorrencia.Checked := ContemValor('I', OCORRENCIA);
    chrelatorioOcorrencia.Checked := ContemValor('R', OCORRENCIA);
    chdespachoOcorrencia.Checked := ContemValor('P', OCORRENCIA);
    CHConsultaOcorrencia.Checked := ContemValor('C', OCORRENCIA);

    chtodastrabalho.Checked := ContemValor('CEDIR', TRABALHO);
    cheditartrabalho.Checked := ContemValor('E', TRABALHO);
    chdeletartrabalho.Checked := ContemValor('D', TRABALHO);
    chinserirtrabalho.Checked := ContemValor('I', TRABALHO);
    chrelatoriotrabalho.Checked := ContemValor('R', TRABALHO);
    chConsultartrabalho.Checked := ContemValor('C', TRABALHO);

    chtodaseducacao.Checked := ContemValor('CEDIR', EDUCACAO);
    cheditareducacao.Checked := ContemValor('E', EDUCACAO);
    chdeletareducacao.Checked := ContemValor('D', EDUCACAO);
    chinserireducacao.Checked := ContemValor('I', EDUCACAO);
    chrelatorioeducacao.Checked := ContemValor('R', EDUCACAO);
    chconsultareducacao.Checked := ContemValor('C', EDUCACAO);

    chtodasPSICOSSOCIAL.Checked := ContemValor('CEDIR', PSICOSSOCIAL);
    cheditarPSICOSSOCIAL.Checked := ContemValor('E', PSICOSSOCIAL);
    chdeletarPSICOSSOCIAL.Checked := ContemValor('D', PSICOSSOCIAL);
    chinserirPSICOSSOCIAL.Checked := ContemValor('I', PSICOSSOCIAL);
    chrelatoriopsicossocial.Checked := ContemValor('R', PSICOSSOCIAL);
    chconsultarPSICOSSOCIAL.Checked := ContemValor('C', PSICOSSOCIAL);

    chtodasenfermagem.Checked := ContemValor('CEDIR', ENFERMAGEM);
    cheditarenfermagem.Checked := ContemValor('E', ENFERMAGEM);
    chdeletarenfermagem.Checked := ContemValor('D', ENFERMAGEM);
    chinserirenfermagem.Checked := ContemValor('I', ENFERMAGEM);
    chrelatorioenfermagem.Checked := ContemValor('R', ENFERMAGEM);
    chconsultarenfermagem.Checked := ContemValor('C', ENFERMAGEM);

    chtodasfarmacia.Checked := ContemValor('CEDIR', FARMACIA);
    cheditarfarmacia.Checked := ContemValor('E', FARMACIA);
    chdeletarfarmacia.Checked := ContemValor('D', FARMACIA);
    chinserirfarmacia.Checked := ContemValor('I', FARMACIA);
    chrelatoriofaramcia.Checked := ContemValor('R', FARMACIA);
    chconsultarfarmacia.Checked := ContemValor('C', FARMACIA);

    chtodaspsiquiatria.Checked := ContemValor('CEDIR', PSIQUIATRIA);
    cheditarpsiquiatria.Checked := ContemValor('E', PSIQUIATRIA);
    chdeletarpsiquiatria.Checked := ContemValor('D', PSIQUIATRIA);
    chinserirpsiquiatria.Checked := ContemValor('I', PSIQUIATRIA);
    chrelatoriopsiquiatria.Checked := ContemValor('R', PSIQUIATRIA);
    chconsultarpsiquiatria.Checked := ContemValor('C', PSIQUIATRIA);

    chtodasservicosocial.Checked := ContemValor('CEDIR', SERVICOSOCIAL);
    cheditarservicosocial.Checked := ContemValor('E', SERVICOSOCIAL);
    chdeletarservicosocial.Checked := ContemValor('D', SERVICOSOCIAL);
    chinserirservicosocial.Checked := ContemValor('I', SERVICOSOCIAL);
    chrelatorioservicosocial.Checked := ContemValor('R', SERVICOSOCIAL);
    chconsultarservicosocial.Checked := ContemValor('C', SERVICOSOCIAL);

    chtodasterapiaocupacional.Checked := ContemValor('CEDIR', TERAPIAOCUPACIONAL);
    cheditarterapiaocupacional.Checked := ContemValor('E', TERAPIAOCUPACIONAL);
    chdeletarterapiaocupacional.Checked := ContemValor('D', TERAPIAOCUPACIONAL);
    chinserirterapiaocupacional.Checked := ContemValor('I', TERAPIAOCUPACIONAL);
    chrelatorioterapiaocupacional.Checked := ContemValor('R', TERAPIAOCUPACIONAL);
    chconsultarterapiaocupacional.Checked := ContemValor('C', TERAPIAOCUPACIONAL);

    chtodasJURIDICA.Checked := ContemValor('CEDIR', JURIDICA);
    cheditarJURIDICA.Checked := ContemValor('E', JURIDICA);
    chdeletarJURIDICA.Checked := ContemValor('D', JURIDICA);
    chinserirJURIDICA.Checked := ContemValor('I', JURIDICA);
    chrelatoriojuridico.Checked := ContemValor('R', JURIDICA);
    chconsultarJURIDICA.Checked := ContemValor('C', JURIDICA);

    chtodasDISCIPLINA.Checked := ContemValor('CEDIR', DISCIPLINA);
    cheditarDISCIPLINA.Checked := ContemValor('E', DISCIPLINA);
    chdeletarDISCIPLINA.Checked := ContemValor('D', DISCIPLINA);
    chinserirDISCIPLINA.Checked := ContemValor('I', DISCIPLINA);
    chrelatoriodisciplina.Checked := ContemValor('R', DISCIPLINA);
    chconsultarDISCIPLINA.Checked := ContemValor('C', DISCIPLINA);

    chtodasclinicamedica.Checked := ContemValor('CEDIR', CLINICAMEDICA);
    cheditarclinicamedica.Checked := ContemValor('E', CLINICAMEDICA);
    chdeletarclinicamedica.Checked := ContemValor('D', CLINICAMEDICA);
    chinserirclinicamedica.Checked := ContemValor('I', CLINICAMEDICA);
    chrelatorioclinicamedica.Checked := ContemValor('R', CLINICAMEDICA);
    chconsultarclinicamedica.Checked := ContemValor('C', CLINICAMEDICA);

    chtodasodontologia.Checked := ContemValor('CEDIR', ODONTOLOGIA);
    cheditarodontologia.Checked := ContemValor('E', ODONTOLOGIA);
    chdeletarodontologia.Checked := ContemValor('D', ODONTOLOGIA);
    chinserirodontologia.Checked := ContemValor('I', ODONTOLOGIA);
    chrelatorioodontologia.Checked := ContemValor('R', ODONTOLOGIA);
    chconsultarodontologia.Checked := ContemValor('C', ODONTOLOGIA);

    chtodaspedagogia.Checked := ContemValor('CEDIR', PEDAGOGIA);
    cheditarpedagogia.Checked := ContemValor('E', PEDAGOGIA);
    chdeletarpedagogia.Checked := ContemValor('D', PEDAGOGIA);
    chinserirpedagogia.Checked := ContemValor('I', PEDAGOGIA);
    chrelatoriopedagogia.Checked := ContemValor('R', PEDAGOGIA);
    chconsultarpedagogia.Checked := ContemValor('C', PEDAGOGIA);

    chtodaspsicologia.Checked := ContemValor('CEDIR', PSICOLOGIA);
    cheditarpsicologia.Checked := ContemValor('E', PSICOLOGIA);
    chdeletarpsicologia.Checked := ContemValor('D', PSICOLOGIA);
    chinserirpsicologia.Checked := ContemValor('I', PSICOLOGIA);
    chrelatoriopsicologia.Checked := ContemValor('R', PSICOLOGIA);
    chconsultarpsicologia.Checked := ContemValor('C', PSICOLOGIA);

    chtodassaude.Checked := ContemValor('CEDIR', SAUDE);
    cheditarsaude.Checked := ContemValor('E', SAUDE);
    chdeletarsaude.Checked := ContemValor('D', SAUDE);
    chinserirsaude.Checked := ContemValor('I', SAUDE);
    chrelatoriosaude.Checked := ContemValor('R', SAUDE);
    chconsultarsaude.Checked := ContemValor('C', SAUDE);

    chTodasConsDisciplinar.Checked := ContemValor('CEDIR', CONSELHODISCIPLINAR);
    chEditarConsDisciplinar.Checked := ContemValor('E', CONSELHODISCIPLINAR);
    chDeletarConsDisciplinar.Checked := ContemValor('D', CONSELHODISCIPLINAR);
    chInserirConsDisciplinar.Checked := ContemValor('I', CONSELHODISCIPLINAR);
    chRelatorioConsDisciplinar.Checked := ContemValor('R', CONSELHODISCIPLINAR);
    chConsultarConsDisciplinar.Checked := ContemValor('C', CONSELHODISCIPLINAR);

    chTodasTransferenciaInterno.Checked := ContemValor('CEDIR', TRANSFERENCIAINTERNO);
    chEditarTransferenciaInterno.Checked := ContemValor('E', TRANSFERENCIAINTERNO);
    chDeletarTransferenciaInterno.Checked := ContemValor('D', TRANSFERENCIAINTERNO);
    chInserirTransferenciaInterno.Checked := ContemValor('I', TRANSFERENCIAINTERNO);
    chRelatorioTransferenciaInterno.Checked := ContemValor('R', TRANSFERENCIAINTERNO);
    chConsultarTransferenciaInterno.Checked := ContemValor('C', TRANSFERENCIAINTERNO);

    ChTodasMudancaCela.Checked := ContemValor('CEDIR', MUDANCACELA);
    ChEditarMudancaCela.Checked := ContemValor('E', MUDANCACELA);
    ChDeletarMudancaCela.Checked := ContemValor('D', MUDANCACELA);
    ChInserirMudancaCela.Checked := ContemValor('I', MUDANCACELA);
    ChRelatorioMudancaCela.Checked := ContemValor('R', MUDANCACELA);
    ChConsultarMudancaCela.Checked := ContemValor('C', MUDANCACELA);

    ChTodasSaidao.Checked := ContemValor('CEDIR', SAIDAO);
    ChEditarSaidao.Checked := ContemValor('E', SAIDAO);
    ChDeletarSaidao.Checked := ContemValor('D', SAIDAO);
    ChInserirSaidao.Checked := ContemValor('I', SAIDAO);
    ChRelatorioSaidao.Checked := ContemValor('R', SAIDAO);
    ChConsultarSaidao.Checked := ContemValor('C', SAIDAO);

    ChTodasSaidaoCadastro.Checked := ContemValor('CEDIR', SAIDAO_CADASTRO);
    ChEditarSaidaoCadastro.Checked := ContemValor('E', SAIDAO_CADASTRO);
    ChDeletarSaidaoCadastro.Checked := ContemValor('D', SAIDAO_CADASTRO);
    ChInserirSaidaoCadastro.Checked := ContemValor('I', SAIDAO_CADASTRO);
    ChRelatorioSaidaoCadastro.Checked := ContemValor('R', SAIDAO_CADASTRO);
    ChConsultarSaidaoCadastro.Checked := ContemValor('C', SAIDAO_CADASTRO);

    ChTodasCirculacaoInterno.Checked := ContemValor('CEDIR', CIRCULACAOINTERNO);
    ChEditarCirculacaoInterno.Checked := ContemValor('E', CIRCULACAOINTERNO);
    ChDeletarCirculacaoInterno.Checked := ContemValor('D', CIRCULACAOINTERNO);
    ChInserirCirculacaoInterno.Checked := ContemValor('I', CIRCULACAOINTERNO);
    ChRelatorioCirculacaoInterno.Checked := ContemValor('R', CIRCULACAOINTERNO);
    ChConsultarCirculacaoInterno.Checked := ContemValor('C', CIRCULACAOINTERNO);

    ChTodasMovimentoSemiAberto.Checked := ContemValor('CEDIR', MOVIMENTOSEMIABERTO);
    ChEditarMovimentoSemiAberto.Checked := ContemValor('E', MOVIMENTOSEMIABERTO);
    ChDeletarMovimentoSemiAberto.Checked := ContemValor('D', MOVIMENTOSEMIABERTO);
    ChInserirMovimentoSemiAberto.Checked := ContemValor('I', MOVIMENTOSEMIABERTO);
    ChRelatorioMovimentoSemiAberto.Checked := ContemValor('R', MOVIMENTOSEMIABERTO);
    ChConsultarMovimentoSemiAberto.Checked := ContemValor('C', MOVIMENTOSEMIABERTO);

    chtodasinteligencia.Checked := ContemValor('CEDIR', INTELIGENCIA);
    cheditarinteligencia.Checked := ContemValor('E', INTELIGENCIA);
    chdeletarinteligencia.Checked := ContemValor('D', INTELIGENCIA);
    chinseririnteligencia.Checked := ContemValor('I', INTELIGENCIA);
    chrelatoriointeligencia.Checked := ContemValor('R', INTELIGENCIA);
    chconsultarinteligencia.Checked := ContemValor('C', INTELIGENCIA);

    chtodasarmas.Checked := ContemValor('CEDIR', ARMAS);
    cheditararmas.Checked := ContemValor('E', ARMAS);
    chdeletararmas.Checked := ContemValor('D', ARMAS);
    chinserirarmas.Checked := ContemValor('I', ARMAS);
    chrelatorioarmas.Checked := ContemValor('R', ARMAS);
    chconsultararmas.Checked := ContemValor('C', ARMAS);

    chtodasmonitoramento.Checked := ContemValor('CEDIR', MONITORAMENTO);
    cheditarmonitoramento.Checked := ContemValor('E', MONITORAMENTO);
    chdeletarmonitoramento.Checked := ContemValor('D', MONITORAMENTO);
    chinserirmonitoramento.Checked := ContemValor('I', MONITORAMENTO);
    chrelatoriomonitoramento.Checked := ContemValor('R', MONITORAMENTO);
    chconsultarmonitoramento.Checked := ContemValor('C', MONITORAMENTO);

    ChTodasFuncionario.Checked := ContemValor('CEDIR', FUNCIONARIO);
    ChEditarFuncionario.Checked := ContemValor('E', FUNCIONARIO);
    ChDeletarFuncionario.Checked := ContemValor('D', FUNCIONARIO);
    ChInserirFuncionario.Checked := ContemValor('I', FUNCIONARIO);
    ChRelatorioFuncionario.Checked := ContemValor('R', FUNCIONARIO);
    ChConsultarFuncionario.Checked := ContemValor('C', FUNCIONARIO);

    ChTodasFuncaoFuncionario.Checked := ContemValor('CEDIR', FUNCAOFUNCIONARIO);
    ChEditarFuncaoFuncionario.Checked := ContemValor('E', FUNCAOFUNCIONARIO);
    ChDeletarFuncaoFuncionario.Checked := ContemValor('D', FUNCAOFUNCIONARIO);
    ChInserirFuncaoFuncionario.Checked := ContemValor('I', FUNCAOFUNCIONARIO);
    ChRelatorioFuncaoFuncionario.Checked := ContemValor('R', FUNCAOFUNCIONARIO);
    ChConsultarFuncaoFuncionario.Checked := ContemValor('C', FUNCAOFUNCIONARIO);

    ChTodasUnidadePenal.Checked := ContemValor('CEDIR', UNIDADEPENAL);
    ChEditarUnidadePenal.Checked := ContemValor('E', UNIDADEPENAL);
    ChDeletarUnidadePenal.Checked := ContemValor('D', UNIDADEPENAL);
    ChInserirUnidadePenal.Checked := ContemValor('I', UNIDADEPENAL);
    ChRelatorioUnidadePenal.Checked := ContemValor('R', UNIDADEPENAL);
    ChConsultarUnidadePenal.Checked := ContemValor('C', UNIDADEPENAL);

    ChTodasHorarioFuncionario.Checked := ContemValor('CEDIR', HORARIOFUNCIONARIO);
    ChEditarHorarioFuncionario.Checked := ContemValor('E', HORARIOFUNCIONARIO);
    ChDeletarHorarioFuncionario.Checked := ContemValor('D', HORARIOFUNCIONARIO);
    ChInserirHorarioFuncionario.Checked := ContemValor('I', HORARIOFUNCIONARIO);
    ChRelatorioHorarioFuncionario.Checked := ContemValor('R', HORARIOFUNCIONARIO);
    ChConsultarHorarioFuncionario.Checked := ContemValor('C', HORARIOFUNCIONARIO);

    ChTodasPadraoSistema.Checked := ContemValor('CEDIR', PADRAOSISTEMA);
    ChEditarPadraoSistema.Checked := ContemValor('E', PADRAOSISTEMA);
    ChDeletarPadraoSistema.Checked := ContemValor('D', PADRAOSISTEMA);
    ChInserirPadraoSistema.Checked := ContemValor('I', PADRAOSISTEMA);
    ChRelatorioPadraoSistema.Checked := ContemValor('R', PADRAOSISTEMA);
    ChConsultarPadraoSistema.Checked := ContemValor('C', PADRAOSISTEMA);

    ChTodasEquipe.Checked := ContemValor('CEDIR', EQUIPE);
    ChEditarEquipe.Checked := ContemValor('E', EQUIPE);
    ChDeletarEquipe.Checked := ContemValor('D', EQUIPE);
    ChInserirEquipe.Checked := ContemValor('I', EQUIPE);
    ChRelatorioEquipe.Checked := ContemValor('R', EQUIPE);
    ChConsultarEquipe.Checked := ContemValor('C', EQUIPE);

    ChTodasPostoLocalTrabalho.Checked := ContemValor('CEDIR', LOCALPOSTOTRABALHO);
    ChEditarPostoLocalTrabalho.Checked := ContemValor('E', LOCALPOSTOTRABALHO);
    ChDeletarPostoLocalTrabalho.Checked := ContemValor('D', LOCALPOSTOTRABALHO);
    ChInserirPostoLocalTrabalho.Checked := ContemValor('I', LOCALPOSTOTRABALHO);
    ChRelatorioPostoLocalTrabalho.Checked := ContemValor('R', LOCALPOSTOTRABALHO);
    ChConsultarPostoLocalTrabalho.Checked := ContemValor('C', LOCALPOSTOTRABALHO);

    ChTodasAgenteEquipe.Checked := ContemValor('CEDIR', AGENTEPOREQUIPE);
    ChEditarAgenteEquipe.Checked := ContemValor('E', AGENTEPOREQUIPE);
    ChDeletarAgenteEquipe.Checked := ContemValor('D', AGENTEPOREQUIPE);
    ChInserirAgenteEquipe.Checked := ContemValor('I', AGENTEPOREQUIPE);
    ChRelatorioAgenteEquipe.Checked := ContemValor('R', AGENTEPOREQUIPE);
    ChConsultarAgenteEquipe.Checked := ContemValor('C', AGENTEPOREQUIPE);

    ChTodasRegraVisitacao.Checked := ContemValor('CEDIR', REGRAVISITACAO);
    ChEditarRegraVisitacao.Checked := ContemValor('E', REGRAVISITACAO);
    ChDeletarRegraVisitacao.Checked := ContemValor('D', REGRAVISITACAO);
    ChInserirRegraVisitacao.Checked := ContemValor('I', REGRAVISITACAO);
    ChRelatorioRegraVisitacao.Checked := ContemValor('R', REGRAVISITACAO);
    ChConsultarRegraVisitacao.Checked := ContemValor('C', REGRAVISITACAO);

    ChTodasPerfilUsuario.Checked := ContemValor('CEDIR', PERFILUSUARIO);
    ChEditarPerfilUsuario.Checked := ContemValor('E', PERFILUSUARIO);
    ChDeletarPerfilUsuario.Checked := ContemValor('D', PERFILUSUARIO);
    ChInserirPerfilUsuario.Checked := ContemValor('I', PERFILUSUARIO);
    ChRelatorioPerfilUsuario.Checked := ContemValor('R', PERFILUSUARIO);
    ChConsultarPerfilUsuario.Checked := ContemValor('C', PERFILUSUARIO);

    ChTodasAdvogado.Checked := ContemValor('CEDIR', ADVOGADO);
    ChEditarAdvogado.Checked := ContemValor('E', ADVOGADO);
    ChDeletarAdvogado.Checked := ContemValor('D', ADVOGADO);
    ChInserirAdvogado.Checked := ContemValor('I', ADVOGADO);
    ChRelatorioAdvogado.Checked := ContemValor('R', ADVOGADO);
    ChConsultarAdvogado.Checked := ContemValor('C', ADVOGADO);

    ChTodasVisitanteTrafico.Checked := ContemValor('CEDIR', VISITANTETRAFICO);
    ChEditarVisitanteTrafico.Checked := ContemValor('E', VISITANTETRAFICO);
    ChDeletarVisitanteTrafico.Checked := ContemValor('D', VISITANTETRAFICO);
    ChInserirVisitanteTrafico.Checked := ContemValor('I', VISITANTETRAFICO);
    ChRelatorioVisitanteTrafico.Checked := ContemValor('R', VISITANTETRAFICO);
    ChConsultarVisitanteTrafico.Checked := ContemValor('C', VISITANTETRAFICO);

    ChTodasFaccao.Checked := ContemValor('CEDIR', FACCAO);
    ChEditarFaccao.Checked := ContemValor('E', FACCAO);
    ChDeletarFaccao.Checked := ContemValor('D', FACCAO);
    ChInserirFaccao.Checked := ContemValor('I', FACCAO);
    ChRelatorioFaccao.Checked := ContemValor('R', FACCAO);
    ChConsultarFaccao.Checked := ContemValor('C', FACCAO);

    ChTodasCTC.Checked := ContemValor('CEDIR', CTC);
    ChEditarCTC.Checked := ContemValor('E', CTC);
    ChDeletarCTC.Checked := ContemValor('D', CTC);
    ChInserirCTC.Checked := ContemValor('I', CTC);
    ChRelatorioCTC.Checked := ContemValor('R', CTC);
    ChConsultarCTC.Checked := ContemValor('C', CTC);

    ChTodasCorrespondencia.Checked := ContemValor('CEDIR', CORRESPONDENCIA);
    ChEditarCorrespondencia.Checked := ContemValor('E', CORRESPONDENCIA);
    ChDeletarCorrespondencia.Checked := ContemValor('D', CORRESPONDENCIA);
    ChInserirCorrespondencia.Checked := ContemValor('I', CORRESPONDENCIA);
    ChRelatorioCorrespondencia.Checked := ContemValor('R', CORRESPONDENCIA);
    ChConsultarCorrespondencia.Checked := ContemValor('C', CORRESPONDENCIA);

    ChTodasAgendaAtendimento.Checked := ContemValor('CEDIR', AGENDAATENDIMENTO);
    ChEditarAgendaAtendimento.Checked := ContemValor('E', AGENDAATENDIMENTO);
    ChDeletarAgendaAtendimento.Checked := ContemValor('D', AGENDAATENDIMENTO);
    ChInserirAgendaAtendimento.Checked := ContemValor('I', AGENDAATENDIMENTO);
    ChRelatorioAgendaAtendimento.Checked := ContemValor('R', AGENDAATENDIMENTO);
    ChConsultarAgendaAtendimento.Checked := ContemValor('C', AGENDAATENDIMENTO);

    ChTodasLivroRevista.Checked := ContemValor('CEDIR', LIVROREVISTA);
    ChEditarLivroRevista.Checked := ContemValor('E', LIVROREVISTA);
    ChDeletarLivroRevista.Checked := ContemValor('D', LIVROREVISTA);
    ChInserirLivroRevista.Checked := ContemValor('I', LIVROREVISTA);
    ChRelatorioLivroRevista.Checked := ContemValor('R', LIVROREVISTA);
    ChConsultarLivroRevista.Checked := ContemValor('C', LIVROREVISTA);

    ChTodasPavilhao.Checked := ContemValor('CEDIR', PAVILHAO);
    ChEditarPavilhao.Checked := ContemValor('E', PAVILHAO);
    ChDeletarPavilhao.Checked := ContemValor('D', PAVILHAO);
    ChInserirPavilhao.Checked := ContemValor('I', PAVILHAO);
    ChRelatorioPavilhao.Checked := ContemValor('R', PAVILHAO);
    ChConsultarPavilhao.Checked := ContemValor('C', PAVILHAO);

    ChTodasGaleria.Checked := ContemValor('CEDIR', GALERIA);
    ChEditarGaleria.Checked := ContemValor('E', GALERIA);
    ChDeletarGaleria.Checked := ContemValor('D', GALERIA);
    ChInserirGaleria.Checked := ContemValor('I', GALERIA);
    ChRelatorioGaleria.Checked := ContemValor('R', GALERIA);
    ChConsultarGaleria.Checked := ContemValor('C', GALERIA);

    ChTodasSolario.Checked := ContemValor('CEDIR', SOLARIO);
    ChEditarSolario.Checked := ContemValor('E', SOLARIO);
    ChDeletarSolario.Checked := ContemValor('D', SOLARIO);
    ChInserirSolario.Checked := ContemValor('I', SOLARIO);
    ChRelatorioSolario.Checked := ContemValor('R', SOLARIO);
    ChConsultarSolario.Checked := ContemValor('C', SOLARIO);

    ChTodasCela.Checked := ContemValor('CEDIR', CELA);
    ChEditarCela.Checked := ContemValor('E', CELA);
    ChDeletarCela.Checked := ContemValor('D', CELA);
    ChInserirCela.Checked := ContemValor('I', CELA);
    ChRelatorioCela.Checked := ContemValor('R', CELA);
    ChConsultarCela.Checked := ContemValor('C', CELA);

    ChTodasCondicaoInterno.Checked := ContemValor('CEDIR', CONDICAOINTERNO);
    ChEditarCondicaoInterno.Checked := ContemValor('E', CONDICAOINTERNO);
    ChDeletarCondicaoInterno.Checked := ContemValor('D', CONDICAOINTERNO);
    ChInserirCondicaoInterno.Checked := ContemValor('I', CONDICAOINTERNO);
    ChRelatorioCondicaoInterno.Checked := ContemValor('R', CONDICAOINTERNO);
    ChConsultarCondicaoInterno.Checked := ContemValor('C', CONDICAOINTERNO);

    ChTodasCidade.Checked := ContemValor('CEDIR', CIDADE);
    ChEditarCidade.Checked := ContemValor('E', CIDADE);
    ChDeletarCidade.Checked := ContemValor('D', CIDADE);
    ChInserirCidade.Checked := ContemValor('I', CIDADE);
    ChRelatorioCidade.Checked := ContemValor('R', CIDADE);
    ChConsultarCidade.Checked := ContemValor('C', CIDADE);

    ChTodasRaca.Checked := ContemValor('CEDIR', RACA);
    ChEditarRaca.Checked := ContemValor('E', RACA);
    ChDeletarRaca.Checked := ContemValor('D', RACA);
    ChInserirRaca.Checked := ContemValor('I', RACA);
    ChRelatorioRaca.Checked := ContemValor('R', RACA);
    ChConsultarRaca.Checked := ContemValor('C', RACA);

    ChTodasEscolaridade.Checked := ContemValor('CEDIR', ESCOLARIDADE);
    ChEditarEscolaridade.Checked := ContemValor('E', ESCOLARIDADE);
    ChDeletarEscolaridade.Checked := ContemValor('D', ESCOLARIDADE);
    ChInserirEscolaridade.Checked := ContemValor('I', ESCOLARIDADE);
    ChRelatorioEscolaridade.Checked := ContemValor('R', ESCOLARIDADE);
    ChConsultarEscolaridade.Checked := ContemValor('C', ESCOLARIDADE);

    ChTodasNacionalidade.Checked := ContemValor('CEDIR', NACIONALIDADE);
    ChEditarNacionalidade.Checked := ContemValor('E', NACIONALIDADE);
    ChDeletarNacionalidade.Checked := ContemValor('D', NACIONALIDADE);
    ChInserirNacionalidade.Checked := ContemValor('I', NACIONALIDADE);
    ChRelatorioNacionalidade.Checked := ContemValor('R', NACIONALIDADE);
    ChConsultarNacionalidade.Checked := ContemValor('C', NACIONALIDADE);

    ChTodasProcedencia.Checked := ContemValor('CEDIR', PROCEDENCIA);
    ChEditarProcedencia.Checked := ContemValor('E', PROCEDENCIA);
    ChDeletarProcedencia.Checked := ContemValor('D', PROCEDENCIA);
    ChInserirProcedencia.Checked := ContemValor('I', PROCEDENCIA);
    ChRelatorioProcedencia.Checked := ContemValor('R', PROCEDENCIA);
    ChConsultarProcedencia.Checked := ContemValor('C', PROCEDENCIA);

    ChTodasDestino.Checked := ContemValor('CEDIR', DESTINO);
    ChEditarDestino.Checked := ContemValor('E', DESTINO);
    ChDeletarDestino.Checked := ContemValor('D', DESTINO);
    ChInserirDestino.Checked := ContemValor('I', DESTINO);
    ChRelatorioDestino.Checked := ContemValor('R', DESTINO);
    ChConsultarDestino.Checked := ContemValor('C', DESTINO);

    ChTodasFornecedor.Checked := ContemValor('CEDIR', FORNECEDOR);
    ChEditarFornecedor.Checked := ContemValor('E', FORNECEDOR);
    ChDeletarFornecedor.Checked := ContemValor('D', FORNECEDOR);
    ChInserirFornecedor.Checked := ContemValor('I', FORNECEDOR);
    ChRelatorioFornecedor.Checked := ContemValor('R', FORNECEDOR);
    ChConsultarFornecedor.Checked := ContemValor('C', FORNECEDOR);

    ChTodasProfissao.Checked := ContemValor('CEDIR', PROFISSAO);
    ChEditarProfissao.Checked := ContemValor('E', PROFISSAO);
    ChDeletarProfissao.Checked := ContemValor('D', PROFISSAO);
    ChInserirProfissao.Checked := ContemValor('I', PROFISSAO);
    ChRelatorioProfissao.Checked := ContemValor('R', PROFISSAO);
    ChConsultarProfissao.Checked := ContemValor('C', PROFISSAO);

    ChTodasFaltaDisciplinar.Checked := ContemValor('CEDIR', FALTADISCIPLINAR);
    ChEditarFaltaDisciplinar.Checked := ContemValor('E', FALTADISCIPLINAR);
    ChDeletarFaltaDisciplinar.Checked := ContemValor('D', FALTADISCIPLINAR);
    ChInserirFaltaDisciplinar.Checked := ContemValor('I', FALTADISCIPLINAR);
    ChRelatorioFaltaDisciplinar.Checked := ContemValor('R', FALTADISCIPLINAR);
    ChConsultarFaltaDisciplinar.Checked := ContemValor('C', FALTADISCIPLINAR);

    ChTodasSerieFaseEstudo.Checked := ContemValor('CEDIR', SERIEFASEESTUDO);
    ChEditarSerieFaseEstudo.Checked := ContemValor('E', SERIEFASEESTUDO);
    ChDeletarSerieFaseEstudo.Checked := ContemValor('D', SERIEFASEESTUDO);
    ChInserirSerieFaseEstudo.Checked := ContemValor('I', SERIEFASEESTUDO);
    ChRelatorioSerieFaseEstudo.Checked := ContemValor('R', SERIEFASEESTUDO);
    ChConsultarSerieFaseEstudo.Checked := ContemValor('C', SERIEFASEESTUDO);

    ChTodasProcessoCondenacao.Checked := ContemValor('CEDIR', PROCESSOCONDENACAO);
    ChEditarProcessoCondenacao.Checked := ContemValor('E', PROCESSOCONDENACAO);
    ChDeletarProcessoCondenacao.Checked := ContemValor('D', PROCESSOCONDENACAO);
    ChInserirProcessoCondenacao.Checked := ContemValor('I', PROCESSOCONDENACAO);
    ChRelatorioProcessoCondenacao.Checked := ContemValor('R', PROCESSOCONDENACAO);
    ChConsultarProcessoCondenacao.Checked := ContemValor('C', PROCESSOCONDENACAO);

    ChTodasDetracao.Checked := ContemValor('CEDIR', DETRACAO);
    ChEditarDetracao.Checked := ContemValor('E', DETRACAO);
    ChDeletarDetracao.Checked := ContemValor('D', DETRACAO);
    ChInserirDetracao.Checked := ContemValor('I', DETRACAO);
    ChRelatorioDetracao.Checked := ContemValor('R', DETRACAO);
    ChConsultarDetracao.Checked := ContemValor('C', DETRACAO);

    ChTodasInterrupcao.Checked := ContemValor('CEDIR', INTERRUPCAO);
    ChEditarInterrupcao.Checked := ContemValor('E', INTERRUPCAO);
    ChDeletarInterrupcao.Checked := ContemValor('D', INTERRUPCAO);
    ChInserirInterrupcao.Checked := ContemValor('I', INTERRUPCAO);
    ChRelatorioInterrupcao.Checked := ContemValor('R', INTERRUPCAO);
    ChConsultarInterrupcao.Checked := ContemValor('C', INTERRUPCAO);

    ChTodasRemicao.Checked := ContemValor('CEDIR', REMICAO);
    ChEditarRemicao.Checked := ContemValor('E', REMICAO);
    ChDeletarRemicao.Checked := ContemValor('D', REMICAO);
    ChInserirRemicao.Checked := ContemValor('I', REMICAO);
    ChRelatorioRemicao.Checked := ContemValor('R', REMICAO);
    ChConsultarRemicao.Checked := ContemValor('C', REMICAO);

    ChTodasArtigoPenal.Checked := ContemValor('CEDIR', ARTIGOPENAL);
    ChEditarArtigoPenal.Checked := ContemValor('E', ARTIGOPENAL);
    ChDeletarArtigoPenal.Checked := ContemValor('D', ARTIGOPENAL);
    ChInserirArtigoPenal.Checked := ContemValor('I', ARTIGOPENAL);
    ChRelatorioArtigoPenal.Checked := ContemValor('R', ARTIGOPENAL);
    ChConsultarArtigoPenal.Checked := ContemValor('C', ARTIGOPENAL);

    ChTodasVaraExecucao.Checked := ContemValor('CEDIR', VARAEXECUCAO);
    ChEditarVaraExecucao.Checked := ContemValor('E', VARAEXECUCAO);
    ChDeletarVaraExecucao.Checked := ContemValor('D', VARAEXECUCAO);
    ChInserirVaraExecucao.Checked := ContemValor('I', VARAEXECUCAO);
    ChRelatorioVaraExecucao.Checked := ContemValor('R', VARAEXECUCAO);
    ChConsultarVaraExecucao.Checked := ContemValor('C', VARAEXECUCAO);

    ChTodasRemedio.Checked := ContemValor('CEDIR', REMEDIO);
    ChEditarRemedio.Checked := ContemValor('E', REMEDIO);
    ChDeletarRemedio.Checked := ContemValor('D', REMEDIO);
    ChInserirRemedio.Checked := ContemValor('I', REMEDIO);
    ChRelatorioRemedio.Checked := ContemValor('R', REMEDIO);
    ChConsultarRemedio.Checked := ContemValor('C', REMEDIO);

    ChTodasFuncaoInterno.Checked := ContemValor('CEDIR', FUNCAOINTERNO);
    ChEditarFuncaoInterno.Checked := ContemValor('E', FUNCAOINTERNO);
    ChDeletarFuncaoInterno.Checked := ContemValor('D', FUNCAOINTERNO);
    ChInserirFuncaoInterno.Checked := ContemValor('I', FUNCAOINTERNO);
    ChRelatorioFuncaoInterno.Checked := ContemValor('R', FUNCAOINTERNO);
    ChConsultarFuncaoInterno.Checked := ContemValor('C', FUNCAOINTERNO);

    ChTodasCalculoTrabalho.Checked := ContemValor('CEDIR', CALCULOTRABALHO);
    ChEditarCalculoTrabalho.Checked := ContemValor('E', CALCULOTRABALHO);
    ChDeletarCalculoTrabalho.Checked := ContemValor('D', CALCULOTRABALHO);
    ChInserirCalculoTrabalho.Checked := ContemValor('I', CALCULOTRABALHO);
    ChRelatorioCalculoTrabalho.Checked := ContemValor('R', CALCULOTRABALHO);
    ChConsultarCalculoTrabalho.Checked := ContemValor('C', CALCULOTRABALHO);

    ChTodasRemicaoTrabalho.Checked := ContemValor('CEDIR', REMICAOTRABALHO);
    ChEditarRemicaoTrabalho.Checked := ContemValor('E', REMICAOTRABALHO);
    ChDeletarRemicaoTrabalho.Checked := ContemValor('D', REMICAOTRABALHO);
    ChInserirRemicaoTrabalho.Checked := ContemValor('I', REMICAOTRABALHO);
    ChRelatorioRemicaoTrabalho.Checked := ContemValor('R', REMICAOTRABALHO);
    ChConsultarRemicaoTrabalho.Checked := ContemValor('C', REMICAOTRABALHO);

    ChTodasRoupas.Checked := ContemValor('CEDIR', ROUPAS);
    ChEditarRoupas.Checked := ContemValor('E', ROUPAS);
    ChDeletarRoupas.Checked := ContemValor('D', ROUPAS);
    ChInserirRoupas.Checked := ContemValor('I', ROUPAS);
    ChRelatorioRoupas.Checked := ContemValor('R', ROUPAS);
    ChConsultarRoupas.Checked := ContemValor('C', ROUPAS);

    ChTodasGrauParentesco.Checked := ContemValor('CEDIR', GRAUPARENTESCO);
    ChEditarGrauParentesco.Checked := ContemValor('E', GRAUPARENTESCO);
    ChDeletarGrauParentesco.Checked := ContemValor('D', GRAUPARENTESCO);
    ChInserirGrauParentesco.Checked := ContemValor('I', GRAUPARENTESCO);
    ChRelatorioGrauParentesco.Checked := ContemValor('R', GRAUPARENTESCO);
    ChConsultarGrauParentesco.Checked := ContemValor('C', GRAUPARENTESCO);

    ChTodasTipoContato.Checked := ContemValor('CEDIR', TIPOCONTATO);
    ChEditarTipoContato.Checked := ContemValor('E', TIPOCONTATO);
    ChDeletarTipoContato.Checked := ContemValor('D', TIPOCONTATO);
    ChInserirTipoContato.Checked := ContemValor('I', TIPOCONTATO);
    ChRelatorioTipoContato.Checked := ContemValor('R', TIPOCONTATO);
    ChConsultarTipoContato.Checked := ContemValor('C', TIPOCONTATO);

    ChTodasAssunto.Checked := ContemValor('CEDIR', ASSUNTO);
    ChEditarAssunto.Checked := ContemValor('E', ASSUNTO);
    ChDeletarAssunto.Checked := ContemValor('D', ASSUNTO);
    ChInserirAssunto.Checked := ContemValor('I', ASSUNTO);
    ChRelatorioAssunto.Checked := ContemValor('R', ASSUNTO);
    ChConsultarAssunto.Checked := ContemValor('C', ASSUNTO);

    ChTodasSituacao.Checked := ContemValor('CEDIR', SITUACAO);
    ChEditarSituacao.Checked := ContemValor('E', SITUACAO);
    ChDeletarSituacao.Checked := ContemValor('D', SITUACAO);
    ChInserirSituacao.Checked := ContemValor('I', SITUACAO);
    ChRelatorioSituacao.Checked := ContemValor('R', SITUACAO);
    ChConsultarSituacao.Checked := ContemValor('C', SITUACAO);

    ChTodasSetorTrabalhoCad.Checked := ContemValor('CEDIR', SETORTRABALHOCAD);
    ChEditarSetorTrabalhoCad.Checked := ContemValor('E', SETORTRABALHOCAD);
    ChDeletarSetorTrabalhoCad.Checked := ContemValor('D', SETORTRABALHOCAD);
    ChInserirSetorTrabalhoCad.Checked := ContemValor('I', SETORTRABALHOCAD);
    ChRelatorioSetorTrabalhoCad.Checked := ContemValor('R', SETORTRABALHOCAD);
    ChConsultarSetorTrabalhoCad.Checked := ContemValor('C', SETORTRABALHOCAD);

    ChTodasEventos.Checked := ContemValor('CEDIR', EVENTOS);
    ChEditarEventos.Checked := ContemValor('E', EVENTOS);
    ChDeletarEventos.Checked := ContemValor('D', EVENTOS);
    ChInserirEventos.Checked := ContemValor('I', EVENTOS);
    ChRelatorioEventos.Checked := ContemValor('R', EVENTOS);
    ChConsultarEventos.Checked := ContemValor('C', EVENTOS);

    ChTodasSubEventos.Checked := ContemValor('CEDIR', SUBEVENTOS);
    ChEditarSubEventos.Checked := ContemValor('E', SUBEVENTOS);
    ChDeletarSubEventos.Checked := ContemValor('D', SUBEVENTOS);
    ChInserirSubEventos.Checked := ContemValor('I', SUBEVENTOS);
    ChRelatorioSubEventos.Checked := ContemValor('R', SUBEVENTOS);
    ChConsultarSubEventos.Checked := ContemValor('C', SUBEVENTOS);

    ChTodasMonitEventos.Checked := ContemValor('CEDIR', MONITORAMENTOEVENTOS);
    ChEditarMonitEventos.Checked := ContemValor('E', MONITORAMENTOEVENTOS);
    ChDeletarMonitEventos.Checked := ContemValor('D', MONITORAMENTOEVENTOS);
    ChInserirMonitEventos.Checked := ContemValor('I', MONITORAMENTOEVENTOS);
    ChRelatorioMonitEventos.Checked := ContemValor('R', MONITORAMENTOEVENTOS);
    ChConsultarMonitEventos.Checked := ContemValor('C', MONITORAMENTOEVENTOS);

  end;

  {Verifica as permiss�es que o usu�rio possui para esta tela
  e habilita ou n�o os respectivos bot�es.
  Estas verifica��es devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permiss�o referente � tela nas verifica��es abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_FUNCIONARIO)
    and not ContemValor('E', PERMISSAO_FUNCIONARIO)
    and not ContemValor('D', PERMISSAO_FUNCIONARIO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FUNCIONARIO)
    and not ContemValor('E', PERMISSAO_FUNCIONARIO)
    and not ContemValor('D', PERMISSAO_FUNCIONARIO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FUNCIONARIO)
    and ContemValor('E', PERMISSAO_FUNCIONARIO)
    and not ContemValor('D', PERMISSAO_FUNCIONARIO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FUNCIONARIO)
    and ContemValor('E', PERMISSAO_FUNCIONARIO)
    and ContemValor('D', PERMISSAO_FUNCIONARIO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_FUNCIONARIO)
    and not ContemValor('E', PERMISSAO_FUNCIONARIO)
    and ContemValor('D', PERMISSAO_FUNCIONARIO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FUNCIONARIO)
    and not ContemValor('E', PERMISSAO_FUNCIONARIO)
    and ContemValor('D', PERMISSAO_FUNCIONARIO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_FUNCIONARIO)
    and ContemValor('E', PERMISSAO_FUNCIONARIO)
    and not ContemValor('D', PERMISSAO_FUNCIONARIO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroFuncionario.EditLocalizarChange(Sender: TObject);
begin
  inherited;
  SqlConsulta.sql.text := SqlSelectFuncionario.SQL.Text + ' where nome_funcionario like upper('
    + qs(EditLocalizar.text + '%') + ') order by nome_funcionario ';

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

end;

procedure TFrmCadastroFuncionario.DBGridConsultaDblClick(Sender: TObject);
var
  cod: integer;
begin

  cod := DsConsulta.DataSet.FieldByName('id_funcionario').AsInteger;

  SqlCadastro.ParamByName('id_funcionario').AsInteger := cod;

  DsCadastro.DataSet.Close;
  DsCadastro.DataSet.Open;

  if not DsCadastro.DataSet.IsEmpty then
  begin

    //dspermissaointeligencia.DataSet.Close;
    //SQLpermissaointeligencia.Params[0].Value := cod;
    //dspermissaointeligencia.DataSet.Open;

    //if dspermissaointeligencia.DataSet.RecordCount > 0 then
    //  GroupBoxinteligencia.Visible := True
    //else
    //  GroupBoxinteligencia.Visible := False;

    EditarClick(nil);

  end;

end;

procedure TFrmCadastroFuncionario.DBImageFOTOFUNCIONARIOClick(Sender: TObject);
var
  sOrigem, sDestino: string;
  JPeg: TJpegImage;
begin
  with DsCadastro.DataSet do
  begin
    if state in [dsedit, dsinsert] then
    begin
      if OpenDialog1.Execute then
      begin
        JPeg := TJPEGImage.Create;
        JPeg.LoadFromFile(ConverterBmpParaJPeg(JpgToBmp(OpenDialog1.FileName)));
        DBImageFOTOFUNCIONARIO.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end;
end;

procedure TFrmCadastroFuncionario.FormShow(Sender: TObject);
begin
  inherited;
//  dspermissaointeligencia.DataSet.Close;
//  SQLpermissaointeligencia.Params[0].Value := DsCadastro.DataSet.fieldbyname('id_funcionario').AsInteger;
//  dspermissaointeligencia.DataSet.Open;

  if NOME_PERFILUSUARIO_LOGADO = 'ADMINISTRADOR' then
    GroupBoxinteligencia.Visible := True
  else
    GroupBoxinteligencia.Visible := False;

  if DEFINE_PERFIL_USUARIO = 'S' then
    DBLookupPerfilUsuario.Enabled := True
  else
    DBLookupPerfilUsuario.Enabled := False;

  if CONCEDE_PERMISSAO_INDIVIDUAL = 'S' then
  begin
    PageControlPermissao.Visible := True;
    Label43.Visible := True;
    BtnLimparPermissoes.Visible := True;
  end
  else
  begin
    PageControlPermissao.Visible := False;
    Label43.Visible := False;
    BtnLimparPermissoes.Visible := False;
  end;

  DM.DSCIDADE.DataSet.Close;
  DM.DSCIDADE.DataSet.OPEN;

  DM.dscurso.DataSet.Close;
  DM.dscurso.DataSet.Open;

  DM.DsUP.DataSet.Close;
  DM.DsUP.DataSet.OPEN;

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

  DBEditcpf.Field.EditMask := '999\.999\.999-99;1;_';
  DBEditcep.field.editmask := '99.999-999;1;_';
  DBEditfone.field.editmask := '(99)9999-9999;1;_';
  DBEditcelular.field.editmask := '(99)9999-9999;1;_';

  GbPavilhao.Caption := GLOBAL_NIVEL_1;
  GbGaleria.Caption := GLOBAL_NIVEL_2;
  GbSolario.Caption := GLOBAL_NIVEL_3;
  GbCela.Caption := GLOBAL_NIVEL_4;

  if EDITANDO_SEUS_DADOS_DE_USUARIO = True then
  begin
    TabPermissao.TabVisible := false;
    TabSheetConsulta.TabVisible := false;

    SqlCadastro.ParamByName('id_funcionario').AsInteger := GLOBAL_ID_FUNCIONARIO;
    DsCadastro.DataSet.Close;
    DsCadastro.DataSet.Open;

    PageControlFuncionario.ActivePageIndex := 0;
    PageControlModeloCadastro.ActivePageIndex := 0;

    EditarClick(nil);
    Novo.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := True;
    Editar.Visible := True;

    DBLookupComboBox2.Enabled := False;
    DBEdit2.Enabled := False;
    DBComboBox2.Enabled := False;
    DBEdit10.Enabled := False;
    DBComboBox3.Enabled := False;
    DBComboBox1.Enabled := False;
    DBLookupComboBoxPostoTrabalho.Enabled := False;
    DBEditdtlotacao.Enabled := False;
    SpeedButton3.Enabled := False;
    DBEdit3.Enabled := False;

  end
  else
  begin
    PageControlFuncionario.ActivePageIndex := 0;
    PageControlModeloCadastro.ActivePageIndex := 1;
  end;

  PageControlModeloCadastroChange(nil);

end;

procedure TFrmCadastroFuncionario.DBImagedIGITALClick(Sender: TObject);
var
  sOrigem, sDestino: string;
  JPeg: TJpegImage;
begin
  with DsCadastro.DataSet do
  begin
    if state in [dsedit, dsinsert] then
    begin
      if OpenDialog1.Execute then
      begin
        JPeg := TJPEGImage.Create;
        JPeg.LoadFromFile(ConverterBmpParaJPeg(JpgToBmp(OpenDialog1.FileName)));
        DBImagedIGITAL.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end;
end;

procedure TFrmCadastroFuncionario.chconsultarcadastroClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarcadastro, cheditarcadastro, chdeletarcadastro, chinserircadastro, chrelatoriocadastro, chtodascadastro,
    'PERMISSAO_CADASTRO');
end;

procedure TFrmCadastroFuncionario.cheditarcadastroClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarcadastro, cheditarcadastro, chdeletarcadastro, chinserircadastro, chrelatoriocadastro, chtodascadastro,
    'PERMISSAO_CADASTRO');
end;

procedure TFrmCadastroFuncionario.chdeletarcadastroClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarcadastro, cheditarcadastro, chdeletarcadastro, chinserircadastro, chrelatoriocadastro, chtodascadastro,
    'PERMISSAO_CADASTRO');
end;

procedure TFrmCadastroFuncionario.chinserircadastroClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarcadastro, cheditarcadastro, chdeletarcadastro, chinserircadastro, chrelatoriocadastro, chtodascadastro,
    'PERMISSAO_CADASTRO');
end;

procedure TFrmCadastroFuncionario.chtodascadastroClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarcadastro, cheditarcadastro, chdeletarcadastro, chinserircadastro, chrelatoriocadastro, chtodascadastro);
end;

procedure TFrmCadastroFuncionario.chconsultarpsicossocialClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(CHConsultarPSICOSSOCIAL, CHEditarPSICOSSOCIAL, CHdeletarPSICOSSOCIAL, CHInserirPSICOSSOCIAL, chrelatoriopsicossocial, CHTodasPSICOSSOCIAL,
    'PERMISSAO_PSICOSSOCIAL');
end;

procedure TFrmCadastroFuncionario.cheditarpsicossocialClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(CHConsultarPSICOSSOCIAL, CHEditarPSICOSSOCIAL, CHdeletarPSICOSSOCIAL, CHInserirPSICOSSOCIAL, chrelatoriopsicossocial, CHTodasPSICOSSOCIAL,
    'PERMISSAO_PSICOSSOCIAL');
end;

procedure TFrmCadastroFuncionario.chdeletarpsicossocialClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(CHConsultarPSICOSSOCIAL, CHEditarPSICOSSOCIAL, CHdeletarPSICOSSOCIAL, CHInserirPSICOSSOCIAL, chrelatoriopsicossocial, CHTodasPSICOSSOCIAL,
    'PERMISSAO_PSICOSSOCIAL');
end;

procedure TFrmCadastroFuncionario.chinserirpsicossocialClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(CHConsultarPSICOSSOCIAL, CHEditarPSICOSSOCIAL, CHdeletarPSICOSSOCIAL, CHInserirPSICOSSOCIAL, chrelatoriopsicossocial, CHTodasPSICOSSOCIAL,
    'PERMISSAO_PSICOSSOCIAL');
end;

procedure TFrmCadastroFuncionario.chconsultarjuridicaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(CHConsultarJURIDICA, CHEditarJURIDICA, CHdeletarJURIDICA, CHInserirJURIDICA, chrelatoriojuridico, CHTodasJURIDICA,
    'PERMISSAO_JURIDICA');
end;

procedure TFrmCadastroFuncionario.cheditarjuridicaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(CHConsultarJURIDICA, CHEditarJURIDICA, CHdeletarJURIDICA, CHInserirJURIDICA, chrelatoriojuridico, CHTodasJURIDICA,
    'PERMISSAO_JURIDICA');
end;

procedure TFrmCadastroFuncionario.chdeletarjuridicaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(CHConsultarJURIDICA, CHEditarJURIDICA, CHdeletarJURIDICA, CHInserirJURIDICA, chrelatoriojuridico, CHTodasJURIDICA,
    'PERMISSAO_JURIDICA');
end;

procedure TFrmCadastroFuncionario.chinserirjuridicaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(CHConsultarJURIDICA, CHEditarJURIDICA, CHdeletarJURIDICA, CHInserirJURIDICA, chrelatoriojuridico, CHTodasJURIDICA,
    'PERMISSAO_JURIDICA');
end;

procedure TFrmCadastroFuncionario.chconsultardisciplinaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultardisciplina, cheditardisciplina, chdeletardisciplina, chinserirdisciplina, chrelatoriodisciplina, chtodasdisciplina,
    'PERMISSAO_DISCIPLINA');
end;

procedure TFrmCadastroFuncionario.cheditardisciplinaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultardisciplina, cheditardisciplina, chdeletardisciplina, chinserirdisciplina, chrelatoriodisciplina, chtodasdisciplina,
    'PERMISSAO_DISCIPLINA');
end;

procedure TFrmCadastroFuncionario.chdeletardisciplinaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultardisciplina, cheditardisciplina, chdeletardisciplina, chinserirdisciplina, chrelatoriodisciplina, chtodasdisciplina,
    'PERMISSAO_DISCIPLINA');
end;

procedure TFrmCadastroFuncionario.chinserirdisciplinaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultardisciplina, cheditardisciplina, chdeletardisciplina, chinserirdisciplina, chrelatoriodisciplina, chtodasdisciplina,
    'PERMISSAO_DISCIPLINA');
end;

procedure TFrmCadastroFuncionario.chtodaspsicossocialClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarPSICOSSOCIAL, cheditarPSICOSSOCIAL, chdeletarPSICOSSOCIAL, chinserirPSICOSSOCIAL, chrelatoriopsicossocial,
    chtodasPSICOSSOCIAL);
end;

procedure TFrmCadastroFuncionario.chtodasjuridicaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarJURIDICA, cheditarJURIDICA, chdeletarJURIDICA, chinserirJURIDICA, chrelatoriojuridico, chtodasJURIDICA);
end;

procedure TFrmCadastroFuncionario.chtodasdisciplinaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarDISCIPLINA, cheditarDISCIPLINA, chdeletarDISCIPLINA, chinserirDISCIPLINA, chrelatoriodisciplina, chtodasDISCIPLINA);
end;

procedure TFrmCadastroFuncionario.DBComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  key := #0;
end;

procedure TFrmCadastroFuncionario.DBComboBox2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  key := #0;
end;

procedure TFrmCadastroFuncionario.DBComboBox3KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  key := #0;
end;

procedure TFrmCadastroFuncionario.DBComboBox5KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  key := #0;
end;

procedure TFrmCadastroFuncionario.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if ((PERMISSAO_LOCALPOSTOTRABALHO = '') or (PERMISSAO_LOCALPOSTOTRABALHO = 'R')) then
  begin
    ShowMessage('Voc� n�o possui permiss�o para acessar o cadastro de Posto/Local Trabalho!');
  end
  else
  begin
    DsCadastro.DataSet.FieldByName('IDPOSTO_TRABALHO').AsVariant := null;

    FrmPostoTrabalho := TFrmPostoTrabalho.create(Application);
    FrmPostoTrabalho.showmodal;
    FreeAndNil(FrmPostoTrabalho);

    DM.DsPostoTrabalho.DataSet.Close;
    DM.DsPostoTrabalho.DataSet.Open;
  end;
end;

procedure TFrmCadastroFuncionario.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  Frmcadastrocurso := TFrmcadastrocurso.create(Application);
  Frmcadastrocurso.showmodal;
  FreeAndNil(Frmcadastrocurso);

  DM.dscurso.DataSet.Close;
  DM.dscurso.DataSet.Open;

end;

procedure TFrmCadastroFuncionario.chconsultarclinicamedicaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarclinicamedica, cheditarclinicamedica, chdeletarclinicamedica, chinserirclinicamedica, chrelatorioclinicamedica,
    chtodasclinicamedica,
    'PERMISSAO_CLINICAMEDICA');
end;

procedure TFrmCadastroFuncionario.cheditarclinicamedicaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarclinicamedica, cheditarclinicamedica, chdeletarclinicamedica, chinserirclinicamedica, chrelatorioclinicamedica,
    chtodasclinicamedica,
    'PERMISSAO_CLINICAMEDICA');
end;

procedure TFrmCadastroFuncionario.chdeletarclinicamedicaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarclinicamedica, cheditarclinicamedica, chdeletarclinicamedica, chinserirclinicamedica, chrelatorioclinicamedica,
    chtodasclinicamedica,
    'PERMISSAO_CLINICAMEDICA');
end;

procedure TFrmCadastroFuncionario.chinserirclinicamedicaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarclinicamedica, cheditarclinicamedica, chdeletarclinicamedica, chinserirclinicamedica, chrelatorioclinicamedica,
    chtodasclinicamedica,
    'PERMISSAO_CLINICAMEDICA');
end;

procedure TFrmCadastroFuncionario.chtodasclinicamedicaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarclinicamedica, cheditarclinicamedica, chdeletarclinicamedica, chinserirclinicamedica, chrelatorioclinicamedica,
    chtodasclinicamedica);
end;

procedure TFrmCadastroFuncionario.chconsultarenfermagemClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarenfermagem, cheditarenfermagem, chdeletarenfermagem, chinserirenfermagem, chrelatorioenfermagem, chtodasenfermagem,
    'PERMISSAO_ENFERMAGEM');
end;

procedure TFrmCadastroFuncionario.cheditarenfermagemClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarenfermagem, cheditarenfermagem, chdeletarenfermagem, chinserirenfermagem, chrelatorioenfermagem, chtodasenfermagem,
    'PERMISSAO_ENFERMAGEM');
end;

procedure TFrmCadastroFuncionario.chdeletarenfermagemClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarenfermagem, cheditarenfermagem, chdeletarenfermagem, chinserirenfermagem, chrelatorioenfermagem, chtodasenfermagem,
    'PERMISSAO_ENFERMAGEM');
end;

procedure TFrmCadastroFuncionario.chinserirenfermagemClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarenfermagem, cheditarenfermagem, chdeletarenfermagem, chinserirenfermagem, chrelatorioenfermagem, chtodasenfermagem,
    'PERMISSAO_ENFERMAGEM');
end;

procedure TFrmCadastroFuncionario.chtodasenfermagemClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarenfermagem, cheditarenfermagem, chdeletarenfermagem, chinserirenfermagem, chrelatorioenfermagem, chtodasenfermagem);
end;

procedure TFrmCadastroFuncionario.chconsultarfarmaciaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarfarmacia, cheditarfarmacia, chdeletarfarmacia, chinserirfarmacia, chrelatoriofaramcia, chtodasfarmacia,
    'PERMISSAO_FARMACIA');
end;

procedure TFrmCadastroFuncionario.cheditarfarmaciaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarfarmacia, cheditarfarmacia, chdeletarfarmacia, chinserirfarmacia, chrelatoriofaramcia, chtodasfarmacia,
    'PERMISSAO_FARMACIA');
end;

procedure TFrmCadastroFuncionario.chdeletarfarmaciaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarfarmacia, cheditarfarmacia, chdeletarfarmacia, chinserirfarmacia, chrelatoriofaramcia, chtodasfarmacia,
    'PERMISSAO_FARMACIA');

end;

procedure TFrmCadastroFuncionario.chinserirfarmaciaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarfarmacia, cheditarfarmacia, chdeletarfarmacia, chinserirfarmacia, chrelatoriofaramcia, chtodasfarmacia,
    'PERMISSAO_FARMACIA');

end;

procedure TFrmCadastroFuncionario.chtodasfarmaciaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarfarmacia, cheditarfarmacia, chdeletarfarmacia, chinserirfarmacia, chrelatoriofaramcia, chtodasfarmacia);
end;

procedure TFrmCadastroFuncionario.chconsultarpsiquiatriaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpsiquiatria, cheditarpsiquiatria, chdeletarpsiquiatria, chinserirpsiquiatria, chrelatoriopsiquiatria, chtodaspsiquiatria,
    'PERMISSAO_PSIQUIATRIA');
end;

procedure TFrmCadastroFuncionario.cheditarpsiquiatriaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpsiquiatria, cheditarpsiquiatria, chdeletarpsiquiatria, chinserirpsiquiatria, chrelatoriopsiquiatria, chtodaspsiquiatria,
    'PERMISSAO_PSIQUIATRIA');
end;

procedure TFrmCadastroFuncionario.chdeletarpsiquiatriaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpsiquiatria, cheditarpsiquiatria, chdeletarpsiquiatria, chinserirpsiquiatria, chrelatoriopsiquiatria, chtodaspsiquiatria,
    'PERMISSAO_PSIQUIATRIA');
end;

procedure TFrmCadastroFuncionario.chinserirpsiquiatriaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpsiquiatria, cheditarpsiquiatria, chdeletarpsiquiatria, chinserirpsiquiatria, chrelatoriopsiquiatria, chtodaspsiquiatria,
    'PERMISSAO_PSIQUIATRIA');
end;

procedure TFrmCadastroFuncionario.chtodaspsiquiatriaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarpsiquiatria, cheditarpsiquiatria, chdeletarpsiquiatria, chinserirpsiquiatria, chrelatoriopsiquiatria, chtodaspsiquiatria);
end;

procedure TFrmCadastroFuncionario.chconsultarservicosocialClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarservicosocial, cheditarservicosocial, chdeletarservicosocial, chinserirservicosocial, chrelatorioservicosocial,
    chtodasservicosocial,
    'PERMISSAO_SERVICOSOCIAL');
end;

procedure TFrmCadastroFuncionario.cheditarservicosocialClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarservicosocial, cheditarservicosocial, chdeletarservicosocial, chinserirservicosocial, chrelatorioservicosocial,
    chtodasservicosocial,
    'PERMISSAO_SERVICOSOCIAL');
end;

procedure TFrmCadastroFuncionario.chdeletarservicosocialClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarservicosocial, cheditarservicosocial, chdeletarservicosocial, chinserirservicosocial, chrelatorioservicosocial,
    chtodasservicosocial,
    'PERMISSAO_SERVICOSOCIAL');
end;

procedure TFrmCadastroFuncionario.chinserirservicosocialClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarservicosocial, cheditarservicosocial, chdeletarservicosocial, chinserirservicosocial, chrelatorioservicosocial,
    chtodasservicosocial,
    'PERMISSAO_SERVICOSOCIAL');
end;

procedure TFrmCadastroFuncionario.chtodasservicosocialClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarservicosocial, cheditarservicosocial, chdeletarservicosocial, chinserirservicosocial, chrelatorioservicosocial,
    chtodasservicosocial);
end;

procedure TFrmCadastroFuncionario.chconsultarterapiaocupacionalClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarterapiaocupacional, cheditarterapiaocupacional, chdeletarterapiaocupacional, chinserirterapiaocupacional,
    chrelatorioterapiaocupacional,
    chtodasterapiaocupacional, 'PERMISSAO_TERAPIAOCUPACIONAL');
end;

procedure TFrmCadastroFuncionario.cheditarterapiaocupacionalClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarterapiaocupacional, cheditarterapiaocupacional, chdeletarterapiaocupacional, chinserirterapiaocupacional,
    chrelatorioterapiaocupacional,
    chtodasterapiaocupacional, 'PERMISSAO_TERAPIAOCUPACIONAL');
end;

procedure TFrmCadastroFuncionario.chdeletarterapiaocupacionalClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarterapiaocupacional, cheditarterapiaocupacional, chdeletarterapiaocupacional, chinserirterapiaocupacional,
    chrelatorioterapiaocupacional,
    chtodasterapiaocupacional, 'PERMISSAO_TERAPIAOCUPACIONAL');
end;

procedure TFrmCadastroFuncionario.chinserirterapiaocupacionalClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarterapiaocupacional, cheditarterapiaocupacional, chdeletarterapiaocupacional, chinserirterapiaocupacional,
    chrelatorioterapiaocupacional,
    chtodasterapiaocupacional, 'PERMISSAO_TERAPIAOCUPACIONAL');
end;

procedure TFrmCadastroFuncionario.chtodasterapiaocupacionalClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarterapiaocupacional, cheditarterapiaocupacional, chdeletarterapiaocupacional, chinserirterapiaocupacional,
    chrelatorioterapiaocupacional,
    chtodasterapiaocupacional);
end;

procedure TFrmCadastroFuncionario.chconsultarodontologiaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarodontologia, cheditarodontologia, chdeletarodontologia, chinserirodontologia, chrelatorioodontologia, chtodasodontologia,
    'PERMISSAO_ODONTOLOGIA');
end;

procedure TFrmCadastroFuncionario.cheditarodontologiaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarodontologia, cheditarodontologia, chdeletarodontologia, chinserirodontologia, chrelatorioodontologia, chtodasodontologia,
    'PERMISSAO_ODONTOLOGIA');
end;

procedure TFrmCadastroFuncionario.chdeletarodontologiaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarodontologia, cheditarodontologia, chdeletarodontologia, chinserirodontologia, chrelatorioodontologia, chtodasodontologia,
    'PERMISSAO_ODONTOLOGIA');
end;

procedure TFrmCadastroFuncionario.chinserirodontologiaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarodontologia, cheditarodontologia, chdeletarodontologia, chinserirodontologia, chrelatorioodontologia, chtodasodontologia,
    'PERMISSAO_ODONTOLOGIA');
end;

procedure TFrmCadastroFuncionario.chtodasodontologiaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarodontologia, cheditarodontologia, chdeletarodontologia, chinserirodontologia, chrelatorioodontologia, chtodasodontologia);
end;

procedure TFrmCadastroFuncionario.chconsultarpedagogiaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpedagogia, cheditarpedagogia, chdeletarpedagogia, chinserirpedagogia, chrelatoriopedagogia, chtodaspedagogia,
    'PERMISSAO_PEDAGOGIA');
end;

procedure TFrmCadastroFuncionario.cheditarpedagogiaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpedagogia, cheditarpedagogia, chdeletarpedagogia, chinserirpedagogia, chrelatoriopedagogia, chtodaspedagogia,
    'PERMISSAO_PEDAGOGIA');
end;

procedure TFrmCadastroFuncionario.chdeletarpedagogiaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpedagogia, cheditarpedagogia, chdeletarpedagogia, chinserirpedagogia, chrelatoriopedagogia, chtodaspedagogia,
    'PERMISSAO_PEDAGOGIA');
end;

procedure TFrmCadastroFuncionario.chinserirpedagogiaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpedagogia, cheditarpedagogia, chdeletarpedagogia, chinserirpedagogia, chrelatoriopedagogia, chtodaspedagogia,
    'PERMISSAO_PEDAGOGIA');
end;

procedure TFrmCadastroFuncionario.chtodaspedagogiaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarpedagogia, cheditarpedagogia, chdeletarpedagogia, chinserirpedagogia, chrelatoriopedagogia, chtodaspedagogia);
end;

procedure TFrmCadastroFuncionario.chconsultarpsicologiaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpsicologia, cheditarpsicologia, chdeletarpsicologia, chinserirpsicologia, chrelatoriopsicologia, chtodaspsicologia,
    'PERMISSAO_PSICOLOGIA');
end;

procedure TFrmCadastroFuncionario.cheditarpsicologiaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpsicologia, cheditarpsicologia, chdeletarpsicologia, chinserirpsicologia, chrelatoriopsicologia, chtodaspsicologia,
    'PERMISSAO_PSICOLOGIA');
end;

procedure TFrmCadastroFuncionario.chdeletarpsicologiaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpsicologia, cheditarpsicologia, chdeletarpsicologia, chinserirpsicologia, chrelatoriopsicologia, chtodaspsicologia,
    'PERMISSAO_PSICOLOGIA');
end;

procedure TFrmCadastroFuncionario.chinserirpsicologiaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpsicologia, cheditarpsicologia, chdeletarpsicologia, chinserirpsicologia, chrelatoriopsicologia, chtodaspsicologia,
    'PERMISSAO_PSICOLOGIA');
end;

procedure TFrmCadastroFuncionario.chtodaspsicologiaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarpsicologia, cheditarpsicologia, chdeletarpsicologia, chinserirpsicologia, chrelatoriopsicologia, chtodaspsicologia);
end;

procedure TFrmCadastroFuncionario.chconsultarsaudeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarsaude, cheditarsaude, chdeletarsaude, chinserirsaude, chrelatoriosaude, chtodassaude,
    'PERMISSAO_SAUDE');
end;

procedure TFrmCadastroFuncionario.cheditarsaudeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarsaude, cheditarsaude, chdeletarsaude, chinserirsaude, chrelatoriosaude, chtodassaude,
    'PERMISSAO_SAUDE');
end;

procedure TFrmCadastroFuncionario.chdeletarsaudeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarsaude, cheditarsaude, chdeletarsaude, chinserirsaude, chrelatoriosaude, chtodassaude,
    'PERMISSAO_SAUDE');
end;

procedure TFrmCadastroFuncionario.chinserirsaudeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarsaude, cheditarsaude, chdeletarsaude, chinserirsaude, chrelatoriosaude, chtodassaude,
    'PERMISSAO_SAUDE');
end;

procedure TFrmCadastroFuncionario.chtodassaudeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarsaude, cheditarsaude, chdeletarsaude, chinserirsaude, chrelatoriosaude, chtodassaude);
end;

procedure TFrmCadastroFuncionario.chrelatoriocadastroClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarcadastro, cheditarcadastro, chdeletarcadastro, chinserircadastro, chrelatoriocadastro, chtodascadastro,
    'PERMISSAO_CADASTRO');
end;

procedure TFrmCadastroFuncionario.chrelatorioconfereClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(CHConsultarConfere, CHEditarConfere, CHdeletarconfere, CHInserirConfere, chrelatorioconfere, CHTodasConfere,
    'PERMISSAO_CONFERE');
end;

procedure TFrmCadastroFuncionario.chrelatoriovisitanteClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarVisitante, chEditarVisitante, CHdeletarvisitante, chInserirVisitante, chrelatoriovisitante, chTodasVisitante,
    'PERMISSAO_VISITANTE');

end;

procedure TFrmCadastroFuncionario.chrelatoriotrabalhoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultartrabalho, cheditartrabalho, chdeletartrabalho, chinserirtrabalho, chrelatoriotrabalho, chtodastrabalho,
    'PERMISSAO_SETORTRABALHO');

end;

procedure TFrmCadastroFuncionario.chrelatorioeducacaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultareducacao, cheditareducacao, chdeletareducacao, chinserireducacao, chrelatorioeducacao, chtodaseducacao,
    'PERMISSAO_SETOREDUCACAO');

end;

procedure TFrmCadastroFuncionario.chrelatoriopsicossocialClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(CHConsultarPSICOSSOCIAL, CHEditarPSICOSSOCIAL, CHdeletarPSICOSSOCIAL, CHInserirPSICOSSOCIAL, chrelatoriopsicossocial, CHTodasPSICOSSOCIAL,
    'PERMISSAO_PSICOSSOCIAL');
end;

procedure TFrmCadastroFuncionario.chrelatorioenfermagemClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarenfermagem, cheditarenfermagem, chdeletarenfermagem, chinserirenfermagem, chrelatorioenfermagem, chtodasenfermagem,
    'PERMISSAO_ENFERMAGEM');
end;

procedure TFrmCadastroFuncionario.chrelatoriofaramciaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarfarmacia, cheditarfarmacia, chdeletarfarmacia, chinserirfarmacia, chrelatoriofaramcia, chtodasfarmacia,
    'PERMISSAO_FARMACIA');
end;

procedure TFrmCadastroFuncionario.chrelatoriopsiquiatriaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpsiquiatria, cheditarpsiquiatria, chdeletarpsiquiatria, chinserirpsiquiatria, chrelatoriopsiquiatria, chtodaspsiquiatria,
    'PERMISSAO_PSIQUIATRIA');
end;

procedure TFrmCadastroFuncionario.chrelatorioservicosocialClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarservicosocial, cheditarservicosocial, chdeletarservicosocial, chinserirservicosocial, chrelatorioservicosocial,
    chtodasservicosocial,
    'PERMISSAO_SERVICOSOCIAL');

end;

procedure TFrmCadastroFuncionario.chrelatorioterapiaocupacionalClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarterapiaocupacional, cheditarterapiaocupacional, chdeletarterapiaocupacional, chinserirterapiaocupacional,
    chrelatorioterapiaocupacional,
    chtodasterapiaocupacional, 'PERMISSAO_TERAPIAOCUPACIONAL');

end;

procedure TFrmCadastroFuncionario.chrelatoriojuridicoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(CHConsultarJURIDICA, CHEditarJURIDICA, CHdeletarJURIDICA, CHInserirJURIDICA, chrelatoriojuridico, CHTodasJURIDICA,
    'PERMISSAO_JURIDICA');
end;

procedure TFrmCadastroFuncionario.chrelatoriodisciplinaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultardisciplina, cheditardisciplina, chdeletardisciplina, chinserirdisciplina, chrelatoriodisciplina, chtodasdisciplina,
    'PERMISSAO_DISCIPLINA');
end;

procedure TFrmCadastroFuncionario.chrelatorioclinicamedicaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarclinicamedica, cheditarclinicamedica, chdeletarclinicamedica, chinserirclinicamedica, chrelatorioclinicamedica,
    chtodasclinicamedica,
    'PERMISSAO_CLINICAMEDICA');

end;

procedure TFrmCadastroFuncionario.chrelatorioodontologiaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarodontologia, cheditarodontologia, chdeletarodontologia, chinserirodontologia, chrelatorioodontologia, chtodasodontologia,
    'PERMISSAO_ODONTOLOGIA');
end;

procedure TFrmCadastroFuncionario.chrelatoriopedagogiaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpedagogia, cheditarpedagogia, chdeletarpedagogia, chinserirpedagogia, chrelatoriopedagogia, chtodaspedagogia,
    'PERMISSAO_PEDAGOGIA');
end;

procedure TFrmCadastroFuncionario.chrelatoriopsicologiaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarpsicologia, cheditarpsicologia, chdeletarpsicologia, chinserirpsicologia, chrelatoriopsicologia, chtodaspsicologia,
    'PERMISSAO_PSICOLOGIA');
end;

procedure TFrmCadastroFuncionario.chrelatoriosaudeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarsaude, cheditarsaude, chdeletarsaude, chinserirsaude, chrelatoriosaude, chtodassaude,
    'PERMISSAO_SAUDE');
end;

procedure TFrmCadastroFuncionario.chconsultarinteligenciaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarinteligencia, cheditarinteligencia, chdeletarinteligencia, chinseririnteligencia, chrelatoriointeligencia, chtodasinteligencia,
    'PERMISSAO_INTELIGENCIA');
end;

procedure TFrmCadastroFuncionario.cheditarinteligenciaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarinteligencia, cheditarinteligencia, chdeletarinteligencia, chinseririnteligencia, chrelatoriointeligencia, chtodasinteligencia,
    'PERMISSAO_INTELIGENCIA');
end;

procedure TFrmCadastroFuncionario.chdeletarinteligenciaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarinteligencia, cheditarinteligencia, chdeletarinteligencia, chinseririnteligencia, chrelatoriointeligencia, chtodasinteligencia,
    'PERMISSAO_INTELIGENCIA');
end;

procedure TFrmCadastroFuncionario.chinseririnteligenciaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarinteligencia, cheditarinteligencia, chdeletarinteligencia, chinseririnteligencia, chrelatoriointeligencia, chtodasinteligencia,
    'PERMISSAO_INTELIGENCIA');
end;

procedure TFrmCadastroFuncionario.chrelatoriointeligenciaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarinteligencia, cheditarinteligencia, chdeletarinteligencia, chinseririnteligencia, chrelatoriointeligencia, chtodasinteligencia,
    'PERMISSAO_INTELIGENCIA');
end;

procedure TFrmCadastroFuncionario.chtodasinteligenciaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarinteligencia, cheditarinteligencia, chdeletarinteligencia, chinseririnteligencia, chrelatoriointeligencia,
    chtodasinteligencia);
end;

procedure TFrmCadastroFuncionario.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
//  dspermissaointeligencia.DataSet.Close;
//  SQLpermissaointeligencia.Params[0].Value := DsCadastro.DataSet.fieldbyname('id_funcionario').AsInteger;
//  dspermissaointeligencia.DataSet.Open;

//  if dspermissaointeligencia.DataSet.RecordCount > 0 then
//    GroupBoxinteligencia.Visible := True
 // else
 //   GroupBoxinteligencia.Visible := False;

end;

procedure TFrmCadastroFuncionario.SalvarClick(Sender: TObject);
begin

  if Trim(DBEdit2.Text) = '' then
  begin
    ShowMessage('O campo Nome � obrigat�rio!');

    PageControlFuncionario.ActivePage := TabPrincipal;

    if DBEdit2.CanFocus then
      DBEdit2.SetFocus;

    exit;
  end;

  if DBComboBox2.ItemIndex < 0 then
  begin
    ShowMessage('O campo Cargo � obrigat�rio!');

    PageControlFuncionario.ActivePage := TabPrincipal;

    if DBComboBox2.CanFocus then
      DBComboBox2.SetFocus;

    exit;
  end;

  if (DBLookupComboBox2.KeyValue <= 0) then
  begin
    ShowMessage('O campo "Lota��o Atual / Unidade de Acesso ao Sistema" � obrigat�rio!');

    PageControlFuncionario.ActivePage := TabPrincipal;

    if DBLookupComboBox2.CanFocus then
      DBLookupComboBox2.SetFocus;

    exit;
  end;

  if Trim(DBEdit7.Text) = '' then
  begin
    ShowMessage('O campo Login � obrigat�rio!');

    PageControlFuncionario.ActivePage := TabPermissao;

    if DBEdit7.CanFocus then
      DBEdit7.SetFocus;

    exit;
  end;

  if Trim(DBEdit4.Text) = '' then
  begin
    ShowMessage('O campo Senha � obrigat�rio!');

    PageControlFuncionario.ActivePage := TabPermissao;

    if DBEdit4.CanFocus then
      DBEdit4.SetFocus;

    exit;
  end;

  if ((DBLookupPerfilUsuario.KeyValue <= 0) and (DEFINE_PERFIL_USUARIO = 'S')) then
  begin
    ShowMessage('O campo Perfil de Usu�rio � obrigat�rio!');

    PageControlFuncionario.ActivePage := TabPermissao;

    if DBLookupPerfilUsuario.CanFocus then
      DBLookupPerfilUsuario.SetFocus;

    exit;
  end;

  if DBEdit4.Text <> EdtConfirmaSenha.Text then
  begin
    ShowMessage('As senhas digitadas n�o conferem!');

    PageControlFuncionario.ActivePage := TabPermissao;

    if DBEdit4.CanFocus then
      DBEdit4.SetFocus;

    Exit;
  end
  else
  begin
    DsCadastro.DataSet.FieldByName('SENHA').AsString := Senha(DsCadastro.DataSet.FieldByName('SENHA').AsString);
  end;

  if DBRadioGroupVISUALIZA_OUTRAS_UP.ItemIndex = -1 then
    DsCadastro.DataSet.FieldByName('VISUALIZA_OUTRAS_UP').AsString := 'N';

  if DBRadioGroupAutorizadoWeb.ItemIndex = -1 then
    DsCadastro.DataSet.FieldByName('AUTORIZADO_WEB').AsString := 'N';

  if DBRadioGroupAutorizadoDelphi.ItemIndex = -1 then
    DsCadastro.DataSet.FieldByName('AUTORIZADO_DELPHI').AsString := 'N';

  if DBrgEntradaVisitante.ItemIndex = -1 then
    DsCadastro.DataSet.FieldByName('PERMISSAO_ENTRADAVISITANTE').AsString := 'N';

  if DbrDefinePerfilUsuario.ItemIndex = -1 then
    DsCadastro.DataSet.FieldByName('DEFINE_PERFIL_USUARIO').AsString := 'N';

  if DbrConcedePermissaoIndividual.ItemIndex = -1 then
    DsCadastro.DataSet.FieldByName('CONCEDE_PERMISSAO_INDIVIDUAL').AsString := 'N';

  inherited;

  if EDITANDO_SEUS_DADOS_DE_USUARIO = False then
  begin
    PageControlModeloCadastro.ActivePageIndex := 1;
    if EditLocalizar.CanFocus then
      EditLocalizar.SetFocus;
  end;


end;

procedure TFrmCadastroFuncionario.EditarClick(Sender: TObject);
begin

  inherited;

  DsCadastro.DataSet.FieldByName('SENHA').AsString := Senha(DsCadastro.DataSet.FieldByName('SENHA').AsString);
  EdtConfirmaSenha.Text := DsCadastro.DataSet.FieldByName('SENHA').AsString;

  PageControlFuncionario.ActivePage := TabPrincipal;
  PageControlPermissao.ActivePage := TabGeral;

end;

procedure TFrmCadastroFuncionario.chconsultararmasClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultararmas, cheditararmas, chdeletararmas, chinserirarmas, chrelatorioarmas, chtodasarmas,
    'PERMISSAO_ARMAS');
end;

procedure TFrmCadastroFuncionario.cheditararmasClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultararmas, cheditararmas, chdeletararmas, chinserirarmas, chrelatorioarmas, chtodasarmas,
    'PERMISSAO_ARMAS');
end;

procedure TFrmCadastroFuncionario.chdeletararmasClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultararmas, cheditararmas, chdeletararmas, chinserirarmas, chrelatorioarmas, chtodasarmas,
    'PERMISSAO_ARMAS');
end;

procedure TFrmCadastroFuncionario.chinserirarmasClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultararmas, cheditararmas, chdeletararmas, chinserirarmas, chrelatorioarmas, chtodasarmas,
    'PERMISSAO_ARMAS');
end;

procedure TFrmCadastroFuncionario.chrelatorioarmasClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultararmas, cheditararmas, chdeletararmas, chinserirarmas, chrelatorioarmas, chtodasarmas,
    'PERMISSAO_ARMAS');
end;

procedure TFrmCadastroFuncionario.chtodasarmasClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultararmas, cheditararmas, chdeletararmas, chinserirarmas, chrelatorioarmas, chtodasarmas);

end;

procedure TFrmCadastroFuncionario.chconsultarmonitoramentoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarmonitoramento, cheditarmonitoramento, chdeletarmonitoramento, chinserirmonitoramento, chrelatoriomonitoramento,
    chtodasmonitoramento, 'PERMISSAO_MONITORAMENTO');
end;

procedure TFrmCadastroFuncionario.cheditarmonitoramentoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarmonitoramento, cheditarmonitoramento, chdeletarmonitoramento, chinserirmonitoramento, chrelatoriomonitoramento,
    chtodasmonitoramento, 'PERMISSAO_MONITORAMENTO');
end;

procedure TFrmCadastroFuncionario.chdeletarmonitoramentoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarmonitoramento, cheditarmonitoramento, chdeletarmonitoramento, chinserirmonitoramento, chrelatoriomonitoramento,
    chtodasmonitoramento, 'PERMISSAO_MONITORAMENTO');
end;

procedure TFrmCadastroFuncionario.chinserirmonitoramentoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarmonitoramento, cheditarmonitoramento, chdeletarmonitoramento, chinserirmonitoramento, chrelatoriomonitoramento,
    chtodasmonitoramento, 'PERMISSAO_MONITORAMENTO');
end;

procedure TFrmCadastroFuncionario.chrelatoriomonitoramentoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chconsultarmonitoramento, cheditarmonitoramento, chdeletarmonitoramento, chinserirmonitoramento, chrelatoriomonitoramento,
    chtodasmonitoramento, 'PERMISSAO_MONITORAMENTO');
end;

procedure TFrmCadastroFuncionario.chtodasmonitoramentoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chconsultarmonitoramento, cheditarmonitoramento, chdeletarmonitoramento, chinserirmonitoramento, chrelatoriomonitoramento,
    chtodasmonitoramento);
end;

procedure TFrmCadastroFuncionario.chConsultaOcorrenciaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoOcorrencia(chconsultaocorrencia, cheditaocorrencia, chdeletaocorrencia, chinsereocorrencia, chrelatorioocorrencia, chDespachoOcorrencia, chtodasocorrencia,
    'PERMISSAO_OCORRENCIA');

end;

procedure TFrmCadastroFuncionario.chEditaOcorrenciaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoOcorrencia(chconsultaocorrencia, cheditaocorrencia, chdeletaocorrencia, chinsereocorrencia, chrelatorioocorrencia, chDespachoOcorrencia, chtodasocorrencia,
    'PERMISSAO_OCORRENCIA');

end;

procedure TFrmCadastroFuncionario.chDeletaOcorrenciaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoOcorrencia(chconsultaocorrencia, cheditaocorrencia, chdeletaocorrencia, chinsereocorrencia, chrelatorioocorrencia, chDespachoOcorrencia, chtodasocorrencia,
    'PERMISSAO_OCORRENCIA');

end;

procedure TFrmCadastroFuncionario.chInsereOcorrenciaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoOcorrencia(chconsultaocorrencia, cheditaocorrencia, chdeletaocorrencia, chinsereocorrencia, chrelatorioocorrencia, chDespachoOcorrencia, chtodasocorrencia,
    'PERMISSAO_OCORRENCIA');

end;

procedure TFrmCadastroFuncionario.chRelatorioOcorrenciaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoOcorrencia(chconsultaocorrencia, cheditaocorrencia, chdeletaocorrencia, chinsereocorrencia, chrelatorioocorrencia, chDespachoOcorrencia, chtodasocorrencia,
    'PERMISSAO_OCORRENCIA');

end;

procedure TFrmCadastroFuncionario.chDespachoOcorrenciaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoOcorrencia(chconsultaocorrencia, cheditaocorrencia, chdeletaocorrencia, chinsereocorrencia, chrelatorioocorrencia, chDespachoOcorrencia, chtodasocorrencia,
    'PERMISSAO_OCORRENCIA');

end;

procedure TFrmCadastroFuncionario.chTodasOcorrenciaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodasOcorrencia(chconsultaocorrencia, cheditaocorrencia, chdeletaocorrencia, chinsereocorrencia, chrelatorioocorrencia, chDespachoOcorrencia, chtodasocorrencia);

end;

procedure TFrmCadastroFuncionario.chConsultarConsDisciplinarClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarConsDisciplinar, chEditarConsDisciplinar, chDeletarConsDisciplinar, chInserirConsDisciplinar, chRelatorioConsDisciplinar, chTodasConsDisciplinar,
    'PERMISSAO_CONSELHODISCIPLINAR');
end;

procedure TFrmCadastroFuncionario.chEditarConsDisciplinarClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarConsDisciplinar, chEditarConsDisciplinar, chDeletarConsDisciplinar, chInserirConsDisciplinar, chRelatorioConsDisciplinar, chTodasConsDisciplinar,
    'PERMISSAO_CONSELHODISCIPLINAR');
end;

procedure TFrmCadastroFuncionario.chDeletarConsDisciplinarClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarConsDisciplinar, chEditarConsDisciplinar, chDeletarConsDisciplinar, chInserirConsDisciplinar, chRelatorioConsDisciplinar, chTodasConsDisciplinar,
    'PERMISSAO_CONSELHODISCIPLINAR');
end;

procedure TFrmCadastroFuncionario.chInserirConsDisciplinarClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarConsDisciplinar, chEditarConsDisciplinar, chDeletarConsDisciplinar, chInserirConsDisciplinar, chRelatorioConsDisciplinar, chTodasConsDisciplinar,
    'PERMISSAO_CONSELHODISCIPLINAR');
end;

procedure TFrmCadastroFuncionario.chRelatorioConsDisciplinarClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarConsDisciplinar, chEditarConsDisciplinar, chDeletarConsDisciplinar, chInserirConsDisciplinar, chRelatorioConsDisciplinar, chTodasConsDisciplinar,
    'PERMISSAO_CONSELHODISCIPLINAR');
end;

procedure TFrmCadastroFuncionario.chTodasConsDisciplinarClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chConsultarConsDisciplinar, chEditarConsDisciplinar, chDeletarConsDisciplinar, chInserirConsDisciplinar, chRelatorioConsDisciplinar, chTodasConsDisciplinar);
end;

procedure TFrmCadastroFuncionario.chConsultarTransferenciaInternoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarTransferenciaInterno, chEditarTransferenciaInterno, chDeletarTransferenciaInterno, chInserirTransferenciaInterno, chRelatorioTransferenciaInterno, chTodasTransferenciaInterno,
    'PERMISSAO_TRANSFERENCIAINTERNO');
end;

procedure TFrmCadastroFuncionario.chEditarTransferenciaInternoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarTransferenciaInterno, chEditarTransferenciaInterno, chDeletarTransferenciaInterno, chInserirTransferenciaInterno, chRelatorioTransferenciaInterno, chTodasTransferenciaInterno,
    'PERMISSAO_TRANSFERENCIAINTERNO');
end;

procedure TFrmCadastroFuncionario.chDeletarTransferenciaInternoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarTransferenciaInterno, chEditarTransferenciaInterno, chDeletarTransferenciaInterno, chInserirTransferenciaInterno, chRelatorioTransferenciaInterno, chTodasTransferenciaInterno,
    'PERMISSAO_TRANSFERENCIAINTERNO');
end;

procedure TFrmCadastroFuncionario.chInserirTransferenciaInternoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarTransferenciaInterno, chEditarTransferenciaInterno, chDeletarTransferenciaInterno, chInserirTransferenciaInterno, chRelatorioTransferenciaInterno, chTodasTransferenciaInterno,
    'PERMISSAO_TRANSFERENCIAINTERNO');
end;

procedure TFrmCadastroFuncionario.chRelatorioTransferenciaInternoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarTransferenciaInterno, chEditarTransferenciaInterno, chDeletarTransferenciaInterno, chInserirTransferenciaInterno, chRelatorioTransferenciaInterno, chTodasTransferenciaInterno,
    'PERMISSAO_TRANSFERENCIAINTERNO');
end;

procedure TFrmCadastroFuncionario.chTodasTransferenciaInternoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chConsultarTransferenciaInterno, chEditarTransferenciaInterno, chDeletarTransferenciaInterno, chInserirTransferenciaInterno, chRelatorioTransferenciaInterno, chTodasTransferenciaInterno);
end;

procedure TFrmCadastroFuncionario.ChConsultarMudancaCelaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarMudancaCela, ChEditarMudancaCela, ChDeletarMudancaCela, ChInserirMudancaCela, ChRelatorioMudancaCela, ChTodasMudancaCela,
    'PERMISSAO_MUDANCACELA');
end;

procedure TFrmCadastroFuncionario.ChEditarMudancaCelaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarMudancaCela, ChEditarMudancaCela, ChDeletarMudancaCela, ChInserirMudancaCela, ChRelatorioMudancaCela, ChTodasMudancaCela,
    'PERMISSAO_MUDANCACELA');
end;

procedure TFrmCadastroFuncionario.ChDeletarMudancaCelaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarMudancaCela, ChEditarMudancaCela, ChDeletarMudancaCela, ChInserirMudancaCela, ChRelatorioMudancaCela, ChTodasMudancaCela,
    'PERMISSAO_MUDANCACELA');
end;

procedure TFrmCadastroFuncionario.ChInserirMudancaCelaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarMudancaCela, ChEditarMudancaCela, ChDeletarMudancaCela, ChInserirMudancaCela, ChRelatorioMudancaCela, ChTodasMudancaCela,
    'PERMISSAO_MUDANCACELA');
end;

procedure TFrmCadastroFuncionario.ChRelatorioMudancaCelaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarMudancaCela, ChEditarMudancaCela, ChDeletarMudancaCela, ChInserirMudancaCela, ChRelatorioMudancaCela, ChTodasMudancaCela,
    'PERMISSAO_MUDANCACELA');
end;

procedure TFrmCadastroFuncionario.ChTodasMudancaCelaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarMudancaCela, ChEditarMudancaCela, ChDeletarMudancaCela, ChInserirMudancaCela, ChRelatorioMudancaCela, ChTodasMudancaCela);
end;

procedure TFrmCadastroFuncionario.ChConsultarSaidaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSaidao, ChEditarSaidao, ChDeletarSaidao, ChInserirSaidao, ChRelatorioSaidao, ChTodasSaidao,
    'PERMISSAO_SAIDAO');
end;

procedure TFrmCadastroFuncionario.ChEditarSaidaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSaidao, ChEditarSaidao, ChDeletarSaidao, ChInserirSaidao, ChRelatorioSaidao, ChTodasSaidao,
    'PERMISSAO_SAIDAO');
end;

procedure TFrmCadastroFuncionario.ChDeletarSaidaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSaidao, ChEditarSaidao, ChDeletarSaidao, ChInserirSaidao, ChRelatorioSaidao, ChTodasSaidao,
    'PERMISSAO_SAIDAO');
end;

procedure TFrmCadastroFuncionario.ChInserirSaidaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSaidao, ChEditarSaidao, ChDeletarSaidao, ChInserirSaidao, ChRelatorioSaidao, ChTodasSaidao,
    'PERMISSAO_SAIDAO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioSaidaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSaidao, ChEditarSaidao, ChDeletarSaidao, ChInserirSaidao, ChRelatorioSaidao, ChTodasSaidao,
    'PERMISSAO_SAIDAO');
end;

procedure TFrmCadastroFuncionario.ChTodasSaidaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarSaidao, ChEditarSaidao, ChDeletarSaidao, ChInserirSaidao, ChRelatorioSaidao, ChTodasSaidao);
end;

procedure TFrmCadastroFuncionario.ChConsultarCirculacaoInternoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCirculacaoInterno, ChEditarCirculacaoInterno, ChDeletarCirculacaoInterno, ChInserirCirculacaoInterno, ChRelatorioCirculacaoInterno, ChTodasCirculacaoInterno,
    'PERMISSAO_CIRCULACAOINTERNO');
end;

procedure TFrmCadastroFuncionario.ChEditarCirculacaoInternoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCirculacaoInterno, ChEditarCirculacaoInterno, ChDeletarCirculacaoInterno, ChInserirCirculacaoInterno, ChRelatorioCirculacaoInterno, ChTodasCirculacaoInterno,
    'PERMISSAO_CIRCULACAOINTERNO');
end;

procedure TFrmCadastroFuncionario.ChDeletarCirculacaoInternoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCirculacaoInterno, ChEditarCirculacaoInterno, ChDeletarCirculacaoInterno, ChInserirCirculacaoInterno, ChRelatorioCirculacaoInterno, ChTodasCirculacaoInterno,
    'PERMISSAO_CIRCULACAOINTERNO');
end;

procedure TFrmCadastroFuncionario.ChInserirCirculacaoInternoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCirculacaoInterno, ChEditarCirculacaoInterno, ChDeletarCirculacaoInterno, ChInserirCirculacaoInterno, ChRelatorioCirculacaoInterno, ChTodasCirculacaoInterno,
    'PERMISSAO_CIRCULACAOINTERNO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioCirculacaoInternoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCirculacaoInterno, ChEditarCirculacaoInterno, ChDeletarCirculacaoInterno, ChInserirCirculacaoInterno, ChRelatorioCirculacaoInterno, ChTodasCirculacaoInterno,
    'PERMISSAO_CIRCULACAOINTERNO');
end;

procedure TFrmCadastroFuncionario.ChTodasCirculacaoInternoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarCirculacaoInterno, ChEditarCirculacaoInterno, ChDeletarCirculacaoInterno, ChInserirCirculacaoInterno, ChRelatorioCirculacaoInterno, ChTodasCirculacaoInterno);
end;

procedure TFrmCadastroFuncionario.ChConsultarMovimentoSemiAbertoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarMovimentoSemiAberto, ChEditarMovimentoSemiAberto, ChDeletarMovimentoSemiAberto, ChInserirMovimentoSemiAberto, ChRelatorioMovimentoSemiAberto, ChTodasMovimentoSemiAberto,
    'PERMISSAO_MOVIMENTOSEMIABERTO');
end;

procedure TFrmCadastroFuncionario.ChEditarMovimentoSemiAbertoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarMovimentoSemiAberto, ChEditarMovimentoSemiAberto, ChDeletarMovimentoSemiAberto, ChInserirMovimentoSemiAberto, ChRelatorioMovimentoSemiAberto, ChTodasMovimentoSemiAberto,
    'PERMISSAO_MOVIMENTOSEMIABERTO');
end;

procedure TFrmCadastroFuncionario.ChDeletarMovimentoSemiAbertoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarMovimentoSemiAberto, ChEditarMovimentoSemiAberto, ChDeletarMovimentoSemiAberto, ChInserirMovimentoSemiAberto, ChRelatorioMovimentoSemiAberto, ChTodasMovimentoSemiAberto,
    'PERMISSAO_MOVIMENTOSEMIABERTO');
end;

procedure TFrmCadastroFuncionario.ChInserirMovimentoSemiAbertoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarMovimentoSemiAberto, ChEditarMovimentoSemiAberto, ChDeletarMovimentoSemiAberto, ChInserirMovimentoSemiAberto, ChRelatorioMovimentoSemiAberto, ChTodasMovimentoSemiAberto,
    'PERMISSAO_MOVIMENTOSEMIABERTO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioMovimentoSemiAbertoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarMovimentoSemiAberto, ChEditarMovimentoSemiAberto, ChDeletarMovimentoSemiAberto, ChInserirMovimentoSemiAberto, ChRelatorioMovimentoSemiAberto, ChTodasMovimentoSemiAberto,
    'PERMISSAO_MOVIMENTOSEMIABERTO');
end;

procedure TFrmCadastroFuncionario.ChTodasMovimentoSemiAbertoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarMovimentoSemiAberto, ChEditarMovimentoSemiAberto, ChDeletarMovimentoSemiAberto, ChInserirMovimentoSemiAberto, ChRelatorioMovimentoSemiAberto, ChTodasMovimentoSemiAberto);
end;

procedure TFrmCadastroFuncionario.ChConsultarFuncionarioClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarFuncionario, chEditarFuncionario, chDeletarFuncionario, chInserirFuncionario, chRelatorioFuncionario, chTodasFuncionario,
    'PERMISSAO_FUNCIONARIO');
end;

procedure TFrmCadastroFuncionario.ChEditarFuncionarioClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarFuncionario, chEditarFuncionario, chDeletarFuncionario, chInserirFuncionario, chRelatorioFuncionario, chTodasFuncionario,
    'PERMISSAO_FUNCIONARIO');
end;

procedure TFrmCadastroFuncionario.ChDeletarFuncionarioClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarFuncionario, chEditarFuncionario, chDeletarFuncionario, chInserirFuncionario, chRelatorioFuncionario, chTodasFuncionario,
    'PERMISSAO_FUNCIONARIO');
end;

procedure TFrmCadastroFuncionario.ChInserirFuncionarioClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarFuncionario, chEditarFuncionario, chDeletarFuncionario, chInserirFuncionario, chRelatorioFuncionario, chTodasFuncionario,
    'PERMISSAO_FUNCIONARIO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioFuncionarioClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarFuncionario, chEditarFuncionario, chDeletarFuncionario, chInserirFuncionario, chRelatorioFuncionario, chTodasFuncionario,
    'PERMISSAO_FUNCIONARIO');
end;

procedure TFrmCadastroFuncionario.ChTodasFuncionarioClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chConsultarFuncionario, chEditarFuncionario, chDeletarFuncionario, chInserirFuncionario, chRelatorioFuncionario, chTodasFuncionario);
end;

procedure TFrmCadastroFuncionario.ChConsultarFuncaoFuncionarioClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarFuncaoFuncionario, chEditarFuncaoFuncionario, chDeletarFuncaoFuncionario, chInserirFuncaoFuncionario, chRelatorioFuncaoFuncionario, chTodasFuncaoFuncionario,
    'PERMISSAO_FUNCAOFUNCIONARIO');
end;

procedure TFrmCadastroFuncionario.ChEditarFuncaoFuncionarioClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarFuncaoFuncionario, chEditarFuncaoFuncionario, chDeletarFuncaoFuncionario, chInserirFuncaoFuncionario, chRelatorioFuncaoFuncionario, chTodasFuncaoFuncionario,
    'PERMISSAO_FUNCAOFUNCIONARIO');
end;

procedure TFrmCadastroFuncionario.ChDeletarFuncaoFuncionarioClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarFuncaoFuncionario, chEditarFuncaoFuncionario, chDeletarFuncaoFuncionario, chInserirFuncaoFuncionario, chRelatorioFuncaoFuncionario, chTodasFuncaoFuncionario,
    'PERMISSAO_FUNCAOFUNCIONARIO');
end;

procedure TFrmCadastroFuncionario.ChInserirFuncaoFuncionarioClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarFuncaoFuncionario, chEditarFuncaoFuncionario, chDeletarFuncaoFuncionario, chInserirFuncaoFuncionario, chRelatorioFuncaoFuncionario, chTodasFuncaoFuncionario,
    'PERMISSAO_FUNCAOFUNCIONARIO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioFuncaoFuncionarioClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarFuncaoFuncionario, chEditarFuncaoFuncionario, chDeletarFuncaoFuncionario, chInserirFuncaoFuncionario, chRelatorioFuncaoFuncionario, chTodasFuncaoFuncionario,
    'PERMISSAO_FUNCAOFUNCIONARIO');
end;

procedure TFrmCadastroFuncionario.ChTodasFuncaoFuncionarioClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chConsultarFuncaoFuncionario, chEditarFuncaoFuncionario, chDeletarFuncaoFuncionario, chInserirFuncaoFuncionario, chRelatorioFuncaoFuncionario, chTodasFuncaoFuncionario);
end;

procedure TFrmCadastroFuncionario.ChConsultarUnidadePenalClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarUnidadePenal, chEditarUnidadePenal, chDeletarUnidadePenal, chInserirUnidadePenal, chRelatorioUnidadePenal, chTodasUnidadePenal,
    'PERMISSAO_UNIDADEPENAL');
end;

procedure TFrmCadastroFuncionario.ChEditarUnidadePenalClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarUnidadePenal, chEditarUnidadePenal, chDeletarUnidadePenal, chInserirUnidadePenal, chRelatorioUnidadePenal, chTodasUnidadePenal,
    'PERMISSAO_UNIDADEPENAL');
end;

procedure TFrmCadastroFuncionario.ChDeletarUnidadePenalClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarUnidadePenal, chEditarUnidadePenal, chDeletarUnidadePenal, chInserirUnidadePenal, chRelatorioUnidadePenal, chTodasUnidadePenal,
    'PERMISSAO_UNIDADEPENAL');
end;

procedure TFrmCadastroFuncionario.ChInserirUnidadePenalClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarUnidadePenal, chEditarUnidadePenal, chDeletarUnidadePenal, chInserirUnidadePenal, chRelatorioUnidadePenal, chTodasUnidadePenal,
    'PERMISSAO_UNIDADEPENAL');
end;

procedure TFrmCadastroFuncionario.ChRelatorioUnidadePenalClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarUnidadePenal, chEditarUnidadePenal, chDeletarUnidadePenal, chInserirUnidadePenal, chRelatorioUnidadePenal, chTodasUnidadePenal,
    'PERMISSAO_UNIDADEPENAL');
end;

procedure TFrmCadastroFuncionario.ChTodasUnidadePenalClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chConsultarUnidadePenal, chEditarUnidadePenal, chDeletarUnidadePenal, chInserirUnidadePenal, chRelatorioUnidadePenal, chTodasUnidadePenal);
end;

procedure TFrmCadastroFuncionario.ChConsultarHorarioFuncionarioClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarHorarioFuncionario, chEditarHorarioFuncionario, chDeletarHorarioFuncionario, chInserirHorarioFuncionario, chRelatorioHorarioFuncionario, chTodasHorarioFuncionario,
    'PERMISSAO_HORARIOFUNCIONARIO');
end;

procedure TFrmCadastroFuncionario.ChEditarHorarioFuncionarioClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarHorarioFuncionario, chEditarHorarioFuncionario, chDeletarHorarioFuncionario, chInserirHorarioFuncionario, chRelatorioHorarioFuncionario, chTodasHorarioFuncionario,
    'PERMISSAO_HORARIOFUNCIONARIO');
end;

procedure TFrmCadastroFuncionario.ChDeletarHorarioFuncionarioClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarHorarioFuncionario, chEditarHorarioFuncionario, chDeletarHorarioFuncionario, chInserirHorarioFuncionario, chRelatorioHorarioFuncionario, chTodasHorarioFuncionario,
    'PERMISSAO_HORARIOFUNCIONARIO');
end;

procedure TFrmCadastroFuncionario.ChInserirHorarioFuncionarioClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarHorarioFuncionario, chEditarHorarioFuncionario, chDeletarHorarioFuncionario, chInserirHorarioFuncionario, chRelatorioHorarioFuncionario, chTodasHorarioFuncionario,
    'PERMISSAO_HORARIOFUNCIONARIO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioHorarioFuncionarioClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarHorarioFuncionario, chEditarHorarioFuncionario, chDeletarHorarioFuncionario, chInserirHorarioFuncionario, chRelatorioHorarioFuncionario, chTodasHorarioFuncionario,
    'PERMISSAO_HORARIOFUNCIONARIO');
end;

procedure TFrmCadastroFuncionario.ChTodasHorarioFuncionarioClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chConsultarHorarioFuncionario, chEditarHorarioFuncionario, chDeletarHorarioFuncionario, chInserirHorarioFuncionario, chRelatorioHorarioFuncionario, chTodasHorarioFuncionario);
end;

procedure TFrmCadastroFuncionario.ChConsultarPadraoSistemaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarPadraoSistema, chEditarPadraoSistema, chDeletarPadraoSistema, chInserirPadraoSistema, chRelatorioPadraoSistema, chTodasPadraoSistema,
    'PERMISSAO_PADRAOSISTEMA');
end;

procedure TFrmCadastroFuncionario.ChEditarPadraoSistemaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarPadraoSistema, chEditarPadraoSistema, chDeletarPadraoSistema, chInserirPadraoSistema, chRelatorioPadraoSistema, chTodasPadraoSistema,
    'PERMISSAO_PADRAOSISTEMA');
end;

procedure TFrmCadastroFuncionario.ChDeletarPadraoSistemaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarPadraoSistema, chEditarPadraoSistema, chDeletarPadraoSistema, chInserirPadraoSistema, chRelatorioPadraoSistema, chTodasPadraoSistema,
    'PERMISSAO_PADRAOSISTEMA');
end;

procedure TFrmCadastroFuncionario.ChInserirPadraoSistemaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarPadraoSistema, chEditarPadraoSistema, chDeletarPadraoSistema, chInserirPadraoSistema, chRelatorioPadraoSistema, chTodasPadraoSistema,
    'PERMISSAO_PADRAOSISTEMA');
end;

procedure TFrmCadastroFuncionario.ChRelatorioPadraoSistemaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarPadraoSistema, chEditarPadraoSistema, chDeletarPadraoSistema, chInserirPadraoSistema, chRelatorioPadraoSistema, chTodasPadraoSistema,
    'PERMISSAO_PADRAOSISTEMA');
end;

procedure TFrmCadastroFuncionario.ChTodasPadraoSistemaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chConsultarPadraoSistema, chEditarPadraoSistema, chDeletarPadraoSistema, chInserirPadraoSistema, chRelatorioPadraoSistema, chTodasPadraoSistema);
end;

procedure TFrmCadastroFuncionario.ChConsultarEquipeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarEquipe, chEditarEquipe, chDeletarEquipe, chInserirEquipe, chRelatorioEquipe, chTodasEquipe,
    'PERMISSAO_EQUIPE');
end;

procedure TFrmCadastroFuncionario.ChEditarEquipeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarEquipe, chEditarEquipe, chDeletarEquipe, chInserirEquipe, chRelatorioEquipe, chTodasEquipe,
    'PERMISSAO_EQUIPE');
end;

procedure TFrmCadastroFuncionario.ChDeletarEquipeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarEquipe, chEditarEquipe, chDeletarEquipe, chInserirEquipe, chRelatorioEquipe, chTodasEquipe,
    'PERMISSAO_EQUIPE');
end;

procedure TFrmCadastroFuncionario.ChInserirEquipeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarEquipe, chEditarEquipe, chDeletarEquipe, chInserirEquipe, chRelatorioEquipe, chTodasEquipe,
    'PERMISSAO_EQUIPE');
end;

procedure TFrmCadastroFuncionario.ChRelatorioEquipeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarEquipe, chEditarEquipe, chDeletarEquipe, chInserirEquipe, chRelatorioEquipe, chTodasEquipe,
    'PERMISSAO_EQUIPE');
end;

procedure TFrmCadastroFuncionario.ChTodasEquipeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chConsultarEquipe, chEditarEquipe, chDeletarEquipe, chInserirEquipe, chRelatorioEquipe, chTodasEquipe);
end;

procedure TFrmCadastroFuncionario.ChConsultarPostoLocalTrabalhoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarPostoLocalTrabalho, chEditarPostoLocalTrabalho, chDeletarPostoLocalTrabalho, chInserirPostoLocalTrabalho, chRelatorioPostoLocalTrabalho, chTodasPostoLocalTrabalho,
    'PERMISSAO_LOCALPOSTOTRABALHO');
end;

procedure TFrmCadastroFuncionario.ChEditarPostoLocalTrabalhoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarPostoLocalTrabalho, chEditarPostoLocalTrabalho, chDeletarPostoLocalTrabalho, chInserirPostoLocalTrabalho, chRelatorioPostoLocalTrabalho, chTodasPostoLocalTrabalho,
    'PERMISSAO_LOCALPOSTOTRABALHO');
end;

procedure TFrmCadastroFuncionario.ChDeletarPostoLocalTrabalhoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarPostoLocalTrabalho, chEditarPostoLocalTrabalho, chDeletarPostoLocalTrabalho, chInserirPostoLocalTrabalho, chRelatorioPostoLocalTrabalho, chTodasPostoLocalTrabalho,
    'PERMISSAO_LOCALPOSTOTRABALHO');
end;

procedure TFrmCadastroFuncionario.ChInserirPostoLocalTrabalhoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarPostoLocalTrabalho, chEditarPostoLocalTrabalho, chDeletarPostoLocalTrabalho, chInserirPostoLocalTrabalho, chRelatorioPostoLocalTrabalho, chTodasPostoLocalTrabalho,
    'PERMISSAO_LOCALPOSTOTRABALHO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioPostoLocalTrabalhoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarPostoLocalTrabalho, chEditarPostoLocalTrabalho, chDeletarPostoLocalTrabalho, chInserirPostoLocalTrabalho, chRelatorioPostoLocalTrabalho, chTodasPostoLocalTrabalho,
    'PERMISSAO_LOCALPOSTOTRABALHO');
end;

procedure TFrmCadastroFuncionario.ChTodasPostoLocalTrabalhoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chConsultarPostoLocalTrabalho, chEditarPostoLocalTrabalho, chDeletarPostoLocalTrabalho, chInserirPostoLocalTrabalho, chRelatorioPostoLocalTrabalho, chTodasPostoLocalTrabalho);
end;

procedure TFrmCadastroFuncionario.ChConsultarAgenteEquipeClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarAgenteEquipe, chEditarAgenteEquipe, chDeletarAgenteEquipe, chInserirAgenteEquipe, chRelatorioAgenteEquipe, chTodasAgenteEquipe,
    'PERMISSAO_AGENTEPOREQUIPE');
end;

procedure TFrmCadastroFuncionario.ChEditarAgenteEquipeClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarAgenteEquipe, chEditarAgenteEquipe, chDeletarAgenteEquipe, chInserirAgenteEquipe, chRelatorioAgenteEquipe, chTodasAgenteEquipe,
    'PERMISSAO_AGENTEPOREQUIPE');
end;

procedure TFrmCadastroFuncionario.ChDeletarAgenteEquipeClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarAgenteEquipe, chEditarAgenteEquipe, chDeletarAgenteEquipe, chInserirAgenteEquipe, chRelatorioAgenteEquipe, chTodasAgenteEquipe,
    'PERMISSAO_AGENTEPOREQUIPE');
end;

procedure TFrmCadastroFuncionario.ChInserirAgenteEquipeClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarAgenteEquipe, chEditarAgenteEquipe, chDeletarAgenteEquipe, chInserirAgenteEquipe, chRelatorioAgenteEquipe, chTodasAgenteEquipe,
    'PERMISSAO_AGENTEPOREQUIPE');
end;

procedure TFrmCadastroFuncionario.ChRelatorioAgenteEquipeClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarAgenteEquipe, chEditarAgenteEquipe, chDeletarAgenteEquipe, chInserirAgenteEquipe, chRelatorioAgenteEquipe, chTodasAgenteEquipe,
    'PERMISSAO_AGENTEPOREQUIPE');
end;

procedure TFrmCadastroFuncionario.ChTodasAgenteEquipeClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chConsultarAgenteEquipe, chEditarAgenteEquipe, chDeletarAgenteEquipe, chInserirAgenteEquipe, chRelatorioAgenteEquipe, chTodasAgenteEquipe);
end;

procedure TFrmCadastroFuncionario.ChConsultarRegraVisitacaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarRegraVisitacao, chEditarRegraVisitacao, chDeletarRegraVisitacao, chInserirRegraVisitacao, chRelatorioRegraVisitacao, chTodasRegraVisitacao,
    'PERMISSAO_REGRAVISITACAO');
end;

procedure TFrmCadastroFuncionario.ChEditarRegraVisitacaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarRegraVisitacao, chEditarRegraVisitacao, chDeletarRegraVisitacao, chInserirRegraVisitacao, chRelatorioRegraVisitacao, chTodasRegraVisitacao,
    'PERMISSAO_REGRAVISITACAO');
end;

procedure TFrmCadastroFuncionario.ChDeletarRegraVisitacaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarRegraVisitacao, chEditarRegraVisitacao, chDeletarRegraVisitacao, chInserirRegraVisitacao, chRelatorioRegraVisitacao, chTodasRegraVisitacao,
    'PERMISSAO_REGRAVISITACAO');
end;

procedure TFrmCadastroFuncionario.ChInserirRegraVisitacaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarRegraVisitacao, chEditarRegraVisitacao, chDeletarRegraVisitacao, chInserirRegraVisitacao, chRelatorioRegraVisitacao, chTodasRegraVisitacao,
    'PERMISSAO_REGRAVISITACAO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioRegraVisitacaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(chConsultarRegraVisitacao, chEditarRegraVisitacao, chDeletarRegraVisitacao, chInserirRegraVisitacao, chRelatorioRegraVisitacao, chTodasRegraVisitacao,
    'PERMISSAO_REGRAVISITACAO');
end;

procedure TFrmCadastroFuncionario.ChTodasRegraVisitacaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chConsultarRegraVisitacao, chEditarRegraVisitacao, chDeletarRegraVisitacao, chInserirRegraVisitacao, chRelatorioRegraVisitacao, chTodasRegraVisitacao);
end;


// Permiss�o para cadastro da Portaria do Said�o - Andre Almeida

procedure TFrmCadastroFuncionario.ChConsultarSaidaoCadastroClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSaidaoCadastro, ChEditarSaidaoCadastro, ChDeletarSaidaoCadastro, ChInserirSaidaoCadastro, ChRelatorioSaidaoCadastro, ChTodasSaidaoCadastro,
    'PERMISSAO_SAIDAO_CADASTRO');
end;

procedure TFrmCadastroFuncionario.ChEditarSaidaoCadastroClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSaidaoCadastro, ChEditarSaidaoCadastro, ChDeletarSaidaoCadastro, ChInserirSaidaoCadastro, ChRelatorioSaidaoCadastro, ChTodasSaidaoCadastro,
    'PERMISSAO_SAIDAO_CADASTRO');
end;

procedure TFrmCadastroFuncionario.ChInserirSaidaoCadastroClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSaidaoCadastro, ChEditarSaidaoCadastro, ChDeletarSaidaoCadastro, ChInserirSaidaoCadastro, ChRelatorioSaidaoCadastro, ChTodasSaidaoCadastro,
    'PERMISSAO_SAIDAO_CADASTRO');
end;

procedure TFrmCadastroFuncionario.ChDeletarSaidaoCadastroClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSaidaoCadastro, ChEditarSaidaoCadastro, ChDeletarSaidaoCadastro, ChInserirSaidaoCadastro, ChRelatorioSaidaoCadastro, ChTodasSaidaoCadastro,
    'PERMISSAO_SAIDAO_CADASTRO');
end;

procedure TFrmCadastroFuncionario.chRelatorioSaidaoCadastroClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSaidaoCadastro, ChEditarSaidaoCadastro, ChDeletarSaidaoCadastro, ChInserirSaidaoCadastro, ChRelatorioSaidaoCadastro, ChTodasSaidaoCadastro,
    'PERMISSAO_SAIDAO_CADASTRO');
end;

procedure TFrmCadastroFuncionario.ChTodasSaidaoCadastroClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarSaidaoCadastro, ChEditarSaidaoCadastro, ChDeletarSaidaoCadastro, ChInserirSaidaoCadastro, ChRelatorioSaidaoCadastro, ChTodasSaidaoCadastro);
end;

procedure TFrmCadastroFuncionario.ChConsultarPerfilUsuarioClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarPerfilUsuario, chEditarPerfilUsuario, chDeletarPerfilUsuario, chInserirPerfilUsuario, chRelatorioPerfilUsuario, chTodasPerfilUsuario,
    'PERMISSAO_PERFILUSUARIO');
end;

procedure TFrmCadastroFuncionario.ChEditarPerfilUsuarioClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarPerfilUsuario, chEditarPerfilUsuario, chDeletarPerfilUsuario, chInserirPerfilUsuario, chRelatorioPerfilUsuario, chTodasPerfilUsuario,
    'PERMISSAO_PERFILUSUARIO');
end;

procedure TFrmCadastroFuncionario.ChDeletarPerfilUsuarioClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarPerfilUsuario, chEditarPerfilUsuario, chDeletarPerfilUsuario, chInserirPerfilUsuario, chRelatorioPerfilUsuario, chTodasPerfilUsuario,
    'PERMISSAO_PERFILUSUARIO');
end;

procedure TFrmCadastroFuncionario.ChInserirPerfilUsuarioClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarPerfilUsuario, chEditarPerfilUsuario, chDeletarPerfilUsuario, chInserirPerfilUsuario, chRelatorioPerfilUsuario, chTodasPerfilUsuario,
    'PERMISSAO_PERFILUSUARIO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioPerfilUsuarioClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarPerfilUsuario, chEditarPerfilUsuario, chDeletarPerfilUsuario, chInserirPerfilUsuario, chRelatorioPerfilUsuario, chTodasPerfilUsuario,
    'PERMISSAO_PERFILUSUARIO');
end;

procedure TFrmCadastroFuncionario.ChTodasPerfilUsuarioClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(chConsultarPerfilUsuario, chEditarPerfilUsuario, chDeletarPerfilUsuario, chInserirPerfilUsuario, chRelatorioPerfilUsuario, chTodasPerfilUsuario);
end;

procedure TFrmCadastroFuncionario.NovoClick(Sender: TObject);
begin
  inherited;
  LimpaPermissaoTodas();
  EdtConfirmaSenha.Text := '';
  PageControlFuncionario.ActivePage := TabPrincipal;
  PageControlPermissao.ActivePage := TabGeral;
end;

procedure TFrmCadastroFuncionario.DBEditnascimentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  ValidaDataKeyPress(Sender, Key);
end;

procedure TFrmCadastroFuncionario.DBEditdtlotacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  ValidaDataKeyPress(Sender, Key);
end;

procedure TFrmCadastroFuncionario.DBEditdtlotacaoExit(Sender: TObject);
begin
  inherited;
  ValidaDataExit(Sender);
end;

procedure TFrmCadastroFuncionario.DBEditnascimentoExit(Sender: TObject);
begin
  inherited;
  ValidaDataExit(Sender);
end;

procedure TFrmCadastroFuncionario.DBEditadmissaoExit(Sender: TObject);
begin
  inherited;
  ValidaDataExit(Sender);
end;

procedure TFrmCadastroFuncionario.DBEditadmissaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  ValidaDataKeyPress(Sender, Key);
end;

procedure TFrmCadastroFuncionario.DBEditCPFKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  SoNumeros(Key);
end;

procedure TFrmCadastroFuncionario.DBLookupPerfilUsuarioCloseUp(
  Sender: TObject);
var
  CONFERE, VISITANTE, TRABALHO, CADASTRO, EDUCACAO, PSICOSSOCIAL, JURIDICA, DISCIPLINA, INTELIGENCIA: string;
  ENFERMAGEM, FARMACIA, CLINICAMEDICA, PSICOLOGIA, PSIQUIATRIA, SAUDE, TERAPIAOCUPACIONAL, ODONTOLOGIA: string;
  PEDAGOGIA, SERVICOSOCIAL, ARMAS, MONITORAMENTO, OCORRENCIA, CONSELHODISCIPLINAR, TRANSFERENCIAINTERNO: string;
  MUDANCACELA, SAIDAO, SAIDAO_CADASTRO, CIRCULACAOINTERNO, MOVIMENTOSEMIABERTO: string;
  FUNCIONARIO, FUNCAOFUNCIONARIO, UNIDADEPENAL, HORARIOFUNCIONARIO: string;
  PADRAOSISTEMA, EQUIPE, LOCALPOSTOTRABALHO, AGENTEPOREQUIPE, REGRAVISITACAO: string;

  PERFILUSUARIO, ADVOGADO, VISITANTETRAFICO, FACCAO, CTC, CORRESPONDENCIA: string;
  AGENDAATENDIMENTO, LIVROREVISTA, PAVILHAO, GALERIA, SOLARIO, CELA: string;
  CONDICAOINTERNO, CIDADE, RACA, ESCOLARIDADE, NACIONALIDADE, PROCEDENCIA: string;
  DESTINO, FORNECEDOR, PROFISSAO, FALTADISCIPLINAR, SERIEFASEESTUDO: string;
  PROCESSOCONDENACAO, DETRACAO, INTERRUPCAO, REMICAO, ARTIGOPENAL: string;
  VARAEXECUCAO, REMEDIO, FUNCAOINTERNO, CALCULOTRABALHO, REMICAOTRABALHO: string;
  ROUPAS, GRAUPARENTESCO, TIPOCONTATO, ASSUNTO, SITUACAO, SETORTRABALHOCAD: string;

  ENTRADAVISITANTE, VVISUALIZA_OUTRAS_UP, VDEFINE_PERFIL_USUARIO, VCONCEDE_PERMISSAO_INDIVIDUAL: string;
  VAUTORIZADO_WEB: string;

  EVENTOS, SUBEVENTOS, MONITORAMENTOEVENTOS : string;
begin

  if ((DBLookupPerfilUsuario.Text = 'ADMINISTRADOR') and (NOME_PERFILUSUARIO_LOGADO <> 'ADMINISTRADOR')
    and (Sender is TDBLookupComboBox)) then
  begin
    ShowMessage('O Perfil de Administrador s� pode ser concedido por outro Administrador!');

    DsPerfilUsuario.DataSet.Next;

    if DsPerfilUsuario.DataSet.FieldByName('PERFIL').AsString = 'ADMINISTRADOR' then
      DsPerfilUsuario.DataSet.Prior;

    DBLookupPerfilUsuario.KeyValue := DsPerfilUsuario.DataSet.FieldByName('ID_PERFIL_USUARIO').AsString;

  end;

  inherited;

  if not (DBLookupPerfilUsuario.KeyValue <= 0) then
  begin
    DsPerfilAtribui.DataSet.Close;
    SQLPerfilAtribui.Params[0].Value := DBLookupPerfilUsuario.KeyValue;
    DsPerfilAtribui.DataSet.Open;
  end;

  if not DsPerfilAtribui.DataSet.IsEmpty then
  begin

    ENTRADAVISITANTE := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_ENTRADAVISITANTE').AsString;
    VVISUALIZA_OUTRAS_UP := DsPerfilAtribui.DataSet.FieldByName('VISUALIZA_OUTRAS_UP').AsString;
    VDEFINE_PERFIL_USUARIO := DsPerfilAtribui.DataSet.FieldByName('DEFINE_PERFIL_USUARIO').AsString;
    VCONCEDE_PERMISSAO_INDIVIDUAL := DsPerfilAtribui.DataSet.FieldByName('CONCEDE_PERMISSAO_INDIVIDUAL').AsString;
    VAUTORIZADO_WEB := DsPerfilAtribui.DataSet.FieldByName('AUTORIZADO_WEB').AsString;

    CONFERE := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_CONFERE').AsString;
    VISITANTE := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_VISITANTE').AsString;
    TRABALHO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_SETORTRABALHO').AsString;
    CADASTRO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_CADASTRO').AsString;
    EDUCACAO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_SETOREDUCACAO').AsString;
    PSICOSSOCIAL := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_PSICOSSOCIAL').AsString;
    JURIDICA := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_JURIDICA').AsString;
    DISCIPLINA := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_DISCIPLINA').AsString;
    INTELIGENCIA := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_INTELIGENCIA').AsString;
    ENFERMAGEM := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_ENFERMAGEM').AsString;
    FARMACIA := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_FARMACIA').AsString;
    CLINICAMEDICA := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_CLINICAMEDICA').AsString;
    PSICOLOGIA := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_PSICOLOGIA').AsString;
    PSIQUIATRIA := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_PSIQUIATRIA').AsString;
    SAUDE := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_SAUDE').AsString;
    TERAPIAOCUPACIONAL := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_TERAPIAOCUPACIONAL').AsString;
    ODONTOLOGIA := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_ODONTOLOGIA').AsString;
    PEDAGOGIA := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_PEDAGOGIA').AsString;
    SERVICOSOCIAL := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_SERVICOSOCIAL').AsString;
    ARMAS := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_ARMAS').AsString;
    MONITORAMENTO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_MONITORAMENTO').AsString;
    OCORRENCIA := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_OCORRENCIA').AsString;
    CONSELHODISCIPLINAR := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_CONSELHODISCIPLINAR').AsString;
    TRANSFERENCIAINTERNO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_TRANSFERENCIAINTERNO').AsString;
    MUDANCACELA := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_MUDANCACELA').AsString;
    SAIDAO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_SAIDAO').AsString;
    SAIDAO_CADASTRO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_SAIDAO_CADASTRO').AsString;
    CIRCULACAOINTERNO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_CIRCULACAOINTERNO').AsString;
    MOVIMENTOSEMIABERTO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_MOVIMENTOSEMIABERTO').AsString;
    FUNCIONARIO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_FUNCIONARIO').AsString;
    FUNCAOFUNCIONARIO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_FUNCAOFUNCIONARIO').AsString;
    UNIDADEPENAL := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_UNIDADEPENAL').AsString;
    HORARIOFUNCIONARIO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_HORARIOFUNCIONARIO').AsString;
    PADRAOSISTEMA := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_PADRAOSISTEMA').AsString;
    EQUIPE := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_EQUIPE').AsString;
    LOCALPOSTOTRABALHO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_LOCALPOSTOTRABALHO').AsString;
    AGENTEPOREQUIPE := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_AGENTEPOREQUIPE').AsString;
    REGRAVISITACAO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_REGRAVISITACAO').AsString;
    PERFILUSUARIO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_PERFILUSUARIO').AsString;
    ADVOGADO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_ADVOGADO').AsString;
    VISITANTETRAFICO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_VISITANTETRAFICO').AsString;
    FACCAO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_FACCAO').AsString;
    CTC := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_CTC').AsString;
    CORRESPONDENCIA := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_CORRESPONDENCIA').AsString;
    AGENDAATENDIMENTO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_AGENDAATENDIMENTO').AsString;
    LIVROREVISTA := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_LIVROREVISTA').AsString;
    PAVILHAO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_PAVILHAO').AsString;
    GALERIA := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_GALERIA').AsString;
    SOLARIO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_SOLARIO').AsString;
    CELA := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_CELA').AsString;
    CONDICAOINTERNO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_CONDICAOINTERNO').AsString;
    CIDADE := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_CIDADE').AsString;
    RACA := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_RACA').AsString;
    ESCOLARIDADE := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_ESCOLARIDADE').AsString;
    NACIONALIDADE := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_NACIONALIDADE').AsString;
    PROCEDENCIA := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_PROCEDENCIA').AsString;
    DESTINO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_DESTINO').AsString;
    FORNECEDOR := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_FORNECEDOR').AsString;
    PROFISSAO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_PROFISSAO').AsString;
    FALTADISCIPLINAR := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_FALTADISCIPLINAR').AsString;
    SERIEFASEESTUDO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_SERIEFASEESTUDO').AsString;
    PROCESSOCONDENACAO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_PROCESSOCONDENACAO').AsString;
    DETRACAO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_DETRACAO').AsString;
    INTERRUPCAO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_INTERRUPCAO').AsString;
    REMICAO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_REMICAO').AsString;
    ARTIGOPENAL := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_ARTIGOPENAL').AsString;
    VARAEXECUCAO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_VARAEXECUCAO').AsString;
    REMEDIO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_REMEDIO').AsString;
    FUNCAOINTERNO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_FUNCAOINTERNO').AsString;
    CALCULOTRABALHO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_CALCULOTRABALHO').AsString;
    REMICAOTRABALHO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_REMICAOTRABALHO').AsString;
    ROUPAS := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_ROUPAS').AsString;
    GRAUPARENTESCO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_GRAUPARENTESCO').AsString;
    TIPOCONTATO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_TIPOCONTATO').AsString;
    ASSUNTO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_ASSUNTO').AsString;
    SITUACAO := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_SITUACAO').AsString;
    SETORTRABALHOCAD := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_SETORTRABALHOCAD').AsString;
    EVENTOS := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_EVENTOS').AsString;
    SUBEVENTOS := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_SUBEVENTOS').AsString;
    MONITORAMENTOEVENTOS := DsPerfilAtribui.DataSet.FieldByName('PERMISSAO_MONITORAMENTOEVENTOS').AsString;

  end;

  if Sender is TDBLookupComboBox then
    LimpaPermissaoTodas();

  DBrgEntradaVisitante.Enabled := not ContemValor('S', ENTRADAVISITANTE);
  DBRadioGroupVISUALIZA_OUTRAS_UP.Enabled := not ContemValor('S', VVISUALIZA_OUTRAS_UP);
  DBRadioGroupAutorizadoWeb.Enabled := not ContemValor('S', VAUTORIZADO_WEB);
  DbrDefinePerfilUsuario.Enabled := not ContemValor('S', VDEFINE_PERFIL_USUARIO);
  DbrConcedePermissaoIndividual.Enabled := not ContemValor('S', VCONCEDE_PERMISSAO_INDIVIDUAL);

  chconsultarcadastro.Enabled := not ContemValor('C', CADASTRO);
  cheditarcadastro.Enabled := not ContemValor('E', CADASTRO);
  chdeletarcadastro.Enabled := not ContemValor('D', CADASTRO);
  chinserircadastro.Enabled := not ContemValor('I', CADASTRO);
  chrelatoriocadastro.Enabled := not ContemValor('R', CADASTRO);
  chtodascadastro.Enabled := False;

  CHConsultarConfere.Enabled := not ContemValor('C', CONFERE);
  CHEditarConfere.Enabled := not ContemValor('E', CONFERE);
  CHdeletarconfere.Enabled := not ContemValor('D', CONFERE);
  CHInserirConfere.Enabled := not ContemValor('I', CONFERE);
  chrelatorioconfere.Enabled := not ContemValor('R', CONFERE);
  CHTodasConfere.Enabled := False;

  chConsultarVisitante.Enabled := not ContemValor('C', VISITANTE);
  chEditarVisitante.Enabled := not ContemValor('E', VISITANTE);
  chdeletarVisitante.Enabled := not ContemValor('D', VISITANTE);
  chInserirVisitante.Enabled := not ContemValor('I', VISITANTE);
  chrelatoriovisitante.Enabled := not ContemValor('R', VISITANTE);
  chTodasVisitante.Enabled := False;

  chconsultarinteligencia.Enabled := not ContemValor('C', INTELIGENCIA);
  cheditarinteligencia.Enabled := not ContemValor('E', INTELIGENCIA);
  chdeletarinteligencia.Enabled := not ContemValor('D', INTELIGENCIA);
  chinseririnteligencia.Enabled := not ContemValor('I', INTELIGENCIA);
  chrelatoriointeligencia.Enabled := not ContemValor('R', INTELIGENCIA);
  chtodasinteligencia.Enabled := False;

  chconsultararmas.Enabled := not ContemValor('C', ARMAS);
  cheditararmas.Enabled := not ContemValor('E', ARMAS);
  chdeletararmas.Enabled := not ContemValor('D', ARMAS);
  chinserirarmas.Enabled := not ContemValor('I', ARMAS);
  chrelatorioarmas.Enabled := not ContemValor('R', ARMAS);
  chtodasarmas.Enabled := False;

  CHConsultaOcorrencia.Enabled := not ContemValor('C', OCORRENCIA);
  CHEditaOcorrencia.Enabled := not ContemValor('E', OCORRENCIA);
  CHdeletaOcorrencia.Enabled := not ContemValor('D', OCORRENCIA);
  CHInsereOcorrencia.Enabled := not ContemValor('I', OCORRENCIA);
  chrelatorioOcorrencia.Enabled := not ContemValor('R', OCORRENCIA);
  chdespachoOcorrencia.Enabled := not ContemValor('P', OCORRENCIA);
  CHTodasOcorrencia.Enabled := False;

  chconsultarmonitoramento.Enabled := not ContemValor('C', MONITORAMENTO);
  cheditarmonitoramento.Enabled := not ContemValor('E', MONITORAMENTO);
  chdeletarmonitoramento.Enabled := not ContemValor('D', MONITORAMENTO);
  chinserirmonitoramento.Enabled := not ContemValor('I', MONITORAMENTO);
  chrelatoriomonitoramento.Enabled := not ContemValor('R', MONITORAMENTO);
  chtodasmonitoramento.Enabled := False;

  chConsultartrabalho.Enabled := not ContemValor('C', TRABALHO);
  cheditartrabalho.Enabled := not ContemValor('E', TRABALHO);
  chdeletartrabalho.Enabled := not ContemValor('D', TRABALHO);
  chinserirtrabalho.Enabled := not ContemValor('I', TRABALHO);
  chrelatoriotrabalho.Enabled := not ContemValor('R', TRABALHO);
  chtodastrabalho.Enabled := False;

  chconsultareducacao.Enabled := not ContemValor('C', EDUCACAO);
  cheditareducacao.Enabled := not ContemValor('E', EDUCACAO);
  chdeletareducacao.Enabled := not ContemValor('D', EDUCACAO);
  chinserireducacao.Enabled := not ContemValor('I', EDUCACAO);
  chrelatorioeducacao.Enabled := not ContemValor('R', EDUCACAO);
  chtodaseducacao.Enabled := False;

  chconsultarPSICOSSOCIAL.Enabled := not ContemValor('C', PSICOSSOCIAL);
  cheditarPSICOSSOCIAL.Enabled := not ContemValor('E', PSICOSSOCIAL);
  chdeletarPSICOSSOCIAL.Enabled := not ContemValor('D', PSICOSSOCIAL);
  chinserirPSICOSSOCIAL.Enabled := not ContemValor('I', PSICOSSOCIAL);
  chrelatoriopsicossocial.Enabled := not ContemValor('R', PSICOSSOCIAL);
  chtodasPSICOSSOCIAL.Enabled := False;

  chconsultarenfermagem.Enabled := not ContemValor('C', ENFERMAGEM);
  cheditarenfermagem.Enabled := not ContemValor('E', ENFERMAGEM);
  chdeletarenfermagem.Enabled := not ContemValor('D', ENFERMAGEM);
  chinserirenfermagem.Enabled := not ContemValor('I', ENFERMAGEM);
  chrelatorioenfermagem.Enabled := not ContemValor('R', ENFERMAGEM);
  chtodasenfermagem.Enabled := False;

  chconsultarfarmacia.Enabled := not ContemValor('C', FARMACIA);
  cheditarfarmacia.Enabled := not ContemValor('E', FARMACIA);
  chdeletarfarmacia.Enabled := not ContemValor('D', FARMACIA);
  chinserirfarmacia.Enabled := not ContemValor('I', FARMACIA);
  chrelatoriofaramcia.Enabled := not ContemValor('R', FARMACIA);
  chtodasfarmacia.Enabled := False;

  chconsultarpsiquiatria.Enabled := not ContemValor('C', PSIQUIATRIA);
  cheditarpsiquiatria.Enabled := not ContemValor('E', PSIQUIATRIA);
  chdeletarpsiquiatria.Enabled := not ContemValor('D', PSIQUIATRIA);
  chinserirpsiquiatria.Enabled := not ContemValor('I', PSIQUIATRIA);
  chrelatoriopsiquiatria.Enabled := not ContemValor('R', PSIQUIATRIA);
  chtodaspsiquiatria.Enabled := False;

  chconsultarservicosocial.Enabled := not ContemValor('C', SERVICOSOCIAL);
  cheditarservicosocial.Enabled := not ContemValor('E', SERVICOSOCIAL);
  chdeletarservicosocial.Enabled := not ContemValor('D', SERVICOSOCIAL);
  chinserirservicosocial.Enabled := not ContemValor('I', SERVICOSOCIAL);
  chrelatorioservicosocial.Enabled := not ContemValor('R', SERVICOSOCIAL);
  chtodasservicosocial.Enabled := False;

  chconsultarterapiaocupacional.Enabled := not ContemValor('C', TERAPIAOCUPACIONAL);
  cheditarterapiaocupacional.Enabled := not ContemValor('E', TERAPIAOCUPACIONAL);
  chdeletarterapiaocupacional.Enabled := not ContemValor('D', TERAPIAOCUPACIONAL);
  chinserirterapiaocupacional.Enabled := not ContemValor('I', TERAPIAOCUPACIONAL);
  chrelatorioterapiaocupacional.Enabled := not ContemValor('R', TERAPIAOCUPACIONAL);
  chtodasterapiaocupacional.Enabled := False;

  chconsultarJURIDICA.Enabled := not ContemValor('C', JURIDICA);
  cheditarJURIDICA.Enabled := not ContemValor('E', JURIDICA);
  chdeletarJURIDICA.Enabled := not ContemValor('D', JURIDICA);
  chinserirJURIDICA.Enabled := not ContemValor('I', JURIDICA);
  chrelatoriojuridico.Enabled := not ContemValor('R', JURIDICA);
  chtodasJURIDICA.Enabled := False;

  chconsultarDISCIPLINA.Enabled := not ContemValor('C', DISCIPLINA);
  cheditarDISCIPLINA.Enabled := not ContemValor('E', DISCIPLINA);
  chdeletarDISCIPLINA.Enabled := not ContemValor('D', DISCIPLINA);
  chinserirDISCIPLINA.Enabled := not ContemValor('I', DISCIPLINA);
  chrelatoriodisciplina.Enabled := not ContemValor('R', DISCIPLINA);
  chtodasDISCIPLINA.Enabled := False;

  chconsultarclinicamedica.Enabled := not ContemValor('C', CLINICAMEDICA);
  cheditarclinicamedica.Enabled := not ContemValor('E', CLINICAMEDICA);
  chdeletarclinicamedica.Enabled := not ContemValor('D', CLINICAMEDICA);
  chinserirclinicamedica.Enabled := not ContemValor('I', CLINICAMEDICA);
  chrelatorioclinicamedica.Enabled := not ContemValor('R', CLINICAMEDICA);
  chtodasclinicamedica.Enabled := False;

  chconsultarodontologia.Enabled := not ContemValor('C', ODONTOLOGIA);
  cheditarodontologia.Enabled := not ContemValor('E', ODONTOLOGIA);
  chdeletarodontologia.Enabled := not ContemValor('D', ODONTOLOGIA);
  chinserirodontologia.Enabled := not ContemValor('I', ODONTOLOGIA);
  chrelatorioodontologia.Enabled := not ContemValor('R', ODONTOLOGIA);
  chtodasodontologia.Enabled := False;

  chconsultarpedagogia.Enabled := not ContemValor('C', PEDAGOGIA);
  cheditarpedagogia.Enabled := not ContemValor('E', PEDAGOGIA);
  chdeletarpedagogia.Enabled := not ContemValor('D', PEDAGOGIA);
  chinserirpedagogia.Enabled := not ContemValor('I', PEDAGOGIA);
  chrelatoriopedagogia.Enabled := not ContemValor('R', PEDAGOGIA);
  chtodaspedagogia.Enabled := False;

  chconsultarpsicologia.Enabled := not ContemValor('C', PSICOLOGIA);
  cheditarpsicologia.Enabled := not ContemValor('E', PSICOLOGIA);
  chdeletarpsicologia.Enabled := not ContemValor('D', PSICOLOGIA);
  chinserirpsicologia.Enabled := not ContemValor('I', PSICOLOGIA);
  chrelatoriopsicologia.Enabled := not ContemValor('R', PSICOLOGIA);
  chtodaspsicologia.Enabled := False;

  chconsultarsaude.Enabled := not ContemValor('C', SAUDE);
  cheditarsaude.Enabled := not ContemValor('E', SAUDE);
  chdeletarsaude.Enabled := not ContemValor('D', SAUDE);
  chinserirsaude.Enabled := not ContemValor('I', SAUDE);
  chrelatoriosaude.Enabled := not ContemValor('R', SAUDE);
  chtodassaude.Enabled := False;

  chConsultarConsDisciplinar.Enabled := not ContemValor('C', CONSELHODISCIPLINAR);
  chEditarConsDisciplinar.Enabled := not ContemValor('E', CONSELHODISCIPLINAR);
  chDeletarConsDisciplinar.Enabled := not ContemValor('D', CONSELHODISCIPLINAR);
  chInserirConsDisciplinar.Enabled := not ContemValor('I', CONSELHODISCIPLINAR);
  chRelatorioConsDisciplinar.Enabled := not ContemValor('R', CONSELHODISCIPLINAR);
  chTodasConsDisciplinar.Enabled := False;

  chConsultarTransferenciaInterno.Enabled := not ContemValor('C', TRANSFERENCIAINTERNO);
  chEditarTransferenciaInterno.Enabled := not ContemValor('E', TRANSFERENCIAINTERNO);
  chDeletarTransferenciaInterno.Enabled := not ContemValor('D', TRANSFERENCIAINTERNO);
  chInserirTransferenciaInterno.Enabled := not ContemValor('I', TRANSFERENCIAINTERNO);
  chRelatorioTransferenciaInterno.Enabled := not ContemValor('R', TRANSFERENCIAINTERNO);
  chTodasTransferenciaInterno.Enabled := False;

  ChConsultarMudancaCela.Enabled := not ContemValor('C', MUDANCACELA);
  ChEditarMudancaCela.Enabled := not ContemValor('E', MUDANCACELA);
  ChDeletarMudancaCela.Enabled := not ContemValor('D', MUDANCACELA);
  ChInserirMudancaCela.Enabled := not ContemValor('I', MUDANCACELA);
  ChRelatorioMudancaCela.Enabled := not ContemValor('R', MUDANCACELA);
  ChTodasMudancaCela.Enabled := False;

  ChConsultarSaidao.Enabled := not ContemValor('C', SAIDAO);
  ChEditarSaidao.Enabled := not ContemValor('E', SAIDAO);
  ChDeletarSaidao.Enabled := not ContemValor('D', SAIDAO);
  ChInserirSaidao.Enabled := not ContemValor('I', SAIDAO);
  ChRelatorioSaidao.Enabled := not ContemValor('R', SAIDAO);
  ChTodasSaidao.Enabled := False;

  ChConsultarSaidaoCadastro.Enabled := not ContemValor('C', SAIDAO_CADASTRO);
  ChEditarSaidaoCadastro.Enabled := not ContemValor('E', SAIDAO_CADASTRO);
  ChDeletarSaidaoCadastro.Enabled := not ContemValor('D', SAIDAO_CADASTRO);
  ChInserirSaidaoCadastro.Enabled := not ContemValor('I', SAIDAO_CADASTRO);
  ChRelatorioSaidaoCadastro.Enabled := not ContemValor('R', SAIDAO_CADASTRO);
  ChTodasSaidaoCadastro.Enabled := False;


  ChConsultarCirculacaoInterno.Enabled := not ContemValor('C', CIRCULACAOINTERNO);
  ChEditarCirculacaoInterno.Enabled := not ContemValor('E', CIRCULACAOINTERNO);
  ChDeletarCirculacaoInterno.Enabled := not ContemValor('D', CIRCULACAOINTERNO);
  ChInserirCirculacaoInterno.Enabled := not ContemValor('I', CIRCULACAOINTERNO);
  ChRelatorioCirculacaoInterno.Enabled := not ContemValor('R', CIRCULACAOINTERNO);
  ChTodasCirculacaoInterno.Enabled := False;

  ChConsultarMovimentoSemiAberto.Enabled := not ContemValor('C', MOVIMENTOSEMIABERTO);
  ChEditarMovimentoSemiAberto.Enabled := not ContemValor('E', MOVIMENTOSEMIABERTO);
  ChDeletarMovimentoSemiAberto.Enabled := not ContemValor('D', MOVIMENTOSEMIABERTO);
  ChInserirMovimentoSemiAberto.Enabled := not ContemValor('I', MOVIMENTOSEMIABERTO);
  ChRelatorioMovimentoSemiAberto.Enabled := not ContemValor('R', MOVIMENTOSEMIABERTO);
  ChTodasMovimentoSemiAberto.Enabled := False;

  ChConsultarFuncionario.Enabled := not ContemValor('C', FUNCIONARIO);
  ChEditarFuncionario.Enabled := not ContemValor('E', FUNCIONARIO);
  ChDeletarFuncionario.Enabled := not ContemValor('D', FUNCIONARIO);
  ChInserirFuncionario.Enabled := not ContemValor('I', FUNCIONARIO);
  ChRelatorioFuncionario.Enabled := not ContemValor('R', FUNCIONARIO);
  ChTodasFuncionario.Enabled := False;

  ChConsultarFuncaoFuncionario.Enabled := not ContemValor('C', FUNCAOFUNCIONARIO);
  ChEditarFuncaoFuncionario.Enabled := not ContemValor('E', FUNCAOFUNCIONARIO);
  ChDeletarFuncaoFuncionario.Enabled := not ContemValor('D', FUNCAOFUNCIONARIO);
  ChInserirFuncaoFuncionario.Enabled := not ContemValor('I', FUNCAOFUNCIONARIO);
  ChRelatorioFuncaoFuncionario.Enabled := not ContemValor('R', FUNCAOFUNCIONARIO);
  ChTodasFuncaoFuncionario.Enabled := False;

  ChConsultarUnidadePenal.Enabled := not ContemValor('C', UNIDADEPENAL);
  ChEditarUnidadePenal.Enabled := not ContemValor('E', UNIDADEPENAL);
  ChDeletarUnidadePenal.Enabled := not ContemValor('D', UNIDADEPENAL);
  ChInserirUnidadePenal.Enabled := not ContemValor('I', UNIDADEPENAL);
  ChRelatorioUnidadePenal.Enabled := not ContemValor('R', UNIDADEPENAL);
  ChTodasUnidadePenal.Enabled := False;

  ChConsultarHorarioFuncionario.Enabled := not ContemValor('C', HORARIOFUNCIONARIO);
  ChEditarHorarioFuncionario.Enabled := not ContemValor('E', HORARIOFUNCIONARIO);
  ChDeletarHorarioFuncionario.Enabled := not ContemValor('D', HORARIOFUNCIONARIO);
  ChInserirHorarioFuncionario.Enabled := not ContemValor('I', HORARIOFUNCIONARIO);
  ChRelatorioHorarioFuncionario.Enabled := not ContemValor('R', HORARIOFUNCIONARIO);
  ChTodasHorarioFuncionario.Enabled := False;

  ChConsultarPadraoSistema.Enabled := not ContemValor('C', PADRAOSISTEMA);
  ChEditarPadraoSistema.Enabled := not ContemValor('E', PADRAOSISTEMA);
  ChDeletarPadraoSistema.Enabled := not ContemValor('D', PADRAOSISTEMA);
  ChInserirPadraoSistema.Enabled := not ContemValor('I', PADRAOSISTEMA);
  ChRelatorioPadraoSistema.Enabled := not ContemValor('R', PADRAOSISTEMA);
  ChTodasPadraoSistema.Enabled := False;

  ChConsultarEquipe.Enabled := not ContemValor('C', EQUIPE);
  ChEditarEquipe.Enabled := not ContemValor('E', EQUIPE);
  ChDeletarEquipe.Enabled := not ContemValor('D', EQUIPE);
  ChInserirEquipe.Enabled := not ContemValor('I', EQUIPE);
  ChRelatorioEquipe.Enabled := not ContemValor('R', EQUIPE);
  ChTodasEquipe.Enabled := False;

  ChConsultarPostoLocalTrabalho.Enabled := not ContemValor('C', LOCALPOSTOTRABALHO);
  ChEditarPostoLocalTrabalho.Enabled := not ContemValor('E', LOCALPOSTOTRABALHO);
  ChDeletarPostoLocalTrabalho.Enabled := not ContemValor('D', LOCALPOSTOTRABALHO);
  ChInserirPostoLocalTrabalho.Enabled := not ContemValor('I', LOCALPOSTOTRABALHO);
  ChRelatorioPostoLocalTrabalho.Enabled := not ContemValor('R', LOCALPOSTOTRABALHO);
  ChTodasPostoLocalTrabalho.Enabled := False;

  ChConsultarAgenteEquipe.Enabled := not ContemValor('C', AGENTEPOREQUIPE);
  ChEditarAgenteEquipe.Enabled := not ContemValor('E', AGENTEPOREQUIPE);
  ChDeletarAgenteEquipe.Enabled := not ContemValor('D', AGENTEPOREQUIPE);
  ChInserirAgenteEquipe.Enabled := not ContemValor('I', AGENTEPOREQUIPE);
  ChRelatorioAgenteEquipe.Enabled := not ContemValor('R', AGENTEPOREQUIPE);
  ChTodasAgenteEquipe.Enabled := False;

  ChConsultarRegraVisitacao.Enabled := not ContemValor('C', REGRAVISITACAO);
  ChEditarRegraVisitacao.Enabled := not ContemValor('E', REGRAVISITACAO);
  ChDeletarRegraVisitacao.Enabled := not ContemValor('D', REGRAVISITACAO);
  ChInserirRegraVisitacao.Enabled := not ContemValor('I', REGRAVISITACAO);
  ChRelatorioRegraVisitacao.Enabled := not ContemValor('R', REGRAVISITACAO);
  ChTodasRegraVisitacao.Enabled := False;

  ChConsultarPerfilUsuario.Enabled := not ContemValor('C', PERFILUSUARIO);
  ChEditarPerfilUsuario.Enabled := not ContemValor('E', PERFILUSUARIO);
  ChDeletarPerfilUsuario.Enabled := not ContemValor('D', PERFILUSUARIO);
  ChInserirPerfilUsuario.Enabled := not ContemValor('I', PERFILUSUARIO);
  ChRelatorioPerfilUsuario.Enabled := not ContemValor('R', PERFILUSUARIO);
  ChTodasPerfilUsuario.Enabled := False;

  ChConsultarAdvogado.Enabled := not ContemValor('C', ADVOGADO);
  ChEditarAdvogado.Enabled := not ContemValor('E', ADVOGADO);
  ChDeletarAdvogado.Enabled := not ContemValor('D', ADVOGADO);
  ChInserirAdvogado.Enabled := not ContemValor('I', ADVOGADO);
  ChRelatorioAdvogado.Enabled := not ContemValor('R', ADVOGADO);
  ChTodasAdvogado.Enabled := False;

  ChConsultarVisitanteTrafico.Enabled := not ContemValor('C', VISITANTETRAFICO);
  ChEditarVisitanteTrafico.Enabled := not ContemValor('E', VISITANTETRAFICO);
  ChDeletarVisitanteTrafico.Enabled := not ContemValor('D', VISITANTETRAFICO);
  ChInserirVisitanteTrafico.Enabled := not ContemValor('I', VISITANTETRAFICO);
  ChRelatorioVisitanteTrafico.Enabled := not ContemValor('R', VISITANTETRAFICO);
  ChTodasVisitanteTrafico.Enabled := False;

  ChConsultarFaccao.Enabled := not ContemValor('C', FACCAO);
  ChEditarFaccao.Enabled := not ContemValor('E', FACCAO);
  ChDeletarFaccao.Enabled := not ContemValor('D', FACCAO);
  ChInserirFaccao.Enabled := not ContemValor('I', FACCAO);
  ChRelatorioFaccao.Enabled := not ContemValor('R', FACCAO);
  ChTodasFaccao.Enabled := False;

  ChConsultarCTC.Enabled := not ContemValor('C', CTC);
  ChEditarCTC.Enabled := not ContemValor('E', CTC);
  ChDeletarCTC.Enabled := not ContemValor('D', CTC);
  ChInserirCTC.Enabled := not ContemValor('I', CTC);
  ChRelatorioCTC.Enabled := not ContemValor('R', CTC);
  ChTodasCTC.Enabled := False;

  ChConsultarCorrespondencia.Enabled := not ContemValor('C', CORRESPONDENCIA);
  ChEditarCorrespondencia.Enabled := not ContemValor('E', CORRESPONDENCIA);
  ChDeletarCorrespondencia.Enabled := not ContemValor('D', CORRESPONDENCIA);
  ChInserirCorrespondencia.Enabled := not ContemValor('I', CORRESPONDENCIA);
  ChRelatorioCorrespondencia.Enabled := not ContemValor('R', CORRESPONDENCIA);
  ChTodasCorrespondencia.Enabled := False;

  ChConsultarAgendaAtendimento.Enabled := not ContemValor('C', AGENDAATENDIMENTO);
  ChEditarAgendaAtendimento.Enabled := not ContemValor('E', AGENDAATENDIMENTO);
  ChDeletarAgendaAtendimento.Enabled := not ContemValor('D', AGENDAATENDIMENTO);
  ChInserirAgendaAtendimento.Enabled := not ContemValor('I', AGENDAATENDIMENTO);
  ChRelatorioAgendaAtendimento.Enabled := not ContemValor('R', AGENDAATENDIMENTO);
  ChTodasAgendaAtendimento.Enabled := False;

  ChConsultarLivroRevista.Enabled := not ContemValor('C', LIVROREVISTA);
  ChEditarLivroRevista.Enabled := not ContemValor('E', LIVROREVISTA);
  ChDeletarLivroRevista.Enabled := not ContemValor('D', LIVROREVISTA);
  ChInserirLivroRevista.Enabled := not ContemValor('I', LIVROREVISTA);
  ChRelatorioLivroRevista.Enabled := not ContemValor('R', LIVROREVISTA);
  ChTodasLivroRevista.Enabled := False;

  ChConsultarPavilhao.Enabled := not ContemValor('C', PAVILHAO);
  ChEditarPavilhao.Enabled := not ContemValor('E', PAVILHAO);
  ChDeletarPavilhao.Enabled := not ContemValor('D', PAVILHAO);
  ChInserirPavilhao.Enabled := not ContemValor('I', PAVILHAO);
  ChRelatorioPavilhao.Enabled := not ContemValor('R', PAVILHAO);
  ChTodasPavilhao.Enabled := False;

  ChConsultarGaleria.Enabled := not ContemValor('C', GALERIA);
  ChEditarGaleria.Enabled := not ContemValor('E', GALERIA);
  ChDeletarGaleria.Enabled := not ContemValor('D', GALERIA);
  ChInserirGaleria.Enabled := not ContemValor('I', GALERIA);
  ChRelatorioGaleria.Enabled := not ContemValor('R', GALERIA);
  ChTodasGaleria.Enabled := False;

  ChConsultarSolario.Enabled := not ContemValor('C', SOLARIO);
  ChEditarSolario.Enabled := not ContemValor('E', SOLARIO);
  ChDeletarSolario.Enabled := not ContemValor('D', SOLARIO);
  ChInserirSolario.Enabled := not ContemValor('I', SOLARIO);
  ChRelatorioSolario.Enabled := not ContemValor('R', SOLARIO);
  ChTodasSolario.Enabled := False;

  ChConsultarCela.Enabled := not ContemValor('C', CELA);
  ChEditarCela.Enabled := not ContemValor('E', CELA);
  ChDeletarCela.Enabled := not ContemValor('D', CELA);
  ChInserirCela.Enabled := not ContemValor('I', CELA);
  ChRelatorioCela.Enabled := not ContemValor('R', CELA);
  ChTodasCela.Enabled := False;

  ChConsultarCondicaoInterno.Enabled := not ContemValor('C', CONDICAOINTERNO);
  ChEditarCondicaoInterno.Enabled := not ContemValor('E', CONDICAOINTERNO);
  ChDeletarCondicaoInterno.Enabled := not ContemValor('D', CONDICAOINTERNO);
  ChInserirCondicaoInterno.Enabled := not ContemValor('I', CONDICAOINTERNO);
  ChRelatorioCondicaoInterno.Enabled := not ContemValor('R', CONDICAOINTERNO);
  ChTodasCondicaoInterno.Enabled := False;

  ChConsultarCidade.Enabled := not ContemValor('C', CIDADE);
  ChEditarCidade.Enabled := not ContemValor('E', CIDADE);
  ChDeletarCidade.Enabled := not ContemValor('D', CIDADE);
  ChInserirCidade.Enabled := not ContemValor('I', CIDADE);
  ChRelatorioCidade.Enabled := not ContemValor('R', CIDADE);
  ChTodasCidade.Enabled := False;

  ChConsultarRaca.Enabled := not ContemValor('C', RACA);
  ChEditarRaca.Enabled := not ContemValor('E', RACA);
  ChDeletarRaca.Enabled := not ContemValor('D', RACA);
  ChInserirRaca.Enabled := not ContemValor('I', RACA);
  ChRelatorioRaca.Enabled := not ContemValor('R', RACA);
  ChTodasRaca.Enabled := False;

  ChConsultarEscolaridade.Enabled := not ContemValor('C', ESCOLARIDADE);
  ChEditarEscolaridade.Enabled := not ContemValor('E', ESCOLARIDADE);
  ChDeletarEscolaridade.Enabled := not ContemValor('D', ESCOLARIDADE);
  ChInserirEscolaridade.Enabled := not ContemValor('I', ESCOLARIDADE);
  ChRelatorioEscolaridade.Enabled := not ContemValor('R', ESCOLARIDADE);
  ChTodasEscolaridade.Enabled := False;

  ChConsultarNacionalidade.Enabled := not ContemValor('C', NACIONALIDADE);
  ChEditarNacionalidade.Enabled := not ContemValor('E', NACIONALIDADE);
  ChDeletarNacionalidade.Enabled := not ContemValor('D', NACIONALIDADE);
  ChInserirNacionalidade.Enabled := not ContemValor('I', NACIONALIDADE);
  ChRelatorioNacionalidade.Enabled := not ContemValor('R', NACIONALIDADE);
  ChTodasNacionalidade.Enabled := False;

  ChConsultarProcedencia.Enabled := not ContemValor('C', PROCEDENCIA);
  ChEditarProcedencia.Enabled := not ContemValor('E', PROCEDENCIA);
  ChDeletarProcedencia.Enabled := not ContemValor('D', PROCEDENCIA);
  ChInserirProcedencia.Enabled := not ContemValor('I', PROCEDENCIA);
  ChRelatorioProcedencia.Enabled := not ContemValor('R', PROCEDENCIA);
  ChTodasProcedencia.Enabled := False;

  ChConsultarDestino.Enabled := not ContemValor('C', DESTINO);
  ChEditarDestino.Enabled := not ContemValor('E', DESTINO);
  ChDeletarDestino.Enabled := not ContemValor('D', DESTINO);
  ChInserirDestino.Enabled := not ContemValor('I', DESTINO);
  ChRelatorioDestino.Enabled := not ContemValor('R', DESTINO);
  ChTodasDestino.Enabled := False;

  ChConsultarFornecedor.Enabled := not ContemValor('C', FORNECEDOR);
  ChEditarFornecedor.Enabled := not ContemValor('E', FORNECEDOR);
  ChDeletarFornecedor.Enabled := not ContemValor('D', FORNECEDOR);
  ChInserirFornecedor.Enabled := not ContemValor('I', FORNECEDOR);
  ChRelatorioFornecedor.Enabled := not ContemValor('R', FORNECEDOR);
  ChTodasFornecedor.Enabled := False;

  ChConsultarProfissao.Enabled := not ContemValor('C', PROFISSAO);
  ChEditarProfissao.Enabled := not ContemValor('E', PROFISSAO);
  ChDeletarProfissao.Enabled := not ContemValor('D', PROFISSAO);
  ChInserirProfissao.Enabled := not ContemValor('I', PROFISSAO);
  ChRelatorioProfissao.Enabled := not ContemValor('R', PROFISSAO);
  ChTodasProfissao.Enabled := False;

  ChConsultarFaltaDisciplinar.Enabled := not ContemValor('C', FALTADISCIPLINAR);
  ChEditarFaltaDisciplinar.Enabled := not ContemValor('E', FALTADISCIPLINAR);
  ChDeletarFaltaDisciplinar.Enabled := not ContemValor('D', FALTADISCIPLINAR);
  ChInserirFaltaDisciplinar.Enabled := not ContemValor('I', FALTADISCIPLINAR);
  ChRelatorioFaltaDisciplinar.Enabled := not ContemValor('R', FALTADISCIPLINAR);
  ChTodasFaltaDisciplinar.Enabled := False;

  ChConsultarSerieFaseEstudo.Enabled := not ContemValor('C', SERIEFASEESTUDO);
  ChEditarSerieFaseEstudo.Enabled := not ContemValor('E', SERIEFASEESTUDO);
  ChDeletarSerieFaseEstudo.Enabled := not ContemValor('D', SERIEFASEESTUDO);
  ChInserirSerieFaseEstudo.Enabled := not ContemValor('I', SERIEFASEESTUDO);
  ChRelatorioSerieFaseEstudo.Enabled := not ContemValor('R', SERIEFASEESTUDO);
  ChTodasSerieFaseEstudo.Enabled := False;

  ChConsultarProcessoCondenacao.Enabled := not ContemValor('C', PROCESSOCONDENACAO);
  ChEditarProcessoCondenacao.Enabled := not ContemValor('E', PROCESSOCONDENACAO);
  ChDeletarProcessoCondenacao.Enabled := not ContemValor('D', PROCESSOCONDENACAO);
  ChInserirProcessoCondenacao.Enabled := not ContemValor('I', PROCESSOCONDENACAO);
  ChRelatorioProcessoCondenacao.Enabled := not ContemValor('R', PROCESSOCONDENACAO);
  ChTodasProcessoCondenacao.Enabled := False;

  ChConsultarDetracao.Enabled := not ContemValor('C', DETRACAO);
  ChEditarDetracao.Enabled := not ContemValor('E', DETRACAO);
  ChDeletarDetracao.Enabled := not ContemValor('D', DETRACAO);
  ChInserirDetracao.Enabled := not ContemValor('I', DETRACAO);
  ChRelatorioDetracao.Enabled := not ContemValor('R', DETRACAO);
  ChTodasDetracao.Enabled := False;

  ChConsultarInterrupcao.Enabled := not ContemValor('C', INTERRUPCAO);
  ChEditarInterrupcao.Enabled := not ContemValor('E', INTERRUPCAO);
  ChDeletarInterrupcao.Enabled := not ContemValor('D', INTERRUPCAO);
  ChInserirInterrupcao.Enabled := not ContemValor('I', INTERRUPCAO);
  ChRelatorioInterrupcao.Enabled := not ContemValor('R', INTERRUPCAO);
  ChTodasInterrupcao.Enabled := False;

  ChConsultarRemicao.Enabled := not ContemValor('C', REMICAO);
  ChEditarRemicao.Enabled := not ContemValor('E', REMICAO);
  ChDeletarRemicao.Enabled := not ContemValor('D', REMICAO);
  ChInserirRemicao.Enabled := not ContemValor('I', REMICAO);
  ChRelatorioRemicao.Enabled := not ContemValor('R', REMICAO);
  ChTodasRemicao.Enabled := False;

  ChConsultarArtigoPenal.Enabled := not ContemValor('C', ARTIGOPENAL);
  ChEditarArtigoPenal.Enabled := not ContemValor('E', ARTIGOPENAL);
  ChDeletarArtigoPenal.Enabled := not ContemValor('D', ARTIGOPENAL);
  ChInserirArtigoPenal.Enabled := not ContemValor('I', ARTIGOPENAL);
  ChRelatorioArtigoPenal.Enabled := not ContemValor('R', ARTIGOPENAL);
  ChTodasArtigoPenal.Enabled := False;

  ChConsultarVaraExecucao.Enabled := not ContemValor('C', VARAEXECUCAO);
  ChEditarVaraExecucao.Enabled := not ContemValor('E', VARAEXECUCAO);
  ChDeletarVaraExecucao.Enabled := not ContemValor('D', VARAEXECUCAO);
  ChInserirVaraExecucao.Enabled := not ContemValor('I', VARAEXECUCAO);
  ChRelatorioVaraExecucao.Enabled := not ContemValor('R', VARAEXECUCAO);
  ChTodasVaraExecucao.Enabled := False;

  ChConsultarRemedio.Enabled := not ContemValor('C', REMEDIO);
  ChEditarRemedio.Enabled := not ContemValor('E', REMEDIO);
  ChDeletarRemedio.Enabled := not ContemValor('D', REMEDIO);
  ChInserirRemedio.Enabled := not ContemValor('I', REMEDIO);
  ChRelatorioRemedio.Enabled := not ContemValor('R', REMEDIO);
  ChTodasRemedio.Enabled := False;

  ChConsultarFuncaoInterno.Enabled := not ContemValor('C', FUNCAOINTERNO);
  ChEditarFuncaoInterno.Enabled := not ContemValor('E', FUNCAOINTERNO);
  ChDeletarFuncaoInterno.Enabled := not ContemValor('D', FUNCAOINTERNO);
  ChInserirFuncaoInterno.Enabled := not ContemValor('I', FUNCAOINTERNO);
  ChRelatorioFuncaoInterno.Enabled := not ContemValor('R', FUNCAOINTERNO);
  ChTodasFuncaoInterno.Enabled := False;

  ChConsultarCalculoTrabalho.Enabled := not ContemValor('C', CALCULOTRABALHO);
  ChEditarCalculoTrabalho.Enabled := not ContemValor('E', CALCULOTRABALHO);
  ChDeletarCalculoTrabalho.Enabled := not ContemValor('D', CALCULOTRABALHO);
  ChInserirCalculoTrabalho.Enabled := not ContemValor('I', CALCULOTRABALHO);
  ChRelatorioCalculoTrabalho.Enabled := not ContemValor('R', CALCULOTRABALHO);
  ChTodasCalculoTrabalho.Enabled := False;

  ChConsultarRemicaoTrabalho.Enabled := not ContemValor('C', REMICAOTRABALHO);
  ChEditarRemicaoTrabalho.Enabled := not ContemValor('E', REMICAOTRABALHO);
  ChDeletarRemicaoTrabalho.Enabled := not ContemValor('D', REMICAOTRABALHO);
  ChInserirRemicaoTrabalho.Enabled := not ContemValor('I', REMICAOTRABALHO);
  ChRelatorioRemicaoTrabalho.Enabled := not ContemValor('R', REMICAOTRABALHO);
  ChTodasRemicaoTrabalho.Enabled := False;

  ChConsultarRoupas.Enabled := not ContemValor('C', ROUPAS);
  ChEditarRoupas.Enabled := not ContemValor('E', ROUPAS);
  ChDeletarRoupas.Enabled := not ContemValor('D', ROUPAS);
  ChInserirRoupas.Enabled := not ContemValor('I', ROUPAS);
  ChRelatorioRoupas.Enabled := not ContemValor('R', ROUPAS);
  ChTodasRoupas.Enabled := False;

  ChConsultarGrauParentesco.Enabled := not ContemValor('C', GRAUPARENTESCO);
  ChEditarGrauParentesco.Enabled := not ContemValor('E', GRAUPARENTESCO);
  ChDeletarGrauParentesco.Enabled := not ContemValor('D', GRAUPARENTESCO);
  ChInserirGrauParentesco.Enabled := not ContemValor('I', GRAUPARENTESCO);
  ChRelatorioGrauParentesco.Enabled := not ContemValor('R', GRAUPARENTESCO);
  ChTodasGrauParentesco.Enabled := False;

  ChConsultarTipoContato.Enabled := not ContemValor('C', TIPOCONTATO);
  ChEditarTipoContato.Enabled := not ContemValor('E', TIPOCONTATO);
  ChDeletarTipoContato.Enabled := not ContemValor('D', TIPOCONTATO);
  ChInserirTipoContato.Enabled := not ContemValor('I', TIPOCONTATO);
  ChRelatorioTipoContato.Enabled := not ContemValor('R', TIPOCONTATO);
  ChTodasTipoContato.Enabled := False;

  ChConsultarAssunto.Enabled := not ContemValor('C', ASSUNTO);
  ChEditarAssunto.Enabled := not ContemValor('E', ASSUNTO);
  ChDeletarAssunto.Enabled := not ContemValor('D', ASSUNTO);
  ChInserirAssunto.Enabled := not ContemValor('I', ASSUNTO);
  ChRelatorioAssunto.Enabled := not ContemValor('R', ASSUNTO);
  ChTodasAssunto.Enabled := False;

  ChConsultarSituacao.Enabled := not ContemValor('C', SITUACAO);
  ChEditarSituacao.Enabled := not ContemValor('E', SITUACAO);
  ChDeletarSituacao.Enabled := not ContemValor('D', SITUACAO);
  ChInserirSituacao.Enabled := not ContemValor('I', SITUACAO);
  ChRelatorioSituacao.Enabled := not ContemValor('R', SITUACAO);
  ChTodasSituacao.Enabled := False;

  ChConsultarSetorTrabalhoCad.Enabled := not ContemValor('C', SETORTRABALHOCAD);
  ChEditarSetorTrabalhoCad.Enabled := not ContemValor('E', SETORTRABALHOCAD);
  ChDeletarSetorTrabalhoCad.Enabled := not ContemValor('D', SETORTRABALHOCAD);
  ChInserirSetorTrabalhoCad.Enabled := not ContemValor('I', SETORTRABALHOCAD);
  ChRelatorioSetorTrabalhoCad.Enabled := not ContemValor('R', SETORTRABALHOCAD);
  ChTodasSetorTrabalhoCad.Enabled := False;

  ChConsultarEventos.Enabled := not ContemValor('C', EVENTOS);
  ChEditarEventos.Enabled := not ContemValor('E', EVENTOS);
  ChDeletarEventos.Enabled := not ContemValor('D', EVENTOS);
  ChInserirEventos.Enabled := not ContemValor('I', EVENTOS);
  ChRelatorioEventos.Enabled := not ContemValor('R', EVENTOS);
  ChTodasEventos.Enabled := False;

  ChConsultarSubEventos.Enabled := not ContemValor('C', SUBEVENTOS);
  ChEditarSubEventos.Enabled := not ContemValor('E', SUBEVENTOS);
  ChDeletarSubEventos.Enabled := not ContemValor('D', SUBEVENTOS);
  ChInserirSubEventos.Enabled := not ContemValor('I', SUBEVENTOS);
  ChRelatorioSubEventos.Enabled := not ContemValor('R', SUBEVENTOS);
  ChTodasSubEventos.Enabled := False;

  ChConsultarMonitEventos.Enabled := not ContemValor('C', MONITORAMENTOEVENTOS);
  ChEditarMonitEventos.Enabled := not ContemValor('E', MONITORAMENTOEVENTOS);
  ChDeletarMonitEventos.Enabled := not ContemValor('D', MONITORAMENTOEVENTOS);
  ChInserirMonitEventos.Enabled := not ContemValor('I', MONITORAMENTOEVENTOS);
  ChRelatorioMonitEventos.Enabled := not ContemValor('R', MONITORAMENTOEVENTOS);
  ChTodasMonitEventos.Enabled := False;

end;

procedure TFrmCadastroFuncionario.BtnLimparPermissoesClick(Sender: TObject);
begin
  inherited;
  LimpaPermissaoTodas();
end;

procedure TFrmCadastroFuncionario.DBLookupPerfilUsuarioKeyUp(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if not ((Key = VK_RETURN) or (Key = VK_SPACE) or (Key = VK_ESCAPE) or (Key = VK_BACK)) then
    DBLookupPerfilUsuarioCloseUp(Sender);
end;

procedure TFrmCadastroFuncionario.ChConsultarAdvogadoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarAdvogado, ChEditarAdvogado, ChDeletarAdvogado, ChInserirAdvogado, ChRelatorioAdvogado, ChTodasAdvogado,
    'PERMISSAO_ADVOGADO');
end;

procedure TFrmCadastroFuncionario.ChEditarAdvogadoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarAdvogado, ChEditarAdvogado, ChDeletarAdvogado, ChInserirAdvogado, ChRelatorioAdvogado, ChTodasAdvogado,
    'PERMISSAO_ADVOGADO');
end;

procedure TFrmCadastroFuncionario.ChDeletarAdvogadoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarAdvogado, ChEditarAdvogado, ChDeletarAdvogado, ChInserirAdvogado, ChRelatorioAdvogado, ChTodasAdvogado,
    'PERMISSAO_ADVOGADO');
end;

procedure TFrmCadastroFuncionario.ChInserirAdvogadoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarAdvogado, ChEditarAdvogado, ChDeletarAdvogado, ChInserirAdvogado, ChRelatorioAdvogado, ChTodasAdvogado,
    'PERMISSAO_ADVOGADO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioAdvogadoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarAdvogado, ChEditarAdvogado, ChDeletarAdvogado, ChInserirAdvogado, ChRelatorioAdvogado, ChTodasAdvogado,
    'PERMISSAO_ADVOGADO');
end;

procedure TFrmCadastroFuncionario.ChTodasAdvogadoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarAdvogado, ChEditarAdvogado, ChDeletarAdvogado, ChInserirAdvogado, ChRelatorioAdvogado, ChTodasAdvogado);
end;

procedure TFrmCadastroFuncionario.ChConsultarVisitanteTraficoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarVisitanteTrafico, ChEditarVisitanteTrafico, ChDeletarVisitanteTrafico, ChInserirVisitanteTrafico, ChRelatorioVisitanteTrafico, ChTodasVisitanteTrafico,
    'PERMISSAO_VISITANTETRAFICO');
end;

procedure TFrmCadastroFuncionario.ChEditarVisitanteTraficoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarVisitanteTrafico, ChEditarVisitanteTrafico, ChDeletarVisitanteTrafico, ChInserirVisitanteTrafico, ChRelatorioVisitanteTrafico, ChTodasVisitanteTrafico,
    'PERMISSAO_VISITANTETRAFICO');
end;

procedure TFrmCadastroFuncionario.ChDeletarVisitanteTraficoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarVisitanteTrafico, ChEditarVisitanteTrafico, ChDeletarVisitanteTrafico, ChInserirVisitanteTrafico, ChRelatorioVisitanteTrafico, ChTodasVisitanteTrafico,
    'PERMISSAO_VISITANTETRAFICO');
end;

procedure TFrmCadastroFuncionario.ChInserirVisitanteTraficoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarVisitanteTrafico, ChEditarVisitanteTrafico, ChDeletarVisitanteTrafico, ChInserirVisitanteTrafico, ChRelatorioVisitanteTrafico, ChTodasVisitanteTrafico,
    'PERMISSAO_VISITANTETRAFICO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioVisitanteTraficoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarVisitanteTrafico, ChEditarVisitanteTrafico, ChDeletarVisitanteTrafico, ChInserirVisitanteTrafico, ChRelatorioVisitanteTrafico, ChTodasVisitanteTrafico,
    'PERMISSAO_VISITANTETRAFICO');
end;

procedure TFrmCadastroFuncionario.ChTodasVisitanteTraficoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarVisitanteTrafico, ChEditarVisitanteTrafico, ChDeletarVisitanteTrafico, ChInserirVisitanteTrafico, ChRelatorioVisitanteTrafico, ChTodasVisitanteTrafico);
end;

procedure TFrmCadastroFuncionario.ChConsultarFaccaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarFaccao, ChEditarFaccao, ChDeletarFaccao, ChInserirFaccao, ChRelatorioFaccao, ChTodasFaccao,
    'PERMISSAO_FACCAO');
end;

procedure TFrmCadastroFuncionario.ChEditarFaccaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarFaccao, ChEditarFaccao, ChDeletarFaccao, ChInserirFaccao, ChRelatorioFaccao, ChTodasFaccao,
    'PERMISSAO_FACCAO');
end;

procedure TFrmCadastroFuncionario.ChDeletarFaccaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarFaccao, ChEditarFaccao, ChDeletarFaccao, ChInserirFaccao, ChRelatorioFaccao, ChTodasFaccao,
    'PERMISSAO_FACCAO');
end;

procedure TFrmCadastroFuncionario.ChInserirFaccaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarFaccao, ChEditarFaccao, ChDeletarFaccao, ChInserirFaccao, ChRelatorioFaccao, ChTodasFaccao,
    'PERMISSAO_FACCAO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioFaccaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarFaccao, ChEditarFaccao, ChDeletarFaccao, ChInserirFaccao, ChRelatorioFaccao, ChTodasFaccao,
    'PERMISSAO_FACCAO');
end;

procedure TFrmCadastroFuncionario.ChTodasFaccaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarFaccao, ChEditarFaccao, ChDeletarFaccao, ChInserirFaccao, ChRelatorioFaccao, ChTodasFaccao);
end;

procedure TFrmCadastroFuncionario.ChConsultarCTCClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCTC, ChEditarCTC, ChDeletarCTC, ChInserirCTC, ChRelatorioCTC, ChTodasCTC,
    'PERMISSAO_CTC');
end;

procedure TFrmCadastroFuncionario.ChEditarCTCClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCTC, ChEditarCTC, ChDeletarCTC, ChInserirCTC, ChRelatorioCTC, ChTodasCTC,
    'PERMISSAO_CTC');
end;

procedure TFrmCadastroFuncionario.ChDeletarCTCClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCTC, ChEditarCTC, ChDeletarCTC, ChInserirCTC, ChRelatorioCTC, ChTodasCTC,
    'PERMISSAO_CTC');
end;

procedure TFrmCadastroFuncionario.ChInserirCTCClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCTC, ChEditarCTC, ChDeletarCTC, ChInserirCTC, ChRelatorioCTC, ChTodasCTC,
    'PERMISSAO_CTC');
end;

procedure TFrmCadastroFuncionario.ChRelatorioCTCClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCTC, ChEditarCTC, ChDeletarCTC, ChInserirCTC, ChRelatorioCTC, ChTodasCTC,
    'PERMISSAO_CTC');
end;

procedure TFrmCadastroFuncionario.ChTodasCTCClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarCTC, ChEditarCTC, ChDeletarCTC, ChInserirCTC, ChRelatorioCTC, ChTodasCTC);
end;

procedure TFrmCadastroFuncionario.ChConsultarAgendaAtendimentoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarAgendaAtendimento, ChEditarAgendaAtendimento, ChDeletarAgendaAtendimento, ChInserirAgendaAtendimento, ChRelatorioAgendaAtendimento, ChTodasAgendaAtendimento,
    'PERMISSAO_AGENDAATENDIMENTO');
end;

procedure TFrmCadastroFuncionario.ChEditarAgendaAtendimentoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarAgendaAtendimento, ChEditarAgendaAtendimento, ChDeletarAgendaAtendimento, ChInserirAgendaAtendimento, ChRelatorioAgendaAtendimento, ChTodasAgendaAtendimento,
    'PERMISSAO_AGENDAATENDIMENTO');
end;

procedure TFrmCadastroFuncionario.ChDeletarAgendaAtendimentoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarAgendaAtendimento, ChEditarAgendaAtendimento, ChDeletarAgendaAtendimento, ChInserirAgendaAtendimento, ChRelatorioAgendaAtendimento, ChTodasAgendaAtendimento,
    'PERMISSAO_AGENDAATENDIMENTO');
end;

procedure TFrmCadastroFuncionario.ChInserirAgendaAtendimentoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarAgendaAtendimento, ChEditarAgendaAtendimento, ChDeletarAgendaAtendimento, ChInserirAgendaAtendimento, ChRelatorioAgendaAtendimento, ChTodasAgendaAtendimento,
    'PERMISSAO_AGENDAATENDIMENTO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioAgendaAtendimentoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarAgendaAtendimento, ChEditarAgendaAtendimento, ChDeletarAgendaAtendimento, ChInserirAgendaAtendimento, ChRelatorioAgendaAtendimento, ChTodasAgendaAtendimento,
    'PERMISSAO_AGENDAATENDIMENTO');
end;

procedure TFrmCadastroFuncionario.ChTodasAgendaAtendimentoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarAgendaAtendimento, ChEditarAgendaAtendimento, ChDeletarAgendaAtendimento, ChInserirAgendaAtendimento, ChRelatorioAgendaAtendimento, ChTodasAgendaAtendimento);
end;

procedure TFrmCadastroFuncionario.ChConsultarCorrespondenciaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCorrespondencia, ChEditarCorrespondencia, ChDeletarCorrespondencia, ChInserirCorrespondencia, ChRelatorioCorrespondencia, ChTodasCorrespondencia,
    'PERMISSAO_CORRESPONDENCIA');
end;

procedure TFrmCadastroFuncionario.ChEditarCorrespondenciaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCorrespondencia, ChEditarCorrespondencia, ChDeletarCorrespondencia, ChInserirCorrespondencia, ChRelatorioCorrespondencia, ChTodasCorrespondencia,
    'PERMISSAO_CORRESPONDENCIA');
end;

procedure TFrmCadastroFuncionario.ChDeletarCorrespondenciaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCorrespondencia, ChEditarCorrespondencia, ChDeletarCorrespondencia, ChInserirCorrespondencia, ChRelatorioCorrespondencia, ChTodasCorrespondencia,
    'PERMISSAO_CORRESPONDENCIA');
end;

procedure TFrmCadastroFuncionario.ChInserirCorrespondenciaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCorrespondencia, ChEditarCorrespondencia, ChDeletarCorrespondencia, ChInserirCorrespondencia, ChRelatorioCorrespondencia, ChTodasCorrespondencia,
    'PERMISSAO_CORRESPONDENCIA');
end;

procedure TFrmCadastroFuncionario.ChRelatorioCorrespondenciaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCorrespondencia, ChEditarCorrespondencia, ChDeletarCorrespondencia, ChInserirCorrespondencia, ChRelatorioCorrespondencia, ChTodasCorrespondencia,
    'PERMISSAO_CORRESPONDENCIA');
end;

procedure TFrmCadastroFuncionario.ChTodasCorrespondenciaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarCorrespondencia, ChEditarCorrespondencia, ChDeletarCorrespondencia, ChInserirCorrespondencia, ChRelatorioCorrespondencia, ChTodasCorrespondencia);
end;

procedure TFrmCadastroFuncionario.ChConsultarLivroRevistaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarLivroRevista, ChEditarLivroRevista, ChDeletarLivroRevista, ChInserirLivroRevista, ChRelatorioLivroRevista, ChTodasLivroRevista,
    'PERMISSAO_LIVROREVISTA');
end;

procedure TFrmCadastroFuncionario.ChEditarLivroRevistaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarLivroRevista, ChEditarLivroRevista, ChDeletarLivroRevista, ChInserirLivroRevista, ChRelatorioLivroRevista, ChTodasLivroRevista,
    'PERMISSAO_LIVROREVISTA');
end;

procedure TFrmCadastroFuncionario.ChDeletarLivroRevistaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarLivroRevista, ChEditarLivroRevista, ChDeletarLivroRevista, ChInserirLivroRevista, ChRelatorioLivroRevista, ChTodasLivroRevista,
    'PERMISSAO_LIVROREVISTA');
end;

procedure TFrmCadastroFuncionario.ChInserirLivroRevistaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarLivroRevista, ChEditarLivroRevista, ChDeletarLivroRevista, ChInserirLivroRevista, ChRelatorioLivroRevista, ChTodasLivroRevista,
    'PERMISSAO_LIVROREVISTA');
end;

procedure TFrmCadastroFuncionario.ChRelatorioLivroRevistaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarLivroRevista, ChEditarLivroRevista, ChDeletarLivroRevista, ChInserirLivroRevista, ChRelatorioLivroRevista, ChTodasLivroRevista,
    'PERMISSAO_LIVROREVISTA');
end;

procedure TFrmCadastroFuncionario.ChTodasLivroRevistaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarLivroRevista, ChEditarLivroRevista, ChDeletarLivroRevista, ChInserirLivroRevista, ChRelatorioLivroRevista, ChTodasLivroRevista);
end;

procedure TFrmCadastroFuncionario.ChConsultarPavilhaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarPavilhao, ChEditarPavilhao, ChDeletarPavilhao, ChInserirPavilhao, ChRelatorioPavilhao, ChTodasPavilhao,
    'PERMISSAO_PAVILHAO');
end;

procedure TFrmCadastroFuncionario.ChEditarPavilhaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarPavilhao, ChEditarPavilhao, ChDeletarPavilhao, ChInserirPavilhao, ChRelatorioPavilhao, ChTodasPavilhao,
    'PERMISSAO_PAVILHAO');
end;

procedure TFrmCadastroFuncionario.ChDeletarPavilhaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarPavilhao, ChEditarPavilhao, ChDeletarPavilhao, ChInserirPavilhao, ChRelatorioPavilhao, ChTodasPavilhao,
    'PERMISSAO_PAVILHAO');
end;

procedure TFrmCadastroFuncionario.ChInserirPavilhaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarPavilhao, ChEditarPavilhao, ChDeletarPavilhao, ChInserirPavilhao, ChRelatorioPavilhao, ChTodasPavilhao,
    'PERMISSAO_PAVILHAO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioPavilhaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarPavilhao, ChEditarPavilhao, ChDeletarPavilhao, ChInserirPavilhao, ChRelatorioPavilhao, ChTodasPavilhao,
    'PERMISSAO_PAVILHAO');
end;

procedure TFrmCadastroFuncionario.ChTodasPavilhaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarPavilhao, ChEditarPavilhao, ChDeletarPavilhao, ChInserirPavilhao, ChRelatorioPavilhao, ChTodasPavilhao);
end;

procedure TFrmCadastroFuncionario.ChConsultarGaleriaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarGaleria, ChEditarGaleria, ChDeletarGaleria, ChInserirGaleria, ChRelatorioGaleria, ChTodasGaleria,
    'PERMISSAO_GALERIA');
end;

procedure TFrmCadastroFuncionario.ChEditarGaleriaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarGaleria, ChEditarGaleria, ChDeletarGaleria, ChInserirGaleria, ChRelatorioGaleria, ChTodasGaleria,
    'PERMISSAO_GALERIA');
end;

procedure TFrmCadastroFuncionario.ChDeletarGaleriaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarGaleria, ChEditarGaleria, ChDeletarGaleria, ChInserirGaleria, ChRelatorioGaleria, ChTodasGaleria,
    'PERMISSAO_GALERIA');
end;

procedure TFrmCadastroFuncionario.ChInserirGaleriaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarGaleria, ChEditarGaleria, ChDeletarGaleria, ChInserirGaleria, ChRelatorioGaleria, ChTodasGaleria,
    'PERMISSAO_GALERIA');
end;

procedure TFrmCadastroFuncionario.ChRelatorioGaleriaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarGaleria, ChEditarGaleria, ChDeletarGaleria, ChInserirGaleria, ChRelatorioGaleria, ChTodasGaleria,
    'PERMISSAO_GALERIA');
end;

procedure TFrmCadastroFuncionario.ChTodasGaleriaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarGaleria, ChEditarGaleria, ChDeletarGaleria, ChInserirGaleria, ChRelatorioGaleria, ChTodasGaleria);
end;

procedure TFrmCadastroFuncionario.ChConsultarSolarioClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSolario, ChEditarSolario, ChDeletarSolario, ChInserirSolario, ChRelatorioSolario, ChTodasSolario,
    'PERMISSAO_SOLARIO');
end;

procedure TFrmCadastroFuncionario.ChEditarSolarioClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSolario, ChEditarSolario, ChDeletarSolario, ChInserirSolario, ChRelatorioSolario, ChTodasSolario,
    'PERMISSAO_SOLARIO');
end;

procedure TFrmCadastroFuncionario.ChDeletarSolarioClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSolario, ChEditarSolario, ChDeletarSolario, ChInserirSolario, ChRelatorioSolario, ChTodasSolario,
    'PERMISSAO_SOLARIO');
end;

procedure TFrmCadastroFuncionario.ChInserirSolarioClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSolario, ChEditarSolario, ChDeletarSolario, ChInserirSolario, ChRelatorioSolario, ChTodasSolario,
    'PERMISSAO_SOLARIO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioSolarioClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSolario, ChEditarSolario, ChDeletarSolario, ChInserirSolario, ChRelatorioSolario, ChTodasSolario,
    'PERMISSAO_SOLARIO');
end;

procedure TFrmCadastroFuncionario.ChTodasSolarioClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarSolario, ChEditarSolario, ChDeletarSolario, ChInserirSolario, ChRelatorioSolario, ChTodasSolario);
end;

procedure TFrmCadastroFuncionario.ChConsultarCelaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCela, ChEditarCela, ChDeletarCela, ChInserirCela, ChRelatorioCela, ChTodasCela,
    'PERMISSAO_CELA');
end;

procedure TFrmCadastroFuncionario.ChEditarCelaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCela, ChEditarCela, ChDeletarCela, ChInserirCela, ChRelatorioCela, ChTodasCela,
    'PERMISSAO_CELA');
end;

procedure TFrmCadastroFuncionario.ChDeletarCelaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCela, ChEditarCela, ChDeletarCela, ChInserirCela, ChRelatorioCela, ChTodasCela,
    'PERMISSAO_CELA');
end;

procedure TFrmCadastroFuncionario.ChInserirCelaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCela, ChEditarCela, ChDeletarCela, ChInserirCela, ChRelatorioCela, ChTodasCela,
    'PERMISSAO_CELA');
end;

procedure TFrmCadastroFuncionario.ChRelatorioCelaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCela, ChEditarCela, ChDeletarCela, ChInserirCela, ChRelatorioCela, ChTodasCela,
    'PERMISSAO_CELA');
end;

procedure TFrmCadastroFuncionario.ChTodasCelaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarCela, ChEditarCela, ChDeletarCela, ChInserirCela, ChRelatorioCela, ChTodasCela);
end;

procedure TFrmCadastroFuncionario.ChConsultarCondicaoInternoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCondicaoInterno, ChEditarCondicaoInterno, ChDeletarCondicaoInterno, ChInserirCondicaoInterno, ChRelatorioCondicaoInterno, ChTodasCondicaoInterno,
    'PERMISSAO_CONDICAOINTERNO');
end;

procedure TFrmCadastroFuncionario.ChEditarCondicaoInternoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCondicaoInterno, ChEditarCondicaoInterno, ChDeletarCondicaoInterno, ChInserirCondicaoInterno, ChRelatorioCondicaoInterno, ChTodasCondicaoInterno,
    'PERMISSAO_CONDICAOINTERNO');
end;

procedure TFrmCadastroFuncionario.ChDeletarCondicaoInternoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCondicaoInterno, ChEditarCondicaoInterno, ChDeletarCondicaoInterno, ChInserirCondicaoInterno, ChRelatorioCondicaoInterno, ChTodasCondicaoInterno,
    'PERMISSAO_CONDICAOINTERNO');
end;

procedure TFrmCadastroFuncionario.ChInserirCondicaoInternoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCondicaoInterno, ChEditarCondicaoInterno, ChDeletarCondicaoInterno, ChInserirCondicaoInterno, ChRelatorioCondicaoInterno, ChTodasCondicaoInterno,
    'PERMISSAO_CONDICAOINTERNO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioCondicaoInternoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCondicaoInterno, ChEditarCondicaoInterno, ChDeletarCondicaoInterno, ChInserirCondicaoInterno, ChRelatorioCondicaoInterno, ChTodasCondicaoInterno,
    'PERMISSAO_CONDICAOINTERNO');
end;

procedure TFrmCadastroFuncionario.ChTodasCondicaoInternoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarCondicaoInterno, ChEditarCondicaoInterno, ChDeletarCondicaoInterno, ChInserirCondicaoInterno, ChRelatorioCondicaoInterno, ChTodasCondicaoInterno);
end;

procedure TFrmCadastroFuncionario.ChConsultarCidadeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCidade, ChEditarCidade, ChDeletarCidade, ChInserirCidade, ChRelatorioCidade, ChTodasCidade,
    'PERMISSAO_CIDADE');
end;

procedure TFrmCadastroFuncionario.ChEditarCidadeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCidade, ChEditarCidade, ChDeletarCidade, ChInserirCidade, ChRelatorioCidade, ChTodasCidade,
    'PERMISSAO_CIDADE');
end;

procedure TFrmCadastroFuncionario.ChDeletarCidadeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCidade, ChEditarCidade, ChDeletarCidade, ChInserirCidade, ChRelatorioCidade, ChTodasCidade,
    'PERMISSAO_CIDADE');
end;

procedure TFrmCadastroFuncionario.ChInserirCidadeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCidade, ChEditarCidade, ChDeletarCidade, ChInserirCidade, ChRelatorioCidade, ChTodasCidade,
    'PERMISSAO_CIDADE');
end;

procedure TFrmCadastroFuncionario.ChRelatorioCidadeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCidade, ChEditarCidade, ChDeletarCidade, ChInserirCidade, ChRelatorioCidade, ChTodasCidade,
    'PERMISSAO_CIDADE');
end;

procedure TFrmCadastroFuncionario.ChTodasCidadeClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarCidade, ChEditarCidade, ChDeletarCidade, ChInserirCidade, ChRelatorioCidade, ChTodasCidade);
end;

procedure TFrmCadastroFuncionario.ChConsultarRacaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarRaca, ChEditarRaca, ChDeletarRaca, ChInserirRaca, ChRelatorioRaca, ChTodasRaca,
    'PERMISSAO_RACA');
end;

procedure TFrmCadastroFuncionario.ChEditarRacaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarRaca, ChEditarRaca, ChDeletarRaca, ChInserirRaca, ChRelatorioRaca, ChTodasRaca,
    'PERMISSAO_RACA');
end;

procedure TFrmCadastroFuncionario.ChDeletarRacaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarRaca, ChEditarRaca, ChDeletarRaca, ChInserirRaca, ChRelatorioRaca, ChTodasRaca,
    'PERMISSAO_RACA');
end;

procedure TFrmCadastroFuncionario.ChInserirRacaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarRaca, ChEditarRaca, ChDeletarRaca, ChInserirRaca, ChRelatorioRaca, ChTodasRaca,
    'PERMISSAO_RACA');
end;

procedure TFrmCadastroFuncionario.ChRelatorioRacaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarRaca, ChEditarRaca, ChDeletarRaca, ChInserirRaca, ChRelatorioRaca, ChTodasRaca,
    'PERMISSAO_RACA');
end;

procedure TFrmCadastroFuncionario.ChTodasRacaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarRaca, ChEditarRaca, ChDeletarRaca, ChInserirRaca, ChRelatorioRaca, ChTodasRaca);
end;

procedure TFrmCadastroFuncionario.ChConsultarEscolaridadeClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarEscolaridade, ChEditarEscolaridade, ChDeletarEscolaridade, ChInserirEscolaridade, ChRelatorioEscolaridade, ChTodasEscolaridade,
    'PERMISSAO_ESCOLARIDADE');
end;

procedure TFrmCadastroFuncionario.ChEditarEscolaridadeClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarEscolaridade, ChEditarEscolaridade, ChDeletarEscolaridade, ChInserirEscolaridade, ChRelatorioEscolaridade, ChTodasEscolaridade,
    'PERMISSAO_ESCOLARIDADE');
end;

procedure TFrmCadastroFuncionario.ChDeletarEscolaridadeClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarEscolaridade, ChEditarEscolaridade, ChDeletarEscolaridade, ChInserirEscolaridade, ChRelatorioEscolaridade, ChTodasEscolaridade,
    'PERMISSAO_ESCOLARIDADE');
end;

procedure TFrmCadastroFuncionario.ChInserirEscolaridadeClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarEscolaridade, ChEditarEscolaridade, ChDeletarEscolaridade, ChInserirEscolaridade, ChRelatorioEscolaridade, ChTodasEscolaridade,
    'PERMISSAO_ESCOLARIDADE');
end;

procedure TFrmCadastroFuncionario.ChRelatorioEscolaridadeClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarEscolaridade, ChEditarEscolaridade, ChDeletarEscolaridade, ChInserirEscolaridade, ChRelatorioEscolaridade, ChTodasEscolaridade,
    'PERMISSAO_ESCOLARIDADE');
end;

procedure TFrmCadastroFuncionario.ChTodasEscolaridadeClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarEscolaridade, ChEditarEscolaridade, ChDeletarEscolaridade, ChInserirEscolaridade, ChRelatorioEscolaridade, ChTodasEscolaridade);
end;

procedure TFrmCadastroFuncionario.ChConsultarNacionalidadeClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarNacionalidade, CheditarNacionalidade, ChDeletarNacionalidade, ChInserirNacionalidade, ChRelatorioNacionalidade, ChTodasNacionalidade,
    'PERMISSAO_NACIONALIDADE');
end;

procedure TFrmCadastroFuncionario.CheditarNacionalidadeClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarNacionalidade, CheditarNacionalidade, ChDeletarNacionalidade, ChInserirNacionalidade, ChRelatorioNacionalidade, ChTodasNacionalidade,
    'PERMISSAO_NACIONALIDADE');
end;

procedure TFrmCadastroFuncionario.ChDeletarNacionalidadeClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarNacionalidade, CheditarNacionalidade, ChDeletarNacionalidade, ChInserirNacionalidade, ChRelatorioNacionalidade, ChTodasNacionalidade,
    'PERMISSAO_NACIONALIDADE');
end;

procedure TFrmCadastroFuncionario.ChInserirNacionalidadeClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarNacionalidade, CheditarNacionalidade, ChDeletarNacionalidade, ChInserirNacionalidade, ChRelatorioNacionalidade, ChTodasNacionalidade,
    'PERMISSAO_NACIONALIDADE');
end;

procedure TFrmCadastroFuncionario.ChRelatorioNacionalidadeClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarNacionalidade, CheditarNacionalidade, ChDeletarNacionalidade, ChInserirNacionalidade, ChRelatorioNacionalidade, ChTodasNacionalidade,
    'PERMISSAO_NACIONALIDADE');
end;

procedure TFrmCadastroFuncionario.ChTodasNacionalidadeClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarNacionalidade, CheditarNacionalidade, ChDeletarNacionalidade, ChInserirNacionalidade, ChRelatorioNacionalidade, ChTodasNacionalidade);
end;

procedure TFrmCadastroFuncionario.ChConsultarProcedenciaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarProcedencia, ChEditarProcedencia, ChDeletarProcedencia, ChInserirProcedencia, ChRelatorioProcedencia, ChTodasProcedencia,
    'PERMISSAO_PROCEDENCIA');
end;

procedure TFrmCadastroFuncionario.ChEditarProcedenciaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarProcedencia, ChEditarProcedencia, ChDeletarProcedencia, ChInserirProcedencia, ChRelatorioProcedencia, ChTodasProcedencia,
    'PERMISSAO_PROCEDENCIA');
end;

procedure TFrmCadastroFuncionario.ChDeletarProcedenciaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarProcedencia, ChEditarProcedencia, ChDeletarProcedencia, ChInserirProcedencia, ChRelatorioProcedencia, ChTodasProcedencia,
    'PERMISSAO_PROCEDENCIA');
end;

procedure TFrmCadastroFuncionario.ChInserirProcedenciaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarProcedencia, ChEditarProcedencia, ChDeletarProcedencia, ChInserirProcedencia, ChRelatorioProcedencia, ChTodasProcedencia,
    'PERMISSAO_PROCEDENCIA');
end;

procedure TFrmCadastroFuncionario.ChRelatorioProcedenciaClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarProcedencia, ChEditarProcedencia, ChDeletarProcedencia, ChInserirProcedencia, ChRelatorioProcedencia, ChTodasProcedencia,
    'PERMISSAO_PROCEDENCIA');
end;

procedure TFrmCadastroFuncionario.ChTodasProcedenciaClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarProcedencia, ChEditarProcedencia, ChDeletarProcedencia, ChInserirProcedencia, ChRelatorioProcedencia, ChTodasProcedencia);
end;

procedure TFrmCadastroFuncionario.ChConsultarDestinoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarDestino, ChEditarDestino, ChDeletarDestino, ChInserirDestino, ChRelatorioDestino, ChTodasDestino,
    'PERMISSAO_DESTINO');
end;

procedure TFrmCadastroFuncionario.ChEditarDestinoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarDestino, ChEditarDestino, ChDeletarDestino, ChInserirDestino, ChRelatorioDestino, ChTodasDestino,
    'PERMISSAO_DESTINO');
end;

procedure TFrmCadastroFuncionario.ChDeletarDestinoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarDestino, ChEditarDestino, ChDeletarDestino, ChInserirDestino, ChRelatorioDestino, ChTodasDestino,
    'PERMISSAO_DESTINO');
end;

procedure TFrmCadastroFuncionario.ChInserirDestinoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarDestino, ChEditarDestino, ChDeletarDestino, ChInserirDestino, ChRelatorioDestino, ChTodasDestino,
    'PERMISSAO_DESTINO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioDestinoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarDestino, ChEditarDestino, ChDeletarDestino, ChInserirDestino, ChRelatorioDestino, ChTodasDestino,
    'PERMISSAO_DESTINO');
end;

procedure TFrmCadastroFuncionario.ChTodasDestinoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarDestino, ChEditarDestino, ChDeletarDestino, ChInserirDestino, ChRelatorioDestino, ChTodasDestino);
end;

procedure TFrmCadastroFuncionario.ChConsultarFornecedorClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarFornecedor, ChEditarFornecedor, ChDeletarFornecedor, ChInserirFornecedor, ChRelatorioFornecedor, ChTodasFornecedor,
    'PERMISSAO_FORNECEDOR');
end;

procedure TFrmCadastroFuncionario.ChEditarFornecedorClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarFornecedor, ChEditarFornecedor, ChDeletarFornecedor, ChInserirFornecedor, ChRelatorioFornecedor, ChTodasFornecedor,
    'PERMISSAO_FORNECEDOR');
end;

procedure TFrmCadastroFuncionario.ChDeletarFornecedorClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarFornecedor, ChEditarFornecedor, ChDeletarFornecedor, ChInserirFornecedor, ChRelatorioFornecedor, ChTodasFornecedor,
    'PERMISSAO_FORNECEDOR');
end;

procedure TFrmCadastroFuncionario.ChInserirFornecedorClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarFornecedor, ChEditarFornecedor, ChDeletarFornecedor, ChInserirFornecedor, ChRelatorioFornecedor, ChTodasFornecedor,
    'PERMISSAO_FORNECEDOR');
end;

procedure TFrmCadastroFuncionario.ChRelatorioFornecedorClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarFornecedor, ChEditarFornecedor, ChDeletarFornecedor, ChInserirFornecedor, ChRelatorioFornecedor, ChTodasFornecedor,
    'PERMISSAO_FORNECEDOR');
end;

procedure TFrmCadastroFuncionario.ChTodasFornecedorClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarFornecedor, ChEditarFornecedor, ChDeletarFornecedor, ChInserirFornecedor, ChRelatorioFornecedor, ChTodasFornecedor);
end;

procedure TFrmCadastroFuncionario.ChConsultarProfissaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarProfissao, ChEditarProfissao, ChDeletarProfissao, ChInserirProfissao, ChRelatorioProfissao, ChTodasProfissao,
    'PERMISSAO_PROFISSAO');
end;

procedure TFrmCadastroFuncionario.ChEditarProfissaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarProfissao, ChEditarProfissao, ChDeletarProfissao, ChInserirProfissao, ChRelatorioProfissao, ChTodasProfissao,
    'PERMISSAO_PROFISSAO');
end;

procedure TFrmCadastroFuncionario.ChDeletarProfissaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarProfissao, ChEditarProfissao, ChDeletarProfissao, ChInserirProfissao, ChRelatorioProfissao, ChTodasProfissao,
    'PERMISSAO_PROFISSAO');
end;

procedure TFrmCadastroFuncionario.ChInserirProfissaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarProfissao, ChEditarProfissao, ChDeletarProfissao, ChInserirProfissao, ChRelatorioProfissao, ChTodasProfissao,
    'PERMISSAO_PROFISSAO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioProfissaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarProfissao, ChEditarProfissao, ChDeletarProfissao, ChInserirProfissao, ChRelatorioProfissao, ChTodasProfissao,
    'PERMISSAO_PROFISSAO');
end;

procedure TFrmCadastroFuncionario.ChTodasProfissaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarProfissao, ChEditarProfissao, ChDeletarProfissao, ChInserirProfissao, ChRelatorioProfissao, ChTodasProfissao);
end;

procedure TFrmCadastroFuncionario.ChConsultarFaltaDisciplinarClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarFaltaDisciplinar, ChEditarFaltaDisciplinar, ChDeletarFaltaDisciplinar, ChInserirFaltaDisciplinar, ChRelatorioFaltaDisciplinar, ChTodasFaltaDisciplinar,
    'PERMISSAO_FALTADISCIPLINAR');
end;

procedure TFrmCadastroFuncionario.ChEditarFaltaDisciplinarClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarFaltaDisciplinar, ChEditarFaltaDisciplinar, ChDeletarFaltaDisciplinar, ChInserirFaltaDisciplinar, ChRelatorioFaltaDisciplinar, ChTodasFaltaDisciplinar,
    'PERMISSAO_FALTADISCIPLINAR');
end;

procedure TFrmCadastroFuncionario.ChDeletarFaltaDisciplinarClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarFaltaDisciplinar, ChEditarFaltaDisciplinar, ChDeletarFaltaDisciplinar, ChInserirFaltaDisciplinar, ChRelatorioFaltaDisciplinar, ChTodasFaltaDisciplinar,
    'PERMISSAO_FALTADISCIPLINAR');
end;

procedure TFrmCadastroFuncionario.ChInserirFaltaDisciplinarClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarFaltaDisciplinar, ChEditarFaltaDisciplinar, ChDeletarFaltaDisciplinar, ChInserirFaltaDisciplinar, ChRelatorioFaltaDisciplinar, ChTodasFaltaDisciplinar,
    'PERMISSAO_FALTADISCIPLINAR');
end;

procedure TFrmCadastroFuncionario.ChRelatorioFaltaDisciplinarClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarFaltaDisciplinar, ChEditarFaltaDisciplinar, ChDeletarFaltaDisciplinar, ChInserirFaltaDisciplinar, ChRelatorioFaltaDisciplinar, ChTodasFaltaDisciplinar,
    'PERMISSAO_FALTADISCIPLINAR');
end;

procedure TFrmCadastroFuncionario.ChTodasFaltaDisciplinarClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarFaltaDisciplinar, ChEditarFaltaDisciplinar, ChDeletarFaltaDisciplinar, ChInserirFaltaDisciplinar, ChRelatorioFaltaDisciplinar, ChTodasFaltaDisciplinar);
end;

procedure TFrmCadastroFuncionario.ChConsultarSerieFaseEstudoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSerieFaseEstudo, ChEditarSerieFaseEstudo, ChDeletarSerieFaseEstudo, ChInserirSerieFaseEstudo, ChRelatorioSerieFaseEstudo, ChTodasSerieFaseEstudo,
    'PERMISSAO_SERIEFASEESTUDO');
end;

procedure TFrmCadastroFuncionario.ChEditarSerieFaseEstudoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSerieFaseEstudo, ChEditarSerieFaseEstudo, ChDeletarSerieFaseEstudo, ChInserirSerieFaseEstudo, ChRelatorioSerieFaseEstudo, ChTodasSerieFaseEstudo,
    'PERMISSAO_SERIEFASEESTUDO');
end;

procedure TFrmCadastroFuncionario.ChDeletarSerieFaseEstudoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSerieFaseEstudo, ChEditarSerieFaseEstudo, ChDeletarSerieFaseEstudo, ChInserirSerieFaseEstudo, ChRelatorioSerieFaseEstudo, ChTodasSerieFaseEstudo,
    'PERMISSAO_SERIEFASEESTUDO');
end;

procedure TFrmCadastroFuncionario.ChInserirSerieFaseEstudoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSerieFaseEstudo, ChEditarSerieFaseEstudo, ChDeletarSerieFaseEstudo, ChInserirSerieFaseEstudo, ChRelatorioSerieFaseEstudo, ChTodasSerieFaseEstudo,
    'PERMISSAO_SERIEFASEESTUDO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioSerieFaseEstudoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSerieFaseEstudo, ChEditarSerieFaseEstudo, ChDeletarSerieFaseEstudo, ChInserirSerieFaseEstudo, ChRelatorioSerieFaseEstudo, ChTodasSerieFaseEstudo,
    'PERMISSAO_SERIEFASEESTUDO');
end;

procedure TFrmCadastroFuncionario.ChTodasSerieFaseEstudoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarSerieFaseEstudo, ChEditarSerieFaseEstudo, ChDeletarSerieFaseEstudo, ChInserirSerieFaseEstudo, ChRelatorioSerieFaseEstudo, ChTodasSerieFaseEstudo);
end;

procedure TFrmCadastroFuncionario.ChConsultarProcessoCondenacaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarProcessoCondenacao, ChEditarProcessoCondenacao, ChDeletarProcessoCondenacao, ChInserirProcessoCondenacao, ChRelatorioProcessoCondenacao, ChTodasProcessoCondenacao,
    'PERMISSAO_PROCESSOCONDENACAO');
end;

procedure TFrmCadastroFuncionario.ChEditarProcessoCondenacaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarProcessoCondenacao, ChEditarProcessoCondenacao, ChDeletarProcessoCondenacao, ChInserirProcessoCondenacao, ChRelatorioProcessoCondenacao, ChTodasProcessoCondenacao,
    'PERMISSAO_PROCESSOCONDENACAO');
end;

procedure TFrmCadastroFuncionario.ChDeletarProcessoCondenacaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarProcessoCondenacao, ChEditarProcessoCondenacao, ChDeletarProcessoCondenacao, ChInserirProcessoCondenacao, ChRelatorioProcessoCondenacao, ChTodasProcessoCondenacao,
    'PERMISSAO_PROCESSOCONDENACAO');
end;

procedure TFrmCadastroFuncionario.ChInserirProcessoCondenacaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarProcessoCondenacao, ChEditarProcessoCondenacao, ChDeletarProcessoCondenacao, ChInserirProcessoCondenacao, ChRelatorioProcessoCondenacao, ChTodasProcessoCondenacao,
    'PERMISSAO_PROCESSOCONDENACAO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioProcessoCondenacaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarProcessoCondenacao, ChEditarProcessoCondenacao, ChDeletarProcessoCondenacao, ChInserirProcessoCondenacao, ChRelatorioProcessoCondenacao, ChTodasProcessoCondenacao,
    'PERMISSAO_PROCESSOCONDENACAO');
end;

procedure TFrmCadastroFuncionario.ChTodasProcessoCondenacaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarProcessoCondenacao, ChEditarProcessoCondenacao, ChDeletarProcessoCondenacao, ChInserirProcessoCondenacao, ChRelatorioProcessoCondenacao, ChTodasProcessoCondenacao);
end;

procedure TFrmCadastroFuncionario.ChConsultarDetracaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarDetracao, ChEditarDetracao, ChDeletarDetracao, ChInserirDetracao, ChRelatorioDetracao, ChTodasDetracao,
    'PERMISSAO_DETRACAO');
end;

procedure TFrmCadastroFuncionario.ChEditarDetracaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarDetracao, ChEditarDetracao, ChDeletarDetracao, ChInserirDetracao, ChRelatorioDetracao, ChTodasDetracao,
    'PERMISSAO_DETRACAO');
end;

procedure TFrmCadastroFuncionario.ChDeletarDetracaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarDetracao, ChEditarDetracao, ChDeletarDetracao, ChInserirDetracao, ChRelatorioDetracao, ChTodasDetracao,
    'PERMISSAO_DETRACAO');
end;

procedure TFrmCadastroFuncionario.ChInserirDetracaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarDetracao, ChEditarDetracao, ChDeletarDetracao, ChInserirDetracao, ChRelatorioDetracao, ChTodasDetracao,
    'PERMISSAO_DETRACAO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioDetracaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarDetracao, ChEditarDetracao, ChDeletarDetracao, ChInserirDetracao, ChRelatorioDetracao, ChTodasDetracao,
    'PERMISSAO_DETRACAO');
end;

procedure TFrmCadastroFuncionario.ChTodasDetracaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarDetracao, ChEditarDetracao, ChDeletarDetracao, ChInserirDetracao, ChRelatorioDetracao, ChTodasDetracao);
end;

procedure TFrmCadastroFuncionario.ChConsultarInterrupcaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarInterrupcao, ChEditarInterrupcao, ChDeletarInterrupcao, ChInserirInterrupcao, ChRelatorioInterrupcao, ChTodasInterrupcao,
    'PERMISSAO_INTERRUPCAO');
end;

procedure TFrmCadastroFuncionario.ChEditarInterrupcaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarInterrupcao, ChEditarInterrupcao, ChDeletarInterrupcao, ChInserirInterrupcao, ChRelatorioInterrupcao, ChTodasInterrupcao,
    'PERMISSAO_INTERRUPCAO');
end;

procedure TFrmCadastroFuncionario.ChDeletarInterrupcaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarInterrupcao, ChEditarInterrupcao, ChDeletarInterrupcao, ChInserirInterrupcao, ChRelatorioInterrupcao, ChTodasInterrupcao,
    'PERMISSAO_INTERRUPCAO');
end;

procedure TFrmCadastroFuncionario.ChInserirInterrupcaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarInterrupcao, ChEditarInterrupcao, ChDeletarInterrupcao, ChInserirInterrupcao, ChRelatorioInterrupcao, ChTodasInterrupcao,
    'PERMISSAO_INTERRUPCAO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioInterrupcaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarInterrupcao, ChEditarInterrupcao, ChDeletarInterrupcao, ChInserirInterrupcao, ChRelatorioInterrupcao, ChTodasInterrupcao,
    'PERMISSAO_INTERRUPCAO');
end;

procedure TFrmCadastroFuncionario.ChTodasInterrupcaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarInterrupcao, ChEditarInterrupcao, ChDeletarInterrupcao, ChInserirInterrupcao, ChRelatorioInterrupcao, ChTodasInterrupcao);
end;

procedure TFrmCadastroFuncionario.ChConsultarRemicaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarRemicao, ChEditarRemicao, ChDeletarRemicao, ChInserirRemicao, ChRelatorioRemicao, ChTodasRemicao,
    'PERMISSAO_REMICAO');
end;

procedure TFrmCadastroFuncionario.ChEditarRemicaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarRemicao, ChEditarRemicao, ChDeletarRemicao, ChInserirRemicao, ChRelatorioRemicao, ChTodasRemicao,
    'PERMISSAO_REMICAO');
end;

procedure TFrmCadastroFuncionario.ChDeletarRemicaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarRemicao, ChEditarRemicao, ChDeletarRemicao, ChInserirRemicao, ChRelatorioRemicao, ChTodasRemicao,
    'PERMISSAO_REMICAO');
end;

procedure TFrmCadastroFuncionario.ChInserirRemicaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarRemicao, ChEditarRemicao, ChDeletarRemicao, ChInserirRemicao, ChRelatorioRemicao, ChTodasRemicao,
    'PERMISSAO_REMICAO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioRemicaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarRemicao, ChEditarRemicao, ChDeletarRemicao, ChInserirRemicao, ChRelatorioRemicao, ChTodasRemicao,
    'PERMISSAO_REMICAO');
end;

procedure TFrmCadastroFuncionario.ChTodasRemicaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarRemicao, ChEditarRemicao, ChDeletarRemicao, ChInserirRemicao, ChRelatorioRemicao, ChTodasRemicao);
end;

procedure TFrmCadastroFuncionario.ChConsultarArtigoPenalClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarArtigoPenal, ChEditarArtigoPenal, ChDeletarArtigoPenal, ChInserirArtigoPenal, ChRelatorioArtigoPenal, ChTodasArtigoPenal,
    'PERMISSAO_ARTIGOPENAL');
end;

procedure TFrmCadastroFuncionario.ChEditarArtigoPenalClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarArtigoPenal, ChEditarArtigoPenal, ChDeletarArtigoPenal, ChInserirArtigoPenal, ChRelatorioArtigoPenal, ChTodasArtigoPenal,
    'PERMISSAO_ARTIGOPENAL');
end;

procedure TFrmCadastroFuncionario.ChDeletarArtigoPenalClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarArtigoPenal, ChEditarArtigoPenal, ChDeletarArtigoPenal, ChInserirArtigoPenal, ChRelatorioArtigoPenal, ChTodasArtigoPenal,
    'PERMISSAO_ARTIGOPENAL');
end;

procedure TFrmCadastroFuncionario.ChInserirArtigoPenalClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarArtigoPenal, ChEditarArtigoPenal, ChDeletarArtigoPenal, ChInserirArtigoPenal, ChRelatorioArtigoPenal, ChTodasArtigoPenal,
    'PERMISSAO_ARTIGOPENAL');
end;

procedure TFrmCadastroFuncionario.ChRelatorioArtigoPenalClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarArtigoPenal, ChEditarArtigoPenal, ChDeletarArtigoPenal, ChInserirArtigoPenal, ChRelatorioArtigoPenal, ChTodasArtigoPenal,
    'PERMISSAO_ARTIGOPENAL');
end;

procedure TFrmCadastroFuncionario.ChTodasArtigoPenalClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarArtigoPenal, ChEditarArtigoPenal, ChDeletarArtigoPenal, ChInserirArtigoPenal, ChRelatorioArtigoPenal, ChTodasArtigoPenal);
end;

procedure TFrmCadastroFuncionario.ChConsultarVaraExecucaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarVaraExecucao, ChEditarVaraExecucao, ChDeletarVaraExecucao, ChInserirVaraExecucao, ChRelatorioVaraExecucao, ChTodasVaraExecucao,
    'PERMISSAO_VARAEXECUCAO');
end;

procedure TFrmCadastroFuncionario.ChEditarVaraExecucaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarVaraExecucao, ChEditarVaraExecucao, ChDeletarVaraExecucao, ChInserirVaraExecucao, ChRelatorioVaraExecucao, ChTodasVaraExecucao,
    'PERMISSAO_VARAEXECUCAO');
end;

procedure TFrmCadastroFuncionario.ChDeletarVaraExecucaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarVaraExecucao, ChEditarVaraExecucao, ChDeletarVaraExecucao, ChInserirVaraExecucao, ChRelatorioVaraExecucao, ChTodasVaraExecucao,
    'PERMISSAO_VARAEXECUCAO');
end;

procedure TFrmCadastroFuncionario.ChInserirVaraExecucaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarVaraExecucao, ChEditarVaraExecucao, ChDeletarVaraExecucao, ChInserirVaraExecucao, ChRelatorioVaraExecucao, ChTodasVaraExecucao,
    'PERMISSAO_VARAEXECUCAO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioVaraExecucaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarVaraExecucao, ChEditarVaraExecucao, ChDeletarVaraExecucao, ChInserirVaraExecucao, ChRelatorioVaraExecucao, ChTodasVaraExecucao,
    'PERMISSAO_VARAEXECUCAO');
end;

procedure TFrmCadastroFuncionario.ChTodasVaraExecucaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarVaraExecucao, ChEditarVaraExecucao, ChDeletarVaraExecucao, ChInserirVaraExecucao, ChRelatorioVaraExecucao, ChTodasVaraExecucao);
end;

procedure TFrmCadastroFuncionario.ChConsultarRemedioClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarRemedio, ChEditarRemedio, ChDeletarRemedio, ChInserirRemedio, ChRelatorioRemedio, ChTodasRemedio,
    'PERMISSAO_REMEDIO');
end;

procedure TFrmCadastroFuncionario.ChEditarRemedioClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarRemedio, ChEditarRemedio, ChDeletarRemedio, ChInserirRemedio, ChRelatorioRemedio, ChTodasRemedio,
    'PERMISSAO_REMEDIO');
end;

procedure TFrmCadastroFuncionario.ChDeletarRemedioClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarRemedio, ChEditarRemedio, ChDeletarRemedio, ChInserirRemedio, ChRelatorioRemedio, ChTodasRemedio,
    'PERMISSAO_REMEDIO');
end;

procedure TFrmCadastroFuncionario.ChInserirRemedioClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarRemedio, ChEditarRemedio, ChDeletarRemedio, ChInserirRemedio, ChRelatorioRemedio, ChTodasRemedio,
    'PERMISSAO_REMEDIO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioRemedioClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarRemedio, ChEditarRemedio, ChDeletarRemedio, ChInserirRemedio, ChRelatorioRemedio, ChTodasRemedio,
    'PERMISSAO_REMEDIO');
end;

procedure TFrmCadastroFuncionario.ChTodasRemedioClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarRemedio, ChEditarRemedio, ChDeletarRemedio, ChInserirRemedio, ChRelatorioRemedio, ChTodasRemedio);
end;

procedure TFrmCadastroFuncionario.ChConsultarSetorTrabalhoCadClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSetorTrabalhoCad, ChEditarSetorTrabalhoCad, ChDeletarSetorTrabalhoCad, ChInserirSetorTrabalhoCad, ChRelatorioSetorTrabalhoCad, ChTodasSetorTrabalhoCad,
    'PERMISSAO_SETORTRABALHOCAD');
end;

procedure TFrmCadastroFuncionario.ChEditarSetorTrabalhoCadClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSetorTrabalhoCad, ChEditarSetorTrabalhoCad, ChDeletarSetorTrabalhoCad, ChInserirSetorTrabalhoCad, ChRelatorioSetorTrabalhoCad, ChTodasSetorTrabalhoCad,
    'PERMISSAO_SETORTRABALHOCAD');
end;

procedure TFrmCadastroFuncionario.ChDeletarSetorTrabalhoCadClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSetorTrabalhoCad, ChEditarSetorTrabalhoCad, ChDeletarSetorTrabalhoCad, ChInserirSetorTrabalhoCad, ChRelatorioSetorTrabalhoCad, ChTodasSetorTrabalhoCad,
    'PERMISSAO_SETORTRABALHOCAD');
end;

procedure TFrmCadastroFuncionario.ChInserirSetorTrabalhoCadClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSetorTrabalhoCad, ChEditarSetorTrabalhoCad, ChDeletarSetorTrabalhoCad, ChInserirSetorTrabalhoCad, ChRelatorioSetorTrabalhoCad, ChTodasSetorTrabalhoCad,
    'PERMISSAO_SETORTRABALHOCAD');
end;

procedure TFrmCadastroFuncionario.ChRelatorioSetorTrabalhoCadClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSetorTrabalhoCad, ChEditarSetorTrabalhoCad, ChDeletarSetorTrabalhoCad, ChInserirSetorTrabalhoCad, ChRelatorioSetorTrabalhoCad, ChTodasSetorTrabalhoCad,
    'PERMISSAO_SETORTRABALHOCAD');
end;

procedure TFrmCadastroFuncionario.ChTodasSetorTrabalhoCadClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarSetorTrabalhoCad, ChEditarSetorTrabalhoCad, ChDeletarSetorTrabalhoCad, ChInserirSetorTrabalhoCad, ChRelatorioSetorTrabalhoCad, ChTodasSetorTrabalhoCad);
end;

procedure TFrmCadastroFuncionario.ChConsultarFuncaoInternoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarFuncaoInterno, ChEditarFuncaoInterno, ChDeletarFuncaoInterno, ChInserirFuncaoInterno, ChRelatorioFuncaoInterno, ChTodasFuncaoInterno,
    'PERMISSAO_FUNCAOINTERNO');
end;

procedure TFrmCadastroFuncionario.ChEditarFuncaoInternoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarFuncaoInterno, ChEditarFuncaoInterno, ChDeletarFuncaoInterno, ChInserirFuncaoInterno, ChRelatorioFuncaoInterno, ChTodasFuncaoInterno,
    'PERMISSAO_FUNCAOINTERNO');
end;

procedure TFrmCadastroFuncionario.ChDeletarFuncaoInternoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarFuncaoInterno, ChEditarFuncaoInterno, ChDeletarFuncaoInterno, ChInserirFuncaoInterno, ChRelatorioFuncaoInterno, ChTodasFuncaoInterno,
    'PERMISSAO_FUNCAOINTERNO');
end;

procedure TFrmCadastroFuncionario.ChInserirFuncaoInternoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarFuncaoInterno, ChEditarFuncaoInterno, ChDeletarFuncaoInterno, ChInserirFuncaoInterno, ChRelatorioFuncaoInterno, ChTodasFuncaoInterno,
    'PERMISSAO_FUNCAOINTERNO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioFuncaoInternoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarFuncaoInterno, ChEditarFuncaoInterno, ChDeletarFuncaoInterno, ChInserirFuncaoInterno, ChRelatorioFuncaoInterno, ChTodasFuncaoInterno,
    'PERMISSAO_FUNCAOINTERNO');
end;

procedure TFrmCadastroFuncionario.ChTodasFuncaoInternoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarFuncaoInterno, ChEditarFuncaoInterno, ChDeletarFuncaoInterno, ChInserirFuncaoInterno, ChRelatorioFuncaoInterno, ChTodasFuncaoInterno);
end;

procedure TFrmCadastroFuncionario.ChConsultarCalculoTrabalhoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCalculoTrabalho, ChEditarCalculoTrabalho, ChDeletarCalculoTrabalho, ChInserirCalculoTrabalho, ChRelatorioCalculoTrabalho, ChTodasCalculoTrabalho,
    'PERMISSAO_CALCULOTRABALHO');
end;

procedure TFrmCadastroFuncionario.ChEditarCalculoTrabalhoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCalculoTrabalho, ChEditarCalculoTrabalho, ChDeletarCalculoTrabalho, ChInserirCalculoTrabalho, ChRelatorioCalculoTrabalho, ChTodasCalculoTrabalho,
    'PERMISSAO_CALCULOTRABALHO');
end;

procedure TFrmCadastroFuncionario.ChDeletarCalculoTrabalhoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCalculoTrabalho, ChEditarCalculoTrabalho, ChDeletarCalculoTrabalho, ChInserirCalculoTrabalho, ChRelatorioCalculoTrabalho, ChTodasCalculoTrabalho,
    'PERMISSAO_CALCULOTRABALHO');
end;

procedure TFrmCadastroFuncionario.ChInserirCalculoTrabalhoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCalculoTrabalho, ChEditarCalculoTrabalho, ChDeletarCalculoTrabalho, ChInserirCalculoTrabalho, ChRelatorioCalculoTrabalho, ChTodasCalculoTrabalho,
    'PERMISSAO_CALCULOTRABALHO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioCalculoTrabalhoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarCalculoTrabalho, ChEditarCalculoTrabalho, ChDeletarCalculoTrabalho, ChInserirCalculoTrabalho, ChRelatorioCalculoTrabalho, ChTodasCalculoTrabalho,
    'PERMISSAO_CALCULOTRABALHO');
end;

procedure TFrmCadastroFuncionario.ChTodasCalculoTrabalhoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarCalculoTrabalho, ChEditarCalculoTrabalho, ChDeletarCalculoTrabalho, ChInserirCalculoTrabalho, ChRelatorioCalculoTrabalho, ChTodasCalculoTrabalho);
end;

procedure TFrmCadastroFuncionario.ChConsultarRemicaoTrabalhoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarRemicaoTrabalho, ChEditarRemicaoTrabalho, ChDeletarRemicaoTrabalho, ChInserirRemicaoTrabalho, ChRelatorioRemicaoTrabalho, ChTodasRemicaoTrabalho,
    'PERMISSAO_REMICAOTRABALHO');
end;

procedure TFrmCadastroFuncionario.ChEditarRemicaoTrabalhoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarRemicaoTrabalho, ChEditarRemicaoTrabalho, ChDeletarRemicaoTrabalho, ChInserirRemicaoTrabalho, ChRelatorioRemicaoTrabalho, ChTodasRemicaoTrabalho,
    'PERMISSAO_REMICAOTRABALHO');
end;

procedure TFrmCadastroFuncionario.ChDeletarRemicaoTrabalhoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarRemicaoTrabalho, ChEditarRemicaoTrabalho, ChDeletarRemicaoTrabalho, ChInserirRemicaoTrabalho, ChRelatorioRemicaoTrabalho, ChTodasRemicaoTrabalho,
    'PERMISSAO_REMICAOTRABALHO');
end;

procedure TFrmCadastroFuncionario.ChInserirRemicaoTrabalhoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarRemicaoTrabalho, ChEditarRemicaoTrabalho, ChDeletarRemicaoTrabalho, ChInserirRemicaoTrabalho, ChRelatorioRemicaoTrabalho, ChTodasRemicaoTrabalho,
    'PERMISSAO_REMICAOTRABALHO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioRemicaoTrabalhoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarRemicaoTrabalho, ChEditarRemicaoTrabalho, ChDeletarRemicaoTrabalho, ChInserirRemicaoTrabalho, ChRelatorioRemicaoTrabalho, ChTodasRemicaoTrabalho,
    'PERMISSAO_REMICAOTRABALHO');
end;

procedure TFrmCadastroFuncionario.ChTodasRemicaoTrabalhoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarRemicaoTrabalho, ChEditarRemicaoTrabalho, ChDeletarRemicaoTrabalho, ChInserirRemicaoTrabalho, ChRelatorioRemicaoTrabalho, ChTodasRemicaoTrabalho);
end;

procedure TFrmCadastroFuncionario.ChConsultarRoupasClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarRoupas, ChEditarRoupas, ChDeletarRoupas, ChInserirRoupas, ChRelatorioRoupas, ChTodasRoupas,
    'PERMISSAO_ROUPAS');
end;

procedure TFrmCadastroFuncionario.ChEditarRoupasClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarRoupas, ChEditarRoupas, ChDeletarRoupas, ChInserirRoupas, ChRelatorioRoupas, ChTodasRoupas,
    'PERMISSAO_ROUPAS');
end;

procedure TFrmCadastroFuncionario.ChDeletarRoupasClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarRoupas, ChEditarRoupas, ChDeletarRoupas, ChInserirRoupas, ChRelatorioRoupas, ChTodasRoupas,
    'PERMISSAO_ROUPAS');
end;

procedure TFrmCadastroFuncionario.ChInserirRoupasClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarRoupas, ChEditarRoupas, ChDeletarRoupas, ChInserirRoupas, ChRelatorioRoupas, ChTodasRoupas,
    'PERMISSAO_ROUPAS');
end;

procedure TFrmCadastroFuncionario.ChRelatorioRoupasClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarRoupas, ChEditarRoupas, ChDeletarRoupas, ChInserirRoupas, ChRelatorioRoupas, ChTodasRoupas,
    'PERMISSAO_ROUPAS');
end;

procedure TFrmCadastroFuncionario.ChTodasRoupasClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarRoupas, ChEditarRoupas, ChDeletarRoupas, ChInserirRoupas, ChRelatorioRoupas, ChTodasRoupas);
end;

procedure TFrmCadastroFuncionario.ChConsultarGrauParentescoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarGrauParentesco, ChEditarGrauParentesco, ChDeletarGrauParentesco, ChInserirGrauParentesco, ChRelatorioGrauParentesco, ChTodasGrauParentesco,
    'PERMISSAO_GRAUPARENTESCO');
end;

procedure TFrmCadastroFuncionario.ChEditarGrauParentescoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarGrauParentesco, ChEditarGrauParentesco, ChDeletarGrauParentesco, ChInserirGrauParentesco, ChRelatorioGrauParentesco, ChTodasGrauParentesco,
    'PERMISSAO_GRAUPARENTESCO');
end;

procedure TFrmCadastroFuncionario.ChDeletarGrauParentescoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarGrauParentesco, ChEditarGrauParentesco, ChDeletarGrauParentesco, ChInserirGrauParentesco, ChRelatorioGrauParentesco, ChTodasGrauParentesco,
    'PERMISSAO_GRAUPARENTESCO');
end;

procedure TFrmCadastroFuncionario.ChInserirGrauParentescoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarGrauParentesco, ChEditarGrauParentesco, ChDeletarGrauParentesco, ChInserirGrauParentesco, ChRelatorioGrauParentesco, ChTodasGrauParentesco,
    'PERMISSAO_GRAUPARENTESCO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioGrauParentescoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarGrauParentesco, ChEditarGrauParentesco, ChDeletarGrauParentesco, ChInserirGrauParentesco, ChRelatorioGrauParentesco, ChTodasGrauParentesco,
    'PERMISSAO_GRAUPARENTESCO');
end;

procedure TFrmCadastroFuncionario.ChTodasGrauParentescoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarGrauParentesco, ChEditarGrauParentesco, ChDeletarGrauParentesco, ChInserirGrauParentesco, ChRelatorioGrauParentesco, ChTodasGrauParentesco);
end;

procedure TFrmCadastroFuncionario.ChConsultarTipoContatoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarTipoContato, ChEditarTipoContato, ChDeletarTipoContato, ChInserirTipoContato, ChRelatorioTipoContato, ChTodasTipoContato,
    'PERMISSAO_TIPOCONTATO');
end;

procedure TFrmCadastroFuncionario.ChEditarTipoContatoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarTipoContato, ChEditarTipoContato, ChDeletarTipoContato, ChInserirTipoContato, ChRelatorioTipoContato, ChTodasTipoContato,
    'PERMISSAO_TIPOCONTATO');
end;

procedure TFrmCadastroFuncionario.ChDeletarTipoContatoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarTipoContato, ChEditarTipoContato, ChDeletarTipoContato, ChInserirTipoContato, ChRelatorioTipoContato, ChTodasTipoContato,
    'PERMISSAO_TIPOCONTATO');
end;

procedure TFrmCadastroFuncionario.ChInserirTipoContatoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarTipoContato, ChEditarTipoContato, ChDeletarTipoContato, ChInserirTipoContato, ChRelatorioTipoContato, ChTodasTipoContato,
    'PERMISSAO_TIPOCONTATO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioTipoContatoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarTipoContato, ChEditarTipoContato, ChDeletarTipoContato, ChInserirTipoContato, ChRelatorioTipoContato, ChTodasTipoContato,
    'PERMISSAO_TIPOCONTATO');
end;

procedure TFrmCadastroFuncionario.ChTodasTipoContatoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarTipoContato, ChEditarTipoContato, ChDeletarTipoContato, ChInserirTipoContato, ChRelatorioTipoContato, ChTodasTipoContato);
end;

procedure TFrmCadastroFuncionario.ChConsultarAssuntoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarAssunto, ChEditarAssunto, ChDeletarAssunto, ChInserirAssunto, ChRelatorioAssunto, ChTodasAssunto,
    'PERMISSAO_ASSUNTO');
end;

procedure TFrmCadastroFuncionario.ChEditarAssuntoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarAssunto, ChEditarAssunto, ChDeletarAssunto, ChInserirAssunto, ChRelatorioAssunto, ChTodasAssunto,
    'PERMISSAO_ASSUNTO');
end;

procedure TFrmCadastroFuncionario.ChDeletarAssuntoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarAssunto, ChEditarAssunto, ChDeletarAssunto, ChInserirAssunto, ChRelatorioAssunto, ChTodasAssunto,
    'PERMISSAO_ASSUNTO');
end;

procedure TFrmCadastroFuncionario.ChInserirAssuntoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarAssunto, ChEditarAssunto, ChDeletarAssunto, ChInserirAssunto, ChRelatorioAssunto, ChTodasAssunto,
    'PERMISSAO_ASSUNTO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioAssuntoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarAssunto, ChEditarAssunto, ChDeletarAssunto, ChInserirAssunto, ChRelatorioAssunto, ChTodasAssunto,
    'PERMISSAO_ASSUNTO');
end;

procedure TFrmCadastroFuncionario.ChTodasAssuntoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarAssunto, ChEditarAssunto, ChDeletarAssunto, ChInserirAssunto, ChRelatorioAssunto, ChTodasAssunto);
end;

procedure TFrmCadastroFuncionario.ChConsultarSituacaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSituacao, ChEditarSituacao, ChDeletarSituacao, ChInserirSituacao, ChRelatorioSituacao, ChTodasSituacao,
    'PERMISSAO_SITUACAO');
end;

procedure TFrmCadastroFuncionario.ChEditarSituacaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSituacao, ChEditarSituacao, ChDeletarSituacao, ChInserirSituacao, ChRelatorioSituacao, ChTodasSituacao,
    'PERMISSAO_SITUACAO');
end;

procedure TFrmCadastroFuncionario.ChDeletarSituacaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSituacao, ChEditarSituacao, ChDeletarSituacao, ChInserirSituacao, ChRelatorioSituacao, ChTodasSituacao,
    'PERMISSAO_SITUACAO');
end;

procedure TFrmCadastroFuncionario.ChInserirSituacaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSituacao, ChEditarSituacao, ChDeletarSituacao, ChInserirSituacao, ChRelatorioSituacao, ChTodasSituacao,
    'PERMISSAO_SITUACAO');
end;

procedure TFrmCadastroFuncionario.ChRelatorioSituacaoClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSituacao, ChEditarSituacao, ChDeletarSituacao, ChInserirSituacao, ChRelatorioSituacao, ChTodasSituacao,
    'PERMISSAO_SITUACAO');
end;

procedure TFrmCadastroFuncionario.ChTodasSituacaoClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarSituacao, ChEditarSituacao, ChDeletarSituacao, ChInserirSituacao, ChRelatorioSituacao, ChTodasSituacao);
end;

procedure TFrmCadastroFuncionario.ChConsultarEventosClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarEventos, ChEditarEventos, ChDeletarEventos, ChInserirEventos, ChRelatorioEventos, ChTodasEventos,
    'PERMISSAO_EVENTOS');
end;

procedure TFrmCadastroFuncionario.ChEditarEventosClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarEventos, ChEditarEventos, ChDeletarEventos, ChInserirEventos, ChRelatorioEventos, ChTodasEventos,
    'PERMISSAO_EVENTOS');
end;

procedure TFrmCadastroFuncionario.ChDeletarEventosClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarEventos, ChEditarEventos, ChDeletarEventos, ChInserirEventos, ChRelatorioEventos, ChTodasEventos,
    'PERMISSAO_EVENTOS');
end;

procedure TFrmCadastroFuncionario.ChInserirEventosClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarEventos, ChEditarEventos, ChDeletarEventos, ChInserirEventos, ChRelatorioEventos, ChTodasEventos,
    'PERMISSAO_EVENTOS');
end;

procedure TFrmCadastroFuncionario.ChRelatorioEventosClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarEventos, ChEditarEventos, ChDeletarEventos, ChInserirEventos, ChRelatorioEventos, ChTodasEventos,
    'PERMISSAO_EVENTOS');
end;

procedure TFrmCadastroFuncionario.ChTodasEventosClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarEventos, ChEditarEventos, ChDeletarEventos, ChInserirEventos, ChRelatorioEventos, ChTodasEventos);
end;

procedure TFrmCadastroFuncionario.ChConsultarSubEventosClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSubEventos, ChEditarSubEventos, ChDeletarSubEventos, ChInserirSubEventos, ChRelatorioSubEventos, ChTodasSubEventos,
    'PERMISSAO_SUBEVENTOS');
end;

procedure TFrmCadastroFuncionario.ChEditarSubEventosClick(Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSubEventos, ChEditarSubEventos, ChDeletarSubEventos, ChInserirSubEventos, ChRelatorioSubEventos, ChTodasSubEventos,
    'PERMISSAO_SUBEVENTOS');
end;

procedure TFrmCadastroFuncionario.ChDeletarSubEventosClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSubEventos, ChEditarSubEventos, ChDeletarSubEventos, ChInserirSubEventos, ChRelatorioSubEventos, ChTodasSubEventos,
    'PERMISSAO_SUBEVENTOS');
end;

procedure TFrmCadastroFuncionario.ChInserirSubEventosClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSubEventos, ChEditarSubEventos, ChDeletarSubEventos, ChInserirSubEventos, ChRelatorioSubEventos, ChTodasSubEventos,
    'PERMISSAO_SUBEVENTOS');
end;

procedure TFrmCadastroFuncionario.ChRelatorioSubEventosClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarSubEventos, ChEditarSubEventos, ChDeletarSubEventos, ChInserirSubEventos, ChRelatorioSubEventos, ChTodasSubEventos,
    'PERMISSAO_SUBEVENTOS');
end;

procedure TFrmCadastroFuncionario.ChTodasSubEventosClick(Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarSubEventos, ChEditarSubEventos, ChDeletarSubEventos, ChInserirSubEventos, ChRelatorioSubEventos, ChTodasSubEventos);
end;

procedure TFrmCadastroFuncionario.ChConsultarMonitEventosClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarMonitEventos, ChEditarMonitEventos, ChDeletarMonitEventos, ChInserirMonitEventos, ChRelatorioMonitEventos, ChTodasMonitEventos,
    'PERMISSAO_MONITORAMENTOEVENTOS');
end;

procedure TFrmCadastroFuncionario.ChEditarMonitEventosClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarMonitEventos, ChEditarMonitEventos, ChDeletarMonitEventos, ChInserirMonitEventos, ChRelatorioMonitEventos, ChTodasMonitEventos,
    'PERMISSAO_MONITORAMENTOEVENTOS');
end;

procedure TFrmCadastroFuncionario.ChDeletarMonitEventosClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarMonitEventos, ChEditarMonitEventos, ChDeletarMonitEventos, ChInserirMonitEventos, ChRelatorioMonitEventos, ChTodasMonitEventos,
    'PERMISSAO_MONITORAMENTOEVENTOS');
end;

procedure TFrmCadastroFuncionario.ChInserirMonitEventosClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarMonitEventos, ChEditarMonitEventos, ChDeletarMonitEventos, ChInserirMonitEventos, ChRelatorioMonitEventos, ChTodasMonitEventos,
    'PERMISSAO_MONITORAMENTOEVENTOS');
end;

procedure TFrmCadastroFuncionario.ChRelatorioMonitEventosClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissao(ChConsultarMonitEventos, ChEditarMonitEventos, ChDeletarMonitEventos, ChInserirMonitEventos, ChRelatorioMonitEventos, ChTodasMonitEventos,
    'PERMISSAO_MONITORAMENTOEVENTOS');
end;

procedure TFrmCadastroFuncionario.ChTodasMonitEventosClick(
  Sender: TObject);
begin
  inherited;
  ValidaPermissaoTodas(ChConsultarMonitEventos, ChEditarMonitEventos, ChDeletarMonitEventos, ChInserirMonitEventos, ChRelatorioMonitEventos, ChTodasMonitEventos);
end;

end.

