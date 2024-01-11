inherited FrmMensagemBancoDados: TFrmMensagemBancoDados
  Caption = 'Mensagem do Banco de Dados'
  ClientHeight = 208
  ClientWidth = 412
  OnShow = FormShow
  ExplicitWidth = 428
  ExplicitHeight = 247
  TextHeight = 13
  inherited PanelGeral: TPanel
    Width = 412
    Height = 167
    TabOrder = 1
    ExplicitWidth = 412
    ExplicitHeight = 167
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 410
      Height = 165
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
    Width = 412
    TabOrder = 0
    ExplicitWidth = 412
    inherited Image2: TImage
      Width = 410
      ExplicitWidth = 1060
    end
  end
  object SqlMensagemBancoDadosold: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from MENSAGEM_BANCO_DADOS')
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
  object SqlMensagemBancoDados: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from MENSAGEM_BANCO_DADOS'
      '')
    Left = 48
    Top = 129
  end
end
