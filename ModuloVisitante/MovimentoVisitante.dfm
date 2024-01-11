inherited FrmMovimentoVisitante: TFrmMovimentoVisitante
  Left = 205
  Top = 58
  Caption = 'Entrada de Visitantes'
  ClientHeight = 592
  ClientWidth = 1042
  KeyPreview = True
  ExplicitWidth = 1054
  ExplicitHeight = 630
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Width = 1042
    Height = 126
    ExplicitWidth = 1038
    ExplicitHeight = 126
    inherited PanelLocalizaConsulta: TPanel [0]
      Top = 39
      Width = 993
      Height = 38
      Align = alNone
      TabOrder = 1
      ExplicitTop = 39
      ExplicitWidth = 993
      ExplicitHeight = 38
      DesignSize = (
        993
        38)
      inherited EditLocalizar: TEdit
        Left = 408
        Width = 353
        CharCase = ecUpperCase
        TabOrder = 1
        OnChange = EditLocalizarChange
        OnKeyDown = EditLocalizarKeyDown
        OnKeyPress = EditLocalizarKeyPress
        ExplicitLeft = 408
        ExplicitWidth = 353
      end
      object RadioGroupStatus: TRadioGroup
        Left = 864
        Top = 0
        Width = 126
        Height = 33
        Anchors = [akTop, akRight]
        Caption = 'Filtro'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Ativo'
          'Inativo')
        TabOrder = 3
        Visible = False
        OnClick = RadioGroupStatusClick
      end
      object RadioGroupTipoLocalizar: TRadioGroup
        Left = 54
        Top = -2
        Width = 355
        Height = 34
        Columns = 5
        ItemIndex = 2
        Items.Strings = (
          'Cart'#227'o'
          'Visitante'
          'Interno'
          'Prontu'#225'rio'
          'Digital')
        TabOrder = 0
        OnClick = RadioGroupTipoLocalizarClick
      end
      object BtnBuscar: TButton
        Left = 763
        Top = 5
        Width = 100
        Height = 25
        Caption = 'F5 - Buscar'
        TabOrder = 2
        OnClick = BtnBuscarClick
      end
    end
    inherited ToolBarModeloCadastro: TToolBar [1]
      Top = 74
      Width = 1042
      ButtonWidth = 145
      TabOrder = 2
      ExplicitTop = 74
      ExplicitWidth = 1038
      inherited Novo: TToolButton
        AllowAllUp = True
        AutoSize = True
        Caption = '&Cadastrar Nova Visita'
        ExplicitWidth = 149
      end
      inherited Editar: TToolButton
        Left = 150
        AllowAllUp = True
        AutoSize = True
        Caption = 'F2 -  Alterar Dados'
        ExplicitLeft = 150
        ExplicitWidth = 135
      end
      inherited Cancelar: TToolButton
        Left = 285
        AllowAllUp = True
        AutoSize = True
        ExplicitLeft = 285
        ExplicitWidth = 95
      end
      inherited Salvar: TToolButton
        Left = 380
        AllowAllUp = True
        AutoSize = True
        ExplicitLeft = 380
        ExplicitWidth = 77
      end
      inherited Excluir: TToolButton
        Left = 457
        AllowAllUp = True
        AutoSize = True
        Visible = False
        ExplicitLeft = 457
        ExplicitWidth = 78
      end
      inherited Fechar: TToolButton
        Left = 535
        AllowAllUp = True
        AutoSize = True
        Visible = False
        ExplicitLeft = 535
        ExplicitWidth = 80
      end
      object TbMovimentar: TToolButton
        Left = 615
        Top = 0
        AllowAllUp = True
        AutoSize = True
        Caption = 'F10 - &Inserir / Gravar'
        ImageIndex = 31
        OnClick = TbMovimentarClick
      end
    end
    object PanelTitulo: TPanel
      Left = 0
      Top = 0
      Width = 1042
      Height = 40
      Align = alTop
      BevelOuter = bvLowered
      Color = clMedGray
      TabOrder = 0
      ExplicitWidth = 1038
      object Label11: TLabel
        Left = 8
        Top = 9
        Width = 185
        Height = 23
        Caption = 'Regra de visita do dia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object LabelDATA_HORA: TLabel
        Left = 813
        Top = 6
        Width = 188
        Height = 28
        Alignment = taCenter
        AutoSize = False
        Caption = '----------------------------'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object DBLookupComboBoxRegra: TDBLookupComboBox
        Left = 200
        Top = 6
        Width = 593
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'ID_REGRA_VISITA'
        ListField = 'DESCRICAO'
        ListSource = DsRegraVisita
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  inherited PanelModeloCadastro: TPanel
    Top = 126
    Width = 1042
    Height = 447
    ExplicitTop = 126
    ExplicitWidth = 1038
    ExplicitHeight = 446
    object Label8: TLabel [0]
      Left = 369
      Top = 4
      Width = 32
      Height = 13
      Caption = 'Label8'
    end
    inherited PageControlModeloCadastro: TPageControl
      Width = 1042
      Height = 250
      ActivePage = TabSheet2
      ExplicitWidth = 1038
      ExplicitHeight = 250
      inherited TabSheetCadastro: TTabSheet
        Caption = 'Visitante'
        ExplicitWidth = 1034
        ExplicitHeight = 222
        object Label2: TLabel
          Left = 111
          Top = 3
          Width = 86
          Height = 13
          Caption = 'Nome do Visitante'
          FocusControl = DBEdit1
        end
        object Label5: TLabel
          Left = 2
          Top = 2
          Width = 82
          Height = 13
          Caption = 'C'#243'digo do Cart'#227'o'
          FocusControl = DBEditCodigoCartao
        end
        object Label6: TLabel
          Left = 75
          Top = 44
          Width = 20
          Height = 13
          Caption = 'CPF'
          FocusControl = DBEditCPF
        end
        object Label7: TLabel
          Left = 165
          Top = 44
          Width = 82
          Height = 13
          Caption = 'RG / Doc. Oficial'
          FocusControl = DBEdit6
        end
        object Label3: TLabel
          Left = 257
          Top = 44
          Width = 54
          Height = 13
          Caption = 'Data Nasc.'
          FocusControl = DBEditdtrnascimento
        end
        object Label18: TLabel
          Left = 364
          Top = 81
          Width = 97
          Height = 13
          Caption = 'Mensagem de Alerta'
        end
        object Label13: TLabel
          Left = 336
          Top = 44
          Width = 79
          Height = 13
          Caption = 'Tipo de Visitante'
        end
        object Label15: TLabel
          Left = 83
          Top = 80
          Width = 22
          Height = 13
          Caption = 'OBS'
        end
        object Label25: TLabel
          Left = 2
          Top = 81
          Width = 57
          Height = 13
          Caption = #218'ltima Visita'
        end
        object Label26: TLabel
          Left = 263
          Top = 120
          Width = 98
          Height = 13
          Caption = 'Grau de Parentesco:'
        end
        object PageControlVisita: TPageControl
          Left = 0
          Top = 131
          Width = 537
          Height = 95
          ActivePage = TabSheetInternos
          TabOrder = 11
          TabWidth = 100
          object TabSheetInternos: TTabSheet
            Caption = 'Interno (s)'
            object Label27: TLabel
              Left = 344
              Top = 54
              Width = 79
              Height = 13
              Caption = 'Tipo de Visitante'
            end
            object DBGridInterno: TDBGrid
              Left = 0
              Top = 0
              Width = 441
              Height = 67
              Align = alLeft
              DataSource = DsVisitanteInterno
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'NOME_INTERNO'
                  Title.Caption = 'Nome Interno(as)'
                  Width = 170
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'GRAU_PARENTESCO'
                  Title.Caption = 'Parentesco'
                  Width = 60
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PAVILHAO'
                  Title.Caption = 'Pavilh'#227'o'
                  Width = 40
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'GALERIA'
                  Title.Caption = 'Galeria'
                  Width = 40
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SOLARIO'
                  Title.Caption = 'Solario'
                  Width = 40
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CELA'
                  Title.Caption = 'Cela'
                  Width = 40
                  Visible = True
                end>
            end
            object ButtonNovoInterno: TButton
              Left = 442
              Top = 1
              Width = 85
              Height = 25
              Caption = 'Interno (s) (F7)'
              TabOrder = 1
              OnClick = ButtonNovoInternoClick
            end
            object Button2: TButton
              Left = 442
              Top = 30
              Width = 85
              Height = 25
              Caption = 'Deletar'
              TabOrder = 2
              OnClick = Button2Click
            end
          end
          object TabSheetMenores: TTabSheet
            Caption = 'Menore(s)'
            ImageIndex = 1
            TabVisible = False
            object DBGrid4: TDBGrid
              Left = 0
              Top = 0
              Width = 425
              Height = 67
              Align = alLeft
              DataSource = DsMenores
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'NOME_MENORES'
                  Title.Caption = 'Menores'
                  Width = 300
                  Visible = True
                end>
            end
            object ButtonNovoMenor: TButton
              Left = 440
              Top = 6
              Width = 90
              Height = 25
              Caption = 'Informar Menor'
              TabOrder = 1
              OnClick = ButtonNovoMenorClick
            end
            object Button6: TButton
              Left = 440
              Top = 38
              Width = 90
              Height = 25
              Caption = 'Deletar'
              TabOrder = 2
              OnClick = Button6Click
            end
          end
        end
        object DBEdit1: TDBEdit
          Left = 110
          Top = 17
          Width = 338
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VISITANTE'
          DataSource = DsCadastro
          TabOrder = 1
        end
        object DBEditCodigoCartao: TDBEdit
          Left = 2
          Top = 18
          Width = 103
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NUMERO_CARTEIRINHA'
          DataSource = DsCadastro
          TabOrder = 0
        end
        object DBEditCPF: TDBEdit
          Left = 75
          Top = 60
          Width = 86
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CPF'
          DataSource = DsCadastro
          TabOrder = 4
          OnExit = DBEditCPFExit
        end
        object DBEdit6: TDBEdit
          Left = 165
          Top = 60
          Width = 84
          Height = 21
          CharCase = ecUpperCase
          DataField = 'RG'
          DataSource = DsCadastro
          TabOrder = 5
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 455
          Top = -1
          Width = 82
          Height = 46
          Caption = 'Sexo'
          DataField = 'SEXO'
          DataSource = DsCadastro
          Items.Strings = (
            'Feminino'
            'Masculino')
          TabOrder = 2
          Values.Strings = (
            'F'
            'M')
        end
        object DBRadioGroup2: TDBRadioGroup
          Left = 2
          Top = 42
          Width = 71
          Height = 41
          Caption = 'Status'
          DataField = 'STATUS'
          DataSource = DsCadastro
          Items.Strings = (
            'Ativo'
            'Inativo')
          TabOrder = 3
          Values.Strings = (
            'A'
            'I')
          OnChange = DBRadioGroup2Change
        end
        object DBEditdtrnascimento: TDBEdit
          Left = 257
          Top = 60
          Width = 75
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DATA_NASCIMENTO'
          DataSource = DsCadastro
          TabOrder = 6
        end
        object DBEdit18: TDBEdit
          Left = 363
          Top = 94
          Width = 175
          Height = 21
          DataField = 'CHAVE_MIGRACAO'
          DataSource = DsCadastro
          TabOrder = 10
        end
        object DBComboBoxTipoVisitante: TDBComboBox
          Left = 336
          Top = 60
          Width = 97
          Height = 21
          DataField = 'TIPO_VISITANTE'
          DataSource = DsCadastro
          Items.Strings = (
            ''
            'Autorizado(a)'
            'Correspond'#234'ncia'
            'Ex-Interno'
            'Menor'
            'Parlat'#243'rio'
            'Presencial'
            'Prefer'#234'ncial'
            'Proibido(a)'
            'Suspenso(a)'
            'Religi'#227'o'
            'Virtual')
          TabOrder = 7
        end
        object DBEdit7: TDBEdit
          Left = 83
          Top = 94
          Width = 278
          Height = 21
          DataField = 'OBS'
          DataSource = DsCadastro
          TabOrder = 9
        end
        object DBRadioGroup3: TDBRadioGroup
          Left = 439
          Top = 45
          Width = 96
          Height = 37
          Caption = 'Prefer'#234'ncial'
          Columns = 2
          DataField = 'PREFERENCIAL'
          DataSource = DsCadastro
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 8
        end
        object DBEdit21: TDBEdit
          Left = 0
          Top = 94
          Width = 81
          Height = 21
          DataField = 'DATA_ULT_VISITA'
          DataSource = DsCadastro
          Enabled = False
          TabOrder = 12
        end
        object DBLookupComboBoxParentesco: TDBLookupComboBox
          Left = 363
          Top = 117
          Width = 175
          Height = 21
          DataField = 'ID_GRAU_PARENTESCO'
          DataSource = DsVisitanteInterno
          KeyField = 'ID_GRAU_PARENTESCO'
          ListField = 'GRAU_PARENTESCO'
          ListSource = DM.DSGrauParentesco
          TabOrder = 13
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Endere'#231'o'
        ImageIndex = 1
        object Label28: TLabel
          Left = 176
          Top = 2
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = DBEdit10
        end
        object Label29: TLabel
          Left = 16
          Top = 42
          Width = 12
          Height = 13
          Caption = 'N'#186
          FocusControl = DBEdit11
        end
        object Label31: TLabel
          Left = 16
          Top = 90
          Width = 64
          Height = 13
          Caption = 'Complemento'
          FocusControl = DBEdit13
        end
        object Label32: TLabel
          Left = 336
          Top = 90
          Width = 21
          Height = 13
          Caption = 'CEP'
          FocusControl = DBEditcep
        end
        object SpeedButton11: TSpeedButton
          Left = 302
          Top = 150
          Width = 23
          Height = 22
          Hint = 'Cadastrar Cidade'
          Caption = '...'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton11Click
        end
        object Label34: TLabel
          Left = 336
          Top = 136
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = DBEditfone
        end
        object Label14: TLabel
          Left = 16
          Top = 136
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object Label30: TLabel
          Left = 80
          Top = 42
          Width = 27
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit12
        end
        object Label17: TLabel
          Left = 15
          Top = 2
          Width = 75
          Height = 13
          Caption = 'T'#237'tulo de Eleitor'
          FocusControl = DBEdit16
        end
        object Label35: TLabel
          Left = 16
          Top = 180
          Width = 37
          Height = 13
          Caption = 'Contato'
          FocusControl = DBEdit17
        end
        object DBEdit11: TDBEdit
          Left = 16
          Top = 58
          Width = 57
          Height = 21
          DataField = 'NUMERO'
          DataSource = DsCadastro
          TabOrder = 2
        end
        object DBEdit12: TDBEdit
          Left = 80
          Top = 58
          Width = 377
          Height = 21
          DataField = 'BAIRRO'
          DataSource = DsCadastro
          TabOrder = 3
        end
        object DBEdit10: TDBEdit
          Left = 176
          Top = 18
          Width = 280
          Height = 21
          DataField = 'ENDERECO'
          DataSource = DsCadastro
          TabOrder = 1
        end
        object DBEdit13: TDBEdit
          Left = 16
          Top = 106
          Width = 305
          Height = 21
          DataField = 'COMPLEMENETO'
          DataSource = DsCadastro
          TabOrder = 4
        end
        object DBEditcep: TDBEdit
          Left = 336
          Top = 106
          Width = 121
          Height = 21
          DataField = 'CEP'
          DataSource = DsCadastro
          TabOrder = 5
        end
        object DBEditfone: TDBEdit
          Left = 336
          Top = 152
          Width = 121
          Height = 21
          DataField = 'FONE'
          DataSource = DsCadastro
          TabOrder = 7
        end
        object DBLookupComboBoxIDCIDADE: TDBLookupComboBox
          Left = 16
          Top = 152
          Width = 281
          Height = 21
          DataField = 'IDCIDADE'
          DataSource = DsCadastro
          KeyField = 'ID_CIDADE'
          ListField = 'CIDADE'
          ListSource = DM.DSCIDADE
          TabOrder = 6
        end
        object DBEdit16: TDBEdit
          Left = 15
          Top = 18
          Width = 154
          Height = 21
          DataField = 'titulo_eleitor'
          DataSource = DsCadastro
          TabOrder = 0
        end
        object DBEdit17: TDBEdit
          Left = 16
          Top = 197
          Width = 440
          Height = 21
          DataField = 'CONTATO'
          DataSource = DsCadastro
          TabOrder = 8
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Outros'
        ImageIndex = 2
        object Label16: TLabel
          Left = 13
          Top = 11
          Width = 67
          Height = 13
          Caption = 'Motivo Inativo'
          FocusControl = DBEdit9
        end
        object Label20: TLabel
          Left = 13
          Top = 89
          Width = 60
          Height = 13
          Caption = 'Naturalidade'
        end
        object SpeedButton4: TSpeedButton
          Left = 260
          Top = 104
          Width = 23
          Height = 22
          Caption = '...'
          Flat = True
          OnClick = SpeedButton4Click
        end
        object Label21: TLabel
          Left = 288
          Top = 89
          Width = 68
          Height = 13
          Caption = 'Nacionalidade'
        end
        object SpeedButton1: TSpeedButton
          Left = 512
          Top = 104
          Width = 23
          Height = 22
          Hint = 'Cadastrar Nacionalidade'
          Caption = '...'
          Flat = True
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton1Click
        end
        object Label19: TLabel
          Left = 263
          Top = 129
          Width = 15
          Height = 13
          Caption = 'Pai'
          FocusControl = DBEdit15
        end
        object Label22: TLabel
          Left = 13
          Top = 129
          Width = 21
          Height = 13
          Caption = 'M'#227'e'
          FocusControl = DBEdit14
        end
        object Label23: TLabel
          Left = 13
          Top = 169
          Width = 338
          Height = 13
          Caption = 
            'Quais os comprovantes de residencia: (Conta de Agua / Luz/ Telef' +
            'one)'
          FocusControl = DBEdit19
        end
        object Label24: TLabel
          Left = 13
          Top = 51
          Width = 98
          Height = 13
          Caption = 'Certid'#227'o Nascimento'
          FocusControl = DBEdit20
        end
        object DBEdit9: TDBEdit
          Left = 13
          Top = 27
          Width = 204
          Height = 21
          DataField = 'MOTIVO_INATIVO'
          DataSource = DsCadastro
          TabOrder = 0
        end
        object DBRadioGroup4: TDBRadioGroup
          Left = 232
          Top = 17
          Width = 153
          Height = 30
          Caption = 'Certid'#227'o Justi'#231'a Federal'
          Columns = 2
          DataField = 'NEGATIVO_CERTIDAO_FEDERAL'
          DataSource = DsCadastro
          Items.Strings = (
            'Positivo'
            'Negativo')
          TabOrder = 1
          Values.Strings = (
            'Positivo'
            'Negativo')
        end
        object DBRadioGroup5: TDBRadioGroup
          Left = 391
          Top = 17
          Width = 146
          Height = 30
          Caption = 'Certid'#227'o Justi'#231'a Estadual'
          Columns = 2
          DataField = 'NEGATIVO_CERTIDAO_ESTADUAL'
          DataSource = DsCadastro
          Items.Strings = (
            'Positivo'
            'Negativo')
          TabOrder = 2
          Values.Strings = (
            'Positivo'
            'Negativo')
        end
        object DBRadioGroup6: TDBRadioGroup
          Left = 327
          Top = 56
          Width = 210
          Height = 30
          Caption = 'Tem comprovante de residencia:'
          Columns = 2
          DataField = 'TEM_COMPROVANTE_RESIDENCIA'
          DataSource = DsCadastro
          Items.Strings = (
            'Sim'
            'N'#227'o')
          TabOrder = 4
          Values.Strings = (
            'Presencial'
            'Virtual')
        end
        object DBLookupComboBoxIDNATURALIDADE: TDBLookupComboBox
          Left = 13
          Top = 105
          Width = 241
          Height = 21
          DataField = 'ID_NATURALIDADE'
          DataSource = DsCadastro
          KeyField = 'ID_CIDADE'
          ListField = 'CIDADE'
          ListSource = DM.DSCIDADE
          TabOrder = 5
        end
        object DBLookupComboBoxIDNACIONALIDADE: TDBLookupComboBox
          Left = 288
          Top = 105
          Width = 217
          Height = 21
          DataField = 'ID_NACIONALIDADE'
          DataSource = DsCadastro
          KeyField = 'ID_NACIONALIDADE'
          ListField = 'NACIONALIDADE'
          ListSource = DM.DSNACIONALIDADE
          TabOrder = 6
        end
        object DBEdit15: TDBEdit
          Left = 263
          Top = 145
          Width = 269
          Height = 21
          DataField = 'PAI'
          DataSource = DsCadastro
          TabOrder = 8
        end
        object DBEdit14: TDBEdit
          Left = 13
          Top = 145
          Width = 237
          Height = 21
          DataField = 'MAE'
          DataSource = DsCadastro
          TabOrder = 7
        end
        object DBEdit19: TDBEdit
          Left = 13
          Top = 185
          Width = 521
          Height = 21
          DataField = 'COMPROVANTE_RESIDENCIA'
          DataSource = DsCadastro
          TabOrder = 9
        end
        object DBEdit20: TDBEdit
          Left = 13
          Top = 67
          Width = 292
          Height = 21
          DataField = 'NUMERO_CERTIDAO_NASCIMENTO'
          DataSource = DsCadastro
          TabOrder = 3
        end
      end
    end
    inherited PageControlConsulta: TPageControl
      Top = 250
      Width = 1042
      Height = 197
      ActivePage = TabSheetMovimentacao
      Font.Style = [fsBold]
      ParentFont = False
      TabHeight = 30
      TabOrder = 2
      TabWidth = 200
      OnChange = PageControlConsultaChange
      ExplicitTop = 250
      ExplicitWidth = 1038
      ExplicitHeight = 196
      inherited TabSheetMovimentacao: TTabSheet [0]
        Caption = 'Visitantes do Dia de Hoje'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitTop = 36
        ExplicitWidth = 1034
        ExplicitHeight = 157
        object Panel1: TPanel [0]
          Left = 0
          Top = 0
          Width = 1034
          Height = 30
          Align = alTop
          TabOrder = 0
          object LabelTotalVisitante: TLabel
            Left = 1
            Top = 1
            Width = 1032
            Height = 16
            Align = alTop
            Caption = 'Total de visitantes: 0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ExplicitWidth = 122
          end
          object LabelVisualizando: TLabel
            Left = 424
            Top = 8
            Width = 121
            Height = 13
            Caption = 'Visualisando:<todos>'
          end
          object BitBtn1: TBitBtn
            Left = 142
            Top = 1
            Width = 179
            Height = 25
            Caption = 'Pesquisar'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FF314B62
              AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
              106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FF37A4FE379FFF0E6DDE355F89BB7F79FF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF38A5FE329DFF156DCE444F5BFF
              00FF9C6B65AF887BAF887EAA8075FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FF3BABFFA1CAE7AD8679A98373E0CFB1FFFFDAFFFFDDFCF8CFCCB2
              9FA1746BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC0917DFC
              E9ACFFFFCCFFFFCFFFFFD0FFFFDEFFFFFAE3D3D1996965FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFB08978FAD192FEF4C2FFFFD0FFFFDAFFFFF6FFFF
              FCFFFFFCB69384FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB08978FEDA97ED
              B478FBEEBBFFFFD3FFFFDCFFFFF4FFFFF4FFFFE2E9DDBCA67B73FF00FFFF00FF
              FF00FFFF00FFFF00FFB18A78FFDE99E9A167F4D199FEFCCCFFFFD5FFFFDAFFFF
              DCFFFFD7EFE6C5A97E75FF00FFFF00FFFF00FFFF00FFFF00FFAA7F73FAE0A4F0
              B778EEBA7BF6DDA6FEFBCCFFFFD3FFFFD1FFFFD7D9C5A7A3756CFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFCEB293FFFEDDF4D1A5EEBA7BF2C78FF8E1ABFCF0
              BAFCFACAA3776FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA1746BE1
              D4D3FFFEEEF7CC8CF0B473F7C788FCE3A5C2A088A5776CFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FF986865BA9587EAD7A4EAD59EE0C097A577
              6CA5776CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFA77E70A98073A4786EFF00FFFF00FFFF00FFFF00FF}
            Style = bsNew
            TabOrder = 0
            OnClick = BitBtn1Click
          end
          object Button1: TButton
            Left = 336
            Top = 2
            Width = 75
            Height = 25
            Caption = 'Todos'
            TabOrder = 1
            OnClick = Button1Click
          end
        end
        inherited DBGrid1: TDBGrid
          Top = 30
          Width = 833
          Height = 127
          Align = alLeft
          PopupMenu = PopupMenuVisitante
          TabOrder = 5
          TitleFont.Style = [fsBold]
          OnCellClick = DBGrid1CellClick
          OnDrawColumnCell = DBGrid1DrawColumnCell
          OnDblClick = DBGrid1DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'ORDEM_VISITA'
              Title.Caption = 'Ordem'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_VISITANTE'
              Title.Caption = 'Nome Visitante'
              Width = 180
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_INTERNO'
              Title.Caption = 'Interno'
              Width = 180
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMERO_CARTEIRINHA'
              Title.Caption = 'C'#243'digo do Cart'#227'o'
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
              Alignment = taCenter
              Expanded = False
              FieldName = 'SELECAO'
              Title.Alignment = taCenter
              Title.Caption = 'X'
              Width = 20
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SACOLA'
              Title.Caption = 'Sacola'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DINHEIRO'
              Title.Caption = 'Dinheiro'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPRESSO'
              Title.Caption = 'Impresso'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HORA_VISITA'
              Title.Caption = 'Hora'
              Width = 40
              Visible = True
            end>
        end
        object BitBtnCancelaEntrada: TBitBtn
          Left = 838
          Top = 11
          Width = 144
          Height = 25
          Caption = 'Cancelar Entrada'
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333333333000033338833333333333333333F333333333333
            0000333911833333983333333388F333333F3333000033391118333911833333
            38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
            911118111118333338F3338F833338F3000033333911111111833333338F3338
            3333F8330000333333911111183333333338F333333F83330000333333311111
            8333333333338F3333383333000033333339111183333333333338F333833333
            00003333339111118333333333333833338F3333000033333911181118333333
            33338333338F333300003333911183911183333333383338F338F33300003333
            9118333911183333338F33838F338F33000033333913333391113333338FF833
            38F338F300003333333333333919333333388333338FFF830000333333333333
            3333333333333333333888330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
          Style = bsNew
          TabOrder = 1
          OnClick = BitBtnCancelaEntradaClick
        end
        object BtnImprimir: TBitBtn
          Left = 838
          Top = 125
          Width = 144
          Height = 25
          Caption = 'Imprimir - F12'
          Glyph.Data = {
            CA020000424DCA02000000000000CA0100002800000010000000100000000100
            08000000000000010000120B0000120B00006500000065000000DCDBEE00FF00
            FF00EDE4E600875958008B5C5B008C5D5C00815655009C6E6C00A4787400AD80
            7800A87C7500B4817600B2807400AF7E7200B3817500B17F7400B2807500B486
            7A00BC8D7C00BA8B7B00BA8D7D00B9897600CF9B8600C2958100CA9B8300FEFC
            FB00D79D7900D29E7D00DCA88700D1A28600EBD2C200F1DCCF00F8ECE500D9A1
            7D00D8A98A00FEFBF900DFB08D00FEFAF700E8B89000E4B58E00F9F3EE00E8B9
            9000FFD1A200FFD4A800FFD8B100FED9B300FFDCB800FFDEBC00FFDFBE00FEDE
            BD00FEE8D200FEEDDC00FEEEDE00FEF0E200FEF1E400FEF4EA00FEF5EC00FFF9
            F300FEF8F200FEFAF600FEFBF800FCF9F600FEFCFA00FEFDFC00FFD4A600FED5
            A900FED6AC00FFD9B100FEDAB400FFE2C400FEE1C300FEE2C500FFE4C800F8DF
            C400FEE5CB00FFE7CE00FEE7CE00FEE8D000E9D5BF00D4C2AE00FEE9D200FEEA
            D500FEEBD700CABBAB00FEEDDB00FEEEDD00FEEFDF00FEF3E700FEF6ED00FEF1
            E200FEF8F100FEF6EC00FEFBF700FEF9F200FFE5AF00FFF9DC00FEFEFD000000
            9A00FFFFFF00FEFEFE0000000000010101010808010101010101010101010101
            0101082A07070101010101010101010101010808080808080808080808050101
            010A0A4C4A472F2C2B2A2A2A2A050101010A0A324A45302E4342402A2A050101
            010A0952614B0E0E0E0E0E0E2A050101155F1133555555555046444141050101
            1502143561560E0E0E0E0E0E2D050101150017575B5B5B5B595148313005011B
            1E62185861390E0E100C0D0E4904011B20621D5D23233E3B37544D4D4E030126
            19632225603E3B5A383634534F060126626224196363195C3A3C0B0B0B0F2926
            1F28276363636363633C135E5E1601011A2127636363633F3C3D125E16010101
            0101261C1C1C1C1C1C1C12160101}
          Style = bsNew
          TabOrder = 4
          OnClick = BtnImprimirClick
        end
        object BtnSacola: TBitBtn
          Left = 838
          Top = 87
          Width = 144
          Height = 25
          Caption = 'Sacolas - F9'
          Glyph.Data = {
            26030000424D2603000000000000260200002800000010000000100000000100
            08000000000000010000120B0000120B00007C0000007C0000008480AA00A19A
            B200BAB7BC00FF00FF00C7BCC600BBB7B7000365000005780300015D00000C95
            0B0028A62600035A05000467060013921400036E07000B7911000D8111001093
            180016A623001156180000510A00279D3500035E100013812100259D350029BF
            42002DA7410024C0420029C5490025AF42003DD75C000056140031CC57002DBC
            520030C556002FC1530032C75700035E1C002EBA540038D3620038D16300016F
            22003FDD6F003CD56B003DD56A003DD56C0041DC720041DC730044E1780048EA
            800001542200017434003E676700004B5000065668000090BA00008CE000004B
            8900004ADA000040C00000359D00004AE9000033AB000034D800516FDD000035
            FF00002DF2000D2FF600001EFF00001FFF000022FF000020FE000021FE00001C
            FF000018EF000017EB000016EA000016E9000016E3000014FA000011D8000013
            D8000011D4000011D3000011D0000010CF000010CE00000EC600000FE600000D
            C500000DC100000CBD00000CBC00000ABA00000BB800000AB6000009B1000611
            B400222CC0007378C0000008AF000007AD000006A9000007A9000006A6000005
            A5000005A1000005A00000049F0000049C000106A600030799000004AF000003
            9E0000039C00000399000001910000028F0000018C0003048E00070788000808
            8B00B7B7D5000000000003030303030378787874030303030303030303797878
            050061507403030303030378780102636270715A57750303030378047A40434F
            58565F73605B74030303133436393B42444D555E726764750303141F08060E32
            3E494D545D6B6D677403033A373307090C3C454B535B6A69657603033A382911
            12163F474C525C686C760303033A3A101B0D3541484A51596E77030303033A0F
            1C19253D41464E666F03030B0B0B0B0B2027170B0B0B0B03030303030B1D2422
            282B2C1E0A0B030303030303030B232A2D2E301A0B0303030303030303030B21
            312F150B03030303030303030303030B26180B03030303030303030303030303
            0B0B0303030303030303}
          Style = bsNew
          TabOrder = 3
          OnClick = BtnSacolaClick
        end
        object BtnDinheiro: TBitBtn
          Left = 838
          Top = 49
          Width = 144
          Height = 25
          Caption = 'Dinheiro - F8'
          Glyph.Data = {
            CA030000424DCA03000000000000CA0200002800000010000000100000000100
            08000000000000010000120B0000120B0000A5000000A5000000FF00FF000457
            080000B10A0004680B0004670B0004570900056A0C00066F0E000871100006B1
            160007B6180004680C0004670C0008AB170008AB180009B81A0009B71A0008A6
            160008A6170008A6180008A5160008A51700078D120009B1180009B018000AA7
            1800097A14000A7A14000B7C15002BC1390058CA62005FCC690009BE1C000CB2
            1F000DA81F000D851A00108F1F00B7EFBD000CB824000DBA23000EA9220011AB
            270014A42800139C26009DE0A6000FBA2C0013B52D00129A2800DEFCE30014BB
            310014AE2F0015AF32008BDC99008EDC9C00B7F0C10017BD390018B93A001BBE
            3E001AB03A001BB23C001AAF39006CD28100B2EEBF00C8EED0001BAD3C001EC0
            45003AC35B0044C662001FBB460020B4450021B5480023B74A0022B5480025B7
            4A0037C35A0037BC5A0038BB5A004CC36B0051C56F0053C57100C6EED000F3FF
            F6000DB73E0022BE4F0020B5480023C04E0021B5490023B54B0029BF53002EB9
            530042C0640051C57000ABE6BC0025C5540027BF5500D8FAE20027BB57002AC2
            5D0031C2610060D0830060CF850090DEA9002BBF5E0031C4640035C367005FD7
            88002DC163003AC66F0061D18B0063D18C00A1EBBD00BBF3D000D2FAE100E7FF
            F000EAFDF10030C56A0032C36C0036C5700039C570003CC773003FC8760046C9
            7A0048CA7A004FCD820052CC810054CD83005DD08A0060D18C0067D9930065D2
            8F006DD596006FD5970075D79B0078D89D0080DAA30086DCA7008ADEAC008ADD
            AA0096E1B30095E0B3009BE3B8009DE3B900A6E5BF00B5F1CC00AEE8C500C1F4
            D500C7F6DA00CCF0DA00D7FAE500E2FEED0034C873003BC7740058D08A006AD5
            960077D89F0087DDAA0092E0B300A9E6C200AEE8C600B1E9C800FBFFFD00FCFF
            FE00FCFFFF00FFFFFF0000000000000000000000000000000000000000000000
            1C1A0806040C0C0C0C0C0C050000002F3A3329221314141212150E1601000040
            5D41372D26A31D020A10200D0C00004567584A3E3630251E091810120B000048
            786863A0433F34A11F170F120C00004698796C6552503DA32C2110110C000046
            9A7C776B645F51A3352E271903000046887E7A6FA3A3A25C4238312807000046
            8B8182A395726D62534439321B0000468D8384A38A937D91695E553B23000046
            9D867E8F70949271806A615424000056908E878589A36E7F767473602B000048
            9C9E9F9D8C9B997B977596662A0000004C5B4F4E4D5A4B594957473C00000000
            0000000000000000000000000000}
          Style = bsNew
          TabOrder = 2
          OnClick = BtnDinheiroClick
        end
      end
      inherited TabSheetConsulta: TTabSheet [1]
        Caption = 'Informa'#231#227'o Geral de Visitantes'
        ExplicitTop = 36
        ExplicitWidth = 1034
        ExplicitHeight = 157
        inherited DBGridConsulta: TDBGrid
          Left = 826
          Top = 110
          Width = 614
          Height = 33
          Align = alNone
          TabOrder = 3
          TitleFont.Style = [fsBold]
          Visible = False
          Columns = <
            item
              Expanded = False
              FieldName = 'VISITANTE'
              Title.Caption = 'Nome do Visitante'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMERO_CARTEIRINHA'
              Title.Caption = 'C'#243'digo do Cart'#227'o'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_CADASTRO'
              Title.Caption = 'Data do Cadastro'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SEXO'
              Title.Caption = 'Sexo'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CPF'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RG'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GRAU_PARENTESCO'
              Title.Caption = 'Parentesco'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_INTERNO'
              Title.Caption = 'Interno'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RGI'
              Title.Caption = 'Prontu'#225'rio'
              Width = 60
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 541
          Top = 2
          Width = 205
          Height = 154
          BevelOuter = bvLowered
          Caption = 'Foto'
          TabOrder = 0
          object DBImageFOTO: TDBImage
            Left = 1
            Top = 1
            Width = 203
            Height = 152
            Align = alClient
            DataField = 'FOTO'
            DataSource = DsCadastro
            Stretch = True
            TabOrder = 0
            OnClick = Image1Click
          end
        end
        object RadioGroupTipoVisita: TRadioGroup
          Left = 9
          Top = 21
          Width = 200
          Height = 38
          Caption = 'Tipos de visitantes do dia'
          Columns = 2
          Enabled = False
          Items.Strings = (
            'Adultos'
            'Menores')
          TabOrder = 1
        end
        object GroupBox1: TGroupBox
          Left = 8
          Top = 71
          Width = 409
          Height = 58
          Caption = 'Na entrada de Visitantes'
          Enabled = False
          TabOrder = 2
          object Label9: TLabel
            Left = 32
            Top = 16
            Width = 111
            Height = 13
            Caption = 'Limite de Visitantes'
            FocusControl = DBEdit3
          end
          object Label10: TLabel
            Left = 152
            Top = 16
            Width = 101
            Height = 13
            Caption = 'Limite de Sacolas'
            FocusControl = DBEdit4
          end
          object Label12: TLabel
            Left = 272
            Top = 16
            Width = 103
            Height = 13
            Caption = 'Limite de Dinheiro'
            FocusControl = DBEdit8
          end
          object DBEdit3: TDBEdit
            Left = 32
            Top = 32
            Width = 113
            Height = 21
            DataField = 'NUMERO_VISITANTES'
            DataSource = Dsconspadrao
            TabOrder = 0
          end
          object DBEdit4: TDBEdit
            Left = 152
            Top = 32
            Width = 113
            Height = 21
            DataField = 'LIMITE_SACOLA'
            DataSource = Dsconspadrao
            TabOrder = 1
          end
          object DBEdit8: TDBEdit
            Left = 272
            Top = 32
            Width = 113
            Height = 21
            DataField = 'LIMITE_DINHEIRO'
            DataSource = Dsconspadrao
            TabOrder = 2
          end
        end
      end
    end
    object DBGridVisita: TDBGrid
      Left = 545
      Top = -2
      Width = 473
      Height = 248
      DataSource = DsConsulta
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridConsultaDrawColumnCell
      OnDblClick = DBGridVisitaDblClick
      OnTitleClick = DBGridConsultaTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'VISITANTE'
          Title.Caption = 'Nome do Visitante'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'status'
          Title.Caption = 'ST'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RGI'
          Title.Caption = 'Pront.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -8
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_INTERNO'
          Title.Caption = 'Interno'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -8
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'st'
          Title.Caption = 'ST'
          Width = 23
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SIGLA'
          Title.Caption = 'Sigla'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GRAU_PARENTESCO'
          Title.Caption = 'Parentesco'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -8
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO_CARTEIRINHA'
          Title.Caption = 'C'#243'digo do Cart'#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -8
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_CADASTRO'
          Title.Caption = 'Data do Cadastro'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -8
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SEXO'
          Title.Caption = 'Sexo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -8
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPF'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -8
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RG'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -8
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 70
          Visible = True
        end>
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 573
    Width = 1042
    ExplicitTop = 572
    ExplicitWidth = 1038
  end
  inherited ImageListCadastro: TImageList
    Left = 880
  end
  inherited DspCadastro: TDataSetProvider
    Left = 796
  end
  inherited CdsCadastro: TClientDataSet
    IndexFieldNames = 'ID_VISITANTE'
    MasterFields = 'ID_VISITANTE'
    MasterSource = DsConsulta
    PacketRecords = 0
    Left = 824
  end
  inherited DsCadastro: TDataSource
    Left = 852
  end
  inherited DspMovimento: TDataSetProvider
    Left = 868
    Top = 240
  end
  inherited CdsMovimento: TClientDataSet
    ProviderName = 'DspMovimento'
    Left = 896
    Top = 240
    object CdsMovimentoID_MOV_DIARIO_VISITANTES: TIntegerField
      FieldName = 'ID_MOV_DIARIO_VISITANTES'
      Required = True
    end
    object CdsMovimentoID_VISITANTE: TIntegerField
      FieldName = 'ID_VISITANTE'
      Required = True
    end
    object CdsMovimentoCANCELADO: TStringField
      FieldName = 'CANCELADO'
      Size = 1
    end
    object CdsMovimentoORDEM_VISITA: TIntegerField
      FieldName = 'ORDEM_VISITA'
    end
    object CdsMovimentoNOME_VISITANTE: TStringField
      FieldName = 'NOME_VISITANTE'
      Size = 50
    end
    object CdsMovimentoNUMERO_CARTEIRINHA: TStringField
      FieldName = 'NUMERO_CARTEIRINHA'
      Size = 30
    end
    object CdsMovimentoCPF: TStringField
      FieldName = 'CPF'
      Size = 50
    end
    object CdsMovimentoRG: TStringField
      FieldName = 'RG'
      Size = 100
    end
    object CdsMovimentoORGAO_EXPEDIDOR: TStringField
      FieldName = 'ORGAO_EXPEDIDOR'
      Size = 50
    end
    object CdsMovimentoSEXO: TStringField
      FieldName = 'SEXO'
      Size = 50
    end
    object CdsMovimentoIMPRESSO: TStringField
      FieldName = 'IMPRESSO'
      Size = 1
    end
    object CdsMovimentoSACOLA: TIntegerField
      FieldName = 'SACOLA'
    end
    object CdsMovimentoDINHEIRO: TFloatField
      FieldName = 'DINHEIRO'
      EditFormat = '#,##0.00'
    end
    object CdsMovimentoDATA_VISITA: TSQLTimeStampField
      FieldName = 'DATA_VISITA'
    end
    object CdsMovimentoNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 100
    end
    object CdsMovimentoHORA_VISITA: TTimeField
      FieldName = 'HORA_VISITA'
    end
    object CdsMovimentoID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object CdsMovimentoSELECAO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'SELECAO'
    end
  end
  inherited DsMovimento: TDataSource
    OnDataChange = DsMovimentoDataChange
    Left = 924
    Top = 240
  end
  inherited DspConsulta: TDataSetProvider
    Left = 868
    Top = 192
  end
  inherited CdsConsulta: TClientDataSet
    PacketRecords = 50
    Left = 896
    Top = 192
  end
  inherited DsConsulta: TDataSource
    Left = 924
    Top = 192
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT  *'
      'FROM VISITANTE '
      'WHERE ID_VISITANTE=:ID_VISITANTE')
    Left = 768
    ParamData = <
      item
        Name = 'ID_VISITANTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
  end
  inherited SqlConsulta: TFDQuery
    SQL.Strings = (
      'SELECT FIRST 20'
      'V.ID_VISITANTE,'
      'V.VISITANTE,'
      'V.NUMERO_CARTEIRINHA,'
      'V.DATA_CADASTRO,'
      'V.CPF,'
      'V.RG,'
      'V.ORGAO_EXPEDIDOR,'
      'V.SEXO,'
      'G.GRAU_PARENTESCO,'
      'I.NOME_INTERNO,'
      'I.RGI'
      'FROM VISITANTE V'
      
        'INNER JOIN VISITANTE_INTERNO VI ON (V.ID_VISITANTE=VI.ID_VISITAN' +
        'TE)'
      'INNER JOIN INTERNO I ON (VI.ID_INTERNO=I.ID_INTERNO)'
      
        'INNER JOIN GRAU_PARENTESCO G ON (VI.ID_GRAU_PARENTESCO=G.ID_GRAU' +
        '_PARENTESCO)')
    Left = 840
    Top = 192
  end
  inherited SqlMovimento: TFDQuery
    SQL.Strings = (
      'select '
      'm.id_mov_diario_visitantes, '
      'm.id_visitante,'
      'i.id_interno,'
      'm.cancelado,'
      'm.ordem_visita, '
      'm.nome_visitante, '
      'm.numero_carteirinha, '
      'm.cpf, '
      'm.rg, '
      'm.orgao_expedidor, '
      'm.sexo, '
      'm.impresso, '
      'm.sacola, '
      'm.dinheiro, '
      'm.data_visita,'
      'm.hora_visita,'
      'coalesce(i.nome_interno,v.tipo_visitante) as nome_interno'
      'from mov_diario_visitantes m'
      'inner join visitante v on v.id_visitante=m.id_visitante'
      'left join interno i on i.id_interno=m.id_interno'
      'where'
      'm.data_visita =current_date and '
      'm.cancelado is null and '
      'm.id_up=:id_up'
      'order by m.ordem_visita')
    Left = 840
    Top = 240
    ParamData = <
      item
        Name = 'id_up'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
  end
  object DspVisitanteInterno: TDataSetProvider
    DataSet = SqlVisitanteInterno
    Left = 868
    Top = 80
  end
  object CdsVisitanteInterno: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_VISITANTE'
    MasterFields = 'ID_VISITANTE'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspVisitanteInterno'
    OnCalcFields = CdsVisitanteInternoCalcFields
    Left = 896
    Top = 80
    object CdsVisitanteInternoID_VISITANTE_INTERNO: TIntegerField
      FieldName = 'ID_VISITANTE_INTERNO'
      Required = True
    end
    object CdsVisitanteInternoID_VISITANTE: TIntegerField
      FieldName = 'ID_VISITANTE'
      Required = True
    end
    object CdsVisitanteInternoID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
      Required = True
    end
    object CdsVisitanteInternoID_GRAU_PARENTESCO: TIntegerField
      FieldName = 'ID_GRAU_PARENTESCO'
      Required = True
    end
    object CdsVisitanteInternoGRAU_PARENTESCO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'GRAU_PARENTESCO'
      Size = 100
    end
    object CdsVisitanteInternoPAVILHAO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'PAVILHAO'
      Size = 100
    end
    object CdsVisitanteInternoGALERIA: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'GALERIA'
      Size = 100
    end
    object CdsVisitanteInternoSOLARIO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'SOLARIO'
      Size = 100
    end
    object CdsVisitanteInternoCELA: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CELA'
      Size = 100
    end
    object CdsVisitanteInternoNOME_INTERNO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'NOME_INTERNO'
      Size = 100
    end
    object CdsVisitanteInternoISOLAMENTO: TStringField
      FieldKind = fkCalculated
      FieldName = 'ISOLAMENTO'
      Calculated = True
    end
  end
  object DsVisitanteInterno: TDataSource
    DataSet = CdsVisitanteInterno
    Left = 924
    Top = 80
  end
  object OpenDialogFOTO: TOpenDialog
    Filter = 'Imagens (*.jpg)|*.jpg'
    Left = 912
    Top = 9
  end
  object DspMenores: TDataSetProvider
    DataSet = SqlMenores
    Left = 868
    Top = 152
  end
  object CdsMenores: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_VISITANTE'
    MasterFields = 'ID_VISITANTE'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspMenores'
    Left = 896
    Top = 152
  end
  object DsMenores: TDataSource
    DataSet = CdsMenores
    Left = 924
    Top = 152
  end
  object DspMov_Diario_Visitantes: TDataSetProvider
    DataSet = SqlMov_Diario_Visitantes
    Left = 869
    Top = 287
  end
  object CdsMov_Diario_Visitantes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspMov_Diario_Visitantes'
    Left = 897
    Top = 287
  end
  object DsMov_Diario_Visitantes: TDataSource
    DataSet = CdsMov_Diario_Visitantes
    Left = 925
    Top = 287
  end
  object DspRegraVisita: TDataSetProvider
    DataSet = SqlRegraVisita
    Left = 516
  end
  object CdsRegraVisita: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspRegraVisita'
    Left = 544
  end
  object DsRegraVisita: TDataSource
    DataSet = CdsRegraVisita
    Left = 572
  end
  object Dsconspadrao: TDataSource
    DataSet = Cdsconspadrao
    OnDataChange = DsCadastroDataChange
    Left = 332
  end
  object Cdsconspadrao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dspconspadrao'
    Left = 304
  end
  object Dspconspadrao: TDataSetProvider
    DataSet = SQLconspadrao
    Left = 276
  end
  object DspValidaRegra: TDataSetProvider
    DataSet = SqlValidaRegra
    Left = 604
    Top = 256
  end
  object CdsValidaRegra: TClientDataSet
    Aggregates = <>
    PacketRecords = 20
    Params = <>
    ProviderName = 'DspValidaRegra'
    Left = 632
    Top = 256
  end
  object DsValidaRegra: TDataSource
    DataSet = CdsValidaRegra
    OnDataChange = DsCadastroDataChange
    Left = 660
    Top = 256
  end
  object PopupMenuVisitante: TPopupMenu
    Left = 871
    Top = 333
    object CarteiradeVisitante1: TMenuItem
      Caption = 'Carteira de Visitante'
      OnClick = CarteiradeVisitante1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object AlterarDadosFoto1: TMenuItem
      Caption = 'Alterar Dados/Foto'
      OnClick = AlterarDadosFoto1Click
    end
    object Seleo1: TMenuItem
      Caption = 'Marcar Sele'#231#227'o'
      OnClick = Seleo1Click
    end
    object Desmarcar1: TMenuItem
      Caption = 'Recarregar'
      OnClick = Desmarcar1Click
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 696
  end
  object CdsUltVisita: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspUltVisita'
    Left = 696
    Top = 366
    object CdsUltVisitaDATA_VISITA: TSQLTimeStampField
      FieldName = 'DATA_VISITA'
    end
  end
  object DspUltVisita: TDataSetProvider
    DataSet = SqlUltVisita
    Left = 632
    Top = 366
  end
  object DsUltVisita: TDataSource
    DataSet = CdsUltVisita
    Left = 752
    Top = 366
  end
  object SqlVisitanteInterno: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from visitante_interno'
      'where id_visitante=:id_visitante')
    Left = 840
    Top = 80
    ParamData = <
      item
        Name = 'ID_VISITANTE'
        ParamType = ptInput
      end>
  end
  object SqlSelectVisitante: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT FIRST 50'
      'V.ID_VISITANTE,'
      'V.VISITANTE,'
      'V.NUMERO_CARTEIRINHA,'
      'V.DATA_CADASTRO,'
      'V.CPF,'
      'V.RG,'
      'V.ORGAO_EXPEDIDOR,'
      'V.SEXO,'
      'G.GRAU_PARENTESCO,'
      'I.ID_INTERNO,'
      'I.NOME_INTERNO,'
      'I.RGI,'
      'I.ID_UP,'
      'I.ST'
      'FROM VISITANTE V'
      
        'INNER JOIN VISITANTE_INTERNO VI ON (V.ID_VISITANTE=VI.ID_VISITAN' +
        'TE)'
      'INNER JOIN INTERNO I ON (VI.ID_INTERNO=I.ID_INTERNO)'
      
        'INNER JOIN GRAU_PARENTESCO G ON (VI.ID_GRAU_PARENTESCO=G.ID_GRAU' +
        '_PARENTESCO)')
    Left = 736
    Top = 252
  end
  object SqlMenores: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT * '
      'FROM menores'
      'where id_visitante=:id_visitante')
    Left = 840
    Top = 152
    ParamData = <
      item
        Name = 'ID_VISITANTE'
        ParamType = ptInput
      end>
  end
  object SqlMov_Diario_Visitantes: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    Left = 841
    Top = 287
  end
  object SqlRegraVisita: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT * '
      'FROM REGRA_VISITA'
      'WHERE DIA_SEMANA = EXTRACT(WEEKDAY FROM CURRENT_TIMESTAMP)'
      'AND ID_UP=:ID_UP'
      'ORDER BY DESCRICAO')
    Left = 488
    ParamData = <
      item
        Name = 'ID_UP'
        ParamType = ptInput
      end>
  end
  object SQLconspadrao: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    Left = 248
  end
  object SqlTodosVisitantes: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT FIRST 50'
      'V.ID_VISITANTE,'
      'V.VISITANTE,'
      'V.NUMERO_CARTEIRINHA,'
      'V.DATA_CADASTRO,'
      'V.CPF,'
      'V.RG,'
      'V.ORGAO_EXPEDIDOR,'
      'V.SEXO,'
      'V.STATUS,'
      'G.GRAU_PARENTESCO,'
      'I.ID_INTERNO,'
      'I.NOME_INTERNO,'
      'I.RGI,'
      'I.ST,'
      'U.SIGLA,'
      'I.ID_UP'
      'FROM VISITANTE V'
      
        'LEFT JOIN VISITANTE_INTERNO VI ON (V.ID_VISITANTE=VI.ID_VISITANT' +
        'E)'
      
        'LEFT JOIN GRAU_PARENTESCO G ON (VI.ID_GRAU_PARENTESCO=G.ID_GRAU_' +
        'PARENTESCO)'
      'LEFT JOIN INTERNO I ON (VI.ID_INTERNO=I.ID_INTERNO)'
      'LEFT JOIN UNIDADE_PENAL U ON (U.ID_UP=I.ID_UP)')
    Left = 736
    Top = 156
  end
  object SqlTodosInterno: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT FIRST 50'
      'V.ID_VISITANTE,'
      'V.VISITANTE,'
      'V.NUMERO_CARTEIRINHA,'
      'V.DATA_CADASTRO,'
      'V.CPF,'
      'V.RG,'
      'V.ORGAO_EXPEDIDOR,'
      'V.SEXO,'
      'G.GRAU_PARENTESCO,'
      'I.ID_INTERNO,'
      'I.NOME_INTERNO,'
      'I.RGI,'
      'v.status,'
      'I.ST,'
      'U.SIGLA,'
      'I.ID_UP'
      'FROM INTERNO I'
      'LEFT JOIN UNIDADE_PENAL U ON (U.ID_UP=I.ID_UP)'
      'LEFT JOIN VISITANTE_INTERNO VI ON (VI.ID_INTERNO=I.ID_INTERNO)'
      
        'LEFT JOIN GRAU_PARENTESCO G ON (VI.ID_GRAU_PARENTESCO=G.ID_GRAU_' +
        'PARENTESCO)'
      'LEFT JOIN VISITANTE V ON (V.ID_VISITANTE=VI.ID_VISITANTE)')
    Left = 736
    Top = 204
  end
  object SqlValidaRegra: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT FIRST 20'
      'V.ID_VISITANTE,'
      'V.VISITANTE,'
      'V.NUMERO_CARTEIRINHA,'
      'V.DATA_CADASTRO,'
      'V.CPF,'
      'V.RG,'
      'V.ORGAO_EXPEDIDOR,'
      'V.SEXO,'
      'G.GRAU_PARENTESCO,'
      'I.NOME_INTERNO,'
      'I.RGI,'
      'I.ID_UP'
      'FROM VISITANTE V'
      
        'INNER JOIN VISITANTE_INTERNO VI ON (V.ID_VISITANTE=VI.ID_VISITAN' +
        'TE)'
      'INNER JOIN INTERNO I ON (VI.ID_INTERNO=I.ID_INTERNO)'
      
        'INNER JOIN GRAU_PARENTESCO G ON (VI.ID_GRAU_PARENTESCO=G.ID_GRAU' +
        '_PARENTESCO)')
    Left = 576
    Top = 256
  end
  object SqlExecute: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT id_interno, nome_interno, rgi'
      'FROM INTERNO'
      'ORDER BY NOME_INTERNO')
    Left = 736
    Top = 304
  end
  object SqlVisitaDia: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT FIRST 50'
      'V.ID_VISITANTE,'
      'V.VISITANTE,'
      'V.NUMERO_CARTEIRINHA,'
      'V.DATA_CADASTRO,'
      'V.CPF,'
      'V.RG,'
      'V.ORGAO_EXPEDIDOR,'
      'V.SEXO,'
      'G.GRAU_PARENTESCO,'
      'I.NOME_INTERNO,'
      'I.RGI,'
      'v.status,'
      'I.ST,'
      'U.SIGLA,'
      'I.ID_UP'
      'FROM INTERNO I'
      'INNER JOIN UNIDADE_PENAL U ON (U.ID_UP=I.ID_UP)'
      'INNER JOIN VISITANTE_INTERNO VI ON (VI.ID_INTERNO=I.ID_INTERNO)'
      
        'INNER JOIN GRAU_PARENTESCO G ON (VI.ID_GRAU_PARENTESCO=G.ID_GRAU' +
        '_PARENTESCO)'
      'INNER JOIN VISITANTE V ON (V.ID_VISITANTE=VI.ID_VISITANTE)')
    Left = 624
    Top = 204
  end
  object SqlUltVisita: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select data_visita'
      'from mov_diario_visitantes')
    Left = 576
    Top = 366
  end
end
