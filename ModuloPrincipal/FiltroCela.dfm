inherited FrmFiltroCela: TFrmFiltroCela
  Width = 767
  Height = 224
  Caption = 'Filtrar Cela'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelGeral: TPanel
    Width = 751
    Height = 145
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 749
      Height = 105
      Align = alTop
      Caption = 'Localiza'#231#227'o padr'#227'o para todos desta transfer'#234'ncia:'
      TabOrder = 0
      object LabelPavilhao: TLabel
        Left = 74
        Top = 19
        Width = 45
        Height = 13
        Caption = 'Nivel - 01'
      end
      object LabelGaleria: TLabel
        Left = 74
        Top = 59
        Width = 45
        Height = 13
        Caption = 'Nivel - 02'
      end
      object LabelCela: TLabel
        Left = 386
        Top = 59
        Width = 21
        Height = 13
        Caption = 'Cela'
      end
      object LabelSolario: TLabel
        Left = 386
        Top = 19
        Width = 45
        Height = 13
        Caption = 'Nivel - 03'
      end
      object SpeedButton1: TSpeedButton
        Left = 360
        Top = 35
        Width = 23
        Height = 22
        Caption = '#'
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 360
        Top = 75
        Width = 23
        Height = 22
        Caption = '#'
        OnClick = SpeedButton2Click
      end
      object SpeedButton3: TSpeedButton
        Left = 672
        Top = 35
        Width = 23
        Height = 22
        Caption = '#'
        OnClick = SpeedButton3Click
      end
      object SpeedButton4: TSpeedButton
        Left = 672
        Top = 75
        Width = 23
        Height = 22
        Caption = '#'
        OnClick = SpeedButton4Click
      end
      object DBLookupComboBoxPavilhao: TDBLookupComboBox
        Left = 74
        Top = 35
        Width = 286
        Height = 21
        KeyField = 'id_pavilhao'
        ListField = 'pavilhao'
        ListSource = DsPavilhao
        TabOrder = 0
        OnClick = DBLookupComboBoxPavilhaoClick
      end
      object DBLookupComboBoxGaleria: TDBLookupComboBox
        Left = 74
        Top = 75
        Width = 286
        Height = 21
        KeyField = 'ID_GALERIA'
        ListField = 'GALERIA'
        ListSource = DsGaleria
        TabOrder = 1
        OnClick = DBLookupComboBoxGaleriaClick
      end
      object DBLookupComboBoxCela: TDBLookupComboBox
        Left = 386
        Top = 75
        Width = 286
        Height = 21
        KeyField = 'ID_CELA'
        ListField = 'CELA'
        ListSource = DsCela
        TabOrder = 2
      end
      object DBLookupComboBoxSolario: TDBLookupComboBox
        Left = 386
        Top = 35
        Width = 286
        Height = 21
        KeyField = 'ID_SOLARIO'
        ListField = 'SOLARIO'
        ListSource = DsSolario
        TabOrder = 3
        OnClick = DBLookupComboBoxSolarioClick
      end
    end
    object BitBtn1: TBitBtn
      Left = 240
      Top = 112
      Width = 100
      Height = 25
      TabOrder = 1
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 416
      Top = 112
      Width = 100
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
      Kind = bkCancel
    end
  end
  inherited PanelTitulo: TPanel
    Width = 751
    inherited Image2: TImage
      Width = 749
    end
  end
  object SqlPavilhao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_up'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'select * from pavilhao'
      'where id_up = :id_up'
      'order by pavilhao')
    SQLConnection = DM.SQLConnect
    Left = 608
    Top = 5
  end
  object DspPavilhao: TDataSetProvider
    DataSet = SqlPavilhao
    Left = 640
    Top = 5
  end
  object CdsPavilhao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPavilhao'
    Left = 672
    Top = 5
  end
  object DsPavilhao: TDataSource
    DataSet = CdsPavilhao
    Left = 704
    Top = 5
  end
  object DsGaleria: TDataSource
    DataSet = CdsGaleria
    Left = 704
    Top = 48
  end
  object CdsGaleria: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'idpavilhao'
    MasterFields = 'id_pavilhao'
    MasterSource = DsPavilhao
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspGaleria'
    Left = 672
    Top = 40
  end
  object DspGaleria: TDataSetProvider
    DataSet = SqlGaleria
    Left = 640
    Top = 48
  end
  object SqlGaleria: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_pavilhao'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'select * from galeria'
      'where idpavilhao=:id_pavilhao'
      'order by galeria')
    SQLConnection = DM.SQLConnect
    Left = 608
    Top = 48
  end
  object SqlSolario: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_galeria'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'select * from solario'
      'where idgaleria=:id_galeria'
      'order by solario')
    SQLConnection = DM.SQLConnect
    Left = 608
    Top = 96
  end
  object DspSolario: TDataSetProvider
    DataSet = SqlSolario
    Left = 640
    Top = 96
  end
  object CdsSolario: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'idgaleria'
    MasterFields = 'id_galeria'
    MasterSource = DsGaleria
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspSolario'
    Left = 680
    Top = 96
  end
  object DsSolario: TDataSource
    DataSet = CdsSolario
    Left = 704
    Top = 96
  end
  object DsCela: TDataSource
    DataSet = CdsCela
    Left = 704
    Top = 144
  end
  object CdsCela: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'idsolario'
    MasterFields = 'id_solario'
    MasterSource = DsSolario
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspCela'
    Left = 672
    Top = 144
  end
  object DspCela: TDataSetProvider
    DataSet = SqlCela
    Left = 640
    Top = 144
  end
  object SqlCela: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_solario'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'select * from cela'
      'where idsolario=:id_solario'
      'order by cela')
    SQLConnection = DM.SQLConnect
    Left = 608
    Top = 144
  end
  object SQLconspadrao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnect
    Left = 480
  end
  object Dspconspadrao: TDataSetProvider
    DataSet = SQLconspadrao
    Left = 508
  end
  object Cdsconspadrao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dspconspadrao'
    Left = 536
  end
  object Dsconspadrao: TDataSource
    DataSet = Cdsconspadrao
    Left = 564
  end
end
