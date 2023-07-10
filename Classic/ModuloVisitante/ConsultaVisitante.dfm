object FrmConsultaVisitante: TFrmConsultaVisitante
  Left = 191
  Top = 227
  Width = 953
  Height = 351
  Caption = 'Consulta Visitante'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    937
    313)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 12
    Width = 45
    Height = 13
    Caption = 'Localizar:'
  end
  object EditLocalizar: TEdit
    Left = 56
    Top = 6
    Width = 573
    Height = 32
    Anchors = [akLeft, akTop, akRight]
    CharCase = ecUpperCase
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object RadioGroupStatus: TRadioGroup
    Left = 712
    Top = -2
    Width = 221
    Height = 46
    Anchors = [akTop, akRight]
    Caption = 'Filtro'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Interno'
      'Visitantes'
      'Visitas Realizadas'
      'Prontu'#225'rio Interno')
    TabOrder = 2
    OnClick = RadioGroupStatusClick
  end
  object DBGridConsulta: TDBGrid
    Left = 11
    Top = 48
    Width = 918
    Height = 221
    Align = alCustom
    DataSource = DsConsulta
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME_VISITANTE'
        Title.Caption = 'Visitante'
        Width = 244
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_INTERNO'
        Title.Caption = 'Interno'
        Width = 229
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRAU_PARENTESCO'
        Title.Caption = 'Grau Parentesco'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO_CARTEIRINHA'
        Title.Caption = 'Carteirinha'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_VISITA'
        Title.Caption = 'Data Visita'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEXO'
        Title.Caption = 'Sexo'
        Width = 34
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sigla'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 424
    Top = 272
    Width = 75
    Height = 25
    Caption = '&Sair'
    TabOrder = 6
    Kind = bkIgnore
  end
  object DBGrid1: TDBGrid
    Left = 12
    Top = 48
    Width = 913
    Height = 221
    DataSource = DSCONSULTAINTERNO
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME_INTERNO'
        Title.Caption = 'Interno'
        Width = 230
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VISITANTE'
        Title.Caption = 'Visitante'
        Width = 190
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRAU_PARENTESCO'
        Title.Caption = 'Grau Parentesco'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEXO'
        Title.Caption = 'Sexo'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sigla'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_ULT_VISITA'
        Title.Caption = 'Data Ult Visita'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RGI'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Title.Caption = 'S'
        Width = 15
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 12
    Top = 48
    Width = 917
    Height = 221
    DataSource = dsvisitante
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'VISITANTE'
        Title.Caption = 'Visitante'
        Width = 224
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRAU_PARENTESCO'
        Title.Caption = 'Grau Parentesco'
        Width = 132
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_INTERNO'
        Title.Caption = 'Interno'
        Width = 219
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEXO'
        Title.Caption = 'Sexo'
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sigla'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Title.Caption = 'Status'
        Width = 57
        Visible = True
      end>
  end
  object btnBuscar: TButton
    Left = 636
    Top = 4
    Width = 69
    Height = 33
    Caption = 'Buscar'
    TabOrder = 1
    OnClick = btnBuscarClick
  end
  object SqlConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select fist 50 i.nome_interno, nome_visitante, g.grau_parentesco' +
        ', m.numero_carteirinha, m.data_visita, m.sexo, i.id_up'
      'from mov_diario_visitantes m'
      
        ' inner join visitante_interno v on (m.id_visitante = v.id_visita' +
        'nte)'
      
        ' inner join grau_parentesco g on (g.id_grau_parentesco = v.id_gr' +
        'au_parentesco)'
      ' inner join interno i on (i.id_interno = v.id_interno)'
      'order by nome_interno')
    SQLConnection = DM.SQLConnect
    Left = 24
    Top = 256
  end
  object Dspconsulta: TDataSetProvider
    DataSet = SqlConsulta
    Left = 52
    Top = 256
  end
  object CdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dspconsulta'
    Left = 80
    Top = 256
    object CdsConsultaNOME_VISITANTE: TStringField
      DisplayLabel = 'VISITANTE'
      FieldName = 'NOME_VISITANTE'
      Size = 50
    end
    object CdsConsultaNOME_INTERNO: TStringField
      DisplayLabel = 'INTERNO'
      FieldName = 'NOME_INTERNO'
      Size = 50
    end
    object CdsConsultaGRAU_PARENTESCO: TStringField
      DisplayLabel = 'PARENTESCO'
      FieldName = 'GRAU_PARENTESCO'
      Size = 50
    end
    object CdsConsultaNUMERO_CARTEIRINHA: TStringField
      DisplayLabel = 'N'#186' CART'#195'O'
      FieldName = 'NUMERO_CARTEIRINHA'
      Size = 30
    end
    object CdsConsultaDATA_VISITA: TSQLTimeStampField
      DisplayLabel = 'DATA VISITA'
      FieldName = 'DATA_VISITA'
    end
    object CdsConsultaSEXO: TStringField
      FieldName = 'SEXO'
      Size = 11
    end
    object CdsConsultaID_UP: TIntegerField
      FieldName = 'ID_UP'
    end
    object CdsConsultaSigla: TStringField
      FieldKind = fkLookup
      FieldName = 'Sigla'
      LookupDataSet = DM.CdsUP
      LookupKeyFields = 'ID_UP'
      LookupResultField = 'NOME_UP'
      KeyFields = 'ID_UP'
      Size = 10
      Lookup = True
    end
  end
  object DsConsulta: TDataSource
    DataSet = CdsConsulta
    Left = 108
    Top = 256
  end
  object SqlSelectVisita: TSQLQuery
    Params = <>
    SQL.Strings = (
      'select first 50  '
      
        'i.nome_interno, m.nome_visitante, g.grau_parentesco, m.numero_ca' +
        'rteirinha, m.data_visita, m.sexo, I.id_up'
      'from mov_diario_visitantes m'
      
        ' inner join visitante_interno v on (m.id_visitante = v.id_visita' +
        'nte)'
      
        ' inner join grau_parentesco g on (g.id_grau_parentesco = v.id_gr' +
        'au_parentesco)'
      ' inner join interno i on (i.id_interno = v.id_interno)'
      '')
    Left = 144
    Top = 255
  end
  object DSPCONSULTAINTERNO: TDataSetProvider
    DataSet = SQLCONSULTAINTERNO
    Left = 260
    Top = 256
  end
  object SQLCONSULTAINTERNO: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select first 50 i.nome_interno, v.visitante, g.grau_parentesco, ' +
        'v.sexo,'
      ' i.id_up, v.data_ult_visita, i.rgi, v.status'
      'from visitante v'
      
        ' inner join visitante_interno vi on (vi.id_visitante = v.id_visi' +
        'tante)'
      
        ' inner join grau_parentesco g on (g.id_grau_parentesco = vi.id_g' +
        'rau_parentesco)'
      ' inner join interno i on (i.id_interno = vi.id_interno)'
      'order by visitante ')
    SQLConnection = DM.SQLConnect
    Left = 232
    Top = 260
    object SQLCONSULTAINTERNONOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 100
    end
    object SQLCONSULTAINTERNOVISITANTE: TStringField
      FieldName = 'VISITANTE'
      Size = 50
    end
    object SQLCONSULTAINTERNOGRAU_PARENTESCO: TStringField
      FieldName = 'GRAU_PARENTESCO'
      Size = 50
    end
    object SQLCONSULTAINTERNOSEXO: TStringField
      FieldName = 'SEXO'
      Size = 50
    end
    object SQLCONSULTAINTERNOID_UP: TIntegerField
      FieldName = 'ID_UP'
    end
    object SQLCONSULTAINTERNODATA_ULT_VISITA: TSQLTimeStampField
      FieldName = 'DATA_ULT_VISITA'
    end
    object SQLCONSULTAINTERNORGI: TStringField
      FieldName = 'RGI'
      Size = 30
    end
    object SQLCONSULTAINTERNOSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
  end
  object CDSinterno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCONSULTAINTERNO'
    Left = 288
    Top = 256
    object CDSinternoVISITANTE: TStringField
      FieldName = 'VISITANTE'
      Size = 50
    end
    object CDSinternoGRAU_PARENTESCO: TStringField
      DisplayLabel = 'PARENTESCO'
      FieldName = 'GRAU_PARENTESCO'
      Size = 50
    end
    object CDSinternoSEXO: TStringField
      FieldName = 'SEXO'
      Size = 10
    end
    object CDSinternoNOME_INTERNO: TStringField
      DisplayLabel = 'INTERNO'
      FieldName = 'NOME_INTERNO'
      Size = 50
    end
    object CDSinternoID_UP: TIntegerField
      FieldName = 'ID_UP'
    end
    object CDSinternoSigla: TStringField
      FieldKind = fkLookup
      FieldName = 'Sigla'
      LookupDataSet = DM.CdsUP
      LookupKeyFields = 'ID_UP'
      LookupResultField = 'NOME_UP'
      KeyFields = 'ID_UP'
      Size = 10
      Lookup = True
    end
    object CDSinternoDATA_ULT_VISITA: TSQLTimeStampField
      FieldName = 'DATA_ULT_VISITA'
    end
    object CDSinternoRGI: TStringField
      FieldName = 'RGI'
      Size = 30
    end
    object CDSinternoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
  end
  object DSCONSULTAINTERNO: TDataSource
    DataSet = CDSinterno
    Left = 316
    Top = 256
  end
  object SqlSelectInterno: TSQLQuery
    Params = <>
    SQL.Strings = (
      'select first 50  '
      'i.nome_interno, v.visitante, g.grau_parentesco, v.sexo, I.id_up,'
      ' v.data_ult_visita, i.rgi, v.status'
      'from visitante v'
      
        ' inner join visitante_interno vi on (vi.id_visitante = v.id_visi' +
        'tante)'
      
        ' inner join grau_parentesco g on (g.id_grau_parentesco = vi.id_g' +
        'rau_parentesco)'
      ' inner join interno i on (i.id_interno = vi.id_interno)'
      '')
    Left = 351
    Top = 257
  end
  object SQLvisitante: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select first 50'
      
        'i.nome_interno, v.visitante, g.grau_parentesco, v.numero_carteir' +
        'inha,'
      'v.sexo, I.id_up, v.status'
      'from visitante v'
      
        ' inner join visitante_interno vi on (v.id_visitante = vi.id_visi' +
        'tante)'
      
        ' inner join grau_parentesco g on (g.id_grau_parentesco = vi.id_g' +
        'rau_parentesco)'
      ' inner join interno i on (i.id_interno = vi.id_interno)')
    SQLConnection = DM.SQLConnect
    Left = 680
    Top = 256
    object SQLvisitanteNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 100
    end
    object SQLvisitanteVISITANTE: TStringField
      FieldName = 'VISITANTE'
      Size = 50
    end
    object SQLvisitanteGRAU_PARENTESCO: TStringField
      FieldName = 'GRAU_PARENTESCO'
      Size = 50
    end
    object SQLvisitanteNUMERO_CARTEIRINHA: TStringField
      FieldName = 'NUMERO_CARTEIRINHA'
      Size = 30
    end
    object SQLvisitanteSEXO: TStringField
      FieldName = 'SEXO'
      Size = 50
    end
    object SQLvisitanteID_UP: TIntegerField
      FieldName = 'ID_UP'
    end
    object SQLvisitanteSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
  end
  object dspvisitante: TDataSetProvider
    DataSet = SQLvisitante
    Left = 708
    Top = 256
  end
  object cdsvisitante: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspvisitante'
    Left = 736
    Top = 256
    object cdsvisitanteNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 100
    end
    object cdsvisitanteVISITANTE: TStringField
      FieldName = 'VISITANTE'
      Size = 50
    end
    object cdsvisitanteGRAU_PARENTESCO: TStringField
      FieldName = 'GRAU_PARENTESCO'
      Size = 50
    end
    object cdsvisitanteNUMERO_CARTEIRINHA: TStringField
      FieldName = 'NUMERO_CARTEIRINHA'
      Size = 30
    end
    object cdsvisitanteSEXO: TStringField
      FieldName = 'SEXO'
      Size = 50
    end
    object cdsvisitanteID_UP: TIntegerField
      FieldName = 'ID_UP'
    end
    object cdsvisitanteSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsvisitanteSigla: TStringField
      FieldKind = fkLookup
      FieldName = 'Sigla'
      LookupDataSet = DM.CdsUP
      LookupKeyFields = 'ID_UP'
      LookupResultField = 'NOME_UP'
      KeyFields = 'ID_UP'
      Size = 10
      Lookup = True
    end
  end
  object dsvisitante: TDataSource
    DataSet = cdsvisitante
    Left = 764
    Top = 256
  end
  object SQLselectvisitantes: TSQLQuery
    Params = <>
    SQL.Strings = (
      'select first 50  '
      
        'i.nome_interno, v.visitante, g.grau_parentesco, v.numero_carteir' +
        'inha,'
      'v.sexo, I.id_up, v.status'
      'from visitante v'
      
        ' inner join visitante_interno vi on (v.id_visitante = vi.id_visi' +
        'tante)'
      
        ' inner join grau_parentesco g on (g.id_grau_parentesco = vi.id_g' +
        'rau_parentesco)'
      ' inner join interno i on (i.id_interno = vi.id_interno)')
    Left = 808
    Top = 256
  end
end
