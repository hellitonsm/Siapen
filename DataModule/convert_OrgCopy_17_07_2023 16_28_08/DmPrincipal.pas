unit DmPrincipal;

interface

uses
  SysUtils, Classes,  DB, SqlExpr,
  IniFiles, DBClient, Forms, FMTBcd, Provider, ImgList,
  Controls, Dialogs, Windows, System.ImageList,
  Data.DBXInterbase, IPPeerClient, Data.DBXCommon, Data.DBXFirebird,System.IOUtils,ShellApi;

type
  TDM = class(TDataModule)
    SQLConnect: TSQLConnection;
    CdsCela: TClientDataSet;
    DspCela: TDataSetProvider;
    SqlCela: TSQLQuery;
    DsCela: TDataSource;
    SqlProfissao: TSQLQuery;
    DspProfissao: TDataSetProvider;
    CdsProfissao: TClientDataSet;
    DsProfissao: TDataSource;
    SqlProcedencia: TSQLQuery;
    DspProcedencia: TDataSetProvider;
    CdsProcedencia: TClientDataSet;
    DsProcedencia: TDataSource;
    SqlGaleria: TSQLQuery;
    DspGaleria: TDataSetProvider;
    CdsGaleria: TClientDataSet;
    DsGaleria: TDataSource;
    SqlPavilhao: TSQLQuery;
    DspPavilhao: TDataSetProvider;
    CdsPavilhao: TClientDataSet;
    DsPavilhao: TDataSource;
    SqlSolario: TSQLQuery;
    DspSolario: TDataSetProvider;
    CdsSolario: TClientDataSet;
    DsSolario: TDataSource;
    SQLCidade: TSQLQuery;
    DSPCIDADE: TDataSetProvider;
    CDSCIDADE: TClientDataSet;
    DSCIDADE: TDataSource;
    SQLNACIONALIDADE: TSQLQuery;
    DSPNACIONALIDADE: TDataSetProvider;
    CDSNACIONALIDADE: TClientDataSet;
    DSNACIONALIDADE: TDataSource;
    SQLRACA: TSQLQuery;
    DSPRACA: TDataSetProvider;
    CDSRACA: TClientDataSet;
    DSRACA: TDataSource;
    SQLESCOLARIDADE: TSQLQuery;
    DSPESCOLARIDADE: TDataSetProvider;
    CDSESCOLARIDADE: TClientDataSet;
    DSESCOLARIDADE: TDataSource;
    SQLADVOGADO: TSQLQuery;
    DSPADVOGADO: TDataSetProvider;
    CDSADVOGADO: TClientDataSet;
    DsAdvogado: TDataSource;
    SqlVisitante: TSQLQuery;
    DspVisitante: TDataSetProvider;
    CdsVisitante: TClientDataSet;
    DsVisitante: TDataSource;

    SQLFUNCAOFUNCIONARIO: TSQLQuery;
    DSPFUNCAOFUNCIONARIO: TDataSetProvider;
    CDSFUNCAOFUNCIONARIO: TClientDataSet;
    DSFUNCAOFUNCIONARIO: TDataSource;
    SqlGrauParentesco: TSQLQuery;
    DspGrauParentesco: TDataSetProvider;
    CdsGrauParentesco: TClientDataSet;
    DSGrauParentesco: TDataSource;
    SqlUP: TSQLQuery;
    DspUP: TDataSetProvider;
    CdsUP: TClientDataSet;
    DsUP: TDataSource;
    SqlCondicaoInterno: TSQLQuery;
    DspCondicaoInterno: TDataSetProvider;
    CdsCondicaoInterno: TClientDataSet;
    DsCondicaoInterno: TDataSource;
    SqlDestino: TSQLQuery;
    DspDestino: TDataSetProvider;
    CdsDestino: TClientDataSet;
    DsDestino: TDataSource;
    CdsInterno: TClientDataSet;
    DspInterno: TDataSetProvider;
    SqlInterno: TSQLQuery;
    DsInterno: TDataSource;
    SqlSetorTrabalho: TSQLQuery;
    DspSetorTrabalho: TDataSetProvider;
    CdsSetorTrabalho: TClientDataSet;
    DsSetorTrabalho: TDataSource;
    SQLFUNCAOINTERNO: TSQLQuery;
    DSPFUNCAOINTERNO: TDataSetProvider;
    CDSFUNCAOINTERNO: TClientDataSet;
    DSFUNCAOINTERNO: TDataSource;
    SqlExecute: TSQLQuery;
    DspExecute: TDataSetProvider;
    CdsExecute: TClientDataSet;
    DsExecute: TDataSource;
    SQLfuncionario: TSQLQuery;
    dspfuncionario: TDataSetProvider;
    cdsfuncionario: TClientDataSet;
    DsFuncionario: TDataSource;
    SQLSERIEESTUDO: TSQLQuery;
    DSPSERIEESTUDO: TDataSetProvider;
    CDSSERIEESTUDO: TClientDataSet;
    DSSERIEESTUDO: TDataSource;
    DSrelation_fields: TDataSource;
    Cdsrelation_fields: TClientDataSet;
    Dsprelation_fields: TDataSetProvider;
    Sqlrelation_fields: TSQLQuery;
    SqlAssuntos: TSQLQuery;
    DspAssuntos: TDataSetProvider;
    CdsAssuntos: TClientDataSet;
    DsAssuntos: TDataSource;
    SqlSituacao: TSQLQuery;
    DspSituacao: TDataSetProvider;
    CdsSituacao: TClientDataSet;
    DsSituacao: TDataSource;
    SqlTipoContato: TSQLQuery;
    DspTipoContato: TDataSetProvider;
    CdsTipoContato: TClientDataSet;
    DsTipoContato: TDataSource;
    SqlFuncionarioLista: TSQLQuery;
    DspFuncionarioLista: TDataSetProvider;
    CdsFuncionarioLista: TClientDataSet;
    DsFuncionarioLista: TDataSource;
    SqlPais: TSQLQuery;
    DspPais: TDataSetProvider;
    CdsPais: TClientDataSet;
    DsPais: TDataSource;
    dsartigo_perfil: TDataSource;
    SQLartigo_perfil: TSQLQuery;
    DSPartigo_perfil: TDataSetProvider;
    cdsartigo_perfil: TClientDataSet;
    Sqlfaltadisciplinar: TSQLQuery;
    Dspfaltadisciplinar: TDataSetProvider;
    Cdsfaltadisciplinar: TClientDataSet;
    Dsfaltadisciplinar: TDataSource;
    Sqlartigo: TSQLQuery;
    Dspartigo: TDataSetProvider;
    Cdsartigo: TClientDataSet;
    Dsartigo: TDataSource;
    SqlFornecedor: TSQLQuery;
    Dspfornecedor: TDataSetProvider;
    SqlProcedimentos: TSQLQuery;
    DspProcedimentos: TDataSetProvider;
    Cdsfornecedor: TClientDataSet;
    CdsProcedimentos: TClientDataSet;
    Dsfornecedor: TDataSource;
    DsProcedimentos: TDataSource;
    SQLRemedio: TSQLQuery;
    DSPRemedio: TDataSetProvider;
    CDSRemedio: TClientDataSet;
    DSRemedio: TDataSource;
    SqlMovProcDetalhado: TSQLQuery;
    DspMovProcDetalhado: TDataSetProvider;
    CdsMovProcDetalhado: TClientDataSet;
    DsMovProcDetalhado: TDataSource;
    DSlivro: TDataSource;
    cdslivro: TClientDataSet;
    DSPlivro: TDataSetProvider;
    SQLlivro: TSQLQuery;
    DScalcpermanencia: TDataSource;
    CDScalcpermanencia: TClientDataSet;
    DSPcalcpermanencia: TDataSetProvider;
    SQLcalcpermanencia: TSQLQuery;
    SqlEquipe: TSQLQuery;
    DspEquipe: TDataSetProvider;
    CdsEquipe: TClientDataSet;
    DsEquipe: TDataSource;
    DsPostoTrabalho: TDataSource;
    CdsPostoTrabalho: TClientDataSet;
    DspPostoTrabalho: TDataSetProvider;
    SqlPostoTrabalho: TSQLQuery;
    DsOcorrencias: TDataSource;
    CdsOcorrencias: TClientDataSet;
    DspOcorrencias: TDataSetProvider;
    SqlOcorrencias: TSQLQuery;
    SQLcurso: TSQLQuery;
    dspcurso: TDataSetProvider;
    cdscurso: TClientDataSet;
    dscurso: TDataSource;
    SqlPostoTrabalhoRotativo: TSQLQuery;
    DspPostoTrabalhoRotativo: TDataSetProvider;
    CdsPostoTrabalhoRotativo: TClientDataSet;
    DsPostoTrabalhoRotativo: TDataSource;
    SqlEscalaPlantao: TSQLQuery;
    DspEscalaPlantao: TDataSetProvider;
    CdsEscalaPlantao: TClientDataSet;
    DsEscalaPlantao: TDataSource;
    SqlHorarioFuncionario: TSQLQuery;
    DspHorarioFuncionario: TDataSetProvider;
    CdsHorarioFuncionario: TClientDataSet;
    DsHorarioFuncionario: TDataSource;
    SqlTipoPatrimonio: TSQLQuery;
    DspTipoPatrimonio: TDataSetProvider;
    CdsTipoPatrimonio: TClientDataSet;
    DsTipoPatrimonio: TDataSource;
    SQLacessorios: TSQLQuery;
    dspacessorios: TDataSetProvider;
    cdsacessorios: TClientDataSet;
    dsacessorios: TDataSource;
    dsmedico: TDataSource;
    dstipodieta: TDataSource;
    cdstipodieta: TClientDataSet;
    cdsmedico: TClientDataSet;
    dspmedico: TDataSetProvider;
    dsptipodieta: TDataSetProvider;
    SQLmedico: TSQLQuery;
    SQLtipodieta: TSQLQuery;
    SqlPadrao: TSQLQuery;
    DspPadrao: TDataSetProvider;
    CdsPadrao: TClientDataSet;
    DsPadrao: TDataSource;
    ImageListSelecao: TImageList;
    Sqltiposaidao: TSQLQuery;
    Dsptiposaidao: TDataSetProvider;
    Cdstiposaidao: TClientDataSet;
    Dstiposaidao: TDataSource;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    SQLQuery1: TSQLQuery;
    ImageListNetworkI: TImageList;
    ImageListNetworkII: TImageList;
    ImageListWordProcessing: TImageList;
    ImageListBusiness: TImageList;
    ImageListCorel1: TImageList;
    ImageListCorel2: TImageList;
    DataSource3: TDataSource;
    ClientDataSet3: TClientDataSet;
    DataSetProvider3: TDataSetProvider;
    SQLQuery3: TSQLQuery;
    SQLenfermidade: TSQLQuery;
    DSPenfermidade: TDataSetProvider;
    cdsenfermidade: TClientDataSet;
    dsenfermidade: TDataSource;
    SQLlocaltrabalho: TSQLQuery;
    dsplocaltrabalho: TDataSetProvider;
    cdslocaltrabalho: TClientDataSet;
    dslocaltrabalho: TDataSource;
    SQLdeficiencia: TSQLQuery;
    dspdeficiencia: TDataSetProvider;
    cdsdeficiencia: TClientDataSet;
    dsdeficiencia: TDataSource;
    SQLvacina: TSQLQuery;
    dspvacina: TDataSetProvider;
    cdsvacina: TClientDataSet;
    dsvacina: TDataSource;
    SQLOrgao: TSQLQuery;
    dspOrgao: TDataSetProvider;
    cdsOrgao: TClientDataSet;
    dsOrgao: TDataSource;
    SQLSolicitacaoVaga: TSQLQuery;
    SQLSolicitacaoVagaID_SOLICITACAO_VAGA: TIntegerField;
    SQLSolicitacaoVagaID_ORGAO: TIntegerField;
    SQLSolicitacaoVagaID_UP: TIntegerField;
    SQLSolicitacaoVagaQTD_VAGAS_SOLICITADAS: TIntegerField;
    SQLSolicitacaoVagaQTD_VAGAS_AUTORIZADAS: TIntegerField;
    SQLSolicitacaoVagaQTD_VAGAS_UTILIZADAS: TIntegerField;
    SQLSolicitacaoVagaDATA_AUTORIZA_VAGAS: TSQLTimeStampField;
    SQLSolicitacaoVagaOFICIO_DESC: TStringField;
    SQLSolicitacaoVagaQTD_VAGAS_SEM_EFEITO: TIntegerField;
    dspSolicitacaoVaga: TDataSetProvider;
    cdsSolicitacaoVaga: TClientDataSet;
    cdsSolicitacaoVagaID_SOLICITACAO_VAGA: TIntegerField;
    cdsSolicitacaoVagaID_ORGAO: TIntegerField;
    cdsSolicitacaoVagaID_UP: TIntegerField;
    cdsSolicitacaoVagaQTD_VAGAS_SOLICITADAS: TIntegerField;
    cdsSolicitacaoVagaQTD_VAGAS_AUTORIZADAS: TIntegerField;
    cdsSolicitacaoVagaQTD_VAGAS_UTILIZADAS: TIntegerField;
    cdsSolicitacaoVagaDATA_AUTORIZA_VAGAS: TSQLTimeStampField;
    cdsSolicitacaoVagaOFICIO_DESC: TStringField;
    cdsSolicitacaoVagaQTD_VAGAS_SEM_EFEITO: TIntegerField;
    dsSolicitacaoVaga: TDataSource;
    SQLEscolta: TSQLQuery;
    dspEscolta: TDataSetProvider;
    cdsEscolta: TClientDataSet;
    dsEscolta: TDataSource;
    SQLMeioTransporte: TSQLQuery;
    dspMeioTransporte: TDataSetProvider;
    cdsMeioTransporte: TClientDataSet;
    dsMeioTransporte: TDataSource;
    SQLItinerario: TSQLQuery;
    dspItinerario: TDataSetProvider;
    cdsItinerario: TClientDataSet;
    dsItinerario: TDataSource;
    SQLDocOficio: TSQLQuery;
    dspDocOficio: TDataSetProvider;
    cdsDocOficio: TClientDataSet;
    dsDocOficio: TDataSource;
    SQLInternoInclusao: TSQLQuery;
    dspInternoInclusao: TDataSetProvider;
    cdsInternoInclusao: TClientDataSet;
    dsInternoInclusao: TDataSource;
    SQLestado: TSQLQuery;
    dspestado: TDataSetProvider;
    cdsestado: TClientDataSet;
    dsestado: TDataSource;
    SQLvestimentas: TSQLQuery;
    dspvestimentas: TDataSetProvider;
    cdsvestimentas: TClientDataSet;
    dsvestimentas: TDataSource;
    SqlDigital: TSQLQuery;
    DspDigital: TDataSetProvider;
    CdsDigital: TClientDataSet;
    DsDigital: TDataSource;
    Sqlservidor: TSQLQuery;
    Dspservidor: TDataSetProvider;
    Cdsservidor: TClientDataSet;
    Dsservidor: TDataSource;
    CdsDigitalID_BIOMETRIA: TIntegerField;
    CdsDigitalID_INTERNO: TIntegerField;
    CdsDigitalIMAGEM_POLEGAR_DIREITO: TBlobField;
    CdsDigitalIMAGEM_INDICADOR_DIREITO: TBlobField;
    CdsDigitalIMAGEM_MEDIO_DIREITO: TBlobField;
    CdsDigitalIMAGEM_ANELAR_DIREITO: TBlobField;
    CdsDigitalIMAGEM_MINIMO_DIREITO: TBlobField;
    CdsDigitalIMAGEM_POLEGAR_ESQUERDO: TBlobField;
    CdsDigitalIMAGEM_INDICADOR_ESQUERDO: TBlobField;
    CdsDigitalIMAGEM_MEDIO_ESQUERDO: TBlobField;
    CdsDigitalIMAGEM_ANELAR_ESQUERDO: TBlobField;
    CdsDigitalIMAGEM_MINIMO_ESQUERDO: TBlobField;
    CdsDigitalCHAVE_POLEGAR_DIREITO: TStringField;
    CdsDigitalCHAVE_INDICADOR_DIREITO: TStringField;
    CdsDigitalCHAVE_MEDIO_DIREITO: TStringField;
    CdsDigitalCHAVE_ANELAR_DIREITO: TStringField;
    CdsDigitalCHAVE_MINIMO_DIREITO: TStringField;
    CdsDigitalCHAVE_POLEGAR_ESQUERDO: TStringField;
    CdsDigitalCHAVE_INDICADOR_ESQUERDO: TStringField;
    CdsDigitalCHAVE_MEDIO_ESQUERDO: TStringField;
    CdsDigitalCHAVE_ANELAR_ESQUERDO: TStringField;
    CdsDigitalCHAVE_MINIMO_ESQUERDO: TStringField;
    CdsDigitalNome_Interno: TStringField;
    SqlTurma: TSQLQuery;
    dspturma: TDataSetProvider;
    cdsturma: TClientDataSet;
    dsturma: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure SQLConnectBeforeDisconnect(Sender: TObject);

  private
    { Private declarations }
  public
    procedure AbreConexao;
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses Lib, ModuloPrincipal;

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  AbreConexao;
end;

