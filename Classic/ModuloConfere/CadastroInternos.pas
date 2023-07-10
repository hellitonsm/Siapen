unit CadastroInternos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ExtCtrls, ImgList, StdCtrls, Grids, DBGrids,
  FMTBcd, DB, DBClient, Provider, SqlExpr, Mask, DBCtrls, DBXpress,
  ModeloCadastro, Jpeg, Buttons, frxCtrls, dbcgrids, Menus,
  adpDBDateTimePicker;

type
  TFrmCadastroInternos = class(TFrmModeloCadastro)
    RadioGroupStatus: TRadioGroup;
    SpeedButton3: TSpeedButton;
    SpeedButton10: TSpeedButton;
    OpenDialogCapturarFoto: TOpenDialog;
    SqlConsulta: TSQLQuery;
    DspConsulta: TDataSetProvider;
    CdsConsulta: TClientDataSet;
    DsConsulta: TDataSource;
    SqlSelectInterno: TSQLQuery;
    SQLHISTORICO_interno: TSQLQuery;
    DSPHISTORICO_interno: TDataSetProvider;
    CDSHISTORICO_interno: TClientDataSet;
    DSHISTORICO_interno: TDataSource;
    PageControlInterno: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label40: TLabel;
    SpeedButton1: TSpeedButton;
    Label45: TLabel;
    Label43: TLabel;
    Label46: TLabel;
    SpeedButton2: TSpeedButton;
    Label27: TLabel;
    Label36: TLabel;
    Label55: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    DBEditCodigo: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEditdtentrada: TDBEdit;
    DBLookupComboBoxID_PROCEDENCIA: TDBLookupComboBox;
    DBEditdtprisao: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit7: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBImageFOTOInterno: TDBImage;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit35: TDBEdit;
    DBComboBox3: TDBComboBox;
    TabSheet2: TTabSheet;
    Label11: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label20: TLabel;
    Label37: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label13: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Label5: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label39: TLabel;
    Label47: TLabel;
    Label52: TLabel;
    Label56: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    DBEdit1: TDBEdit;
    DBEdit5: TDBEdit;
    DBLookupComboBoxIDNATURALIDADE: TDBLookupComboBox;
    DBLookupComboBoxIDNACIONALIDADE: TDBLookupComboBox;
    DBLookupComboBoxIDRACA: TDBLookupComboBox;
    DBLookupComboBoxIDESCOLARIDADE: TDBLookupComboBox;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBLookupComboBoxIDPROFISSAO: TDBLookupComboBox;
    DBEditrg: TDBEdit;
    DBEditCPF: TDBEdit;
    DBEdit23: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEditdtrnascimento: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit34: TDBEdit;
    TabSheet3: TTabSheet;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    SpeedButton11: TSpeedButton;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEditcep: TDBEdit;
    DBEditfone: TDBEdit;
    DBEdit17: TDBEdit;
    DBLookupComboBoxIDCIDADE: TDBLookupComboBox;
    TabSheet5: TTabSheet;
    Label53: TLabel;
    Label54: TLabel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    DBMemo1: TDBMemo;
    TabSheet6: TTabSheet;
    FOTO: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBImageFOTOPERFIL: TDBImage;
    DBImagetatuagem1: TDBImage;
    DBImageFOTO_SINAIS: TDBImage;
    DBImageFOTO_SINAIS1: TDBImage;
    DBImageFOTO_SINAIS2: TDBImage;
    DBImageFOTO_SINAIS3: TDBImage;
    DBImageFOTO_SINAIS4: TDBImage;
    SqlSelectInternoInativo: TSQLQuery;
    Label149: TLabel;
    DBEdit83: TDBEdit;
    MemoDescricao: TMemo;
    DateTimePickerHistorico: TDateTimePicker;
    Label163: TLabel;
    chkSoundex: TCheckBox;
    lbl1: TLabel;
    DBEdit86: TDBEdit;
    DBLookupComboBoxIDNACIONALIDADE1: TDBLookupComboBox;
    lbl2: TLabel;
    btn1: TSpeedButton;
    dbrgrpST: TDBRadioGroup;
    SqlSoundex: TSQLQuery;
    tsAdvogado: TTabSheet;
    lbl3: TLabel;
    DBLookupComboBoxIDADVOGADO: TDBLookupComboBox;
    btn2: TSpeedButton;
    Label38: TLabel;
    DBComboBox2: TDBComboBox;
    DBEdit4: TDBEdit;
    Label48: TLabel;
    TabSheet4: TTabSheet;
    Label49: TLabel;
    DBEditpermanencia: TDBEdit;
    Button2: TButton;
    Memoobsadvogado: TMemo;
    Label50: TLabel;
    dsADVOGADO_INTERNO: TDataSource;
    cdsadvogadointerno: TClientDataSet;
    dspadvogadointerno: TDataSetProvider;
    SQLadvogadointerno: TSQLQuery;
    DBGrid3: TDBGrid;
    cdsadvogadointernoADVOGADOESCRITRIO: TStringField;
    cdsadvogadointernoID_ADVOGADOS_INTERNOS: TIntegerField;
    cdsadvogadointernoID_ADVOGADO: TIntegerField;
    cdsadvogadointernoID_INTERNO: TIntegerField;
    cdsadvogadointernoOBSADVOGADO_INTERNO: TStringField;
    BitBtn1: TBitBtn;
    SqlFilhos: TSQLQuery;
    DspFilhos: TDataSetProvider;
    CdsFilhos: TClientDataSet;
    DsFilhos: TDataSource;
    CdsFilhosIDFILHOS: TIntegerField;
    CdsFilhosNOME: TStringField;
    CdsFilhosDATA_NASCIMENTO: TSQLTimeStampField;
    CdsFilhosESCOLA: TStringField;
    CdsFilhosENDERECO: TStringField;
    CdsFilhosIDCIDADE: TIntegerField;
    CdsFilhosNOME_MAE: TStringField;
    CdsFilhosIDINTERNO: TIntegerField;
    Label62: TLabel;
    DBEdit19: TDBEdit;
    DsLista: TDataSource;
    CdsLista: TClientDataSet;
    DspLista: TDataSetProvider;
    SqlLista: TSQLQuery;
    DBCtrlGridConsulta: TDBCtrlGrid;
    Label68: TLabel;
    LabelPavilhao: TLabel;
    LabelGaleria: TLabel;
    LabelSolario: TLabel;
    LabelCela: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText13: TDBText;
    Label76: TLabel;
    Label77: TLabel;
    DBEdit20: TDBEdit;
    PopupMenuRecuperarFotoEmergencia: TPopupMenu;
    Recalculartodasasfotos1: TMenuItem;
    SqlConsultaBackup: TSQLQuery;
    MainMenu1: TMainMenu;
    Relatorios1: TMenuItem;
    Especifico1: TMenuItem;
    Label78: TLabel;
    DBEdit28: TDBEdit;
    Label79: TLabel;
    DBEdit31: TDBEdit;
    DBEdit33: TDBEdit;
    Label80: TLabel;
    DBComboBox5: TDBComboBox;
    Label82: TLabel;
    Label83: TLabel;
    DBComboBoxpericulosidade: TDBComboBox;
    RadioGroupTipoLocalizar: TRadioGroup;
    Label69: TLabel;
    DBText1: TDBText;
    Image1: TImage;
    Label67: TLabel;
    DBEdit36: TDBEdit;
    Label18: TLabel;
    DBLookupComboBoxFACCAO: TDBLookupComboBox;
    SpeedButton8: TSpeedButton;
    DsFaccao: TDataSource;
    CdsFaccao: TClientDataSet;
    DspFaccao: TDataSetProvider;
    SqlFaccao: TSQLQuery;
    DBEdit84: TDBEdit;
    SqlFoto: TSQLQuery;
    DspFoto: TDataSetProvider;
    CdsFoto: TClientDataSet;
    DsFoto: TDataSource;
    Label16: TLabel;
    DBImageOutras: TDBImage;
    DBGrid4: TDBGrid;
    DBEdit6: TDBEdit;
    adpDBDateTimePicker1: TadpDBDateTimePicker;
    Label17: TLabel;
    Label44: TLabel;
    DBNavigator3: TDBNavigator;
    N1: TMenuItem;
    RecuperarFotosdeArquivo1: TMenuItem;
    DBMemo2: TDBMemo;
    Label51: TLabel;
    DBEdit8: TDBEdit;
    DBLookupComboBoxSolicitanteVaga: TDBLookupComboBox;
    Label57: TLabel;
    DBLookupComboBoxPresidioOrigem: TDBLookupComboBox;
    Label58: TLabel;
    SqlCadastroID_INTERNO: TIntegerField;
    SqlCadastroNOME_INTERNO: TStringField;
    SqlCadastroRGI: TStringField;
    SqlCadastroIDPROFISSAO: TIntegerField;
    SqlCadastroIDGALERIA: TIntegerField;
    SqlCadastroIDPAVILHAO: TIntegerField;
    SqlCadastroIDSOLARIO: TIntegerField;
    SqlCadastroIDCELA: TIntegerField;
    SqlCadastroDATA_ENTRADA: TSQLTimeStampField;
    SqlCadastroMAE: TStringField;
    SqlCadastroPAI: TStringField;
    SqlCadastroIDNATURALIDADE: TIntegerField;
    SqlCadastroIDNACIONALIDADE: TIntegerField;
    SqlCadastroIDRACA: TIntegerField;
    SqlCadastroIDESCOLARIDADE: TIntegerField;
    SqlCadastroENDERECO: TStringField;
    SqlCadastroNUMERO: TStringField;
    SqlCadastroBAIRRO: TStringField;
    SqlCadastroCOMPLEMENETO: TStringField;
    SqlCadastroCEP: TStringField;
    SqlCadastroIDCIDADE: TIntegerField;
    SqlCadastroFONE: TStringField;
    SqlCadastroCONTATO: TStringField;
    SqlCadastroRELIGIAO: TStringField;
    SqlCadastroIDADVOGADO: TIntegerField;
    SqlCadastroID_PROCEDENCIA: TIntegerField;
    SqlCadastroCONDENACAO: TStringField;
    SqlCadastroDATA_PRISAO: TSQLTimeStampField;
    SqlCadastroHISTORICO: TStringField;
    SqlCadastroST: TStringField;
    SqlCadastroSEXO: TStringField;
    SqlCadastroID_UP: TIntegerField;
    SqlCadastroIDCONDICAO_INTERNO: TIntegerField;
    SqlCadastroIDDESTINO: TIntegerField;
    SqlCadastroID_FUNCIONARIO: TIntegerField;
    SqlCadastroSTATUS_ISOLAMENTO: TStringField;
    SqlCadastroIDSETOR_TRABALHO: TIntegerField;
    SqlCadastroDATA_SETOR: TSQLTimeStampField;
    SqlCadastroFOTO: TBlobField;
    SqlCadastroFOTO_PERFIL: TBlobField;
    SqlCadastroFOTO_TATUAGEM: TBlobField;
    SqlCadastroDATA_SAIDA: TSQLTimeStampField;
    SqlCadastroMOTIVO_SAIDA: TStringField;
    SqlCadastroID_FUNCAOINTERNO: TIntegerField;
    SqlCadastroOBSTRABALHO: TStringField;
    SqlCadastroDATA_NASCIMENTO: TSQLTimeStampField;
    SqlCadastroRG: TStringField;
    SqlCadastroCPF: TStringField;
    SqlCadastroESTADO_CIVIL: TStringField;
    SqlCadastroVULGO: TStringField;
    SqlCadastroOUTRO_NOME: TStringField;
    SqlCadastroSINAIS_PARTICULARES: TStringField;
    SqlCadastroALTURA: TStringField;
    SqlCadastroPESO: TStringField;
    SqlCadastroCI: TStringField;
    SqlCadastroCISAIDA: TStringField;
    SqlCadastroFOTO_SINAIS: TBlobField;
    SqlCadastroFOTO_SINAIS1: TBlobField;
    SqlCadastroFOTO_SINAIS2: TBlobField;
    SqlCadastroFOTO_SINAIS3: TBlobField;
    SqlCadastroFOTO_SINAIS4: TBlobField;
    SqlCadastroARTIGO: TStringField;
    SqlCadastroDATA_ISOLAMENTO: TSQLTimeStampField;
    SqlCadastroDATA_MATRICULA: TSQLTimeStampField;
    SqlCadastroOBSEDUCACAO: TStringField;
    SqlCadastroDEFICIENCIA: TStringField;
    SqlCadastroIDSERIEESTUDO: TIntegerField;
    SqlCadastroCOR_OLHOS: TStringField;
    SqlCadastroCOR_CABELOS: TStringField;
    SqlCadastroNOME_SOCIAL: TStringField;
    SqlCadastroORIENTACAO_SEXUAL: TStringField;
    SqlCadastroIDENTIDADE_GENERO: TStringField;
    SqlCadastroHISTORICO_VELHO: TStringField;
    SqlCadastroTIPOPROCESSO: TStringField;
    SqlCadastroCONCEITO_DISCIPLINAR: TStringField;
    SqlCadastroTIPOCONDUTA: TStringField;
    SqlCadastroPERIODO: TStringField;
    SqlCadastroFAMILIARPRESO: TStringField;
    SqlCadastroPARENTESCOPRESO: TStringField;
    SqlCadastroUPFAMILIARPRESO: TStringField;
    SqlCadastroMOTIVODELITO: TStringField;
    SqlCadastroMAIORPERDA: TStringField;
    SqlCadastroPAISVIVOS: TStringField;
    SqlCadastroPAISSEPARADOS: TStringField;
    SqlCadastroIDADEPAISSEPARADOS: TStringField;
    SqlCadastroPROFISSAOPAIS: TStringField;
    SqlCadastroQUEMCRIOU: TStringField;
    SqlCadastroTRABALHOFAMILIA: TStringField;
    SqlCadastroQTDEIRMAOS: TStringField;
    SqlCadastroCRIADOIRMAOS: TStringField;
    SqlCadastroMORADIA: TStringField;
    SqlCadastroREPRESENTACAOPAIS: TStringField;
    SqlCadastroEDUCACAORECEBIDA: TStringField;
    SqlCadastroMUDANCAFAMILIA: TStringField;
    SqlCadastroFUGACASA: TStringField;
    SqlCadastroCONDICOESCRIACAO: TStringField;
    SqlCadastroINSTITUICAOASSISTENCIAL: TStringField;
    SqlCadastroVIOLENCIADOMESTICA: TStringField;
    SqlCadastroMORADIAANTESPRESO: TStringField;
    SqlCadastroRESIDENCIAFAMILIAR: TStringField;
    SqlCadastroQTDEFILHOS: TStringField;
    SqlCadastroFILHOSMENORES16: TStringField;
    SqlCadastroFILHOSVIVEM: TStringField;
    SqlCadastroFILHOADOCAO: TStringField;
    SqlCadastroPROVEDORFAMILIA: TStringField;
    SqlCadastroRENDIMENTOFAMILIAR: TStringField;
    SqlCadastroPROGRAMASOCIAL: TStringField;
    SqlCadastroAUXRECLUSAO: TStringField;
    SqlCadastroREPROVADOESCOLA: TStringField;
    SqlCadastroIDADETRABALHO: TStringField;
    SqlCadastroCURSOPROFISSIONALIZANTE: TStringField;
    SqlCadastroEXERCICIATRABALHO: TStringField;
    SqlCadastroREGISTROCARTEIRA: TStringField;
    SqlCadastroTRABALHOUPANTERIOR: TStringField;
    SqlCadastroDOCUMENTOS: TStringField;
    SqlCadastroUSODROGAS: TStringField;
    SqlCadastroDATADEPENDENCIA: TStringField;
    SqlCadastroABANDONODROGAS: TStringField;
    SqlCadastroDROGASCOMCRIME: TStringField;
    SqlCadastroDOENCAGRAVE: TStringField;
    SqlCadastroDOENCAMENTAL: TStringField;
    SqlCadastroPROBLEMASAUDE: TStringField;
    SqlCadastroDOENCALABORAL: TStringField;
    SqlCadastroVISITAOUTRAPESSOA: TStringField;
    SqlCadastroESTUDOCUMPENA: TStringField;
    SqlCadastroTRABALHOCUMPENA: TStringField;
    SqlCadastroPROFISSAOCUMPENA: TStringField;
    SqlCadastroDATAPSICOSSOCIAL: TSQLTimeStampField;
    SqlCadastroIDTECNICO: TIntegerField;
    SqlCadastroOBSPSICOSSOCIAL: TStringField;
    SqlCadastroDATA_DELITO: TSQLTimeStampField;
    SqlCadastroDATA_REABILITACAO: TSQLTimeStampField;
    SqlCadastroMP: TIntegerField;
    SqlCadastroSUICIDIO: TStringField;
    SqlCadastroCID: TStringField;
    SqlCadastroEFEITOSDROGA: TStringField;
    SqlCadastroSINTOMASDEPRESSIVOS: TStringField;
    SqlCadastroEPISODIOSHUMOR: TStringField;
    SqlCadastroSINTOMASPSICOTICOS: TStringField;
    SqlCadastroDELIRIOS: TStringField;
    SqlCadastroALUCINACOES: TStringField;
    SqlCadastroPERSONALIDADE: TStringField;
    SqlCadastroVISITANTES: TStringField;
    SqlCadastroMEDICACAOCONTROLADA: TStringField;
    SqlCadastroDOENCAINFECTOCONTAGIOSA: TStringField;
    SqlCadastroTRATAMENTOINFECTO: TStringField;
    SqlCadastroRESULTADOINFECTO: TStringField;
    SqlCadastroSITUACAOCIVIL: TStringField;
    SqlCadastroMEDIDASEGURANCA: TStringField;
    SqlCadastroFACCAO: TStringField;
    SqlCadastroVARA_ORIGEM: TStringField;
    SqlCadastroEM_TRANSITO: TStringField;
    SqlCadastroNUMERO_INFOPEN: TStringField;
    SqlCadastroREINCERSAO: TStringField;
    SqlCadastroIDPAIS_ENDERECO: TIntegerField;
    SqlCadastroOUTROS_ADVOGADOS: TStringField;
    SqlCadastroTITULO_ELEITOR: TStringField;
    SqlCadastroTIPOREGIME: TStringField;
    SqlCadastroDATA_PERMANENCIA: TSQLTimeStampField;
    SqlCadastroPASSAGEM_SPF: TStringField;
    SqlCadastroMOTIVACAO_INCLUSAO: TStringField;
    SqlCadastroNUMERO_ROUPA: TStringField;
    SqlCadastroORGAO_EMISSOR_RG: TStringField;
    SqlCadastroTEMPO_CONSOLIDADO_ANO: TIntegerField;
    SqlCadastroTEMPO_CONSOLIDADO_MES: TIntegerField;
    SqlCadastroTEMPO_CONSOLIDADO_DIA: TIntegerField;
    SqlCadastroREGIME_ATUAL: TStringField;
    SqlCadastroGRAU_PERICULOSIDADE: TStringField;
    SqlCadastroDATA_BASE_PROGRESSAO: TSQLTimeStampField;
    SqlCadastroDATA_BASE_CONDICIONAL: TSQLTimeStampField;
    SqlCadastroCHAVE_MIGRACAO: TStringField;
    SqlCadastroDOC_TRABALHO: TStringField;
    SqlCadastroID_UP_DESTINO: TIntegerField;
    SqlCadastroID_LOCAL_TRABALHO: TIntegerField;
    SqlCadastroTURMA: TStringField;
    SqlCadastroNUMERO_PROCED: TStringField;
    SqlCadastroDATA_TERMINO_CONDENACAO: TSQLTimeStampField;
    SqlCadastroDATA_REQUISITO_CONDICIONAL: TSQLTimeStampField;
    SqlCadastroOBS_CONDICIONAL: TStringField;
    SqlCadastroDATA_REQUISITO_PROGRESSAO: TSQLTimeStampField;
    SqlCadastroOBS_PROGRESSAO: TStringField;
    SqlCadastroCLASSIFICACAO_MAPA: TStringField;
    SqlCadastroPRIMARIO_REINCIDENTE: TStringField;
    SqlCadastroCOM_DIREITO_MAPA: TStringField;
    SqlCadastroOBS_MAPA: TStringField;
    SqlCadastroID_FACCAO: TIntegerField;
    SqlCadastroHORARIO_ENTRADA_SEMANAL: TTimeField;
    SqlCadastroHORARIO_SAIDA_SEMANAL: TTimeField;
    SqlCadastroTURMA_SAIDAO: TStringField;
    SqlCadastroHORARIO_ENTRADA_SAIDAO: TTimeField;
    SqlCadastroHORARIO_SAIDA_SAIDAO: TTimeField;
    SqlCadastroHORARIO_ENTRADA_SABADO: TTimeField;
    SqlCadastroHORARIO_SAIDA_SABADO: TTimeField;
    SqlCadastroHORARIO_ENTRADA_DOMINGO: TTimeField;
    SqlCadastroHORARIO_SAIDA_DOMINGO: TTimeField;
    SqlCadastroTIPO_ATIVIDADE: TStringField;
    SqlCadastroCORTE: TStringField;
    SqlCadastroSUS: TStringField;
    SqlCadastroDADOS_OUTRO_BANCO: TStringField;
    SqlCadastroID_ME: TStringField;
    SqlCadastroDIGITAL_CHAVE: TStringField;
    SqlCadastroDIGITAL_IMAGEM: TBlobField;
    SqlCadastroID_PRESIDIO_ORIGEM: TIntegerField;
    SqlCadastroID_SOLICITANTE_VAGA: TIntegerField;
    DBComboBox4: TDBComboBox;
    Label59: TLabel;
    DBComboBox6: TDBComboBox;
    Label60: TLabel;
    LbFaccao: TLabel;
    DBTFaccao: TDBText;
    LbStatus: TLabel;
    DBTStatus: TDBText;
    cdsadvogadointernoSTATUS: TStringField;
    DBMemoObservacaoAdvogado: TDBMemo;
    Label61: TLabel;
    cdsadvogadointernoDATA_CONSTITUICAO: TSQLTimeStampField;
    cdsadvogadointernoDATA_DESCONSTITUICAO: TSQLTimeStampField;
    DtpDataConstituicao: TDateTimePicker;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label75: TLabel;
    DbrgReuColaborador: TDBRadioGroup;
    SqlCadastroCOLABORADOR: TStringField;
    Button4: TButton;
    Label81: TLabel;
    procedure NovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure EditLocalizarChange(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure DsConsultaDataChange(Sender: TObject; Field: TField);
    procedure RadioGroupStatusClick(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure DBImageFOTOInternoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBImageFOTOPERFILClick(Sender: TObject);
    procedure DBImagetatuagem1Click(Sender: TObject);
    procedure DBImageFOTO_SINAISClick(Sender: TObject);
    procedure DBImageFOTO_SINAIS1Click(Sender: TObject);
    procedure DBImageFOTO_SINAIS2Click(Sender: TObject);
    procedure DBImageFOTO_SINAIS3Click(Sender: TObject);
    procedure DBImageFOTO_SINAIS4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure chkSoundexClick(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CdsFilhosBeforePost(DataSet: TDataSet);
    procedure CdsCadastroBeforePost(DataSet: TDataSet);
    procedure DsCadastroDataChange(Sender: TObject; Field: TField);
    procedure Recalculartodasasfotos1Click(Sender: TObject);
    procedure Especifico1Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure DBImageOutrasClick(Sender: TObject);
    procedure CdsFotoAfterInsert(DataSet: TDataSet);
    procedure RecuperarFotosdeArquivo1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGridConsultaDblClick(Sender: TObject);
    procedure CdsConsultaFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure RadioGroupTipoLocalizarClick(Sender: TObject);
    procedure PageControlInternoChange(Sender: TObject);
    procedure tsAdvogadoEnter(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    procedure PreencheCombos();
    { Private declarations }
  public
    ID_INTERNO: integer;
    { Public declarations }
  end;

var
  FrmCadastroInternos: TFrmCadastroInternos;

implementation

uses DmPrincipal, Lib, CadastroProcedencia, CadastroCondicaoInterno,
  CadastroCela, CadastroRaca, CadastroNacionalidade, CadastroNaturalidade,
  CadastroEscolaridade, CadastroAdvogado, CadastroProfissao,
  CadastroFaltasDisciplinares, CadastroCidade, ImagemParaWEB,
  MenuRelatorio, CadastroFaccao, RecuperarFotoArquivo;

{$R *.dfm}

procedure TFrmCadastroInternos.NovoClick(Sender: TObject);
begin
  inherited;
  PreencheCombos();
  dm.SqlExecute.SQL.Text := 'select gen_id (cod_up, 0) || gen_id (ID_INTERNO, 1) as ID from rdb$database';
  dm.DsExecute.DataSet.Close;
  dm.DsExecute.DataSet.Open;
  DsCadastro.DataSet.fieldbyname('ID_INTERNO').AsInteger := dm.DsExecute.DataSet.FieldByName('ID').AsInteger;
  dm.DsExecute.DataSet.Close;

  PageControlInterno.ActivePageIndex := 0;
  DsCadastro.DataSet.FieldByName('DATA_ENTRADA').AsDateTime := Date;
  DsCadastro.DataSet.FieldByName('ID_UP').AsInteger := GLOBAL_ID_UP;
  DsCadastro.DataSet.FieldByName('SEXO').AsString := 'M';
  DsCadastro.DataSet.FieldByName('ST').AsString := 'A';
  if DBEditdtentrada.CanFocus then
    DBEditdtentrada.SetFocus;

  SqlFoto.ParamByName('id_interno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;

  DsFoto.DataSet.Close;
  DsFoto.DataSet.OPEN;

end;

procedure TFrmCadastroInternos.FormCreate(Sender: TObject);
begin
  inherited;
  PageControlInterno.ActivePageIndex := 0;
  DateTimePickerHistorico.Date := Date;
  //  EditLocalizarChange(nil);
  ID_INTERNO := 0;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_CADASTRO)
    and not ContemValor('E', PERMISSAO_CADASTRO)
    and not ContemValor('D', PERMISSAO_CADASTRO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CADASTRO)
    and not ContemValor('E', PERMISSAO_CADASTRO)
    and not ContemValor('D', PERMISSAO_CADASTRO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CADASTRO)
    and ContemValor('E', PERMISSAO_CADASTRO)
    and not ContemValor('D', PERMISSAO_CADASTRO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CADASTRO)
    and ContemValor('E', PERMISSAO_CADASTRO)
    and ContemValor('D', PERMISSAO_CADASTRO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CADASTRO)
    and not ContemValor('E', PERMISSAO_CADASTRO)
    and ContemValor('D', PERMISSAO_CADASTRO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CADASTRO)
    and not ContemValor('E', PERMISSAO_CADASTRO)
    and ContemValor('D', PERMISSAO_CADASTRO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CADASTRO)
    and ContemValor('E', PERMISSAO_CADASTRO)
    and not ContemValor('D', PERMISSAO_CADASTRO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroInternos.FormShow(Sender: TObject);
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

  RadioGroupStatusClick(nil);
  InterageTelaAguarde();

  DM.DSCIDADE.DataSet.Close;
  DM.DSCIDADE.DataSet.OPEN;

  InterageTelaAguarde();
  DM.DsUP.DataSet.Close;
  DM.DsUP.DataSet.OPEN;

  InterageTelaAguarde();
  DM.DSSERIEESTUDO.DataSet.Close;
  DM.DSSERIEESTUDO.DataSet.OPEN;

  InterageTelaAguarde();
  DM.DsProcedencia.DataSet.Close;
  DM.DsProcedencia.DataSet.OPEN;

  InterageTelaAguarde();
  DM.DsCondicaoInterno.DataSet.Close;
  DM.DsCondicaoInterno.DataSet.OPEN;

  InterageTelaAguarde();
  DM.DsDestino.DataSet.Close;
  DM.DsDestino.DataSet.OPEN;

  InterageTelaAguarde();
  dm.DsSetorTrabalho.DataSet.Close;
  dm.DsSetorTrabalho.DataSet.OPEN;

  InterageTelaAguarde();
  dm.DSFUNCAOINTERNO.DataSet.Close;
  dm.DSFUNCAOINTERNO.DataSet.OPEN;

  InterageTelaAguarde();
  dm.DSNACIONALIDADE.DataSet.Close;
  dm.DSNACIONALIDADE.DataSet.OPEN;

  InterageTelaAguarde();
  dm.DSRACA.DataSet.Close;
  dm.DSRACA.DataSet.OPEN;

  InterageTelaAguarde();
  dm.DSESCOLARIDADE.DataSet.Close;
  dm.DSESCOLARIDADE.DataSet.OPEN;

  InterageTelaAguarde();
  dm.DSADVOGADO.DataSet.Close;
  dm.DSADVOGADO.DataSet.OPEN;

  InterageTelaAguarde();
  dm.DsProfissao.DataSet.Close;
  dm.DsProfissao.DataSet.OPEN;

  InterageTelaAguarde();
  DSHISTORICO_interno.DataSet.Close;
  DSHISTORICO_interno.DataSet.OPEN;

  DsFilhos.DataSet.Close;
  DsFilhos.DataSet.OPEN;

  InterageTelaAguarde();
  DM.DSFUNCIONARIO.DataSet.close;
  DM.DSFUNCIONARIO.DataSet.Open;

  InterageTelaAguarde();

  DM.DsPais.DataSet.Close;
  DM.DsPais.DataSet.OPEN;
  InterageTelaAguarde();

  InterageTelaAguarde();
  DM.DSartigo_perfil.DataSet.close;
  dm.DSartigo_perfil.DataSet.Open;
  InterageTelaAguarde();

  InterageTelaAguarde();

  //  DM.Dsfaltadisciplinar.DataSet.close;
  //  dm.Dsfaltadisciplinar.DataSet.Open;
  //  InterageTelaAguarde();

  InterageTelaAguarde();
  DsAdvogado_interno.DataSet.close;
  dsADVOGADO_INTERNO.DataSet.Open;
  InterageTelaAguarde();

  DsFaccao.DataSet.Close;
  DsFaccao.DataSet.OPEN;

  FinalizaTelaAguarde;

  Excluir.Visible := False;

  DBEditdtentrada.Field.EditMask := '99\/99\/9999;1;_';
  DBEditdtprisao.Field.EditMask := '99\/99\/9999;1;_';
  DBEditdtrnascimento.Field.EditMask := '99\/99\/9999;1;_';
  DBEditcpf.Field.EditMask := '999\.999\.999-99;0;_';
  DBEditcep.field.editmask := '99.999-999;0;_';

  PageControlModeloCadastro.ActivePageIndex := 1;
  if EditLocalizar.CanFocus then
  begin
    EditLocalizar.SetFocus;
  end;

  if ( ((PERMISSAO_INTELIGENCIA = '') or (PERMISSAO_INTELIGENCIA = 'R')) and ((PERMISSAO_JURIDICA = '') or (PERMISSAO_JURIDICA = 'R')) ) then
  begin
    DbrgReuColaborador.Visible := False;
  end;

  if ID_INTERNO > 0 then
    Editar.OnClick(nil);

  //teste para verificar se o campo presidio origem e solicitante vagas estão vazios, se estiverem poderão ser habilitados
  {if DsCadastro.DataSet.FieldByName('id_presidio_origem').AsInteger = 0 then
    DBLookupComboBoxPresidioOrigem.Enabled := true
  else
    DBLookupComboBoxPresidioOrigem.Enabled := false;
  if DsCadastro.DataSet.FieldByName('id_solicitante_vaga').asInteger = 0 then
    DBLookupComboBoxSolicitanteVaga.Enabled := true
  else
    DBLookupComboBoxPresidioOrigem.Enabled := false;  }
end;

procedure TFrmCadastroInternos.SpeedButton1Click(Sender: TObject);
begin
  inherited;

  if (PERMISSAO_CADASTRO = '') or (PERMISSAO_CADASTRO = 'R') then
  begin
    ShowMessage('Você não possui Permissão de Acesso ao menu de Cadastros!');
    Exit;
  end;

  FrmCadastroprocedencia := TFrmCadastroProcedencia.Create(Application);
  FrmCadastroProcedencia.ShowModal;
  FreeAndNil(FrmCadastroProcedencia);
  CorNosCampos;

  DM.DsProcedencia.DataSet.Close;
  DM.DsProcedencia.DataSet.OPEN;
end;

procedure TFrmCadastroInternos.SpeedButton2Click(Sender: TObject);
begin
  inherited;

  if (PERMISSAO_CADASTRO = '') or (PERMISSAO_CADASTRO = 'R') then
  begin
    ShowMessage('Você não possui Permissão de Acesso ao menu de Cadastros!');
    Exit;
  end;

  FrmCadastroCondicaoInterno := TFrmCadastroCondicaoInterno.Create(Application);
  FrmCadastroCondicaoInterno.ShowModal;
  FreeAndNil(FrmCadastroCondicaoInterno);
  CorNosCampos;

  DM.DsCondicaoInterno.DataSet.Close;
  DM.DsCondicaoInterno.DataSet.OPEN;
end;

procedure TFrmCadastroInternos.EditLocalizarChange(Sender: TObject);
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

procedure TFrmCadastroInternos.SalvarClick(Sender: TObject);
var
  iErro, ierro1: integer;
begin
  //DsCadastro.DataSet.FieldByName('id_up').AsInteger := GLOBAL_ID_UP;
  DsCadastro.DataSet.Fieldbyname('ID_FUNCIONARIO').AsInteger := GLOBAL_ID_FUNCIONARIO;
  //  DsCadastro.DataSet.FieldByName('FACCAO').AsString := UpperCase(frxComboBoxFaccao.Text);

  if DbrgReuColaborador.ItemIndex = -1 then
    DsCadastro.DataSet.FieldByName('COLABORADOR').AsString := 'N';

  if DsCadastro.DataSet.State in [dsinsert] then
  begin
    if VerificaInternoExiste(DsCadastro.DataSet.fieldbyname('nome_interno').AsString,
      DsCadastro.DataSet.fieldbyname('mae').AsString) then
    begin
      ShowMessage('Interno com este Nome de Mãe, já existe no confere!');
      if MessageDlg('Continuar com o cadastro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        if MessageDlg('O registro poderá ficar duplicado, continuar?', mtConfirmation, [mbNo, mbYes], 0) <> mrYes then
        begin
          Exit;
        end;
      end;
    end;
  end;

  try
    StatusBar1.Panels[1].Text := 'SALVANDO';
    Novo.Enabled := True;
    Editar.Enabled := True;
    Excluir.Enabled := True;
    Salvar.Enabled := False;
    Cancelar.Enabled := False;

    if DsCadastro.DataSet.State in [dsedit, dsinsert] then
      DsCadastro.DataSet.Post;

    if DSHISTORICO_interno.DataSet.State in [dsedit, dsinsert] then
      DSHISTORICO_interno.DataSet.Post;

    if dsADVOGADO_INTERNO.DataSet.State in [dsedit, dsinsert] then
      dsADVOGADO_INTERNO.DataSet.Post;

    if dsFilhos.DataSet.State in [dsedit, dsinsert] then
      dsFilhos.DataSet.Post;

    if DsFoto.DataSet.State in [dsedit, dsinsert] then
      DsFoto.DataSet.Post;

    IniciaTransCadastro;

    iErro := TClientDataSet(DsCadastro.DataSet).ApplyUpdates(-1);
    iErro := iErro + TClientDataSet(DSHISTORICO_interno.DataSet).ApplyUpdates(-1)
      + TClientDataSet(dsFilhos.DataSet).ApplyUpdates(-1)
      + TClientDataSet(dsADVOGADO_INTERNO.DataSet).ApplyUpdates(-1);
    iErro := iErro + TClientDataSet(DsFoto.DataSet).ApplyUpdates(-1);

    if iErro = 0 then
    begin
      finalizaTransCadastro;
      ShowMessage('Registro Salvo com Sucesso!');
    end
    else
    begin
      CancelaTransCadastro;
      ShowMessage('Erro na Transação, não Salvou!');
    end;

    StatusBar1.Panels[1].Text := '...';
    DsCadastro.DataSet.Refresh;
    PanelCadastro.Enabled := False;
  except
    ShowMessage('Erro na transação');
  end;
  CorNosCampos;
  PageControlInterno.ActivePageIndex := 0;

  DSHISTORICO_interno.DataSet.Close;
  DSHISTORICO_interno.DataSet.OPEN;

  DsConsulta.DataSet.Close;
  DsConsulta.DataSet.Open;

  dsADVOGADO_INTERNO.DataSet.Close;
  dsADVOGADO_INTERNO.DataSet.Open;
end;

procedure TFrmCadastroInternos.DsConsultaDataChange(Sender: TObject;
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

    // SqlCadastro.SQL.Text := 'SELECT * FROM INTERNO WHERE id_up=' + inttostr(GLOBAL_ID_UP) + ' and ID_INTERNO = ' +
     //  Fieldbyname('ID_INTERNO').AsString;

//    if RadioGroupStatus.ItemIndex = 1 then
//    begin
//      SqlCadastro.SQL.Text := 'SELECT * FROM INTERNO WHERE ID_INTERNO = ' + Fieldbyname('ID_INTERNO').AsString;
//    end
//    else
//    begin
//      SqlCadastro.SQL.Text := 'SELECT * FROM INTERNO WHERE id_up=' + inttostr(GLOBAL_ID_UP) + ' and ID_INTERNO = ' +
//        Fieldbyname('ID_INTERNO').AsString;
//    end;
//    DsCadastro.DataSet.Close;
//    DsCadastro.DataSet.Open;

  end;

end;

procedure TFrmCadastroInternos.RadioGroupStatusClick(Sender: TObject);
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

procedure TFrmCadastroInternos.EditarClick(Sender: TObject);
begin
  inherited;
  //  frxComboBoxFaccao.Text := UpperCase(DsCadastro.DataSet.FieldByName('FACCAO').AsString);
  PageControlInterno.ActivePageIndex := 0;
  PreencheCombos();

  SqlFoto.ParamByName('id_interno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;

  DsFoto.DataSet.Close;
  DsFoto.DataSet.OPEN;

  dsADVOGADO_INTERNO.DataSet.Close;
  dsADVOGADO_INTERNO.DataSet.Open;

  //teste para verificar se o campo solicitante da vaga e presídio de origem está vazio,
  //se já tiver preenchido só poderá ser alterado por um administrador do sistema
  if ((DsCadastro.DataSet.FieldByName('id_solicitante_vaga').asString = '')
    or (NOME_PERFILUSUARIO_LOGADO = 'ADMINISTRADOR')) then
    DBLookupComboBoxSolicitanteVaga.Enabled := true
  else
    DBLookupComboBoxSolicitanteVaga.Enabled := false;

  if ((DsCadastro.DataSet.FieldByName('id_presidio_origem').asString = '')
    or (NOME_PERFILUSUARIO_LOGADO = 'ADMINISTRADOR')) then
    DBLookupComboBoxPresidioOrigem.Enabled := true
  else
    DBLookupComboBoxPresidioOrigem.Enabled := false;
end;

procedure TFrmCadastroInternos.CancelarClick(Sender: TObject);
begin
  inherited;

  PageControlInterno.ActivePageIndex := 0;

  dsADVOGADO_INTERNO.DataSet.Close;
  dsADVOGADO_INTERNO.DataSet.Open;

end;

procedure TFrmCadastroInternos.DBImageFOTOInternoClick(Sender: TObject);
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

procedure TFrmCadastroInternos.Button1Click(Sender: TObject);
begin
  inherited;

  DSHISTORICO_interno.DataSet.Append;
  DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
  DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsString :=
    FormatDateTime('dd/mm/yyyy', DateTimePickerHistorico.Date);
  DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString := MemoDescricao.Lines.Text;
  //DSHISTORICO_interno.DataSet.fieldbyname('setor').AsString := 'Inclusão';
  DSHISTORICO_interno.DataSet.fieldbyname('setor').AsString := 'Geral';
  DSHISTORICO_interno.DataSet.fieldbyname('ID_FUNCIONARIO').AsInteger :=
    GLOBAL_ID_FUNCIONARIO;
  DSHISTORICO_interno.DataSet.Post;

  DM.SQLConnect.ExecuteDirect('EXECUTE PROCEDURE set_context(' + inttostr(GLOBAL_ID_FUNCIONARIO) + ')');
  TClientDataSet(DSHISTORICO_interno.DataSet).ApplyUpdates(0);

  MemoDescricao.Lines.Clear;

end;

procedure TFrmCadastroInternos.DBImageFOTOPERFILClick(Sender: TObject);
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
        DBImageFOTOPERFIL.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end;

end;

procedure TFrmCadastroInternos.DBImagetatuagem1Click(Sender: TObject);
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
        DBImagetatuagem1.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end;

end;

procedure TFrmCadastroInternos.DBImageFOTO_SINAISClick(Sender: TObject);
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
        DBImageFOTO_SINAIS.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end;

end;

procedure TFrmCadastroInternos.DBImageFOTO_SINAIS1Click(Sender: TObject);
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
        DBImageFOTO_SINAIS1.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end;

end;

procedure TFrmCadastroInternos.DBImageFOTO_SINAIS2Click(Sender: TObject);
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
        DBImageFOTO_SINAIS2.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end;

end;

procedure TFrmCadastroInternos.DBImageFOTO_SINAIS3Click(Sender: TObject);
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
        DBImageFOTO_SINAIS3.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end;

end;

procedure TFrmCadastroInternos.DBImageFOTO_SINAIS4Click(Sender: TObject);
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
        DBImageFOTO_SINAIS4.Picture.Bitmap.Assign(JPeg);
      end;
    end;
  end;

end;

procedure TFrmCadastroInternos.SpeedButton6Click(Sender: TObject);
begin
  inherited;

  if (PERMISSAO_CADASTRO = '') or (PERMISSAO_CADASTRO = 'R') then
  begin
    ShowMessage('Você não possui Permissão de Acesso ao menu de Cadastros!');
    Exit;
  end;

  FrmCadastroraca := TFrmCadastroraca.create(Application);
  frmcadastroraca.showmodal;
  FreeAndNil(FrmCadastroraca);
  CorNosCampos;

  DM.Dsraca.DataSet.Close;
  DM.Dsraca.DataSet.OPEN;

end;

procedure TFrmCadastroInternos.SpeedButton5Click(Sender: TObject);
begin
  inherited;

  if (PERMISSAO_CADASTRO = '') or (PERMISSAO_CADASTRO = 'R') then
  begin
    ShowMessage('Você não possui Permissão de Acesso ao menu de Cadastros!');
    Exit;
  end;

  FrmCadastronacionalidade := TFrmCadastronacionalidade.create(Application);
  FrmCadastronacionalidade.showmodal;
  FreeAndNil(FrmCadastronacionalidade);
  CorNosCampos;

  DM.DsPais.DataSet.Close;
  DM.DsPais.DataSet.OPEN;
end;

procedure TFrmCadastroInternos.SpeedButton4Click(Sender: TObject);
begin
  inherited;

  //Verifica se o usuário tem permissão de acesso ao cadastro.
  if (PERMISSAO_CADASTRO = '') or (PERMISSAO_CADASTRO = 'R') then
  begin
    ShowMessage('Você não possui Permissão de Acesso ao menu de Cadastros!');
    Exit;
  end;

  FrmCadastroCidade := TFrmCadastroCidade.create(Application);
  FrmCadastroCidade.showmodal;
  FreeAndNil(FrmCadastroCidade);
  CorNosCampos;

  DM.DSCIDADE.DataSet.Close;
  DM.DSCIDADE.DataSet.OPEN;

end;

procedure TFrmCadastroInternos.SpeedButton7Click(Sender: TObject);
begin
  inherited;

  //Verifica se o usuário tem permissão de Cadastro.
  if (PERMISSAO_CADASTRO = '') or (PERMISSAO_CADASTRO = 'R') then
  begin
    ShowMessage('Você não possui Permissão de Acesso ao menu de Cadastros!');
    Exit;
  end;

  FrmCadastroescolaridade := TFrmCadastroescolaridade.create(Application);
  FrmCadastroescolaridade.showmodal;
  FreeAndNil(FrmCadastroescolaridade);
  CorNosCampos;

  DM.DSESCOLARIDADE.DataSet.Close;
  DM.DSESCOLARIDADE.DataSet.OPEN;

end;

procedure TFrmCadastroInternos.btn2Click(Sender: TObject);
begin
  inherited;

  if (PERMISSAO_ADVOGADO = '') or (PERMISSAO_ADVOGADO = 'R') then
  begin
    ShowMessage('Você não possui Permissão de Acesso ao Cadastro de Advogados!');
    Exit;
  end;

  FrmCadastroadvogado := TFrmCadastroadvogado.create(Application);
  FrmCadastroadvogado.showmodal;
  FreeAndNil(FrmCadastroadvogado);
  CorNosCampos;

  DM.DSADVOGADO.DataSet.Close;
  DM.DSADVOGADO.DataSet.OPEN;
end;

procedure TFrmCadastroInternos.SpeedButton9Click(Sender: TObject);
begin
  inherited;

  if (PERMISSAO_CADASTRO = '') or (PERMISSAO_CADASTRO = 'R') then
  begin
    ShowMessage('Você não possui Permissão de Acesso ao menu de Cadastros!');
    Exit;
  end;

  FrmCadastroprofissao := TFrmCadastroprofissao.create(Application);
  FrmCadastroprofissao.showmodal;
  FreeAndNil(FrmCadastroprofissao);
  CorNosCampos;

  DM.DsProfissao.DataSet.Close;
  DM.DsProfissao.DataSet.OPEN;
end;

procedure TFrmCadastroInternos.SpeedButton11Click(Sender: TObject);
begin
  inherited;
  FrmCadastroCidade := TFrmCadastroCidade.create(Application);
  FrmCadastroCidade.showmodal;
  FreeAndNil(FrmCadastroCidade);

  DM.DSCIDADE.DataSet.Close;
  DM.DSCIDADE.DataSet.OPEN;

end;

procedure TFrmCadastroInternos.chkSoundexClick(Sender: TObject);
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

procedure TFrmCadastroInternos.SpeedButton12Click(Sender: TObject);
begin
  inherited;
  FrmCadastrofaltasdisciplinares := TFrmCadastrofaltasdisciplinares.Create(Application);
  FrmCadastrofaltasdisciplinares.ShowModal;
  FreeAndNil(FrmCadastrofaltasdisciplinares);
  CorNosCampos;

  //  DM.Dsfaltadisciplinar.DataSet.Close;
  //  DM.Dsfaltadisciplinar.DataSet.OPEN;
end;

procedure TFrmCadastroInternos.Button2Click(Sender: TObject);
begin

  if not ContemValor('I', PERMISSAO_ADVOGADO) then
  begin
    ShowMessage('Você não possui permissão para constituir/inserir advogados!');
    Exit;
  end;

  if DBLookupComboBoxIDADVOGADO.KeyValue = null then
  begin
    ShowMessage('Informe o Advogado');

    if DBLookupComboBoxIDADVOGADO.CanFocus then
      DBLookupComboBoxIDADVOGADO.SetFocus;

    exit;
  end;

 { DM.SqlExecute.SQL.Text := 'select FIRST 1 * from advogados_internos where status = ''A'' and id_interno = '
    + DsCadastro.DataSet.fieldbyname('id_interno').AsString + ' and id_advogado = '
    + IntToStr(DBLookupComboBoxIDADVOGADO.KeyValue);

  DM.DsExecute.DataSet.Close;
  DM.DsExecute.DataSet.Open;

  if not (DM.DsExecute.DataSet.IsEmpty) then
  begin
      ShowMessage('Este Advogado já está Constituído para este Interno!');
      Exit;
  end; }

  if dsADVOGADO_INTERNO.DataSet.Locate('id_advogado;status', VarArrayOf([DBLookupComboBoxIDADVOGADO.KeyValue, 'A']), [loCaseInsensitive]) then
  begin
    ShowMessage('Advogado já está Constituído e ativo para este Interno!');
    Exit;
  end;


  if Application.MessageBox('Contituir este Advogado?',
    'Confirme.', mb_YesNo + Mb_IconQuestion) = idYes then
  begin

    dsADVOGADO_INTERNO.DataSet.Append;
    dsADVOGADO_INTERNO.DataSet.fieldbyname('id_ADVOGADOs_INTERNOs').AsInteger := 0;
    dsADVOGADO_INTERNO.DataSet.fieldbyname('id_interno').AsInteger :=
      DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
    dsADVOGADO_INTERNO.DataSet.fieldbyname('OBSadvogado_interno').AsString := Memoobsadvogado.Lines.Text;
    dsADVOGADO_INTERNO.DataSet.fieldbyname('ID_ADVOGADO').AsInteger := DBLookupComboBoxIDADVOGADO.KeyValue;
    dsADVOGADO_INTERNO.DataSet.fieldbyname('DATA_CONSTITUICAO').AsString := DateToStr(DtpDataConstituicao.Date);
    dsADVOGADO_INTERNO.DataSet.fieldbyname('STATUS').AsString := 'A';
    dsADVOGADO_INTERNO.DataSet.Post;

    DSHISTORICO_interno.DataSet.Append;
    DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
    DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
      DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
    DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsDateTime := DtpDataConstituicao.Date;
    DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString :=
      'Constituiu o Advogado: ' + DBLookupComboBoxIDADVOGADO.Text + ', Obs: ' + Memoobsadvogado.Lines.Text;
    DSHISTORICO_interno.DataSet.fieldbyname('setor').AsString := 'Jurídico';
    DSHISTORICO_interno.DataSet.fieldbyname('ID_FUNCIONARIO').AsInteger :=
      GLOBAL_ID_FUNCIONARIO;
    DSHISTORICO_interno.DataSet.Post;

    Memoobsadvogado.Lines.Clear;
    DBLookupComboBoxIDADVOGADO.KeyValue := null;

  end;

end;

procedure TFrmCadastroInternos.BitBtn1Click(Sender: TObject);
var
  JPeg: TJpegImage;
  ImageTeste: TImage;
  sNomePNG: string;
begin
  inherited;

  FrmImagemParaWEB := TFrmImagemParaWEB.Create(Application);
  FrmImagemParaWEB.DBImageFOTOInterno.DataSource := DsCadastro;
  FrmImagemParaWEB.ShowModal;

  DBImageFOTOInterno.Picture.Bitmap.Assign(FrmImagemParaWEB.Image1.picture);

  DBImageFOTOInterno.Picture.SaveToFile('interno-' + DBEditCodigo.Text + '.jpg');

  freeandnil(FrmImagemParaWEB);

end;

procedure TFrmCadastroInternos.BitBtn2Click(Sender: TObject);
begin
  inherited;

  DBImageFOTOInterno.Picture.Bitmap.LoadFromFile(DsCadastro.DataSet.fieldbyname('id_interno').AsString + '.bmp');

end;

procedure TFrmCadastroInternos.CdsFilhosBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('idfilhos').AsInteger := 0;
end;

procedure TFrmCadastroInternos.CdsCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  //  DataSet.FieldByName('FACCAO').AsString := UpperCase(frxComboBoxFaccao.Text);

end;

procedure TFrmCadastroInternos.PreencheCombos;
begin
  //  SqlLista.SQL.Text := 'SELECT DISTINCT FACCAO FROM INTERNO ';
  //
  //  frxComboBoxFaccao.Items.Clear;
  //
  //  with DsLista.DataSet do
  //  begin
  //    Open;
  //    while not EOF do
  //    begin
  //      frxComboBoxFaccao.Items.Add(FieldByName('FACCAO').AsString);
  //      Next;
  //    end;
  //    close;
  //  end;

end;

procedure TFrmCadastroInternos.DsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;

  with DsCadastro.DataSet do
  begin

    if not Active then
      Exit;

    if IsEmpty then
      Exit;

    //    if state in [dsbrowse] then
    //    begin
    //      frxComboBoxFaccao.Text := UpperCase(DsCadastro.DataSet.FieldByName('FACCAO').AsString);
    //    end;

  end;

  {Verifica as permissões que o usuário possui para esta tela
  e habilita ou não os respectivos botões.
  Estas verificações devem ser colocadas no final do evento FormCreate e
  no final do evento OnDataChance do DsCadastro de cada tela.
  Obs: atentar para mudar a permissão referente à tela nas verificações abaixo.
  Ex. ContemValor('I', PERMISSAO_CONFERE).}

  if not ContemValor('I', PERMISSAO_CADASTRO)
    and not ContemValor('E', PERMISSAO_CADASTRO)
    and not ContemValor('D', PERMISSAO_CADASTRO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    Excluir.Visible := False;
    Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CADASTRO)
    and not ContemValor('E', PERMISSAO_CADASTRO)
    and not ContemValor('D', PERMISSAO_CADASTRO) then
  begin
    Editar.Visible := False;
    Excluir.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CADASTRO)
    and ContemValor('E', PERMISSAO_CADASTRO)
    and not ContemValor('D', PERMISSAO_CADASTRO) then
  begin
    Excluir.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CADASTRO)
    and ContemValor('E', PERMISSAO_CADASTRO)
    and ContemValor('D', PERMISSAO_CADASTRO) then
  begin
    Novo.Visible := False;
  end;

  if ContemValor('I', PERMISSAO_CADASTRO)
    and not ContemValor('E', PERMISSAO_CADASTRO)
    and ContemValor('D', PERMISSAO_CADASTRO) then
  begin
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CADASTRO)
    and not ContemValor('E', PERMISSAO_CADASTRO)
    and ContemValor('D', PERMISSAO_CADASTRO) then
  begin
    Novo.Visible := False;
    Editar.Visible := False;
    if not Salvar.Visible then
      Salvar.Visible := False;
    if not Salvar.Enabled then
      Salvar.Visible := False;
  end;

  if not ContemValor('I', PERMISSAO_CADASTRO)
    and ContemValor('E', PERMISSAO_CADASTRO)
    and not ContemValor('D', PERMISSAO_CADASTRO) then
  begin
    Novo.Visible := False;
    Excluir.Visible := False;
  end;

end;

procedure TFrmCadastroInternos.Recalculartodasasfotos1Click(
  Sender: TObject);
var
  JPeg: TJpegImage;
begin
  inherited;

  if InputBox('Informe a senha.', 'Qual a senha', '') <> 'agepensiap' then
    Exit;

  with DsConsulta.dataset do
  begin

    first;

    while not eof do
    begin

      FrmImagemParaWEB := TFrmImagemParaWEB.Create(Application);
      FrmImagemParaWEB.DBImageFOTOInterno.DataSource := DsCadastro;
      FrmImagemParaWEB.ShowModal;

      IniciaTransCadastro;

      DsCadastro.DataSet.Edit;
      DBImageFOTOInterno.Picture.Bitmap.Assign(FrmImagemParaWEB.Image1.picture);
      DBImageFOTOInterno.Picture.SaveToFile('interno-' + DBEditCodigo.Text + '.jpg');
      DsCadastro.DataSet.post;
      tclientdataset(DsCadastro.DataSet).ApplyUpdates(0);

      finalizaTransCadastro;

      freeandnil(FrmImagemParaWEB);
      next;

    end;

    First;
    showmessage('Pronto!!!');

  end;

end;

procedure TFrmCadastroInternos.Especifico1Click(Sender: TObject);
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

procedure TFrmCadastroInternos.SpeedButton8Click(Sender: TObject);
begin
  inherited;

  if (PERMISSAO_CADASTRO = '') or (PERMISSAO_CADASTRO = 'R') then
  begin
    ShowMessage('Você não possui Permissão de Acesso ao menu de Cadastros!');
    Exit;
  end;

  FrmCadastroFaccao := TFrmCadastroFaccao.Create(Application);
  FrmCadastroFaccao.ShowModal;
  FreeAndNil(FrmCadastroFaccao);

  DsFaccao.DataSet.Close;
  DsFaccao.DataSet.OPEN;

end;

procedure TFrmCadastroInternos.DBImageOutrasClick(Sender: TObject);
var
  sOrigem, sDestino: string;
  JPeg: TJpegImage;
begin
  with DsFoto.DataSet do
  begin

    if not (state in [dsedit, dsinsert]) then
      Append;

    if OpenDialogCapturarFoto.Execute then
    begin
      JPeg := TJPEGImage.Create;
      JPeg.LoadFromFile(ConverterBmpParaJPeg(JpgToBmp(OpenDialogCapturarFoto.FileName)));
      DBImageOutras.Picture.Bitmap.Assign(JPeg);
    end;

  end;

end;

procedure TFrmCadastroInternos.CdsFotoAfterInsert(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('IDFOTO_INTERNO').AsInteger := 0;
  DataSet.FieldByName('DESCRICAO').AsString := 'FOTO';
  DataSet.FieldByName('ID_INTERNO').AsInteger :=
    DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
  DataSet.FieldByName('DATA').AsDateTime := DATE;

end;

procedure TFrmCadastroInternos.RecuperarFotosdeArquivo1Click(
  Sender: TObject);
begin
  inherited;

  FrmRecuperarFotoArquivo := TFrmRecuperarFotoArquivo.Create(Application);
  FrmRecuperarFotoArquivo.ShowModal;
  FreeAndNil(FrmRecuperarFotoArquivo);

end;

procedure TFrmCadastroInternos.Button3Click(Sender: TObject);
begin
  inherited;

  if not ContemValor('D', PERMISSAO_ADVOGADO) then
  begin
    ShowMessage('Você não possui permissão para desconstituir/inserir advogados!');
    Exit;
  end;

  if dsADVOGADO_INTERNO.DataSet.IsEmpty then
    exit;

  if dsADVOGADO_INTERNO.DataSet.fieldbyname('STATUS').AsString = 'I' then
  begin
    ShowMessage('Este Advogado já foi Desconstituído!');
    Exit;
  end;

  if Application.MessageBox('Descontituir o Advogado selecionado?',
    'Confirme.', mb_YesNo + Mb_IconQuestion) = idYes then
  begin

    DSHISTORICO_interno.DataSet.Append;
    DSHISTORICO_interno.DataSet.fieldbyname('idhistorico_interno').AsInteger := 0;
    DSHISTORICO_interno.DataSet.fieldbyname('idinterno').AsInteger :=
      DsCadastro.DataSet.fieldbyname('id_interno').AsInteger;
    DSHISTORICO_interno.DataSet.fieldbyname('data_hora').AsDateTime := Date;
    DSHISTORICO_interno.DataSet.fieldbyname('descricao').AsString :=
      'Desconstituiu o Advogado/Escritório: ' +
      dsADVOGADO_INTERNO.DataSet.fieldbyname('ADVOGADO').asstring + '.';
    DSHISTORICO_interno.DataSet.fieldbyname('setor').AsString := 'Jurídico';
    DSHISTORICO_interno.DataSet.fieldbyname('ID_FUNCIONARIO').AsInteger :=
      GLOBAL_ID_FUNCIONARIO;
    DSHISTORICO_interno.DataSet.Post;

    //dsADVOGADO_INTERNO.DataSet.Delete;
    dsADVOGADO_INTERNO.DataSet.Edit;

    dsADVOGADO_INTERNO.DataSet.fieldbyname('OBSadvogado_interno').AsString := DBMemoObservacaoAdvogado.Lines.Text;
    dsADVOGADO_INTERNO.DataSet.fieldbyname('DATA_DESCONSTITUICAO').AsString := DateToStr(Date);
    dsADVOGADO_INTERNO.DataSet.fieldbyname('STATUS').AsString := 'I';

    dsADVOGADO_INTERNO.DataSet.UpdateRecord;

  end;

end;

procedure TFrmCadastroInternos.DBGridConsultaDblClick(Sender: TObject);
begin
  inherited;
  EditarClick(nil);
  DsFoto.DataSet.Close;
  DsFoto.DataSet.OPEN;
end;

procedure TFrmCadastroInternos.CdsConsultaFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var
  Status, Campo: string;
begin
  //inherited;

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

procedure TFrmCadastroInternos.RadioGroupTipoLocalizarClick(
  Sender: TObject);
begin
  inherited;
  if EditLocalizar.CanFocus then
  begin
    EditLocalizar.SetFocus;
    EditLocalizar.Text := '';
  end;
end;

procedure TFrmCadastroInternos.PageControlInternoChange(Sender: TObject);
begin
  inherited;

  if PageControlInterno.ActivePage = tsAdvogado then
  begin
    if (PERMISSAO_ADVOGADO = '') or (PERMISSAO_ADVOGADO = 'R') then
    begin
      PageControlInterno.ActivePage := TabSheet1;
      ShowMessage('Você não possui permissão para vizualizar os advogados deste interno!');
    end;
  end;
end;

procedure TFrmCadastroInternos.tsAdvogadoEnter(Sender: TObject);
begin
  inherited;
  DtpDataConstituicao.Date := Date;
  DBLookupComboBoxIDADVOGADO.KeyValue := null;
end;

procedure TFrmCadastroInternos.Button4Click(Sender: TObject);
begin
  inherited;
  dsADVOGADO_INTERNO.DataSet.Edit;

  dsADVOGADO_INTERNO.DataSet.fieldbyname('DATA_CONSTITUICAO').AsString :=
    InputBox('Atualizar Data de Constituição', 'Qual a Data de Constituição deste Advogado?' + #13#13 + 'Formato da data: 20/01/2014', '');

  dsADVOGADO_INTERNO.DataSet.UpdateRecord;
end;

end.

