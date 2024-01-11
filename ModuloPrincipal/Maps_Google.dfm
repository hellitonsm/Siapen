object FrmMapas_Google: TFrmMapas_Google
  Left = 173
  Top = 178
  Caption = 'Localizar Endere'#231'os no Mapas'
  ClientHeight = 508
  ClientWidth = 924
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  WindowState = wsMaximized
  OnCreate = FormCreate
  TextHeight = 13
  object WebBrowser1: TWebBrowser
    Left = 0
    Top = 145
    Width = 924
    Height = 363
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 854
    ExplicitHeight = 323
    ControlData = {
      4C000000805F0000842500000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 924
    Height = 145
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 120
    object Label1: TLabel
      Left = 9
      Top = 11
      Width = 76
      Height = 27
      Caption = 'Interno:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 89
      Top = 17
      Width = 505
      Height = 21
      KeyField = 'ID_INTERNO'
      ListField = 'NOME_INTERNO'
      ListSource = DsInterno
      TabOrder = 0
      OnClick = DBLookupComboBox1Click
    end
    object Button1: TButton
      Left = 608
      Top = 80
      Width = 153
      Height = 33
      Caption = 'Localiza Endere'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object Memoendereco: TMemo
      Left = 9
      Top = 49
      Width = 585
      Height = 65
      Lines.Strings = (
        '')
      TabOrder = 1
    end
  end
  object DspInterno: TDataSetProvider
    DataSet = SqlInterno
    Left = 684
    Top = 176
  end
  object CdsInterno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspInterno'
    Left = 712
    Top = 176
  end
  object DsInterno: TDataSource
    DataSet = CdsInterno
    Left = 740
    Top = 176
  end
  object SqlInterno: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select i.id_interno, i.nome_interno,'
      
        'i.endereco||'#39', '#39'||i.numero||'#39' '#39'||c.cidade||'#39', '#39'||c.uf as "Endere' +
        'co"'
      'from interno i'
      'left join cidade c on (i.idcidade = c.id_cidade)'
      'where coalesce(nome_interno,'#39#39')<>'#39#39
      'order by i.nome_interno')
    Left = 656
    Top = 176
  end
end
