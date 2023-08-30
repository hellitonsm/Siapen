object DM2: TDM2
  Height = 407
  Width = 753
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
  object SQLConnect: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'User_Name=sysdba'
      'Password=masterkey')
    LoginPrompt = False
    Transaction = FDTransaction1
    Left = 29
    Top = 12
  end
  object FDTransaction1: TFDTransaction
    Connection = SQLConnect
    Left = 104
    Top = 160
  end
  object SQLQuery1: TFDQuery
    ObjectView = False
    Connection = SQLConnect
    Left = 96
    Top = 8
  end
  object SQLvestimentas: TFDQuery
    ObjectView = False
    Connection = SQLConnect
    SQL.Strings = (
      'select * from vestimentas'
      'order by vestimentas')
    Left = 32
    Top = 72
  end
end
