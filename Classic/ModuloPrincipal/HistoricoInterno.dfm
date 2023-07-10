object FrmHistoricoInterno: TFrmHistoricoInterno
  Left = 301
  Top = 95
  Width = 767
  Height = 618
  ActiveControl = Editlocalizar
  Caption = 'Hist'#243'rico / Ficha Disciplinar'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 751
    Height = 149
    ActivePage = TabSheet1
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TabWidth = 120
    object TabSheet1: TTabSheet
      Caption = 'Internos (as)'
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 45
        Height = 13
        Caption = 'Localizar:'
      end
      object RadioGroupStatus: TRadioGroup
        Left = 565
        Top = 0
        Width = 160
        Height = 40
        Caption = 'Filtro'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Ativo'
          'Inativo')
        TabOrder = 0
        OnClick = RadioGroupStatusClick
      end
      object DBGridConsulta: TDBGrid
        Left = 0
        Top = 42
        Width = 750
        Height = 78
        Align = alCustom
        DataSource = DsConsulta
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGridConsultaDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME_INTERNO'
            Width = 422
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SIGLA'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAVILHAO'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SOLARIO'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CELA'
            Width = 59
            Visible = True
          end>
      end
      object Editlocalizar: TEdit
        Left = 50
        Top = 0
        Width = 500
        Height = 32
        CharCase = ecUpperCase
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnChange = EditlocalizarChange
      end
    end
  end
  object PanelPrincipal: TPanel
    Left = 0
    Top = 149
    Width = 751
    Height = 431
    Align = alClient
    Caption = 'PanelPrincipal'
    Enabled = False
    TabOrder = 1
    object Label53: TLabel
      Left = 18
      Top = 16
      Width = 62
      Height = 13
      Caption = 'Data do Fato'
    end
    object Label54: TLabel
      Left = 114
      Top = 16
      Width = 211
      Height = 13
      Caption = 'Descri'#231#227'o do Hist'#243'rico para Ficha Disciplinar'
    end
    object DateTimePickerHistorico: TDateTimePicker
      Left = 18
      Top = 33
      Width = 91
      Height = 21
      Date = 0.302563541663403200
      Time = 0.302563541663403200
      TabOrder = 0
    end
    object MemoDescricao: TMemo
      Left = 113
      Top = 34
      Width = 641
      Height = 105
      TabOrder = 1
    end
    object Button1: TButton
      Left = 8
      Top = 106
      Width = 98
      Height = 25
      Caption = 'Incluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object RadioGroupSetor: TRadioGroup
      Left = 11
      Top = 139
      Width = 743
      Height = 39
      Caption = 'Setor respons'#225'vel:'
      Columns = 7
      ItemIndex = 0
      Items.Strings = (
        'Disciplina'
        'Jurid'#237'co'
        'Sa'#250'de'
        'Psicologia'
        'Assist. Social'
        'Educa'#231#227'o'
        'Trabalho')
      TabOrder = 3
    end
    object DBGrid1: TDBGrid
      Left = 10
      Top = 181
      Width = 744
      Height = 129
      DataSource = DSHISTORICO_interno
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'DATA_HORA'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SETOR'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Visible = True
        end>
    end
    object DBMemo1: TDBMemo
      Left = 10
      Top = 315
      Width = 744
      Height = 121
      DataField = 'DESCRICAO'
      DataSource = DSHISTORICO_interno
      TabOrder = 5
    end
  end
  object DSHISTORICO_interno: TDataSource
    DataSet = CDSHISTORICO_interno
    Left = 403
    Top = 203
  end
  object CDSHISTORICO_interno: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDINTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsConsulta
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPHISTORICO_interno'
    Left = 376
    Top = 203
  end
  object DSPHISTORICO_interno: TDataSetProvider
    DataSet = SQLHISTORICO_interno
    Left = 347
    Top = 203
  end
  object SQLHISTORICO_interno: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from historico_interno'
      'where idinterno=:id_interno'
      'order by data_hora desc')
    SQLConnection = DM.SQLConnect
    Left = 319
    Top = 203
  end
  object DsConsulta: TDataSource
    DataSet = CdsConsulta
    OnDataChange = DsConsultaDataChange
    Left = 573
    Top = 199
  end
  object CdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dspconsulta'
    Left = 545
    Top = 199
  end
  object Dspconsulta: TDataSetProvider
    DataSet = SqlConsulta
    Left = 517
    Top = 199
  end
  object SqlConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select '
      '    interno.nome_interno,'
      '    interno.mae,'
      '    interno.pai,'
      '    unidade_penal.sigla,'
      '    interno.outro_nome,'
      '    pavilhao.pavilhao,'
      '    solario.solario,'
      '    cela.cela,'
      '    interno.id_interno,'
      '    coalesce(interno.st,'#39'I'#39') as st,'
      '    interno.vulgo,'
      'interno.idpavilhao,'
      'interno.idgaleria,'
      'interno.idsolario'
      'from interno'
      
        '  inner join unidade_penal on (unidade_penal.id_up = interno.id_' +
        'up)'
      
        '  inner join pavilhao on (pavilhao.id_pavilhao = interno.idpavil' +
        'hao)'
      '  inner join galeria on (galeria.id_galeria = interno.idgaleria)'
      '  inner join solario on (solario.id_solario = interno.idsolario)'
      '  inner join cela on (cela.id_cela = interno.idcela)'
      'WHERE INTERNO.ID_INTERNO = -1'
      ' order by interno.nome_interno ')
    SQLConnection = DM.SQLConnect
    Left = 489
    Top = 199
  end
  object SqlSelectInterno: TSQLQuery
    Params = <>
    SQL.Strings = (
      'select '
      '    interno.nome_interno,'
      '    interno.mae,'
      '    interno.pai,'
      '    unidade_penal.sigla,'
      '    interno.outro_nome,'
      '    pavilhao.pavilhao,'
      '    solario.solario,'
      '    cela.cela,'
      '    interno.id_interno,'
      '    coalesce(interno.st,'#39'I'#39') as st,'
      '    interno.vulgo,'
      'interno.idpavilhao,'
      'interno.idgaleria,'
      'interno.idsolario'
      'from interno'
      
        '  inner join unidade_penal on (unidade_penal.id_up = interno.id_' +
        'up)'
      
        '  inner join pavilhao on (pavilhao.id_pavilhao = interno.idpavil' +
        'hao)'
      '  inner join galeria on (galeria.id_galeria = interno.idgaleria)'
      '  inner join solario on (solario.id_solario = interno.idsolario)'
      '  inner join cela on (cela.id_cela = interno.idcela)')
    Left = 640
    Top = 202
  end
end
