object FrmPrincipalSincronismo: TFrmPrincipalSincronismo
  Left = 360
  Top = 210
  Align = alCustom
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Replica'#231#227'o'
  ClientHeight = 335
  ClientWidth = 766
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GaugeReplicacao: TGauge
    Left = 697
    Top = 89
    Width = 69
    Height = 246
    Align = alClient
    ForeColor = clNavy
    Progress = 0
  end
  object LabelStatus: TLabel
    Left = 0
    Top = 89
    Width = 697
    Height = 246
    Align = alLeft
    Alignment = taCenter
    AutoSize = False
    Caption = '( Inativo )'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -8
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
    OnClick = LabelStatusClick
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 766
    Height = 89
    Align = alTop
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
    Visible = False
  end
  object SqlDestino: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    Left = 216
    Top = 75
  end
  object SqlLocal: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnectOrigem
    Left = 152
    Top = 72
  end
  object DsControleSincronismo: TDataSource
    DataSet = CdsControleSincronismo
    Left = 328
    Top = 121
  end
  object CdsControleSincronismo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspControleSincronismo'
    Left = 272
    Top = 121
  end
  object DspControleSincronismo: TDataSetProvider
    DataSet = SqlControleSincronismo
    Left = 208
    Top = 121
  end
  object SqlControleSincronismo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT IDCONTROLE_SINCRONISMO, CONEXAO FROM CONTROLE_SINCRONISMO')
    SQLConnection = SQLConnectOrigem
    Left = 152
    Top = 121
  end
  object SqlSincronismo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'INSERT INTO CIDADES (IDCIDADES, CIDADE, UF) VALUES (0, '#39'ACA TAPA' +
        'UA 2'#39', '#39'AM'#39')'
      'RETURNING IDCIDADES')
    SQLConnection = SQLConnectOrigem
    Left = 152
    Top = 169
  end
  object DspSincronismo: TDataSetProvider
    DataSet = SqlSincronismo
    Left = 208
    Top = 169
  end
  object CdsSincronismo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspSincronismo'
    OnReconcileError = CdsSincronismoReconcileError
    Left = 272
    Top = 169
  end
  object DsSincronismo: TDataSource
    DataSet = CdsSincronismo
    Left = 328
    Top = 169
  end
  object DsStatus: TDataSource
    DataSet = CdsStatus
    Left = 328
    Top = 216
  end
  object CdsStatus: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspStatus'
    Left = 272
    Top = 216
  end
  object DspStatus: TDataSetProvider
    DataSet = SqlStatus
    Left = 208
    Top = 216
  end
  object SqlStatus: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnectOrigem
    Left = 152
    Top = 216
  end
  object SqlDestinoSincronismo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnectOrigem
    Left = 152
    Top = 265
  end
  object DspDestinoSincronismo: TDataSetProvider
    DataSet = SqlDestinoSincronismo
    Left = 208
    Top = 265
  end
  object CdsDestinoSincronismo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspBanco_UmSincronismo'
    Left = 272
    Top = 265
  end
  object DsDestinoSincronismo: TDataSource
    DataSet = CdsDestinoSincronismo
    Left = 328
    Top = 265
  end
  object SQLConnectOrigem: TCRSQLConnection
    ConnectionName = 'Albatroz'
    DriverName = 'DevartInterBase'
    GetDriverFunc = 'getSQLDriverInterBase'
    LibraryName = 'dbexpida.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=DevartInterBase'
      'DataBase='
      'User_Name=SYSDBA'
      'Password=4b6f4194'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'DevartInterBase TransIsolation=ReadCommited'
      'ProductName=Interbase'
      
        'DriverAssemblyLoader=Devart.DbxIda.DriverLoader.TCRDynalinkDrive' +
        'rLoader,Devart.DbxIda.DriverLoader,Version=1.0.0.5001,Culture=ne' +
        'utral,PublicKeyToken=09af7300eec23701'
      'DriverUnit=DBXDevartInterBase')
    VendorLib = 'fbclient.dll'
    Left = 141
  end
  object SQLConnectDestino: TCRSQLConnection
    ConnectionName = 'Albatroz'
    DriverName = 'DevartInterBase'
    GetDriverFunc = 'getSQLDriverInterBase'
    LibraryName = 'dbexpida.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=DevartInterBase'
      'DataBase='
      'User_Name=SYSDBA'
      'Password=4b6f4194'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'DevartInterBase TransIsolation=ReadCommited'
      'ProductName=Interbase'
      
        'DriverAssemblyLoader=Devart.DbxIda.DriverLoader.TCRDynalinkDrive' +
        'rLoader,Devart.DbxIda.DriverLoader,Version=1.0.0.5001,Culture=ne' +
        'utral,PublicKeyToken=09af7300eec23701'
      'DriverUnit=DBXDevartInterBase')
    VendorLib = 'fbclient.dll'
    Left = 229
    Top = 8
  end
  object DsBlobDestino: TDataSource
    DataSet = CdsBlobDestino
    Left = 616
    Top = 177
  end
  object CdsBlobDestino: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspBlobDestino'
    Left = 560
    Top = 177
  end
  object DspBlobDestino: TDataSetProvider
    DataSet = SqlBlobDestino
    Left = 496
    Top = 177
  end
  object SqlBlobDestino: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnectDestino
    Left = 440
    Top = 177
  end
  object DsBlobOrigem: TDataSource
    DataSet = CdsBlobOrigem
    Left = 616
    Top = 121
  end
  object CdsBlobOrigem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspBlobOrigem'
    Left = 560
    Top = 121
  end
  object DspBlobOrigem: TDataSetProvider
    DataSet = SqlBlobOrigem
    Left = 496
    Top = 121
  end
  object SqlBlobOrigem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnectOrigem
    Left = 440
    Top = 121
  end
  object TimerReplicacao: TTimer
    OnTimer = TimerReplicacaoTimer
    Left = 48
    Top = 24
  end
  object CdsScript: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 576
    Top = 16
  end
end
