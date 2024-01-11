inherited FrmFiltroCela: TFrmFiltroCela
  Caption = 'Filtrar Cela'
  ClientHeight = 309
  ClientWidth = 777
  OnShow = FormShow
  ExplicitWidth = 789
  ExplicitHeight = 347
  TextHeight = 13
  inherited PanelGeral: TPanel
    Width = 777
    Height = 268
    ExplicitWidth = 773
    ExplicitHeight = 267
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 775
      Height = 105
      Align = alTop
      Caption = 'Localiza'#231#227'o padr'#227'o para todos desta transfer'#234'ncia:'
      TabOrder = 0
      ExplicitWidth = 771
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
      end
      object SpeedButton4: TSpeedButton
        Left = 672
        Top = 75
        Width = 23
        Height = 22
        Caption = '#'
      end
      object DBLookupComboBoxCela: TComboBox
        Left = 386
        Top = 75
        Width = 286
        Height = 21
        TabOrder = 2
      end
      object DBLookupComboBoxSolario: TComboBox
        Left = 386
        Top = 35
        Width = 286
        Height = 21
        TabOrder = 3
        OnChange = DBLookupComboBoxSolarioChange
        OnClick = DBLookupComboBoxSolarioClick
      end
      object DBLookupComboBoxPavilhao: TComboBox
        Left = 74
        Top = 35
        Width = 286
        Height = 21
        DropDownWidth = 286
        TabOrder = 0
        OnChange = DBLookupComboBoxPavilhaoChange
      end
      object DBLookupComboBoxGaleria: TComboBox
        Left = 74
        Top = 75
        Width = 286
        Height = 21
        DropDownWidth = 286
        TabOrder = 1
        OnChange = DBLookupComboBoxGaleriaChange
        OnClick = DBLookupComboBoxGaleriaClick
        OnEnter = DBLookupComboBoxGaleriaEnter
      end
    end
    object BitBtn1: TBitBtn
      Left = 240
      Top = 112
      Width = 100
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 416
      Top = 112
      Width = 100
      Height = 25
      Caption = 'Cancelar'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 2
    end
  end
  inherited PanelTitulo: TPanel
    Width = 777
    ExplicitWidth = 773
    inherited Image2: TImage
      Width = 775
      ExplicitWidth = 749
    end
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
    DataSet = SqlPavilhao
    OnStateChange = DsPavilhaoStateChange
    OnUpdateData = DsPavilhaoUpdateData
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
  object SqlPavilhao: TFDQuery
    ObjectView = False
    BeforeExecute = SqlPavilhaoBeforeExecute
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from pavilhao'
      'where id_up = :id_up and pavilhao <> '#39#39
      'order by pavilhao')
    Left = 608
    Top = 5
    ParamData = <
      item
        Name = 'ID_UP'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object SqlGaleria: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from galeria'
      'where idpavilhao=:id_pavilhao'
      'order by galeria')
    Left = 608
    Top = 48
    ParamData = <
      item
        Name = 'ID_PAVILHAO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object SqlSolario: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from solario'
      'where idgaleria=:id_galeria'
      'order by solario')
    Left = 608
    Top = 96
    ParamData = <
      item
        Name = 'ID_GALERIA'
        ParamType = ptInput
      end>
  end
  object SqlCela: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from cela'
      'where idsolario=:id_solario'
      'order by cela')
    Left = 608
    Top = 144
    ParamData = <
      item
        Name = 'ID_SOLARIO'
        ParamType = ptInput
      end>
  end
  object SQLconspadrao: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    Left = 480
  end
end