procedure TDM.AbreConexao();
var
  ArqIni: TIniFile;
  DB_INIFILE, DB_LIBRARYNAME, DB_VENDORNAME: string;
  numero_tentativa: integer;
  Atualizar_Campos_Tabelas_Banco_Dados: string;
begin

  if DirectoryExists(GLOBAL_PATCH_SISTEMA) then
    SetCurrentDir(GLOBAL_PATCH_SISTEMA);

  {* Define Variaveis de Conexao *}

  DB_INIFILE := GLOBAL_PATCH_SISTEMA + '..\config\dbxconnections.ini';

  DB_LIBRARYNAME := ExtractFileDir(Application.ExeName) + '\dbxfb.dll';

//  DB_LIBRARYNAME := ExtractFileDir(Application.ExeName) + '\dbexpida.dll';


  DB_VENDORNAME := ExtractFileDir(Application.ExeName) + '\fbclient.dll';
  ArqIni := TIniFile.Create(DB_INIFILE);

  senha_padrao := ArqIni.ReadString('SISAP', 'PADRAO', 'IPCG');
  GLOBAL_LOCAL := ArqIni.ReadString('SISAP', 'LOCAL', 'AGEPEN');
  GLOBAL_NOME := ArqIni.ReadString('SISAP', 'NOME', 'AGÊNCIA ESTADUAL DE ADMINISTRAÇÃO DO SISTEMA PENITENCIÁRIO');
  GLOBAL_ORGAO := ArqIni.ReadString('SISAP', 'ORGAO', 'GOVERNO DO ESTADO DE MATO GROSSO DO SUL');
  GLOBAL_DEPARTAMENTO := ArqIni.ReadString('SISAP', 'DEPARTAMENTO', 'SECRETARIA DE ESTADO DE JUSTIÇA E SEGURANÇA PÚBLICA');
  GLOBAL_DIRETORIA := ArqIni.ReadString('SISAP', 'DIRETORIA', 'AGÊNCIA ESTADUAL DE ADMINISTRAÇÃO DO SISTEMA PENITENCIÁRIO');

  GLOBAL_CONEXAO_PROCED := ArqIni.ReadString('SISAP', 'GLOBAL_CONEXAO_PROCED',
    'Provider=SQLOLEDB.1;Password=teste;Persist Security Info=True;User ID=sesipe;Initial Catalog=PROCED;Data Source=10.91.194.10');
  GLOBAL_ACESSA_PROCED := ArqIni.ReadString('SISAP', 'GLOBAL_ACESSA_PROCED', '');

  GLOBAL_WEBBROWSER := ArqIni.ReadString('SISAP', 'GLOBAL_WEBBROWSER', 'http://spf.mj.gov.br');
  GLOBAL_SPACECOM := ArqIni.ReadString('SISAP', 'GLOBAL_SPACECOM', '');

  AISSE3_PATH_EXE := ArqIni.ReadString('SISAP', 'AISSE3_PATH_EXE', 'C:\Program Files\AbsInt\aiSee3\bin\aisee3.exe');

  GLOBAL_PASTA_DF := ArqIni.ReadString('SISAP', 'GLOBAL_PASTA_DF', '');
  GLOBAL_PASTA_MA := ArqIni.ReadString('SISAP', 'GLOBAL_PASTA_MA', '');
  GLOBAL_PASTA_SPF := ArqIni.ReadString('SISAP', 'GLOBAL_PASTA_SPF', '');
  GLOBAL_PASTA_MT := ArqIni.ReadString('SISAP', 'GLOBAL_PASTA_MT', '');
  GLOBAL_PASTA_MS := ArqIni.ReadString('SISAP', 'GLOBAL_PASTA_MS', '');
  GLOBAL_PASTA_PB := ArqIni.ReadString('SISAP', 'GLOBAL_PASTA_PB', '');
  GLOBAL_UF := ArqIni.ReadString('SISAP', 'GLOBAL_UF', 'SPF');
  CAMINHO_BIOMETRIA := ArqIni.ReadString('SISAP', 'CAMINHO_BIOMETRIA', '');

  if (GLOBAL_UF = 'SPF') and (GLOBAL_PASTA_SPF = '') then
  begin
    GLOBAL_PASTA_SPF := GLOBAL_PATCH_SISTEMA;
  end;

  if (GLOBAL_UF = 'DF') and (GLOBAL_PASTA_DF = '') then
  begin
    GLOBAL_PASTA_DF := GLOBAL_PATCH_SISTEMA;
  end;

  if (GLOBAL_UF = 'MA') and (GLOBAL_PASTA_MA = '') then
  begin
    GLOBAL_PASTA_MA := GLOBAL_PATCH_SISTEMA;
  end;

  if (GLOBAL_UF = 'MT') and (GLOBAL_PASTA_MT = '') then
  begin
    GLOBAL_PASTA_MT := GLOBAL_PATCH_SISTEMA;
  end;

  if (GLOBAL_UF = 'MS') and (GLOBAL_PASTA_MS = '') then
  begin
    GLOBAL_PASTA_MS := GLOBAL_PATCH_SISTEMA;
  end;

  if (GLOBAL_UF = 'PB') and (GLOBAL_PASTA_PB = '') then
  begin
    GLOBAL_PASTA_PB := GLOBAL_PATCH_SISTEMA;
  end;

  Atualizar_Campos_Tabelas_Banco_Dados := ArqIni.ReadString('SISAP', 'Atualizar_Campos_Tabelas_Banco_Dados', 'S');

  //skin_padrao := ArqIni.ReadString('SISAP', 'SKIN', 'mxskin27.skn');
 { $IFDEF WIN32
      //  WinExec(PAnsiChar(TPath.Combine(TPath.GetLibraryPath, 'SIAPENADMIN.EXE')),SW_SHOWNORMAL);
      ShellExecute(0, 'open', Pchar(TPath.Combine(TPath.GetLibraryPath, 'SIAPENADMIN.exe')), nil, nil, SW_SHOWNORMAL);
 }
  while SQLConnect.Connected do
  begin
    try
      SQLConnect.Connected := false;
    except
    end;
  end;

  SQLConnect.Params.Clear;
  SQLConnect.LoadParamsFromIniFile(DB_INIFILE);
  SQLConnect.LibraryName := DB_LIBRARYNAME;
  SQLConnect.VendorLib := DB_VENDORNAME;


    SQLConnect.Params.Values['DriverID'] := 'Firebird';

    //SQLConnect.Params.Values['GetDriverFunc'] := 'getSQLDriverINTERBASE';




  numero_tentativa := 0;
  while not SQLConnect.Connected do
  begin
    try
      SQLConnect.Connected := True;
    except
      showmessage('Falha ao abrir banco de dados.');
      SQLConnect.Connected := false;
      SQLConnect.Params.Clear;
      SQLConnect.LoadParamsFromIniFile(DB_INIFILE);
      SQLConnect.LibraryName := DB_LIBRARYNAME;
      SQLConnect.VendorLib := DB_VENDORNAME;

      SQLConnect.Params.Values['DriverID'] := 'Firebird';

      SQLConnect.Params.Values['GetDriverFunc'] := 'getSQLDriverINTERBASE';
    end;
    inc(numero_tentativa);
    if numero_tentativa > 3 then
    begin
      break;
      application.Terminate;
    end;
  end;

  if not (VISUALIZA_OUTRAS_UP = 'S') then
    SqlUP.SQL.Text := 'SELECT * FROM UNIDADE_PENAL WHERE ID_UP = ' + inttostr(GLOBAL_ID_UP) + ' ORDER BY NOME_UP '
  else
    SqlUP.SQL.Text := 'SELECT * FROM UNIDADE_PENAL ORDER BY NOME_UP ';

  DsUP.DataSet.Close;
  DsUP.DataSet.Open;
  
  SqlPavilhao.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;
  SqlGaleria.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;
  SqlSolario.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;
  SqlCela.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;
  SqlInterno.ParamByName('ID_UP').AsInteger := GLOBAL_ID_UP;

  if Atualizar_Campos_Tabelas_Banco_Dados = 'S' then
  begin
   {
    VerificaExisteField('INTERNO', 'ID_ME', 'DM_VARCHAR100');
    VerificaExisteField('FUNCIONARIO', 'PERMISSAO_MONITORAMENTO', 'PERMISSAO');

    VerificaExisteField('PADRAO', 'NUMERO_CARTEIRA_ID_SISTEMA', 'DM_VARCHAR1');
    VerificaExisteField('FUNCIONARIO', 'PERMISSAO_OCORRENCIA', 'PERMISSAO');
//  Toda vez que criar um campo na tabela, colocar essa função para criar o campo automaticamente nas bases onde ele não exista.
    VerificaExisteField('FUNCIONARIO', 'PERMISSAO_SAIDAO_CADASTRO', 'PERMISSAO');

    VerificaExisteField('FACCAO', 'SIGLA', 'DM_VARCHAR100');
    VerificaExisteField('FACCAO', 'COR', 'DM_VARCHAR100');
    VerificaExisteField('BIOMETRIA', 'ID_VISITANTE', 'DM_INTEGER');

    //<<Inicio>>ALEXANDRE 26/10/2012
    VerificaExisteField('INTERNO', 'DIGITAL_CHAVE', 'VARCHAR(2000)');
    VerificaExisteField('INTERNO', 'DIGITAL_IMAGEM', 'DM_FOTO');
    //<<Fim>>ALEXANDRE 26/10/2012

    //<<inicio>>vladmir 14/11/2012
    VerificaExisteField('LIVRO', 'AUTOR', 'DM_VARCHAR200');
    VerificaExisteField('LIVRO', 'CDD', 'DM_VARCHAR200');
    VerificaExisteField('LIVRO', 'GENERO', 'DM_VARCHAR200');
    VerificaExisteField('LIVRO', 'NUMERO_VOLUMES', 'DM_INTEGER');
    VerificaExisteField('LIVRO', 'NUMERO_EXEMPLARES', 'DM_INTEGER');
    VerificaExisteField('LIVRO', 'LIVRO_REVISTA', 'DM_VARCHAR100');
    VerificaExisteField('LIVRO', 'CODIGO_LIVRO', 'DM_VARCHAR100');
    VerificaExisteField('LIVRO', 'UTILIZADO', 'DM_INTEGER');
    verificaExisteField('LIVRO', 'ID_UP', 'DM_INTEGER');
    VerificaExisteField('LIVRO_INTERNO', 'DATA_ENTREGA', 'DM_DATA');
    //<<Fim>>vladmir 14/11/2012

    //<<inicio>>vladmir 20/11/2012
    VerificaExisteField('INTERNO', 'ID_PRESIDIO_ORIGEM', 'DM_INTEGER');
    VerificaExisteField('INTERNO', 'ID_SOLICITANTE_VAGA', 'DM_INTEGER');
    //<<Fim>>vladmir 20/11/2012

    //<<inicio>>wagner 20/11/2012
    VerificaExisteField('PADRAO', 'RGI_AUTOMATICO', 'DM_VARCHAR1');
    //<<Fim>>wagner 20/11/2012

    //<<inicio>>vladmir 28/11/2012
    VerificaExisteField('VINC_FALTA_DISCIPLINAR', 'DATA_INST_PORTARIA', 'DM_DATA');
    VerificaExisteField('VINC_FALTA_DISCIPLINAR', 'PREVENTIVO', 'DM_VARCHAR1');
    VerificaExisteField('VINC_FALTA_DISCIPLINAR', 'TIPO_SANCAO', 'DM_VARCHAR100');
    VerificaExisteField('VINC_FALTA_DISCIPLINAR', 'DATA_INICIO_ISOLAMENTO', 'DM_DATA');
    VerificaExisteField('VINC_FALTA_DISCIPLINAR', 'DATA_FIM_ISOLAMENTO', 'DM_DATA');
    VerificaExisteField('VINC_FALTA_DISCIPLINAR', 'QUANTIDADE_DIAS_ISOLAMENTO', 'DM_INTEGER');
    VerificaExisteField('VINC_FALTA_DISCIPLINAR', 'RECURSO', 'DM_VARCHAR1');
    VerificaExisteField('VINC_FALTA_DISCIPLINAR', 'DECISAO_RECURSO', 'DM_VARCHAR100');
    VerificaExisteField('VINC_FALTA_DISCIPLINAR', 'CLASSIFICACAO_CONDUTA', 'DM_VARCHAR100');
    VerificaExisteField('VINC_FALTA_DISCIPLINAR', 'HOMOLOGACAO', 'DM_VARCHAR1');
    //<<Fim>>vladmir 28/11/2012

    //<<inicio>>wagner 29/11/2012
    VerificaExisteField('INTERNO', 'TOSSE_SEMANA', 'DM_VARCHAR1');
    VerificaExisteField('INTERNO', 'MANCHA_CORPO', 'DM_VARCHAR1');
    VerificaExisteField('INTERNO', 'DOENCA_VENEREA', 'DM_VARCHAR1');
    VerificaExisteField('INTERNO', 'HEPATITE', 'DM_VARCHAR1');
    VerificaExisteField('INTERNO', 'PRESSAO_ALTA', 'DM_VARCHAR1');
    VerificaExisteField('INTERNO', 'DIABETE', 'DM_VARCHAR1');
    VerificaExisteField('INTERNO', 'HIV', 'DM_VARCHAR1');
    //<<Fim>>wagner 29/11/2012

    //<<inicio>>wagner 30/11/2012
    VerificaExisteField('INTELIGENCIA', 'DECISAO_PARECER', 'DM_VARCHAR10');
    //<<Fim>>wagner 30/11/2012

    //<<inicio>>Diogo 05/12/2012
    VerificaExisteField('FUNCIONARIO', 'PERMISSAO_CONSELHODISCIPLINAR', 'PERMISSAO');
    VerificaExisteField('FUNCIONARIO', 'PERMISSAO_TRANSFERENCIAINTERNO', 'PERMISSAO');
    VerificaExisteField('FUNCIONARIO', 'PERMISSAO_MUDANCACELA', 'PERMISSAO');
    VerificaExisteField('FUNCIONARIO', 'PERMISSAO_SAIDAO', 'PERMISSAO');
    VerificaExisteField('FUNCIONARIO', 'PERMISSAO_CIRCULACAOINTERNO', 'PERMISSAO');
    VerificaExisteField('FUNCIONARIO', 'PERMISSAO_MOVIMENTOSEMIABERTO', 'PERMISSAO');
    VerificaExisteField('FUNCIONARIO', 'PERMISSAO_ENTRADAVISITANTE', 'DM_VARCHAR1');
    VerificaExisteField('FUNCIONARIO', 'PERMISSAO_FUNCIONARIO', 'PERMISSAO');
    VerificaExisteField('FUNCIONARIO', 'PERMISSAO_FUNCAOFUNCIONARIO', 'PERMISSAO');
    VerificaExisteField('FUNCIONARIO', 'PERMISSAO_UNIDADEPENAL', 'PERMISSAO');
    VerificaExisteField('FUNCIONARIO', 'PERMISSAO_HORARIOFUNCIONARIO', 'PERMISSAO');
    VerificaExisteField('FUNCIONARIO', 'PERMISSAO_PADRAOSISTEMA', 'PERMISSAO');
    VerificaExisteField('FUNCIONARIO', 'PERMISSAO_EQUIPE', 'PERMISSAO');
    VerificaExisteField('FUNCIONARIO', 'PERMISSAO_LOCALPOSTOTRABALHO', 'PERMISSAO');
    VerificaExisteField('FUNCIONARIO', 'PERMISSAO_AGENTEPOREQUIPE', 'PERMISSAO');
    VerificaExisteField('FUNCIONARIO', 'PERMISSAO_REGRAVISITACAO', 'PERMISSAO');
    VerificaExisteField('FUNCIONARIO', 'PERMISSAO_PERFILUSUARIO', 'PERMISSAO');
    VerificaExisteField('FUNCIONARIO', 'DEFINE_PERFIL_USUARIO', 'DM_VARCHAR1');
    VerificaExisteField('FUNCIONARIO', 'CONCEDE_PERMISSAO_INDIVIDUAL', 'DM_VARCHAR1');
    VerificaExisteField('FUNCIONARIO', 'ID_PERFIL_USUARIO', 'DM_INTEGER');
    //<<Fim>>Diogo 05/12/2012

    //<<inicio>>Alexandre 16/04/2013
    VerificaExisteField('MOVIMENTO_SEMIABERTO', 'ID_FUNCIONARIO_SAIDA', 'DM_INTEGER');
    VerificaExisteField('MOVIMENTO_SEMIABERTO', 'ID_FUNCIONARIO_ENTRADA', 'DM_INTEGER');
    VerificaExisteField('MOVIMENTO_SEMIABERTO', 'FORA_HORA_SAIDA', 'DM_VARCHAR1');
    VerificaExisteField('MOVIMENTO_SEMIABERTO', 'FORA_HORA_ENTRADA', 'DM_VARCHAR1');
    VerificaExisteField('MOVIMENTO_SEMIABERTO', 'JUSTIFICA_HORA_SAIDA', 'DM_VARCHAR100');
    VerificaExisteField('MOVIMENTO_SEMIABERTO', 'JUSTIFICA_HORA_ENTRADA', 'DM_VARCHAR100');
    VerificaExisteField('MOVIMENTO_SEMIABERTO', 'IDSETOR_TRABALHO', 'DM_INTEGER');
    VerificaExisteField('INTERNO', 'HORARIO_SAIDA_SEG', 'DM_HORA');
    VerificaExisteField('INTERNO', 'HORARIO_SAIDA_TER', 'DM_HORA');
    VerificaExisteField('INTERNO', 'HORARIO_SAIDA_QUA', 'DM_HORA');
    VerificaExisteField('INTERNO', 'HORARIO_SAIDA_QUI', 'DM_HORA');
    VerificaExisteField('INTERNO', 'HORARIO_SAIDA_SEX', 'DM_HORA');
    VerificaExisteField('INTERNO', 'HORARIO_ENTRADA_SEG', 'DM_HORA');
    VerificaExisteField('INTERNO', 'HORARIO_ENTRADA_TER', 'DM_HORA');
    VerificaExisteField('INTERNO', 'HORARIO_ENTRADA_QUA', 'DM_HORA');
    VerificaExisteField('INTERNO', 'HORARIO_ENTRADA_QUI', 'DM_HORA');
    VerificaExisteField('INTERNO', 'HORARIO_ENTRADA_SEX', 'DM_HORA');
    VerificaExisteField('INTERNO', 'BLOQUEIO_TRABALHO', 'DM_VARCHAR200');
    //<<Fim>>Alexandre 16/04/2013

    //<<inicio>>Diogo 22/04/2013
    VerificaExisteField('CONTROLE_PERMANENCIA', 'CONFLITO_COMPETENCIA', 'DM_VARCHAR1');
    VerificaExisteField('CONTROLE_PERMANENCIA', 'NUM_CONFLITO_COMPETENCIA', 'DM_VARCHAR100');
    VerificaExisteField('CONTROLE_PERMANENCIA', 'OBS_CONFLITO_COMPETENCIA', 'DM_VARCHAR8192');
    VerificaExisteField('CONTROLE_PERMANENCIA', 'CONFLITO_STATUS', 'DM_VARCHAR1');
    //<<Fim>>Diogo 22/04/2013
    }
    ArqIni.WriteString('SISAP', 'Atualizar_Campos_Tabelas_Banco_Dados', 'N');

  end;

  SQLConnect.Connected := false;
  SQLConnect.Connected := True;

  //VALIDAÇÕES PARA MUDAR NA TELA PRINCIPAL
  if GLOBAL_ID_FUNCIONARIO <= 0 then
  begin
    Sqlservidor.sql.text := 'select * from funcionario left join perfil_usuario '
      + ' on (perfil_usuario.id_perfil_usuario = funcionario.id_perfil_usuario) '
      + ' where login=' + Qs(LOGIN_CONECTADO)
      + ' and SENHA = ' + QS(Senha(GLOBAL_SENHA_USUARIO));
    Dsservidor.dataset.close;
    Dsservidor.dataset.open;

    if not Dsservidor.DataSet.IsEmpty then
    begin
      GLOBAL_ID_UP := Dsservidor.DataSet.FieldByName('ID_UP').AsInteger;
      GLOBAL_ID_FUNCIONARIO := Dsservidor.DataSet.FieldByName('ID_FUNCIONARIO').AsInteger;
      GLOBAL_IDPOSTO_TRABALHO := Dsservidor.DataSet.FieldByName('IDPOSTO_TRABALHO').AsInteger;

      //Permissões estilo "CEDIR". É utilizado a função MesclarPermissões(Permissao1,Permissao2,TipoPermissao)
      //para juntar as permissões específicas do usuário com as permissões do perfil de usuário.
      //TipoPermissao = 'CEDIR' ou 'CEDIRP' ou 'SN' ou 'AI'



       PERMISSAO_CONFERE :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_CONFERE').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_CONFERE_1').AsString, 'CEDIR');

      PERMISSAO_VISITANTE :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_VISITANTE').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_VISITANTE_1').AsString, 'CEDIR');

      PERMISSAO_TRABALHO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_SETORTRABALHO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_SETORTRABALHO_1').AsString, 'CEDIR');

      PERMISSAO_CADASTRO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_CADASTRO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_CADASTRO_1').AsString, 'CEDIR');

      PERMISSAO_EDUCACAO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_SETOREDUCACAO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_SETOREDUCACAO_1').AsString, 'CEDIR');

      PERMISSAO_PSICOSSOCIAL :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_PSICOSSOCIAL').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_PSICOSSOCIAL_1').AsString, 'CEDIR');

      PERMISSAO_JURIDICA :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_JURIDICA').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_JURIDICA_1').AsString, 'CEDIR');

      PERMISSAO_DISCIPLINA :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_DISCIPLINA').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_DISCIPLINA_1').AsString, 'CEDIR');

      PERMISSAO_INTELIGENCIA :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_INTELIGENCIA').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_INTELIGENCIA_1').AsString, 'CEDIR');

      PERMISSAO_ENFERMAGEM :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_ENFERMAGEM').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_ENFERMAGEM_1').AsString, 'CEDIR');

      PERMISSAO_FARMACIA :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_FARMACIA').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_FARMACIA_1').AsString, 'CEDIR');

      PERMISSAO_CLINICAMEDICA :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_CLINICAMEDICA').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_CLINICAMEDICA_1').AsString, 'CEDIR');

      PERMISSAO_PSICOLOGIA :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_PSICOLOGIA').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_PSICOLOGIA_1').AsString, 'CEDIR');

      PERMISSAO_PSIQUIATRIA :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_PSIQUIATRIA').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_PSIQUIATRIA_1').AsString, 'CEDIR');

      PERMISSAO_SAUDE :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_SAUDE').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_SAUDE_1').AsString, 'CEDIR');

      PERMISSAO_TERAPIAOCUPACIONAL :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_TERAPIAOCUPACIONAL').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_TERAPIAOCUPACIONAL_1').AsString, 'CEDIR');

      PERMISSAO_ODONTOLOGIA :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_ODONTOLOGIA').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_ODONTOLOGIA_1').AsString, 'CEDIR');

      PERMISSAO_PEDAGOGIA :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_PEDAGOGIA').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_PEDAGOGIA_1').AsString, 'CEDIR');

      PERMISSAO_SERVICOSOCIAL :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_SERVICOSOCIAL').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_SERVICOSOCIAL_1').AsString, 'CEDIR');

      PERMISSAO_ARMAS :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_ARMAS').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_ARMAS_1').AsString, 'CEDIR');

      PERMISSAO_MONITORAMENTO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_MONITORAMENTO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_MONITORAMENTO_1').AsString, 'CEDIR');

      PERMISSAO_OCORRENCIA :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_OCORRENCIA').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_OCORRENCIA_1').AsString, 'CEDIRP');

      PERMISSAO_CONSELHODISCIPLINAR :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_CONSELHODISCIPLINAR').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_CONSELHODISCIPLINAR_1').AsString, 'CEDIR');

      PERMISSAO_TRANSFERENCIAINTERNO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_TRANSFERENCIAINTERNO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_TRANSFERENCIAINTERNO_1').AsString, 'CEDIR');

      PERMISSAO_MUDANCACELA :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_MUDANCACELA').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_MUDANCACELA_1').AsString, 'CEDIR');

      PERMISSAO_SAIDAO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_SAIDAO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_SAIDAO_1').AsString, 'CEDIR');

      PERMISSAO_SAIDAO_CADASTRO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_SAIDAO_CADASTRO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_SAIDAO_CADASTRO_1').AsString, 'CEDIR');

      PERMISSAO_CIRCULACAOINTERNO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_CIRCULACAOINTERNO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_CIRCULACAOINTERNO_1').AsString, 'CEDIR');

      PERMISSAO_MOVIMENTOSEMIABERTO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_MOVIMENTOSEMIABERTO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_MOVIMENTOSEMIABERTO_1').AsString, 'CEDIR');

      PERMISSAO_FUNCIONARIO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_FUNCIONARIO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_FUNCIONARIO_1').AsString, 'CEDIR');

      PERMISSAO_FUNCAOFUNCIONARIO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_FUNCAOFUNCIONARIO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_FUNCAOFUNCIONARIO_1').AsString, 'CEDIR');

      PERMISSAO_UNIDADEPENAL :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_UNIDADEPENAL').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_UNIDADEPENAL_1').AsString, 'CEDIR');

      PERMISSAO_HORARIOFUNCIONARIO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_HORARIOFUNCIONARIO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_HORARIOFUNCIONARIO_1').AsString, 'CEDIR');

      PERMISSAO_PADRAOSISTEMA :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_PADRAOSISTEMA').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_PADRAOSISTEMA_1').AsString, 'CEDIR');

      PERMISSAO_EQUIPE :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_EQUIPE').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_EQUIPE_1').AsString, 'CEDIR');

      PERMISSAO_LOCALPOSTOTRABALHO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_LOCALPOSTOTRABALHO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_LOCALPOSTOTRABALHO_1').AsString, 'CEDIR');

      PERMISSAO_AGENTEPOREQUIPE :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_AGENTEPOREQUIPE').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_AGENTEPOREQUIPE_1').AsString, 'CEDIR');

      PERMISSAO_REGRAVISITACAO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_REGRAVISITACAO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_REGRAVISITACAO_1').AsString, 'CEDIR');

      PERMISSAO_PERFILUSUARIO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_PERFILUSUARIO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_PERFILUSUARIO_1').AsString, 'CEDIR');

      PERMISSAO_ADVOGADO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_ADVOGADO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_ADVOGADO_1').AsString, 'CEDIR');

      PERMISSAO_VISITANTETRAFICO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_VISITANTETRAFICO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_VISITANTETRAFICO_1').AsString, 'CEDIR');

      PERMISSAO_FACCAO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_FACCAO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_FACCAO_1').AsString, 'CEDIR');

      PERMISSAO_CTC :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_CTC').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_CTC_1').AsString, 'CEDIR');

      PERMISSAO_CORRESPONDENCIA :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_CORRESPONDENCIA').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_CORRESPONDENCIA_1').AsString, 'CEDIR');

      PERMISSAO_AGENDAATENDIMENTO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_AGENDAATENDIMENTO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_AGENDAATENDIMENTO_1').AsString, 'CEDIR');

      PERMISSAO_LIVROREVISTA :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_LIVROREVISTA').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_LIVROREVISTA_1').AsString, 'CEDIR');

      PERMISSAO_PAVILHAO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_PAVILHAO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_PAVILHAO_1').AsString, 'CEDIR');

      PERMISSAO_GALERIA :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_GALERIA').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_GALERIA_1').AsString, 'CEDIR');

      PERMISSAO_SOLARIO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_SOLARIO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_SOLARIO_1').AsString, 'CEDIR');

      PERMISSAO_CELA :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_CELA').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_CELA_1').AsString, 'CEDIR');

      PERMISSAO_CONDICAOINTERNO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_CONDICAOINTERNO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_CONDICAOINTERNO_1').AsString, 'CEDIR');

      PERMISSAO_CIDADE :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_CIDADE').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_CIDADE_1').AsString, 'CEDIR');

      PERMISSAO_RACA :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_RACA').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_RACA_1').AsString, 'CEDIR');

      PERMISSAO_ESCOLARIDADE :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_ESCOLARIDADE').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_ESCOLARIDADE_1').AsString, 'CEDIR');

      PERMISSAO_NACIONALIDADE :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_NACIONALIDADE').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_NACIONALIDADE_1').AsString, 'CEDIR');

      PERMISSAO_PROCEDENCIA :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_PROCEDENCIA').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_PROCEDENCIA_1').AsString, 'CEDIR');

      PERMISSAO_DESTINO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_DESTINO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_DESTINO_1').AsString, 'CEDIR');

      PERMISSAO_FORNECEDOR :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_FORNECEDOR').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_FORNECEDOR_1').AsString, 'CEDIR');

      PERMISSAO_PROFISSAO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_PROFISSAO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_PROFISSAO_1').AsString, 'CEDIR');

      PERMISSAO_FALTADISCIPLINAR :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_FALTADISCIPLINAR').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_FALTADISCIPLINAR_1').AsString, 'CEDIR');

      PERMISSAO_SERIEFASEESTUDO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_SERIEFASEESTUDO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_SERIEFASEESTUDO_1').AsString, 'CEDIR');

      PERMISSAO_PROCESSOCONDENACAO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_PROCESSOCONDENACAO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_PROCESSOCONDENACAO_1').AsString, 'CEDIR');

      PERMISSAO_DETRACAO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_DETRACAO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_DETRACAO_1').AsString, 'CEDIR');

      PERMISSAO_INTERRUPCAO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_INTERRUPCAO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_INTERRUPCAO_1').AsString, 'CEDIR');

      PERMISSAO_REMICAO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_REMICAO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_REMICAO_1').AsString, 'CEDIR');

      PERMISSAO_ARTIGOPENAL :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_ARTIGOPENAL').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_ARTIGOPENAL_1').AsString, 'CEDIR');

      PERMISSAO_VARAEXECUCAO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_VARAEXECUCAO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_VARAEXECUCAO_1').AsString, 'CEDIR');

      PERMISSAO_REMEDIO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_REMEDIO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_REMEDIO_1').AsString, 'CEDIR');

      PERMISSAO_FUNCAOINTERNO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_FUNCAOINTERNO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_FUNCAOINTERNO_1').AsString, 'CEDIR');

      PERMISSAO_CALCULOTRABALHO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_CALCULOTRABALHO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_CALCULOTRABALHO_1').AsString, 'CEDIR');

      PERMISSAO_REMICAOTRABALHO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_REMICAOTRABALHO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_REMICAOTRABALHO_1').AsString, 'CEDIR');

      PERMISSAO_ROUPAS :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_ROUPAS').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_ROUPAS_1').AsString, 'CEDIR');

      PERMISSAO_GRAUPARENTESCO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_GRAUPARENTESCO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_GRAUPARENTESCO_1').AsString, 'CEDIR');

      PERMISSAO_TIPOCONTATO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_TIPOCONTATO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_TIPOCONTATO_1').AsString, 'CEDIR');

      PERMISSAO_ASSUNTO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_ASSUNTO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_ASSUNTO_1').AsString, 'CEDIR');

      PERMISSAO_SITUACAO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_SITUACAO').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_SITUACAO_1').AsString, 'CEDIR');

      PERMISSAO_SETORTRABALHOCAD :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_SETORTRABALHOCAD').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_SETORTRABALHOCAD_1').AsString, 'CEDIR');

      PERMISSAO_EVENTOS :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_EVENTOS').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_EVENTOS_1').AsString, 'CEDIR');

      PERMISSAO_SUBEVENTOS :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_SUBEVENTOS').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_SUBEVENTOS_1').AsString, 'CEDIR');

      PERMISSAO_MONITORAMENTOEVENTOS :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_MONITORAMENTOEVENTOS').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_MONITORAMENTOEVENTOS_1').AsString, 'CEDIR');

      //Permissões estilo SIM ou NAO. É utilizado a função MesclarPermissões(Permissao1,Permissao2,TipoPermissao)
      //para juntar as permissões específicas do usuário com as permissões do perfil de usuário.
      //TipoPermissao = 'CEDIR' ou 'CEDIRP' ou 'SN' ou 'AI'
      PERMISSAO_ENTRADAVISITANTE :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('PERMISSAO_ENTRADAVISITANTE').AsString,
        Dsservidor.DataSet.FieldByName('PERMISSAO_ENTRADAVISITANTE_1').AsString, 'SN');

      VISUALIZA_OUTRAS_UP :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('VISUALIZA_OUTRAS_UP').AsString,
        Dsservidor.DataSet.FieldByName('VISUALIZA_OUTRAS_UP_1').AsString, 'SN');

      DEFINE_PERFIL_USUARIO :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('DEFINE_PERFIL_USUARIO').AsString,
        Dsservidor.DataSet.FieldByName('DEFINE_PERFIL_USUARIO_1').AsString, 'SN');

      CONCEDE_PERMISSAO_INDIVIDUAL :=
        MesclarPermissoes(Dsservidor.DataSet.FieldByName('CONCEDE_PERMISSAO_INDIVIDUAL').AsString,
        Dsservidor.DataSet.FieldByName('CONCEDE_PERMISSAO_INDIVIDUAL_1').AsString, 'SN');

      GLOBAL_NOME_FUNCIONARIO_LOGADO := Dsservidor.DataSet.FieldByName('NOME_FUNCIONARIO').AsString;
      NOME_PERFILUSUARIO_LOGADO := Dsservidor.DataSet.FieldByName('PERFIL').AsString;

    end
    else
    begin
      if Assigned(FrmModuloPrincipal) then
      begin
        Application.MessageBox('Login e senha não reconhecidos neste banco de dados, lançamentos não serão salvos.',
          'Apenas consulta!!!', MB_OK + MB_ICONEXCLAMATION);
      end;
    end;
  end;

  if GLOBAL_ID_FUNCIONARIO > 0 then
  begin
    if GLOBAL_IDCONEXAO <= 0 then
    begin
      IniciaTransMovimento;
      try
        GLOBAL_IDCONEXAO := DBGenerator('IDCONEXAO');
        SQLConnect.ExecuteDirect('insert into conexao (idconexao, id_funcioanrio, data_hora_entrada, tela_momento) '
          + ' values (' + IntToStr(GLOBAL_IDCONEXAO) + ', ' + IntToStr(GLOBAL_ID_FUNCIONARIO) + ', current_timestamp, ' + qs('Tela de Login') + ')');
        SQLConnect.ExecuteDirect('EXECUTE PROCEDURE SET_CONTEXT_CONEXAO(' + inttostr(GLOBAL_IDCONEXAO) + ')');
      except
      end;
      FinalizaTransMovimento;
    end;
  end;

end;

procedure TDM.SQLConnectBeforeDisconnect(Sender: TObject);
begin
  if GLOBAL_IDCONEXAO > 0 then
  begin

    IniciaTransMovimento;
    try
      DM.SQLConnect.ExecuteDirect('update conexao set data_hora_saida=current_timestamp, tela_momento = ' + qs('Saiu do Sistema.')
        + ' where idconexao = ' + IntToStr(GLOBAL_IDCONEXAO));
    except
    end;
    FinalizaTransMovimento;
    GLOBAL_IDCONEXAO := 0;

  end;
end;

end.

