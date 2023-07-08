inherited FrmMovimentoVisitante: TFrmMovimentoVisitante
  Left = 205
  Top = 58
  Caption = 'Entrada de Visitantes'
  ClientHeight = 593
  ClientWidth = 1046
  KeyPreview = True
  OldCreateOrder = True
  ExplicitWidth = 1062
  ExplicitHeight = 632
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Width = 1046
    Height = 126
    ExplicitWidth = 1046
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
      Width = 1046
      ButtonWidth = 145
      TabOrder = 2
      ExplicitTop = 74
      ExplicitWidth = 1046
      inherited Novo: TToolButton
        Top = 0
        AllowAllUp = True
        AutoSize = True
        Caption = '&Cadastrar Nova Visita'
      end
      inherited Editar: TToolButton
        Left = 150
        Top = 0
        AllowAllUp = True
        AutoSize = True
        Caption = 'F2 -  Alterar Dados'
        ExplicitLeft = 150
      end
      inherited Cancelar: TToolButton
        Left = 285
        Top = 0
        AllowAllUp = True
        AutoSize = True
        ExplicitLeft = 285
      end
      inherited Salvar: TToolButton
        Left = 380
        Top = 0
        AllowAllUp = True
        AutoSize = True
        ExplicitLeft = 380
      end
      inherited Excluir: TToolButton
        Left = 457
        Top = 0
        AllowAllUp = True
        AutoSize = True
        Visible = False
        ExplicitLeft = 457
      end
      inherited Fechar: TToolButton
        Left = 535
        Top = 0
        AllowAllUp = True
        AutoSize = True
        Visible = False
        ExplicitLeft = 535
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
      Width = 1046
      Height = 40
      Align = alTop
      BevelOuter = bvLowered
      Color = clMedGray
      TabOrder = 0
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
    Width = 1046
    Height = 448
    ExplicitTop = 126
    ExplicitWidth = 1046
    ExplicitHeight = 448
    object Label4: TLabel [0]
      Left = 463
      Top = 1
      Width = 32
      Height = 13
      Caption = 'Label4'
    end
    object Label8: TLabel [1]
      Left = 369
      Top = 4
      Width = 32
      Height = 13
      Caption = 'Label8'
    end
    inherited PageControlModeloCadastro: TPageControl
      Width = 1046
      Height = 250
      ExplicitWidth = 1046
      ExplicitHeight = 250
      inherited TabSheetCadastro: TTabSheet
        Caption = 'Visitante'
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
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
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
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
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
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
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
      Width = 1046
      Height = 198
      Font.Style = [fsBold]
      ParentFont = False
      TabHeight = 30
      TabOrder = 2
      TabWidth = 200
      OnChange = PageControlConsultaChange
      ExplicitTop = 250
      ExplicitWidth = 1046
      ExplicitHeight = 198
      inherited TabSheetMovimentacao: TTabSheet [0]
        Caption = 'Visitantes do Dia de Hoje'
        Font.Style = [fsBold]
        ParentFont = False
        object Panel1: TPanel [0]
          Left = 0
          Top = 0
          Width = 1000
          Height = 30
          Align = alTop
          TabOrder = 0
          object LabelTotalVisitante: TLabel
            Left = 1
            Top = 1
            Width = 122
            Height = 16
            Align = alTop
            Caption = 'Total de visitantes: 0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
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
          Width = 35
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
    Top = 574
    Width = 1046
    ExplicitTop = 574
    ExplicitWidth = 1046
  end
  inherited ImageListCadastro: TImageList
    Left = 880
    Bitmap = {
      494C0101330036000C0020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000080000000A001000001002000000000000040
      0300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003163
      6300000000003163630031636300000000000000000000000000316363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000737373007373
      7300737373000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005252
      5200525252005252520021212100212121002121210021212100212121002121
      2100424242004242420042424200424242004242420042424200424242004242
      4200424242002121210021212100212121002121210021212100212121005252
      5200525252005252520000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000316363000000
      000063FFFF000000000000000000316363003163630031636300316363003163
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFCECE00FFCECE00FFCE
      CE00FFCECE00FFFFFF00CE9C9C00FFFFFF00CE9C9C00CE9C9C00000000000000
      0000000000007373730073737300737373000000000000000000000000000000
      000000000000000000000000000000000000000000000000000052525200DEDE
      DE00DEDEDE00DEDEDE0042424200424242004242420042424200424242004242
      420042424200CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE0042424200424242004242420042424200424242004242420042424200DEDE
      DE00DEDEDE00DEDEDE0052525200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000316363000000000063FF
      FF0063FFFF0063FFFF0063FFFF00000000000000000031636300000000003163
      6300316363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFFFFF00CE9C9C00FFFFFF00CE9C9C00CE9C9C00CE9C9C00CE9C
      9C00CE9C9C000000000000000000737373007373730073737300000000000000
      000000000000000000000000000000000000000000000000000052525200DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00A5A5A5007373730073737300737373007373730073737300737373007373
      7300A5A5A500DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE0052525200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000316363000000000063FFFF0063FF
      FF009CCECE009CCECE00639C9C00639C9C00000000000000000000FFFF000000
      0000316363003163630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C9C00CE9C9C00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFFFFF00CE9C9C00FFFFFF00CE9C9C00CE9C9C00CE9C9C00CE9C
      9C00CE9C9C00CE9C9C00CE9C9C00000000007373730073737300737373000000
      000000000000000000000000000000000000000000000000000052525200C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60052525200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000316363000000000063FFFF009CCECE009CCE
      CE00639C9C00639C9C00000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF00000000003163630031636300000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      9C00CE9C9C00CE9C9C00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFFFFF00CE9C9C00FFFFFF00CE9C9C00CE9C9C00CE9C9C00CE9C
      9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C000000000073737300737373007373
      730000000000000000000000000000000000000000000000000052525200A5A5
      A500A5A5A500A5A5A500A5A5A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A5A500A5A5
      A500A5A5A500A5A5A50052525200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000031636300000000009CCECE009CCECE00639C9C00639C
      9C00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000316363003163630000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9C9C00CE9C
      9C00CE9C9C00CE9C9C00FFCECE00FFCECE00FFCECE0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE9C9C00CE9C
      9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C0000000000737373007373
      7300737373000000000000000000000000000000000052525200737373007373
      7300737373007373730073737300424242004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200737373007373
      7300737373007373730073737300525252000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000031636300000000009CCECE00639C9C00639C9C00000000000000
      000031FFFF0031FFFF0031FFFF0031FFFF0031FFFF0031FFFF0031FFFF0031FF
      FF0031FFFF0031FFFF0000000000000000000000000031636300316363000000
      00000000000000000000000000000000000000000000CE9C9C00CE9C9C00CE9C
      9C00CE9C9C00CE9C9C00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00000000007373
      7300737373000000000000000000000000000000000052525200DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00525252000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003163630000000000639C9C00639C9C00000000000000000063FFFF0063FF
      FF0063FFFF0063FFFF0063FFFF0063FFFF0063FFFF0063FFFF0063FFFF0063FF
      FF0063FFFF0063FFFF0063FFFF00000000009CCECE0000000000000000003163
      63003163630000000000000000000000000000000000CE9C9C00CE9C9C00CE9C
      9C000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000CE9C9C00CE9C9C00CE9C9C00000000007373
      7300737373007373730000000000000000000000000052525200DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE0073737300C6C6C60073737300C6C6C60073737300DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00525252000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003163
      630000000000639C9C0000000000000000009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF00316363009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF00000000009CCECE009CCECE002100
      00000000000031636300316363003163630000000000CE9C9C00CE9C9C000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000CE9C9C00CE9C9C00000000007373
      7300737373007373730000000000000000000000000052525200DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00525252000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000316363000000
      000000000000000000009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF00316363009CFFFF009CFFFF00639C9C009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF00210000009CCECE009CCE
      CE0063FFFF0000000000000000003163630000000000CE9C9C0000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000FF9C9C00FF9C9C00FF9C9C00FF9C
      9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF0000000000CE9C9C00000000007373
      7300737373007373730073737300000000000000000052525200DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00525252000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000031636300000000000000
      0000CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF0031636300CEFFFF00CEFFFF0031636300CEFFFF00CEFFFF003163
      6300CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00210000009CCE
      CE009CCECE000000000031636300000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C
      9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C
      9C00FF9C9C0000000000FFFFFF00FFFFFF00FFFFFF0000000000000000007373
      7300737373007373730073737300000000000000000052525200DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00525252000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF003163
      6300CEFFFF00CEFFFF0031636300CEFFFF00CEFFFF0031636300CEFFFF00CEFF
      FF0031636300CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00FFFFFF000000
      00000000000031636300316363000000000000000000FFFFFF00FFFFFF00FFFF
      FF00000000009C636300FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C
      9C00FF9C9C00FF9C9C00FF9C9C00FFFFFF00FFFFFF00FFFFFF00FF9C9C00FF9C
      9C00FF9C9C00FF9C9C0000000000FFFFFF00FFFFFF00FFFFFF00000000007373
      7300737373007373730073737300000000000000000052525200DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00525252000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF0031636300CEFFFF00CEFF
      FF0031636300CEFFFF00CEFFFF00639C9C00CEFFFF00CEFFFF00639C9C00CEFF
      FF00CEFFFF0031636300CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF006331310063313100212121000031FF0000000000FFFFFF00FFFFFF000000
      0000CE9C9C00FF9C9C009C636300FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C
      9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FFFFFF00FF9C
      9C00FF9C9C009C636300FF9C9C0000000000FFFFFF00FFFFFF00000000007373
      7300737373007373730000000000000000000000000052525200DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00525252000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF0031636300CEFF
      FF00FFFFFF0031636300FFFFFF00CEFFFF0031636300CEFFFF00FFFFFF009CCE
      CE00FFFFFF00CEFFFF009CCECE00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFF
      FF00633131000000000073737300009CFF0000000000FFFFFF00FFFFFF000000
      0000CE9C9C00CE9C9C00FF9C9C009C6363009C636300FFCECE00FF9C9C00FF9C
      9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FFFFFF009C63
      63009C636300FF9C9C00CE9C9C0000000000FFFFFF00FFFFFF00000000007373
      7300737373007373730000000000000000000000000052525200DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00525252000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00639C
      9C00CEFFFF00FFFFFF00639C9C00FFFFFF00CEFFFF0031636300CEFFFF00FFFF
      FF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFF
      FF00633131002121210000CEFF00009CFF0000000000FFFFFF00FFFFFF000000
      0000CE9C9C00CE9C9C00CE9C9C00FF9C9C00FFCECE00FFFFFF00FFCECE009C63
      63009C6363009C6363009C6363009C6363009C6363009C6363009C636300FF9C
      9C00CE9C9C00CE9C9C00CE9C9C0000000000FFFFFF00FFFFFF00000000007373
      7300737373000000000000000000000000000000000052525200737373007373
      7300737373007373730073737300737373007373730073737300737373007373
      7300737373007373730073737300737373007373730073737300737373007373
      7300737373007373730073737300737373007373730073737300737373007373
      7300737373007373730073737300525252000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFF
      FF0031636300CEFFFF00FFFFFF009CCECE00FFFFFF00CEFFFF009CCECE00CEFF
      FF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFF
      FF009CFFFF000000000000CEFF000063FF0000000000FFFFFF00FFFFFF00FFFF
      FF0000000000CE9C9C00CE9C9C00CE9C9C00CE9C9C00FFCECE00FF9C9C00FF9C
      9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00CE9C
      9C00A5A5A500FF9C9C0000000000FFFFFF00FFFFFF00FFFFFF00000000007373
      7300000000000000000000000000000000000000000052525200DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE003163FF00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00525252000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFF
      FF00CEFFFF0031636300CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFF
      FF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00000000000000
      000000CEFF0000FFFF00009CFF0000CEFF000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
      9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
      9C00CE9C9C0000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000052525200DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00A5A5A500DEDEDE00DEDEDE00DEDEDE0000BD0000DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00525252000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF009CCECE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CEFFFF006331310021212100000000002121
      210000CEFF00009CFF000063FF00639CFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000CE9C9C00CE9C9C00CE9C
      9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000052525200DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00A5A5A500525252005252520052525200A5A5A500DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00525252000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00CEFFFF00FFFF
      FF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFF
      FF00CEFFFF00FFFFFF000000000000FFFF0000CEFF0000CEFF0000CEFF0000CE
      FF00009CFF000000BD0000008C000063FF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000007373730073737300000000000000
      0000000000000000000000000000000000000000000000000000525252005252
      5200525252005252520052525200525252005252520052525200525252005252
      5200525252005252520052525200DEDEDE0052525200DEDEDE00525252005252
      5200525252005252520052525200525252005252520052525200525252005252
      5200525252005252520052525200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEFF
      FF00000000000000000031FFFF009CCEFF00639CFF0000CEFF0000CEFF000063
      FF000031FF00000000000000AD000031FF000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000009C9C9C000000000073737300737373000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004242420052525200C6C6C60042424200DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00424242009C9C9C004242
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF000000000000CE
      FF00009CFF0000CEFF000031FF0000CEFF00009CFF0000CEFF0000CEFF000063
      FF000031FF00000000000000AD000031FF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000C6C6C600C6C6C600C6C6C6009C9C9C0000000000737373007373
      7300000000000000000000000000000000000000000000000000000000000000
      0000000000004242420073737300C6C6C60042424200F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF0042424200C6C6C6004242
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CEFFFF000000000000FFFF0000CEFF00639C
      FF0000CEFF00009CFF00009CFF00009CFF0000CEFF0000CEFF00009CFF000031
      FF000000000000000000009CFF0000008C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C60000000000000000007373
      7300737373000000000000000000000000000000000000000000000000000000
      0000000000004242420073737300C6C6C60042424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0042424200C6C6C6004242
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00000000000000000031FFFF009CCEFF00639CFF00009C
      FF00639CFF000031FF000031FF00009CFF00009CFF000063FF000031FF000031
      FF000031FF0000000000000000000000AD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C600FFFFFF00FFFFFF00C6C6C6000000000000000000000000000000
      0000737373007373730000000000000000000000000000000000000000000000
      0000000000004242420073737300C6C6C60042424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0042424200C6C6C6004242
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000AD0000008C000031FF000031FF0000CEFF00009CFF00009C
      FF000031FF000031FF000031FF0000639C0000CEFF0000008C000031FF000031
      FF000000AD000000000000000000009CFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001010100000000000000000000000
      0000000000007373730073737300000000000000000000000000000000000000
      0000000000000000000042424200C6C6C60042424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0042424200424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000AD0000008C000031FF00009CFF000031FF000063
      9C0000008C000031FF000031FF000000AD000000AD000000AD000000AD000031
      FF000000AD0000000000C6C6C600009CFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000021212100737373002121210010101000000000000000
      0000000000000000000073737300737373000000000000000000000000000000
      00000000000000000000000000004242420042424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000AD0000008C000031FF000000FF000000FF000063
      9C00009CCE000031FF000000AD000031FF000000AD0000000000000000000031
      FF000000AD0000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000212121007373730021212100101010000000
      0000000000000000000000000000737373000000000000000000000000000000
      00000000000000000000000000000000000042424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF0000639C000031FF00009C
      CE00000000000000AD000031FF00009CFF00000000000000000000000000009C
      FF00009CFF0000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002121210073737300212121001010
      1000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000009CFF000000FF00319CFF000031FF00009CCE000000FF000031
      FF0000000000009CFF000031FF0000000000C6C6C60000000000000000000000
      00000000AD0000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021212100737373002121
      2100101010000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000009C
      FF000000AD000000AD00009CFF00FFFFFF00C6C6C600009CCE000000AD000000
      FF0000000000000000000000FF0000000000C6C6C60000000000000000000000
      0000009CFF0000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000212121007373
      7300212121001010100000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEDEDE00C6C6C600C6C6C600C6C6
      C6000000000000000000DEDEDE00C6C6C600C6C6C60000000000009CFF000000
      8C00009CFF00000000000000FF0000000000C6C6C600C6C6C600000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002121
      2100737373002121210010101000000000000000000000000000000000000000
      00000000000000000000000000000000000042424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C6C6C600DEDEDE000000000000000000DEDEDE00DEDE
      DE00C6C6C600DEDEDE00C6C6C600DEDEDE000000000000000000000000000000
      AD00000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600A5A5A500C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042424200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C600DEDEDE00A5A5A500A5A5A500A5A5A500A5A5A500DEDEDE00A5A5
      A500DEDEDE00A5A5A500A5A5A500DEDEDE00DEDEDE00DEDEDE00C6C6C600009C
      FF00C6C6C600C6C6C60000000000C6C6C600A5A5A500A5A5A500C6C6C6000000
      0000C6C6C600A5A5A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      4200424242004242420042424200424242004242420042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000316363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000316363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003163
      6300000000003163630031636300000000000000000000000000316363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003163
      6300000000003163630031636300DEDEDE00DEDEDE00DEDEDE00316363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000008C0000008C0000008C0000008C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000316363000000
      000063FFFF000000000000000000316363003163630031636300316363003163
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000316363000000
      000063FFFF000000000000000000316363003163630031636300316363003163
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000008C0000008C0000009C0000009C0000008C0000008C000000
      8C0000008C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000316363000000000063FF
      FF0063FFFF0063FFFF0063FFFF00000000000000000031636300000000003163
      6300316363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000316363000000000063FF
      FF0063FFFF0063FFFF0063FFFF00000000000000000031636300000000003163
      6300316363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000008C0000009C000000AD000000AD000000AD0000009C000000
      9C0000009C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000316363000000000063FFFF0063FF
      FF009CCECE009CCECE00639C9C00639C9C00000000000000000000FFFF000000
      0000316363003163630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000316363000000000063FFFF0063FF
      FF009CCECE009CCECE00639C9C00639C9C00000000000000000000FFFF000000
      0000316363003163630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000008C0000008C000000AD000000CE000000CE000000CE000000AD000000
      AD0000009C0000008C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000316363000000000063FFFF009CCECE009CCE
      CE00639C9C00639C9C00000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF00000000003163630031636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000316363000000000063FFFF009CCECE009CCE
      CE00639C9C00639C9C00000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF00000000003163630031636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000008C000000AD000000CE000000DE000000DE000000CE000000DE000000
      AD0000009C0000008C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000031636300000000009CCECE009CCECE00639C9C00639C
      9C00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000316363003163630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000031636300000000009CCECE009CCECE00639C9C00639C
      9C00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000316363003163630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000AD000000CE000000FF000000FF000000FF000000DE000000DE000000
      AD0000009C0000008C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000031636300000000009CCECE00639C9C00639C9C00000000000000
      000031FFFF0031FFFF0031FFFF0031FFFF0031FFFF0031FFFF0031FFFF0031FF
      FF0031FFFF0031FFFF0000000000000000000000000031636300316363000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000031636300000000009CCECE00639C9C00639C9C00000000000000
      000031FFFF0031FFFF0031FFFF0031FFFF0031FFFF0031FFFF0031FFFF0031FF
      FF0031FFFF0031FFFF0000000000000000000000000031636300316363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000AD000000CE000000FF00FFFFFF000000FF000000DE000000DE000000
      AD000000AD0000008C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003163630000000000639C9C00639C9C00000000000000000063FFFF0063FF
      FF0063FFFF0063FFFF0063FFFF0063FFFF0063FFFF0063FFFF0063FFFF0063FF
      FF0063FFFF0063FFFF0063FFFF00000000009CCECE0000000000000000003163
      6300316363000000000000000000000000000000000000000000000000000000
      00003163630000000000639C9C00639C9C00000000000000000063FFFF0063FF
      FF0063FFFF0063FFFF0063FFFF0063FFFF0063FFFF0063FFFF0063FFFF0063FF
      FF0063FFFF0063FFFF0063FFFF00000000009CCECE0000000000000000003163
      6300316363000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000DE000000FF000000FF000000FF000000DE000000CE000000
      AD0000008C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003163
      630000000000639C9C0000000000000000009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF00316363009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF00000000009CCECE009CCECE002100
      0000000000003163630031636300316363000000000000000000000000003163
      630000000000639C9C0000000000000000009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF00316363009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF00000000009CCECE009CCECE002100
      00000000000031636300316363000000000000000000000000007B7B7B00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000AD000000DE000000DE000000DE000000AD0000008C000000
      8C0000008C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000316363000000
      000000000000000000009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF00316363009CFFFF009CFFFF00639C9C009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF00210000009CCECE009CCE
      CE0063FFFF000000000000000000316363000000000000000000316363000000
      000000000000000000009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF00000000000000000031636300000000003163630031636300000000003163
      6300316363003163630031636300316363003163630000000000316363003163
      6300316363000000000000000000316363000000000000000000FFFFFF00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008C0000008C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000031636300000000000000
      0000CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF0031636300CEFFFF00CEFFFF0031636300CEFFFF00CEFFFF003163
      6300CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00210000009CCE
      CE009CCECE000000000031636300000000000000000031636300000000000000
      0000CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00525252000000000000000000316363000000000031636300316363000000
      0000316363003163630031636300316363003163630031636300000000003163
      6300316363000000000031636300316363000000000000000000FFFFFF00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000008C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF003163
      6300CEFFFF00CEFFFF0031636300CEFFFF00CEFFFF0031636300CEFFFF00CEFF
      FF0031636300CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00FFFFFF000000
      0000000000003163630031636300000000000000000000000000CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF003163
      6300CEFFFF0052525200424242000000000000000000316363009CCECE009CCE
      CE0031636300639C9C00639C9C00639C9C00639C9C00639C9C00639C9C000000
      0000000000003163630031636300316363000000000000000000FFFFFF00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000DE0000008C0000008C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF0031636300CEFFFF00CEFF
      FF0031636300CEFFFF00CEFFFF00639C9C00CEFFFF00CEFFFF00639C9C00CEFF
      FF00CEFFFF0031636300CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00210000003163630031636300316363000000000000000000FFFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF0031636300CEFFFF00FFFF
      FF00316363005252520042424200639CFF00639CFF000000000000000000CEFF
      FF00CEFFFF0031636300CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00000000003163630031636300000000000000000000000000FFFFFF00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000DE0000008C0000008C0000008C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF0031636300CEFF
      FF00FFFFFF0031636300FFFFFF00CEFFFF0031636300CEFFFF00FFFFFF009CCE
      CE00FFFFFF00CEFFFF009CCECE00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFF
      FF00CEFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF0031636300CEFF
      FF00FFFFFF0052525200FFFFFF009C9CFF00639CFF00639CFF00639CFF000000
      0000FFFFFF00CEFFFF009CCECE00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFF
      FF00CEFFFF000000000000000000000000000000000000000000FFFFFF00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD000000FF000000FF000000FF000000FF00BDBDBD00BDBDBD007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000DE000000DE0000008C0000008C0000008C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00639C
      9C00CEFFFF00FFFFFF00639C9C00FFFFFF00CEFFFF0031636300CEFFFF00FFFF
      FF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFF
      FF00CEFFFF00CEFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00639C
      9C00CEFFFF00FFFFFF0052525200FFFFFF005252520000000000000000000000
      000000000000FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFF
      FF00CEFFFF00CEFFFF0000000000000000000000000000000000FFFFFF00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000DE000000DE000000DE0000008C0000008C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFF
      FF0031636300CEFFFF00FFFFFF009CCECE00FFFFFF00CEFFFF009CCECE00CEFF
      FF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFF
      FF0031636300CEFFFF0052525200FFFFFF005252520000FFFF0042424200319C
      FF00319CFF0000000000FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000DE000000DE000000DE0000008C0000008C000000
      8C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFF
      FF00CEFFFF0031636300CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFF
      FF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFF
      FF00CEFFFF0031636300525252005252520052525200FFFFFF0000FFFF004242
      4200319CFF00319CFF0000000000FFFFFF00CEFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FFFF
      FF007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000DE000000DE000000DE0000008C0000008C000000
      8C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF009CCECE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CEFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF009CCECE00525252009CFFFF009C9C9C00FFFFFF0000FF
      FF0042424200319CFF00319CFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD00BDBDBD00BDBDBD00BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00BDBDBD00BDBDBD00BDBD
      BD00FFFFFF007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000DE000000DE000000DE000000DE000000DE0000008C000000
      8C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00CEFFFF00FFFF
      FF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFF
      FF00CEFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00CEFFFF00FFFF
      FF00CEFFFF00FFFFFF00CEFFFF0052525200319CFF009CFFFF009C9C9C00FFFF
      FF0000FFFF0042424200319CFF00319CFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000DE000000DE000000DE000000DE000000DE0000008C000000
      8C0000008C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0052525200319CFF009CFFFF009C9C
      9C00FFFFFF0000FFFF0042424200319CFF00319CFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000DE000000DE000000DE000000DE000000DE0000008C000000
      8C0000008C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF0052525200319CFF009CFF
      FF009C9C9C00FFFFFF0000FFFF0042424200319CFF00319CFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      8C0000008C0000008C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CEFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CEFFFF00000000000000000052525200319C
      FF009CFFFF009C9C9C00FFFFFF0000FFFF0042424200319CFF00319CFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B00FFFFFF007B7B
      7B00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000007B7B7B00FFFFFF007B7B7B007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000DE000000DE000000DE000000DE000000DE006363FF006363FF006363
      FF0000008C0000008C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000005252
      5200319CFF009CFFFF009C9C9C00FFFFFF0000FFFF0042424200319CFF00319C
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000DE000000DE000000DE006363FF006363FF000000DE000000DE000000
      DE006363FF0000008C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000052525200319CFF009CFFFF009C9C9C00FFFFFF0000FFFF00424242004242
      4200424242000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000DE006363FF006363FF000000DE000000DE000000DE000000DE000000
      DE000000DE006363FF0000008C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000052525200319CFF009CFFFF009C9C9C00FFFFFF00424242006363
      CE006363CE0031319C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006363
      FF006363FF000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE006363FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000052525200319CFF009CFFFF0052525200FFFFFF006363
      CE006363CE004242420042424200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B00FFFFFF00FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FFFFFF00FFFFFF007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      DE000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000DE000000DE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000052525200319CFF00525252009C9CFF00FFFF
      FF00424242009C9CFF009C9CFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000DE000000DE000000DE000000DE000000DE000000DE000000DE000000
      DE000000DE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000052525200525252009C9CFF005252
      5200FFFFFF009C9CFF009C9CFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000DE000000DE000000DE000000DE000000DE000000DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000525252009C9CFF005252
      5200FFFFFF009C9CFF009C9CFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000DE000000DE000000DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000525252005252
      5200FFFFFF009C9CFF0052525200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005252
      5200525252005252520000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000042424200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000840000008400000084000000
      8400000084000000B5000000B5000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD00BDBDBD00000000000000000000000000BDBDBD00BDBDBD000000
      00000000000000000000BDBDBD00BDBDBD000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE63
      0000CE3100009400000000000000424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000840000008400A59C9C00A59C9C00A59C
      9C00A59C9C00A59C9C00A59C9C00A59C9C00A59C9C00A59C9C00A59C9C00A59C
      9C00A59C9C00A59C9C00A59C9C002931FF002931FF0000000000000000000000
      000000000000000000000000000000000000735263009C738C00735263006352
      5200423131004221310010001000100000002110100031102100311021002110
      1000100000002100100010001000100000001000000010001000210010001000
      0000100000002100100010001000100000002110100031102100311021003121
      2100211010002100100010001000FFCEDE000000000000000000BDBDBD000000
      00000000000000000000BDBDBD00BDBDBD00000000000000000000000000BDBD
      BD00BDBDBD00000000000000000000000000BDBDBD00BDBDBD00000000000000
      0000FFFF0000FFFF000000000000000000000000000000000000BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005252520000000000CE63
      0000CE3100009400000000000000424242004242420042424200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000840000008400A59C9C0000007300000073000000
      73000000730000007300000073000000FF000000730000007300000073000000
      7300000073000000B5002931FF00BDBDBD002931FF002931FF00000000000000
      00000000000000000000000000000000000063525200AD9C9C00737363007352
      5200523142003131210010000000210010003110210021211000211000002100
      1000210010001000000010000000210000002100100010000000100000002100
      1000210000001000000010000000210010002100100021101000212110003121
      2100210000001000000010000000DE9CAD00000000000000000000000000BDBD
      BD00BDBDBD00000000000000000000000000BDBDBD00BDBDBD00000000000000
      000000000000BDBDBD00BDBDBD00000000000000000000000000BDBDBD000000
      0000FFFF0000FFFF00007B7B000000000000BDBDBD0000000000000000000000
      0000BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      000000000000000000000000000073737300737373005252520000000000CE63
      0000CE3100009400000000000000000000000000000000000000424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000840000008400A59C9C000000730000007300000073000000
      7300000073000000730000007300000073000000730000007300000073000000
      730000007300000073002931FF002931FF00BDBDBD006363FF006363FF000000
      00000000000000000000000000000000000063525200BDADAD00736363007352
      5200523142003131210010100000210010002100100010100000100000002100
      0000210010001000000010000000210010002100000010000000100000002100
      0000210010001000000010000000210010002100000021211000312110003110
      2100210010001000000010000000CE9CAD00BDBDBD00BDBDBD00000000000000
      000000000000BDBDBD00BDBDBD00000000000000000000000000BDBDBD00BDBD
      BD00000000000000000000000000BDBDBD00BDBDBD0000000000000000000000
      0000FFFF0000FFFF00007B7B00007B7B000000000000BDBDBD00BDBDBD000000
      00000000000000000000BDBDBD00BDBDBD000000000000000000000000000000
      000000000000737373004242420073737300737373005252520000000000CE63
      0000CE3100009400000000000000293194000000840000004200000000004242
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000840000008400A59C9C00000084000000730000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000007300000073002931FF006363FF00FFFFFF009494FF009494
      FF000000000000000000000000000000000073526300BD9CBD009C738C007363
      6300423142004221310010001000100000001000000010001000210010001000
      0000100000002100100010001000100000001000000010001000210010001000
      0000100000002100100010001000100000001000000010001000311021002121
      21002110100021001000100010009C8C8C000000000000000000BDBDBD00BDBD
      BD00000000000000000000000000BDBDBD00BDBDBD0000000000000000000000
      0000BDBDBD00BDBDBD00000000000000000000000000BDBDBD00BDBDBD000000
      0000FFFF0000FFFF00007B7B00007B7B00007B7B00000000000000000000BDBD
      BD00BDBDBD00000000000000000000000000000000000000000000000000A59C
      9C0073737300000000004242420073737300737373005252520000000000CE63
      0000CE3100009400000000000000293194000000840000004200000000000000
      0000000000004242420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      840000008400A59C9C0000008400000073000031940000319400003194000031
      9400003194000031940000000000003194000031940000319400003194000031
      94000031940000000000000073006363FF006363FF009494FF00FFFFFF006363
      FF006363FF0000000000000000000000000063526300BDADBD00AD8C9C007363
      6300424242003121310010001000100000001000000010001000100010001000
      0000100000001000100010001000100000001000000010001000100010001000
      0000100000001000100010001000100000001000000010001000311021002121
      21001000000010001000100010009C8C8C00BDBDBD0000000000000000000000
      0000BDBDBD00BDBDBD00000000000000000000000000BDBDBD00BDBDBD000000
      00000000000000000000BDBDBD00BDBDBD000000000000000000000000000000
      0000FFFF0000FFFF00007B7B00007B7B00007B7B00007B7B0000000000000000
      000000000000BDBDBD00BDBDBD000000000000000000CE31000000000000A59C
      9C0073737300000000004242420073737300737373005252520000000000CE63
      0000CE310000940000000000000029319400000084000000420000000000CE31
      0000940000000000000042424200424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      8400A59C9C00000084000000840000319400003194002963FF002963FF006394
      FF006394FF000000000000319400003194002963FF002963FF002963FF002963
      FF002963FF000031940000000000000073009494FF009494FF006363FF00FFFF
      FF002931FF002931FF00000000000000000063525200BDADAD00AD9C8C009C73
      8C00523142004242310010000000210010002100000010000000100000002100
      0000210010001000000010000000210010002100000010000000100000002100
      0000210010001000000010000000210010002100000010000000312121003110
      1000210010001000000010000000736363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00000000000000
      0000FFFF0000FFFF00007B7B00007B7B00007B7B00007B7B00007B7B00000000
      00000000000000000000000000000000000000000000CE31000000000000A59C
      9C00737373007373730042424200A59C9C00A59C9C000000000000000000CE31
      0000CE310000940000000000000029319400000084000000420000000000CE31
      0000940000000000000042424200424242004242420042424200000000000000
      000000000000000000000000000000000000000000000000840000008400A59C
      9C0000008400000084000000B500003194002963FF002963FF006394FF0094CE
      FF006394FF0000319400003194002963FF006394FF006394FF006394FF006394
      FF002963FF002963FF0000319400000073009494FF006363FF006363FF002931
      FF00BDBDBD002931FF000000FF000000000063525200BDADAD00AD9C9C00AD8C
      9C00735252005242310010000000210000002100100010000000100000002100
      1000210000001000000010000000210000002100100010000000100000002100
      1000210000001000000010000000210000002100100010000000312121002100
      1000210000001000000010000000735252000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD00BDBDBD00000000000000000000000000BDBDBD000000
      0000FFFF0000FFFF00007B7B00007B7B00007B7B00007B7B00007B7B00000000
      00007B7B7B00BDBDBD00000000000000000000000000CE31000000000000A59C
      9C0073737300A59C9C00A59C9C000000000000000000CE310000CE310000CE31
      0000CE310000940000000000000029319400000084000000420000000000CE31
      0000940000000000000042424200424242004242420042424200000000000000
      0000000000000000000000000000000000000000840000008400A59C9C000000
      8400000084000000B50000007300003194002963FF002963FF0094CEFF0094CE
      FF0094CEFF002963FF006394FF006394FF0094CEFF0094CEFF0094CEFF006394
      FF006394FF002963FF000031940000000000000073006363FF002931FF002931
      FF002931FF00BDBDBD000000FF000000FF0063526300BDADBD00BDADBD009C9C
      9C00635252005231420010001000100000001000000010001000100010001000
      0000100000001000100010001000100000001000000010001000100010001000
      0000100000001000100010001000100000001000000010001000100010001000
      0000100000001000100010001000635252000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD00BDBDBD0000000000000000000000
      0000FFFF0000FFFF00007B7B00007B7B00007B7B00007B7B00007B7B00000000
      00007B7B7B00BDBDBD00000000000000000000000000CE31000000000000A59C
      9C00A59C9C000000000000000000CE310000CE310000CE310000CE310000CE31
      0000CE310000940000000000000029319400000084000000420000000000CE31
      0000940000000000000042424200424242004242420000000000000000000000
      00000000000000000000000000000000000000008400A59C9C00000084000000
      84000000B5000000B50000319400003194002963FF0094CEFF0094CEFF0094CE
      FF0094CEFF006394FF0094CEFF0094CEFF0094CEFF0094CEFF0094CEFF0094CE
      FF006394FF006394FF002963FF0000319400000073002931FF002931FF002931
      FF000000FF000000FF00A59C9C000000FF0073526300BD9CBD00BDADBD00BDAD
      AD00BDADAD00FFFFFF0063526300BDADAD00BDADAD00BDADBD00CEADBD00BDAD
      AD00BDADAD00BDADBD00BD9CBD00BDADAD00BDADAD00BD9CBD00BDADBD00BDAD
      AD00BDADAD00BDADBD00AD8C9C00BDADAD00EFFFEF00FFFFFF00735263001000
      0000100000002100100010001000635252000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF0000FFFF00007B7B00007B7B00007B7B00007B7B00007B7B00000000
      00007B7B7B00BDBDBD00000000000000000000000000CE310000000000000000
      000000000000CE310000CE310000CE310000CE310000CE630000CE630000CE31
      0000CE310000940000000000000000009400000084000000420000000000CE31
      0000940000000000000042424200000000000000000000000000000000000000
      00000000000000000000424242000000000000008400A59C9C00000084000000
      B5000000B5000000FF0000319400003194002963FF0094CEFF0094CEFF0094CE
      FF006394FF0094CEFF0094CEFF0094CEFF0094CEFF0094CEFF0094CEFF0094CE
      FF0094CEFF006394FF002963FF000031940000000000000073002931FF000000
      FF000000FF000000FF00A59C9C000000FF0063525200BDADAD00BDADAD00CEAD
      BD00FFFFFF00BDADAD00736363008C6373009C8C9C00AD9C9C00BDADAD00CEAD
      BD00CEADAD00BDADAD00BDADAD00CEADAD00CEADBD00BDADAD00BDADAD00CEAD
      BD00CEADAD00BDADAD00BDAD9C00AD8C9C00AD8C9C00BDADAD00BDADAD002100
      1000210000001000000010000000735252000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD00BDBD
      BD00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000FFFF0000FFFF00007B7B00007B7B00007B7B00007B7B00007B7B00000000
      00007B7B7B00BDBDBD00000000000000000000000000CE310000CE310000CE31
      0000CE310000CE310000CE310000CE630000CE630000BDBDBD00BDBDBD00CE63
      0000CE310000940000000000000000009400000084000000420000000000CE31
      0000940000000000000000000000000000000000000000000000000000002931
      94000000840000004200000000004242420000008400A59C9C000000B5000000
      B5000000FF000000FF00003194002963FF002963FF0094CEFF0094CEFF0094CE
      FF0094CEFF000031940094CEFF0094CEFF0094CEFF0094CEFF0094CEFF0094CE
      FF0094CEFF0094CEFF006394FF002963FF0000319400000073000000FF000000
      FF000000FF000000FF00A59C9C000000FF00635252009C9C8C00BDADAD00CEAD
      AD00CEADAD00737363008C8C73008C737300FFCE730063523100000000000000
      000042314200102110004242310063525200736363008C8C7300AD9C9C00BD9C
      AD00BDADAD00BDADAD00BDADAD00BD9CAD00BD8C9C00AD8C8C00FFFFFF002100
      0000210010001000000010000000735263000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000FFFF0000FFFF00007B7B00007B7B00007B7B00007B7B00007B7B00000000
      00007B7B7B00BDBDBD00000000000000000000000000CE310000CE310000CE31
      0000CE310000CE630000CE630000BDBDBD00BDBDBD00DEDEDE00BDBDBD00CE63
      0000CE310000940000000000000000009400000084000000420000000000CE31
      0000940000000000000000000000000000000000000052525200000000002931
      94000000840000004200000000004242420000008400A59C9C000000B5000000
      FF000000FF000000FF00003194002963FF006394FF006394FF006394FF0094CE
      FF0094CEFF006394FF00003194006394FF0094CEFF006394FF006394FF000031
      94006394FF0094CEFF0094CEFF002963FF000031940000000000000073000000
      FF000000FF000000FF00A59C9C000000FF0073526300AD8C9C00BD9CAD00BDAD
      AD00BDADAD008C637300736373008C737300EFCE6300FFBD7300000000007363
      63000000000042314200423142004231310052524200635263008C6373008C73
      7300AD9C9C00BD9CAD00BD9CBD00BDADAD00AD8C8C008C637300FFBDDE001000
      0000100000002100100010001000635252000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B00000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000FFFF0000FFFF00007B7B00007B7B00007B7B00007B7B00007B7B00000000
      00007B7B7B00BDBDBD00000000000000000000000000CE310000CE310000CE63
      0000CE630000BDBDBD00BDBDBD00DEDEDE00DEDEDE00DEDEDE00BDBDBD00CE63
      0000CE310000940000000000000000009400000084000000420000000000CE31
      0000940000000000000000000000737373007373730052525200000000002931
      9400000084000000420000000000424242000000B500A59C9C000000FF000000
      FF000000FF000000FF00003194002963FF006394FF006394FF006394FF000031
      94002963FF006394FF006394FF002963FF00003194002963FF002963FF002963
      FF00003194006394FF0094CEFF006394FF002963FF0000319400000073000000
      73000000FF000000FF00A59C9C000000FF00635263008C737300AD8C9C00BDAD
      AD00BDADAD008C637300735263007373730052310000BD9C7300BD9C73006352
      310031313100BD9CAD0063526300525242004242420052425200635263006363
      6300737363008C738C009C738C008C8C73009C738C008C637300DE9CBD001000
      0000100000001000100010001000635252000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B00007B7B
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000FFFF0000FFFF00007B7B000000000000000000007B7B00007B7B00000000
      00007B7B7B00BDBDBD00000000000000000000000000CE310000CE310000BDBD
      BD00BDBDBD00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00BDBDBD00CE63
      0000CE310000940000000000000029319400000084000000420000000000CE31
      0000940000000000000042424200737373007373730052525200000000002931
      9400000084000000420000000000000000000000B500A59C9C000000FF000000
      FF000000FF000000FF00003194002963FF006394FF006394FF0094CEFF006394
      FF006394FF002963FF00003194006394FF006394FF006394FF006394FF002963
      FF002963FF00000073006394FF00003194006394FF002963FF00000000000000
      7300000073000000FF00A59C9C000000FF0063525200737363009C9C8C00CEAD
      AD00CEADAD007373630063635200736363008C63730063523100FFCE6300CE9C
      73000000000031313100BDADAD00BD9CAD006352520063635200635252007363
      63008C637300737363008C7373009C738C00AD738C008C736300CEADAD002100
      0000210010001000000010000000735263000000000000000000000000000000
      0000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FFFF00007B7B
      00007B7B0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000FFFF0000FFFF0000000000007B7B7B00000000007B7B00007B7B00000000
      00007B7B7B00BDBDBD00000000000000000000000000CE310000CE310000FFFF
      FF00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00A59C9C00A59C
      9C00CE63000000000000BDBDBD0029319400000084000000420000000000CE31
      0000940000000000000042424200737373007373730052525200000000002931
      9400000084000000420000000000000000000000FF00A59C9C000000FF000000
      FF000000FF000000FF00003194002963FF002963FF0094CEFF0094CEFF0094CE
      FF0094CEFF0094CEFF006394FF0094CEFF0094CEFF006394FF0094CEFF0094CE
      FF006394FF0000007300000073002963FF0094CEFF002963FF00003194000000
      0000000073000000FF00A59C9C000000FF00635252008C737300AD9C9C00CEAD
      BD00CEADAD007363630063525200735263008C63730073736300BDAD7300FFCE
      730063423100635231000000000042313100BD9CAD00BDADAD00635252008C73
      73008C63730073636300737363008C7373008C63730073636300AD9C9C002100
      100021000000100000001000000073525200000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FFFF0000FFFF
      00007B7B00007B7B0000000000007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000FFFF0000FFFF00000000000000000000000000007B7B00007B7B00000000
      00007B7B7B00BDBDBD00000000000000000000000000CE310000CE310000FFFF
      FF00DEDEDE00DEDEDE00DEDEDE00DEDEDE00A59C9C00A59C9C00A59C9C000000
      000000000000DEDEDE00BDBDBD0029319400000084000000420000000000CE31
      0000940000000000000042424200737373007373730052525200000000002931
      9400000084000000420000000000000000000000FF00A59C9C000000FF000000
      FF000000FF000000FF0000319400003194002963FF002963FF0094CEFF0094CE
      FF0094CEFF0094CEFF0094CEFF0094CEFF0094CEFF0094CEFF0094CEFF0094CE
      FF006394FF0000007300000073006394FF0094CEFF006394FF002963FF000000
      7300000073000000FF00A59C9C000000FF00635263009C738C00AD8C9C00BDAD
      AD00BDADAD00735263006352630063525200736363008C63730063423100BDAD
      7300BDAD730063423100000000000000000031313100BD9CAD00BD9CBD00BDAD
      AD0063635200736373008C637300737373008C8C8C00735273008C6373001000
      0000100000001000100010001000635252000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF00007B7B00007B7B0000000000007B7B7B007B7B7B007B7B7B000000
      0000FFFF0000FFFF00007B7B000000000000000000007B7B00007B7B00000000
      00007B7B7B00BDBDBD00000000000000000000000000CE310000CE310000FFFF
      FF00DEDEDE00DEDEDE00A59C9C00A59C9C00A59C9C000000000000000000DEDE
      DE00DEDEDE00DEDEDE00BDBDBD0029319400000084000000420000000000CE31
      0000940000000000000042424200A59C9C00A59C9C0000000000000000000000
      9400000084000000420000000000000000000000FF00A59C9C000000FF000000
      FF000000FF000000FF00003194002963FF002963FF00003194000031940094CE
      FF0094CEFF00003194006394FF0094CEFF0094CEFF006394FF000031940094CE
      FF006394FF0000007300000073000000FF006394FF0094CEFF002963FF000000
      FF000000FF000000FF00A59C9C000000B50073526300BD9CAD00736373009C8C
      8C00BDADAD007352630063526300635252006363630073527300634231005252
      3100FFCE7300BD9C730063423100635231002110000021000000BD9CAD00AD9C
      9C00AD9C9C00AD8CAD0052425200737373007373730073526300634252001000
      00001000000021001000100010006352520000000000000000007B7B00007B7B
      00007B7B00007B7B00007B7B00007B7B00007B7B00007B7B0000FFFF0000FFFF
      0000FFFF0000FFFF00007B7B00007B7B0000000000007B7B7B007B7B7B000000
      0000FFFF0000FFFF00007B7B00007B7B00007B7B00007B7B00007B7B00000000
      00007B7B7B00BDBDBD00000000000000000000000000CE310000CE310000FFFF
      FF00A59C9C00A59C9C00A59C9C000000000000000000DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00A59C9C00A59C9C000000CE0000000000CE630000CE31
      00009400000000000000A59C9C00000000000000000000009400000094000000
      9400000084000000420000000000000000000000FF00A59C9C000000FF000000
      FF000000FF000000FF00003194002963FF006394FF0000319400003194002963
      FF006394FF0000319400003194002963FF002963FF00000000002963FF000031
      94002963FF0000007300000073000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF00A59C9C000000B50063525200FFFFEF0073736300AD8C
      9C00CEADAD00635252006352520073525200737373009CAD9C00BDCEBD006352
      3100CE9C7300FFEFAD00BDAD6300CE9C7300635231002110000031313100AD8C
      9C00AD8C9C00AD9C9C009C8C8C009C8C8C008C63730063525200635252002100
      1000210000003131210010000000524242000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00007B7B00007B7B0000000000007B7B7B000000
      0000FFFF0000FFFF00007B7B00007B7B00007B7B00007B7B00007B7B00000000
      00007B7B7B00BDBDBD00000000000000000000000000CE310000CE310000A59C
      9C00A59C9C000000000000000000FFFFFF00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00A59C9C00A59C9C00A59C9C000000000000000000BDBDBD00CE630000CE31
      0000940000000000000000000000000094000000940000009400000094000000
      9400000084000000420000000000000000000000FF00A59C9C000000FF000000
      FF000000FF000000FF0000319400003194002963FF00003194002963FF006394
      FF0094CEFF00003194002963FF006394FF0094CEFF00003194002963FF006394
      FF0094CEFF0000007300000073000000FF000000FF000000FF000000FF000000
      FF000000FF000000B500A59C9C000000840063525200FFFFFF00736363008C73
      7300CEADAD00635252006352520073526300FFFFFF00BDCEBD00635252007352
      5200CE9C7300BDAD6300FFEFAD00FFDEAD00CE9C730063523100211000003110
      00009C738C008C8C73008C8C73009C738C008C73730063525200635252002100
      0000210010004242310010000000735263000000000000000000FFFF0000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF00007B7B0000000000007B7B7B000000
      0000FFFF0000FFFF00007B7B00007B7B00007B7B00007B7B00007B7B00000000
      00007B7B7B00BDBDBD00000000000000000000000000CE630000CE6300000000
      0000000000000000940000009400FFFFFF00DEDEDE00DEDEDE00A59C9C00A59C
      9C00A59C9C000000000000000000DEDEDE00DEDEDE00A59C9C00A59C9C00CE63
      0000000000000000940000009400000094000000940029319400293194000000
      9400000084000000420000000000000000000000FF00A59C9C000000FF000000
      FF000000FF000000FF00003194002963FF006394FF00003194002963FF0094CE
      FF0094CEFF00003194002963FF006394FF0094CEFF00003194002963FF006394
      FF0094CEFF0000007300000073000000FF000000FF000000FF000000FF000000
      FF000000B5000000B500A59C9C000000840073526300FFFFFF008C6373007363
      6300BDADAD00735263006352630063636300CEEFCE0073637300735263006352
      520063523100BD9C7300FFDEBD00FFDEAD00BDAD7300BD9C7300634231002110
      0000312121008C738C008C638C008C7373008C73730063526300735263001000
      0000312121004231310010001000635252000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      000000000000FFFF0000FFFF00007B7B0000000000007B7B7B007B7B7B000000
      0000FFFF0000FFFF00007B7B00007B7B00007B7B00007B7B00007B7B00000000
      00007B7B7B00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000940000009400FFFFFF00A59C9C00A59C9C00A59C9C000000
      000000000000DEDEDE00DEDEDE00A59C9C00A59C9C00A59C9C00000000000000
      00000000940000009400000094002931940029319400BDBDBD00BDBDBD002931
      9400000084000000420000000000000000000000FF00A59C9C000000FF000000
      FF000000FF002931FF0000319400003194002963FF0000319400003194002963
      FF006394FF00003194006394FF006394FF0094CEFF0000319400003194002963
      FF002963FF0000007300000073000000FF000000FF000000FF000000FF000000
      B5000000B50000008400A59C9C00000084006352630063526300BDADBD008C73
      7300BDADAD006352630063526300635252006352520063526300635263006352
      52006352520063423100BD9C7300BDAD7300FFDEAD00FFDEBD00BD9C73006352
      3100211000002100000073637300736363006352630073526300635263001000
      0000423131006352630010001000635252000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF00000000
      0000FFFF0000FFFF00007B7B0000000000007B7B7B007B7B7B007B7B7B000000
      0000FFFF0000FFFF00007B7B00007B7B00007B7B00007B7B00007B7B00000000
      00007B7B7B00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000940000009400A59C9C00A59C9C000000000000000000DEDE
      DE00DEDEDE00A59C9C00A59C9C00A59C9C000000000000000000000094000000
      9400000094002931940029319400BDBDBD00BDBDBD00DEDEDE00BDBDBD002931
      9400000084000000420000000000000000000000FF00A59C9C000000FF000000
      FF002931FF002931FF002931FF006394FF006394FF00003194002963FF0094CE
      FF0094CEFF0000319400003194002963FF002963FF00003194002963FF006394
      FF0094CEFF0000007300000073000000FF000000FF000000FF000000B5000000
      B5000000840000008400A59C9C00000084006352520010000000BDADAD009C73
      7300CEADAD006352520063525200735263007352520063525200635252008C73
      8C00CEDECE00DEFFDE0063523100CE9C7300FFDEAD00FFEFAD00BDAD6300CE9C
      7300635231002110000021212100735263007352520063525200635252002100
      0000423142006352520010000000735263000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF00007B7B0000000000007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000FFFF0000FFFF00007B7B00007B7B00007B7B00007B7B00007B7B00000000
      00007B7B7B00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000CE000000CE000000000000000000CE310000FFFFFF00A59C
      9C00A59C9C00A59C9C0000000000000000000000000000009400000094002931
      940029319400BDBDBD00BDBDBD00DEDEDE00DEDEDE00DEDEDE00BDBDBD002931
      9400000084000000420000000000000000000000FF000000FF00BDBDBD002931
      FF002931FF002931FF006363FF002931FF006394FF0000319400003194002963
      FF006394FF00003194002963FF006394FF0094CEFF0000319400003194002963
      FF006394FF0000007300000073000000FF000000FF000000B5000000B5000000
      840000008400A59C9C0000008400000084006352520010000000FFFFFF00AD8C
      9C00CEADAD00635252006352520073525200CEDECE00DEFFDE00CEEFCE00CECE
      CE0073737300637363006352520063423100CE9C7300BDAD6300FFEFAD00FFDE
      AD00CE9C73006352310021100000311000007352630063525200635252003121
      3100735252004242310010000000735252000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      00007B7B0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000FFFF0000FFFF00007B7B00007B7B00007B7B00007B7B00007B7B00000000
      00007B7B7B00BDBDBD0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE310000CE310000A59C9C00A59C
      9C0000000000000000000000000000000000000000000000940000009400BDBD
      BD00BDBDBD00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00BDBDBD002931
      940000008400000042000000000000000000000000002931FF002931FF00BDBD
      BD002931FF006363FF006363FF009494FF002931FF00003194002963FF006394
      FF0094CEFF00003194006394FF006394FF0094CEFF00003194002963FF006394
      FF0094CEFF00000073000000FF000000FF000000B5000000B500000084000000
      8400A59C9C000000840000008400000000006352630010001000FFFFFF00BDAD
      AD00BDADAD00635263006352630063525200CEFFDE00CEDEDE00635263006352
      52006352520063526300635263006352520063523100BD9C7300FFDEBD00FFDE
      AD00BDAD7300BD9C730063423100211000002121210063526300635263004231
      3100423131003121310010001000635252000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF00007B7B
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000FFFF0000FFFF00007B7B00007B7B00007B7B00007B7B00007B7B00000000
      00007B7B7B00BDBDBD0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE630000CE630000000000000000
      000000000000000000000000000000000000000000000000940000009400FFFF
      FF00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00A59C9C00A59C
      9C000000CE0000000000000000000000000000000000000000002931FF002931
      FF00FFFFFF006363FF009494FF009494FF006363FF00003194006394FF0094CE
      FF0094CEFF0000319400003194002963FF002963FF00003194002963FF006394
      FF0094CEFF000000FF000000FF000000B5000000B5000000840000008400A59C
      9C0000008400000084000000000000000000735263001000100073526300FFFF
      FF00BDADAD00735263006352630063525200FFFFFF008C8C8C00735263006352
      5200635252008C738C00BDADBD00636363006352520063423100BD9C7300BDAD
      7300FFDEAD00FFDEBD00BD9C7300635231002110000021000000735263006352
      5200312121002100100010001000635252000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B00000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B0000000000FFFF0000FFFF00007B7B00007B7B00007B7B00007B7B00000000
      00007B7B7B00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000940000009400FFFF
      FF00DEDEDE00DEDEDE00DEDEDE00DEDEDE00A59C9C00A59C9C00A59C9C000000
      0000000000000000000000000000000000000000000000000000000000006363
      FF006363FF00FFFFFF009494FF006363FF006363FF002931FF002931FF006394
      FF002931FF000000FF002963FF006394FF0094CEFF00000073002931FF006394
      FF0094CEFF000000FF000000B5000000B5000000840000008400A59C9C000000
      840000008400000000000000000000000000635252001000000010000000FFFF
      FF00CEADAD00635252006352520073525200FFFFFF00CEDECE00635252007352
      630073737300CEDECE00738C730073525200735263006352520063523100CE9C
      7300FFDEAD00FFEFAD00BDAD6300CE9C73006352310021100000212121007352
      6300210000001000000010000000735252000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B0000000000FFFF0000FFFF00007B7B00007B7B00007B7B00000000
      00007B7B7B00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000940000009400FFFF
      FF00DEDEDE00DEDEDE00A59C9C00A59C9C00A59C9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009494FF009494FF00FFFFFF006363FF002931FF002931FF002931FF000000
      FF000000FF000000FF006394FF006394FF0094CEFF000000FF000000FF002931
      FF000000FF000000B5000000B5000000840000008400A59C9C00000084000000
      840000000000000000000000000000000000000000000000000000000000CEAD
      AD00CEADAD00635252006352520073526300735252009C9C8C00FFFFFF00FFFF
      FF00CECECE008C8C8C0063525200735263007352520063525200635252006342
      3100CE9C7300BDAD6300FFEFAD00FFDEAD00CE9C730063523100635221006342
      3100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000FFFF0000FFFF00007B7B00007B7B00000000
      00007B7B7B00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000940000009400FFFF
      FF00A59C9C00A59C9C00A59C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006363FF006363FF00BDBDBD002931FF002931FF000000FF000000
      FF000000FF000000FF002931FF006394FF002931FF000000FF000000FF000000
      FF000000B5000000B5000000840000008400A59C9C0000008400000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDADAD007352630063526300635252006352520063526300735263006352
      5200635252007352630063526300635252006352520063526300735263006352
      520063523100BD9C7300FFDEBD00FFDEAD00BDAD7300BD9C7300634231005252
      3100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B0000000000FFFF0000FFFF00007B7B00000000
      00007B7B7B00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000940000009400A59C
      9C00A59C9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002931FF002931FF00BDBDBD000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      B5000000B5000000840000008400A59C9C000000840000008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDADBD00635263006352520063525200635263008C6373008C73
      73008C7373009C638C00AD739C009C8C8C00AD8C8C00AD739C009C638C008C73
      73007363730063423100BD9C7300BDAD73006352310063423100634231006352
      3100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B0000000000FFFF0000FFFF00000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000CE000000CE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002931FF002931FF00A59C9C00A59C9C00A59C
      9C00A59C9C00A59C9C00A59C9C00A59C9C00A59C9C00A59C9C00A59C9C00A59C
      9C00A59C9C00A59C9C00A59C9C00000084000000840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063523100CE9C73006342310063523100635221000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000B5000000B5000000
      8400000084000000840000008400000084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000634231006352310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005252
      5200525252005252520052525200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000052525200525252005252
      5200525252000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000949494009494940094949400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000737373007373
      7300737373007373730073737300DEDEDE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000CEFF0000CEFF000063FF000063FF000000
      0000525252005252520052525200525252000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000CEFF0000CEFF000063FF000063FF0000000000525252005252
      5200525252005252520000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0094CEFF006394CE00000000000000000094949400949494000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000CEFF0000CEFF000063FF00000000007373
      7300737373007373730073737300737373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000CEFF000031CE0000CEFF0000CEFF000063FF000063FF000063
      FF00000000000000000052525200525252005252520052525200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000CE
      FF000031CE0000CEFF0000CEFF000063FF000063FF000063FF00000000005252
      5200525252005252520052525200525252000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000949494000000000094CEFF0094CEFF006394CE002963
      940000000000FFFFFF0094CEFF006394CE002963940000000000949494009494
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000052525200525252005252520000CEFF000063FF000063FF000000
      0000737373007373730073737300737373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000CEFF0000CEFF000031CE0000CEFF0000CEFF000063FF000063FF000063
      FF00000000009463CE0000000000525252005252520052525200525252005252
      5200000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000CEFF0000CE
      FF000031CE0000CEFF0000CEFF000063FF000063FF000063FF00000000005252
      5200525252005252520052525200525252005252520052525200000000000000
      00000000000000000000000000000000000000000000000000000000000094CE
      FF006394CE006394CE000000000000000000FFFFFF0094CEFF0094CEFF006394
      CE00296394000000000094CEFF0094CEFF006394CE0029639400000000009494
      9400949494000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000CEFF0000CEFF005252520052525200525252000063FF000063FF000063
      FF00000000007373730073737300000000000000000000000000000000000000
      0000000000000000000000000000CE949400CE94940063312900633129000000
      000000CEFF0000CEFF000031CE0000CEFF0000CEFF000063FF000063FF000063
      FF00000000009463CE0029009400000000005252520052525200525252005252
      5200525252005252520000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000CEFF0000CE
      FF000031CE0000CEFF0000CEFF000063FF000063FF000063FF00000000005252
      5200525252005252520052525200525252005252520052525200525252005252
      520000000000000000000000000000000000000000000000000000000000FFFF
      FF0094CEFF0094CEFF006394CE002963940000000000FFFFFF0094CEFF0094CE
      FF006394CE00296394000000000029639400296394006394CE00296394000000
      0000949494009494940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000CEFF0000CEFF0000CEFF005252520052525200000000000063FF000063
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000CE94940063312900CE949400CE94940063312900633129000000
      000000CEFF0000CEFF000031CE0000CEFF0000CEFF000063FF000063FF000063
      FF00000000009463CE0029009400290094000000000052525200525252005252
      5200525252005252520000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000CEFF0000CE
      FF000031CE0000CEFF0000CEFF000063FF000063FF000063FF00000000005252
      5200525252005252520052525200525252005252520052525200525252005252
      5200000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0094CEFF0094CEFF006394CE0029639400000000006394CE0094CE
      FF0094CEFF0029639400296394000000000029639400296394006394CE002963
      9400000000009494940094949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005252520000CEFF0000CEFF0000CEFF005252520000000000000000000063
      FF00000000000000000000000000000000000000000000000000000000000000
      0000CE949400CE94940063312900CE949400CE94940063312900633129000000
      000000CEFF0000CEFF000031CE0000CEFF0000CEFF000063FF000063FF000063
      FF00000000009463CE0029009400290094000000000052525200525252005252
      5200000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000CEFF0000CE
      FF000031CE0000CEFF0000CEFF000063FF000063FF000063FF00000000005252
      5200525252005252520052525200525252005252520052525200000000000000
      0000000000000000000000000000000000000000000094CEFF006394CE002963
      940000000000FFFFFF0094CEFF00000000000000000029639400000000002963
      9400296394002963940029639400000000000000000029639400296394006394
      CE00296394000000000094949400949494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000525252005252520000CEFF0000CEFF0000CEFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE949400CE94940063312900CE949400CE94940063312900633129000000
      000000CEFF0000CEFF000031CE0000CEFF0000CEFF000063FF000063FF000063
      FF00000000009463CE0029009400290094000000000052525200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000CEFF0000CE
      FF000031CE0000CEFF0000CEFF000063FF000063FF000063FF00000000005252
      5200525252005252520052525200525252000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0094CEFF006394
      CE00296394000000000000000000FF9494006331290000000000296394000000
      00002963940000000000000000006363CE000000A50000000000296394002963
      94006394CE002963940000000000949494009494940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000737373000000
      000052525200525252005252520000CEFF0000CEFF000063FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE949400CE94940063312900CE949400CE94940063312900633129000000
      000000CEFF0000CEFF000031CE0000CEFF0000CEFF000063FF000063FF000063
      FF00000000009463CE0029009400290094000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000CEFF0000CE
      FF000031CE0000CEFF0000CEFF000063FF000063FF000063FF00000000005252
      5200525252005252520000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FF949400FF949400FF9494006331290063312900000000000000
      0000000000006363CE006363CE006363CE000000A5000000A500000000002963
      9400296394006394CE0029639400000000009494940094949400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009463
      6300FF949400FFCECE00FFFFFF00FF949400FF94940000000000737373000000
      000000CEFF0052525200525252005252520000CEFF000063FF000063FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE949400CE94940063312900CE949400CE94940063312900633129000000
      000000CEFF0000CEFF000031CE0000CEFF0000CEFF000031CE000031CE000031
      CE00000000009463CE0029009400290094000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000CEFF0000CE
      FF000031CE0000CEFF0000CEFF000031CE000031CE000063FF00000000005252
      5200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF949400FF949400FF949400FF9494006331290063312900633129000000
      00006363CE006363CE006363CE006363CE000000A5000000A500000094000000
      000029639400296394006394CE00296394000000000094949400949494000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007373730073737300000000009463
      6300FF949400FFCECE00FFFFFF00FF949400FF94940000000000737373000000
      000000CEFF0000CEFF005252520052525200525252000063FF000063FF000063
      FF00000000007373730000000000000000000000000000000000000000000000
      0000CE949400CE94940063312900CE949400CE94940063312900633129000000
      000000CEFF0000CEFF000031CE0000CEFF0000CEFF0000CEFF000031CE000031
      CE00000000009463CE0029009400290094000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000CEFF0000CE
      FF000031CE0000CEFF0000CEFF0000CEFF000031CE000031CE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF949400FF949400FF949400FF9494006331290063312900633129000000
      00006363CE006363CE006363CE006363CE000000A5000000A500000094000000
      A5000000000029639400296394006394CE002963940000000000949494009494
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000009463630000000000946363000000000073737300000000009463
      6300FF949400FFCECE00FFFFFF00FF949400FF94940000000000737373000000
      00005252520000CEFF0000CEFF005252520052525200000000000063FF000063
      FF00000000007373730073737300000000000000000000000000000000000000
      0000CE949400CE94940063312900CE949400CE949400633129000000000000CE
      FF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF000063FF000031
      CE00000000009463CE0029009400290094000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000CEFF0000CE
      FF0000CEFF0000CEFF0000CEFF0000CEFF000063FF000031CE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF949400FF949400FF949400FF9494006331290063312900633129000000
      00006363CE006363CE006363CE006363CE000000A5000000A500000094000000
      A500000000002963940029639400296394006394CE0029639400000000009494
      9400949494000000000000000000000000000000000000000000000000000000
      0000946363009463630000000000946363009463630000000000000000009463
      6300FF949400FFCECE00FFFFFF00FF949400FF94940000000000000000000000
      0000525252005252520000CEFF0000CEFF005252520000000000000000000063
      FF00000000007373730000000000000000000000000000000000000000000000
      0000CE949400CE94940063312900CE949400CE949400633129000000000000CE
      FF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF000063FF000063
      FF000031CE000000000029009400290094000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000CEFF0000CE
      FF0000CEFF0000CEFF0000CEFF0000CEFF000063FF000063FF000031CE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF949400FF949400FF949400FF9494006331290063312900633129000000
      00006363CE006363CE006363CE006363CE000000A5000000A500000094000000
      A500000000002963940094CEFF0094CEFF0094CEFF006394CE00296394000000
      0000949494009494940000000000000000000000000000000000000000000000
      0000946363009463630000000000946363009463630094636300000000000000
      0000000000000000000000000000000000000000000000000000FF9494000000
      000052525200525252005252520000CEFF0000CEFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE949400CE94940063312900CE949400CE949400CE9494000000000000CE
      FF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF000063FF000063
      FF000063FF00000000009463CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000CEFF0000CEFF0000CE
      FF0000CEFF0000CEFF0000CEFF0000CEFF000063FF000063FF000063FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF949400FF949400FFFFFF00FFFFFF00FFCECE0063312900633129000000
      0000000000006363CE00FFFFFF00FFFFFF009494FF000000A500000094000000
      A500000000006394CE0094CEFF0094CEFF0094CEFF0094CEFF006394CE002963
      9400000000009494940094949400000000000000000073737300737373000000
      000094636300946363000000000094636300946363009463630000000000FFCE
      CE00FFCECE00FFCECE00FFFFFF00FF949400FF94940000000000FF9494000000
      00005252520052525200525252005252520000CEFF000063FF00000000000000
      000000000000737373007373730000000000000000000000000000000000CE94
      9400CE949400CE949400CE949400CE949400CE949400CE9494000000000000CE
      FF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF000063FF000063
      FF000063FF00000000009463CE00290094000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000CEFF0000CEFF0000CE
      FF0000CEFF0000CEFF0000CEFF0000CEFF000063FF000063FF000063FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFCECE00FFCECE00FFCECE00000000000000000000CE
      FF000094FF00000000006363CE006363CE009494FF009494FF000000A5000000
      9400000000006394CE0094CEFF0094CEFF0094CEFF0094CEFF0094CEFF006394
      CE00296394000000000094949400949494000000000000000000000000000000
      000094636300000000000000000094636300946363009463630000000000FFCE
      CE00FFFFFF00FFCECE00FFCECE00FFFFFF00FF94940000000000FF9494000000
      000000CEFF00525252005252520052525200949494000063FF000063FF000000
      000000000000737373007373730000000000000000000000000000000000CE94
      9400CE949400CE949400CE949400CE949400CE949400CE9494000000000000CE
      FF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF000063FF000063
      FF000063FF00000000009463CE00290094002900940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000CEFF0000CEFF0000CE
      FF0000CEFF0000CEFF0000CEFF0000CEFF000063FF000063FF000063FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFCECE00FFCECE00000000000000000000CEFF0000CEFF0000CE
      FF000094FF000094FF00000000006363CE006363CE009494FF009494FF000000
      A5000000000094CEFF0094CEFF0094CEFF0094CEFF0094CEFF0094CEFF0094CE
      FF006394CE002963940000000000949494000000000063312900633129000000
      000000000000FFCECE00FFCECE0000000000946363009463630000000000FFCE
      CE00FFCECE00FFFFFF00FFCECE00FFCECE00FFFFFF0000000000FF9494000000
      000000CEFF0000CEFF00525252009494940094949400FFFFFF000063FF000063
      FF0000000000737373007373730000000000000000000000000000000000CE94
      9400CE949400CE949400CE949400CE949400CE949400CE9494000000000000CE
      FF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF000063FF000063
      FF000063FF00000000009463CE00290094002900940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000CEFF0000CEFF0000CE
      FF0000CEFF0000CEFF0000CEFF0000CEFF000063FF000063FF000063FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFCECE000000000000CEFF0000CEFF0000CEFF0000CE
      FF000094FF000094FF000094FF00000000006363CE006363CE00000000000000
      000094CEFF0094CEFF0094CEFF00FFFFFF00FFFFFF0094CEFF0094CEFF0094CE
      FF0094CEFF006394CE0000000000949494000000000063312900633129000000
      0000FFCECE00FFCECE00FFCECE00FFCECE00000000009463630000000000FFCE
      CE00FFCECE00FFCECE00FFFFFF00FFCECE00FFCECE0000000000FF9494000000
      0000FFFFFF00FFFFFF0000FFFF00949494009494940094949400FFFFFF000063
      FF0000000000737373007373730000000000000000000000000000000000CE94
      9400CE949400CE949400CE949400CE949400CE949400CE9494000000000000CE
      FF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF000063FF000063
      FF000063FF00000000009463CE00290094002900940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000CEFF0000CEFF0000CE
      FF0000CEFF0000CEFF0000CEFF0000CEFF000063FF000063FF000063FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000CEFF0000CEFF0000CEFF0000CE
      FF000094FF000094FF000094FF000094FF00000000000000000094CEFF0094CE
      FF0094CEFF0094CEFF0094CEFF00FFFFFF00FFFFFF0094CEFF0094CEFF0094CE
      FF0094CEFF002963940000000000BDBDBD000000000063312900633129006331
      290000000000FFCECE00FFCECE00FFCECE00FFCECE0000000000FFCECE00FFCE
      CE00FFCECE00FFCECE00FFCECE00FFFFFF00FFCECE0000000000000000000000
      00009494940000FFFF0000FFFF0000FFFF00949494009494940094949400FFFF
      FF0000000000737373007373730000000000000000000000000000000000CE94
      9400CE949400CE949400CE949400CE949400CE949400CE9494000000000000CE
      FF0000CEFF0000CEFF0000CEFF0000CEFF00FFFFFF00FFFFFF000063FF000063
      FF000063FF00000000009463CE00290094002900940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000CEFF0000CEFF0000CE
      FF0000CEFF0000CEFF00FFFFFF00FFFFFF0000CEFF000063FF000063FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000CEFF0000CEFF0000CEFF0000CE
      FF000094FF000094FF000094FF000094FF000000000094CEFF0094CEFF0094CE
      FF0094CEFF0094CEFF0094CEFF0094CEFF0094CEFF0094CEFF0094CEFF0094CE
      FF006394CE002963940000000000949494000000000063312900633129006331
      29006331290000000000FFCECE00FFCECE00FFCECE00FFCECE00FF949400FFCE
      CE00FFCECE00FFCECE00FFCECE00FFCECE00FFFFFF00FFCECE00FFCECE00FFFF
      FF00000000009494940000FFFF0000FFFF0000FFFF0094949400949494009494
      940000000000737373007373730000000000000000000000000000000000CE94
      9400CE949400CE949400CE949400CE949400CE949400CE9494000000000000CE
      FF0000CEFF0000CEFF00FFFFFF00FFFFFF0063CEFF0063CEFF0063CEFF0063CE
      FF000063FF00000000009463CE00290094002900940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000CEFF0000CEFF0000CE
      FF00FFFFFF00FFFFFF0000CEFF0000CEFF0000CEFF0000CEFF000063FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000094949400949494000000000000CEFF0000CEFF0000CEFF0000CE
      FF000094FF000094FF000094FF000094FF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0094CEFF0094CEFF0094CEFF0094CEFF0094CEFF00FFFFFF00FFFF
      FF00296394002963940029639400000000000000000000000000000000000000
      0000000000000000000000000000FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE0000000000000000000000000000000000FFCECE00FFFFFF00FFCECE00FFCE
      CE00FFFFFF00000000009494940000FFFF0000FFFF0000000000000000000000
      000073737300737373007373730000000000000000000000000000000000CE94
      9400CE949400CE949400CE949400CE949400CE949400CE9494000000000000CE
      FF00FFFFFF00FFFFFF000063FF000063FF000063FF000063FF000063FF000063
      FF0063CEFF00000000009463CE00290094002900940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000CEFF00FFFFFF00FFFF
      FF000063FF000063FF000063FF000063FF000063FF000063FF0000CEFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009494940000000000000000000000000000CEFF0000CEFF0000FFFF0000FF
      FF0000FFFF000094FF000094FF000094FF00000000006394CE006394CE006394
      CE006394CE00FFFFFF00FFFFFF0094CEFF00FFFFFF00FFFFFF00296394002963
      94006394CE002963940029639400000000000000000094636300FF949400FF94
      9400FF949400FF949400FF949400FF949400FFCECE00FFCECE00946363000000
      0000633129006331290094636300946363000000000094636300FFFFFF00FFCE
      CE00FFCECE00FFFFFF00000000000000000000000000FF949400FF9494000000
      000000000000000000000000000000000000000000000000000000000000CE94
      9400CE949400CE949400CE949400CE949400FFFFFF00FFFFFF00000000000000
      000063CEFF0052525200000000000000000000000000000000000063FF000000
      000000000000FFFFFF009463CE00290094002900940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000CEFF000063
      FF00000000000000000000000000000000000063FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0094CEFF0000000000FFFFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF000094FF000094FF000000000094CEFF0094CEFF0094CE
      FF0094CEFF006394CE006394CE006394CE00296394002963940094CEFF0094CE
      FF0094CEFF006394CE00296394000000000000000000FF94940094636300FF94
      9400FF949400FF949400FF949400FF949400FF949400FFCECE00000000006331
      2900633129006331290094636300946363009463630000000000FFCECE00FFFF
      FF00FFCECE00FFCECE00FFFFFF00FF949400FF949400FF949400FF9494000000
      000000000000000000000000000000000000000000000000000000000000CE94
      9400CE949400CE949400FFFFFF00FFFFFF00FFCECE00FFCECE00FFCECE000000
      000063CEFF00000000005252520052525200424242005252520000000000FFFF
      FF00CE94FF00CE94FF00CE94FF00CE94FF002900940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000CEFF000000
      0000525252005252520042424200525252000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0094CEFF0094CEFF000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000094FF000000000094CEFF0094CEFF0094CE
      FF00FFFFFF00FFFFFF00296394002963940094CEFF0094CEFF0094CEFF0094CE
      FF0094CEFF0094CEFF006394CE000000000000000000FF949400FF9494009463
      6300FF949400FF949400FF949400FF949400FF949400FF949400946363000000
      0000633129006331290063312900633129000000000094636300FFCECE00FFCE
      CE00FFFFFF00FFCECE00FFCECE00FFFFFF00FF949400FF949400FF9494000000
      000000000000000000000000000000000000000000000000000000000000CE94
      9400FFFFFF00FFFFFF0063312900633129006331290063312900633129006331
      29000808080042424200A59C9C00A59C9C00A59C9C0052525200424242000000
      000029009400290094002900940029009400CE94FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000080808004242
      4200A59C9C00A59C9C00A59C9C00525252004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FF
      FF0000FFFF0000FFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000FFFFFF0094CEFF0094CEFF0094CEFF0094CEFF0094CE
      FF0094CEFF0000000000000000000000000000000000FF949400FF949400FF94
      940094636300FF949400FF949400FF949400FF949400FF949400FF949400FFCE
      CE0000000000000000000000000000000000FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFFFFF00FFCECE00FFCECE00FFFFFF00FF949400FF9494000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFCECE005252520000000000000000000000000000000000633129000000
      000018211800A59C9C00DEDEDE00DEDEDE00BDBDBD0094949400424242000000
      0000000000000000000029009400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000018211800A59C
      9C00DEDEDE00DEDEDE00BDBDBD00949494004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0094CEFF0094CEFF0094CEFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF949400FF949400FF949400FF949400FF94
      9400FFCECE00FFCECE00FFCECE00FFCECE00FF949400FFCECE00FFCECE00FFCE
      CE00FFCECE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFCECE000000000052525200525252004242420052525200000000000000
      000008080800DEDEDE00FFFFFF00FFFFFF00DEDEDE00A59C9C00525252000000
      0000424242005252520000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000008080800DEDE
      DE00FFFFFF00FFFFFF00DEDEDE00A59C9C005252520000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF949400FF94940000000000FF949400FF949400FF949400FF949400FF94
      9400FF949400FFCECE00FFCECE00FFCECE00FFCECE00FF949400FFCECE00FFCE
      CE00FFCECE00FFCECE0000000000FF9494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000808080042424200A59C9C00A59C9C00A59C9C0052525200424242000000
      000018211800DEDEDE00FFFFFF00FFFFFF00DEDEDE00A59C9C00424242000000
      0000A59C9C005252520042424200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000018211800DEDE
      DE00FFFFFF00FFFFFF00DEDEDE00A59C9C004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF94940000000000FF94940094636300FF949400FF94940000000000FF94
      9400FF949400FF949400FFCECE00FFCECE00FFCECE000000000000000000FFCE
      CE00FFCECE00FFCECE00FFCECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000018211800A59C9C00DEDEDE00DEDEDE00BDBDBD0094949400424242000000
      00000000000018211800DEDEDE00BDBDBD00949494004242420008080800DEDE
      DE00BDBDBD009494940042424200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001821
      1800DEDEDE00BDBDBD0094949400424242000808080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF949400FF949400FF949400946363000000000000000000FF94
      9400FF949400FF949400FF949400FFCECE00FFCECE0000000000000000000000
      0000FFCECE00FFCECE00FFCECE00FFCECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000008080800DEDEDE00FFFFFF00FFFFFF00DEDEDE00A59C9C00525252000000
      0000000000000000000008080800080808000000000042424200FFFFFF00FFFF
      FF00DEDEDE00A59C9C0052525200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000080808000808080000000000424242000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF949400FF949400FF949400FF949400000000000000000000000000FF94
      9400FF949400FF949400FF949400FF949400FFCECE0000000000000000000000
      000000000000FFCECE00FFCECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000018211800DEDEDE00FFFFFF00FFFFFF00DEDEDE00A59C9C00424242000000
      00000000000000000000000000000000000018211800DEDEDE00FFFFFF00FFFF
      FF00DEDEDE00A59C9C0042424200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF949400FF94940000000000000000000000000000000000FF94
      9400FF949400FF949400FF949400FF949400FF94940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000018211800DEDEDE00BDBDBD009494940042424200080808000000
      0000000000000000000000000000000000000000000018211800DEDEDE00BDBD
      BD00949494004242420008080800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF94
      9400FF949400FF949400FF949400FF949400FF94940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000008080800080808000000000042424200000000000000
      0000000000000000000000000000000000000000000000000000080808000808
      0800000000004242420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006B6B6B007B7B7B006B6B6B007B7B7B007B7B7B006B6B
      6B007B7B7B007B7B7B006B6B6B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000073737300737373007373730073737300000000000000
      0000000000007373730073737300737373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B006B6B6B007B7B7B006B6B6B007B7B7B007B7B7B007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007373730073737300FFFFFF00FFFFFF0000000000000000006363CE006363
      CE000000A5000000000073737300737373007373730000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEDEDE00DEDE
      DE00FFFFFF004A4A4A005A5A5A00000000007B7B7B007B7B7B006B6B6B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B006B6B6B007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000737373007373
      7300FFFFFF00FFFFFF0000000000000000006363CE006363CE006363CE006363
      CE000000A5000000940000000000737373007373730073737300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063639400293163000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C6363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADADAD00000000000000
      00000000000000000000000000005A5A5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006363CE006363CE006363CE006363CE006363CE006363
      CE000000A5000000A50000009400000000007373730073737300737373000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000636394006363940063639400293163000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C63
      6300000000009C6363009C6363000000000000000000000000009C6363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEDEDE00CECE
      CE00FFFFFF005A5A5A005A5A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007373730073737300737373007373
      7300000000000000000000000000000000006363CE006363CE006363CE006363
      CE000000A5000000A500000094000000A5000000000073737300737373007373
      7300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD00BDBD
      BD00000000007B7B7B0052525200000000006363940063639400293163000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C6363000000
      0000FFCECE0000000000000000009C6363009C6363009C6363009C6363009C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADADAD00000000000000
      00000000000000000000000000005A5A5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073737300737373007373
      7300000000006363CE006363CE006363CE0000000000000000006363CE006363
      CE000000A5000000A500000094000000A5000000A50000000000737373007373
      7300737373000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00525252007B7B7B00BDBD
      BD00000000007B7B7B0052525200000000006363940063639400293163000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C63630000000000FFCE
      CE00FFCECE00FFCECE00CE9C9C0000000000000000009C636300000000009C63
      63009C636300000000009C636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEDEDE00DEDE
      DE00FFFFFF004A4A4A005A5A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000737373007373
      7300000000006363CE006363CE006363CE006363CE006363CE00000000000000
      00000000A5000000A500000094000000A5000000A50000009400000000007373
      7300737373007373730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFFFFF0052525200EFFFFF00BDBDBD00525252007B7B
      7B00000000007B7B7B0052525200000000006363940063639400293163000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C63630000000000FFCECE00FFCE
      CE00CE9C9C00CE9C9C009C6363009C63630000000000000000009C6363000000
      00009C636300000000009C6363009C6363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADADAD00000000000000
      00000000000000000000000000005A5A5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00CEFFFF00FFFFFF00000000007373
      7300000000006363CE006363CE006363CE006363CE006363CE006363CE006363
      CE0000000000000000000000A5000000A5000000A50000009400000000007373
      7300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFFFFF00EFFFFF00EFFFFF0052525200EFFFFF00EFFFFF00BDBDBD005252
      5200000000007B7B7B0052525200000000006363940063639400293163000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C63630000000000FFCECE00CE9C9C00CE9C
      9C009C6363009C63630000000000000000009C6363009C6363009C6363009C63
      630000000000FFFFFF0000000000000000009C6363009C636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000CEFF009CFF
      FF00009CFF0000CEFF0010ADFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00CEFFFF00FFFFFF00FFFFFF000000
      0000000000006363CE006363CE006363CE006363CE006363CE006363CE006363
      CE000000A5000000A50000000000000000000000A50000009400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFFFFF00EFFF
      FF00EFFFFF00EFFFFF007B7B7B0052525200EFFFFF0052525200525252005252
      5200000000007B7B7B0052525200000000006363940063639400293163000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C63630000000000CE9C9C00CE9C9C009C6363009C63
      63000000000000000000CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C000000
      00000000000000000000000000000000000000000000000000009C6363009C63
      6300000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000009CFF0000CEFF009CFF
      FF00009CFF0000CEFF000063FF00009CFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00CEFFFF00CEFFFF00CEFFFF00FFFF
      FF00000000006363CE006363CE006363CE006363CE006363CE00FFFFFF00FFFF
      FF009494FF000000A500000094000000A500000000000000A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFFFFF00EFFFFF00EFFFFF00EFFF
      FF007B7B7B00BDBDBD007B7B7B005252520052525200BDBDBD007B7B7B00EFFF
      FF00000000007B7B7B0052525200000000006363940063639400293163000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C63630000000000CE9C9C009C6363009C636300000000000000
      0000CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C0000000000FFFF
      FF000000000000000000CE636300FFCECE00FFCECE0000000000000000000000
      00009C6363009C63630000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000009CFF0000CEFF009CFF
      FF00009CFF0000CEFF00009CFF00009CFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000094FFFF0094FFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00000000006363CE006363CE006363CE00FFFFFF00FFFFFF009494FF009494
      FF009494FF009494FF000000A500000094000000A50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFFFFF00EFFFFF00EFFFFF007B7B7B00BDBD
      BD007B7B7B00EFFFFF007B7B7B00BDBDBD007B7B7B00EFFFFF007B7B7B00EFFF
      FF00000000007B7B7B0052525200000000006363940063639400293163000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C636300000000009C6363009C6363000000000000000000FFCECE00CE9C
      9C00FFCECE00CE9C9C00FFCECE00CE9C9C00FFCECE0000000000000000000000
      000000000000CE636300CE9C9C00CE9C9C00FFCECE00FFCECE00FFCECE000000
      000000000000000000009C6363009C6363000000000000000000000000000000
      00000000000000000000000000000000000000000000009CFF0000CEFF009CFF
      FF00009CFF0000CEFF00009CFF00009CFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0094FFFF0094FFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00000000006363CE00FFFFFF00FFFFFF009494FF009494FF009494FF009494
      FF009494FF009494FF009494FF000000A500000094000000A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFFFFF007B7B7B00BDBDBD007B7B7B00EFFF
      FF007B7B7B00BDBDBD007B7B7B00EFFFFF007B7B7B00BDBDBD007B7B7B00EFFF
      FF00000000007B7B7B0052525200000000006363940063639400293163000000
      0000000000000000000000000000000000000000000000000000000000009C63
      6300000000009C6363000000000000000000FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFCECE00FFCECE00FFCECE0000000000FFFFFF00000000000000
      0000CE636300CE636300CE9C9C00CE9C9C00FFCECE00FFCECE00FFCECE00DEDE
      DE00180000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000CEFF0000CEFF0000FFFF0000FF
      FF00009CFF0000FFFF0000CEFF0000CEFF00009CFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0094FFFF0094FFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00000000009494FF009494FF009494FF009494FF009494FF009494
      FF009494FF009494FF009494FF009494FF000000A50000009400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFFFFF007B7B7B00EFFFFF007B7B7B00BDBD
      BD007B7B7B00EFFFFF007B7B7B00BDBDBD007B7B7B00EFFFFF007B7B7B00EFFF
      FF00000000007B7B7B0052525200000000006363940063639400293163000000
      00000000000000000000000000000000000000000000000000009C6363000000
      00000000000000000000FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFCECE00FFCECE0000000000000000000000000000000000CE63
      6300CE636300CE9C9C00CE9C9C00CE9C9C00FFCECE00FFCECE00FFCECE000000
      000000000000FFFFFF00000000009C6363000000000000000000000000000000
      000000000000000000000000000000CEFF0000FFFF0031FFFF0031FFFF0031FF
      FF0000CEFF0031FFFF0031FFFF0000FFFF0000CEFF0000CEFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0063FFFF0094FFFF0094FFFF00CEFFFF002963630029636300CEFF
      FF00CEFFFF00CEFFFF00000000009494FF009494FF009494FF009494FF009494
      FF009494FF009494FF009494FF009494FF009494FF000000A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFFFFF007B7B7B00BDBDBD007B7B7B00EFFF
      FF007B7B7B00BDBDBD007B7B7B00EFFFFF007B7B7B00BDBDBD007B7B7B00EFFF
      FF00000000007B7B7B0052525200000000006363940063639400293163000000
      000000000000000000000000000000000000000000009C636300000000000000
      0000FFCECE00FFFFFF00FFCECE00FFFFFF00FFCECE00FFFFFF00FFCECE00FFFF
      FF00FFCECE00FFFFFF0000000000FFFFFF00000000000000000000000000CE63
      6300CE636300CE636300CE9C9C00CE9C9C00FFCECE00FFCECE00000000000000
      000000000000000000009C636300000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0031FFFF0031FFFF0063FFFF0063FF
      FF0000CEFF0031FFFF0031FFFF0031FFFF0031FFFF0000CEFF0000CEFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0063FFFF0094FFFF0094FFFF00CEFFFF002963630029636300CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00000000009494FF009494FF009494FF009494
      FF009494FF009494FF009494FF009494FF009494FF009494FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFFFFF007B7B7B00EFFFFF007B7B7B00BDBD
      BD007B7B7B00EFFFFF007B7B7B00BDBDBD007B7B7B00EFFFFF007B7B7B00EFFF
      FF00525252007B7B7B0052525200000000006363940063639400293163000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFCE
      CE00FFFFFF00FFCECE00FFFFFF00FFCECE00FFFFFF00FFCECE00FFFFFF00FFCE
      CE00FFFFFF0000000000000000000000000000000000CE636300CE9C9C000000
      000000000000CE636300CE636300CE636300FFCECE0000000000000000000000
      0000000000009C6363009C636300000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0031FFFF0063FFFF0063FFFF009CFFFF0063FF
      FF0000CEFF0063FFFF0063FFFF0063FFFF0031FFFF0031FFFF0000CEFF0000CE
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0063FFFF0094FFFF0094FFFF002963630029636300296363002963
      6300CEFFFF00CEFFFF00CEFFFF00CEFFFF00000000009494FF009494FF009494
      FF009494FF009494FF009494FF009494FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFFFFF007B7B7B00BDBDBD007B7B7B00EFFF
      FF007B7B7B00BDBDBD007B7B7B00EFFFFF007B7B7B00BDBDBD007B7B7B00EFFF
      FF00000000007B7B7B0052525200000000006363940063639400293163000000
      0000000000000000000000000000000000000000000000000000FFCECE00FFFF
      FF00FFCECE00FFFFFF00FFCECE00FFFFFF00FFCECE00FFFFFF00FFCECE00FFFF
      FF0000000000FFFFFF000000000000000000CE636300CE9C9C00CE9C9C00FFCE
      CE00FFCECE000000000000000000CE6363000000000000000000FFFFFF000000
      0000000000009C6363009C6363009C6363000000000000000000000000000000
      000000FFFF0000FFFF0031FFFF0031FFFF009CFFFF009CFFFF009CFFFF009CFF
      FF0000CEFF009CFFFF0063FFFF0063FFFF0063FFFF0031FFFF0031FFFF0000CE
      FF0000CEFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0063FFFF0094FFFF0094FFFF0029636300639494006394940094CE
      CE0094CECE0094CECE00CEFFFF000000000000000000000000009494FF009494
      FF009494FF009494FF0000000000000000006331290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFFFFF007B7B7B00EFFFFF007B7B7B00BDBD
      BD007B7B7B00EFFFFF007B7B7B00BDBDBD007B7B7B00EFFFFF00EFFFFF00EFFF
      FF00525252007B7B7B0052525200000000006363940063639400293163000000
      000000000000000000000000000000000000000000000000000000000000FFCE
      CE00FFFFFF00FFCECE00FFFFFF00FFCECE00FFFFFF00FFCECE00FFFFFF000000
      0000000000000000000000000000CE636300CE636300CE9C9C00CE9C9C00FFCE
      CE00FFCECE00FFCECE00FFCECE0000000000000000000000000000000000FFCE
      CE00FFFFFF000000000000000000000000000000000000000000000000000000
      000000FFFF0031FFFF009CFFFF009CFFFF009CFFFF00CEFFFF00CEFFFF009CFF
      FF0000CEFF009CFFFF009CFFFF0063FFFF0063FFFF0031FFFF0031FFFF0000FF
      FF0000CEFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF0000FFFF0063FFFF00296363002963630029636300296363002963630094CE
      CE00CEFFFF00CEFFFF00CEFFFF0000000000CE949400CE949400000000009494
      FF00000000000000000063312900633129006331290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFFFFF007B7B7B00BDBDBD007B7B7B00EFFF
      FF007B7B7B00BDBDBD007B7B7B00EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF00525252007B7B7B0052525200000000006363940063639400293163000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFCECE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000CE636300CE636300CE9C9C00CE9C9C00CE9C9C00FFCE
      CE00FFCECE00FFCECE000000000000000000FFFFFF0000000000FFFFFF00FFFF
      FF00FFCECE00FFFFFF00000000000000000000000000000000000000000000FF
      FF0000FFFF0063FFFF0063FFFF009CFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00009CFF0000CEFF009CFFFF009CFFFF009CFFFF009CFFFF0031FFFF0031FF
      FF0000CEFF0000CEFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF0000FFFF0063FFFF00296363002963630029636300296363002963630094CE
      CE00CEFFFF00CEFFFF0000000000CE949400CE949400CE949400CE9494000000
      0000CE949400CE94940063312900633129006331290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFFFFF007B7B7B00EFFFFF007B7B7B00BDBD
      BD007B7B7B00EFFFFF00EFFFFF000000000000000000EFFFFF00525252005252
      52007B7B7B00CECECE007B7B7B00000000006363940063639400293163000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFCECE00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000CE636300CE636300CE636300CE636300CE9C9C00CE9C9C00FFCE
      CE00FFCECE0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000000000000000000000FF
      FF0063FFFF0031FFFF009CFFFF00CEFFFF00CEFFFF00FFFFFF00FFFFFF00009C
      FF00FFFFFF0000CEFF00CEFFFF009CFFFF009CFFFF0063FFFF0063FFFF0031FF
      FF0000FFFF0000CEFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF0000FF
      FF0000FFFF0063FFFF0029636300296363006394940094CECE0094CECE0094CE
      CE00CEFFFF00CEFFFF0000000000CE949400CE949400CE949400CE949400CE94
      9400CE949400CE94940063312900633129006331290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFFFFF007B7B7B00BDBDBD007B7B7B00EFFF
      FF00EFFFFF00EFFFFF00EFFFFF00EFFFFF0052525200525252007B7B7B00CECE
      CE00CECECE007B7B7B0000000000000000006363940063639400293163000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFCECE00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000CE636300CE636300CE636300CE9C9C00FFCE
      CE000000000000000000FFFFFF0000000000FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0063FFFF009CFFFF009CFFFF00CEFFFF00FFFFFF00FFFFFF00FFFFFF00009C
      FF00FFFFFF0000CEFF00CEFFFF00CEFFFF00CEFFFF009CFFFF0063FFFF0031FF
      FF0000FFFF0000CEFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF0000FFFF0063FFFF0094FFFF0094FFFF002963630094CECE0094CECE00CEFF
      FF00CEFFFF000000000000000000CE949400CE949400CE949400CE949400CE94
      9400CE949400CE94940063312900633129006331290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFFFFF007B7B7B00EFFFFF00EFFFFF000000
      000000000000EFFFFF0052525200525252007B7B7B00CECECE00CECECE007B7B
      7B0000000000000000006363940063639400BDBDBD00BDBDBD00293163000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFCECE00FFFFFF00FFCECE00FFFFFF00FFCE
      CE00FFFFFF0000000000000000000000000000000000CE636300CE6363000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0063FFFF009CFFFF00CEFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00009C
      FF00FFFFFF00009CFF00FFFFFF00CEFFFF00CEFFFF009CFFFF0063FFFF0031FF
      FF0000FFFF0000CEFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0063FFFF0094FFFF0094FFFF002963630094CECE0094CECE00CEFF
      FF00CEFFFF000000000000000000CE949400CE949400CE949400CE949400CE94
      9400FFFFFF00FFFFFF0063312900633129006331290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFFFFF00EFFFFF00EFFFFF00EFFFFF00EFFF
      FF0052525200525252007B7B7B00CECECE00CECECE007B7B7B00000000000000
      00006363940063639400BDBDBD00BDBDBD002931630029316300293163000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFCECE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0063FFFF009CFFFF00CEFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000CEFF00FFFFFF00CEFFFF00CEFFFF00CEFFFF009CFFFF0063FFFF0031FF
      FF0031FFFF0000CEFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0094FFFF0094FFFF0094FFFF00CEFFFF0094CECE0094CECE00CEFF
      FF00000000000000000000000000CE949400CE949400CE949400FFFFFF00FFFF
      FF00FFCECE00FFCECE00FFCECE00FFCECE006331290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFFFFF00EFFFFF00EFFFFF00525252005252
      52007B7B7B00CECECE00CECECE007B7B7B000000000000000000636394006363
      9400BDBDBD00BDBDBD0029316300293163002931630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFCECE00FFFFFF00FFCE
      CE00FFFFFF00FFCECE00FFFFFF00FFCECE00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0063FFFF009CFFFF00CEFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CEFFFF009CFFFF009CFFFF0063FFFF0031FF
      FF0000FFFF0000CEFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0094FFFF0094FFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00000000000000000000000000CE949400FFFFFF00FFFFFF00633129006331
      290063312900633129006331290063312900FFCECE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFFFFF0052525200525252007B7B7B00CECE
      CE00CECECE007B7B7B0000000000000000006363940063639400BDBDBD00BDBD
      BD00293163002931630029316300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFCECE00FFFF
      FF00FFCECE00FFFFFF00FFCECE00FFFFFF00FFCECE00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0063FFFF009CFFFF00CEFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CEFFFF009CFFFF009CFFFF009CFFFF0031FF
      FF0000FFFF0000CEFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000094FFFF0094FFFF00CEFFFF00CEFFFF00CEFFFF000000
      0000000000000000000000000000FFFFFF00FFCECE0052525200000000000000
      0000000000000000000063312900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000525252007B7B7B00CECECE00CECECE007B7B
      7B0000000000000000006363940063639400BDBDBD00BDBDBD00293163002931
      6300293163000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFCE
      CE00FFCECE00FFCECE00FFCECE00FFCECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0063FFFF00CEFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CEFFFF009CFFFF009CFFFF0063FFFF0031FFFF0031FF
      FF0000CEFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00CEFFFF00CEFFFF00CEFFFF000000
      000000000000000000000000000000000000FFCECE0000000000525252005252
      5200424242005252520000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECE007B7B7B00000000000000
      00006363940063639400BDBDBD00BDBDBD002931630029316300293163000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFCECE00FFCECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF009CFFFF0063FFFF00CEFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CEFFFF00CEFFFF009CFFFF009CFFFF0063FFFF0031FFFF0000FF
      FF0000CEFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00CEFFFF00000000000000
      0000000000000000000000000000000000000808080042424200A59C9C00A59C
      9C00A59C9C005252520042424200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000636394006363
      9400BDBDBD00BDBDBD0029316300293163002931630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF009CFFFF009CFFFF009CFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF009CFFFF0063FFFF0031FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CEFFFF00000000000000
      00000000000000000000000000000000000018211800A59C9C00DEDEDE00DEDE
      DE00BDBDBD009494940042424200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006363940063639400BDBDBD00BDBD
      BD00293163002931630029316300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0063FFFF0063FFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF0063FFFF0031FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000008080800DEDEDE00FFFFFF00FFFF
      FF00DEDEDE00A59C9C0052525200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00293163002931
      6300293163000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000031FFFF0000FFFF0063FFFF0063FFFF0063FF
      FF0063FFFF0031FFFF0063FFFF0063FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000018211800DEDEDE00FFFFFF00FFFF
      FF00DEDEDE00A59C9C0042424200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029316300293163000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018211800DEDEDE00BDBD
      BD00949494004242420008080800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000080808000808
      0800000000004242420000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B006B6B6B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C8C8C008C8C
      8C008C8C8C008C8C8C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004A4A4A005A5A5A004A4A4A005A5A5A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000018000000639CCE0031639C00000000007B7B7B006B6B6B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CECECE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C8C8C008C8C8C00000000000000
      0000000000008C8C8C008C8C8C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000009CFF00000000005A5A5A005A5A5A004A4A4A005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000018000000639C
      CE00639CCE00639CCE0031639C0031639C00000000007B7B7B007B7B7B007B7B
      7B006B6B6B007B7B7B006B6B6B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CECECE00CECECE00CECECE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C8C8C008C8C8C000000000000000000ADADAD00ADAD
      AD007B7B7B00000000008C8C8C008C8C8C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000009CFF00009CFF0000000000000000004A4A4A005A5A5A004A4A4A005A5A
      5A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000639CCE00639CCE000031
      630000316300639CCE003163630031639C0031639C00001800007B7B7B007B7B
      7B007B7B7B006B6B6B007B7B7B007B7B7B007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CECECE00CECECE00BDBDBD00ADADAD00CECECE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C8C8C008C8C8C000000000000000000ADADAD00ADADAD009C9C9C00ADAD
      AD006B6B6B007B7B7B00000000008C8C8C008C8C8C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000009CFF00009CFF00009CFF00009CFF00000000005A5A5A005A5A5A004A4A
      4A005A5A5A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000018000000639CCE00639CCE000031630000316300639C
      CE0000316300639CCE0031639C0031639C0031639C0031639C00000000007B7B
      7B007B7B7B007B7B7B007B7B7B006B6B6B007B7B7B006B6B6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CECE
      CE00CECECE00ADADAD00BDBDBD00FFFFFF00BDBDBD00CECECE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C8C8C008C8C
      8C000000000000000000ADADAD00ADADAD009C9C9C00ADADAD00ADADAD00ADAD
      AD007B7B7B007B7B7B007B7B7B00000000008C8C8C008C8C8C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000063FF000063FF00009CFF00009CFF00009CFF0000000000000000004A4A
      4A005A5A5A004A4A4A005A5A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000639CCE00639CCE000031630000316300639CCE00639CCE00639C
      CE0000316300639CCE0031639C0031639C0031639C0031639C0031639C000018
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B006B6B6B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CECECE00CECECE00BDBD
      BD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00ADADAD00CECECE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C8C8C008C8C8C00000000000000
      0000ADADAD00ADADAD009C9C9C00ADADAD00ADADAD00ADADAD009C9C9C00ADAD
      AD006B6B6B007B7B7B007B7B7B00000000008C8C8C007B7B7B008C8C8C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009CFFFF000063FF00009CFF00009CFF00009CFF00009CFF000000
      00005A5A5A005A5A5A004A4A4A005A5A5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000639C
      CE00639CCE000031630000316300639CCE00639CCE0031639C00639CCE00639C
      CE0000316300639CCE0031639C0031639C007B7B7B0031639C0031639C003163
      9C00180000006B6B6B007B7B7B007B7B7B007B7B7B007B7B7B006B6B6B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CECECE00CECECE00BDBDBD00BDBDBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00CECECE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C8C8C008C8C8C0000000000000000009C9C9C00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00FFFFFF00FFFFFF00ADADAD00ADAD
      AD007B7B7B007B7B7B007B7B7B00000000008C8C8C008C8C8C008C8C8C008C8C
      8C00000000000000000000000000000000000000000000000000000000000000
      000000000000000000009CFFFF000063FF00009CFF00009CFF00009CFF00009C
      FF0000000000000000005A5A5A005A5A5A004A4A4A005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000639CCE000031
      630000316300639CCE0031639C0031639C000000000000000000639CCE009CCE
      FF0000316300639CCE0031639C0031639C0031639C0031639C0031639C003163
      9C0031639C00181818007B7B7B007B7B7B006B6B6B007B7B7B007B7B7B006B6B
      6B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CECECE00CECECE00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADADAD00CECECE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C8C8C008C8C8C000000000000000000ADADAD00ADADAD00ADADAD00ADAD
      AD009C9C9C00ADADAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADADAD00ADAD
      AD006B6B6B007B7B7B007B7B7B00000000008C8C8C008C8C8C007B7B7B008C8C
      8C008C8C8C000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009CFFFF000063FF00009CFF00009CFF00009C
      FF00009CFF00009CFF0000000000000000005A5A5A004A4A4A005A5A5A005A5A
      5A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000639CCE000031
      63009CCEFF00639CCE000000000000000000639CCE009CCEFF009CCEFF000031
      630000316300639CCE0031639C0031639C0031639C0031639C0063639C003163
      630031639C0031639C00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CECE
      CE00CECECE00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00CECECE00000000000000
      00000000000000000000000000000000000000000000000000008C8C8C006B6B
      6B000000000000000000ADADAD00ADADAD009C9C9C00ADADAD00ADADAD00ADAD
      AD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE636300FFFFFF009C9C9C00ADAD
      AD007B7B7B007B7B7B007B7B7B00000000007B7B7B008C8C8C008C8C8C007B7B
      7B008C8C8C008C8C8C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009CFFFF000063FF000063FF00009C
      FF00009CFF00009CFF00009CFF0010ADFF00000000005A5A5A005A5A5A004A4A
      4A005A5A5A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000639CCE000031
      63009CCEFF00639CCE00639CCE009CCEFF009CCEFF0000006B0000316300639C
      CE0000316300639CCE0031639C0031639C0031639C0031639C00319C9C003163
      9C0031639C0031639C0031639C00181818007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B006B6B6B007B7B7B00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEDEDE00DEDEDE00BDBD
      BD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF00BDBDBD00CECECE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADADAD00ADADAD00ADADAD00ADADAD00ADADAD009C9C9C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CE636300CE636300CE636300FFFFFF00ADADAD009C9C
      9C007B7B7B007B7B7B007B7B7B00000000008C8C8C008C8C8C008C8C8C008C8C
      8C00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CFFFF0000CEFF000063
      FF00009CFF00009CFF00009CFF000063FF00009CFF0000000000000000005A5A
      5A004A4A4A005A5A5A005A5A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000639CCE000031
      63009CCEFF009CCEFF009CCEFF000031630000316300639CCE00639CCE00639C
      CE0000316300639CCE003163630031639C0031639C0031639C0031639C003163
      9C0031639C0031639C0031639C0031639C00000000006B6B6B007B7B7B006B6B
      6B007B7B7B007B7B7B007B7B7B006B6B6B000000000000000000000000000000
      0000000000000000000000000000DEDEDE00DEDEDE00BDBDBD00CECECE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADADAD00CECECE00000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00FFFFFF00FFFFFF00FFFFFF00EFEF
      EF00FF9C9C00FF9C9C00CE636300CE636300CE636300FFFFFF00ADADAD00ADAD
      AD006B6B6B007B7B7B007B7B7B00000000008C8C8C008C8C8C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009CFFFF0000CE
      FF000063FF000063FF00009CFF00009CFF00009CFF0010ADFF00009CFF000000
      00005A5A5A005A5A5A004A4A4A005A5A5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000639CCE000031
      63009CCEFF000031630000316300639CCE00639CCE00639CCE00639CCE00639C
      CE0000316300639CCE0031639C0031639C0031639C0031639C0031639C003163
      9C0031639C0031639C0031639C0031639C00181818006B6B6B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000DEDEDE00BDBDBD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBDBD00000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      AD00ADADAD004A4A4A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCECE00FFCE
      CE00FF9C9C00FF9C9C00CE636300CE636300CE636300FFFFFF00ADADAD00ADAD
      AD007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009CFF
      FF0000CEFF0000CEFF000063FF000063FF00009CFF000063FF00009CFF00009C
      FF0000000000000000005A5A5A004A4A4A005A5A5A005A5A5A00000000000000
      0000000000000000000000000000000000000000000000000000639CCE000031
      630000316300639CCE00639CCE00639CCE00639CCE0031639C00639CCE00639C
      CE0000316300639CCE0031639C0031639C0031639C0031639C0031639C003163
      9C0031639C00319C630031639C0031639C00000000007B7B7B007B7B7B007B7B
      7B006B6B6B006B6B6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000DEDEDE007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00CECECE00000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00ADADAD005A5A5A005A5A5A00EFEFEF00FFCECE00FFCECE00FF9C9C00FFCE
      CE00FF9C9C00FF9C9C00CE636300CE636300CE636300FFFFFF009C9C9C00ADAD
      AD007B7B7B006B6B6B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009CFFFF0000CEFF0000CEFF0000CEFF000063FF00009CFF00009CFF00009C
      FF00009CFF0010ADFF00000000005A5A5A005A5A5A004A4A4A005A5A5A000000
      0000000000000000000000000000000000000000000000000000639CCE000031
      63009CCEFF00639CCE0031639C0031639C000000000000000000639CCE009CCE
      FF0000316300639CCE0031639C0031639C003163630031639C0031639C003163
      9C0031639C0031639C0031639C0031639C00000000007B7B7B007B7B7B006B6B
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEDEDE006B6B6B00FFFFFF00FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADADAD00CECECE00000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      AD009C9C9C005A5A5A004A4A4A00FF9C9C00FFCECE00FFCECE00FFCECE00FFCE
      CE00FF9C9C00FF9C9C00CE636300CE636300CE636300FFFFFF00ADADAD009C9C
      9C007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008C8C8C000000000000000000000000000000
      0000000000009CFFFF0000CEFF0000CEFF0000CEFF000063FF000063FF00009C
      FF00009CFF000063FF00009CFF0000000000000000005A5A5A004A4A4A005A5A
      5A004A4A4A000000000000000000000000000000000000000000639CCE000031
      63009CCEFF00639CCE000000000000000000639CCE009CCEFF009CCEFF000031
      630000316300639CCE0031639C0031639C0031639C0031639C0031639C003163
      9C0031639C0031639C0031639C0031639C00000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CECECE007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00CECECE00000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      AD00ADADAD005A5A5A004A4A4A00FF9C9C00FFCECE00FFCECE00FFCECE00FFCE
      CE00FF9C9C00FFFFFF00CE636300CE636300CE636300FFFFFF00ADADAD00ADAD
      AD007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008C8C8C0000000000009CFF00009CFF00009C
      FF00009CFF00009CFF009CFFFF0000CEFF0000CEFF0000CEFF0000CEFF000063
      FF00009CFF00009CFF00009CFF00009CFF00009CFF00000000005A5A5A005A5A
      5A005A5A5A004A4A4A0000000000000000000000000000000000639CCE000031
      63009CCEFF00639CCE00639CCE009CCEFF009CCEFF000031630000316300639C
      CE00639CCE00639CCE0031639C0031639C0031639C0031639C00316363003163
      9C0031639C0031639C0031639C0031639C001818180000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEDEDE007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBDBD00000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      AD009C9C9C005A5A5A004A4A4A00FF9C9C00FFCECE00FFCECE00FFCECE00FFCE
      CE00FF9C9C00FF9C9C00CE636300CE6363005A5A5A00FFFFFF00ADADAD00ADAD
      AD006B6B6B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008C8C8C00000000008C8C8C00009CFF00009C
      FF00009CFF00009CFF00009CFF009CFFFF0000CEFF0000CEFF0010ADFF0000CE
      FF000063FF000063FF00009CFF00009CFF00009CFF00009CFF00000000004A4A
      4A005A5A5A000000000000000000000000000000000000000000639CCE000031
      63009CCEFF009CCEFF009CCEFF000031630000316300639CCE006363CE00639C
      CE00639CCE00FFFFFF00FFFFFF0031639C0031639C0031639C0031639C003163
      9C0031639C0031639C0031639C0031639C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEDEDE007B7B7B00FFFFFF00FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00CECECE00000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      AD00ADADAD005A5A5A004A4A4A00FF9C9C00FFCECE00FFCECE00FFCECE00FFCE
      CE00FF9C9C00FF9C9C005A5A5A004A4A4A00ADADAD00ADADAD009C9C9C00ADAD
      AD007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ADADAD00000000008C8C8C004A4A4A008C8C8C000063FF000063
      FF000063FF000063FF000063FF000063FF009CFFFF0000CEFF0000CEFF0000CE
      FF0000CEFF0000CEFF000063FF00009CFF00009CFF00009CFF00000000000000
      0000000000000000000000000000000000000000000000000000639CCE000031
      63009CCEFF000031630000316300639CCE00639CCE00639CCE00639CCE00FFFF
      FF00EFEFEF009CCEFF009CCEFF00FFFFFF0031639C0031639C0031639C003163
      9C003163630031639C0031639C0031639C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEDEDE006B6B6B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF006B6B6B00CECECE00CECECE00000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      AD009C9C9C005A5A5A004A4A4A00FF9C9C00FFCECE00FFCECE00FF9C9C00FF9C
      9C005A5A5A004A4A4A00ADADAD00ADADAD00ADADAD009C9C9C00FFFFFF00FFFF
      FF006B6B6B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000008C8C8C0000000000000000000000
      0000ADADAD000000000000000000FFFFFF005A5A5A008C8C8C009CFFFF008C8C
      8C009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF0000CEFF0000CE
      FF0000CEFF0000CEFF0000CEFF000063FF000063FF00009CFF00000000000000
      0000000000000000000000000000000000000000000000000000639CCE000031
      630000316300639CCE00639CCE00639CCE00639CCE00FFFFFF00FFFFFF009CCE
      FF009CCEFF009CCEFF009CCEFF009CCEFF009CCEFF0031639C0031639C003163
      9C0031639C0031639C0031639C0031639C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEDEDE007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF006B6B6B007B7B7B00CECECE00CECECE0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      AD00ADADAD005A5A5A004A4A4A00FF9C9C00FF9C9C00FF9C9C005A5A5A005A5A
      5A00ADADAD00ADADAD00ADADAD00ADADAD00FFFFFF00FFFFFF00DEDEDE00DEDE
      DE00FFFFFF006B6B6B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000008C8C8C000000000000000000ADAD
      AD0000000000ADADAD000000000000000000000000008C8C8C004A4A4A008C8C
      8C0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF0000CE
      FF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF000063FF00000000000000
      0000000000000000000000000000000000000000000000000000639CCE00639C
      CE00639CCE00639CCE006363CE00FFFFFF00FFFFFF009CCEFF009CCEFF009CCE
      FF009CCEFF009CCEFF009CCEFF0063CEFF009CCEFF009CCEFF0031639C003163
      9C0031639C0031639C0031639C0031639C000018000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEDEDE007B7B7B00FFFFFF00FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006B6B
      6B007B7B7B00DEDEDE00DEDEDE00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      AD009C9C9C005A5A5A005A5A5A00FF9C9C005A5A5A004A4A4A00ADADAD009C9C
      9C00ADADAD00ADADAD00FFFFFF00FFFFFF00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00EFEFEF00FFFFFF006B6B6B00000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000ADADAD000000
      0000ADADAD007B7B7B009C9C9C000000000000000000FFFFFF005A5A5A008C8C
      8C00000000008C8C8C0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF0000CE
      FF0000CEFF0000CEFF0000CEFF0000CEFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000639CCE00639C
      CE00639CCE00FFFFFF00FFFFFF009CCEFF009CCEFF009CCEFF0063CEFF009CCE
      FF009C9CFF009CCEFF009CCEFF009CCEFF009C9CFF009CCEFF009CCEFF003163
      9C0031639C0031639C0031639C0031639C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CECECE007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006B6B6B007B7B7B00DEDE
      DE00EFEFEF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      AD00ADADAD005A5A5A004A4A4A005A5A5A009C9C9C00ADADAD00ADADAD00ADAD
      AD00FFFFFF00FFFFFF00CECECE00DEDEDE00DEDEDE0000000000000000008C8C
      8C007B7B7B008C8C8C008C8C8C00000000000000000000000000000000000000
      0000000000000000000000000000000000008C8C8C00ADADAD0000000000ADAD
      AD007B7B7B007B7B7B007B7B7B00ADADAD000000000000000000000000008C8C
      8C004A4A4A008C8C8C000000000000CEFF0000CEFF0000CEFF009CFFFF000063
      FF00009CFF00009CFF00009CFF00000000004A4A4A005A5A5A005A5A5A000000
      0000000000000000000000000000000000000000000000000000639CCE00FFFF
      FF00FFFFFF009CCEFF009CCEFF0063CEFF009CCEFF009CCEFF009CCEFF009CCE
      FF009CCEFF009CCEFF009CCEFF009CCEFF009CCEFF009CCEFF009CCEFF009CCE
      FF0031639C0031639C0031639C0031639C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEDEDE007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF006B6B6B007B7B7B00DEDEDE00DEDEDE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      AD00ADADAD004A4A4A00ADADAD00ADADAD00ADADAD00ADADAD00FFFFFF00FFFF
      FF00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE0000000000CECECE000000
      0000DEDEDE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C8C8C0000000000ADADAD007B7B
      7B007B7B7B006B6B6B007B7B7B007B7B7B00ADADAD000000000000000000FFFF
      FF005A5A5A008C8C8C00FFFFFF008C8C8C0000CEFF0000CEFF0000CEFF009CFF
      FF000063FF00009CFF00009CFF00009CFF00000000005A5A5A004A4A4A005A5A
      5A00000000000000000000000000000000000000000000000000000000009CCE
      FF009CCEFF009CCEFF009CCEFF009CCEFF009CCEFF009CCEFF009CCEFF009CCE
      FF009CCEFF0063CEFF009CCEFF009CCEFF009CCEFF0063CEFF009CCEFF009CCE
      FF009CCEFF0031639C0031639C0031639C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEDEDE007B7B7B00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF006B6B6B007B7B7B00DEDEDE00EFEFEF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00ADADAD00ADADAD00ADADAD009C9C9C00FFFFFF00FFFFFF00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE0000000000CECECE005A5A
      5A00000000007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000008C8C8C009C9C9C00FFFFFF006B6B
      6B007B7B7B007B7B7B006B6B6B007B7B7B007B7B7B00ADADAD00000000000000
      0000000000008C8C8C004A4A4A008C8C8C00000000000000000000CEFF0000CE
      FF009CFFFF000063FF00009CFF00009CFF00009CFF00000000005A5A5A004A4A
      4A005A5A5A000000000000000000000000000000000000000000000000000000
      00009CCEFF009CCEFF009CCEFF009CCEFF009CCEFF009CCEFF009CCEFF009CCE
      FF009CCEFF009CCEFF009CCEFF009CCEFF009CCEFF009CCEFF009CCEFF009CCE
      FF009CCEFF009CCEFF0031639C0031639C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEDEDE006B6B6B00FFFFFF00FFFFFF006B6B
      6B007B7B7B0031CEFF0031CEFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      AD009C9C9C00ADADAD00FFFFFF00FFFFFF00DEDEDE00DEDEDE00CECECE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00000000005A5A5A00BDBD
      BD00CECECE00000000007B7B7B00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF006B6B6B007B7B7B007B7B7B007B7B7B006B6B6B007B7B7B009C9C9C000000
      000000000000FFFFFF005A5A5A008C8C8C0000000000000000000000000000CE
      FF0000CEFF009CFFFF000063FF00009CFF00009CFF00009CFF00000000005A5A
      5A005A5A5A005A5A5A0000000000000000000000000000000000000000000000
      0000000000009CCEFF00FFFFFF009CCEFF00FFFFFF009CCEFF00EFEFEF009CCE
      FF00FFFFFF009CCEFF00EFEFEF009CCEFF00FFFFFF009CCEFF00FFFFFF009CCE
      FF00FFFFFF009CCEFF009CCEFF0031639C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEDEDE007B7B7B007B7B7B007B7B7B0031CE
      FF0031CEFF0031CEFF0031CEFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      AD00FFFFFF00FFFFFF00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE005A5A5A004A4A4A0000000000CECECE00CECE
      CE00DEDEDE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADADAD009C9C
      9C00FFFFFF006B6B6B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00ADAD
      AD000000000000000000000000008C8C8C000000000000000000000000000000
      00000000000000CEFF009CFFFF000063FF00009CFF00009CFF00009CFF000000
      00004A4A4A005A5A5A005A5A5A00000000000000000000000000000000000000
      000000000000000000009CCEFF009CCEFF009CCEFF009CCEFF009CCEFF009CCE
      FF009CCEFF009CCEFF009CCEFF009CCEFF009CCEFF009CCEFF009CCEFF009CCE
      FF009CCEFF009CCEFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEDEDE0031CEFF0031CEFF0031CEFF0031CE
      FF0031CEFF0031CEFF0031CEFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00DEDEDE00DEDEDE00CECECE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE005A5A5A004A4A4A00DEDEDE00DEDEDE0000000000CECECE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF006B6B6B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B00ADADAD000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000CEFF009CFFFF000063FF000063FF00009CFF00009C
      FF00000000005A5A5A005A5A5A005A5A5A000000000000000000000000000000
      00000000000000000000000000009CCEFF00FFFFFF009CCEFF00FFFFFF009CCE
      FF00FFFFFF009CCEFF00FFFFFF009CCEFF00FFFFFF009CCEFF00FFFFFF009CCE
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0031CEFF0031CEFF0031CEFF0031CE
      FF0031CEFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00EFEFEF004A4A
      4A004A4A4A00DEDEDE00DEDEDE00DEDEDE00EFEFEF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADADAD009C9C9C00FFFFFF006B6B6B007B7B7B007B7B7B006B6B6B007B7B
      7B007B7B7B00ADADAD0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000CEFF009CFFFF000063FF00009C
      FF00009CFF00000000004A4A4A005A5A5A000000000000000000000000000000
      0000000000000000000000000000000000009CCEFF00FFFFFF009CCEFF00FFFF
      FF009CCEFF00FFFFFF009CCEFF00FFFFFF009CCEFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0031CEFF0031CEFF0031CEFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEDEDE00DEDEDE00DEDEDE00DEDEDE00000000005A5A5A00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF006B6B6B007B7B7B007B7B7B007B7B
      7B006B6B6B007B7B7B007B7B7B00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009CFFFF000063
      FF00009CFF00009CFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CCEFF00FFFFFF009CCE
      FF00FFFFFF009CCEFF00FFFFFF009CCEFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0031CEFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DEDEDE0000000000000000000000000000000000DEDE
      DE00EFEFEF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADADAD009C9C9C00FFFFFF006B6B6B007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009CFF
      FF000063FF00009CFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009CCEFF00FFFF
      FF009CCEFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF006B6B6B007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000063FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009CCE
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAD009C9C9C00FFFFFF006B6B
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B6B6B007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000018000000000000006B6B6B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031630000316300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF007B7B7B00000000007B7B7B007B7B
      7B006B6B6B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000639CCE0031639C00180000007B7B7B006B6B6B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031630031639C0031639C0000316300003163000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD00BDBDBD00FFFFFF006B6B6B007B7B7B00000000007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018000000639CCE00639C
      CE00639CCE0031639C0031639C00000000007B7B7B007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000003163000031630031639C0031639C00639CCE000031630031639C000031
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00ADADAD00FFFFFF006B6B6B007B7B7B007B7B7B000000
      00007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000639CCE00639CCE00639CCE006363
      CE00639CCE0031639C0031639C0031639C00181818007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C6363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000003163000031
      630031639C0031639C00639CCE00639CCE000000000000000000639CCE003163
      9C00003163000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00FFFFFF00FFFFFF00BDBDBD00FFFFFF006B6B6B007B7B7B007B7B7B007B7B
      7B00000000007B7B7B007B7B7B007B7B7B007B7B7B006B6B6B007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      00000000000018000000639CCE00639CCE00639CCE00639CCE00639CCE00639C
      CE00639CCE0031639C0031639C0031639C0031639C00000000007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C63
      6300000000009C6363009C6363000000000000000000000000009C6363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000003163000031630031639C003163
      9C00639CCE00639CCE00000000000000000031639C000031630000180000639C
      CE0031639C000031630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00FFFFFF00FFFF
      FF0000000000FFFFFF00BDBDBD00FFFFFF006B6B6B007B7B7B007B7B7B006B6B
      6B007B7B7B000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000639CCE00639CCE00639CCE00639CCE009CCEFF009CCEFF009CCEFF00639C
      CE00639CCE003163630031639C0031639C0031639C0031639C00000000007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C6363000000
      0000FFCECE0000000000000000009C6363009C6363009C6363009C6363009C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000003163000031630031639C0031639C00639CCE00639C
      CE0000000000000000007B7B7B0031639C0031639C0000316300003163000000
      0000639CCE0031639C0000316300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD00BDBDBD00CECECE00FFFFFF00FFFFFF00000000000000
      000000000000FFFFFF00BDBDBD00FFFFFF006B6B6B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B00000000007B7B7B007B7B7B0000000000000000000000
      0000000000006B6B6B0000000000000000000000000000000000639CCE00639C
      CE00639CCE00639CCE009CCEFF009CCEFF003163630031639C009CCEFF00639C
      CE00639CCE0031639C0031639C0031639C0031639C0031639C0031639C001818
      18006B6B6B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C63630000000000FFCE
      CE00FFCECE00FFCECE00CE9C9C0000000000000000009C636300000000009C63
      63009C6363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000003163000031630031639C0031639C00639CCE00639CCE00000000000000
      000031639C0031639C0031639C0031639C0031639C0000316300003163000031
      630000000000639CCE0031639C00003163000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      BD00BDBDBD00BDBDBD00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000FFFFFF00BDBDBD00FFFFFF006B6B6B007B7B7B007B7B7B007B7B
      7B006B6B6B007B7B7B007B7B7B00000000007B7B7B006B6B6B00000000000000
      0000000000006B6B6B0000000000000000000000000000000000639CCE00639C
      CE009CCEFF009CCEFF0031639C0031639C0031639C0031639C009CCEFF00639C
      CE00639CCE0031639C0031639C0031639C0031639C003163630031639C003163
      9C00001800007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C63630000000000FFCECE00FFCE
      CE00CE9C9C00CE9C9C009C6363009C63630000000000000000009C6363000000
      00009C6363009C63630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000003163000031
      630031639C0031639C000031630000316300000000000000000031639C003163
      9C0031639C0031639C0031639C0031639C0031639C0000316300003163000031
      63000031630018000000639CCE0031639C000031630000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD00BDBD
      BD00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00BDBDBD00FFFFFF006B6B6B007B7B7B006B6B6B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000007B7B7B007B7B7B00000000000000
      0000000000007B7B7B0000000000000000000000000000000000639CCE00639C
      CE000031630031639C0031639C0031639C0031639C0031639C009CCEFF00639C
      CE00639CCE0031639C009CCEFF0031639C0031639C0031639C0031639C003163
      9C0031639C00000000007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C63630000000000FFCECE00CE9C9C00CE9C
      9C009C6363009C63630000000000000000009C6363007B7B7B009C6331009C63
      6300000000009C6363009C636300000000000000000000000000000000000000
      000000000000000000000000000000000000000000000031630031639C003163
      9C00639CCE000000000000000000000000000031630000316300003163000031
      630031639C0031639C0031639C0031639C0031639C0000316300003163000031
      6300003163000031630000001800639CCE0031639C0000316300000000000000
      00000000000000000000000000000000000000000000BDBDBD00FFFFFF00FFFF
      FF000000000000000000000000000000000000B5000000000000000000000000
      000000000000FFFFFF00BDBDBD00FFFFFF006B6B6B007B7B7B007B7B7B007B7B
      7B007B7B7B006B6B6B007B7B7B00000000000000000000000000000000000000
      0000000000006B6B6B0000000000000000000000000000000000639CCE00639C
      CE000031630031639C0031639C0031639C000031630000316300639CCE00639C
      CE00639CCE0031639C006B6B6B009CCEFF0031639C0031639C0031639C003163
      9C0031639C0031639C00001800007B7B7B007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C63630000000000CE9C9C00CE9C9C009C6363009C63
      63000000000000000000CE9C9C00CE9C9C00CE9C9C00CE639C00CE9C9C00CE9C
      9C00CE9C9C0000000000000000009C6363009C63630000000000000000000000
      0000000000000000000000000000000000000000000031639C00639CCE00639C
      CE000000000000000000BDBDBD00000000000000000000000000003163000031
      63000031630031639C0031639C0031639C0031639C0000316300003163000031
      630000316300003163000031630000000000639CCE0031639C00003163000000
      00000000000000000000000000000000000000000000ADADAD007B7B7B000000
      00000000000000000000000000000000000000B50000000000000000000000CE
      000000000000FFFFFF00BDBDBD00FFFFFF006B6B6B007B7B7B007B7B7B006B6B
      6B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      00006B6B6B000000000000000000000000000000000000000000639CCE00639C
      CE000031630031639C000031630000316300639CCE00639CCE00639CCE00639C
      CE009CCEFF009CCEFF007B7B7B00000000009CCEFF0031639C0031639C003163
      9C0031639C0031639C0031639C00000000007B7B7B006B6B6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C63630000000000CE9C9C009C6363009C636300000000000000
      0000CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
      9C00CE9C9C00CE9C9C000000000000000000000000009C6363009C6363000000
      0000000000000000000000000000000000000000000000000000000000000000
      000031639C000000000000000000000000000000000000000000000000000031
      6300003163000031630031639C0031639C00FFFFFF00639CCE00003163000031
      63000031630000316300003163000031630000000000639CCE0031639C000031
      63000000000000000000000000000000000000000000BDBDBD007B7B7B000000
      0000000000000000000000B500000000000000CE000000B5000000B500000000
      000000000000FFFFFF00BDBDBD00FFFFFF006B6B6B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B006B6B6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000639CCE00639C
      CE0000006B0000316300639CCE00639CCE00639CCE00639CCE009CCEFF009CCE
      FF006B6B6B007B7B7B00ADADAD00000000007B7B7B009CCEFF0031639C003163
      9C0031639C0031639C0031639C0031639C00001800007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C636300000000009C6363009C6363000000000000000000FFCECE00CE9C
      9C00FFCECE00CE9C6300FFCECE00CE9C9C00FFCECE00CE9C6300FFCECE00CE9C
      9C00FFCECE00CE9C9C00DEDEDE00180000009C63630000000000000000009C63
      63009C636300000000000000000000000000000000000000000031639C003163
      9C00000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
      00000000000000316300FFFFFF00FFFFFF00639CCE00639CCE00639CCE000031
      6300003163000031630000316300003163000031630000000000639CCE003163
      9C000031630000000000000000000000000000000000BDBDBD007B7B7B000000
      0000000000000000000000B5000000CE000000B500000000000000B500000000
      000000000000FFFFFF00ADADAD00FFFFFF006B6B6B007B7B7B007B7B7B007B7B
      7B006B6B6B007B7B7B007B7B7B00000000000000000000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000639CCE00639C
      CE00639CCE00639CCE00639CCE00639CCE009CCEFF009CCEFF006B6B6B007B7B
      7B00ADADAD00ADADAD00CECECE00000000007B7B7B00000000009CCEFF003163
      9C0031639C0031639C003163630031639C0031639C00000000007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000009C63
      6300000000009C6363000000000000000000FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00CECECE00FFCECE00FFCECE00FFCECE00000000009C636300CE9C9C000000
      0000000000009C6363009C6363009C636300000000000000000031639C000000
      000000000000BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00BDBDBD0000000000639CCE00639CCE00639CCE00639CCE00639CCE00639C
      CE0000316300003163000031630000316300003163000031630018181800639C
      CE0031639C0000316300000000000000000000000000BDBDBD007B7B7B000000
      0000000000000000000000B500000000000000CE00000000000000B500000000
      000000000000FFFFFF00BDBDBD00FFFFFF006B6B6B007B7B7B007B7B7B006B6B
      6B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000639CCE00639C
      CE00639CCE00639CCE009CCEFF009CCEFF007B7B7B007B7B7B00ADADAD009C9C
      9C00CECECE00CECECE00DEDEDE0000000000ADADAD00000000007B7B7B009CCE
      FF0031639C0031639C0031639C0031639C0031639C0031639C00001800007B7B
      7B007B7B7B0000000000000000000000000000000000000000009C6363000000
      00000000000000000000FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00DEDEDE00FFCE
      CE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00000000009C636300CE9C
      9C00CE9C9C0000000000000000009C636300000000000000000000000000ADAD
      AD00BDBDBD00FFFFFF00FFFFFF005A5A5A005A5A5A004A4A4A005A5A5A00FFFF
      FF00FFFFFF00BDBDBD000000000031639C0031639C0031639C0031639C00639C
      CE00639CCE000031630000316300003163000031630000316300003163000000
      0000639CCE0031639C00003163000000000000000000ADADAD007B7B7B0000B5
      000000CE00000000000000B50000000000000000000000000000000000000000
      000000000000FFFFFF00BDBDBD00FFFFFF006B6B6B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      00007B7B7B007B7B7B006B6B6B00000000000000000000000000639CCE00639C
      CE009CCEFF009CCEFF007B7B7B006B6B6B00ADADAD009C9C9C00CECECE00CECE
      CE00DEDEDE00DEDEDE00DEDEDE0000000000ADADAD00000000007B7B7B000000
      00009CCEFF0031639C0031639C0031639C0031639C0031639C0031639C000000
      00007B7B7B007B7B7B000000000000000000000000009C636300000000000000
      0000FFCECE00FFFFFF00FFCECE000000CE000000CE000000B5006363CE006363
      CE009C63CE009C63CE009C63CE00FFFFFF00FFCECE00FFFFFF00FFCECE00FFFF
      FF009C63CE009C63CE00FFCECE00FFFFFF00FFCECE00FFFFFF00000000009C63
      6300CE9C9C00000000009C63630000000000000000000000000000000000CECE
      CE00FFFFFF004A4A4A005A5A5A00292929003939390039393900292929003939
      3900FFFFFF00BDBDBD0000000000000000000000000000000000000000003163
      9C0031639C00639CCE0000316300003163000031630000316300003163000031
      630000000000639CCE0031639C000000000000000000BDBDBD007B7B7B000000
      00000000000000B5000000000000000000000000000000000000000000000000
      000000000000FFFFFF00BDBDBD00FFFFFF006B6B6B007B7B7B006B6B6B007B7B
      7B007B7B7B006B6B6B007B7B7B00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009CCEFF009CCE
      FF00292929006B6B6B00ADADAD00ADADAD00CECECE00CECECE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00FFFFFF0000000000ADADAD0000000000ADADAD000000
      00007B7B7B009CCEFF0031639C0031639C0031639C0031639C00316363003163
      9C00000000007B7B7B007B7B7B00000000000000000000000000FFFFFF00FFCE
      CE00FFFFFF00FFCECE0063639C000000CE000000B5000000CE000000CE000000
      CE000000CE000000CE009C63CE009C63CE009C63CE00FFCECE009C63CE009C63
      CE000000B5009C63CE009C63CE00FFCECE009C63CE00FFCECE00FFFFFF000000
      0000000000009C6363009C636300000000000000000000000000EFEFEF00ADAD
      AD008C8C8C005A5A5A0029292900393939002929290029292900393939003939
      390029292900FFFFFF00BDBDBD00000000005A5A5A004A4A4A004A4A4A000000
      00000000000031639C00639CCE00003163000031630000316300003163000031
      63000031630000000000639CCE000000000000000000BDBDBD007B7B7B000000
      00000000000000B5000000000000000000000000000000000000000000006B6B
      6B007B7B7B00BDBDBD00BDBDBD00FFFFFF006B6B6B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009CCEFF000031
      630018181800ADADAD00CECECE00CECECE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00FFFFFF00FFFFFF003939390000000000EFEFEF0000000000ADADAD000000
      00007B7B7B00000000009CCEFF0031639C0031639C0031639C0031639C003163
      9C0031639C00000000006B6B6B00000000000000000000000000FFCECE00FFFF
      FF00FFCECE00FFFFFF0063639C000000B5000000CE006363CE000000CE000000
      CE000000B5000000CE000000CE000000CE000000CE000000CE000000E7009C63
      CE009C63CE009C63CE000000B500FFFFFF009C63CE00FFFFFF00FFCECE00FFFF
      FF00000000009C6363009C6363009C6363000000000000000000EFEFEF00BDBD
      BD008C8C8C005A5A5A0029292900000000000000000000000000393939002929
      290039393900FFFFFF00BDBDBD00000000005A5A5A00393939004A4A4A003939
      39005A5A5A000000000031639C00639CCE000031630000316300003163000031
      63000031630000000000000000000000000000000000BDBDBD007B7B7B000000
      000000000000000000000000000000000000000000007B7B7B007B7B7B00BDBD
      BD00ADADAD00BDBDBD00FFFFFF00DEDEDE00FFFFFF006B6B6B007B7B7B007B7B
      7B006B6B6B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009CCE
      FF0018181800FFFFFF00DEDEDE00DEDEDE00DEDEDE00DEDEDE00FFFFFF00FFFF
      FF003939390039393900DEDEDE00DEDEDE00FFFFFF0000000000ADADAD000000
      0000ADADAD00000000007B7B7B009CCEFF0031639C0031639C0031639C003163
      9C0031639C00000000007B7B7B0000000000000000000000000000000000FFCE
      CE00FFFFFF00FFCECE00FFFFFF000000CE000000CE00FFCECE006363CE006363
      CE009C63CE009C63CE000000B5000000CE000000CE000000CE000000CE000000
      E7000000CE009C63CE009C63CE00FFCECE00FFFFFF00FFCECE00FFFFFF00FFCE
      CE00FFFFFF0000000000000000000000000000000000DEDEDE00BDBDBD00BDBD
      BD008C8C8C005A5A5A0000000000000000000000000000000000000000003939
      390029292900FFFFFF00BDBDBD00000000005A5A5A00393939004A4A4A004A4A
      4A004A4A4A004A4A4A001800000031639C00639CCE0000316300003163000031
      63000031630000000000000000000000000000000000ADADAD007B7B7B000000
      00000000000000000000000000007B7B7B007B7B7B00BDBDBD00BDBDBD00BDBD
      BD00FFFFFF00FFFFFF00CECECE00DEDEDE00DEDEDE00FFFFFF006B6B6B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000029292900FFFFFF00DEDEDE00DEDEDE00FFFFFF00FFFFFF00393939004A4A
      4A00DEDEDE00EFEFEF00FFFFFF00FFFFFF003939390000000000DEDEDE000000
      0000ADADAD00000000007B7B7B00000000009CCEFF0031639C0031639C003163
      9C0031639C000000000000000000000000000000000000000000000000000000
      0000FFCECE00FFFFFF00FFFFFF00FFFFFF000000CE000000B500FFFFFF00FFFF
      FF00FFFFFF009C63CE009C63CE000000B5000000CE000000CE000000B5009C63
      CE009C63CE009C63CE00FFFFFF00FFFFFF009C63CE00FFFFFF00FFFFFF00FFFF
      FF00FFCECE00FFFFFF00000000000000000000000000EFEFEF00BDBDBD008C8C
      8C004A4A4A004A4A4A0000000000000000000000000000000000000000002929
      290039393900FFFFFF00BDBDBD0000000000000000004A4A4A005A5A5A004A4A
      4A00393939004A4A4A00393939000000000031639C00639CCE00003163000031
      63000031630000000000000000000000000000000000BDBDBD007B7B7B000000
      0000000000007B7B7B007B7B7B00BDBDBD00ADADAD00BDBDBD00FFFFFF00FFFF
      FF00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00CECECE00FFFFFF006B6B
      6B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000018181800FFFFFF00FFFFFF00FFFFFF00393939004A4A4A00DEDEDE00DEDE
      DE00FFFFFF00FFFFFF00393939004A4A4A00DEDEDE00DEDEDE00DEDEDE000000
      0000ADADAD0000000000ADADAD00000000007B7B7B009CCEFF0031639C003163
      9C0031639C000000000000000000000000000000000000000000000000000000
      000000000000FFCECE00FFFFFF00FFFFFF00FFFFFF000000CE000000CE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF009C63CE009C63CE009C63CE009C63CE009C63
      CE00FFFFFF00FFFFFF000000CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000EFEFEF00BDBDBD008C8C
      8C004A4A4A004A4A4A0000000000000000000000000000000000000000003939
      390039393900FFFFFF00BDBDBD000000000000000000000000005A5A5A003939
      39004A4A4A00393939004A4A4A000000000031639C00639CCE00639CCE000031
      63000031630000000000000000000000000000000000BDBDBD007B7B7B006B6B
      6B007B7B7B00BDBDBD00ADADAD00BDBDBD00FFFFFF00FFFFFF00CECECE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00FFFF
      FF006B6B6B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000018181800FFFFFF00393939004A4A4A00DEDEDE00DEDEDE00FFFFFF00FFFF
      FF003939390039393900DEDEDE00DEDEDE00DEDEDE00DEDEDE004A4A4A000000
      0000DEDEDE0000000000ADADAD00000000007B7B7B00000000009CCEFF003163
      9C0031639C000000000000000000000000000000000000000000000000000000
      00000000000000000000FFCECE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000EFEFEF00BDBDBD008C8C
      8C004A4A4A004A4A4A0000000000000000000000000000000000000000003939
      3900FFFFFF00BDBDBD00181818005A5A5A0000000000000000008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C000000000031639C00639CCE00639CCE00639C
      CE000031630000000000000000000000000000000000BDBDBD007B7B7B00BDBD
      BD00BDBDBD00BDBDBD00FFFFFF00FFFFFF00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00FFFFFF006B6B6B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000181818001818180029292900DEDEDE00FFFFFF00FFFFFF00393939004A4A
      4A00DEDEDE00DEDEDE00DEDEDE00DEDEDE004A4A4A0039393900DEDEDE00DEDE
      DE00DEDEDE0000000000ADADAD0000000000ADADAD0000000000003163009CCE
      FF0031639C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFCECE00FFFFFF00FFCECE00FFFFFF00FFCE
      CE00FFFFFF00FFCECE00FFFFFF00FFCECE00FFFFFF00FFCECE00FFFFFF00FFCE
      CE00FFFFFF00FFCECE00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEF00BDBDBD008C8C
      8C004A4A4A004A4A4A004A4A4A000000000000000000000000004A4A4A004A4A
      4A00FFFFFF00BDBDBD00181818005A5A5A00000000004A4A4A005A5A5A005A5A
      5A004A4A4A005A5A5A005A5A5A0000000000639CCE00639CCE00639CCE00639C
      CE00639CCE0000000000000000000000000000000000ADADAD00BDBDBD00BDBD
      BD00FFFFFF00FFFFFF00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00FFFFFF006B6B6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000018181800FFFFFF00393939004A4A4A00DEDEDE00DEDE
      DE00CECECE00EFEFEF004A4A4A0039393900DEDEDE00DEDEDE00EFEFEF00DEDE
      DE003939390000000000DEDEDE0000000000ADADAD0000000000003163000031
      63009CCEFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFCECE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEF00BDBDBD008C8C
      8C004A4A4A004A4A4A00393939004A4A4A00393939004A4A4A005A5A5A00FFFF
      FF00BDBDBD0018181800BDBDBD00BDBDBD005A5A5A00000000005A5A5A005A5A
      5A004A4A4A005A5A5A000000000031639C00639CCE00639CCE00639CCE00639C
      CE000000000000000000000000000000000000000000BDBDBD00FFFFFF00FFFF
      FF00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00CECECE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000181818001818180029292900DEDEDE00DEDEDE00DEDE
      DE004A4A4A0039393900DEDEDE00DEDEDE00DEDEDE00DEDEDE00393939004A4A
      4A00DEDEDE00DEDEDE00DEDEDE0000000000ADADAD0000000000003163009CCE
      FF009CCEFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFCECE00FFFFFF00FFCE
      CE00FFFFFF00FFCECE00FFFFFF00FFCECE00FFFFFF00FFCECE00FFFFFF00FFCE
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEFEF00BDBD
      BD008C8C8C004A4A4A005A5A5A005A5A5A004A4A4A005A5A5A00ADADAD00BDBD
      BD00EFEFEF0029292900BDBDBD00BDBDBD00BDBDBD00000000004A4A4A005A5A
      5A005A5A5A000000000031639C00639CCE00639CCE00639CCE00000000000000
      00000000000000000000000000000000000000000000FFFFFF00DEDEDE00DEDE
      DE00CECECE00DEDEDE00DEDEDE00CECECE00DEDEDE00DEDEDE00CECECE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000018181800DEDEDE004A4A4A003939
      3900DEDEDE00DEDEDE00DEDEDE00DEDEDE00393939004A4A4A00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE004A4A4A0000000000DEDEDE00000000009CCEFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFCECE00FFFF
      FF00FFCECE00FFFFFF00FFCECE00FFFFFF00FFCECE00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEFEF00BDBD
      BD00BDBDBD007B7B7B008C8C8C008C8C8C00BDBDBD00BDBDBD00EFEFEF00EFEF
      EF0018181800FFFFFF00FFFFFF00FFFFFF00BDBDBD00000000005A5A5A000000
      00000000000031639C00639CCE00639CCE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000181818000000000029292900DEDE
      DE00DEDEDE00DEDEDE00393939004A4A4A00DEDEDE00CECECE00EFEFEF00CECE
      CE004A4A4A004A4A4A00DEDEDE00DEDEDE00DEDEDE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFCE
      CE00FFCECE00FFCECE00FFCECE00FFCECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFEF
      EF00EFEFEF00BDBDBD00BDBDBD00BDBDBD00BDBDBD00EFEFEF00FFFFFF001818
      1800CECECE000000000000000000000000000000000000000000000000003163
      9C0031639C00639CCE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000018181800DEDE
      DE004A4A4A0039393900DEDEDE00DEDEDE00DEDEDE00EFEFEF00393939004A4A
      4A00DEDEDE00CECECE00DEDEDE00DEDEDE004A4A4A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFCECE00FFCECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF00EFEFEF00EFEFEF00EFEFEF0018181800000000000000
      000000000000639CCE00639CCE00639CCE00639CCE00639CCE00639CCE00639C
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00CECECE00EFEFEF00DEDE
      DE00CECECE00DEDEDE00DEDEDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000181818000000
      000029292900DEDEDE00DEDEDE00DEDEDE00393939004A4A4A00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE004A4A4A00393939000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005A5A5A0000000000FFFF
      FF00639CCE00639CCE00639CCE00639CCE00639CCE00639CCE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEDEDE00DEDEDE00DEDEDE00DEDEDE00EFEFEF00CECECE00DEDE
      DE00EFEFEF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000018181800DEDEDE004A4A4A0039393900DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00393939004A4A4A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00639CCE00639CCE00639CCE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DEDEDE00DEDEDE00CECECE00DEDEDE00EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000181818000000000029292900DEDEDE00DEDEDE00DEDEDE00393939004A4A
      4A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEDEDE00EFEFEF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000018181800DEDEDE004A4A4A0039393900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000018181800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C63
      6300000000009C6363009C6363000000000000000000000000009C6363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B6B6B007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C6363000000
      0000FFCECE0000000000000000009C6363009C6363009C6363009C6363009C63
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008C8C8C004A4A4A00000000007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C63630000000000FFCE
      CE00FFCECE00FFCECE00CE9C9C0000000000000000009C636300000000009C63
      63009C6363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000316363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008C8C8C008C8C8C007B7B7B005A5A5A005A5A5A00000000007B7B
      7B007B7B7B006B6B6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B006B6B6B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C63630000000000FFCECE00FFCE
      CE00CE9C9C00CE9C9C009C6363009C63630018000000000000009C6363000000
      00009C6363009C63630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003163
      6300000000003163630031636300000000000000000000000000316363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008C8C
      8C007B7B7B008C8C8C008C8C8C008C8C8C004A4A4A005A5A5A005A5A5A000000
      00007B7B7B007B7B7B006B6B6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C8C8C005A5A
      5A00000000007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C63630000000000FFCECE00CE9C9C00CE9C
      9C009C6363009C63630000000000000000005A5A5A009C6363009C6363009C63
      6300000000009C6363009C636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000316363000000
      000063FFFF000000000000000000316363003163630031636300316363003163
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C0000000000000000004A4A4A005A5A5A004A4A
      4A00000000007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C8C8C008C8C8C00000000000000
      00005A5A5A00000000007B7B7B007B7B7B007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C63630000000000CE9C9C00CE9C9C009C6363009C63
      63000000000000000000CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
      9C00CE9C9C0000000000000000009C6363009C63630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000316363000000000063FF
      FF0063FFFF0063FFFF0063FFFF00000000000000000031636300000000003163
      6300316363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008C8C8C008C8C8C007B7B7B008C8C8C008C8C
      8C008C8C8C0000000000000000008C8C8C004A4A4A00000000005A5A5A005A5A
      5A005A5A5A00000000007B7B7B007B7B7B007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C8C8C008C8C8C0000000000000000008C8C8C005A5A
      5A00000000005A5A5A00000000007B7B7B007B7B7B006B6B6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C63630000000000CE9C9C009C6363009C636300000000000000
      0000CE9C9C00CE9C6300CE9C9C00CE9C9C00CE9C9C00CE9C6300CE9C9C00CE9C
      9C00CE9C9C00CE9C9C000000000000000000000000009C6363009C6363000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000316363000000000063FFFF0063FF
      FF009CCECE009CCECE00639C9C00639C9C00000000000000000000FFFF000000
      0000316363003163630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B008C8C8C007B7B7B008C8C8C008C8C8C008C8C8C000000
      0000000000008C8C8C008C8C8C008C8C8C005A5A5A005A5A5A00000000004A4A
      4A005A5A5A005A5A5A00000000007B7B7B006B6B6B007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C8C8C008C8C8C0000000000000000008C8C8C007B7B7B00EFEFEF004A4A
      4A005A5A5A00000000005A5A5A00000000007B7B7B007B7B7B006B6B6B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C636300000000009C6363009C6363000000000000000000FFCECE00CE9C
      9C00FFCECE00CE9C9C00FFCECE00CE639C00FFCECE00CE9C9C00FFCECE00CE9C
      9C00FFCECE00CE9C9C00CECECE00180000009C63630000000000000000009C63
      63009C6363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000316363000000000063FFFF009CCECE009CCE
      CE00639C9C00639C9C00000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF00000000003163630031636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C0000000000000000008C8C
      8C007B7B7B008C8C8C007B7B7B008C8C8C004A4A4A005A5A5A004A4A4A000000
      00005A5A5A005A5A5A004A4A4A00000000007B7B7B007B7B7B007B7B7B000000
      00000000000000000000000000000000000000000000000000008C8C8C008C8C
      8C0000000000000000007B7B7B008C8C8C00EFEFEF00EFEFEF00BDBDBD00FFFF
      FF004A4A4A005A5A5A00000000005A5A5A00000000007B7B7B007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C63
      6300000000009C6363000000000000000000FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00CECECE00FFCECE00FFCECE00FFCECE00000000009C636300CE9C9C000000
      0000000000009C6363009C6363009C6363000000000000000000000000000000
      0000000000000000000031636300000000009CCECE009CCECE00639C9C00639C
      9C00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000316363003163630000000000000000000000
      000000000000000000000000000000000000000000008C8C8C008C8C8C007B7B
      7B008C8C8C008C8C8C008C8C8C0000000000000000008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C00FFFFFF00BDBDBD005A5A5A004A4A4A005A5A
      5A00000000004A4A4A005A5A5A005A5A5A00000000007B7B7B006B6B6B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      00008C8C8C008C8C8C00EFEFEF00EFEFEF00BDBDBD00CECECE00BDBDBD00BDBD
      BD00EFEFEF004A4A4A005A5A5A00000000005A5A5A00000000007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C6363000000
      00000000000000000000FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00CECECE00FFCE
      CE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00000000009C636300CE9C
      9C00CE9C9C0000000000000000009C6363000000000000000000000000000000
      00000000000031636300000000009CCECE00639C9C00639C9C00000000000000
      000031FFFF0031FFFF0031FFFF0031FFFF0031FFFF0031FFFF0031FFFF0031FF
      FF0031FFFF0031FFFF0000000000000000000000000031636300316363000000
      000000000000000000000000000000000000000000008C8C8C008C8C8C008C8C
      8C008C8C8C0000000000000000008C8C8C007B7B7B008C8C8C008C8C8C007B7B
      7B008C8C8C00FFFFFF00FFFFFF00BDBDBD00ADADAD00BDBDBD005A5A5A005A5A
      5A005A5A5A00000000005A5A5A005A5A5A004A4A4A00000000007B7B7B007B7B
      7B007B7B7B0000000000000000000000000000000000000000008C8C8C008C8C
      8C00EFEFEF00EFEFEF00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00EFEFEF008C8C8C005A5A5A00000000005A5A5A00000000007B7B
      7B006B6B6B007B7B7B0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C636300000000000000
      0000FFCECE00FFFFFF00FFCECE000000CE000000CE000000CE000000B5006363
      9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
      9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00000000009C63
      6300CE9C9C00181818009C636300000000000000000000000000000000000000
      00003163630000000000639C9C00639C9C00000000000000000063FFFF0063FF
      FF0063FFFF0063FFFF0063FFFF0063FFFF0063FFFF0063FFFF0063FFFF0063FF
      FF0063FFFF0063FFFF0063FFFF00000000009CCECE0000000000000000003163
      630031636300000000000000000000000000000000008C8C8C008C8C8C000000
      0000000000008C8C8C008C8C8C008C8C8C008C8C8C007B7B7B008C8C8C00FFFF
      FF00FFFFFF00BDBDBD00ADADAD00BDBDBD00BDBDBD00BDBDBD00BDBDBD004A4A
      4A005A5A5A005A5A5A00000000004A4A4A005A5A5A005A5A5A00000000007B7B
      7B006B6B6B007B7B7B0000000000000000000000000000000000EFEFEF00EFEF
      EF00BDBDBD00CECECE00BDBDBD00BDBDBD00BDBDBD00BDBDBD00CECECE00BDBD
      BD00BDBDBD00BDBDBD00EFEFEF004A4A4A005A5A5A00000000005A5A5A000000
      00007B7B7B007B7B7B006B6B6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFCE
      CE00FFFFFF00FFCECE0063639C000000CE000000B50000009C000000B5000000
      00000000000000000000000000005A5A5A009C6363009C6363009C6363009C63
      63009C6363009C6363009C6363009C6363009C6363009C6363009C6363000000
      0000000000009C6363009C636300CE9C9C000000000000000000000000003163
      630000000000639C9C0000000000000000009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF00393939000000000000000000CEFFFF009CFFFF003939
      390018000000000000009CFFFF009CFFFF00000000009CCECE009CCECE000000
      0000000000003163630031636300316363000000000000000000000000008C8C
      8C008C8C8C008C8C8C007B7B7B008C8C8C008C8C8C00FFFFFF00FFFFFF00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD008C8C8C008C8C8C0000000000BDBDBD00BDBD
      BD004A4A4A005A5A5A005A5A5A00000000005A5A5A004A4A4A005A5A5A000000
      00007B7B7B007B7B7B006B6B6B00000000000000000000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00CECECE00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00CECECE00BDBDBD00EFEFEF005A5A5A004A4A4A00000000005A5A
      5A00000000007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFCECE00FFFF
      FF00FFCECE00FFFFFF0063639C000000CE000000B500FFFFFF00FFCECE00FFFF
      FF000000000000006B00000084000000000000000000CE9C9C00CE9C9C00CE9C
      9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
      9C00000000009C6363009C6363009C6363000000000000000000316363000000
      000000000000000000009CFFFF009CFFFF009CFFFF009CFFFF0063FFFF009CFF
      FF009CFFFF004A4A4A0000000000000000000000000000000000CEFFFF004A4A
      4A001800000000000000000000009CFFFF009CFFFF00000000009CCECE009CCE
      CE0063FFFF00000000000000000031636300000000007B7B7B008C8C8C008C8C
      8C008C8C8C007B7B7B008C8C8C00FFFFFF00FFFFFF00BDBDBD00BDBDBD000000
      0000000000008C8C8C008C8C8C000000000000000000FFFFFF00ADADAD00BDBD
      BD00BDBDBD004A4A4A005A5A5A005A5A5A00000000005A5A5A005A5A5A004A4A
      4A00000000007B7B7B007B7B7B007B7B7B00000000000000000000000000CECE
      CE00BDBDBD00BDBDBD00CECECE00BDBDBD00BDBDBD00BDBDBD00BDBDBD00CECE
      CE00BDBDBD00BDBDBD00BDBDBD00CECECE00EFEFEF008C8C8C005A5A5A000000
      00005A5A5A00000000007B7B7B007B7B7B007B7B7B0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFCE
      CE00FFFFFF00FFCECE00FFFFFF000000CE000000CE00FFCECE00FFFFFF00FFCE
      CE00000000000000CE0000008400000052000000840000000000FFFFFF00FFCE
      CE00FFFFFF00FFCECE00FFFFFF00FFCECE00FFFFFF00FFCECE00FFFFFF00FFCE
      CE00FFFFFF000000000000000000000000000000000031636300000000000000
      0000CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF000000000000000000CEFFFF00CEFFFF003939390000000000CEFF
      FF00CEFFFF00CEFFFF0000000000CEFFFF00CEFFFF00CEFFFF00000000009CCE
      CE009CCECE00000000003163630000000000000000008C8C8C007B7B7B008C8C
      8C008C8C8C00FFFFFF00FFFFFF00BDBDBD00ADADAD00BDBDBD004A4A4A00FFFF
      FF008C8C8C000000000000000000FFFFFF00FFFFFF00ADADAD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD005A5A5A005A5A5A004A4A4A00000000005A5A5A005A5A
      5A004A4A4A00000000007B7B7B007B7B7B000000000000000000000000000000
      0000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00CECECE00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00EFEFEF005A5A5A004A4A
      4A00000000005A5A5A00000000007B7B7B007B7B7B006B6B6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFCECE00FFFFFF00FFFFFF00FFFFFF000000CE000000CE00FFFFFF00FFFF
      FF00000000000000CE000000CE000000840000006B0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFCECE00FFFFFF0000000000000000000000000000000000CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF001800000000000000FFFFFF00CEFFFF00CEFFFF004A4A4A000000
      0000CEFFFF00000000004A4A4A00CEFFFF00CEFFFF00CEFFFF00CEFFFF000000
      000000000000316363003163630000000000000000008C8C8C008C8C8C00FFFF
      FF00FFFFFF00ADADAD00BDBDBD00BDBDBD00BDBDBD008C8C8C008C8C8C005A5A
      5A00FFFFFF008C8C8C0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD004A4A4A005A5A5A004A4A4A00000000005A5A
      5A005A5A5A004A4A4A00000000007B7B7B000000000000000000000000000000
      000000000000CECECE00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00CECECE00BDBDBD00BDBDBD005A5A5A005A5A5A00BDBDBD00EFEFEF004A4A
      4A005A5A5A00000000005A5A5A00000000007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFCECE00FFFFFF00FFFFFF00FFFFFF000000CE000000CE00FFFF
      FF00000000000000E7000000CE0000008400000084000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF000000000000000000FFFFFF000000000000000000CEFFFF000000
      000000000000CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF000000000031636300316363003163630000000000FFFFFF00FFFFFF00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000000000000000FFFF
      FF004A4A4A005A5A5A00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD008C8C
      8C008C8C8C0000000000BDBDBD00BDBDBD005A5A5A005A5A5A004A4A4A000000
      00005A5A5A005A5A5A00000000007B7B7B000000000000000000000000000000
      00000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00CECECE00BDBD
      BD00BDBDBD00CECECE004A4A4A00BDBDBD00BDBDBD005A5A5A00BDBDBD00FFFF
      FF004A4A4A005A5A5A00000000005A5A5A00000000006B6B6B007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFCECE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000E7000000FF0000006B00000000008C8C8C008C8C8C000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00CEFFFF00CEFF
      FF00FFFFFF000000000000000000FFFFFF000000000000000000000000000000
      0000FFFFFF00CEFFFF00CEFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFF
      FF00CEFFFF0000000000000000000000000000000000FFFFFF00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00000052000000E700BDBDBD00BDBDBD00FFFFFF00ADAD
      AD00BDBDBD00BDBDBD00BDBDBD0000000000000000008C8C8C008C8C8C000000
      000000000000FFFFFF00ADADAD00BDBDBD00BDBDBD004A4A4A005A5A5A005A5A
      5A00000000005A5A5A0000000000000000000000000000000000000000000000
      0000000000000000000000000000CECECE00BDBDBD00BDBDBD00BDBDBD005A5A
      5A004A4A4A00BDBDBD00CECECE00FFFFFF00FFFFFF00BDBDBD00BDBDBD00BDBD
      BD00EFEFEF004A4A4A005A5A5A00000000005A5A5A00000000007B7B7B007B7B
      7B006B6B6B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFCECE00FFFFFF00FFCECE00FFFFFF00FFCE
      CE00FFFFFF00000000000000000000000000DEDEDE008C8C8C007B7B7B008C8C
      8C00000000005A5A5A00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00CEFF
      FF00CEFFFF00000000000000000000000000000000004A4A4A00FFFFFF000000
      0000CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFF
      FF00CEFFFF00CEFFFF0000000000000000000000000000000000FFFFFF00BDBD
      BD000031000000CE0000BDBDBD00BDBDBD00ADADAD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD004A4A4A00FFFFFF008C8C8C000000000000000000FFFF
      FF00FFFFFF00ADADAD00BDBDBD00BDBDBD00BDBDBD00ADADAD005A5A5A005A5A
      5A005A5A5A000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD005A5A5A00BDBD
      BD00BDBDBD005A5A5A00BDBDBD00BDBDBD00CECECE00BDBDBD004A4A4A005A5A
      5A00BDBDBD00FFFFFF004A4A4A005A5A5A00000000005A5A5A00000000007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFCECE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF004A4A4A008C8C8C00DEDEDE008C8C8C00DEDE
      DE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF004A4A
      4A000000000000000000000000009CCECE0000000000000000004A4A4A000000
      0000FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD008C8C8C008C8C8C005A5A5A00FFFFFF008C8C8C0000000000BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD004A4A
      4A004A4A4A005A5A5A0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CECECE00BDBDBD00FFFF
      FF00FFFFFF00BDBDBD00BDBDBD00BDBDBD00BDBDBD005A5A5A00BDBDBD00BDBD
      BD005A5A5A00BDBDBD00FFFFFF004A4A4A004A4A4A00000000005A5A5A000000
      00007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFCECE00FFFFFF00FFCE
      CE00FFFFFF00FFCECE00FFFFFF00FFCECE00000000008C8C8C00DEDEDE000000
      0000292929000000000000000000181818000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF000000
      0000000000000000000000000000FFFFFF00CEFFFF000000000000000000FFFF
      FF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00BDBDBD00ADADAD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD000000000000000000FFFFFF004A4A4A005A5A5A00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD008C8C8C008C8C8C0000000000BDBDBD00BDBD
      BD005A5A5A004A4A4A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD00BDBD
      BD00BDBDBD00BDBDBD005A5A5A005A5A5A00BDBDBD00BDBDBD00FFFFFF00FFFF
      FF004A4A4A005A5A5A00BDBDBD00EFEFEF005A5A5A004A4A4A00000000005A5A
      5A00000000007B7B7B007B7B7B006B6B6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFCECE00FFFF
      FF00FFCECE00FFFFFF00FFCECE00FFFFFF008C8C8C0000000000000000008C8C
      8C00181818002929290000000000000000001818180000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CEFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00BDBDBD00BDBDBD00BDBDBD00BDBDBD00000052000000
      E700BDBDBD00BDBDBD00FFFFFF00ADADAD00BDBDBD00BDBDBD00BDBDBD000000
      0000000000008C8C8C008C8C8C000000000000000000FFFFFF00BDBDBD00BDBD
      BD00BDBDBD005A5A5A0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CECE
      CE00BDBDBD005A5A5A00BDBDBD00BDBDBD005A5A5A00BDBDBD00BDBDBD005A5A
      5A00BDBDBD00BDBDBD005A5A5A00BDBDBD00FFFFFF005A5A5A004A4A4A000000
      00005A5A5A00000000007B7B7B007B7B7B000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFCE
      CE00FFCECE00FFCECE00FFCECE00FFCECE00000000005A5A5A00000000002929
      29008C8C8C00181818002929290000000000000000004A4A4A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00CEFFFF004A4A
      4A000000000000000000CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFF
      FF00CEFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00BDBDBD000031000000CE0000BDBDBD00BDBD
      BD00BDBDBD00ADADAD00CECECE00ADADAD00BDBDBD00BDBDBD004A4A4A00FFFF
      FF008C8C8C000000000000000000FFFFFF00FFFFFF00ADADAD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD00BDBDBD00FFFFFF00FFFFFF004A4A4A004A4A4A00CECECE00BDBD
      BD00FFFFFF00FFFFFF004A4A4A005A5A5A00BDBDBD00EFEFEF005A5A5A004A4A
      4A0000000000000000007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFCECE00FFCECE0000000000000000000000000000000000000000000000
      0000181818008C8C8C00181818002929290000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00ADADAD00CECECE00ADADAD00BDBDBD00BDBDBD008C8C8C008C8C8C005A5A
      5A00FFFFFF008C8C8C0000000000BDBDBD00BDBDBD00CECECE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDBDBD00BDBDBD004A4A4A00CECECE00BDBDBD004A4A4A00CECE
      CE00BDBDBD004A4A4A00CECECE00BDBDBD005A5A5A00BDBDBD00EFEFEF005A5A
      5A004A4A4A00000000007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000292929008C8C8C00181818002929290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00BDBDBD00ADADAD00BDBD
      BD00BDBDBD00ADADAD00CECECE00BDBDBD00BDBDBD000000000000000000FFFF
      FF005A5A5A005A5A5A00BDBDBD00BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD00BDBDBD00FFFFFF00FFFFFF004A4A4A005A5A
      5A00BDBDBD00CECECE00FFFFFF00FFFFFF00BDBDBD008C8C8C008C8C8C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002929290000000000181818008C8C8C001818180029292900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CEFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00000052000000E700BDBDBD00BDBDBD00FFFFFF00ADAD
      AD00BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CECECE00BDBDBD005A5A5A00BDBDBD00BDBD
      BD004A4A4A00BDBDBD00BDBDBD008C8C8C008C8C8C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003939390000000000292929008C8C8C0029292900181818000000
      00005A5A5A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00BDBD
      BD000031000000CE0000BDBDBD00BDBDBD00ADADAD00BDBDBD00BDBDBD00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00FFFFFF00FFFF
      FF00BDBDBD008C8C8C008C8C8C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B0000000000292929008C8C8C00292929001818
      1800000000008C8C8C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00CECECE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CECECE00BDBDBD008C8C
      8C008C8C8C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000181818008C8C8C00FFFF
      FF00181818000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00BDBDBD00BDBDBD00BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C8C8C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005A5A5A00181818008C8C
      8C008C8C8C002929290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C8C8C001818
      18008C8C8C008C8C8C0018181800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4A005A5A5A008C8C8C00292929000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4A005A5A5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B006B6B6B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B006B6B6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF9C9C00FF9C9C00FF9C9C00FF9C9C000000
      0000000000007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B006B6B6B006B6B6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C636300000000000000
      00007B7B7B007B7B7B007B7B7B007B7B7B006B6B6B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FF9C
      9C00FF9C9C00000000007B7B7B006B6B6B007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008C8C
      8C004A4A4A00000000005A5A5A006B6B6B006B6B6B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C6363009C636300CE9C9C00000000006331
      3100000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B006B6B6B007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008C8C8C008C8C8C008C8C8C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF9C
      9C00FF639C00FFCECE00FFCECE00FFCECE0000CEFF00FFFFFF00EFEFEF00FFCE
      CE00FFCECE00FF9C9C00000000007B7B7B007B7B7B007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8C8C008C8C8C008C8C
      8C005A5A5A004A4A4A00000000005A5A5A006B6B6B006B6B6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C6363009C636300CE9C9C00CE9C9C00CE9C9C00000000006331
      310063313100180000007B7B7B007B7B7B006B6B6B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF009CCEFF00639CCE0000000000000000008C8C8C008C8C8C000000
      0000000000007B7B7B008C8C8C00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF9C
      9C00FF9C9C00FFCECE00FFCECE0000CEFF009C31310000CEFF00FFCECE00FFFF
      FF00FFCECE00FF9C9C0000000000000000007B7B7B007B7B7B006B6B6B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008C8C8C008C8C8C008C8C8C007B7B7B008C8C
      8C004A4A4A005A5A5A004A4A4A00000000005A5A5A006B6B6B006B6B6B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C63
      63009C636300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00181818006331
      31006331310063313100000000007B7B7B007B7B7B007B7B7B007B7B7B006B6B
      6B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000009CCEFF009CCEFF00639CCE003163
      9C0000000000FFFFFF009CCEFF00639CCE00639CCE00000000008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CE636300FF9C
      9C00FF9C9C00FF9C9C00FFCECE0000CEFF009C31310000CEFF00FFCECE00FFCE
      CE00FFFFFF00FFCECE00FF9C9C0000000000000000007B7B7B007B7B7B006B6B
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008C8C8C008C8C8C008C8C8C008C8C8C007B7B7B008C8C8C00FFFF
      FF00BDBDBD004A4A4A005A5A5A004A4A4A00000000005A5A5A006B6B6B006B6B
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C6363009C636300CE9C
      9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00000000006331
      3100633131006331310063313100000000007B7B7B007B7B7B007B7B7B006B6B
      6B007B7B7B007B7B7B006B6B6B00000000000000000000000000000000009CCE
      FF00639CCE00639CCE000000000000000000FFFFFF009CCEFF009CCEFF00639C
      CE0031639C0000000000FFFFFF009CCEFF00639CCE00639CCE00000000008C8C
      8C0000000000000000008C8C8C008C8C8C007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000CE636300FF9C
      9C00FF9C9C00FF9C9C000000B50000CEFF009C31310000CEFF0000009C00FFCE
      CE00FFFFFF00FFCECE00FF9C9C000000000000008400000000007B7B7B006B6B
      6B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008C8C
      8C007B7B7B008C8C8C007B7B7B008C8C8C008C8C8C00FFFFFF00FFFFFF00BDBD
      BD00BDBDBD00ADADAD004A4A4A005A5A5A004A4A4A00000000005A5A5A006B6B
      6B006B6B6B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C6363009C636300CE9C9C00CE9C9C00CE9C
      9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00ADADAD00310000006331
      310063313100633131006331310063313100000000007B7B7B007B7B7B007B7B
      7B007B7B7B006B6B6B007B7B7B006B6B6B00000000000000000000000000FFFF
      FF009CCEFF009CCEFF00639CCE0031639C0000000000FFFFFF009CCEFF009CCE
      FF00639CCE00639CCE0000000000639CCE00639CCE00639CCE00000000000000
      00004A4A4A0031CEFF00000000008C8C8C008C8C8C008C8C8C00000000000000
      00000000000000000000000000000000000000000000CE636300FF9C9C00FF9C
      9C0000CEFF0000CEFF0000CEFF009C3131009C3131009C31310000CEFF0000CE
      FF0000CEFF00FFCECE00FF9C9C00000000000000840000006B00000000007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8C8C007B7B7B008C8C
      8C008C8C8C008C8C8C008C8C8C00FFFFFF00FFFFFF00BDBDBD00BDBDBD004A4A
      4A00FFFFFF00BDBDBD00BDBDBD004A4A4A005A5A5A004A4A4A00000000005A5A
      5A006B6B6B006B6B6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C6363009C6363009C6363009C636300CE9C9C00CE9C9C00CE9C
      9C00CE9C9C00CE9C9C009C6363009C636300CE9C9C00CE9C9C00000000006331
      3100633131004A4A4A009C3131006331310063313100000000007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000FFFFFF009CCEFF009CCEFF00639CCE0031639C0000000000FFFFFF009CCE
      FF009CCEFF00639CCE00639CCE0000000000000000000000000031CEFF0031CE
      FF004A4A4A00FFFFFF0031CEFF00000000008C8C8C008C8C8C007B7B7B000000
      00000000000000000000000000000000000000000000CE636300FF9C9C0000CE
      FF009C3131009C3131009C3131009C313100FF9C9C009C3131009C3131009C31
      31009C31310000CEFF00FF9C9C00000000000000840000006B00000084000000
      00007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8C8C008C8C8C007B7B
      7B008C8C8C00FFFFFF00FFFFFF00BDBDBD00BDBDBD004A4A4A004A4A4A00FFFF
      FF004A4A4A00FFFFFF00BDBDBD00ADADAD004A4A4A005A5A5A004A4A4A000000
      00007B7B7B006B6B6B006B6B6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C63
      63009C6363009C6363009C636300633131009C636300CE9C9C00CE9C9C00CE9C
      9C009C6363009C6363000000000000000000CE9C9C00CE9C9C00000000006331
      3100633131006331310063313100633131006331310063313100000000007B7B
      7B007B7B7B007B7B7B007B7B7B006B6B6B00000000009CCEFF00639CCE003163
      9C0000000000FFFFFF009CCEFF009CCEFF00639CCE00639CCE0000000000639C
      CE00639CCE00639CCE00000000000000000031CEFF0031CEFF009CFFFF0031CE
      FF0039393900FFFFFF009CFFFF0031CEFF00000000008C8C8C008C8C8C008C8C
      8C000000000000000000000000000000000000000000CE636300FF9C9C00CE63
      630000CEFF0000CEFF0000CEFF009C3131009C3131009C31310000CEFF0000CE
      FF0000CEFF00FFCECE00FF9C9C00000000000000B50000005200000084000000
      8400000000007B7B7B006B6B6B007B7B7B000000000000000000000000000000
      000000000000000000000000000000000000000000008C8C8C008C8C8C00FFFF
      FF00FFFFFF00BDBDBD00BDBDBD004A4A4A005A5A5A004A4A4A00FFFFFF00BDBD
      BD00BDBDBD004A4A4A00FFFFFF00BDBDBD00BDBDBD004A4A4A005A5A5A004A4A
      4A00000000007B7B7B006B6B6B006B6B6B000000000000000000000000000000
      000000000000000000000000000000000000000000009C636300CE9C9C00CE9C
      9C009C6363006331310063313100633131007B7B7B00CE9C9C00CE9C9C009C63
      63009C63630063313100CE9C9C00CE9C9C00CE9C9C00CE9C9C00000000006331
      3100633131006331310063313100633131006331310000000000000000000000
      00007B7B7B007B7B7B006B6B6B007B7B7B0000000000FFFFFF009CCEFF00639C
      CE00639CCE0000000000FFFFFF009CCEFF009CCEFF00639CCE00639CCE000000
      0000000000001800000031CEFF0031CEFF009CFFFF009CFFFF0031CEFF003939
      3900FFFFFF009CFFFF009CFFFF009CFFFF0000CEFF00000000008C8C8C008C8C
      8C007B7B7B0000000000000000000000000000000000CE636300FF9C9C00CE63
      6300FF9C9C00FF9C9C000000B50000CEFF009C31310000CEFF0000008400FFCE
      CE00FFCECE00FFCECE00000000000000B5000000B50000009C00000084000000
      520000008400000000006B6B6B007B7B7B007B7B7B0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00BDBD
      BD00BDBDBD004A4A4A004A4A4A00FFFFFF004A4A4A00BDBDBD004A4A4A00FFFF
      FF00BDBDBD00BDBDBD004A4A4A00FFFFFF00BDBDBD00ADADAD004A4A4A005A5A
      5A004A4A4A00000000007B7B7B006B6B6B006B6B6B0000000000000000000000
      00000000000000000000000000000000000000000000CE9C9C00CE9C9C00CE9C
      9C00633131000018000000000000633131009C6363009C6363009C6363006331
      31006331310000000000FFCECE00CE9C9C00CE9C9C00CE9C9C00000000006331
      310063313100633131006331310000000000000000009C6363009C6363000000
      00007B7B7B006B6B6B007B7B7B007B7B7B000000000000000000FFFFFF009CCE
      FF00639CCE00639CCE0000000000639CCE00639CCE00639CCE00000000000000
      000031CEFF0000CEFF009CFFFF009CFFFF009CFFFF009CFFFF0031CEFF003939
      3900FFFFFF009CFFFF009CFFFF009CFFFF009CFFFF0031CEFF00000000008C8C
      8C008C8C8C008C8C8C00000000000000000000000000CE636300FF9C9C00CE63
      6300FF9C9C00FF9C9C00FF9C9C0000CEFF009C31310000CEFF00FFCECE00FFCE
      CE00FFCECE00FFCECE00000000000000B50000009C000000B5000000B5000000
      6B0000008400000000007B7B7B007B7B7B006B6B6B007B7B7B00000000000000
      00000000000000000000000000000000000000000000FFFFFF00BDBDBD004A4A
      4A004A4A4A00BDBDBD00BDBDBD004A4A4A00FFFFFF00BDBDBD00BDBDBD004A4A
      4A00FFFFFF004A4A4A00BDBDBD004A4A4A00FFFFFF00BDBDBD00BDBDBD004A4A
      4A004A4A4A005A5A5A00000000007B7B7B006B6B6B006B6B6B00000000000000
      00000000000000000000000000000000000000000000CE9C9C00CE9C9C000000
      0000000000000000840000000000633131009C63630063313100633131000000
      00000000000000000000FFCECE00CE9C9C00CE9C9C00CE9C9C00000000006331
      31006331310000000000000000009C6363007B7B7B009C6363009C6363000000
      00007B7B7B007B7B7B007B7B7B0000000000000000000000000000000000FFFF
      FF009CCEFF00639CCE00639CCE0000000000000000000000000031CEFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF0031CEFF0039393900FFFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF0031CEFF000000
      00008C8C8C008C8C8C008C8C8C000000000000000000CE636300FF9C9C00CE63
      6300FF9C9C00FFFFFF00FF9C9C0000CEFF009C31310000CEFF00FFCECE00FFCE
      CE00FF9C9C00000000000000CE000000CE000000B500000084000000B5000000
      B50000006B0000000000000000007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000FFFFFF00BDBD
      BD004A4A4A00FFFFFF00BDBDBD00BDBDBD004A4A4A00FFFFFF004A4A4A00BDBD
      BD004A4A4A00FFFFFF00BDBDBD00BDBDBD004A4A4A00FFFFFF00BDBDBD00BDBD
      BD004A4A4A004A4A4A004A4A4A00000000007B7B7B006B6B6B006B6B6B000000
      00000000000000000000000000000000000000000000CE9C9C00CE9C9C000000
      840000006B00000084001800000063313100633131000000000000000000CECE
      9C00CECE9C0000000000FFCECE00CE9C9C00CE9C9C00CE9C9C00000000000000
      0000000000007B7B7B009C6363009C6363009C6363009C6363009C6363000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000639CCE00639CCE00000000000000000031CEFF0031CEFF009CFFFF009CFF
      FF009CFFFF009CFFFF0031CEFF0031CEFF0031CEFF0031CEFF004A4A4A0031CE
      FF0031CEFF0031CEFF0031CEFF0031CEFF0031CEFF0031CEFF0031CEFF0031CE
      FF00000000008C8C8C007B7B7B008C8C8C000000000000000000CE636300FF9C
      9C00CE636300FF9C9C00FF9C9C00FF9C9C0000CEFF00FF9C9C00FF9C9C00FF9C
      9C00FF9C9C00000000000000CE000000CE000000CE000000B5000000B5000000
      9C000000B5000000000000008400000000006B6B6B007B7B7B007B7B7B006B6B
      6B0000000000000000000000000000000000000000000000000000000000FFFF
      FF00BDBDBD004A4A4A00FFFFFF004A4A4A00BDBDBD004A4A4A00FFFFFF00BDBD
      BD00BDBDBD004A4A4A00FFFFFF00BDBDBD00BDBDBD004A4A4A00FFFFFF00BDBD
      BD00BDBDBD004A4A4A005A5A5A004A4A4A00000000007B7B7B006B6B6B006B6B
      6B000000000000000000000000000000000000000000CE9C9C00CE9C9C000000
      6B0000006B0000008400000000000000000000000000CECE9C00CECE9C00FFFF
      FF00FFCEFF0000000000FFCECE00CE9C9C00CE9C9C00FFCECE00000000009C63
      63009C6363009C6363006B6B6B009C6363009C6363009C6363009C6363000000
      000000000000000000000000000000000000000000008C8C8C008C8C8C008C8C
      8C00000000000000000031CEFF0031CEFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF00393939004A4A4A004A4A4A004A4A4A00393939004A4A4A003939
      39004A4A4A004A4A4A004A4A4A00393939004A4A4A00393939004A4A4A004A4A
      4A0000000000000000008C8C8C00BDBDBD000000000000000000CE636300FF9C
      9C00FF9C9C00CE636300CE636300FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C
      9C00000000000000E7000000FF000000B5000000CE000000CE000000B5000000
      84000000B500000000000000840000008400000000007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000FFFFFF00BDBDBD004A4A4A00FFFFFF00BDBDBD00BDBDBD004A4A4A00FFFF
      FF004A4A4A00BDBDBD004A4A4A00FFFFFF00BDBDBD00ADADAD004A4A4A00FFFF
      FF00BDBDBD00ADADAD004A4A4A005A5A5A004A4A4A00000000007B7B7B006B6B
      6B006B6B6B0000000000000000000000000000000000CE9C9C00CE9C9C000000
      840000006B000000840000006B0000006B00CECE9C00EFEFEF00EFEFEF00CE9C
      9C00CE9C9C00CE9C9C0000000000FFCECE00FFCECE00CECE9C00000000009C63
      63009C6363009C6363009C6363009C6363009C636300CE9C9C00CE9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000031CEFF0031CEFF0031CEFF0031CEFF0031CEFF0031CEFF0031CEFF0031CE
      FF0039393900FFFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF0063FF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF000000
      0000000000007B7B7B00BDBDBD00BDBDBD00000000000000000000000000CE63
      6300CE636300FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00000000000000
      00000000E7000000B5000000E7000000FF000000CE000000CE000000CE000000
      B50000009C00000000000000B5000000840000009C00000000006B6B6B007B7B
      7B006B6B6B007B7B7B0000000000000000000000000000000000000000000000
      000000000000FFFFFF00BDBDBD004A4A4A00FFFFFF004A4A4A00BDBDBD004A4A
      4A00FFFFFF00BDBDBD00BDBDBD004A4A4A00FFFFFF00BDBDBD00BDBDBD004A4A
      4A00FFFFFF00BDBDBD00BDBDBD004A4A4A005A5A5A004A4A4A00000000007B7B
      7B006B6B6B006B6B6B00000000000000000000000000CE9C9C00CE9C9C000000
      840000006B0000008400000084000000E700EFEFEF00CE9C9C00CE9C9C00CE9C
      6300FFCECE00FFCECE00FFCECE00CECE9C00CECE9C00EFEFEF00000000009C63
      63009C6363009C6363009C636300CE9C9C00CE9C9C009C6363009C6363000000
      000000000000000000000000000000000000000000000000000031CEFF003939
      39004A4A4A004A4A4A004A4A4A00393939004A4A4A00393939004A4A4A003939
      39004A4A4A00FFFFFF009CFFFF0063FFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF000000000000000000639C
      CE00000000008C8C8C008C8C8C00ADADAD000000000000000000000000000000
      000000000000CE636300CE636300CE63630000000000000000000000E7000000
      FF000000E7000000E7000000B5000000E7000000E7000000CE000000CE000000
      CE00000000000000B50000009C000000B5000000840000008400000000007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      00000000000000000000FFFFFF00BDBDBD004A4A4A00FFFFFF00BDBDBD00BDBD
      BD004A4A4A00FFFFFF004A4A4A00BDBDBD004A4A4A00FFFFFF00BDBDBD00BDBD
      BD004A4A4A00FFFFFF00BDBDBD00ADADAD004A4A4A005A5A5A004A4A4A000000
      00007B7B7B006B6B6B006B6B6B000000000000000000CE9C9C00CE9C9C000000
      840000006B000000E7000000CE00CE9C9C00CE9C9C00CE9C9C00FFCECE00FFCE
      CE00FFCECE00CECE9C00CECE9C00FFFFFF00EFEFEF00CECE9C00000000009C63
      63009C636300CE9C9C00CE9C9C009C6363009C636300CE9C9C00CE9C9C000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF0063FFFF009CFF
      FF004A4A4A00FFFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF0000000000000000006363CE00639CCE00639C
      CE00639CCE00000000008C8C8C008C8C8C000000000000000000000000000000
      0000000000000000000000000000000000000000E7000000FF009C9CFF000000
      E7000000E7000000E7000000E7000000B5000000E7000000E7000000E7000000
      CE00000000000000CE000000B50000009C000000B5000000840000009C000000
      00007B7B7B006B6B6B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000FFFFFF00BDBDBD004A4A4A00FFFFFF004A4A
      4A00BDBDBD004A4A4A00FFFFFF00BDBDBD00BDBDBD004A4A4A00FFFFFF00BDBD
      BD00BDBDBD004A4A4A00FFFFFF00BDBDBD00BDBDBD004A4A4A005A5A5A004A4A
      4A00000000007B7B7B006B6B6B006B6B6B0000000000CE9C9C00CE9C9C000000
      E7000000E700CE9C9C00CE9C9C00CE9C9C00FFCECE00FFCECE00FFCECE00CECE
      9C00CECE9C00EFEFEF00FFFFFF00CECE9C00CECE9C00FFFFFF00EFEFEF000000
      0000CE9C9C009C6363009C636300CE9C9C00CE9C9C009C6363009C6363001818
      1800000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF003939
      3900FFFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF0000000000000000009CCEFF009CCEFF009CCEFF009CCEFF009CCE
      FF00639CCE0031639C00000000008C8C8C000000000000000000000000000000
      0000000000000000000000000000000084000000CE000000E7000000FF009C9C
      FF000000E7000000FF000000E7000000E7000000B5000000E7000000FF000000
      00000000CE000000CE000000B5000000B50000009C000000B500000084000000
      8400000000007B7B7B006B6B6B007B7B7B000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00BDBDBD004A4A4A00FFFF
      FF00BDBDBD00BDBDBD004A4A4A00FFFFFF004A4A4A00BDBDBD004A4A4A00FFFF
      FF00BDBDBD00BDBDBD004A4A4A00FFFFFF00BDBDBD00ADADAD004A4A4A005A5A
      5A004A4A4A00000000007B7B7B006B6B6B0000000000CE9C9C00CE9C9C00CE9C
      6300CE9C9C00CE9C9C00CECECE00FFCECE00FFCECE00CECE9C00CECE9C00EFEF
      EF00FFFFFF00CECE9C00CECE9C00EFEFEF00FFFFFF00EFEFEF00FFFFFF000000
      00009C636300CE9C9C00ADADAD009C6363009C6363009C6363009C6363000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF009CFFFF009CFFFF009CFFFF009CFFFF004A4A
      4A00FFFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF000000
      0000000000006363CE009CCEFF009CCEFF009CCEFF009CCEFF009CCEFF009CCE
      FF009CCEFF00639CCE00000000008C8C8C000000000000000000000000000000
      000000000000000000000000000000000000000084000000CE000000E7000000
      FF009C9CFF000000E7000000FF000000E7000000E7000000B5000000E7000000
      00000000FF000000CE000000CE000000CE000000B500000084000000B5000000
      8400000000007B7B7B007B7B7B00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00BDBDBD004A4A
      4A00FFFFFF004A4A4A00BDBDBD004A4A4A00FFFFFF00BDBDBD00BDBDBD004A4A
      4A00FFFFFF004A4A4A00BDBDBD004A4A4A00FFFFFF00BDBDBD00BDBDBD004A4A
      4A004A4A4A005A5A5A00000000006B6B6B0000000000CE9C9C00CE9C9C00CE9C
      9C00FFCECE00FFCECE00CECECE00FFCE9C00CECE9C00EFEFEF00EFEFEF00CECE
      9C00CECE9C00EFEFEF00EFEFEF00FFFFFF00EFEFEF00FFFFFF00FFFFFF00EFEF
      EF00000000009C6363009C6363009C6363007B7B7B009C6363009C6363000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF009CFFFF009CFFFF009CFFFF003939
      3900FFFFFF009CFFFF009CFFFF009CFFFF009CFFFF000000000000000000639C
      CE00639CCE00639CCE009CCEFF009CCEFF00FFFFFF00FFFFFF009CCEFF009CCE
      FF009CCEFF0031639C0000000000BDBDBD000000000000000000000000000000
      00000000000000000000000000000000000000000000000084000000CE000000
      E7000000FF009C9CFF000000E7000000FF000000E7000000E700000000000000
      B5000000E7000000E7000000CE000000CE000000CE000000B50000009C000000
      B500000084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00BDBD
      BD004A4A4A00FFFFFF00BDBDBD00BDBDBD004A4A4A00FFFFFF004A4A4A00BDBD
      BD004A4A4A00FFFFFF00BDBDBD00BDBDBD004A4A4A00FFFFFF00BDBDBD00BDBD
      BD004A4A4A004A4A4A00000000007B7B7B0000000000CE9C9C00FFCECE00FFCE
      CE00FFCECE00CECE9C00CECE9C00FFFFFF00EFEFEF00CECE9C00CECE9C00FFFF
      FF00EFEFEF00FFFFFF00FFFFFF00EFEFEF00FFFFFF00FFFFFF00EFEFEF00FFFF
      FF00000000009C6363009C6363009C6363009C6363009C6363009C6363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008C8C8C0000000000FFFFFF00FFFFFF00FFFFFF004A4A4A00FFFF
      FF009CFFFF009CFFFF009CFFFF000000000000000000639CCE00639CCE00639C
      CE009CCEFF009CCEFF009CCEFF009CCEFF00FFFFFF00EFEFEF009CCEFF009CCE
      FF00639CCE0031639C00000000008C8C8C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      CE000000E7000000FF009C9CFF000000E70000000000000000000000E7000000
      E7000000B5000000E7000000E7000000E7000000CE000000CE00000084000000
      B5000000B5000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00BDBDBD004A4A4A00FFFFFF004A4A4A00BDBDBD004A4A4A00FFFFFF00BDBD
      BD00BDBDBD004A4A4A00FFFFFF00BDBDBD00BDBDBD004A4A4A00FFFFFF00ADAD
      AD00BDBDBD005A5A5A00000000000000000000000000FFCECE00FFCECE00CECE
      9C00CECE9C00EFEFEF00FFFFFF00CECE9C00CECE9C00EFEFEF00FFFFFF00FFFF
      FF00EFEFEF00EFEFEF00FFFFFF00FFFFFF00EFEFEF00EFEFEF00FFFFFF00EFEF
      EF00EFEFEF0000000000000000009C6363009C63630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C8C8C008C8C8C008C8C8C0000000000FFFFFF00FFFFFF0039393900FFFF
      FF00FFFFFF00000000000000000000000000639CCE00639CCE00639CCE00FFFF
      FF00FFFFFF009CCEFF009CCEFF009CCEFF009CCEFF009CCEFF00FFFFFF00FFFF
      FF0031639C0031639C0031639C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      84000000CE000000E70000000000000000009C9CFF000000E7000000FF000000
      E7000000E7000000B5000000E7000000E7000000CE000000CE000000CE000000
      B50000009C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00BDBDBD004A4A4A00FFFFFF00BDBDBD00BDBDBD004A4A4A00FFFF
      FF004A4A4A00BDBDBD005A5A5A004A4A4A004A4A4A00FFFFFF00BDBDBD00BDBD
      BD000000000000000000000000000000000000000000CECE9C00CECE9C00FFFF
      FF00EFEFEF00CECE9C00CECE9C00EFEFEF00FFFFFF00EFEFEF00FFFFFF00EFEF
      EF00FFFFFF00FFFFFF00FFFFFF00EFEFEF00FFFFFF00FFFFFF00EFEFEF00FFCE
      CE00FFCECE00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C8C8C0000000000000000000000000000000000FFFFFF004A4A4A000000
      000000000000639CCE00639CCE00639CCE00639CCE00639CCE00639CCE00639C
      CE00639CCE00FFFFFF00FFFFFF009CCEFF00FFFFFF00FFFFFF0031639C003163
      9C00639CCE0031639C0031639C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E7000000FF009C9CFF000000E7000000
      E7000000FF000000E7000000B5000000E7000000E7000000E7000000CE000000
      CE0000009C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00BDBDBD004A4A4A00FFFFFF004A4A4A00BDBDBD004A4A
      4A00FFFFFF004A4A4A004A4A4A00FFFFFF00FFFFFF00BDBDBD00000000000000
      00000000000000000000000000000000000000000000FFFFFF00EFEFEF00CECE
      9C00CECE9C00FFFFFF00EFEFEF00FFFFFF00EFEFEF00FFFFFF00EFEFEF00FFFF
      FF00EFEFEF00EFEFEF00FFFFFF00EFEFEF00EFEFEF00FFCECE00FFCECE00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF009CCEFF00639CCE00639CCE000000000000000000639C
      CE00639CCE00639CCE00639CCE009CCEFF009CCEFF009CCEFF009CCEFF009CCE
      FF009CCEFF00639CCE00639CCE00639CCE0031639C0031639C009CCEFF009CCE
      FF009CCEFF00639CCE0031639C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000084000000CE000000E7000000FF009C9CFF000000
      E7000000E7000000E7000000E7000000B5000000E7000000E7000000CE000000
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00BDBDBD004A4A4A00FFFFFF00BDBDBD004A4A
      4A005A5A5A00FFFFFF00FFFFFF00BDBDBD000000000000000000000000000000
      00000000000000000000000000000000000000000000CECE9C00CECE9C00EFEF
      EF00FFFFFF00EFEFEF00FFFFFF00EFEFEF00FFFFFF00FFFFFF00FFFFFF00EFEF
      EF00FFFFFF00FFFFFF00EFEFEF00FFCECE00FFCECE00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF009CCEFF009CCEFF009CCEFF009CCEFF009CCEFF009CCE
      FF009CCEFF009CCEFF009CCEFF009CCEFF009CCEFF009CCEFF009CCEFF009CCE
      FF00FFFFFF00FFFFFF0031639C0031639C009CCEFF009CCEFF009CCEFF009CCE
      FF009CCEFF009CCEFF00639CCE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000084000000CE000000E7000000FF009C9C
      FF000000E7000000FF000000E7000000E7000000B5000000E7000000FF000000
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00BDBDBD004A4A4A004A4A4A00FFFF
      FF00FFFFFF00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00EFEFEF00FFFFFF00EFEFEF00FFFFFF00EFEFEF00EFEFEF00FFFFFF00EFEF
      EF00EFEFEF00FFCECE00FFCECE00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000FFFFFF009CCEFF009CCEFF009CCEFF009CCEFF009CCE
      FF009CCEFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000084000000CE000000E7000000
      FF009C9CFF000000E7000000FF000000E7000000E7000000B5000000E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00BDBDBD00FFFFFF00BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00EFEF
      EF00FFFFFF00EFEFEF00FFFFFF00EFEFEF00FFFFFF00FFFFFF00EFEFEF00FFCE
      CE00FFCECE00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF009CCEFF009CCEFF009CCEFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000084000000CE000000
      CE000000FF009C9CFF000000E7000000E7000000FF000000E7000000B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00EFEFEF00FFFFFF00FFFFFF00EFEFEF00EFEFEF00FFCECE00FFCECE00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084000000
      CE000000CE000000FF009C9CFF000000E7000000E7000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00EFEFEF00FFCECE00FFCECE00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000CE000000CE000000E7009C9CFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFCECE00FFCECE00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C8C8C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A4A4A005A5A5A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C8C8C008C8C8C008C8C8C008C8C
      8C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C9C00CE9C9C0063313100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006B6B6B007B7B7B007B7B7B00000000000000000000000000000000000000
      000000000000000000007B7B7B006B6B6B007B7B7B0000000000000000000000
      0000000000006B6B6B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C8C8C008C8C8C008C8C8C008C8C8C00000000000000
      0000000000000000000000000000000000008C8C8C008C8C8C008C8C8C007B7B
      7B008C8C8C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004A4A4A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C9C00CE9C9C0063313100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADADAD007B7B
      7B00000000007B7B7B006B6B6B007B7B7B000000000000000000000000000000
      0000000000000063FF00000000007B7B7B007B7B7B000000000000000000009C
      FF000063FF00000000007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C8C8C007B7B7B008C8C8C008C8C8C000000000000000000319C0000FF63
      00009CCE3100319C0000FF6300009CCE310000000000000000008C8C8C008C8C
      8C008C8C8C007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000393939009C9CFF00639CFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C9C00CE9C9C0063313100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAD00ADADAD009C9C9C007B7B
      7B007B7B7B00000000007B7B7B007B7B7B007B7B7B0000000000000000006B6B
      6B00000000000063FF000063FF000000000000000000009CFF00009CFF00009C
      FF000063FF000063FF00000000007B7B7B000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B008C8C
      8C008C8C8C008C8C8C000000000000000000319C0000FF6300009CCE3100319C
      0000FF6300009CCE3100319C0000FF6300000031000000520000000000000000
      00008C8C8C008C8C8C008C8C8C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000316363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9CFF009C9CFF00639CFF00639CFF00639CFF00000000000000
      000000000000000000000000000000000000CE9C9C00CE9C9C00000000000000
      0000CE9C9C00CE9C9C0063313100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADADAD00ADADAD00ADADAD00ADADAD00ADADAD007B7B
      7B006B6B6B0039393900000000007B7B7B007B7B7B007B7B7B007B7B7B006B6B
      6B00000000000063FF000063FF000063FF00009CFF00009CFF00009CFF00FFFF
      FF0000CEFF000063FF00000000006B6B6B000000000000000000000000000000
      0000000000000000000000000000000000008C8C8C008C8C8C008C8C8C007B7B
      7B008C8C8C008C8C8C0000000000319C0000FF6300009CCE3100319C0000FF63
      00009CCE3100319C00006B000000000000000052000000520000006B00000000
      00008C8C8C008C8C8C007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003163
      6300000000003163630031636300000000000000000000000000316363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9CFF00000000000000000000000000000000000000
      0000000000000000000000000000CE9C9C00CE9C9C0063313100000000000000
      0000CE9C9C00CE9C9C0063313100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006B6B6B00EFEFEF009C9C9C00BDBDBD009C9C9C00ADADAD00ADADAD006B6B
      6B007B7B7B004A4A4A00ADADAD00000000007B7B7B007B7B7B006B6B6B007B7B
      7B0000000000FFFFFF000063FF000063FF00009CFF00FFFFFF00FFFFFF0000CE
      FF0000CEFF0000CEFF0000000000000000000000000000000000000000000000
      000000000000000000008C8C8C008C8C8C008C8C8C007B7B7B008C8C8C008C8C
      8C008C8C8C0000000000319C0000FF6300009CCE3100CECE3100CECE3100319C
      0000FF63000000520000005200000084000000520000006B0000005200000052
      0000000000008C8C8C008C8C8C008C8C8C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000316363000000
      000063FFFF000000000000000000316363003163630031636300316363003163
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF000000000000FFFF0000000000639CFF00639C
      FF000000000000000000CE9C9C00CE9C9C006331310063313100000000000000
      0000CE9C9C00CE9C9C0063313100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADADAD009C9C
      9C007B7B7B00DEDEDE00ADADAD009C9C9C00ADADAD00ADADAD00ADADAD007B7B
      7B007B7B7B0039393900ADADAD007B7B7B00000000007B7B7B007B7B7B007B7B
      7B0000000000FFFFFF0000CEFF0000CEFF00FFFFFF0000CEFF0000CEFF0000CE
      FF00000000000000000000000000000000000000000000000000000000000000
      00008C8C8C007B7B7B008C8C8C008C8C8C008C8C8C008C8C8C007B7B7B008C8C
      8C008C8C8C0000000000319C0000FFCE3100FFFF3100FFFF3100FFFF3100CECE
      3100CECE31000000000018181800008400000084000000520000008400000052
      0000000000008C8C8C008C8C8C008C8C8C000000000000000000000000000000
      00000000000000000000000000000000000000000000316363000000000063FF
      FF0063FFFF0063FFFF0063FFFF00000000000000000031636300000000003163
      6300316363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000000000639C
      FF00639CFF0000000000CE9C9C00633131006331310000000000000000000000
      0000CE9C9C00CE9C9C0063313100000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C9C9C00ADADAD00ADAD
      AD007B7B7B00CECECE00ADADAD00ADADAD00ADADAD009C9C9C00BDBDBD006B6B
      6B007B7B7B004A4A4A00ADADAD007B7B7B007B7B7B00000000007B7B7B007B7B
      7B0000000000FFFFFF0000CEFF0000CEFF0000CEFF0000CEFF00000000000000
      00006B6B6B007B7B7B007B7B7B000000000000000000000000008C8C8C008C8C
      8C007B7B7B008C8C8C008C8C8C008C8C8C007B7B7B008C8C8C008C8C8C008C8C
      8C000000000000000000319C0000FFFF3100FFFF3100FFFF310000000000FFFF
      310000180000FFCE3100CECE3100181818000084000000840000008400000000
      0000319C00006B0000007B7B7B008C8C8C000000000000000000000000000000
      000000000000000000000000000000000000316363000000000063FFFF0063FF
      FF009CCECE009CCECE00639C9C00639C9C00000000000000000000FFFF000000
      0000316363003163630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000FFFF0000FFFF000000
      0000639CFF00639CFF0000000000633131000000000000000000000000000000
      0000CE9C9C00CE9C9C0063313100000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADADAD00ADADAD00ADAD
      AD006B6B6B00EFEFEF009C9C9C00ADADAD00ADADAD00ADADAD009C9C9C007B7B
      7B006B6B6B0039393900ADADAD006B6B6B007B7B7B007B7B7B00000000000000
      000000000000009CFF00009CFF0000CEFF0000CEFF0000CEFF000063FF000063
      FF00000000007B7B7B007B7B7B007B7B7B008C8C8C007B7B7B008C8C8C008C8C
      8C008C8C8C008C8C8C007B7B7B008C8C8C008C8C8C008C8C8C007B7B7B008C8C
      8C0000000000319C0000FFFF3100FFFF31000000000000000000CECECE000000
      000029292900292929001818180000840000009C000000840000181818000000
      0000319C00006B0000008C8C8C008C8C8C000000000000000000000000000000
      0000000000000000000000000000316363000000000063FFFF009CCECE009CCE
      CE00639C9C00639C9C00000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF00000000003163630031636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF000000000000FFFF0000FF
      FF0000000000639CFF00639CFF00000000000000000000000000000000000000
      0000CE9C9C00CE9C9C0063313100000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADADAD00ADADAD00ADAD
      AD007B7B7B00CECECE00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD007B7B
      7B007B7B7B004A4A4A00ADADAD007B7B7B007B7B7B0000000000000000002929
      2900000000000063FF00009CFF00009CFF0000CEFF0000CEFF0000CEFF000063
      FF00000000007B7B7B006B6B6B007B7B7B00000000008C8C8C008C8C8C008C8C
      8C008C8C8C007B7B7B008C8C8C008C8C8C008C8C8C007B7B7B008C8C8C008C8C
      8C0000000000319C00006B00000000000000CECECE00CECECE00CECECE00CECE
      CE000000000000B50000009C0000009C00000084000000001800319C00008400
      000018181800000000008C8C8C008C8C8C000000000000000000000000000000
      0000000000000000000031636300000000009CCECE009CCECE00639C9C00639C
      9C00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000316363003163630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009CFFFF009CFFFF000000000000FF
      FF0000FFFF0000000000639CFF00639CFF000000000000000000000000000000
      0000CE9C9C00CE9C9C0063313100000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADADAD009C9C9C00ADAD
      AD007B7B7B00DEDEDE00ADADAD009C9C9C00ADADAD00ADADAD009C9C9C007B7B
      7B007B7B7B0039393900BDBDBD000000000000000000ADADAD00ADADAD001818
      1800000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B0000000000000000008C8C8C007B7B
      7B008C8C8C008C8C8C008C8C8C007B7B7B008C8C8C008C8C8C008C8C8C008C8C
      8C000000000000000000CECECE00CECECE00CECECE00CECECE00FFFFFF00CECE
      CE00CECECE000000000000B500000084000018181800319C0000FF6300000031
      000000840000000000008C8C8C00000000000000000000000000000000000000
      00000000000031636300000000009CCECE00639C9C00639C9C00000000000000
      000031FFFF0031FFFF0031FFFF0031FFFF0031FFFF0031FFFF0031FFFF0031FF
      FF0031FFFF0031FFFF0000000000000000000000000031636300316363000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CFFFF009CFFFF000000
      000000FFFF0000FFFF0000000000639CFF00639CFF0000000000000000000000
      0000CE9C9C00CE9C9C0063313100000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADADAD00ADADAD009C9C
      9C007B7B7B00EFEFEF009C9C9C00ADADAD00BDBDBD009C9C9C00ADADAD007B7B
      7B007B7B7B000000000000000000ADADAD0000000000FFFFFF00FFFFFF005A5A
      5A001818180029292900000000007B7B7B007B7B7B006B6B6B007B7B7B007B7B
      7B006B6B6B007B7B7B007B7B7B00000000000000000000000000000000008C8C
      8C008C8C8C008C8C8C007B7B7B008C8C8C008C8C8C008C8C8C00000000000000
      0000BDBDBD00CECECE00CECECE00DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CECECE00CECECE000000000018181800CECE3100CECE3100CECE31000000
      0000008400000000000000000000000000000000000000000000000000000000
      00003163630000000000639C9C00639C9C00000000000000000063FFFF0063FF
      FF0063FFFF0063FFFF0063FFFF0063FFFF0063FFFF0063FFFF0063FFFF0063FF
      FF0063FFFF0063FFFF0063FFFF00000000009CCECE0000000000000000003163
      6300316363000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009CFFFF009CFF
      FF000000000000FFFF0000FFFF0000000000639CFF00639CFF00000000000000
      0000CE9C9C00CE9C9C0063313100000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADADAD00ADADAD00ADAD
      AD006B6B6B00DEDEDE00ADADAD009C9C9C00ADADAD00ADADAD00ADADAD000000
      000000000000ADADAD00ADADAD00FFFFFF0000000000BDBDBD005A5A5A004A4A
      4A005A5A5A001818180029292900000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      00008C8C8C008C8C8C008C8C8C008C8C8C000000000000000000CECECE00CECE
      CE00CECECE00CECECE00FFFFFF00FFFFFF00FFFFFF00000084006363CE00FFFF
      FF00FFFFFF00CECECE00CECECE0000000000FFFF3100FFFF3100CECE3100319C
      00006B0000000000000000000000000000000000000000000000000000003163
      630000000000639C9C0000000000000000009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF00316363009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF00000000009CCECE009CCECE001800
      0000000000003163630031636300316363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009CFF
      FF009CFFFF000000000000FFFF0000FFFF0000000000639CFF00639CFF000000
      0000CE9C9C00CE9C9C0063313100000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADADAD009C9C9C00ADAD
      AD007B7B7B00DEDEDE00ADADAD00ADADAD00BDBDBD000000000000000000ADAD
      AD00ADADAD00FFFFFF00FFFFFF00BDBDBD00BDBDBD0000000000BDBDBD004A4A
      4A005A5A5A005A5A5A001818180029292900000000007B7B7B007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000008C8C8C000000000000000000BDBDBD00CECECE00CECECE00DEDE
      DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006363CE0000008400FFFF
      FF00FFFFFF00FFFFFF00CECECE00CECECE0000000000FFFF3100CECE3100319C
      00006B0000000000000000000000000000000000000000000000316363000000
      000000000000000000009CFFFF009CFFFF009CFFFF009CFFFF0063FFFF009CFF
      FF009CFFFF009CFFFF009CFFFF00316363009CFFFF009CFFFF00639C9C009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF00180000009CCECE009CCE
      CE0063FFFF000000000000000000316363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009CFFFF009CFFFF000000000000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADADAD00ADADAD009C9C
      9C007B7B7B00DEDEDE00ADADAD000000000000000000ADADAD00ADADAD00FFFF
      FF00FFFFFF00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000CECE
      CE004A4A4A005A5A5A005A5A5A00181818002929290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CECECE00CECECE00CECECE00CECECE00FFFFFF00FFFF
      FF00FFFFFF000000840000008400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CECECE00CECECE0000000000CECE3100319C
      00006B0000000000000000000000000000000000000031636300000000000000
      0000CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00CEFFFF0031636300CEFFFF00CEFFFF0031636300CEFFFF00CEFFFF003163
      6300CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00000000009CCE
      CE009CCECE000000000031636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009CFFFF009CFFFF000000000000FFFF0000000000CE9C9C00CE9C
      9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00000000000000
      000000000000000000000000000000000000000000009C9C9C00ADADAD00ADAD
      AD007B7B7B000000000000000000ADADAD0000000000FFFFFF00FFFFFF000000
      000018181800BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
      00005A5A5A004A4A4A005A5A5A005A5A5A001818180029292900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD00CECECE00CECECE00DEDEDE00FFFFFF00FFFFFF006363CE00FFFF
      FF00FFFFFF00FFFFFF000000840000008400FFFFFF00FFFFFF00FFFFFF000000
      840000008400FFFFFF00FFFFFF00FFFFFF00CECECE00CECECE00000000000000
      0000000000000000000000000000000000000000000000000000CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF003163
      6300CEFFFF00CEFFFF0031636300CEFFFF00CEFFFF0000636300CEFFFF00CEFF
      FF0031636300CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00FFFFFF000000
      0000000000003163630031636300000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF9C
      FF00CE9C9C00000000009CFFFF009CFFFF000000000000000000FF9CFF00FF9C
      FF00FF9CFF00FF9CFF00FF9CFF00FF9CFF00CE9C9C00CE9C9C00000000000000
      00000000000000000000000000000000000000000000ADADAD009C9C9C00ADAD
      AD0000000000BDBDBD00ADADAD00FFFFFF0000000000BDBDBD00BDBDBD002929
      29000000000018181800BDBDBD00BDBDBD00BDBDBD0000000000000000005A5A
      5A005A5A5A005A5A5A004A4A4A005A5A5A005A5A5A0018181800292929000000
      0000000000000000000000000000000000000000000000000000CECECE00CECE
      CE00CECECE00CECECE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000084000000
      9C00FFFFFF00FFFFFF00FFFFFF00000084006363CE00FFFFFF00FFFFFF00FFFF
      FF0000006B0000009C00FFFFFF00FFFFFF00FFFFFF00CECECE00CECECE000000
      0000000000000000000000000000000000000000000000000000FFFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF0031636300CEFFFF00CEFF
      FF0031636300CEFFFF00CEFFFF00639C9C00CEFFFF00CEFFFF00639C9C00CEFF
      FF00CEFFFF0000636300CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00180000003163630031636300316363000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF9C
      FF00CE9C9C0000000000000000009CFFFF009CFFFF0000000000000000000000
      000000000000000000000000000000000000FF9CFF00CE9C9C00000000000000
      00000000000000000000000000000000000000000000ADADAD00ADADAD00ADAD
      AD0000000000FFFFFF00FFFFFF004A4A4A00ADADAD0000000000BDBDBD00BDBD
      BD00181818005A5A5A00BDBDBD0000000000000000005A5A5A005A5A5A004A4A
      4A004A4A4A005A5A5A00BDBDBD005A5A5A004A4A4A005A5A5A00181818002929
      2900000000000000000000000000000000000000000000000000CECECE00CECE
      CE00FFFFFF00FFFFFF00FFFFFF006363CE0000008400FFFFFF00FFFFFF000000
      840000008400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000840000008400FFFFFF00FFFFFF00FFFFFF00BDBDBD00DEDE
      DE0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF0031636300CEFF
      FF00FFFFFF0031636300FFFFFF00CEFFFF0031636300CEFFFF00FFFFFF009CCE
      CE00FFFFFF00CEFFFF009CCECE00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFF
      FF00CEFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF9C
      FF00CE9C9C00CE9C9C0000000000000000009CFFFF009CFFFF000000000000FF
      FF0000FFFF0000000000639CFF000000000000000000CE9C9C00000000000000
      00000000000000000000000000000000000000000000ADADAD00ADADAD009C9C
      9C00000000005A5A5A005A5A5A004A4A4A005A5A5A00ADADAD0000000000BDBD
      BD00BDBDBD0000000000000000005A5A5A004A4A4A005A5A5A005A5A5A005A5A
      5A00BDBDBD00BDBDBD0000000000BDBDBD005A5A5A004A4A4A005A5A5A001818
      180029292900000000000000000000000000000000000000000000000000CECE
      CE00CECECE00FFFFFF00FFFFFF00FFFFFF000000840000008400FFFFFF00FFFF
      FF000000840000008400FFFFFF00FFFFFF00FFFFFF00000084006363CE00FFFF
      FF00FFFFFF00FFFFFF00000084006363CE00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00CECECE000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00639C
      9C00CEFFFF00FFFFFF00639C9C00FFFFFF00CEFFFF0031636300CEFFFF00FFFF
      FF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFF
      FF00CEFFFF00CEFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF9C
      FF00CE9C9C00CE9C9C000000000000000000000000009CFFFF009CFFFF000000
      000000FFFF0000FFFF0000000000639CFF00639CFF0000000000000000000000
      00000000000000000000000000000000000000000000ADADAD009C9C9C00ADAD
      AD00FFFFFF00000000004A4A4A005A5A5A004A4A4A005A5A5A00ADADAD000000
      0000000000005A5A5A005A5A5A004A4A4A005A5A5A004A4A4A00BDBDBD00BDBD
      BD000000000000000000FFFFFF0000000000BDBDBD005A5A5A004A4A4A005A5A
      5A00181818002929290000000000000000000000000000000000000000000000
      0000CECECE00CECECE00FFFFFF00FFFFFF00FFFFFF000000840000009C000000
      84000000840000009C0000008400FFFFFF00FFFFFF006363CE0000008400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CECECE00DEDEDE0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFF
      FF0031636300CEFFFF00FFFFFF009CCECE00FFFFFF00CEFFFF009CCECE00CEFF
      FF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF9CFF00CE9C9C00CE9C9C000000000000000000000000009CFFFF009CFF
      FF000000000000FFFF0000FFFF0000000000639CFF00639CFF00000000000000
      00000000000000000000000000000000000000000000ADADAD00FFFFFF00FFFF
      FF00DEDEDE00DEDEDE00000000005A5A5A005A5A5A004A4A4A005A5A5A005A5A
      5A005A5A5A004A4A4A005A5A5A004A4A4A00CECECE00BDBDBD00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BDBDBD005A5A5A004A4A
      4A005A5A5A001818180018181800000000000000000000000000000000000000
      000000000000CECECE00CECECE00FFFFFF00FFFFFF00FFFFFF00000084000000
      8400FFFFFF00FFFFFF000000840000008400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE00CECE
      CE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFF
      FF00CEFFFF0031636300CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFF
      FF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF9CFF00CE9C9C00CE9C9C000000000000000000CE9C9C00000000009CFF
      FF009CFFFF000000000000FFFF0000FFFF0000000000639CFF00639CFF000000
      00000000000000000000000000000000000000000000FFFFFF00DEDEDE00DEDE
      DE00DEDEDE00ADADAD00ADADAD00000000005A5A5A005A5A5A005A5A5A004A4A
      4A005A5A5A005A5A5A00BDBDBD00BDBDBD000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BDBDBD005A5A
      5A004A4A4A005A5A5A0029292900000000000000000000000000000000000000
      00000000000000000000CECECE00CECECE00FFFFFF00FFFFFF00FFFFFF000000
      840000009C00FFFFFF00FFFFFF00000084006363CE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE00DEDEDE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF009CCECE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CEFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF9CFF00CE9C9C00CE9C9C0000000000CE9C9C00000000000000
      00009CFFFF009CFFFF000000000000FFFF0000FFFF0000000000639CFF00639C
      FF00000000000000000000000000000000000000000000000000DEDEDE00ADAD
      AD00ADADAD00FFFFFF00FFFFFF00CECECE00000000005A5A5A004A4A4A005A5A
      5A005A5A5A00BDBDBD000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BDBD
      BD005A5A5A004A4A4A005A5A5A00000000000000000000000000000000000000
      0000000000000000000000000000CECECE00CECECE00FFFFFF00FFFFFF00FFFF
      FF000000840000008400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00CECECE00CECECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00CEFFFF00FFFF
      FF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFF
      FF00CEFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF9CFF00CE9C9C0000000000000000004A4A4A005A5A
      5A00000000009CFFFF009CFFFF000000000000FFFF0000FFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00CECECE00DEDEDE00DEDEDE00DEDEDE00000000005A5A5A004A4A
      4A002929290000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF313100FF3131000000
      0000BDBDBD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECECE00CECECE00FFFFFF00FFFF
      FF00FFFFFF006363CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CECECE00DEDEDE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF9CFF00CE9C9C00FF9CFF005A5A5A00000000000000
      000000000000000000009CFFFF009CFFFF000000000000FFFF00000000000000
      B500000084000000840000000000000000000000000000000000000000000000
      0000DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00000000005A5A
      5A005A5A5A001818180000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF313100FF313100FF313100FF3131000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CECECE00CECECE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE00CECE
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF9CFF00FF9CFF00000000004A4A4A005A5A
      5A00393939005A5A5A00000000009CFFFF009CFFFF00000000000000B5000000
      CE000000B5000000840000009C00000000000000000000000000000000000000
      000000000000DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE000000
      00005A5A5A005A5A5A001818180000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FF313100FF313100FF313100FF31310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CECECE00CECE
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE00DEDEDE0000CEFF0000CE
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CEFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000039393900ADADAD00ADAD
      AD00ADADAD004A4A4A004A4A4A00000000009CFFFF00000000000000B5000000
      CE000000B5006363FF0000008400000000000000000000000000000000000000
      00000000000000000000DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00CECE
      CE00000000005A5A5A005A5A5A001818180000000000FFFFFF00FFFFFF000000
      B50000009C000000B500FF313100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CECE
      CE00CECECE00FFFFFF00CECECE00CECECE0000CEFF0000CEFF0000CEFF0000CE
      FF0000CEFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029292900ADADAD00DEDEDE00DEDE
      DE00BDBDBD008C8C8C00393939000000000000000000000000000000CE000000
      B500FFFFFF006363FF009C9CFF00000000000000000000000000000000000000
      0000000000000000000000000000DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00000000005A5A5A005A5A5A0029292900000000000000B5000000
      9C000000B5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CECECE00DEDEDE0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF0000CE
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEDEDE00FFFFFF00FFFF
      FF00CECECE00ADADAD005A5A5A000000000000000000000000000000B5000000
      CE006363FF009C9CFF009C9CFF00000000000000000000000000000000000000
      000000000000000000000000000000000000DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00000000005A5A5A005A5A5A0018181800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000CEFF0000CEFF0000CEFF0000CEFF0000CEFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000018181800DEDEDE00FFFFFF00FFFF
      FF00DEDEDE00ADADAD004A4A4A00000000000000000000000000000000000000
      B5006363FF009C9CFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEDEDE00DEDEDE00DEDE
      DE00EFEFEF000000000000000000000000005A5A5A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000CEFF0000CEFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018181800DEDEDE00CECE
      CE008C8C8C003939390000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEDEDE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1800000000004A4A4A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000001800000000006B6B6B007B7B7B007B7B7B006B6B6B007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005A5A
      5A005A5A5A005A5A5A004A4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B006B6B
      6B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000001800FF63
      3100FF9C6300E7000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B006B6B6B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CEFFCE00636331000000
      00005A5A5A005A5A5A005A5A5A004A4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000CEFF00009CFF00000000007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      00000000000000000000000000007B7B7B007B7B7B007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000001800FF633100FF633100FF63
      3100FF9C6300E7000000E7000000180000006B6B6B007B7B7B006B6B6B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000018009CCE63009CCE6300CEFFCE00636331006363
      3100000000005A5A5A005A5A5A005A5A5A004A4A4A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000CEFF0000CEFF0000CEFF00009CFF00009CFF000000
      00006B6B6B007B7B7B005A5A5A0000000000BDBDBD00FFFFFF00CE9C9C00CE9C
      9C00CE9C9C00CE9C9C009C636300000000005A5A5A007B7B7B006B6B6B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008C8C
      8C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF633100FF633100FF633100FF9C
      6300E7000000E7000000FF000000E7000000000000007B7B7B007B7B7B006B6B
      6B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000018009CCE63009CCE63009CCE63009CCE6300CEFFCE00636331006363
      310063633100000000005A5A5A005A5A5A005A5A5A004A4A4A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000CEFF0000CEFF0000CEFF0000CEFF0000CEFF00009CFF00009CFF00009C
      FF000000000000000000BDBDBD00FFFFFF00FFFFFF00FFFFFF00CE9C9C00CE9C
      9C00CE9C9C00CE9C9C009C6363009C6363005A5A5A00000000007B7B7B006B6B
      6B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8C8C008C8C8C000000
      00008C8C8C008C8C8C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000001800FF633100FF633100FF633100FF9C
      6300E7000000E7000000FF000000E7000000E7000000180000006B6B6B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000018009CCE
      63009CCE63009CCE630063CE63009CCE63009CCE6300CEFFCE00636331006363
      31006363310063633100000000005A5A5A005A5A5A005A5A5A004A4A4A000000
      000000000000000000000000000000000000000000000000000000CEFF0000CE
      FF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF00009CFF00009CFF00009C
      FF0000000000CE9C9C00FFFFFF00BDBDBD000000000000000000000000000000
      00000000000000000000000000009C6363009C6363009C636300000000007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008C8C8C008C8C8C0000000000000000006363
      FF00000000008C8C8C008C8C8C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF633100FF633100FF633100FF9C
      6300E7000000E7000000E7000000E7000000E7000000FF000000000000006B6B
      6B007B7B7B006B6B6B007B7B7B007B7B7B000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009CCE63009CCE
      63009CCE63009CCE63009CCE63009CCE63009CCE6300CEFFCE00636331006363
      3100636331006363310063633100000000005A5A5A005A5A5A005A5A5A004A4A
      4A00000000000000000000000000000000000000000000CEFF0000CEFF0000CE
      FF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF00009CFF00009CFF000000
      0000CE9C9C00CE9C9C00000000005A5A5A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF004A4A4A00000000009C6363009C6363000000
      00007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008C8C8C008C8C8C0000000000000000006363FF006363FF006363
      FF006363FF00000000008C8C8C008C8C8C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B6B6B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B0000000000FF633100FF633100FF9C6300E700
      0000E7000000FF000000E7000000E7000000FF000000E7000000000000007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009CCE63009CCE
      63009CCE63009CCE63009CCE63009CCE63009CCE6300CEFFCE00636331006363
      3100636331006363310063630000000000005A5A5A004A4A4A005A5A5A004A4A
      4A005A5A5A000000000000000000000000000000000000CEFF0000CEFF0000CE
      FF0000CEFF0000CEFF0000CEFF0000CEFF0000CEFF00009CFF00009CFF000000
      0000CE9C9C0000000000FFFFFF00BDBDBD005A5A5A0000000000000000000000
      000000000000000000004A4A4A00CECECE00FFFFFF00000000009C6363000000
      00006B6B6B006B6B6B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008C8C
      8C008C8C8C0000000000000000006363FF006363FF006363FF006363FF006363
      FF006363FF006363FF00000000008C8C8C008C8C8C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000001800000000000000000000E7000000000000007B7B7B007B7B7B006B6B
      6B007B7B7B007B7B7B0000000000FF633100FF633100FF633100FF9C6300E700
      0000E7000000FF000000E7000000E7000000FF000000E7000000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009CCE63009CCE
      630063CE63009CCE63009CCE63009CCE63009CCE6300CEFFCE00636331006363
      31007B7B7B00636300007B7B7B0063633100000000005A5A5A005A5A5A005A5A
      5A004A4A4A005A5A5A0000000000000000000000000000CEFF0000CEFF0000CE
      FF0000CEFF0000CEFF0000CEFF0000CEFF000000000000000000009CFF000000
      00005A5A5A00FFFFFF00000000004A4A4A00CE9C9C00FFFFFF00CE9C9C00CE9C
      9C00CE9C9C00CE9C9C00CE9C9C004A4A4A0000000000FFFFFF00000000000000
      00007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8C8C008C8C8C000000
      0000000000006363FF006363FF006363FF006363FF006363FF006363FF006363
      FF006363FF006363FF006363FF00000000008C8C8C008C8C8C00000000000000
      000000000000000000000000000000000000000000000000000000000000FF63
      3100FF633100FF63310000000000E7000000E7000000180000006B6B6B007B7B
      7B007B7B7B007B7B7B0000180000FF633100FF633100FF633100FF9C6300E700
      0000E7000000FF000000E7000000E7000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CCE63009CCE63009CCE
      63009CCE63009CCE9C009CCE63009CCE63009CCE6300DEDEDE00636331006363
      310063633100636331006363310063633100000000004A4A4A005A5A5A005A5A
      5A004A4A4A005A5A5A0000000000000000000000000000CEFF0000CEFF0000CE
      FF0000CEFF0000CEFF0000000000180000006363CE000000B500000000000000
      0000FFFFFF000000000000000000CE9C9C00CE9C9C00CE9C9C00FFFFFF00CE9C
      9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CECECE0000000000FFFFFF000000
      00006B6B6B007B7B7B0000000000000000000000000000000000000000000000
      00000000000000000000000000008C8C8C008C8C8C0000000000000000009C9C
      FF006363FF009C9CFF009C9CFF009C9CFF009C9CFF009C9CFF009C9CFF009C9C
      FF009C9CFF009C9CFF009C9CFF009C9CFF00000000008C8C8C007B7B7B000000
      0000000000000000000000000000000000000000000000000000FF633100FF63
      3100FF633100FF63310018181800E7000000E7000000FF000000000000007B7B
      7B007B7B7B000000000000000000FF633100FF633100FF633100FF9C6300E700
      0000E7000000FF000000E7000000E7000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CCE63009CCE63009CCE
      63009CCE63009CCE63009CCE63009CCE63009CCE6300CEFFCE00636331006363
      310063633100636331006363000063633100000018005A5A5A005A5A5A004A4A
      4A00000000000000000000000000000000000000000000CEFF0000CEFF0000CE
      FF0000000000000000006363CE006363CE006363CE000000B50000009C000000
      0000FFFFFF00000000009C636300000000005A5A5A00CE9C9C00CE9C9C00FFFF
      FF00CE9C9C00CE9C9C005A5A5A00000000000000000000000000FFFFFF000000
      00006B6B6B000000000000000000000000000000000000000000000000000000
      0000000000008C8C8C008C8C8C0000000000000000009C9CFF009C9CFF009C9C
      FF009C9CFF009C9CFF009C9CFF009C9CFF009C9CFF009C9CFF004A4A4A009C9C
      FF009C9CFF009C9CFF009C9CFF009C9CFF009C9CFF00000000008C8C8C008C8C
      8C0000000000000000000000000000000000000000000000000000000000FF63
      3100FF633100FF633100FF63310000000000E7000000E7000000FF0000000000
      000018181800FF633100FF633100FF636300FF633100FF9C6300E7000000E700
      0000FF000000E7000000E7000000FF000000E700000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000018009CCE63009CCE63009CCE
      63009CCE63009CCE63009CCE63009CCE63009CCE63009CCE6300636331006363
      310063633100636331007B7B7B00636300006363310018000000000000000000
      0000000000000000000000000000000000000000000000CEFF00000000000000
      00006363CE006363CE006363CE006363CE006363CE000000B50000009C000000
      0000FFFFFF00000000009C6363009C6363009C63630000000000000000000000
      000000000000000000009C6363009C6363009C63630000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000008C8C
      8C008C8C8C0000000000000000009C9CFF009C9CFF009C9CFF009C9CFF009C9C
      FF009C9CFF009C9CFF009C9CFF009C9CFF004A4A4A009C9CFF009C9CFF00CECE
      FF009C9CFF009C9CFF009C9CFF009C9CFF009C9CFF009C9CFF00000000008C8C
      8C007B7B7B00000000000000000000000000000000000000000000000000FF63
      3100FF633100FF633100FF63310000180000E70000000000000000001800FF63
      3100FF633100FF633100FF633100FF633100FF633100FF9C6300E7000000E700
      0000E7000000E7000000E7000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009CCE63009CCE63009CCE63009CCE
      63009CCE63009CCE63009CCE630063633100636331009CCE6300636331006363
      31006363310063633100636331007B7B7B006363000000001800000000000000
      00000000000000000000000000000000000000000000000000006363CE006363
      CE006363CE006363CE006363CE006363CE0000000000000000000000B5000000
      B50000000000FFFFFF0000000000000000009C6363009C6363009C6363009C63
      63009C6363009C6363009C6363000000000000000000FFFFFF00000000007B7B
      7B007B7B7B0000000000000000000000000000000000000000008C8C8C000000
      000000000000CECEFF00CECEFF00CECEFF00CECEFF00CECEFF00CECEFF00CECE
      FF00CECEFF00CECEFF004A4A4A00CECEFF00CECEFF00CECEFF00CECEFF00CECE
      FF004A4A4A00CECEFF00CECEFF00CECEFF00CECEFF00CECEFF00CECEFF000000
      00008C8C8C008C8C8C0000000000000000000000000000000000000000000000
      0000FF633100FF633100FF6331000000000018181800FF633100FF633100FF63
      3100FF633100FF633100FF633100FF633100FF633100FF9C6300E7000000E700
      0000FF000000E7000000E7000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009CCE63009CCE63009CCE63009CCE
      63009CCE63006363310063633100636331000000000000000000000000006363
      3100636331006363310063633100636331006363310000000000000000000000
      000000000000000000000000000000000000000000006363CE006363CE006363
      CE006363CE006363CE000000000000000000FF9C9C0063313100000000000000
      B5000000B50000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF0000000000000000006B6B
      6B007B7B7B00000000000000000000000000000000000000000000000000CECE
      FF00CECEFF00CECEFF00CECEFF00CECEFF00CECEFF00CECEFF00CECEFF00CECE
      FF004A4A4A00CECEFF00CECEFF00CECEFF00CECEFF00CECEFF005A5A5A00CECE
      FF00CECEFF00CECEFF00CECEFF00CECEFF00CECEFF00CECEFF00CECEFF00CECE
      FF00000000008C8C8C008C8C8C00000000000000000000000000000000000000
      0000FF633100FF633100FF633100FF633100FF633100FF633100FF633100FF63
      3100FF63310000000000FF633100FF633100FF633100FF9C6300E7000000E700
      0000FF000000E7000000E7000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009CCE63009CCE63009CCE63006363
      3100636331006363310063633100000000001818180029292900292929000000
      0000636331006363310063633100636331006363310063633100000000000000
      000000000000000000000000000000000000000000006363CE006363CE006363
      CE000018000000000000FF9C9C00FF9C9C00FF9C9C0063313100633131001800
      00000000B5000000B5000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000CE9C9C00000000007B7B
      7B006B6B6B007B7B7B000000000000000000000000000000000000000000FFFF
      FF00CECEFF00CECEFF00CECEFF00CECEFF00CECEFF00CECEFF004A4A4A00CECE
      FF00CECEFF00CECEFF00CECEFF00CECEFF005A5A5A00CECEFF00CECEFF004A4A
      4A0000000000000000005A5A5A00CECEFF00CECEFF00CECEFF00CECEFF00CECE
      FF00CECEFF00000000008C8C8C008C8C8C000000000000000000000000000000
      0000FF633100FF633100FF633100FF633100FF633100FF633100FF6331000000
      00000000000000000000FF633100FF633100FF9C6300E7000000E7000000FF00
      0000E7000000E7000000FF000000E70000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009CCE63009CCE630063633100636331000000
      0000000000000000000000000000181818007B7B7B007B7B7B007B7B7B001818
      1800000000000000000063633100636331006363310063633100000000000000
      000000000000000000000000000000000000000000006363CE00000000000000
      0000FF636300FF9C9C00FF9C9C00FF9C9C00FF9C9C0063313100633131006331
      3100000000000000B5000000B500000000000000000000000000000000000000
      0000000000000000000000000000CE9C9C00FFFFFF00CE9C9C00CE9C9C000000
      00007B7B7B007B7B7B006B6B6B00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00CECEFF00FFFFFF004A4A4A00FFFFFF00CECEFF00CECE
      FF00CECEFF00FFFFFF004A4A4A00FFFFFF00CECEFF005A5A5A00000000000000
      00008C8C8C005A5A5A00000000005A5A5A00CECEFF00FFFFFF00CECEFF00FFFF
      FF00CECEFF00CECEFF0000000000000000000000000000000000000000000000
      000000000000FF633100FF633100FF633100FF6331000018000000000000FF9C
      6300FF9C630000000000FF633100FF633100FF9C6300E7000000E7000000FF00
      0000E7000000E7000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000636331006363310063633100000000001818
      18002929290018181800292929006B6B6B007B7B7B00BDBDBD00BDBDBD007B7B
      7B00181818002929290000000000636331006363310063633100000000000000
      0000000000000000000000000000000000000000000000000000FF9C9C00FF9C
      9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C0063313100633131006331
      310063313100310000000000B500000000000000000000000000000000000000
      000000000000000000000000000000000000CE9C9C00FFFFFF004A4A4A000000
      0000000000007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00CECEFF00FFFFFF00CECEFF00FFFFFF00CECE
      FF004A4A4A00CECEFF00FFFFFF004A4A4A0000000000000000008C8C8C008C8C
      8C008C8C8C005A5A5A004A4A4A00000000005A5A5A00CECEFF00FFFFFF00CECE
      FF00FFFFFF00CECEFF00CECEFF00000000000000000000000000000000000000
      000000000000FF633100FF633100FF633100FF63310000000000E7000000E700
      0000FF9C630000001800FF633100FF633100FF9C6300E7000000E7000000FF00
      0000E7000000E7000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000636331006363310000000000000000002929
      2900181818007B7B7B006B6B6B00BDBDBD00CECECE000000000000000000BDBD
      BD007B7B7B001818180000000000636331006363310063633100000000000000
      00000000000000000000000000000000000000000000FF9C9C00FF9C9C00FF9C
      9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C0063313100633131006331
      3100633131004A4A4A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005A5A5A0000000000000000000000
      000000000000000000007B7B7B007B7B7B000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00CECEFF00FFFFFF004A4A4A00FFFF
      FF00CECEFF00CECEFF00CECEFF00000000008C8C8C008C8C8C008C8C8C007B7B
      7B00BDBDBD00BDBDBD004A4A4A005A5A5A00000000005A5A5A00CECEFF00FFFF
      FF00CECEFF000000000000000000000000000000000000000000000000000000
      00000000000000000000FF633100FF633100FF633100FF63310000180000E700
      000000000000FF633100FF633100FF633100FF9C6300E7000000E7000000E700
      0000E7000000E7000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063633100000000000000000018181800181818007B7B
      7B007B7B7B00BDBDBD00CECECE000000000000000000639C9C00639C9C000000
      0000BDBDBD007B7B7B0018181800000000000000000063633100636331000000
      00000000000000000000000000000000000000000000FF9C9C00FF9C9C00FF9C
      9C00FF9C9C00FF9C9C00FF636300FF9C9C00FF9C9C0063313100633131006331
      3100633131006331310063313100181818000000000000000000000000000000
      000000000000000000000000000000000000000000004A4A4A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00CECEFF00FFFFFF00CECE
      FF00FFFFFF00CECEFF004A4A4A00000000008C8C8C007B7B7B00BDBDBD00BDBD
      BD005A5A5A00BDBDBD00BDBDBD004A4A4A005A5A5A00000000005A5A5A000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF633100FF633100FF633100FF63310000001800E700
      000000000000FF633100FF633100FF9C6300E7000000E7000000FF000000E700
      0000E7000000FF000000E7000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000029292900000000007B7B7B007B7B7B00BDBD
      BD00BDBDBD003163630000000000003131000031310031636300316363000000
      000000000000CECECE006B6B6B00292929001818180000000000636331000000
      00000000000000000000000000000000000000000000FF9C9C00FF9C9C00FF9C
      9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C0063313100633131006331
      310063313100633131009C313100000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005A5A5A000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004A4A4A00FFFFFF00FFFFFF0000000000BDBDBD00BDBDBD00BDBDBD005A5A
      5A00BDBDBD004A4A4A00BDBDBD00BDBDBD005A5A5A005A5A5A00000000005A5A
      5A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF633100FF633100FF633100FF6331000000
      000000000000FF633100FF633100FF9C6300E7000000E7000000FF000000E700
      0000E7000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000018181800292929000000000000FFFF0000000000000000007B7B
      7B007B7B7B000000000000000000000000000031310000313100316363000000
      0000639C9C0000000000CECECE006B6B6B002929290000000000636331000000
      00000000000000000000000000000000000000000000FF9C9C00FF9C9C00FF63
      6300FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C0063313100633131006331
      310063313100633131004A4A4A00310000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005A5A
      5A0000000000000000005A5A5A00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00CECE
      FF00FFFFFF00CECEFF00FFFFFF00CECEFF0000000000BDBDBD005A5A5A00ADAD
      AD005A5A5A00BDBDBD004A4A4A00BDBDBD00BDBDBD004A4A4A005A5A5A000000
      00005A5A5A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF633100FF633100FF633100FF6331000000
      000000001800FF633100FF633100FF9C6300E7000000E7000000FF000000E700
      0000E7000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B000000000000FFFF0000FFFF0000FFFF0000FFFF000000
      000000000000000000006363CE000000B5000000000000313100000000003163
      6300639C9C00CEFFFF0000000000BDBDBD007B7B7B0018181800000000000000
      00000000000000000000000000000000000000000000FF9C9C00FF9C9C00FF9C
      9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C0063313100633131009C31
      3100633131006331310063313100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF004A4A4A00FFFFFF00FFFFFF0000000000BDBDBD005A5A
      5A00BDBDBD005A5A5A00BDBDBD005A5A5A00ADADAD00BDBDBD005A5A5A005A5A
      5A00000000004A4A4A0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF633100FF633100FF633100FF63
      3100FF633100FF633100FF633100FF9C6300E7000000E7000000FF000000E700
      0000E7000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009CFFFF0063FFFF0063FFFF0063FFFF0063FFFF000000
      00006363CE006363CE006363CE000000B5000000840000000000000000003163
      630031636300CEFFFF009CFFFF0000000000BDBDBD007B7B7B00181818002929
      29000000000000000000000000000000000000000000FF9C9C00FF9C9C00FF9C
      9C00FF9C9C00FF9C9C00FF9C9C00EFEFEF00FFFFFF0063313100633131006331
      3100633131006331310063313100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00CECEFF00FFFFFF00CECEFF00FFFFFF00CECEFF0000000000BDBD
      BD005A5A5A00ADADAD005A5A5A00BDBDBD005A5A5A00BDBDBD00ADADAD005A5A
      5A005A5A5A00000000005A5A5A00000000000000000000000000000000000000
      000000000000000000000000000000000000FF633100FF633100FF633100FF63
      3100FF633100FF633100FF9C6300E7000000E7000000FF000000E7000000E700
      0000FF000000E700000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009CFFFF009CFFFF009CFFFF003163630031636300000000006363
      CE006363CE006363CE006363CE000000B50000009C000000B50000000000639C
      9C00639C9C00316363009CFFFF0063FFFF000000000000000000000000001818
      18000000000000000000000000000000000000000000FF9C9C00FF9C9C00FF9C
      9C00FF9C9C00FFFFFF00FFFFFF00FFCECE00FFCECE00FFCECE00633131004A4A
      4A00633131006331310063313100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECEFF0000000000000000000000
      0000BDBDBD005A5A5A00BDBDBD004A4A4A00BDBDBD005A5A5A00BDBDBD00ADAD
      AD005A5A5A005A5A5A0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF633100FF633100FF633100FF63
      3100FF633100FFCE9C00FFCE9C00E7000000E7000000FF000000E7000000E700
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CEFFFF00CEFFFF00CEFFFF0031636300639C9C0031636300000000006363
      CE006363CE006363CE006363CE000000B500000084000000B500000000003163
      6300639C9C00639C9C003163630063FFFF0000FFFF0000000000BDBDBD007B7B
      7B001818180000000000000000000000000000000000FF9C9C00FF9C9C00FFFF
      FF00EFEFEF00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE006B00
      0000633131006331310063313100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000BDBDBD005A5A5A00BDBDBD005A5A5A00ADADAD005A5A5A00BDBD
      BD00BDBDBD000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF633100FF633100FFCE
      9C00FFCE9C00FF9C6300FF9C6300FFCE9C00E7000000E7000000FF000000E700
      0000E70000003100000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CEFF
      FF00CEFFFF00CEFFFF009CCECE009CCECE009CCECE0031636300000000006363
      CE006363CE006363CE00FFFFFF000000B50000009C000000B500000000003163
      630031636300316363003163630063FFFF0000FFFF0000FFFF0000000000BDBD
      BD007B7B7B0000000000000000000000000000000000FFFFFF00EFEFEF00FFCE
      CE00FFCECE00FFCECE00FFCECE00FF9C9C00FFCECE00FFCECE00FFCECE00FFCE
      CE00633131006331310063313100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBD005A5A5A00ADADAD00BDBDBD00CECECE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFCE9C00FFCE9C00FF9C
      6300FF9C6300FF636300FF9C6300FF9C6300FFCE9C00E7000000E7000000FF00
      0000E70000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CEFFFF00CEFFFF00CEFFFF009CCECE009CCECE00000000006363
      CE00FFFFFF00FFFFFF009C9CCE00FFFFFF000000B50000009C0000000000639C
      9C00639C9C00316363009CFFFF0063FFFF0000FFFF00000000007B7B7B007B7B
      7B000000000000000000000000000000000000000000FFCECE00FFCECE00FFCE
      CE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE006331310063313100180000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD00BDBDBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF9C6300FF9C
      6300FF9C6300FF9C6300FF9C6300FF9C6300FF9C6300FFCE9C00E7000000E700
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CEFFFF00CEFFFF003163630000000000FFFF
      FF009C9CCE009C9CCE009C9CCE009C9CCE00FFFFFF000000B500000000003163
      630031636300316363009CFFFF0063FFFF00000000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000FFCECE00FFCE
      CE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00DEDEDE0063313100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF9C
      6300FF9C6300FF9C6300FF9C6300FF9C6300FF9C6300FF9C6300FFCE9C00E700
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C9CCE009C9CCE009C9CCE009C9CCE000000000000000000CEFFFF00CEFF
      FF0031636300CEFFFF009CFFFF009CFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFCE
      CE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF9C6300FF9C6300FF9C6300FF9C6300FF9C6300FF9C6300FF9C6300FFCE
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9CCE0000000000000000007B7B7B008C8C8C0000000000CEFF
      FF00CEFFFF00CEFFFF009CFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FFCECE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF9C6300FF9C6300FF9C6300FF9C6300FF9C6300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004A4A4A007B7B7B008C8C8C008C8C8C000000
      0000CEFFFF009CFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFCECE00FFCECE00FFCECE00FFCECE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF9C6300FF9C63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000018181800393939007B7B7B008C8C8C00000000000000
      000000000000CEFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFCECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000316363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005A5A5A004A4A
      4A005A5A5A005A5A5A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF393939FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003939390000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003163
      6300000000003163630031636300000000000000000000000000316363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CEFFCE0063633100000000005A5A
      5A004A4A4A005A5A5A004A4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF63639CFF63CEFFFF000000FF393939FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063639C0063CEFF000000000039393900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000316363000000
      000063FFFF000000000000000000316363003163630031636300316363003163
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009CCE63009CCE6300CEFFCE0063633100636331000000
      00005A5A5A005A5A5A005A5A5A004A4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      00FF8C8C8CFF63CEFFFFCECECEFF319CCEFF000000FF181818FF6B6B6BFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C8C8C0063CEFF00CECECE00319CCE0000000000181818006B6B6B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000316363000000000063FF
      FF0063FFFF0063FFFF0063FFFF00000000000000000031636300000000003163
      6300316363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009CCE63009CCE63009CCE9C009CCE6300CEFFCE005A5A5A00636331006363
      3100000000005A5A5A005A5A5A005A5A5A004A4A4A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF319CCEFFCECE
      CEFF63CEFFFFCECEFFFF63CEFFFFADADADFF000000FF000000FF6B6B6BFF8C8C
      8CFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000319CCE00CECE
      CE0063CEFF00CECEFF0063CEFF00ADADAD0000000000000000006B6B6B008C8C
      8C00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000316363000000000063FFFF0063FF
      FF009CCECE009CCECE00639C9C00639C9C00000000000000000000FFFF000000
      0000316363003163630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000018009CCE63009CCE
      63009CCE63009CCE63009CCE63009CCE6300CEFFCE0063633100636331006363
      000063633100000000004A4A4A005A5A5A005A5A5A004A4A4A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF319CCEFFCECECEFF63CEFFFFCECE
      CEFFCECEFFFF31CEFFFFCECECEFF319C63FF4A4A4AFF000000FF6B6B6BFF5A5A
      5AFF8C8C8CFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000319CCE00CECECE0063CEFF00CECE
      CE00CECEFF0031CEFF00CECECE00319C63004A4A4A00000000006B6B6B005A5A
      5A008C8C8C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000316363000000000063FFFF009CCECE009CCE
      CE00639C9C00639C9C00000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF00000000003163630031636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CCE63009CCE63009CCE
      63009CCE63009CCE63009CCE63009CCE6300CEFFCE0063633100636331007B7B
      7B006363310063633100000000005A5A5A005A5A5A005A5A5A004A4A4A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF319CCEFFCECECEFF63CEFFFFCECEFFFF63CEFFFFCECE
      CEFF639CFFFFCECECEFF31CEFFFF63639CFF7B7B7BFF000000FF292929FF6B6B
      6BFF6B6B6BFF8C8C8CFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000319CCE00CECECE0063CEFF00CECEFF0063CEFF00CECE
      CE00639CFF00CECECE0031CEFF0063639C007B7B7B0000000000292929006B6B
      6B006B6B6B008C8C8C0000000000000000000000000000000000000000000000
      0000000000000000000031636300000000009CCECE009CCECE00639C9C00639C
      9C00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000316363003163630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CCE63009CCE63009CCE
      63009CCE63009CCE63009CCE63009CCE6300CEFFCE0063633100636331006363
      31006363310063630000000000004A4A4A005A5A5A005A5A5A004A4A4A005A5A
      5A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      00FF319CCEFFCECEFFFF63CEFFFFCECECEFF63CEFFFFCECEFFFF63CEFFFFCECE
      FFFF63CEFFFFCECECEFF63CEFFFF6B6B6BFF9C9C9CFF000000FF292929FF6B6B
      6BFF6B6B6BFF6B6B6BFF7B7B7BFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000319CCE00CECEFF0063CEFF00CECECE0063CEFF00CECEFF0063CEFF00CECE
      FF0063CEFF00CECECE0063CEFF006B6B6B009C9C9C0000000000292929006B6B
      6B006B6B6B006B6B6B007B7B7B00000000000000000000000000000000000000
      00000000000031636300000000009CCECE00639C9C00639C9C00000000000000
      000031FFFF0031FFFF0031FFFF0031FFFF0031FFFF0031FFFF0031FFFF0031FF
      FF0031FFFF0031FFFF0000000000000000000000000031636300316363000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CCE63009CCE63007B7B
      7B009CCE63009CCE63009CCE63009CCE6300CEFFCE0063633100636331006363
      3100636331007B7B7B0063633100000000005A5A5A005A5A5A005A5A5A004A4A
      4A005A5A5A000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF319CCEFFCECE
      FFFF63CEFFFFCECECEFF63CEFFFFCECEFFFF639CFFFFCECEFFFF31CEFFFFCECE
      CEFF63CEFFFFCECEFFFF63CEFFFF6B6B6BFFCECECEFF000000FF180000FF6B6B
      6BFF6B6B6BFF7B7B7BFF7B7B7BFF8C8C8CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000319CCE00CECE
      FF0063CEFF00CECECE0063CEFF00CECEFF00639CFF00CECEFF0031CEFF00CECE
      CE0063CEFF00CECEFF0063CEFF006B6B6B00CECECE0000000000180000006B6B
      6B006B6B6B007B7B7B007B7B7B008C8C8C000000000000000000000000000000
      00003163630000000000639C9C00639C9C00000000000000000063FFFF0063FF
      FF0063FFFF0063FFFF0063FFFF0063FFFF0063FFFF0063FFFF0063FFFF0063FF
      FF0063FFFF0063FFFF0063FFFF00000000009CCECE0000000000000000003163
      6300316363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009CCE63009CCE63009CCE63009CCE
      63009CCE9C009CCE63009CCE63009CCE6300CEFFCE0063633100636331006363
      3100636300006363310063633100000000004A4A4A005A5A5A005A5A5A004A4A
      4A005A5A5A000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF319CCEFFCECEFFFF63CEFFFFBDBD
      BDFF63CEFFFFCECEFFFF63CEFFFFCECEFFFF63CEFFFFCECECEFF63CEFFFFCECE
      CEFF63CEFFFFCECEFFFF31CEFFFF8C8C8CFF00FFFFFF181818FF000000FF5A5A
      5AFF7B7B7BFF8C8C8CFF8C8C8CFF000000000000000000000000000000000000
      000000000000000000000000000000000000319CCE00CECEFF0063CEFF00BDBD
      BD0063CEFF00CECEFF0063CEFF00CECEFF0063CEFF00CECECE0063CEFF00CECE
      CE0063CEFF00CECEFF0031CEFF008C8C8C0000FFFF0018181800000000005A5A
      5A007B7B7B008C8C8C008C8C8C00000000000000000000000000000000003163
      630000000000639C9C0000000000000000009CFFFF009CFFFF009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF00316363009CFFFF009CFF
      FF009CFFFF009CFFFF009CFFFF009CFFFF00000000009CCECE009CCECE003100
      0000000000003163630031636300000000000000000000000000000000000000
      0000000000000000000000000000000000009CCE63009CCE63009CCE63009CCE
      63009CCE63009CCE63009CCE63009CCE6300CEFFCE00636331007B7B7B006363
      00007B7B7B006363000063633100000018005A5A5A005A5A5A004A4A4A000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF63CEFFFFCECECEFF63CEFFFFCECECEFF639CFFFFCECE
      FFFF63CEFFFFCECEFFFF63CEFFFFCECECEFF63CEFFFFCECEFFFF63CEFFFFCECE
      FFFF63CEFFFFCECECEFF319CCEFF9C9C9CFF00FFFFFF181818FF000000FF6B6B
      6BFF9C9C9CFF0000000000000000000000000000000000000000000000000000
      0000000000000000000063CEFF00CECECE0063CEFF00CECECE00639CFF00CECE
      FF0063CEFF00CECEFF0063CEFF00CECECE0063CEFF00CECEFF0063CEFF00CECE
      FF0063CEFF00CECECE00319CCE009C9C9C0000FFFF0018181800000000006B6B
      6B009C9C9C000000000000000000000000000000000000000000316363000000
      000000000000000000009CFFFF009CFFFF0063FFFF009CFFFF009CFFFF009CFF
      FF00000000000000000031636300000000003163630031636300000000003163
      6300316363003163630031636300316363003163630000000000316363003163
      6300316363000000000000000000316363000000000000000000000000000000
      0000000000000000000000000000000018009CCE63009CCE63009CCE63009CCE
      63009CCE63009CCE63009CCE63009CCE63009CCE630063633100636331006363
      3100636331006363310063633100636300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF63CEFFFFCECEFFFF63CEFFFFCECECEFF63CEFFFFCECE
      FFFF63CEFFFFDEDEDEFF63CEFFFFCECEFFFF63CEFFFFCECEFFFF63CEFFFFCECE
      CEFF63CEFFFFDEDEDEFF319C9CFFCECECEFF00FFFFFF5A5A5AFF000000FF6B6B
      6BFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063CEFF00CECEFF0063CEFF00CECECE0063CEFF00CECE
      FF0063CEFF00DEDEDE0063CEFF00CECEFF0063CEFF00CECEFF0063CEFF00CECE
      CE0063CEFF00DEDEDE00319C9C00CECECE0000FFFF005A5A5A00000000006B6B
      6B00000000000000000000000000000000000000000031636300000000000000
      0000CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF005A5A5A000000000000000000316363000000000031636300316363000000
      0000316363003163630031636300316363003163630031636300000000003163
      6300316363000000000031636300316363000000000000000000000000000000
      00000000000000000000000000009CCE63009CCE63009CCE63009CCE63009CCE
      63009CCE63009CCE630063633100636331009CCE630063633100636331006363
      3100636331007B7B7B00636300007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF63CEFFFFCECEFFFF63CEFFFFCECECEFF31CEFFFFCECE
      FFFF63CEFFFFCE9CFFFF63CEFFFFCECECEFF63CEFFFFCECEFFFF63CEFFFFCECE
      CEFF63CEFFFFDEDEDEFF6B6B6BFFEFEFEFFF00FFFFFF4A4A4AFF316363FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063CEFF00CECEFF0063CEFF00CECECE0031CEFF00CECE
      FF0063CEFF00CE9CFF0063CEFF00CECECE0063CEFF00CECEFF0063CEFF00CECE
      CE0063CEFF00DEDEDE006B6B6B00EFEFEF0000FFFF004A4A4A00316363000000
      0000000000000000000000000000000000000000000000000000CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF003163
      6300CEFFFF004A4A4A004A4A4A000000000000000000316363009CCECE009CCE
      CE0031636300639C9C00639C9C00639C9C00639C9C00639C9C00639C9C000000
      0000000000003163630031636300316363000000000000000000000000000000
      00000000000000000000000000009CCE63009CCE63009CCE63009CCE63009CCE
      6300636331006363310063633100000000000000000000000000636331006363
      3100636331006363310063633100636331000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FFCECECEFF63CEFFFFCE9CFFFF63CEFFFFCECECEFF63CEFFFFCECE
      FFFF63CEFFFF63CEFFFFCECEFFFF63CEFFFFCECECEFF63CEFFFFCECEFFFF63CE
      FFFFCECEFFFF63CEFFFF6B6B6BFF00FFFFFF00FFFFFF8C8C8CFF316363FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      000000000000CECECE0063CEFF00CE9CFF0063CEFF00CECECE0063CEFF00CECE
      FF0063CEFF0063CEFF00CECEFF0063CEFF00CECECE0063CEFF00CECEFF0063CE
      FF00CECEFF0063CEFF006B6B6B0000FFFF0000FFFF008C8C8C00316363000000
      0000000000000000000000000000000000000000000000000000FFFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF0031636300CEFFFF00FFFF
      FF00316363005A5A5A004A4A4A00639CFF00639CFF000000000000000000CEFF
      FF00CEFFFF0031636300CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
      FF00000000003163630031636300000000000000000000000000000000000000
      00000000000000000000000000009CCE63009CCE63009CCE6300636331006363
      3100636331006363310000000000181818001818180029292900000000006363
      3100636331006363310063633100636331006363310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF63CEFFFFCECEFFFF63CEFFFFCECEFFFF63CEFFFF63CEFFFF63CE
      FFFFCECEFFFF63CEFFFFCECECEFF63CEFFFFCECEFFFF63CEFFFFCECEFFFF639C
      FFFFCECECEFF63CEFFFF7B7B7BFF63FFFFFF63FFFFFF7B7B7BFF003163FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      00000000000063CEFF00CECEFF0063CEFF00CECEFF0063CEFF0063CEFF0063CE
      FF00CECEFF0063CEFF00CECECE0063CEFF00CECEFF0063CEFF00CECEFF00639C
      FF00CECECE0063CEFF007B7B7B0063FFFF0063FFFF007B7B7B00003163000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF0031636300CEFF
      FF00FFFFFF004A4A4A00FFFFFF009C9CFF00639CFF00639CFF00639CFF000000
      0000FFFFFF00CEFFFF009CCECE00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFF
      FF00CEFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000009CCE63009CCE63006363310063633100000000000000
      00000000000000000000181818007B7B7B007B7B7B007B7B7B00181818000000
      0000000000006363310063633100636331006363310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF63CEFFFFCECEFFFF63CEFFFFCECECEFF63CEFFFFCECECEFF63CE
      FFFFCECEFFFF63CEFFFFCECECEFF63CEFFFFCECEFFFF63CEFFFFCECECEFF63CE
      FFFFCECEFFFF63CEFFFF7B7B7BFF63FFFFFF63FFFFFFBDBDBDFF313163FF6B6B
      6BFF000000FF0000000000000000000000000000000000000000000000000000
      00000000000063CEFF00CECEFF0063CEFF00CECECE0063CEFF00CECECE0063CE
      FF00CECEFF0063CEFF00CECECE0063CEFF00CECEFF0063CEFF00CECECE0063CE
      FF00CECEFF0063CEFF007B7B7B0063FFFF0063FFFF00BDBDBD00313163006B6B
      6B00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00639C
      9C00CEFFFF00FFFFFF004A4A4A00FFFFFF005A5A5A0000000000000000000000
      000000000000FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFF
      FF00CEFFFF00CEFFFF0000000000000000000000000000000000000000000000
      0000000000000000000063633100636331006363310000000000292929002929
      290018181800292929006B6B6B007B7B7B00BDBDBD00BDBDBD007B7B7B001818
      1800181818000000000063633100636331006363310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FFCECECEFF63CEFFFFCECEFFFF63CEFFFFCECEFFFF63CEFFFFFFCEFFFF63CE
      FFFFCECEFFFF42E7FFFFCECECEFF639CFFFFCECEFFFF31CEFFFFCECECEFF63CE
      FFFFCECEFFFF63CEFFFF9C6363FF9CFFFFFF9CFFFFFFCECECEFF4A4A4AFF5A5A
      5AFF000000FF0000000000000000000000000000000000000000000000000000
      0000CECECE0063CEFF00CECEFF0063CEFF00CECEFF0063CEFF00FFCEFF0063CE
      FF00CECEFF0042E7FF00CECECE00639CFF00CECEFF0031CEFF00CECECE0063CE
      FF00CECEFF0063CEFF009C6363009CFFFF009CFFFF00CECECE004A4A4A005A5A
      5A00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFF
      FF0031636300CEFFFF005A5A5A00FFFFFF004A4A4A0000FFFF004A4A4A00319C
      FF00319CFF0000000000FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063633100636331000000000000000000181818001818
      18007B7B7B007B7B7B00BDBDBD00BDBDBD008C8C8C006B6B6B00BDBDBD007B7B
      7B00292929000000000063633100636331006363310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FFEFEFEFFF31CEFFFFEFEFEFFF63CEFFFFCECEFFFF63CEFFFFCECEFFFFCECE
      CEFF31CEFFFFCE9CFFFF63CEFFFFCECEFFFF63CEFFFFCECECEFF63CEFFFF63CE
      FFFF63CEFFFFCE9CCEFFBDBDBDFF9CFFFFFF9CFFFFFFCEFFFFFF292929FF6B6B
      6BFF000000FF0000000000000000000000000000000000000000000000000000
      0000EFEFEF0031CEFF00EFEFEF0063CEFF00CECEFF0063CEFF00CECEFF00CECE
      CE0031CEFF00CE9CFF0063CEFF00CECEFF0063CEFF00CECECE0063CEFF0063CE
      FF0063CEFF00CE9CCE00BDBDBD009CFFFF009CFFFF00CEFFFF00292929006B6B
      6B00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF00FFFF
      FF00CEFFFF00316363004A4A4A005A5A5A004A4A4A00FFFFFF0000FFFF003939
      3900319CFF00319CFF0000000000FFFFFF00CEFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000063633100000000000000000029292900181818007B7B7B006B6B
      6B00BDBDBD00BDBDBD004A4A4A007B7B7B008C8C8C007B7B7B007B7B7B00BDBD
      BD006B6B6B001818180000000000000000006363310063633100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FFCECEFFFFEFEFEFFF63CEFFFFCECEFFFF31CEFFFFCECEFFFFBDBDBDFF31FF
      FFFFCECEFFFFCECECEFF63CEFFFFCECEFFFF63CEFFFFCECECEFFCECECEFF63CE
      FFFFCECEFFFF639C9CFFCECECEFF9CFFFFFF9CFFFFFF9CFFFFFF393939FF5A5A
      5AFF639C9CFF310000FF00000000000000000000000000000000000000000000
      0000CECEFF00EFEFEF0063CEFF00CECEFF0031CEFF00CECEFF00BDBDBD0031FF
      FF00CECEFF00CECECE0063CEFF00CECEFF0063CEFF00CECECE00CECECE0063CE
      FF00CECEFF00639C9C00CECECE009CFFFF009CFFFF009CFFFF00393939005A5A
      5A00639C9C003100000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF009CCECE004A4A4A009CFFFF008C8C8C00FFFFFF0000FF
      FF0039393900319CFF00319CFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000029292900181818006B6B6B007B7B7B00BDBDBD00CECE
      CE000000000018181800393939007B7B7B007B7B7B007B7B7B006B6B6B007B7B
      7B00BDBDBD007B7B7B0018181800292929000000000063633100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FFFFFFFFFFCECEFFFF31FFFFFFCECEFFFFDEDEDEFF63CEFFFFCECEFFFF63CE
      FFFFCECEFFFF63CEFFFFEFEFEFFF63CEFFFFCECEFFFFCECEFFFF63CEFFFFCECE
      FFFF63CEFFFF4A4A4AFFEFEFEFFF9CFFFFFFEFEFEFFF9CFFFFFF4A4A4AFF9C63
      63FF639C9CFF000000FF00000000000000000000000000000000000000000000
      0000FFFFFF00CECEFF0031FFFF00CECEFF00DEDEDE0063CEFF00CECEFF0063CE
      FF00CECEFF0063CEFF00EFEFEF0063CEFF00CECEFF00CECEFF0063CEFF00CECE
      FF0063CEFF004A4A4A00EFEFEF009CFFFF00EFEFEF009CFFFF004A4A4A009C63
      6300639C9C000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00CEFFFF00FFFF
      FF00CEFFFF00FFFFFF00CEFFFF005A5A5A00319CFF009CFFFF007B7B7B00FFFF
      FF0000FFFF004A4A4A00319CFF00319CFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000029292900181818007B7B7B007B7B7B00BDBDBD00BDBDBD00000000000000
      000000000000000000004A4A4A007B7B7B008C8C8C007B7B7B007B7B7B006B6B
      6B007B7B7B00BDBDBD007B7B7B00181818000000000063633100000000000000
      0000000000000000000000000000000000000000000000000000000000FF31FF
      FFFFCECEFFFFDEDEDEFF63CEFFFFEFEFEFFFCECEFFFF31FFFFFFCECEFFFF63CE
      FFFFEFEFEFFF63CEFFFF63CEFFFFCECEFFFFCECECEFF31FFFFFFCE9CCEFF319C
      63FF63639CFF9CFFFFFF9CFFFFFFCEFFFFFFCEFFFFFFEFEFEFFF6B6B6BFF6B6B
      6BFF639C9CFF000000FF000000000000000000000000000000000000000031FF
      FF00CECEFF00DEDEDE0063CEFF00EFEFEF00CECEFF0031FFFF00CECEFF0063CE
      FF00EFEFEF0063CEFF0063CEFF00CECEFF00CECECE0031FFFF00CE9CCE00319C
      630063639C009CFFFF009CFFFF00CEFFFF00CEFFFF00EFEFEF006B6B6B006B6B
      6B00639C9C000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004A4A4A00319CFF009CFFFF008C8C
      8C00FFFFFF0000FFFF0039393900319CFF00319CFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006B6B6B007B7B7B00BDBDBD00BDBDBD000000000000000000000000000000
      000000000000181818004A4A4A007B7B7B008C8C8C006B6B6B007B7B7B007B7B
      7B007B7B7B007B7B7B00BDBDBD006B6B6B002929290000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF63CE
      FFFFEFEFEFFFCECEFFFF31CEFFFFEFEFEFFFCECEFFFFEFEFEFFFCECEFFFF31FF
      FFFFCECEFFFFEFEFEFFF63CEFFFFCECEFFFF639C9CFF6B6B6BFFADADADFF9CFF
      FFFF9CFFFFFFCEFFFFFFCEFFFFFFEFEFEFFFFFFFFFFFFFFFFFFF8C8C8CFF6B6B
      6BFF639C9CFF000000FF000000000000000000000000000000000000000063CE
      FF00EFEFEF00CECEFF0031CEFF00EFEFEF00CECEFF00EFEFEF00CECEFF0031FF
      FF00CECEFF00EFEFEF0063CEFF00CECEFF00639C9C006B6B6B00ADADAD009CFF
      FF009CFFFF00CEFFFF00CEFFFF00EFEFEF00FFFFFF00FFFFFF008C8C8C006B6B
      6B00639C9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00CEFFFF00FFFFFF00CEFFFF00FFFFFF00CEFFFF005A5A5A00319CFF009CFF
      FF007B7B7B00FFFFFF0000FFFF0039393900319CFF00319CFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD00BDBDBD0000000000000000000000000000000000000000000000
      000000000000000000004A4A4A007B7B7B008C8C8C006B6B6B007B7B7B006B6B
      6B007B7B7B007B7B7B007B7B7B00BDBDBD006B6B6B0029292900292929000000
      0000000000000000000000000000000000000000000000000000000000FFFFFF
      FFFFCECEFFFFCECEFFFF31FFFFFFEFEFEFFFCECEFFFF31FFFFFFCECEFFFFDEDE
      DEFF63CEFFFFCECECEFF5A5A5AFF639C9CFFDEDEDEFF9CFFFFFF9CFFFFFFCEFF
      FFFFCEFFFFFFEFEFEFFFFFFFFFFFEFEFEFFFEFEFEFFFFFFFFFFF9C9C9CFF5A5A
      5AFF319CCEFFADADADFF000000FF00000000000000000000000000000000FFFF
      FF00CECEFF00CECEFF0031FFFF00EFEFEF00CECEFF0031FFFF00CECEFF00DEDE
      DE0063CEFF00CECECE005A5A5A00639C9C00DEDEDE009CFFFF009CFFFF00CEFF
      FF00CEFFFF00EFEFEF00FFFFFF00EFEFEF00EFEFEF00FFFFFF009C9C9C005A5A
      5A00319CCE00ADADAD0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CEFFFF0000000000000000004A4A4A00319C
      FF009CFFFF008C8C8C00FFFFFF0000FFFF0039393900319CFF00319CFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000181818004A4A4A006B6B6B008C8C8C007B7B7B007B7B7B007B7B
      7B007B7B7B006B6B6B006B6B6B007B7B7B00CECECE006B6B6B00292929000000
      0000000000000000000000000000000000000000000000000000000000FFCECE
      FFFFEFEFEFFFEFEFEFFFCECEFFFF31FFFFFFEFEFEFFFCECEFFFF31FFFFFF9C9C
      9CFF8C8C8CFFCE9CCEFF9CFFFFFF9CFFFFFF9CFFFFFFCEFFFFFFCEFFFFFFEFEF
      EFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7B7BFF6363
      9CFF319C9CFFBDBDBDFF000000FF00000000000000000000000000000000CECE
      FF00EFEFEF00EFEFEF00CECEFF0031FFFF00EFEFEF00CECEFF0031FFFF009C9C
      9C008C8C8C00CE9CCE009CFFFF009CFFFF009CFFFF00CEFFFF00CEFFFF00EFEF
      EF00FFFFFF00FFFFFF00EFEFEF00FFFFFF00FFFFFF00FFFFFF007B7B7B006363
      9C00319C9C00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000004A4A
      4A00319CFF009CFFFF008C8C8C00FFFFFF0000FFFF0039393900319CFF00319C
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4A007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B006B6B6B007B7B7B007B7B7B006B6B6B007B7B7B00BDBDBD006B6B6B002929
      29000000000000000000000000000000000000000000000000FFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF9C9CFFFF319C63FF7B7B7BFF9CFF
      FFFF9CFFFFFF9CFFFFFFCEFFFFFFCEFFFFFFCEFFFFFFFFFFFFFFEFEFEFFFFFFF
      FFFFEFEFEFFFEFEFEFFFFFFFFFFFEFEFEFFF7B7B7BFF5A5A5AFF639C9CFF319C
      CEFF9C9CFFFF639C9CFF000000FF000000000000000000000000EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF009C9CFF00319C63007B7B7B009CFF
      FF009CFFFF009CFFFF00CEFFFF00CEFFFF00CEFFFF00FFFFFF00EFEFEF00FFFF
      FF00EFEFEF00EFEFEF00FFFFFF00EFEFEF007B7B7B005A5A5A00639C9C00319C
      CE009C9CFF00639C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4A00319CFF009CFFFF008C8C8C00FFFFFF0000FFFF00393939004A4A
      4A004A4A4A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000018181800393939007B7B7B008C8C8C007B7B7B006B6B6B007B7B
      7B007B7B7B006B6B6B007B7B7B007B7B7B006B6B6B007B7B7B00BDBDBD007B7B
      7B000000000000000000000000000000000000000000000000FFEFEFEFFFFFFF
      FFFF31FFFFFFFFFFFFFF639C9CFF8C8C8CFF9C9C9CFF9CFFFFFF9CFFFFFFCEFF
      FFFFCEFFFFFFCEFFFFFFCEFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFF
      FFFFFFFFFFFFCECECEFF7B7B7BFF5A5A5AFF63CEFFFF639C9CFF9C9CFFFF319C
      9CFF9C9CFFFF63CEFFFF000000FF000000000000000000000000EFEFEF00FFFF
      FF0031FFFF00FFFFFF00639C9C008C8C8C009C9C9C009CFFFF009CFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF00FFFFFF00EFEFEF00EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00CECECE007B7B7B005A5A5A0063CEFF00639C9C009C9CFF00319C
      9C009C9CFF0063CEFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004A4A4A00319CFF009CFFFF008C8C8C00FFFFFF00393939006363
      CE006363CE0031319C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000018181800393939007B7B7B008C8C8C007B7B7B007B7B7B007B7B
      7B007B7B7B006B6B6B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      00000000000000000000000000000000000000000000000000FFFFFFFFFFEFEF
      EFFF000000FF000000FF000000FF9CFFFFFF9CFFFFFFCEFFFFFFCEFFFFFFCEFF
      FFFFEFEFEFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFF9C9C
      9CFF5A5A5AFF63639CFF31CECEFF9C9CFFFF319CCEFFCECECEFF319CCEFFCECE
      CEFFBDBDBDFF000000FF00000000000000000000000000000000FFFFFF00EFEF
      EF000000000000000000000000009CFFFF009CFFFF00CEFFFF00CEFFFF00CEFF
      FF00EFEFEF00FFFFFF00EFEFEF00FFFFFF00FFFFFF00FFFFFF00EFEFEF009C9C
      9C005A5A5A0063639C0031CECE009C9CFF00319CCE00CECECE00319CCE00CECE
      CE00BDBDBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4A00319CFF009CFFFF004A4A4A00FFFFFF006363
      CE006363CE00393939004A4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4A007B7B7B007B7B7B007B7B7B007B7B7B006B6B
      6B007B7B7B006B6B6B007B7B7B007B7B7B007B7B7B0000000000000000000000
      000000000000000000000000000000000000000000FFBDBDBDFF000000FF0000
      00FF0000000000000000000000FFCEFFFFFFCEFFFFFFFFFFFFFFEFEFEFFFFFFF
      FFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFFF6B6B6BFF6B6B6BFF319C
      CEFF9C9CFFFFBDBDBDFF63CEFFFF319CCEFFBDBDBDFF63CEFFFFCECECEFF319C
      CEFFCECECEFF000000FF000000000000000000000000BDBDBD00000000000000
      0000000000000000000000000000CEFFFF00CEFFFF00FFFFFF00EFEFEF00FFFF
      FF00FFFFFF00EFEFEF00FFFFFF00FFFFFF00EFEFEF006B6B6B006B6B6B00319C
      CE009C9CFF00BDBDBD0063CEFF00319CCE00BDBDBD0063CEFF00CECECE00319C
      CE00CECECE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004A4A4A00319CFF005A5A5A009C9CFF00FFFF
      FF00393939009C9CFF009C9CFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000018181800393939007B7B7B008C8C8C007B7B7B007B7B7B007B7B
      7B007B7B7B006B6B6B007B7B7B00000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000000000
      00000000000000000000000000FFFFFFFFFFEFEFEFFFFFFFFFFFEFEFEFFFEFEF
      EFFFEFEFEFFFFFFFFFFFBDBDBDFF7B7B7BFF63639CFF31CECEFF9C9CFFFF319C
      CEFF000000FF000000FF319CCEFFCECECEFF9C9CFFFF31CECEFF63639CFF0000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00EFEFEF00FFFFFF00EFEFEF00EFEF
      EF00EFEFEF00FFFFFF00BDBDBD007B7B7B0063639C0031CECE009C9CFF00319C
      CE000000000000000000319CCE00CECECE009C9CFF0031CECE0063639C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4A005A5A5A009C9CFF005A5A
      5A00FFFFFF009C9CFF009C9CFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000018181800393939007B7B7B008C8C8C006B6B6B007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FFEFEFEFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFF
      FFFFADADADFF5A5A5AFF639C9CFF9C9CFFFF63CEFFFF639C9CFF000000FF0000
      00FF0000000000000000000000FF000000FF000000FF000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEFEF00FFFFFF00EFEFEF00FFFFFF00FFFF
      FF00ADADAD005A5A5A00639C9C009C9CFF0063CEFF00639C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A4A4A009C9CFF005A5A
      5A00FFFFFF009C9CFF009C9CFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4A007B7B7B008C8C8C007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FFFFFFFFFFFFFFFFFFDEDEDEFF000000FF0000
      00FF9C9CFFFF319CCEFFCECECEFF6B6B6BFF000000FF000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00DEDEDE00000000000000
      00009C9CFF00319CCE00CECECE006B6B6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A4A4A005A5A
      5A00FFFFFF009C9CFF004A4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000018181800393939007B7B7B008C8C8C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FFBDBDBDFF000000FF000000FF000000000000
      00FF63639CFF316363FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD000000000000000000000000000000
      000063639C003163630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A4A
      4A004A4A4A005A5A5A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF0000000000000000000000000000
      00FF000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B006B6B
      6B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006B6B6B007B7B7B007B7B7B007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000CEFF00009CFF00000000007B7B
      7B007B7B7B006B6B6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C31009C9C
      31009C9C3100000000007B7B7B007B7B7B007B7B7B006B6B6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008AE4FC0072DFFC0062DBFB0055D8FB004DD6FB0048D5FA0048D5FA004DD6
      FB005CDAFB006DDEFB007BE1FC0096E7FD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000CEFF0000CEFF0000CEFF00009CFF00009CFF000000
      00006B6B6B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C31009C9C31009C9C31009C9C
      31009C9C310063630000000000007B7B7B007B7B7B007B7B7B006B6B6B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008AE4FC0057D8
      FB002DCAF4000D86A60004637D00044E62000236450003232A000D2226001735
      390009364100054A5D000F708A0030B3D6005AD9FB0084E3FC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000044534C00373C3900373C3900474747002B2B2B0025292700373C
      3900414342004143420082828200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000CEFF0000CEFF00BDBDBD00BDBDBD0000CEFF00009CFF00009CFF00009C
      FF00000000007B7B7B007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C31009C9C31009C9C31009C9C31009C9C31009C9C
      31009C9C31006363000063630000000000007B7B7B007B7B7B007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006DDEFB002FCEF9000A87
      A8001F3D3F007C968A009BBEAC00A3C7B400B0D6C300BCE5D000BEE8D200BEE8
      D200B8E0CB008FAF9F0063796D0036433C00082C34001B89A60062DBFB0099E8
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000373C3900373C39009BBCAB00A3C7B400B0D7C300BCE6D000BEE8D200BEE8
      D200B8E0CB008FAF9F0063796D0036433C003435350000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000CEFF0000CE
      FF0000CEFF0000CEFF00000000000000000000CEFF00009CFF00009CFF00009C
      FF00009CFF00000000007B7B7B006B6B6B007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B009C9C31009C9C31009C9C31009C9C31007B7B7B009C9C31009C9C
      31009C9C3100636300006363000063630000181818006B6B6B007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      000000000000000000008AE4FC0072DFFC0062DBFB001BCBF900023A4800819D
      9100A7C9B900B0D6C300BDE7D100BEE8D200BEE8D200BEE8D200BEE8D200BEE8
      D200BEE8D200BEE8D200BEE8D200BEE8D200AED4C10060756A000A3A46003FB9
      D90092E6FC000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000373C
      3900A7C9B900B0D5C300BDE7D100BEE8D200BEE8D200BEE8D200BEE8D200BEE8
      D200BEE8D200BEE8D200BEE8D200BEE8D200AED4C00060756A00464847000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000CEFF0000CEFF00BDBDBD00BDBD
      BD0000CEFF0000CEFF0000CEFF0000CEFF00FFFFFF0000FFFF00009CFF00009C
      FF0000000000009CFF00000000007B7B7B006B6B6B007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C31009C9C
      31009C9C31009C9C31009C9C31009C6331009C9C31009C9C31009C9C31009C9C
      31009C9C310063630000636300006363000063630000181818007B7B7B006B6B
      6B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000005AD9FB002DC6F0000E82A100085367000138470043524A00A6C7
      B800AED4C100BEE8D20097B8A8008EAD9E00BEE8D200BEE8D200BEE8D200BEE8
      D200BEE8D200BEE8D200BEE8D200BEE8D200BEE8D200BEE8D20095B6A500132C
      2F0048C6E800A3EAFD0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000044534C00A6C7
      B800AFD4C200BEE8D20097B8A8008DAC9D00BEE8D200BEE8D200BEE8D200BEE8
      D200BEE8D200BEE8D200BEE8D200BEE8D200BEE8D200BEE8D20094B5A4002D31
      2F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000CEFF0000CEFF0000CEFF0000CEFF00000000000000
      000000CEFF0000CEFF00FFFFFF00FFFFFF0000FFFF0000FFFF00FFFFFF00009C
      FF000000000000000000009CFF00000000007B7B7B006B6B6B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C31009C9C31009C9C31009C9C
      31009C9C31009C9C31009C9C31009C9C31009C9C31009C9C31009C9C31009C9C
      31009C9C310063630000636300006363000063630000000000006B6B6B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000006DDE
      FB0031D0FA000D86A6001E373A00677E720089A7970046564E007C968A00A6C7
      B800BCE5D000BEE8D200BDE7D10061766D00BEE8D2007C968A00414E4C00819D
      9100BBE5CF008DAC9B00B8E0CB00BEE8D200BEE8D200BEE8D200BEE8D2006D86
      79000A62790072DFFC0000000000000000000000000000000000000000000000
      00000000000044534C00373D3A0044534C0044534C0045554D007C968900A6C7
      B800BCE5D000BEE8D200BDE7D10060746D00BEE8D2007C968B00414E4C00819D
      9100BBE5CF008DAC9B00B8E1CC00BEE8D200BEE8D200BEE8D200BEE8D2006D85
      7800454545000000000000000000000000000000000000000000000000000000
      000000CEFF0000CEFF00BDBDBD00BDBDBD0000CEFF0000CEFF0000CEFF0000CE
      FF00FFFFFF00FFFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00FFFF
      FF0000000000009CFF0000000000009CFF00000000007B7B7B007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C31009C9C31009C9C31009C9C31009C9C31009C9C
      31009C9C31009C9C31009C9C31009C9C31009C9C31009C9C31009C9C31009C9C
      31009C9C310063630000636300006363000063630000000000007B7B7B007B7B
      7B007B7B7B00000000000000000000000000000000000000000066DCFB001AC3
      EF00023A48006A827500B1D6C400AED4C100B6DEC900677E72005A6E6400A9CB
      BB00BEE8D200BEE8D200BEE8D20090AF9F008DAC9B0029303200ACD3BF00B9E2
      CD008CAA9B0028312D0049595100596C6200B8E0CB00BEE8D200BEE8D200AED4
      C1000135430052D8FB0000000000000000000000000000000000000000000000
      00004A4A4A006A817400B1D6C400AFD4C200B7DFCB00677E72005C6F6500A9CB
      BB00BEE8D200BEE8D200BEE8D20090B0A0008DAC9B0029303200ACD3BF00BAE3
      CD008CAB9C0028312D0048585000596C6200B8E0CB00BEE8D200BEE8D200AED4
      C00045454500000000000000000000000000000000000000000000CEFF0000CE
      FF00BDBDBD00BDBDBD00000000000000000000CEFF0000CEFF00FFFFFF00FFFF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000000000009CFF00009CFF0000000000009CFF00000000006B6B6B007B7B
      7B006B6B6B000000000000000000000000000000000000000000000000000000
      00009C9C31009C9C31009C9C31009C9C31009C9C31009C9C31009C9C31000000
      00000000000000000000000000009C9C31009C9C31009C9C31009C9C31009C9C
      31009C9C310063630000636300006363000063630000181818006B6B6B000000
      000000000000000000000000000000000000000000007BE1FC0021CCF9000463
      7D0048575200A7C9B900AACEBD00BCE5D000BEE8D200A5C9B60011151300A9CB
      BB00BDE7D100BEE8D200BEE8D200BEE8D200677D7500596C640095B6A500BBE5
      CF0095B6A50060756A006A8275004B5C5300B7DFCA00BEE8D200BEE8D200BEE8
      D2000D22260044D4FA0000000000000000000000000000000000000000000000
      000048585000A7C9B900ABCEBD00BCE6D000BEE8D200A5CAB70011141300A7CA
      BA00BDE7D100BEE8D200BEE8D200BEE8D200677D7500586B650095B5A600BBE4
      CE0096B7A60060766A006A8276004B5C5300B7DFCA00BEE8D200BEE8D200BEE8
      D20025282600000000000000000000000000000000000000000000CEFF0000CE
      FF00000000000000000000CEFF0000CEFF00FFFFFF00FFFFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000000063
      FF000063FF0000FFFF00009CFF00009CFF0000000000009CFF00000000007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000009C9C
      31009C9C31009C9C31009C9C31009C9C31009C9C31000000000000000000FF9C
      9C00FF9C9C00FF9C9C00FF9C9C0000000000000000009C9C31009C9C31009C9C
      31009C9C31006363000063630000636300006363000000000000000000000000
      0000000000000000000000000000000000000000000057D8FB0006C5F900012F
      3C0097B8A800A7C9B900BCE5D000BEE8D200BEE8D200BEE8D200596C6200647A
      6E00B6DEC900BEE8D200B9E2CD00AACEBD00A2C4B300819D91009CBFAE006176
      6D00799486001F26220052655B00B6DEC900BEE8D200BEE8D200BEE8D200AED4
      C100001A220044D4FA0000000000000000000000000000000000000000003D3D
      3D0098B8A900A7C9B900BCE5D000BEE8D200BEE8D200BEE8D200596C62006479
      6E00B6DEC900BEE8D200B9E2CD00A9CEBC00A1C5B300819D91009CBFAE006276
      6F007A9587002026220052655B00B5DEC800BEE8D200BEE8D200BEE8D200AED4
      C00025282600000000000000000000000000000000000000000000CEFF0000CE
      FF0000CEFF0000CEFF00FFFFFF00FFFFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      00000063FF000063FF0000FFFF00009CFF00009CFF0000000000009CFF000000
      00006B6B6B007B7B7B007B7B7B00000000000000000000000000000000009C9C
      31009C9C31009C9C31009C9C31000000000000000000FF9C6300FF9C9C00FFCE
      CE00FFCECE00FFCECE00FF9C9C00FF9C9C00FF9C9C00000000009C9C31009C9C
      31009C9C31006363000063630000636300006363000000000000000000000000
      0000000000000000000000000000000000000000000044D4FA0006C5F9000013
      1800A7C9B900AACEBD00A2C4B300BEE8D200BEE8D2008DAC9B00B4DBC7001216
      140090AF9F00BCE5D000BEE8D2005E726A004857520030393A00364040005061
      5C00B7DFCA0060756A004959510095B6A500BEE8D200BEE8D200BEE8D2005A6E
      6400067491005FDAFB0000000000000000000000000000000000000000001818
      1800A7C9B900AACDBD00A1C5B300BEE8D200BEE8D2008DAC9B00B4DBC7001216
      140090AE9F00BCE6D000BEE8D2005D706A004856530030393A00364140005061
      5C00B7DFCA005F7469004959510094B5A400BEE8D200BEE8D200BEE8D2005A6E
      64005A6E6400000000000000000000000000000000000000000000CEFF0000CE
      FF00FFFFFF00FFFFFF00BDBDBD0000B5000000CE000000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000CECECE00009C9C00CECECE00DEDEDE00FFFF
      FF0000000000000000000063FF0000FFFF00009CFF00009CFF0000000000009C
      FF00000000007B7B7B007B7B7B007B7B7B000000000000000000000000009C9C
      31009C9C31009C9C310000000000FF9C9C00FF9C9C00FFCECE00FFCECE000000
      0000FFCECE00FFCECE00FFCECE00FF9C9C00FF9C9C00FF9C9C00000000009C9C
      31009C9C31006363000063630000636300006363000000000000000000000000
      0000000000000000000000000000000000000000000044D4FA0006C5F900001A
      2200A2C4B3003A45450021272A0061766D008EAD9E00343F3A00495951004E60
      5700111513009BBEAC00BDE7D100BEE8D200BEE8D200BEE8D200BEE8D200BEE8
      D200BEE8D200B1D6C400A8CDBA00BEE8D200BEE8D200BEE8D20087A49500042A
      330030CCF6000000000000000000000000000000000000000000000000002020
      2000A0C2B2003A45450021272A0060746D008EAD9E00343F3900495A51004D60
      5600111413009BBEAC00BDE7D100BEE8D200BEE8D200BEE8D200BEE8D200BEE8
      D200BEE8D200B1D8C400A8CDBA00BEE8D200BEE8D200BEE8D20087A495003434
      3400000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0000FFFF000000000000B50000000000000000000000FFFF0000FFFF000000
      000000000000CECECE00CECECE00CECECE00009C9C00CECECE00CECECE0000FF
      0000FF000000FF000000000000000063FF0000FFFF00009CFF00009CFF000000
      0000009CFF00000000006B6B6B007B7B7B000000000000000000000000009C9C
      31009C9C31009C9C310000000000FF639C00FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFCECE00FFCECE00FFCECE00FF9C9C00FF9C9C00000000009C9C
      31009C9C31006363000063630000636300006363000000000000000000000000
      000000000000000000000000000000000000000000005AD9FB0006C5F9000463
      7D005A6E64005A6C67001B2024001B20240085A29300819D8E002E3933005265
      5B0063796D000B0E0D008CAA9B00BEE8D200BEE8D200BEE8D200BEE8D200BEE8
      D200BEE8D200BEE8D200BEE8D200BEE8D200BEE8D2008FAF9F000A1F220018A8
      CF006DDEFB000000000000000000000000000000000000000000000000000000
      00005A6E64005A6C67001B2024001B1F230085A29500819D8E002E3934005265
      5B0063796D000B0D0C008BA99900BEE8D200BEE8D200BEE8D200BEE8D200BEE8
      D200BEE8D200BEE8D200BEE8D200BEE8D200BEE8D2008FAF9F00212422000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF0000FFFF00000000000000000000FFFF0000FFFF000000000000000000CECE
      CE00FF00CE00FF00CE00CECECE00FFFFFF00009C9C00CECECE0000FF0000FF00
      0000FF000000CECECE00CECECE00000000000063FF0000FFFF00009CFF00009C
      FF0000000000009CFF00000000007B7B7B000000000000000000000000009C9C
      31009C9C310000000000FF9C9C00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE00FFCECE00FFCECE000000000000000000FF9C9C00FF9C9C000000
      00009C9C31006363000063630000636300006363000000000000000000000000
      0000000000000000000000000000000000000000000084E3FC002BCEFA0004BE
      F000031F2600738B810023292C007F9B8D0021272A0049595500181D1B0085A2
      9300BEE8D2007D998A0010141100647A6E00B9E2CD00BEE8D200BEE8D200BEE8
      D200BEE8D200BEE8D200BEE8D200BBE5CF0061766D0001171D0016ABD2005CDA
      FB00000000000000000000000000000000000000000000000000000000000000
      000026262600738B810023292C007E9A8E0022282B0049595500181D1B0084A2
      9200BEE8D2007D998A0010141100647A6E00BAE3CD00BEE8D200BEE8D200BEE8
      D200BEE8D200BEE8D200BEE8D200BBE5CF0061776C001C1D1C00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF0000FFFF0000FFFF000000000000000000DEDEDE00CECECE00CECE
      CE00CECECE00CECECE00000000005A5A5A00000000005A5A5A0000000000CECE
      CE00CECECE00CECECE007B7B7B009C9C9C000000000000639C0000FFFF00009C
      FF00009CFF0000000000000000007B7B7B000000000000000000000000009C9C
      31009C9C310000000000FF9C9C00FFCECE00FFCECE00FFCECE00FFCECE00FFCE
      CE00FFCECE000000000000000000FFCECE00FFCECE00FF9C9C00FF9C9C000000
      18009C9C31006363000063630000636300006363000000000000000000000000
      000000000000000000000000000000000000000000000000000066DCFB001BCB
      F90004A1CC001223240050615C0023292C00ABD2BE001B20240079948600A8CD
      BA00BEE8D200BEE8D200A8CDBA00121614002229250087A495007F9B8D007B97
      88009BBEAC00B7DFCA007D998A001F262200181D1B000B78940057D8FB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001F24210050615C0023292C00ABD2BF001C20250078938500A8CD
      BA00BEE8D200BEE8D200A9CEBC00121614002229250087A495007F9B8D007B97
      88009BBEAC00B7DFCA007E9A8B001F262200171C190045454500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000000000000063FF0000000000CECECE00CECECE00CECE
      CE00CECECE00CECECE0000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF008C8C8C008C8C8C008C8C8C008C8C8C000000000000639C0000639C0000FF
      FF00009CFF00009CFF0000000000000000000000000000000000000000009C9C
      310000000000FF9C9C00FFFFFF00FFCECE00FFCECE00FFCECE00FFCECE000000
      000000000000FFCECE00FFCECE00FFCECE00FFCECE00FF9C9C00FF9C9C000000
      00009C9C31006363000063630000636300006363000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000057D8
      FB0016C9F900038CB1001C2825002F37380048575200576A620036404000BEE8
      D200BEE8D200BEE8D200B0D6C3001115130050615C00080A09003C4942007B97
      8800333E3800010101002E3933008FAF9F008FAF9F000746570074DFFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000222925002F37380048565300576A6400353F4000BEE8
      D200BEE8D200BEE8D200B0D7C3001115130053655C00080A09003C4942007B97
      8800333E3800010101002E3933008FAE9E008FAF9F0045454500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000CEFF000063FF000063FF0000000000EFEFEF00EFEFEF00EFEF
      EF00EFEFEF0000000000EFEFEF00000000007B7B7B00000000009C9C9C000000
      00009C9C9C009C9C9C008C8C8C009C9C9C000000000000639C0000639C000063
      9C0000FFFF00009CFF0000000000000000000000000000000000000000009C9C
      310000000000FF9C9C00FFFFFF00FFFFFF00FFCECE00FFCECE00FFCECE000000
      0000FFCECE00FFCECE00FFCECE00FFCECE00FFCECE00FF9C9C00FF9C9C000000
      00009C9C31006363000063630000636300006363000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004DD6FB0016C9F9000392B800141C1C007D998A00B4DBC700A5C9B600BEE8
      D200BEE8D200B7DFCA0039463F004D5E5500B8E0CB00647A6E00181D1B00738B
      7F001F2622007B978800BEE8D200BEE8D200A3C7B400023A480062DBFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001B1F1E007D978A00B4DBC700A5CAB700BEE8
      D200BEE8D200B7DFCA0039463F004C5D5400B8E1CC00647A6E00181D1B00738B
      7F001F2622007B968800BEE8D200BEE8D200A4C8B50045454500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000CEFF000063FF0000000000EFEFEF00CECECE00BDBD
      BD00DEDEDE00FF000000000000009C9C9C00000000009C9C9C00000000009C00
      63008C8C8C008C8C8C008C8C8C009C9C9C000000000000639C000063FF000063
      FF00000000000000000000000000000000000000000000000000000000009C9C
      310000000000FF9C9C00FFFFFF00FFFFFF00FFCECE00FFCECE00FFCECE000000
      0000FFCECE00FFCECE00FFFFFF00FFCECE00FFCECE00FF9C9C00FF9C9C000000
      00009C9C31006363000063630000636300006363000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004DD6FB001BCBF90004A8D5000B323A0052655B0052655B00576A
      62004E60570028312D00738B7F00B7DFCA00BEE8D200343F3A007F9B8D005265
      5B005A6E640052655B00BEE8D200BEE8D20085A2930002556B0062DBFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000393B3A0054675D0052655B00576A
      60004E5F560027302C00738B7F00B7DFCA00BEE8D200343F39007F9B8D005365
      5C005A6E640052655B00BEE8D200BEE8D20085A3930045454500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000CEFF000063FF0000000000CECECE00DEDE
      DE00FF00000000B500008C8C8C00292929000000000029292900ADADAD007B7B
      7B009C0063008C8C8C008C8C8C00000000000063FF000063FF00000000000000
      00000063FF000063FF0000000000000000000000000000000000000000009C9C
      310000000000FF9C9C0000000000FFFFFF00FFCECE00FFCECE00FFCECE000000
      0000FFCECE00FFFFFF00FFFFFF00FFFFFF00FF9C9C00FF9C9C00000000009C9C
      31009C9C31006363000063630000636300006363000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005CDAFB0021CCF90004BAEC00040706004D5E5500404F
      47002E3933005A6E6400A7C9B900BDE7D100A3C7B4003D4B4400B9E2CD004B5C
      530039463F001A1F1D00BCE5D000BEE8D20060756A000E82A10072DFFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000060707004D5E56004150
      48002E3933005A6D6300A7C9B900BDE7D100A3C7B4003E4B4400B9E2CD004A5B
      520039453F001A1F1D00BCE6D000BEE8D20060756A0034343400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000CEFF000063FF0000000000B500
      00009C9C9C008C8C8C008C8C8C008C8C8C00006363008C8C8C008C8C8C008C8C
      8C009C9C9C009C9C9C00000000000063FF0000000000000000000063FF000063
      FF000063FF000000000000000000000000000000000000000000000000009C9C
      310000000000FF9C9C00FFFFFF00FFFFFF00FFCECE00FFCECE00FFCECE000000
      0000FFCECE00FFCECE00EFEFEF00FFCECE00FF9C9C00FF9C9C00000000009C9C
      3100CECE63006363000063630000636300006363000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000057D8FB0006C5F9000A1F2200ABD2BE005A6E
      6400ADD4BF00151A1700AACEBD00BDE7D1008FAF9F00333E38001B211E002229
      25000B0E0D000101010097B8A800B6DEC900132C2F002DCAF400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000022232200ABD2BF005A6F
      6400ADD4BF00151A1700AACDBD00BDE7D1008FAF9F00333E38001B211E002229
      25000B0E0D000000000097B8A800B6DEC9002D312F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000CEFF000063FF000000
      0000000000009C9C9C009C9C9C008C8C8C00006363008C8C8C009C9C9C009C9C
      9C00000000000000000000000000000000000063FF000063FF000063FF000063
      FF000063FF000000000000000000000000000000000000000000000000009C9C
      310000000000FF9C9C00FFFFFF00FFFFFF00FFFFFF00FFCECE00FFCECE000000
      0000FFCECE00FFCECE00FFCECE00FF9C9C00FF9C9C00000000009C9C31009C9C
      3100CECE63006363000063630000636300006363000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000055D8FB0004B2E10043524A00BBE5CF003946
      3F006D86790036433C00A3C7B400B9E2CD00BEE8D200BEE8D200BEE8D200B6DE
      C9009BBEAC009CBFAE00BEE8D20061766D00067C9B005AD9FB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000044534C00BBE5CF003946
      3F006E877A0036433C00A4C6B500B9E2CD00BEE8D200BEE8D200BEE8D200B6DE
      C9009BBEAC009CBFAE00BEE8D20061776C004545450000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000CEFF000063
      FF0000639C000000000000000000000000000000000000000000000000000000
      000000000000000000000063FF000063FF000063FF000063FF00009CFF000063
      FF00000000000000000000000000000000000000000000000000000000009C9C
      31009C9C310000000000FF9C9C00FFFFFF00FFFFFF00FFFFFF00FFCECE00FFCE
      CE00FFCECE00FFCECE00FF9C9C00FF9C9C00FF9C9C00000000009C9C3100FFFF
      FF009C9C31009C9C310063630000636300006363000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003BD2FA00026E8B0089A79700A3C7B4001115
      1300576A6200242B2A007C968A00AED4C100BEE8D200BEE8D200BEE8D200BEE8
      D200BEE8D200BEE8D20087A4950007566A003BD2FA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089A79700A4C8B5001115
      1300586B6100252D29007C968900AFD4C200BEE8D200BEE8D200BEE8D200BEE8
      D200BEE8D200BEE8D20087A49500454545000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000CE
      FF000063FF000063FF0000639C000063FF000063FF000063FF00000000000000
      00000063FF000063FF000063FF000063FF00009CFF0000CEFF0000CEFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C9C310000000000FF9C9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FF9C9C00FF9C9C00FF9C9C00FF9C9C00000000009C9C31009C9C3100EFEF
      EF009C9C31009C9C31009C9C3100636300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000016C9F900012630004D5E55004E605700343F
      3A0001010100001A22000146590063796D0084A193008FAF9F00819D8E00738B
      7F0085A293006D867900085367001DC9F70077E0FC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000313131004D5E56004F6057003440
      3A0001010100232323000000000063776D0084A292008FAE9E00819D8E00738C
      7F0085A393006D86790045454500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000CEFF000063FF000063FF000063FF0000000000000000000063FF000063
      FF000063FF000063FF00009CFF0000CEFF0000CEFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C9C31009C9C310000000000FF9C9C00FF9C9C00FFFFFF00FFFFFF00FF9C
      9C00FF9C9C00FF9C9C0000000000000000009C9C31009C9C3100FFFFFF00CECE
      6300CECE63009C9C31009C9C31009C9C31000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000009C6F90004A8D50007A5D0000898BE000BAA
      D5000EC5F50023CAF7000EC5F5000491B6000236450004070600202723004959
      51001A1F1D000146590023CAF7006FDEFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004545450005060500202724004959
      5100191F1C004545450000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000CEFF0000000000000000000063FF000063FF000063FF000063
      FF00009CFF0000CEFF0000CEFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C31009C9C31000000000000000000FF9C9C00FF9C9C00FF9C
      9C0000000000000000009C9C31009C9C31009C9C3100EFEFEF00CECE6300CECE
      6300CECE6300CECE63009C9C31009C9C31000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000036D1FA003BD2FA002FCEF90036D1FA0044D4
      FA0048D5FA006FDEFC0043D4FA0013C9F900037EA00050615C00ADD4BF0095B6
      A5003D4B44001A95B50077E0FC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000050625900ADD4BF0096B7
      A6003D4B44000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000063FF000063FF000063FF000063FF00009CFF0000CE
      FF0000CEFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C31009C9C31009C9C310000000000000000000000
      00009C9C31009C9C31009C9C3100FFFFFF00FFFFFF00CEFF9C00CEFF9C00CECE
      6300CECE6300CECE6300CECE6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000044D4FA00025C740046564E00B8E0CB00ABD2
      BE0084A19300195B6C0096E7FD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000046564E00B8E1CC00ABD1
      BD0083A091000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000063FF000063FF00009CFF0000CEFF0000CEFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF009C9C31009C9C31009C9C31009C9C
      31009C9C3100FFFFFF00EFEFEF00CEFF9C00CEFF9C00CEFF9C00CEFF9C00CEFF
      9C00CECE6300CECE6300CECE6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000031D0FA00013847004E605700404F47003D4B
      440001171D001288A7007BE1FC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004F605700404F47003D4B
      44001E1E1E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000009CFF00009CFF0000CEFF0000CEFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CEFF9C00CEFF9C00EFEFEF00CEFF9C00CEFF9C00CEFF9C00CEFF
      9C00CEFF9C00CECE630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000021CCF900067C9B00044E62000B323A00042A
      33000491B60026CDFA0082E3FC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003A3D3C003335
      3400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000009CFF0000CEFF0000CEFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CECE6300CECE6300CEFF
      9C00CEFF9C00CEFF9C00CEFF9C00CEFF9C00FFFFFF00CEFF9C00CEFF9C00CEFF
      9C00CEFF9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000026CDFA0009C6F90009C6F90009C6F90009C6
      F90036D1FA007BE1FC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000CEFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CECE6300CECE
      6300CEFF9C00CEFF9C00CEFF9C00CEFF9C00CEFF9C00FFFFFF00CEFF9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000066DCFB0052D8FB0043D4FA004DD6
      FB0084E3FC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CECE6300CEFF9C00CEFF9C00CEFF9C00CEFF9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000A00100000100010000000000001A00000000000000000000
      000000000000000000000000FFFFFF00FFE1DFFFFF8007FFE000000300000000
      FFC00FFFFC0000FFC000000100000000FF8007FFF000003FC000000100000000
      FF0003FFE000001FC000000100000000FE0001FFC000000FC000000100000000
      FC00007F800000078000000000000000F800001F000000078000000000000000
      F0000007000000038000000000000000E0000000000000038000000000000000
      C000000000000001800000000000000080000001000000018000000000000000
      0000000100000001800000000000000080000000000000038000000000000000
      C0000000000000038000000000000000E0000000000000078000000000000000
      F00000000000000F8000000000000000F80000008000003F8000000000000000
      FC000000C000007F8000000000000000FE000000E000003FC000000100000000
      FF000004F000001FF800000F00000000FF800004FC00000FF800000F00000000
      FFC0000CFF800007F800000F00000000FFE00006FFFFE003F800000F00000000
      FFF00006FFFFF001FC00001F00000000FFFC0004FFFFF800FE00003F00000000
      FFFC0065FFFFFC00FF00003F00000000FFFE08E5FFFFFE00FF00003F00000000
      FFF80975FFFFFF00FF00003F00000000FFE00D75FFFFFF80FF00003F00000000
      FF0C453BFFFFFFC0FF00003F00000000FCC0EE03FFFFFFE1FF00003F00000000
      E0000213FFFFFFFFFF00003F00000000FFFFFFFFFFFFFFFFFFF7FFFFFFF7FFFF
      FFFFFFFFFFFE1FFFFFE1DFFFFFE01FFFF000003FFFF807FFFFC00FFFFFC00FFF
      F000001FFFF003FFFF8007FFFF8007FFF000000FFFF003FFFF0003FFFF0003FF
      F0000007FFE001FFFE0001FFFE0001FFF0000007FFE001FFFC00007FFC00007F
      F0000007FFE001FFF800001FF800001FE0000007FFE001FFF0000007F0000007
      C0000007FFF003FFE0000000E000000180000007FFF003FFC0000000C0000000
      80000003FFF807FF800000018000000080000001FFFE1FFF0000000100000000
      80000001FFFC1FFF800000008000000180000001FFFC0FFFC0000003C0000003
      80000001FFF80FFFE0000001E000000180000001FFF80FFFF0000003F0000003
      80000001FFF807FFF800000FF800000FC0000001FFF807FFFC00003FFC00003F
      E0000001FFF007FFFE0000FFFE00007FF0000001FFF003FFFF0003FFFF00003F
      FF0000FFFFF003FFFF800FFFFF80001FFF0000FFFFE001FFFFC01FFFFFC0000F
      FF00007FFFE001FFFFE0FFFFFFE0E007FF80007FFFE001FFFFF3FFFFFFF3F003
      FFC0003FFFE000FFFFFFFFFFFFFFF801FFE0001FFFC000FFFFFFFFFFFFFFFC00
      FFE0000FFFC000FFFFFFFFFFFFFFFE00FFF0000FFFE001FFFFFFFFFFFFFFFF00
      FFF0000FFFF007FFFFFFFFFFFFFFFF80FFF0000FFFF81FFFFFFFFFFFFFFFFFC1
      FFFFFFFFFFFC7FFFFFFFFFFFFFFFFFE3FFE1FFFFFF0000FFFFFFFFFFF39CE33F
      FF80FFFFFE00007F00000000DCE721CFFE003FFFFC00003F00000000E739C073
      F8001FFFF800001F0000000039CE601CE0000FFFF000000F00000000CE738027
      800003FFE000000700000000739CE019000000FFC00000030000000000072000
      0000003F8000000100000000FFF1C0030000003F0000000000000000FFF66003
      0000007F0000000000000000FFD00003000001E10000000000000000FF800003
      000003800000000000000000FF800003000002000000000000000000FF800003
      000000000000000000000000FF800003000000010000000000000000F0000003
      000000010000000000000000E0000103000000010000000000000000C0000003
      0000000100000000000000008000000300000001000000000000000080000003
      0000000100000000000000008FFC000300000001000000000000000080080003
      900000010000000000000000C0100003F00000010000000000000000FF800003
      F00000010000000000000000FF800003F80300018000000100000000FF800003
      FE0F0003C000000300000000FF800003FF3F0007E000000700000000FF900003
      FFFF001FF000000FE000000FFFF00003FFFF007FF800001FF000000FFFF00003
      FFFF01FFFC00003FF800000FFFF00007FFFF07FFFE00007FFFFFFC1FFFF0000F
      FFFF9FFFFF0000FFFFFFFE7FFFFFFFFFFFFE01FFFFF807FFFFF03FFFFFFFFE00
      FFF800FFFFE003FFFF001FFFFFFFF800FFE0003FFF8000FFE0000FFFFFFFE000
      FE00000FFF80003FC00007FFFFFFE001F8000003FF80000FC00003FFFFFFE007
      E0000003FF80000F800001FFFFFFE007E000000FFF80003F000000FFFFFFE007
      E000003FFF8000FF0000007FFFC00007E000007FFF8003FF8000003FFFC00007
      E000007FFF800FFFC000001FF8000003E000007FFF801FFFE000000FE0000001
      E000007FFF801FFFE0000007E0000003E000007FFF800FFFE0000003E0000007
      E000007FFF000FFFE000000180000001C000007FFF000FFFE000000000000001
      C000003FFF000FFFF000000000000001C000003FFF000FFFF800000000000001
      C000003FFF000FFFFC00000000000001C000003FFF000FFFFE00000000000001
      C000003FFF000FFFF800000000000001C000003FFF000FFFF00000000000000F
      C000003FFF001FFFF00000000000000FC000003FFF807FFFF00000000000000F
      C000003FFFC03FFFF00000010000000FE000007FFFC03FFFF8000C070000000F
      E01001FFFFC03FFFFFEFFE1FE000007FF00000FFFFC03FFFFFFFFFFFE000007F
      F00800FFFFE07FFFFFFFFFFFE000207FF00C00FFFFF0FFFFFFFFFFFFE040307F
      F00F00FFFFFFFFFFFFFFFFFFF0C039FFF81F81FFFFFFFFFFFFFFFFFFF9C03FFF
      FC3FC3FFFFFFFFFFFFFFFFFFFFC03FFFFFFFFFFFFFE0001FFFFC00FFFFFFFFFF
      FFFFFFFFFFC0000FFFF0007FFFFFFF9FFFFFFFFFFF800007FFC0003FFFFFF60F
      FFF7FFFFFF007FFFFC00001FFFFFC00FFFE1DFFFFF007FFFF300000FFFFF000F
      FFC00FFFFF007FFFEF000007FFFC000FFF8005FFFF007FFFDE000003FFF0000F
      FF0000FFFF007FFFDC00000FFFC0000FFE00003FFF007FFFDC00001FFF00000F
      FC00000FFF007FFFD800001FFC00000FF8000003FF007FFFD800001FFC00000F
      F0000000FF007FFFD000001FFC00000FE0000000FE003FFFE000000FFC00000F
      C0000000FC001FFFE000000FFC00000F80000001F8000FFFE0000017FC00000F
      00000001F00007FFC0000037FC00000F80000000E00003FFC000003BFC00000F
      C0000003E00003FF8000003BFC00000FE0000001C00001FF8000003BFC00000F
      F0000003C00001FF0000003BFC00000FF800000FC00001FF8000003BFC00000F
      FC00003FC00001FFC0000037FC00000FFE0000FFC00001FFE0040037FC00001F
      FF0003FFC00001FFF004000FFC00007FFF800FFFC00001FFF80C003FFC0001FF
      FFC03FFFE00003FFFC0E01FFFE0007FFFFE0FFFFE00003FFFE1F00FFFE001FFF
      FFF3FFFFF00007FFFF1F00FFFE007FFFFFFFFFFFF8000FFFFFBF00FFFE01FFFF
      FFFFFFFFFC001FFFFFFF00FFFE07FFFFFFFFFFFFFE003FFFFFFF81FFFF9FFFFF
      FFFFFFFFFF80FFFFFFFFC3FFFFFFFFFFFFF803FFFFFFFF9FFFFFC3FFE07FFFFF
      FFE001FFFFFFFE1FFFFF01FFE03FFFFFFF8000FFFFFFF81FFFFC00FFE00FFFFF
      FE00007FFFFFE01FFFF0007FE007FFFFF800003FFFFF801FFFC0003FE001FFFF
      E000001FFFFE001FFF00001FF000FFFF8000000FFFF8001FFC00000FF8003FFF
      80000007FFE0001FF0000007FC000FFF80000003FF80001FC0000003FE0007FF
      80000001FE00001FC000000FFF0001FF80000000FC00001FC000003FFF8000FF
      80000000FC00001FC00000FFFFC0003F80000003FC00001FC00000FFFFE0001F
      8000000FFC00001FC00000FFFE0000078000003FFC00001FC00000FFFE000003
      8000007FFC00001FC00000FFFA0000078000007FFC00001FC00000FFF000001F
      8000007FFC00001FC00000FF6000001F8000007FFC00001FC00000FF4000001F
      8000007FFC00007FC00000FF0000001F8000007FFC0001FFC00000FF0000001F
      8000007FFC0007FFC00000FF0000000FC000007FFC001FFFC00000FF00000007
      E000007FFC007FFFC00000FFC000C003F000007FFC00FFFFC00001FFC000E001
      F80000FFFC00FFFFC00006FFF000F800FC0003FFFC00FFFFE0001F7FF000FC00
      FE000FFFFC01FFFFF0003FBFFC01FF01FF003FFFFC07FFFFF841BFFFFC03FFC1
      FF80FFFFFC1FFFFFFDE7BFFFFF07FFE1FFC3FFFFFE7FFFFFFFFFBFFFFF0FFFF9
      FFEFFFFFFFFFFFFFFFFFBFFFFFDFFFFDFFFFFFFFFFFF3FFFFFFE0FFFFFF0FFFF
      FFFFFFFFFFFC1FFFFFF807FFFFC07FFFFFFFFFFFFFF00FFFFFE003FFFF003FFF
      FFFFFFFFFFC007FFFF8001FFFC001FFFFFF7FFFFFF0003FFFE00000FF0000FFF
      FFE1DFFFFC0001FFF8000077C00007FFFFC00FFFF00000FFE000003B800003FF
      FF8007FFC000007F8000001B800001FFFF0003FF0000003F0000002B800000FF
      FE0001FF0000001F000000EB8000007FFC00007F0000000F000000E78000003F
      F800001F80000007000000CF8000001FF000000780000003000000AF8000000F
      E000000080000001000000AF80000007C000000080000000000000B180000003
      8000000180000000000000CF800000010000000180000000000000F180000001
      8000000080000001000000FFC0000001C000000300000003000000FFE0000003
      E000000100000003000000FFF0000003F000000300000003000000FFF0000003
      F800000F00000003000000FFF0000003FC00003F00000003000000FFFC000003
      FE0000FF00000003000000FFFC000003FF0003FF8000000F000001FFFF000007
      FF800FFF8000003F800007FFFF00001FFFC03FFFC00000FFC0001FFFFFC0003F
      FFE0FFFFE00003FFE0007FFFFFC000FFFFF3FFFFF8000FFFF001FFFFFFF003FF
      FFFFFFFFFFE03FFFF807FFFFFFF00FFFFFFFFFFFFFF0FFFFFC1FFFFFFFFC3FFF
      FFFFFFFFFFFBFFFFFE7FFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1DFFF
      FFFFFFFFFFFE0FFFFFFFFFFFFFC00FFFFFFFFFFFFFF807FFFFFFFFFFFF8007FF
      FFF7FFFFFFE003FFFFC1FFFFFF0003FFFFE1DFFFFF8001FFFF00FFFFFE0001FF
      FFC00FFFFE0000FFFC007FFFFC00007FFF8007FFF800007FF0003FFFF800001F
      FF0003FFE000003FC0001FFFF0000007FE0001FF8000001F80000FFFE0000000
      FC00007F0000000F800007FFC0000000F800001F00000007800003FF80000001
      F000000700000003800001FF00000000E000000000000001800000FF80000000
      C000000000000000C000007FC00000038000000100000000E000003FE0000001
      0000000100000000F000001FF00000038000000000000000F800000FF800000F
      C000000300000001FC000007FC00003FE000000180000001FE000003FE0000FF
      F0000003C0000001FF000001FF0000FFF800000FE0000001FF800000FF80007F
      FC00003FF0000001FFC00000FFC0003FFE0000FFF8000003FFE00000FFE0C01F
      FF0003FFFC00000FFFF00001FFF3E01FFF800FFFFE00003FFFF80007FFFFF00F
      FFC01FFFFF0000FFFFFC001FFFFFF807FFE0FFFFFF8003FFFFFE007FFFFFFC03
      FFF3FFFFFFC00FFFFFFF01FFFFFFFF03FFFFFFFFFFE03FFFFFFF87FFFFFFFF81
      FFFFFFFFFFF0FFFFFFFFDFFFFFFFFFC0FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFF0
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FE01FFFFFFFFFFFFFFFF80FFFFFFFFFFF800FFFFFFE0FFFFFFFE001FFFFFFFFF
      E0007FFFFF807FFFFFF80007FFF03FFFC0003FFFFE003FFFFFE00003FF0019FF
      C0001FFFF8001FFFFF800001E20000FF80000FFFE0000FFFFE000001C000007F
      800007FF800007FFF8000000C000003F000003FF000003FFE00000008000001F
      000001FF000001FF800000000000000F000000FF000000FF0000000000000007
      0000007F0000007F00000000800000030000003F0000003F00000001C0000001
      0000001F8000001F00000007E00000008000000FC000000F0000000F00000000
      80000007E00000070000000FC0000000C0000003F00000030000000F80000000
      E0000001F80000010000000FC0000000F8000000FC0000000000000FE0000000
      FC000000FE0000000000000FF0000000FE000001FF0000000000000FF8000000
      FF000003FF8000000000000FF8000000FF800003FFC000010000001FF0000000
      FFC00003FFE000030000007FF0000000FFE00003FFF0000F000001FFF0000000
      FFF80007FFF8003F000007FFF0000000FFFC0007FFFC00FF80001FFFF0000001
      FFFE000FFFFE03FF80007FFFF8000C07FFFF000FFFFF0FFFC001FFFFFFFFFE1F
      FFFF801FFFFFBFFFC007FFFFFFFFFFFFFFFFC03FFFFFFFFFE01FFFFFFFFFFFFF
      FFFFF0FFFFFFFFFFF87FFFFFFFFFFFFFFFFFDFFFFFFFFFFF87FFF1FFFFFFFFFF
      FFFF0FFFFFFFFFFFE3FFE0FFFFC1F861FFFC0007FFFFFFFFF0FFE0FFFF00F000
      FFF00003FFFFFFFFF03F20FFFC006000FFC00001FFF7FFFFF01E00FFF0000000
      FF000001FFE1DFFFF80C00FFC0000001FC000000FFC00FFFF80000FF00000003
      F0000000FF8007FFF80020FF00000001C0000000FF0003FFFC0060FF00000000
      00000000FE0001FFFC00E0FF0000000080000000FC00007FFE0060FF00000000
      C0000001F800001FFF0020FF00000001E0000003F0000007FF8000FF00000003
      F0000003E0000000FFC000FF0000000FF8000007C0000000FFE0003F0000003F
      F000000780000001FFE0001F0000001FC000000F00000001FFC0001F0000000F
      0000000F80000000FFC0001F0000000780000007C0000003FFC0001F00000003
      C0000003E0000001FFC1001F00000001E0000001F0000003FFE0001F00000000
      F0000003F800000FFFE0000F00000000F800000FFC00003FFFF0200780000000
      FC00003FFE0000FFFFF8C003C0000001FE0000FFFF0003FFFFF80001E0000007
      FF0003FFFF800FFFFFFC0000F000001FFF8007FFFFC01FFFFFFE0000F800007F
      FFC003FFFFE0FFFFFFFF0000FC0001FFFFE003FFFFF3FFFFFFFF0080FE0007FF
      FFF00FFFFFFFFFFFFFFF00C1FF001FFFFFF83FFFFFFFFFFFFFFF81E3FF877FFF
      FFFCFFFFFFFFFFFFFFFFC3FFFFDFFFFFFFFFFFFFFFFFE00FFFFF81FFFF07FFFF
      FFFFFFFFFFFF8007FFFE00FFFC01003FFFFFFFFFFFFF0003FFF8007FF000000F
      FFFFEFFFFFFE0001FFE0003FC0000007FFFF83FFFFFE0000FFC0001F00000003
      FFFE01FFFFFE0000FF80000F00000001FFF800FFF8000003FF80000700000001
      FFE0007FE000000FFF80000300000001FF80003F8000003FFF00000300000003
      FE00001F8000003FFF00000F00000007F800000FC000003FFF00003F0000000F
      E0000007C000007FFE00003F00000007C0000003E000007FFE00003F00000007
      80000001E000007FFE00001F00000003C0000000E000007FFC00001F00000001
      E0000001F00000FFFC00001F0000FE00F0000000F00000FFFC00001F0000FF00
      F8000001F80000FFF800000F0000FF81FC000007F80000FFF800000F0000FFC1
      FE00000FFC0001FFF000000F0000FFE1FF000007FC0001FFF000000F0000FFFF
      FF800003FE0001FFF00000070000FFFFFFC00001FE0001FFF00000070000FFFF
      FFE00001FE0003FFE00000030000FFFFFFF07001FF0003FFC00000030000FFFF
      FFF9F807FF0003FFE00000030000FFFFFFFFFC1FFF8003FFF800000F8000FFFF
      FFFFFE7FFFC007FFFE40003FC001FFFFFFFFFFFFFFE007FFFFE000FFE007FFFF
      FFFFFFFFFFF00FFFFFF001FFF01FFFFFFFFFFFFFFFF83FFFFFF801FFF87FFFFF
      FFFFFFFFFFFCFFFFFFFC3BFFFDFFFFFFFFF7FFFFFFFF03FFFFFFFC7FFFFFFC7F
      FFE1DFFFFFFC01FFFFFFF03FFFFFF03FFFC00FFFFFF000FFFFFFC01FFFFFC01F
      FF8007FFFFC0007FFFFF000FFFFF000FFF0003FFFF80003FFFFC0007FFFC0007
      FE0001FFFF00001FFFF00003FFF00003FC00007FFF00000FFFC00001FFC00001
      F800001FFF000007FF000000FF000000F0000007FE000007FC000001FC000001
      E0000001FE00001FF8000007F8000007C0000000FE00007FF800000FF800000F
      80000000FC00007FF800000FF800000F00000000FC00007FF000000FF000000F
      80000001FC00003FF000000FF000000FC0000003F800003FF0000007F0000007
      E0000001F800003FE0000007E0000007F0000003F800003FE0000007E0000007
      F800000FF000001FE0000003E0000003FC00003FF000001FE0000003E0000003
      FE00007FE000001FC0000003C0000003FF00003FE000001FC0000003C0000003
      FF80001FE000000FC0000001C0000001FFC0000FF000000FC0000001C0000001
      FFE0E007F80000078000000180000001FFF3F003FC0000078000000180000001
      FFFFF801FE0000078000000380000003FFFFFC00FF00001F0C0000030C000003
      FFFFFE00FF80007F3C0000073C000007FFFFFF00FFC001FFFC000C1FFC000C1F
      FFFFFF80FFE007FFFC003FFFFC003FFFFFFFFFC1FFF01FFFFC20FFFFFC20FFFF
      FFFFFFE3FFF87FFFFCE3FFFFFCE3FFFFFFFFFFFFFFFFFFFFFFFF07FFFFFFC07F
      FFFFFFFFFFFFFFFFFFFC03FFFFFF003FFFF000FFFFFFFFFFFFF001FFFFFC001F
      FFC0003FFFF801FFFFC000FFFFF0000FFF80000FFFF0007FFF00007FFFC00007
      FC000007FFE0001FFC00003FFF000003F8000003FFC0000FF000001FFC000001
      E0000003F8000007C000000FF0000007C0000003F000000780000007C000001F
      80000003F000000780000003C000003F80000003E000000780000001C000003F
      80000003E000000780000000C000003F80000007E000000F80000000C000003F
      80000007F000001F80000000C000003F8000000FF000003FC0000000C000003F
      C000001FF800003FE0000001C000003FE000001FFC00003FF0000001C000003F
      F000001FFE00003FF8000001C000003FF800001FFF00003FFC000001C000003F
      FC00001FFF80003FFE000003C000003FFE00003FFF80007FFF000003C000003F
      FE00003FFF80007FFF800007C000003FFE00007FFF8000FFFFC00007E000007F
      FE00007FFF0201FFFFE0001FE000007FFE0000FFFFFF03FFFFF0007FF000007F
      FE0001FFFFFF87FFFFF801FFF80000FFFFFE01FFFFFF87FFFFF807FFFC0000FF
      FFFE01FFFFFF87FFFFF01FFFFE0001FFFFFE01FFFFFFCFFFFFE07FFFFF0003FF
      FFFE03FFFFFFFFFFFFE1FFFFFF8007FFFFFF07FFFFFFFFFFFFC7FFFFFFC01FFF
      FFFFFFFFFFFFFFFFFF9FFFFFFFF07FFF00000000000000000000000000000000
      000000000000}
  end
  inherited SqlCadastro: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_VISITANTE'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT  *'
      'FROM VISITANTE '
      'WHERE ID_VISITANTE=:ID_VISITANTE')
    Left = 768
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
  inherited SqlMovimento: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'id_up'
        ParamType = ptInput
        Value = 0
      end>
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
  inherited SqlConsulta: TSQLQuery
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
  object SqlVisitanteInterno: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_visitante'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'select * from visitante_interno'
      'where id_visitante=:id_visitante')
    SQLConnection = DM.SQLConnect
    Left = 840
    Top = 80
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
  object SqlSelectVisitante: TSQLQuery
    Params = <>
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
  object OpenDialogFOTO: TOpenDialog
    Filter = 'Imagens (*.jpg)|*.jpg'
    Left = 912
    Top = 9
  end
  object SqlMenores: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_visitante'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM menores'
      'where id_visitante=:id_visitante')
    SQLConnection = DM.SQLConnect
    Left = 840
    Top = 152
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
  object SqlMov_Diario_Visitantes: TSQLQuery
    Params = <>
    Left = 841
    Top = 287
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
  object SqlRegraVisita: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_UP'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM REGRA_VISITA'
      'WHERE DIA_SEMANA = EXTRACT(WEEKDAY FROM CURRENT_TIMESTAMP)'
      'AND ID_UP=:ID_UP'
      'ORDER BY DESCRICAO')
    SQLConnection = DM.SQLConnect
    Left = 488
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
  object SQLconspadrao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnect
    Left = 248
  end
  object SqlTodosVisitantes: TSQLQuery
    Params = <>
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
  object SqlTodosInterno: TSQLQuery
    Params = <>
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
  object SqlValidaRegra: TSQLQuery
    MaxBlobSize = -1
    Params = <>
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
    SQLConnection = DM.SQLConnect
    Left = 576
    Top = 256
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
  object SqlExecute: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT id_interno, nome_interno, rgi'
      'FROM INTERNO'
      'ORDER BY NOME_INTERNO')
    SQLConnection = DM.SQLConnect
    Left = 736
    Top = 304
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
  object SqlVisitaDia: TSQLQuery
    Params = <>
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
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 696
  end
  object SqlUltVisita: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select data_visita'
      'from mov_diario_visitantes')
    SQLConnection = DM.SQLConnect
    Left = 576
    Top = 366
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
end
