object DM2: TDM2
  Height = 407
  Width = 753
  object SQLConnect: TSQLConnection
    ConnectionName = 'SISAP'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DBXFirebirdDriver20' +
        '0.bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=20.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver200.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=20.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Database=172.18.15.251:siapen'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'Charset=WIN1252')
    Left = 29
    Top = 12
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnect
    Left = 96
    Top = 8
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Left = 128
    Top = 8
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 160
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 192
    Top = 8
  end
  object SQLvestimentas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from vestimentas'
      'order by vestimentas')
    SQLConnection = SQLConnect
    Left = 32
    Top = 72
  end
  object dspvestimentas: TDataSetProvider
    DataSet = SQLvestimentas
    Left = 64
    Top = 72
  end
  object cdsvestimentas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspvestimentas'
    Left = 96
    Top = 72
  end
  object dsvestimentas: TDataSource
    DataSet = cdsvestimentas
    Left = 128
    Top = 72
  end
end
