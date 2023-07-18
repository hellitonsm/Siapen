object DM: TDM
  OldCreateOrder = True
  OnCreate = FormCreate
  Height = 777
  Width = 1125
  object SQLConnect: TSQLConnection
    ConnectionName = 'SISAP'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXInterBase'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver280.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXInterbaseMetaDataCommandFactory,DbxInt' +
        'erBaseDriver280.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXInterbaseMetaDataCommand' +
        'Factory,Borland.Data.DbxInterBaseDriver,Version=24.0.0.0,Culture' +
        '=neutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlib.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=libgds.dylib'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=172.18.15.251:siapen'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=masterkey'
      'RoleName=RoleName'
      'ServerCharSet='
      'SQLDialect=3'
      'IsolationLevel=ReadCommitted'
      'User_Name=sysdba'
      'WaitOnLocks=True'
      'Trim Char=False'
      'Charset=WIN1252')
    BeforeDisconnect = SQLConnectBeforeDisconnect
    Left = 21
    Top = 12
  end
  object CdsCela: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCela'
    Left = 72
    Top = 224
  end
  object DspCela: TDataSetProvider
    DataSet = SqlCela
    Left = 44
    Top = 224
  end
  object SqlCela: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_UP'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM CELA'
      'WHERE EXISTS (SELECT NULL'
      'FROM PAVILHAO'
      'WHERE PAVILHAO.id_pavilhao=CELA.idpavilhao'
      'AND PAVILHAO.id_up = :ID_UP)')
    SQLConnection = SQLConnect
    Left = 16
    Top = 224
  end
  object DsCela: TDataSource
    DataSet = CdsCela
    Left = 100
    Top = 224
  end
  object SqlProfissao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * '
      'FROM PROFISSAO'
      'order by profissao')
    SQLConnection = SQLConnect
    Left = 384
    Top = 120
  end
  object DspProfissao: TDataSetProvider
    DataSet = SqlProfissao
    Left = 412
    Top = 120
  end
  object CdsProfissao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspProfissao'
    Left = 440
    Top = 120
  end
  object DsProfissao: TDataSource
    DataSet = CdsProfissao
    Left = 468
    Top = 120
  end
  object SqlProcedencia: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ID_PROCEDENCIA,'
      
        'IIF(CAPITAL='#39'S'#39',PROEDENCIA||'#39' - CAPITAL'#39',PROEDENCIA||'#39' - INTERIO' +
        'R'#39') AS PROCEDENCIA '
      'FROM PROCEDENCIA'
      'order by proedencia')
    SQLConnection = SQLConnect
    Left = 16
    Top = 320
  end
  object DspProcedencia: TDataSetProvider
    DataSet = SqlProcedencia
    Left = 44
    Top = 320
  end
  object CdsProcedencia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspProcedencia'
    Left = 72
    Top = 320
  end
  object DsProcedencia: TDataSource
    DataSet = CdsProcedencia
    Left = 100
    Top = 320
  end
  object SqlGaleria: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_UP'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM GALERIA'
      
        'WHERE EXISTS (SELECT NULL FROM PAVILHAO WHERE PAVILHAO.id_pavilh' +
        'ao=galeria.idpavilhao'
      'AND PAVILHAO.id_up = :ID_UP)'
      'ORDER BY GALERIA')
    SQLConnection = SQLConnect
    Left = 16
    Top = 114
  end
  object DspGaleria: TDataSetProvider
    DataSet = SqlGaleria
    Left = 44
    Top = 114
  end
  object CdsGaleria: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspGaleria'
    Left = 72
    Top = 114
  end
  object DsGaleria: TDataSource
    DataSet = CdsGaleria
    Left = 100
    Top = 114
  end
  object SqlPavilhao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_UP'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM PAVILHAO '
      'WHERE PAVILHAO.id_up = :ID_UP'
      'ORDER BY PAVILHAO')
    SQLConnection = SQLConnect
    Left = 16
    Top = 64
  end
  object DspPavilhao: TDataSetProvider
    DataSet = SqlPavilhao
    Left = 44
    Top = 64
  end
  object CdsPavilhao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPavilhao'
    Left = 72
    Top = 64
  end
  object DsPavilhao: TDataSource
    DataSet = CdsPavilhao
    Left = 100
    Top = 64
  end
  object SqlSolario: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_UP'
        ParamType = ptInput
        Value = 11
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM SOLARIO'
      'WHERE EXISTS (SELECT NULL'
      'FROM PAVILHAO'
      'WHERE PAVILHAO.id_pavilhao=solario.idpavilhao'
      'AND PAVILHAO.id_up = :ID_UP)')
    SQLConnection = SQLConnect
    Left = 16
    Top = 168
  end
  object DspSolario: TDataSetProvider
    DataSet = SqlSolario
    Left = 44
    Top = 168
  end
  object CdsSolario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspSolario'
    Left = 72
    Top = 168
  end
  object DsSolario: TDataSource
    DataSet = CdsSolario
    Left = 100
    Top = 168
  end
  object SQLCidade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ID_CIDADE, CIDADE ||'#39' - '#39'|| UF AS CIDADE'
      'FROM CIDADE'
      'where trim(coalesce(CIDADE ||'#39' - '#39'|| UF,'#39#39'))<>'#39#39
      'ORDER BY CIDADE ||'#39' - '#39'|| UF')
    SQLConnection = SQLConnect
    Left = 192
    Top = 64
  end
  object DSPCIDADE: TDataSetProvider
    DataSet = SQLCidade
    Left = 220
    Top = 64
  end
  object CDSCIDADE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCIDADE'
    Left = 248
    Top = 64
  end
  object DSCIDADE: TDataSource
    DataSet = CDSCIDADE
    Left = 276
    Top = 64
  end
  object SQLNACIONALIDADE: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * '
      'FROM NACIONALIDADE'
      'ORDER BY NACIONALIDADE')
    SQLConnection = SQLConnect
    Left = 192
    Top = 112
  end
  object DSPNACIONALIDADE: TDataSetProvider
    DataSet = SQLNACIONALIDADE
    Left = 220
    Top = 112
  end
  object CDSNACIONALIDADE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPNACIONALIDADE'
    Left = 248
    Top = 112
  end
  object DSNACIONALIDADE: TDataSource
    DataSet = CDSNACIONALIDADE
    Left = 276
    Top = 112
  end
  object SQLRACA: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM RACA'
      'ORDER BY RACA')
    SQLConnection = SQLConnect
    Left = 192
    Top = 168
  end
  object DSPRACA: TDataSetProvider
    DataSet = SQLRACA
    Left = 220
    Top = 168
  end
  object CDSRACA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRACA'
    Left = 248
    Top = 168
  end
  object DSRACA: TDataSource
    DataSet = CDSRACA
    Left = 276
    Top = 168
  end
  object SQLESCOLARIDADE: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM ESCOLARIDADE'
      'ORDER BY ESCOLARIDADE')
    SQLConnection = SQLConnect
    Left = 192
    Top = 224
  end
  object DSPESCOLARIDADE: TDataSetProvider
    DataSet = SQLESCOLARIDADE
    Left = 220
    Top = 224
  end
  object CDSESCOLARIDADE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPESCOLARIDADE'
    Left = 248
    Top = 224
  end
  object DSESCOLARIDADE: TDataSource
    DataSet = CDSESCOLARIDADE
    Left = 276
    Top = 224
  end
  object SQLADVOGADO: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM ADVOGADO'
      'ORDER BY ADVOGADO')
    SQLConnection = SQLConnect
    Left = 192
    Top = 272
  end
  object DSPADVOGADO: TDataSetProvider
    DataSet = SQLADVOGADO
    Left = 220
    Top = 272
  end
  object CDSADVOGADO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPADVOGADO'
    Left = 248
    Top = 272
  end
  object DsAdvogado: TDataSource
    DataSet = CDSADVOGADO
    Left = 276
    Top = 272
  end
  object SqlVisitante: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select '
      'v.id_visitante, v.visitante, v.status, v.motivo_inativo'
      'from visitante v'
      'order by v.visitante')
    SQLConnection = SQLConnect
    Left = 192
    Top = 320
  end
  object DspVisitante: TDataSetProvider
    DataSet = SqlVisitante
    Left = 220
    Top = 320
  end
  object CdsVisitante: TClientDataSet
    Aggregates = <>
    PacketRecords = 100
    Params = <>
    ProviderName = 'DspVisitante'
    Left = 248
    Top = 320
  end
  object DsVisitante: TDataSource
    DataSet = CdsVisitante
    Left = 276
    Top = 320
  end
  object SQLFUNCAOFUNCIONARIO: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM FUNCAO_FUNCIONARIO')
    SQLConnection = SQLConnect
    Left = 384
    Top = 272
  end
  object DSPFUNCAOFUNCIONARIO: TDataSetProvider
    DataSet = SQLFUNCAOFUNCIONARIO
    Left = 412
    Top = 272
  end
  object CDSFUNCAOFUNCIONARIO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPFUNCAOFUNCIONARIO'
    Left = 440
    Top = 272
  end
  object DSFUNCAOFUNCIONARIO: TDataSource
    DataSet = CDSFUNCAOFUNCIONARIO
    Left = 468
    Top = 272
  end
  object SqlGrauParentesco: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM GRAU_PARENTESCO'
      'order by grau_parentesco')
    SQLConnection = SQLConnect
    Left = 384
    Top = 64
  end
  object DspGrauParentesco: TDataSetProvider
    DataSet = SqlGrauParentesco
    Left = 412
    Top = 64
  end
  object CdsGrauParentesco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPGrauParentesco'
    Left = 440
    Top = 64
  end
  object DSGrauParentesco: TDataSource
    DataSet = CdsGrauParentesco
    Left = 468
    Top = 64
  end
  object SqlUP: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM UNIDADE_PENAL'
      'order by nome_up')
    SQLConnection = SQLConnect
    Left = 80
    Top = 8
  end
  object DspUP: TDataSetProvider
    DataSet = SqlUP
    Left = 108
    Top = 8
  end
  object CdsUP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspUP'
    Left = 136
    Top = 8
  end
  object DsUP: TDataSource
    DataSet = CdsUP
    Left = 164
    Top = 8
  end
  object SqlCondicaoInterno: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM condicao_interno'
      'ORDER BY DESCRICAO')
    SQLConnection = SQLConnect
    Left = 384
    Top = 168
  end
  object DspCondicaoInterno: TDataSetProvider
    DataSet = SqlCondicaoInterno
    Left = 412
    Top = 168
  end
  object CdsCondicaoInterno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCondicaoInterno'
    Left = 440
    Top = 168
  end
  object DsCondicaoInterno: TDataSource
    DataSet = CdsCondicaoInterno
    Left = 468
    Top = 168
  end
  object SqlDestino: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM DESTINO'
      'ORDER BY DESTINO')
    SQLConnection = SQLConnect
    Left = 384
    Top = 224
  end
  object DspDestino: TDataSetProvider
    DataSet = SqlDestino
    Left = 412
    Top = 224
  end
  object CdsDestino: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPDestino'
    Left = 440
    Top = 224
  end
  object DsDestino: TDataSource
    DataSet = CdsDestino
    Left = 468
    Top = 224
  end
  object CdsInterno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspInterno'
    Left = 72
    Top = 272
  end
  object DspInterno: TDataSetProvider
    DataSet = SqlInterno
    Left = 44
    Top = 272
  end
  object SqlInterno: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_UP'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'SELECT id_interno, nome_interno, rgi'
      'FROM INTERNO'
      'WHERE ID_UP = :ID_UP'
      'and coalesce(nome_interno,'#39#39')<>'#39#39
      'AND ST = '#39'A'#39
      'ORDER BY NOME_INTERNO')
    SQLConnection = SQLConnect
    Left = 16
    Top = 272
  end
  object DsInterno: TDataSource
    DataSet = CdsInterno
    Left = 100
    Top = 272
  end
  object SqlSetorTrabalho: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM SETOR_TRABALHO'
      'ORDER BY SETOR_TRABALHO')
    SQLConnection = SQLConnect
    Left = 192
    Top = 368
  end
  object DspSetorTrabalho: TDataSetProvider
    DataSet = SqlSetorTrabalho
    Left = 220
    Top = 368
  end
  object CdsSetorTrabalho: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSetorTrabalho'
    Left = 248
    Top = 368
  end
  object DsSetorTrabalho: TDataSource
    DataSet = CdsSetorTrabalho
    Left = 276
    Top = 368
  end
  object SQLFUNCAOINTERNO: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM FUNCAO_INTERNO'
      'order by FUNCAO_INTERNO')
    SQLConnection = SQLConnect
    Left = 216
    Top = 8
  end
  object DSPFUNCAOINTERNO: TDataSetProvider
    DataSet = SQLFUNCAOINTERNO
    Left = 244
    Top = 8
  end
  object CDSFUNCAOINTERNO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPFUNCAOINTERNO'
    Left = 272
    Top = 8
  end
  object DSFUNCAOINTERNO: TDataSource
    DataSet = CDSFUNCAOINTERNO
    Left = 300
    Top = 8
  end
  object SqlExecute: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnect
    Left = 376
    Top = 8
  end
  object DspExecute: TDataSetProvider
    DataSet = SqlExecute
    Left = 404
    Top = 8
  end
  object CdsExecute: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPExecute'
    Left = 432
    Top = 8
  end
  object DsExecute: TDataSource
    DataSet = CdsExecute
    Left = 460
    Top = 8
  end
  object SQLfuncionario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM FUNCIONARIO'
      'WHERE COALESCE(NOME_FUNCIONARIO,'#39#39')<>'#39#39
      'ORDER BY NOME_FUNCIONARIO')
    SQLConnection = SQLConnect
    Left = 384
    Top = 320
  end
  object dspfuncionario: TDataSetProvider
    DataSet = SQLfuncionario
    Left = 412
    Top = 320
  end
  object cdsfuncionario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspfuncionario'
    Left = 440
    Top = 320
  end
  object DsFuncionario: TDataSource
    DataSet = cdsfuncionario
    Left = 468
    Top = 320
  end
  object SQLSERIEESTUDO: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM SERIE_ESTUDO'
      'order by SERIE_ESTUDO')
    SQLConnection = SQLConnect
    Left = 16
    Top = 376
  end
  object DSPSERIEESTUDO: TDataSetProvider
    DataSet = SQLSERIEESTUDO
    Left = 44
    Top = 376
  end
  object CDSSERIEESTUDO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSERIEESTUDO'
    Left = 72
    Top = 376
  end
  object DSSERIEESTUDO: TDataSource
    DataSet = CDSSERIEESTUDO
    Left = 100
    Top = 376
  end
  object DSrelation_fields: TDataSource
    DataSet = Cdsrelation_fields
    Left = 98
    Top = 460
  end
  object Cdsrelation_fields: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPrelation_fields'
    Left = 70
    Top = 460
  end
  object Dsprelation_fields: TDataSetProvider
    DataSet = Sqlrelation_fields
    Left = 42
    Top = 460
  end
  object Sqlrelation_fields: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select rdb$field_name campo, rdb$relation_name as tabela '
      'from rdb$relation_fields')
    SQLConnection = SQLConnect
    Left = 14
    Top = 460
  end
  object SqlAssuntos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM AGENDA_ASSUNTOS'
      'ORDER BY DESCRICAO')
    SQLConnection = SQLConnect
    Left = 560
    Top = 8
  end
  object DspAssuntos: TDataSetProvider
    DataSet = SqlAssuntos
    Left = 588
    Top = 8
  end
  object CdsAssuntos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspAssuntos'
    Left = 616
    Top = 8
  end
  object DsAssuntos: TDataSource
    DataSet = CdsAssuntos
    Left = 644
    Top = 8
  end
  object SqlSituacao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM AGENDA_SITUACAO'
      'ORDER BY DESCRICAO')
    SQLConnection = SQLConnect
    Left = 560
    Top = 64
  end
  object DspSituacao: TDataSetProvider
    DataSet = SqlSituacao
    Left = 588
    Top = 64
  end
  object CdsSituacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspSituacao'
    Left = 616
    Top = 64
  end
  object DsSituacao: TDataSource
    DataSet = CdsSituacao
    Left = 644
    Top = 64
  end
  object SqlTipoContato: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM AGENDA_TIPO_CONTATOS'
      'ORDER BY DESCRICAO')
    SQLConnection = SQLConnect
    Left = 559
    Top = 120
  end
  object DspTipoContato: TDataSetProvider
    DataSet = SqlTipoContato
    Left = 587
    Top = 120
  end
  object CdsTipoContato: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPTipoContato'
    Left = 615
    Top = 120
  end
  object DsTipoContato: TDataSource
    DataSet = CdsTipoContato
    Left = 643
    Top = 120
  end
  object SqlFuncionarioLista: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM funcionario'
      'where coalesce(nome_funcionario,'#39#39')<>'#39#39
      'order by nome_funcionario')
    SQLConnection = SQLConnect
    Left = 384
    Top = 368
  end
  object DspFuncionarioLista: TDataSetProvider
    DataSet = SqlFuncionarioLista
    Left = 412
    Top = 368
  end
  object CdsFuncionarioLista: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPFuncionarioLista'
    Left = 440
    Top = 368
  end
  object DsFuncionarioLista: TDataSource
    DataSet = CdsFuncionarioLista
    Left = 468
    Top = 368
  end
  object SqlPais: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * '
      'FROM NACIONALIDADE'
      'ORDER BY NACIONALIDADE')
    SQLConnection = SQLConnect
    Left = 192
    Top = 416
  end
  object DspPais: TDataSetProvider
    DataSet = SqlPais
    Left = 220
    Top = 416
  end
  object CdsPais: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPPais'
    Left = 248
    Top = 416
  end
  object DsPais: TDataSource
    DataSet = CdsPais
    Left = 276
    Top = 416
  end
  object dsartigo_perfil: TDataSource
    DataSet = cdsartigo_perfil
    Left = 640
    Top = 176
  end
  object SQLartigo_perfil: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from artigo_perfil'
      'order by artigo_perfil')
    SQLConnection = SQLConnect
    Left = 560
    Top = 176
  end
  object DSPartigo_perfil: TDataSetProvider
    DataSet = SQLartigo_perfil
    Left = 584
    Top = 176
  end
  object cdsartigo_perfil: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPartigo_perfil'
    Left = 608
    Top = 176
  end
  object Sqlfaltadisciplinar: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT f.falta_disciplinar||'#39' - Gravidade:'#39'||f.tipofalta||'#39' - '#39'|' +
        '| f.temporeabilitacao||'#39' Dias.'#39' as falta_disciplinar,'
      'f.id_falta_disciplinar'
      'FROM falta_disciplinar f'
      'order by f.falta_disciplinar')
    SQLConnection = SQLConnect
    Left = 560
    Top = 232
  end
  object Dspfaltadisciplinar: TDataSetProvider
    DataSet = Sqlfaltadisciplinar
    Left = 588
    Top = 232
  end
  object Cdsfaltadisciplinar: TClientDataSet
    Aggregates = <>
    PacketRecords = 0
    Params = <>
    ProviderName = 'Dspfaltadisciplinar'
    Left = 616
    Top = 232
  end
  object Dsfaltadisciplinar: TDataSource
    DataSet = Cdsfaltadisciplinar
    Left = 644
    Top = 232
  end
  object Sqlartigo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * '
      'FROM artigo'
      'order by artigo')
    SQLConnection = SQLConnect
    Left = 560
    Top = 275
  end
  object Dspartigo: TDataSetProvider
    DataSet = Sqlartigo
    Left = 588
    Top = 275
  end
  object Cdsartigo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dspartigo'
    Left = 616
    Top = 275
  end
  object Dsartigo: TDataSource
    DataSet = Cdsartigo
    Left = 644
    Top = 275
  end
  object SqlFornecedor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * '
      'FROM fornecedor'
      'order by fornecedor')
    SQLConnection = SQLConnect
    Left = 384
    Top = 416
  end
  object Dspfornecedor: TDataSetProvider
    DataSet = SqlFornecedor
    Left = 412
    Top = 416
  end
  object Cdsfornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dspfornecedor'
    Left = 440
    Top = 416
  end
  object Dsfornecedor: TDataSource
    DataSet = Cdsfornecedor
    Left = 468
    Top = 416
  end
  object SqlProcedimentos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM procedimentos'
      'order by descricao')
    SQLConnection = SQLConnect
    Left = 560
    Top = 322
  end
  object DspProcedimentos: TDataSetProvider
    DataSet = SqlProcedimentos
    Left = 588
    Top = 322
  end
  object CdsProcedimentos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspProcedimentos'
    Left = 616
    Top = 322
  end
  object DsProcedimentos: TDataSource
    DataSet = CdsProcedimentos
    Left = 648
    Top = 322
  end
  object SQLRemedio: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * '
      'FROM remedio'
      'order by nome_remedio')
    SQLConnection = SQLConnect
    Left = 560
    Top = 368
  end
  object DSPRemedio: TDataSetProvider
    DataSet = SQLRemedio
    Left = 588
    Top = 368
  end
  object CDSRemedio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRemedio'
    Left = 616
    Top = 368
  end
  object DSRemedio: TDataSource
    DataSet = CDSRemedio
    Left = 652
    Top = 368
  end
  object SqlMovProcDetalhado: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * '
      'FROM remedio'
      'order by nome_remedio')
    SQLConnection = SQLConnect
    Left = 560
    Top = 416
  end
  object DspMovProcDetalhado: TDataSetProvider
    DataSet = SqlMovProcDetalhado
    Left = 588
    Top = 416
  end
  object CdsMovProcDetalhado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMovProcDetalhado'
    Left = 616
    Top = 416
  end
  object DsMovProcDetalhado: TDataSource
    DataSet = CdsMovProcDetalhado
    Left = 644
    Top = 416
  end
  object DSlivro: TDataSource
    DataSet = cdslivro
    Left = 468
    Top = 464
  end
  object cdslivro: TClientDataSet
    Aggregates = <>
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPlivro'
    Left = 440
    Top = 464
  end
  object DSPlivro: TDataSetProvider
    DataSet = SQLlivro
    Left = 412
    Top = 464
  end
  object SQLlivro: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * '
      'FROM livro'
      'order by livro')
    SQLConnection = SQLConnect
    Left = 384
    Top = 464
  end
  object DScalcpermanencia: TDataSource
    DataSet = CDScalcpermanencia
    Left = 276
    Top = 472
  end
  object CDScalcpermanencia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPcalcpermanencia'
    Left = 248
    Top = 472
  end
  object DSPcalcpermanencia: TDataSetProvider
    DataSet = SQLcalcpermanencia
    Left = 220
    Top = 472
  end
  object SQLcalcpermanencia: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'data'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select i.nome_interno, i.data_entrada, p.proedencia, c.data_fina' +
        'l from controle_permanencia c'
      'inner join interno i on (c.id_interno = i.id_interno)'
      
        'inner join procedencia p on (p.id_procedencia = i.id_procedencia' +
        ')'
      'where (data_final - 60) < :data'
      'and coalesce(AVISADO,'#39'N'#39')='#39'N'#39)
    SQLConnection = SQLConnect
    Left = 192
    Top = 472
  end
  object SqlEquipe: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * '
      'FROM EQUIPE'
      'ORDER BY EQUIPE')
    SQLConnection = SQLConnect
    Left = 560
    Top = 464
  end
  object DspEquipe: TDataSetProvider
    DataSet = SqlEquipe
    Left = 588
    Top = 464
  end
  object CdsEquipe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPEquipe'
    Left = 616
    Top = 464
  end
  object DsEquipe: TDataSource
    DataSet = CdsEquipe
    Left = 644
    Top = 464
  end
  object DsPostoTrabalho: TDataSource
    DataSet = CdsPostoTrabalho
    Left = 788
    Top = 8
  end
  object CdsPostoTrabalho: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPPostoTrabalho'
    Left = 760
    Top = 8
  end
  object DspPostoTrabalho: TDataSetProvider
    DataSet = SqlPostoTrabalho
    Left = 732
    Top = 8
  end
  object SqlPostoTrabalho: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * '
      'FROM POSTO_TRABALHO'
      'ORDER BY POSTO_TRABALHO')
    SQLConnection = SQLConnect
    Left = 704
    Top = 8
  end
  object DsOcorrencias: TDataSource
    DataSet = CdsOcorrencias
    Left = 788
    Top = 64
  end
  object CdsOcorrencias: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPOcorrencias'
    Left = 760
    Top = 64
  end
  object DspOcorrencias: TDataSetProvider
    DataSet = SqlOcorrencias
    Left = 732
    Top = 64
  end
  object SqlOcorrencias: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * '
      'FROM OCORRENCIA'
      'ORDER BY DESCRICAO')
    SQLConnection = SQLConnect
    Left = 704
    Top = 64
  end
  object SQLcurso: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * '
      'FROM curso'
      'ORDER BY curso')
    SQLConnection = SQLConnect
    Left = 712
    Top = 120
  end
  object dspcurso: TDataSetProvider
    DataSet = SQLcurso
    Left = 740
    Top = 120
  end
  object cdscurso: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcurso'
    Left = 768
    Top = 120
  end
  object dscurso: TDataSource
    DataSet = cdscurso
    Left = 796
    Top = 120
  end
  object SqlPostoTrabalhoRotativo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * '
      'FROM POSTO_TRABALHO'
      'WHERE POSTO_ROTATIVO='#39'S'#39
      'ORDER BY POSTO_TRABALHO')
    SQLConnection = SQLConnect
    Left = 712
    Top = 176
  end
  object DspPostoTrabalhoRotativo: TDataSetProvider
    DataSet = SqlPostoTrabalhoRotativo
    Left = 740
    Top = 176
  end
  object CdsPostoTrabalhoRotativo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPostoTrabalhoRotativo'
    Left = 768
    Top = 176
  end
  object DsPostoTrabalhoRotativo: TDataSource
    DataSet = CdsPostoTrabalhoRotativo
    Left = 796
    Top = 176
  end
  object SqlEscalaPlantao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select '
      '    escala_plantao.data_plantao,'
      '    equipe.equipe,'
      '    funcionario.nome_funcionario,'
      '    posto_trabalho.posto_trabalho,'
      '    escala_plantao.observacoes,'
      '    escala_plantao.posto_rotativo,'
      '    escala_plantao.hora_inicio,'
      '    escala_plantao.hora_fim'
      'from escala_plantao'
      
        '   inner join equipe on (escala_plantao.idequipe = equipe.idequi' +
        'pe)'
      
        '   inner join funcionario on (escala_plantao.idfuncionario = fun' +
        'cionario.id_funcionario)'
      
        '   inner join posto_trabalho on (escala_plantao.idposto_trabalho' +
        ' = posto_trabalho.idposto_trabalho)')
    SQLConnection = SQLConnect
    Left = 712
    Top = 232
  end
  object DspEscalaPlantao: TDataSetProvider
    DataSet = SqlEscalaPlantao
    Left = 740
    Top = 232
  end
  object CdsEscalaPlantao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspEscalaPlantao'
    Left = 768
    Top = 232
  end
  object DsEscalaPlantao: TDataSource
    DataSet = CdsEscalaPlantao
    Left = 796
    Top = 232
  end
  object SqlHorarioFuncionario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from horario_funcionario'
      'order by horario_funcionario')
    SQLConnection = SQLConnect
    Left = 712
    Top = 276
  end
  object DspHorarioFuncionario: TDataSetProvider
    DataSet = SqlHorarioFuncionario
    Left = 740
    Top = 277
  end
  object CdsHorarioFuncionario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspHorarioFuncionario'
    Left = 768
    Top = 276
  end
  object DsHorarioFuncionario: TDataSource
    DataSet = CdsHorarioFuncionario
    Left = 796
    Top = 276
  end
  object SqlTipoPatrimonio: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from tipo_patrimonio'
      'order by descricao')
    SQLConnection = SQLConnect
    Left = 712
    Top = 322
  end
  object DspTipoPatrimonio: TDataSetProvider
    DataSet = SqlTipoPatrimonio
    Left = 740
    Top = 322
  end
  object CdsTipoPatrimonio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspTipoPatrimonio'
    Left = 768
    Top = 322
  end
  object DsTipoPatrimonio: TDataSource
    DataSet = CdsTipoPatrimonio
    Left = 796
    Top = 322
  end
  object SQLacessorios: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from acessorios'
      'order by descricao_acessorio')
    SQLConnection = SQLConnect
    Left = 712
    Top = 370
  end
  object dspacessorios: TDataSetProvider
    DataSet = SQLacessorios
    Left = 740
    Top = 370
  end
  object cdsacessorios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspacessorios'
    Left = 768
    Top = 370
  end
  object dsacessorios: TDataSource
    DataSet = cdsacessorios
    Left = 796
    Top = 370
  end
  object dsmedico: TDataSource
    DataSet = cdsmedico
    Left = 792
    Top = 416
  end
  object dstipodieta: TDataSource
    DataSet = cdstipodieta
    Left = 792
    Top = 464
  end
  object cdstipodieta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsptipodieta'
    Left = 768
    Top = 464
  end
  object cdsmedico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspmedico'
    Left = 768
    Top = 416
  end
  object dspmedico: TDataSetProvider
    DataSet = SQLmedico
    Left = 736
    Top = 416
  end
  object dsptipodieta: TDataSetProvider
    DataSet = SQLtipodieta
    Left = 744
    Top = 464
  end
  object SQLmedico: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from medico'
      'order by medico')
    SQLConnection = SQLConnect
    Left = 712
    Top = 416
  end
  object SQLtipodieta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from tipo_dieta'
      'order by tipo_dieta')
    SQLConnection = SQLConnect
    Left = 712
    Top = 464
  end
  object SqlPadrao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_UP'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM PADRAO '
      'WHERE PADRAO.COD_UP = :ID_UP')
    SQLConnection = SQLConnect
    Left = 16
    Top = 488
  end
  object DspPadrao: TDataSetProvider
    DataSet = SqlPadrao
    Left = 44
    Top = 488
  end
  object CdsPadrao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPadrao'
    Left = 72
    Top = 488
  end
  object DsPadrao: TDataSource
    DataSet = CdsPadrao
    Left = 100
    Top = 488
  end
  object Sqltiposaidao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * '
      'FROM tipo_saidao'
      'order by tipo_saidao')
    SQLConnection = SQLConnect
    Left = 376
    Top = 520
  end
  object Dsptiposaidao: TDataSetProvider
    DataSet = Sqltiposaidao
    Left = 404
    Top = 520
  end
  object Cdstiposaidao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsptiposaidao'
    Left = 432
    Top = 520
  end
  object Dstiposaidao: TDataSource
    DataSet = Cdstiposaidao
    Left = 460
    Top = 520
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 288
    Top = 528
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 256
    Top = 528
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Left = 224
    Top = 528
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnect
    Left = 192
    Top = 528
  end
  object DataSource3: TDataSource
    DataSet = ClientDataSet3
    Left = 648
    Top = 520
  end
  object ClientDataSet3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 616
    Top = 520
  end
  object DataSetProvider3: TDataSetProvider
    DataSet = SQLQuery3
    Left = 584
    Top = 520
  end
  object SQLQuery3: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnect
    Left = 552
    Top = 520
  end
  object SQLenfermidade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from enfermidade'
      'order by enfermidade')
    SQLConnection = SQLConnect
    Left = 552
    Top = 520
  end
  object DSPenfermidade: TDataSetProvider
    DataSet = SQLenfermidade
    Left = 584
    Top = 520
  end
  object cdsenfermidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPenfermidade'
    Left = 616
    Top = 520
  end
  object dsenfermidade: TDataSource
    DataSet = cdsenfermidade
    Left = 648
    Top = 520
  end
  object SQLlocaltrabalho: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from local_trabalho'
      'order by local_trabalho')
    SQLConnection = SQLConnect
    Left = 712
    Top = 520
  end
  object dsplocaltrabalho: TDataSetProvider
    DataSet = SQLlocaltrabalho
    Left = 744
    Top = 520
  end
  object cdslocaltrabalho: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsplocaltrabalho'
    Left = 776
    Top = 520
  end
  object dslocaltrabalho: TDataSource
    DataSet = cdslocaltrabalho
    Left = 808
    Top = 520
  end
  object SQLdeficiencia: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from deficiencia'
      'order by deficiencia')
    SQLConnection = SQLConnect
    Left = 16
    Top = 536
  end
  object dspdeficiencia: TDataSetProvider
    DataSet = SQLdeficiencia
    Left = 48
    Top = 536
  end
  object cdsdeficiencia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspdeficiencia'
    Left = 80
    Top = 536
  end
  object dsdeficiencia: TDataSource
    DataSet = cdsdeficiencia
    Left = 112
    Top = 536
  end
  object SQLvacina: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from vacina'
      'order by vacina')
    SQLConnection = SQLConnect
    Left = 712
    Top = 568
  end
  object dspvacina: TDataSetProvider
    DataSet = SQLvacina
    Left = 744
    Top = 568
  end
  object cdsvacina: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspvacina'
    Left = 776
    Top = 568
  end
  object dsvacina: TDataSource
    DataSet = cdsvacina
    Left = 808
    Top = 568
  end
  object SQLOrgao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from orgao')
    SQLConnection = SQLConnect
    Left = 960
    Top = 8
  end
  object dspOrgao: TDataSetProvider
    DataSet = SQLOrgao
    Left = 987
    Top = 8
  end
  object cdsOrgao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrgao'
    Left = 1017
    Top = 8
  end
  object dsOrgao: TDataSource
    DataSet = cdsOrgao
    Left = 1044
    Top = 8
  end
  object SQLSolicitacaoVaga: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from solicitacao_vaga')
    SQLConnection = SQLConnect
    Left = 960
    Top = 60
    object SQLSolicitacaoVagaID_SOLICITACAO_VAGA: TIntegerField
      FieldName = 'ID_SOLICITACAO_VAGA'
      Required = True
    end
    object SQLSolicitacaoVagaID_ORGAO: TIntegerField
      FieldName = 'ID_ORGAO'
      Required = True
    end
    object SQLSolicitacaoVagaID_UP: TIntegerField
      FieldName = 'ID_UP'
      Required = True
    end
    object SQLSolicitacaoVagaQTD_VAGAS_SOLICITADAS: TIntegerField
      FieldName = 'QTD_VAGAS_SOLICITADAS'
    end
    object SQLSolicitacaoVagaQTD_VAGAS_AUTORIZADAS: TIntegerField
      FieldName = 'QTD_VAGAS_AUTORIZADAS'
    end
    object SQLSolicitacaoVagaQTD_VAGAS_UTILIZADAS: TIntegerField
      FieldName = 'QTD_VAGAS_UTILIZADAS'
    end
    object SQLSolicitacaoVagaDATA_AUTORIZA_VAGAS: TSQLTimeStampField
      FieldName = 'DATA_AUTORIZA_VAGAS'
    end
    object SQLSolicitacaoVagaOFICIO_DESC: TStringField
      FieldName = 'OFICIO_DESC'
      Size = 100
    end
    object SQLSolicitacaoVagaQTD_VAGAS_SEM_EFEITO: TIntegerField
      FieldName = 'QTD_VAGAS_SEM_EFEITO'
    end
  end
  object dspSolicitacaoVaga: TDataSetProvider
    DataSet = SQLSolicitacaoVaga
    Left = 987
    Top = 60
  end
  object cdsSolicitacaoVaga: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSolicitacaoVaga'
    Left = 1017
    Top = 60
    object cdsSolicitacaoVagaID_SOLICITACAO_VAGA: TIntegerField
      FieldName = 'ID_SOLICITACAO_VAGA'
      Required = True
    end
    object cdsSolicitacaoVagaID_ORGAO: TIntegerField
      FieldName = 'ID_ORGAO'
      Required = True
    end
    object cdsSolicitacaoVagaID_UP: TIntegerField
      FieldName = 'ID_UP'
      Required = True
    end
    object cdsSolicitacaoVagaQTD_VAGAS_SOLICITADAS: TIntegerField
      FieldName = 'QTD_VAGAS_SOLICITADAS'
    end
    object cdsSolicitacaoVagaQTD_VAGAS_AUTORIZADAS: TIntegerField
      FieldName = 'QTD_VAGAS_AUTORIZADAS'
    end
    object cdsSolicitacaoVagaQTD_VAGAS_UTILIZADAS: TIntegerField
      FieldName = 'QTD_VAGAS_UTILIZADAS'
    end
    object cdsSolicitacaoVagaDATA_AUTORIZA_VAGAS: TSQLTimeStampField
      FieldName = 'DATA_AUTORIZA_VAGAS'
    end
    object cdsSolicitacaoVagaOFICIO_DESC: TStringField
      FieldName = 'OFICIO_DESC'
      Size = 100
    end
    object cdsSolicitacaoVagaQTD_VAGAS_SEM_EFEITO: TIntegerField
      FieldName = 'QTD_VAGAS_SEM_EFEITO'
    end
  end
  object dsSolicitacaoVaga: TDataSource
    DataSet = cdsSolicitacaoVaga
    Left = 1048
    Top = 60
  end
  object SQLEscolta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from escolta'
      '')
    SQLConnection = SQLConnect
    Left = 960
    Top = 108
  end
  object dspEscolta: TDataSetProvider
    DataSet = SQLEscolta
    Left = 987
    Top = 108
  end
  object cdsEscolta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEscolta'
    Left = 1017
    Top = 108
  end
  object dsEscolta: TDataSource
    DataSet = cdsEscolta
    Left = 1048
    Top = 108
  end
  object SQLMeioTransporte: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from meio_transporte')
    SQLConnection = SQLConnect
    Left = 960
    Top = 156
  end
  object dspMeioTransporte: TDataSetProvider
    DataSet = SQLMeioTransporte
    Left = 988
    Top = 156
  end
  object cdsMeioTransporte: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMeioTransporte'
    Left = 1017
    Top = 156
  end
  object dsMeioTransporte: TDataSource
    DataSet = cdsMeioTransporte
    Left = 1048
    Top = 156
  end
  object SQLItinerario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from itinerario')
    SQLConnection = SQLConnect
    Left = 960
    Top = 208
  end
  object dspItinerario: TDataSetProvider
    DataSet = SQLItinerario
    Left = 991
    Top = 208
  end
  object cdsItinerario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItinerario'
    Left = 1021
    Top = 208
  end
  object dsItinerario: TDataSource
    DataSet = cdsItinerario
    Left = 1049
    Top = 208
  end
  object SQLDocOficio: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM DOC_OFICIO')
    SQLConnection = SQLConnect
    Left = 960
    Top = 264
  end
  object dspDocOficio: TDataSetProvider
    DataSet = SQLDocOficio
    Left = 989
    Top = 264
  end
  object cdsDocOficio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDocOficio'
    Left = 1019
    Top = 264
  end
  object dsDocOficio: TDataSource
    DataSet = cdsDocOficio
    Left = 1049
    Top = 264
  end
  object SQLInternoInclusao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM INTERNO_INCLUSAO')
    SQLConnection = SQLConnect
    Left = 960
    Top = 316
  end
  object dspInternoInclusao: TDataSetProvider
    DataSet = SQLInternoInclusao
    Left = 989
    Top = 316
  end
  object cdsInternoInclusao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInternoInclusao'
    Left = 1019
    Top = 316
  end
  object dsInternoInclusao: TDataSource
    DataSet = cdsInternoInclusao
    Left = 1049
    Top = 316
  end
  object SQLestado: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM estado')
    SQLConnection = SQLConnect
    Left = 959
    Top = 372
  end
  object dspestado: TDataSetProvider
    DataSet = SQLestado
    Left = 990
    Top = 372
  end
  object cdsestado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspestado'
    Left = 1019
    Top = 372
  end
  object dsestado: TDataSource
    DataSet = cdsestado
    Left = 1049
    Top = 372
  end
  object SQLvestimentas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from vestimentas'
      'order by vestimentas')
    SQLConnection = SQLConnect
    Left = 952
    Top = 432
  end
  object dspvestimentas: TDataSetProvider
    DataSet = SQLvestimentas
    Left = 984
    Top = 432
  end
  object cdsvestimentas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspvestimentas'
    Left = 1016
    Top = 432
  end
  object dsvestimentas: TDataSource
    DataSet = cdsvestimentas
    Left = 1048
    Top = 432
  end
  object SqlDigital: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from biometria b'
      'where coalesce(id_interno,'#39#39')<>'#39#39
      '')
    SQLConnection = SQLConnect
    Left = 552
    Top = 568
  end
  object DspDigital: TDataSetProvider
    DataSet = SqlDigital
    Left = 584
    Top = 568
  end
  object CdsDigital: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDigital'
    Left = 616
    Top = 568
    object CdsDigitalID_BIOMETRIA: TIntegerField
      FieldName = 'ID_BIOMETRIA'
      Required = True
    end
    object CdsDigitalID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object CdsDigitalIMAGEM_POLEGAR_DIREITO: TBlobField
      FieldName = 'IMAGEM_POLEGAR_DIREITO'
    end
    object CdsDigitalIMAGEM_INDICADOR_DIREITO: TBlobField
      FieldName = 'IMAGEM_INDICADOR_DIREITO'
    end
    object CdsDigitalIMAGEM_MEDIO_DIREITO: TBlobField
      FieldName = 'IMAGEM_MEDIO_DIREITO'
    end
    object CdsDigitalIMAGEM_ANELAR_DIREITO: TBlobField
      FieldName = 'IMAGEM_ANELAR_DIREITO'
    end
    object CdsDigitalIMAGEM_MINIMO_DIREITO: TBlobField
      FieldName = 'IMAGEM_MINIMO_DIREITO'
    end
    object CdsDigitalIMAGEM_POLEGAR_ESQUERDO: TBlobField
      FieldName = 'IMAGEM_POLEGAR_ESQUERDO'
    end
    object CdsDigitalIMAGEM_INDICADOR_ESQUERDO: TBlobField
      FieldName = 'IMAGEM_INDICADOR_ESQUERDO'
    end
    object CdsDigitalIMAGEM_MEDIO_ESQUERDO: TBlobField
      FieldName = 'IMAGEM_MEDIO_ESQUERDO'
    end
    object CdsDigitalIMAGEM_ANELAR_ESQUERDO: TBlobField
      FieldName = 'IMAGEM_ANELAR_ESQUERDO'
    end
    object CdsDigitalIMAGEM_MINIMO_ESQUERDO: TBlobField
      FieldName = 'IMAGEM_MINIMO_ESQUERDO'
    end
    object CdsDigitalCHAVE_POLEGAR_DIREITO: TStringField
      FieldName = 'CHAVE_POLEGAR_DIREITO'
      Size = 2000
    end
    object CdsDigitalCHAVE_INDICADOR_DIREITO: TStringField
      FieldName = 'CHAVE_INDICADOR_DIREITO'
      Size = 2000
    end
    object CdsDigitalCHAVE_MEDIO_DIREITO: TStringField
      FieldName = 'CHAVE_MEDIO_DIREITO'
      Size = 2000
    end
    object CdsDigitalCHAVE_ANELAR_DIREITO: TStringField
      FieldName = 'CHAVE_ANELAR_DIREITO'
      Size = 2000
    end
    object CdsDigitalCHAVE_MINIMO_DIREITO: TStringField
      FieldName = 'CHAVE_MINIMO_DIREITO'
      Size = 2000
    end
    object CdsDigitalCHAVE_POLEGAR_ESQUERDO: TStringField
      FieldName = 'CHAVE_POLEGAR_ESQUERDO'
      Size = 2000
    end
    object CdsDigitalCHAVE_INDICADOR_ESQUERDO: TStringField
      FieldName = 'CHAVE_INDICADOR_ESQUERDO'
      Size = 2000
    end
    object CdsDigitalCHAVE_MEDIO_ESQUERDO: TStringField
      FieldName = 'CHAVE_MEDIO_ESQUERDO'
      Size = 2000
    end
    object CdsDigitalCHAVE_ANELAR_ESQUERDO: TStringField
      FieldName = 'CHAVE_ANELAR_ESQUERDO'
      Size = 2000
    end
    object CdsDigitalCHAVE_MINIMO_ESQUERDO: TStringField
      FieldName = 'CHAVE_MINIMO_ESQUERDO'
      Size = 2000
    end
    object CdsDigitalNome_Interno: TStringField
      FieldKind = fkLookup
      FieldName = 'Nome_Interno'
      LookupDataSet = CdsInterno
      LookupKeyFields = 'ID_INTERNO'
      LookupResultField = 'NOME_INTERNO'
      KeyFields = 'ID_INTERNO'
      Size = 50
      Lookup = True
    end
  end
  object DsDigital: TDataSource
    DataSet = CdsDigital
    Left = 648
    Top = 568
  end
  object Sqlservidor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from funcionario'
      
        'left join perfil_usuario on (perfil_usuario.id_perfil_usuario = ' +
        'funcionario.id_perfil_usuario)')
    SQLConnection = SQLConnect
    Left = 16
    Top = 416
  end
  object Dspservidor: TDataSetProvider
    DataSet = Sqlservidor
    Left = 44
    Top = 416
  end
  object Cdsservidor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dspservidor'
    Left = 72
    Top = 416
  end
  object Dsservidor: TDataSource
    DataSet = Cdsservidor
    Left = 100
    Top = 416
  end
  object SqlTurma: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT DISTINCT'
      
        '     CURSO                                                      ' +
        '                 '
      
        'FROM CURSO                                                      ' +
        '               '
      
        'WHERE   coalesce(CURSO, '#39#39') <> '#39#39'                               ' +
        '                       '
      '  '
      'ORDER BY CURSO')
    SQLConnection = SQLConnect
    Left = 16
    Top = 592
  end
  object dspturma: TDataSetProvider
    DataSet = SqlTurma
    Left = 48
    Top = 592
  end
  object cdsturma: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspturma'
    Left = 80
    Top = 592
  end
  object dsturma: TDataSource
    DataSet = cdsturma
    Left = 112
    Top = 592
  end
  object FDConnection1: TFDConnection
    Left = 272
    Top = 624
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 360
    Top = 624
  end
end
