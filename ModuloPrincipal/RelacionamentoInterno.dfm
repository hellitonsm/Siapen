inherited FrmRelacionamentoInterno: TFrmRelacionamentoInterno
  Left = 225
  Top = 145
  Width = 843
  Height = 583
  Caption = 'Vis'#227'o Grafica de Relacionamento'
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelGeral: TPanel
    Width = 827
    Height = 504
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 825
      Height = 502
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      TabWidth = 100
      object TabSheet1: TTabSheet
        Caption = 'Sele'#231#227'o'
        object Image1: TImage
          Left = 0
          Top = 48
          Width = 817
          Height = 426
          Align = alBottom
          Proportional = True
          Stretch = True
        end
        object Label33: TLabel
          Left = 8
          Top = 2
          Width = 69
          Height = 13
          Caption = 'INTERNO(AS)'
        end
        object Image4: TImage
          Left = 16
          Top = 56
          Width = 105
          Height = 105
          Proportional = True
          Stretch = True
          OnClick = Image4Click
        end
        object BtnVisualizar: TButton
          Left = 392
          Top = 14
          Width = 75
          Height = 25
          Caption = 'Visualizar'
          TabOrder = 1
          OnClick = BtnVisualizarClick
        end
        object Button1: TButton
          Left = 480
          Top = 14
          Width = 75
          Height = 25
          Caption = 'Relat'#243'rio'
          TabOrder = 2
          OnClick = Button1Click
        end
        object DBLookupComboBoxInterno: TDBLookupComboBox
          Left = 8
          Top = 19
          Width = 377
          Height = 21
          KeyField = 'ID_INTERNO'
          ListField = 'NOME_INTERNO'
          ListSource = DsInterno
          TabOrder = 0
          OnClick = DBLookupComboBoxInternoClick
        end
        object DBImageFOTOInterno: TDBImage
          Left = 146
          Top = 53
          Width = 135
          Height = 127
          BorderStyle = bsNone
          DataField = 'FOTO'
          DataSource = DsListaInterno
          Stretch = True
          TabOrder = 3
          Visible = False
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Script - GDL'
        ImageIndex = 1
        object Memo1: TMemo
          Left = 0
          Top = 0
          Width = 817
          Height = 474
          Align = alClient
          TabOrder = 0
          WantReturns = False
        end
        object Button2: TButton
          Left = 736
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Executa'
          TabOrder = 1
          OnClick = Button2Click
        end
      end
    end
    object ProgressBar1: TProgressBar
      Left = 593
      Top = 3
      Width = 225
      Height = 17
      TabOrder = 1
    end
  end
  inherited PanelTitulo: TPanel
    Width = 827
    TabOrder = 0
    inherited Image2: TImage
      Width = 825
    end
  end
  object SqlRelacionamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM SP_RELACIONAMENTO_INTERNO (1032)')
    SQLConnection = DM.SQLConnect
    Left = 672
    Top = 145
  end
  object Blocos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 600
    object Blocosnome: TStringField
      FieldName = 'nome'
      Size = 100
    end
    object Blocoscaption: TStringField
      FieldName = 'caption'
      Size = 1000
    end
    object Blocosnivel: TStringField
      FieldName = 'nivel'
    end
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
      'SELECT id_interno, nome_interno'
      'FROM INTERNO'
      'WHERE ID_UP = :ID_UP'
      'and coalesce(nome_interno,'#39#39')<>'#39#39
      'AND ST = '#39'A'#39
      'ORDER BY NOME_INTERNO')
    SQLConnection = DM.SQLConnect
    Left = 16
    Top = 272
  end
  object DspInterno: TDataSetProvider
    DataSet = SqlInterno
    Left = 44
    Top = 272
  end
  object CdsInterno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspInterno'
    Left = 72
    Top = 272
  end
  object DsInterno: TDataSource
    DataSet = CdsInterno
    Left = 100
    Top = 272
  end
  object SqlListaInterno: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT id_interno, foto'
      'FROM INTERNO')
    SQLConnection = DM.SQLConnect
    Left = 24
    Top = 328
  end
  object DspListaInterno: TDataSetProvider
    DataSet = SqlListaInterno
    Left = 52
    Top = 328
  end
  object CdsListaInterno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspListaInterno'
    Left = 80
    Top = 328
  end
  object DsListaInterno: TDataSource
    DataSet = CdsListaInterno
    Left = 108
    Top = 328
  end
end
