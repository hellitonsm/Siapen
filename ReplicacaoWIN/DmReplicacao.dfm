object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 554
  Top = 220
  Height = 207
  Width = 399
  object SQLConnect: TCRSQLConnection
    ConnectionName = 'Albatroz'
    DriverName = 'DevartInterBase'
    GetDriverFunc = 'getSQLDriverInterBase'
    LibraryName = 'dbexpida.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=DevartInterBase'
      'DataBase=192.168.1.2:/database/movflex/albatroz_showroom.fdb'
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
    Left = 77
    Top = 8
  end
  object DsControleSincronismo: TDataSource
    DataSet = CdsControleSincronismo
    Left = 304
    Top = 9
  end
  object CdsControleSincronismo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspControleSincronismo'
    Left = 248
    Top = 9
  end
  object DspControleSincronismo: TDataSetProvider
    DataSet = SqlControleSincronismo
    Left = 184
    Top = 9
  end
  object SqlControleSincronismo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT IDCONTROLE_SINCRONISMO, CONEXAO FROM CONTROLE_SINCRONISMO')
    SQLConnection = SQLConnect
    Left = 128
    Top = 9
  end
  object Dsrelation_fields: TDataSource
    DataSet = Cdsrelation_fields
    Left = 304
    Top = 57
  end
  object Cdsrelation_fields: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsprelation_fields'
    Left = 248
    Top = 57
  end
  object Dsprelation_fields: TDataSetProvider
    DataSet = Sqlrelation_fields
    Left = 184
    Top = 57
  end
  object Sqlrelation_fields: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select rdb$field_name campo, rdb$relation_name as tabela'
      'from rdb$relation_fields')
    SQLConnection = SQLConnect
    Left = 128
    Top = 57
  end
  object SqlExecute: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select rdb$field_name campo, rdb$relation_name as tabela'
      'from rdb$relation_fields')
    SQLConnection = SQLConnect
    Left = 128
    Top = 113
  end
end
