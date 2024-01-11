object FrmConsultaInterno: TFrmConsultaInterno
  Left = 302
  Top = 492
  Caption = 'Consulta Interno'
  ClientHeight = 439
  ClientWidth = 1182
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 137
    Top = 0
    Width = 1045
    Height = 439
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabHeight = 30
    TabOrder = 1
    TabWidth = 120
    OnChange = PageControl1Change
    ExplicitWidth = 1041
    ExplicitHeight = 438
    object TabSheet1: TTabSheet
      Caption = 'Nome'
      object Label1: TLabel
        Left = 10
        Top = 15
        Width = 45
        Height = 13
        Caption = 'Localizar:'
      end
      object RadioGroupStatus: TRadioGroup
        Left = 575
        Top = 15
        Width = 186
        Height = 35
        Caption = 'Filtro'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Ativo'
          'Todos')
        TabOrder = 2
        OnClick = RadioGroupStatusClick
      end
      object DBGridConsulta: TDBGrid
        Left = 10
        Top = 98
        Width = 1000
        Height = 200
        Align = alCustom
        DataSource = DsConsulta
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 3
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
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Lucida Console'
            Font.Style = [fsBold]
            Title.Caption = 'Nome do Interno'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RGI'
            Title.Caption = 'Prontu'#225'rio'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MAE'
            Title.Caption = 'M'#227'e'
            Width = 144
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO_ROUPA'
            Title.Caption = 'Roupa'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SIGLA'
            Title.Caption = 'Sigla'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAVILHAO'
            Title.Caption = 'Pavilh'#227'o'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GALERIA'
            Title.Caption = 'Galeria'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SOLARIO'
            Title.Caption = 'Solario'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CELA'
            Title.Caption = 'Cela'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ST'
            Title.Caption = 'Status'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EM_TRANSITO'
            Title.Caption = 'Transito'
            Width = 76
            Visible = True
          end>
      end
      object BitBtn1: TBitBtn
        Left = 680
        Top = 308
        Width = 75
        Height = 25
        Caption = '&Sair'
        Kind = bkIgnore
        NumGlyphs = 2
        TabOrder = 4
      end
      object Editlocalizar: TEdit
        Left = 217
        Top = 15
        Width = 353
        Height = 32
        CharCase = ecUpperCase
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = Edit1Change
      end
      object RadioGroupTipoLocalizar: TRadioGroup
        Left = 56
        Top = 15
        Width = 155
        Height = 35
        Columns = 2
        ItemIndex = 1
        Items.Strings = (
          'Prontu'#225'rio'
          'Nome')
        TabOrder = 0
        OnClick = RadioGroupTipoLocalizarClick
      end
      object RadioGroupUnidade: TCheckListBox
        Left = 575
        Top = 56
        Width = 186
        Height = 25
        TabStop = False
        Columns = 2
        ItemHeight = 17
        Items.Strings = (
          'Na Unidade')
        ParentColor = True
        TabOrder = 5
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Vulgo'
      ImageIndex = 1
      object Label2: TLabel
        Left = 10
        Top = 15
        Width = 45
        Height = 13
        Caption = 'Localizar:'
      end
      object Editlocalizarvulgo: TEdit
        Left = 60
        Top = 15
        Width = 500
        Height = 32
        CharCase = ecUpperCase
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = EditlocalizarvulgoChange
      end
      object DBGridVulgo: TDBGrid
        Left = 10
        Top = 65
        Width = 1000
        Height = 200
        DataSource = dsvulgo
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGridVulgoDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'VULGO'
            Title.Caption = 'Vulgo'
            Width = 158
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_INTERNO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Lucida Console'
            Font.Style = [fsBold]
            Title.Caption = 'Nome do Interno'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RGI'
            Title.Caption = 'Prontu'#225'rio'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO_ROUPA'
            Title.Caption = 'Roupa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SIGLA'
            Title.Caption = 'Sigla'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAVILHAO'
            Title.Caption = 'Pavilh'#227'o'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GALERIA'
            Title.Caption = 'Galeria'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SOLARIO'
            Title.Caption = 'Solario'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CELA'
            Title.Caption = 'Cela'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Title.Caption = 'Status'
            Visible = True
          end>
      end
      object BitBtn3: TBitBtn
        Left = 680
        Top = 275
        Width = 75
        Height = 25
        Caption = '&Sair'
        Kind = bkIgnore
        NumGlyphs = 2
        TabOrder = 2
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Outro Nome'
      ImageIndex = 2
      DesignSize = (
        1037
        399)
      object Label3: TLabel
        Left = 10
        Top = 15
        Width = 45
        Height = 13
        Caption = 'Localizar:'
      end
      object Editlocalizaoutronome: TEdit
        Left = 60
        Top = 15
        Width = 757
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
        OnChange = EditLocalizarChange
      end
      object DBGridOutroNome: TDBGrid
        Left = 10
        Top = 65
        Width = 1000
        Height = 200
        DataSource = DSOUTRONOEM
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGridOutroNomeDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'OUTRO_NOME'
            Title.Caption = 'Outro Nome'
            Width = 297
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_INTERNO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Lucida Console'
            Font.Style = [fsBold]
            Title.Caption = 'Nome do Interno'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RGI'
            Title.Caption = 'Prontu'#225'rio'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO_ROUPA'
            Title.Caption = 'Roupa'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SIGLA'
            Title.Caption = 'Sigla'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAVILHAO'
            Title.Caption = 'Pavilh'#227'o'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GALERIA'
            Title.Caption = 'Galeria'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SOLARIO'
            Title.Caption = 'Solario'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CELA'
            Title.Caption = 'Cela'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Title.Caption = 'Status'
            Visible = True
          end>
      end
      object BitBtn2: TBitBtn
        Left = 680
        Top = 275
        Width = 75
        Height = 25
        Caption = '&Sair'
        Kind = bkIgnore
        NumGlyphs = 2
        TabOrder = 2
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Filia'#231#227'o'
      ImageIndex = 3
      OnShow = TabSheet4Show
      object Label4: TLabel
        Left = 10
        Top = 15
        Width = 45
        Height = 13
        Caption = 'Localizar:'
      end
      object DBGridFiliacao: TDBGrid
        Left = 10
        Top = 98
        Width = 1000
        Height = 200
        Align = alCustom
        DataSource = Dsfiliacao
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGridFiliacaoDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME_INTERNO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Lucida Console'
            Font.Style = [fsBold]
            Title.Caption = 'Nome do Interno'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MAE'
            Title.Caption = 'M'#227'e'
            Width = 218
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAI'
            Title.Caption = 'Pai'
            Width = 214
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RGI'
            Title.Caption = 'Prontu'#225'rio'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO_ROUPA'
            Title.Caption = 'Roupa'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SIGLA'
            Title.Caption = 'Sigla'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAVILHAO'
            Title.Caption = 'Pavilh'#227'o'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GALERIA'
            Title.Caption = 'Galeria'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SOLARIO'
            Title.Caption = 'Solario'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CELA'
            Title.Caption = 'Cela'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Title.Caption = 'Status'
            Visible = True
          end>
      end
      object BitBtn4: TBitBtn
        Left = 680
        Top = 307
        Width = 75
        Height = 25
        Caption = '&Sair'
        Kind = bkIgnore
        NumGlyphs = 2
        TabOrder = 3
      end
      object Editfiliacao: TEdit
        Left = 60
        Top = 15
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
        TabOrder = 0
        OnChange = EditfiliacaoChange
      end
      object RadioGroupfiliacao: TRadioGroup
        Left = 575
        Top = 5
        Width = 160
        Height = 40
        Caption = 'Filtro'
        Columns = 2
        Items.Strings = (
          'M'#227'e'
          'Pai')
        TabOrder = 1
        OnClick = RadioGroupfiliacaoClick
      end
      object RadioGroupFiltro: TRadioGroup
        Left = 743
        Top = 7
        Width = 160
        Height = 40
        Caption = 'Filtro'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Ativo'
          'Todos')
        TabOrder = 4
        OnClick = RadioGroupStatusClick
      end
    end
  end
  object PanelFoto: TPanel
    Left = 0
    Top = 0
    Width = 137
    Height = 439
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 438
    object DBImage1: TDBImage
      Left = 3
      Top = 101
      Width = 129
      Height = 137
      DataField = 'FOTO'
      DataSource = DsCadastro
      Stretch = True
      TabOrder = 0
    end
    object ToolBarSetores: TToolBar
      Left = 1
      Top = 416
      Width = 135
      Height = 22
      Align = alBottom
      AutoSize = True
      ButtonWidth = 119
      Caption = 'ToolBarSetores'
      Customizable = True
      Images = DM.ImageListNetworkI
      List = True
      ShowCaptions = True
      TabOrder = 2
      ExplicitTop = 415
      object ToolButtonJuridico: TToolButton
        Left = 0
        Top = 0
        Caption = 'Ficha do Interno.fr3'
        ImageIndex = 23
        OnClick = ToolButtonJuridicoClick
      end
    end
    object DBGrid1: TDBGrid
      Left = 3
      Top = 256
      Width = 129
      Height = 78
      DataSource = DsCadastro
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Visible = False
    end
  end
  object Dspconsulta: TDataSetProvider
    DataSet = SqlConsulta
    Left = 685
    Top = 46
  end
  object CdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dspconsulta'
    Left = 713
    Top = 46
  end
  object DsConsulta: TDataSource
    DataSet = CdsConsulta
    Left = 741
    Top = 46
  end
  object dspvulgo: TDataSetProvider
    DataSet = SQLvulgo
    Left = 685
    Top = 142
  end
  object cdsvulgo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspvulgo'
    Left = 713
    Top = 142
  end
  object dsvulgo: TDataSource
    DataSet = cdsvulgo
    Left = 741
    Top = 142
  end
  object DSPOUTRONOME: TDataSetProvider
    DataSet = SQLoutronome
    Left = 685
    Top = 190
  end
  object CDSOUTRONOME: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPOUTRONOME'
    Left = 713
    Top = 190
  end
  object DSOUTRONOEM: TDataSource
    DataSet = CDSOUTRONOME
    Left = 741
    Top = 190
  end
  object Dspfiliacao: TDataSetProvider
    Left = 685
    Top = 6
  end
  object Cdsfiliacao: TClientDataSet
    Aggregates = <>
    PacketRecords = 30
    Params = <>
    ProviderName = 'Dspfiliacao'
    Left = 713
    Top = 6
  end
  object Dsfiliacao: TDataSource
    DataSet = Sqlfiliacao
    Left = 741
    Top = 6
  end
  object DspCadastro: TDataSetProvider
    DataSet = SqlCadastro
    Left = 252
    Top = 104
  end
  object CdsCadastro: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsConsulta
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspCadastro'
    Left = 280
    Top = 104
  end
  object DsCadastro: TDataSource
    DataSet = CdsCadastro
    OnDataChange = DsCadastroDataChange
    Left = 308
    Top = 104
  end
  object Sqlfiliacao: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select   interno.nome_interno,'
      'interno.mae,'
      'interno.pai,'
      '  interno.outro_nome,'
      '    unidade_penal.sigla,'
      '    pavilhao.pavilhao,'
      '    solario.solario,'
      '    cela.cela,'
      '    interno.st,'
      '    interno.vulgo'
      'from cela'
      '   inner join interno on (cela.id_cela = interno.idcela)'
      
        '   inner join pavilhao on (interno.idpavilhao = pavilhao.id_pavi' +
        'lhao)'
      
        '   inner join unidade_penal on (pavilhao.id_up = unidade_penal.i' +
        'd_up)'
      
        '   inner join solario on (interno.idsolario = solario.id_solario' +
        ')'
      'WHERE ID_INTERNO = -1'
      'order by nome_interno ')
    Left = 613
    Top = 4
  end
  object SqlConsulta: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select   interno.nome_interno,'
      '  interno.outro_nome,'
      '    unidade_penal.sigla,'
      '    pavilhao.pavilhao,'
      '    solario.solario,'
      '    cela.cela,'
      '    interno.st,'
      '    interno.vulgo, '
      '    interno.numero_roupa,'
      '    interno.em_transito'
      'from CELA'
      '   left join interno on (cela.id_cela = interno.idcela)'
      
        '   left join pavilhao on (interno.idpavilhao = pavilhao.id_pavil' +
        'hao)'
      
        '   left join unidade_penal on (pavilhao.id_up = unidade_penal.id' +
        '_up)'
      '   left join solario on (interno.idsolario = solario.id_solario)'
      ' left join galeria on (interno.idgaleria = galeria.id_galeria)'
      'WHERE ID_INTERNO = -1'
      ' order by nome_interno '
      '')
    Left = 581
    Top = 44
  end
  object SQLvulgo: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select   interno.nome_interno,'
      '    unidade_penal.sigla,'
      '    pavilhao.pavilhao,'
      '    solario.solario,'
      '    cela.cela,'
      '    interno.st,'
      '    interno.vulgo'
      'from cela'
      '   inner join interno on (cela.id_cela = interno.idcela)'
      
        '   inner join pavilhao on (interno.idpavilhao = pavilhao.id_pavi' +
        'lhao)'
      
        '   inner join unidade_penal on (pavilhao.id_up = unidade_penal.i' +
        'd_up)'
      
        '   inner join solario on (interno.idsolario = solario.id_solario' +
        ')'
      'WHERE ID_INTERNO = -1'
      ' order by nome_interno '
      '')
    Left = 629
    Top = 140
  end
  object SQLoutronome: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select   interno.nome_interno,'
      '    interno.outro_nome,'
      '    unidade_penal.sigla,'
      '    pavilhao.pavilhao,'
      '    solario.solario,'
      '    cela.cela,'
      '    interno.st,'
      '    interno.vulgo'
      'from cela'
      '   inner join interno on (cela.id_cela = interno.idcela)'
      
        '   inner join pavilhao on (interno.idpavilhao = pavilhao.id_pavi' +
        'lhao)'
      
        '   inner join unidade_penal on (pavilhao.id_up = unidade_penal.i' +
        'd_up)'
      
        '   inner join solario on (interno.idsolario = solario.id_solario' +
        ')'
      'WHERE ID_INTERNO = -1'
      ' order by nome_interno '
      '')
    Left = 629
    Top = 188
  end
  object SqlSelectInterno: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select first 50'
      '    interno.nome_interno,'
      '    interno.mae,'
      '    interno.pai,'
      '    unidade_penal.sigla,'
      '    interno.outro_nome,'
      '    interno.rgi,'
      '    pavilhao.pavilhao,'
      '    solario.solario,'
      '    galeria.galeria,'
      '    cela.cela,'
      '    interno.id_interno,'
      '    coalesce(interno.st,'#39'I'#39') as st,'
      '    interno.vulgo,'
      'interno.idpavilhao,'
      'interno.idgaleria,'
      'interno.idsolario,'
      'COALESCE (interno.numero_roupa, '#39'N'#195'O TEM'#39') as numero_roupa,'
      'COALESCE (interno.em_transito, '#39'N'#39') as em_transito'
      'from interno'
      '   left join cela on (cela.id_cela = interno.idcela)'
      
        '   left join pavilhao on (interno.idpavilhao = pavilhao.id_pavil' +
        'hao)'
      
        '   left join unidade_penal on (pavilhao.id_up = unidade_penal.id' +
        '_up)'
      '   left join solario on (interno.idsolario = solario.id_solario)'
      '   left join galeria on (interno.idgaleria = galeria.id_galeria)'
      '   '
      '')
    Left = 469
    Top = 156
  end
  object SqlCadastro: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select ID_INTERNO,FOTO'
      'from interno'
      'where id_interno=:id_interno')
    Left = 197
    Top = 100
    ParamData = <
      item
        Name = 'ID_INTERNO'
        ParamType = ptInput
      end>
  end
end
