object FrmRecuperarFotoArquivo: TFrmRecuperarFotoArquivo
  Left = 280
  Top = 257
  Caption = 'Recuperar Fotos de Arquivo'
  ClientHeight = 247
  ClientWidth = 696
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 24
    Width = 30
    Height = 13
    Caption = 'Pasta:'
  end
  object Label2: TLabel
    Left = 48
    Top = 72
    Width = 27
    Height = 13
    Caption = 'Total:'
  end
  object EditPasta: TEdit
    Left = 40
    Top = 40
    Width = 609
    Height = 21
    TabOrder = 0
    Text = '\\10.91.194.18\sipen\'
  end
  object Button1: TButton
    Left = 240
    Top = 208
    Width = 169
    Height = 25
    Caption = 'Executar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object DBImageFOTO: TDBImage
    Left = 272
    Top = 72
    Width = 105
    Height = 105
    DataField = 'FOTO'
    DataSource = DsExecute
    TabOrder = 1
  end
  object CheckBox1: TCheckBox
    Left = 392
    Top = 128
    Width = 97
    Height = 17
    Caption = 'Parar'
    TabOrder = 2
  end
  object DsExecute: TDataSource
    DataSet = CdsExecute
    Left = 516
  end
  object CdsExecute: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPExecute'
    Left = 488
  end
  object DspExecute: TDataSetProvider
    DataSet = SqlExecute
    Left = 460
  end
  object DsInterno: TDataSource
    DataSet = CdsInterno
    Left = 356
  end
  object CdsInterno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspInterno'
    Left = 328
  end
  object DspInterno: TDataSetProvider
    DataSet = SqlInterno
    Left = 300
  end
  object SqlExecute: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT ID_INTERNO,'
      'FOTO'
      'FROM INTERNO'
      'WHERE ID_INTERNO=:ID_INTERNO')
    Left = 432
    ParamData = <
      item
        Name = 'ID_INTERNO'
        ParamType = ptInput
      end>
  end
  object SqlInterno: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT id_interno, rgi, st'
      'FROM INTERNO'
      'WHERE FOTO IS NULL'
      'order by st')
    Left = 272
  end
end
