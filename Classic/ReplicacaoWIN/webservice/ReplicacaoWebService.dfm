object FrmReplicacaoWebService: TFrmReplicacaoWebService
  Left = 455
  Top = 264
  Width = 641
  Height = 231
  Caption = 'Replica'#231#227'o com Web Service PHP - SIAPEN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 144
    Width = 582
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Conex'#227'o'
  end
  object BtnEnvia: TButton
    Left = 23
    Top = 47
    Width = 126
    Height = 25
    Caption = 'Enviar Registros'
    TabOrder = 0
    OnClick = BtnEnviaClick
  end
  object BtnRecebe: TButton
    Left = 23
    Top = 79
    Width = 126
    Height = 25
    Caption = 'Receber Registros'
    TabOrder = 1
    OnClick = BtnRecebeClick
  end
  object ProgressBar1: TProgressBar
    Left = 24
    Top = 160
    Width = 582
    Height = 17
    TabOrder = 2
  end
  object CkAtualizacao: TCheckBox
    Left = 24
    Top = 7
    Width = 361
    Height = 17
    Caption = 'Replicac'#227'o em funcionamento'
    Checked = True
    State = cbChecked
    TabOrder = 3
    OnClick = CkAtualizacaoClick
  end
  object Memo1: TMemo
    Left = 184
    Top = 23
    Width = 422
    Height = 114
    TabOrder = 4
    WordWrap = False
  end
  object BtnEnviarBlob: TButton
    Left = 23
    Top = 111
    Width = 126
    Height = 25
    Caption = 'Enviar/Recebe Blob'
    TabOrder = 5
    OnClick = BtnEnviarBlobClick
  end
  object IdHTTP1: TIdHTTP
    OnStatus = IdHTTP1Status
    MaxLineAction = maException
    ReadTimeout = 0
    OnWork = IdHTTP1Work
    OnWorkBegin = IdHTTP1WorkBegin
    OnWorkEnd = IdHTTP1WorkEnd
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
    Left = 136
    Top = 8
  end
  object Conexao: TSQLConnection
    ConnectionName = 'webservice'
    DriverName = 'DevartInterBase'
    GetDriverFunc = 'getSQLDriverInterBase'
    LibraryName = 'dbexpida.dll'
    LoginPrompt = False
    Params.Strings = (
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
      'Database=localhost:D:\SESIPE\CARGA.FDB'
      ''
      'url_envio=http://localhost/nat/envio.php'
      'url_recebe=http://localhost/nat/recebe.php'
      'url_limpa=http://localhost/nat/limpa.php'
      'url_get_arquivo=http://localhost/teste/')
    VendorLib = 'gds32.DLL'
    Left = 24
    Top = 8
  end
  object SqlSincronismo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select idsincronismo, script'
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
  object Timer1: TTimer
    Enabled = False
    Interval = 1000000000
    OnTimer = Timer1Timer
    Left = 152
    Top = 64
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 184
    Top = 64
  end
  object SqlSincronismoBlob: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 336
    Top = 72
  end
  object DspSincronismoBlob: TDataSetProvider
    DataSet = SqlSincronismoBlob
    Left = 368
    Top = 72
  end
  object CdsSincronismoBlob: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspSincronismoBlob'
    Left = 400
    Top = 72
  end
  object DsSincronismoBlob: TDataSource
    DataSet = CdsSincronismoBlob
    Left = 432
    Top = 72
  end
end
