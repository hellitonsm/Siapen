inherited FrmMensagemBancoDados: TFrmMensagemBancoDados
  Width = 1078
  Height = 444
  Caption = 'Mensagem do Banco de Dados'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelGeral: TPanel
    Width = 1062
    Height = 365
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1060
      Height = 363
      Align = alClient
      DataSource = DsMensagemBancoDados
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  inherited PanelTitulo: TPanel
    Width = 1062
    TabOrder = 0
    inherited Image2: TImage
      Width = 1060
    end
  end
  object SqlMensagemBancoDados: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from MENSAGEM_BANCO_DADOS')
    SQLConnection = DM.SQLConnect
    Left = 48
    Top = 65
  end
  object DpsMensagemBancoDados: TDataSetProvider
    DataSet = SqlMensagemBancoDados
    Left = 80
    Top = 65
  end
  object CdsMensagemBancoDados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DpsMensagemBancoDados'
    Left = 112
    Top = 65
  end
  object DsMensagemBancoDados: TDataSource
    DataSet = CdsMensagemBancoDados
    Left = 144
    Top = 65
  end
end
