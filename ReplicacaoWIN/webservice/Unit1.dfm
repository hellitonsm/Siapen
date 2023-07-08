object Form1: TForm1
  Left = 455
  Top = 264
  Width = 532
  Height = 231
  Caption = 'Teste PHP post.'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object BtnEnvia: TButton
    Left = 168
    Top = 64
    Width = 145
    Height = 25
    Caption = 'Envia Replicacao'
    TabOrder = 0
    OnClick = BtnEnviaClick
  end
  object BtnRecebe: TButton
    Left = 168
    Top = 104
    Width = 145
    Height = 25
    Caption = 'Recebe Replicacao'
    TabOrder = 1
    OnClick = BtnRecebeClick
  end
  object IdHTTP1: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 120
    Top = 16
  end
  object Conexao: TSQLConnection
    DriverName = 'DevartInterBase'
    GetDriverFunc = 'getSQLDriverInterBase'
    LibraryName = 'dbexpida.dll'
    LoginPrompt = False
    Params.Strings = (
      '[SISAP]'
      '#N'#227'o alterar'
      'DriverName=DevartInterBase'
      'RoleName='
      'SQLDialect=3'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'DevartInterBase TransIsolation=ReadCommited'
      'WaitOnLocks=True'
      'Charset='
      'CharLength=1'
      'EnableBCD=True'
      'OptimizedNumerics=True'
      'LongStrings=True'
      'UseQuoteChar=False'
      'FetchAll=False'
      'User_Name=SYSDBA'
      '#Password=!p@a#p$1%'
      'Password=masterkey'
      '#Password=!p@a#p$1'
      '#Database=10.91.194.11:siapen'
      '#Database=10.91.202.16:siapen'
      '#Database=10.91.201.132:siapen'
      '#Database=10.91.203.150:siapen'
      '#Database=10.91.203.12:siapen'
      '#Database=10.91.192.5:siapen'
      '#Database=10.91.193.223:siapen'
      'Database=localhost:D:\SESIPE\SIAPEN.FDB'
      '#Database=localhost:D:\DEPEN\DATACENTER\DATACENTER.FDB'
      '#Database=localhost:D:\DEPEN\PFCG\FEDERAL.FDB'
      '#Database=siap:D:\GESPEN\CDJMAS\SIAP.FDB'
      '#Database=siap:D:\DEPEN\PFMOS\SIAP.FDB'
      '#Database=siap:D:\DEPEN\PFCAT\SIAP.FDB'
      '#Database=localhost:D:\AGEPEN\backup\NOVO\BKP.FDB'
      '#Database=172.28.3.91:siap'
      '#Database=172.29.12.207:C:\siap\backup\novo_cg.fdb'
      '#Database=192.168.0.138:siap'
      ''
      'LOCAL=SESIPE'
      'NOME=SUBSECRETARIA DO SISTEMA PENITENCI'#193'RIO'
      'ORGAO=GOVERNO DO DISTRITO FEDERAL'
      'DEPARTAMENTO=SECRETARIA DE SEGURAN'#199'A P'#218'BLICA'
      'DIRETORIA=SUBSECRETARIA DO SISTEMA PENITENCI'#193'RIO'
      'GLOBAL_NIVEL_1=C'#243'digo no SIPEN'
      'GLOBAL_NIVEL_2=P'#225'tio'
      'GLOBAL_NIVEL_3=Pavilh'#227'o'
      
        'GLOBAL_CONEXAO_PROCED=Provider=SQLOLEDB.1;Password=teste;Persist' +
        ' Security Info=True;User ID=sesipe;Initial Catalog=PROCED;Data S' +
        'ource=ipproced'
      'GLOBAL_ACESSA_PROCED=S'
      'SKIN=skin0264.skn'
      ''
      'GLOBAL_PASTA_DF=D:\@ Fontes\svn\siap\ModuloPrincipal\ '
      ''
      '[SIAP]'
      'SKIN=skin0264.skn'
      '')
    VendorLib = 'gds32.DLL'
    Left = 24
    Top = 8
  end
  object SqlSincronismo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select idsincronismo,script'
      'from sincronismo'
      'order by idsincronismo')
    SQLConnection = Conexao
    Left = 336
  end
  object DspSincronismo: TDataSetProvider
    DataSet = SqlSincronismo
    Left = 368
  end
  object CdsSincronismo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspSincronismo'
    Left = 400
  end
  object DsSincronismo: TDataSource
    DataSet = CdsSincronismo
    Left = 432
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Qualquer arquivo|*.*'
    Left = 72
    Top = 8
  end
  object SqlExecute: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select first 100 b.script, char_length( b.script )'
      'from backup_sincronismo b'
      'order by char_length( b.script ) desc')
    SQLConnection = Conexao
    Left = 335
    Top = 32
  end
  object DspExecute: TDataSetProvider
    DataSet = SqlExecute
    Left = 367
    Top = 32
  end
  object CdsExecute: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspExecute'
    Left = 399
    Top = 32
  end
  object DsExecute: TDataSource
    DataSet = CdsExecute
    Left = 431
    Top = 32
  end
end
