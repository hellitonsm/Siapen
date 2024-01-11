inherited FrmCadastroInternoTrabalho: TFrmCadastroInternoTrabalho
  Left = 432
  Top = 264
  Caption = 'Cadastro de Trabalho'
  ClientHeight = 584
  ClientWidth = 944
  ExplicitWidth = 956
  ExplicitHeight = 642
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 526
    ExplicitHeight = 525
    inherited ToolBarModeloCadastro: TToolBar
      Height = 508
      ExplicitHeight = 507
    end
    inherited DBNavigator1: TDBNavigator
      Top = 508
      Hints.Strings = ()
      ExplicitTop = 507
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 829
    Height = 526
    ExplicitWidth = 825
    ExplicitHeight = 525
    inherited Image2: TImage
      Width = 869
      ExplicitWidth = 869
    end
    inherited PageControlModeloCadastro: TPageControl
      Width = 829
      Height = 526
      ActivePage = TabSheetCadastro
      ExplicitWidth = 825
      ExplicitHeight = 525
      inherited TabSheetCadastro: TTabSheet
        ExplicitWidth = 821
        ExplicitHeight = 498
        inherited PanelCadastro: TPanel
          Width = 821
          Height = 498
          ExplicitHeight = 497
          inherited PageControlPrincipal: TPageControl
            Width = 819
            Height = 496
            ActivePage = TabSheet3
            TabWidth = 100
            OnChange = PageControlPrincipalChange
            ExplicitWidth = 815
            ExplicitHeight = 495
            inherited TabSheetPrincipal: TTabSheet
              ExplicitWidth = 811
              ExplicitHeight = 468
            end
            inherited TabSheetDadosGerais: TTabSheet
              ExplicitWidth = 811
              ExplicitHeight = 468
            end
            object TabSheet1: TTabSheet
              Caption = 'Trabalho'
              ImageIndex = 2
              OnShow = TabSheet1Show
              object PageControl2: TPageControl
                Left = 0
                Top = 0
                Width = 811
                Height = 468
                ActivePage = TabSheet5
                Align = alClient
                TabOrder = 0
                ExplicitWidth = 807
                ExplicitHeight = 467
                object TabSheet5: TTabSheet
                  Caption = 'Lan'#231'amento'
                  object Label48: TLabel
                    Left = 152
                    Top = 16
                    Width = 23
                    Height = 13
                    Caption = 'Data'
                    FocusControl = DBEditdtsetor
                  end
                  object Label50: TLabel
                    Left = 278
                    Top = 16
                    Width = 72
                    Height = 13
                    Caption = 'Fun'#231#227'o Interno'
                  end
                  object Label51: TLabel
                    Left = 216
                    Top = 112
                    Width = 22
                    Height = 13
                    Caption = 'OBS'
                    FocusControl = DBEditobstrabalho
                  end
                  object Label8: TLabel
                    Left = 336
                    Top = 64
                    Width = 70
                    Height = 13
                    Caption = 'Setor Trabalho'
                    FocusControl = DBEditdtsetor
                  end
                  object Label14: TLabel
                    Left = 16
                    Top = 16
                    Width = 95
                    Height = 13
                    Caption = 'N'#250'mero Documento'
                    FocusControl = DBEditdtsetor
                  end
                  object Label15: TLabel
                    Left = 16
                    Top = 64
                    Width = 71
                    Height = 13
                    Caption = 'Local Trabalho'
                    FocusControl = DBEditdtsetor
                  end
                  object SpeedButton3: TSpeedButton
                    Left = 304
                    Top = 80
                    Width = 23
                    Height = 22
                    Hint = 'Cadastrar Local de Trabalho'
                    Caption = '...'
                    Flat = True
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton3Click
                  end
                  object SpeedButton10: TSpeedButton
                    Left = 588
                    Top = 32
                    Width = 23
                    Height = 22
                    Hint = 'Cadastrar Fun'#231#227'o'
                    Caption = '...'
                    Flat = True
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton10Click
                  end
                  object SpeedButton12: TSpeedButton
                    Left = 592
                    Top = 80
                    Width = 23
                    Height = 22
                    Hint = 'Cadastrar Local de Trabalho'
                    Caption = '...'
                    Flat = True
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton12Click
                  end
                  object Label74: TLabel
                    Left = 16
                    Top = 112
                    Width = 83
                    Height = 13
                    Caption = 'Tipo de Atividade'
                  end
                  object DBGrid3: TDBGrid
                    Left = 16
                    Top = 192
                    Width = 625
                    Height = 169
                    DataSource = dshistorico_trabalho
                    PopupMenu = PopupMenuIsolamento
                    TabOrder = 7
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'DOCUMENTO'
                        Title.Caption = 'Documento'
                        Width = 71
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DATA'
                        Title.Caption = 'Data Trabalho'
                        Width = 87
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'Local Trabalho'
                        Width = 139
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'Setor Trabalho'
                        Width = 118
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'Fun'#231#227'o'
                        Width = 101
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'OBS'
                        Width = 257
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DATA_SAIDA'
                        Title.Caption = 'Data Saida'
                        Width = 92
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'MOTIVO_SAIDA'
                        Title.Caption = 'Motivo Saida'
                        Width = 141
                        Visible = True
                      end>
                  end
                  object DBEditdtsetor: TDBEdit
                    Left = 152
                    Top = 32
                    Width = 121
                    Height = 21
                    DataField = 'DATA_SETOR'
                    DataSource = DsCadastro
                    TabOrder = 1
                  end
                  object DBLookupComboBoxsetortrabalho: TDBLookupComboBox
                    Left = 336
                    Top = 80
                    Width = 249
                    Height = 21
                    DataField = 'IDSETOR_TRABALHO'
                    DataSource = DsCadastro
                    KeyField = 'ID_SETOR_TRABALHO'
                    ListField = 'SETOR_TRABALHO'
                    ListSource = DM.DsSetorTrabalho
                    TabOrder = 4
                  end
                  object DBEditobstrabalho: TDBEdit
                    Left = 216
                    Top = 128
                    Width = 401
                    Height = 21
                    DataField = 'OBSTRABALHO'
                    DataSource = DsCadastro
                    TabOrder = 6
                  end
                  object DBLookupComboBoxfuncaointerno: TDBLookupComboBox
                    Left = 278
                    Top = 32
                    Width = 307
                    Height = 21
                    DataField = 'ID_FUNCAOINTERNO'
                    DataSource = DsCadastro
                    KeyField = 'ID_FUNCAO_INTERNO'
                    ListField = 'FUNCAO_INTERNO'
                    ListSource = DM.DSFUNCAOINTERNO
                    TabOrder = 2
                  end
                  object DBEditdoctrabalho: TDBEdit
                    Left = 16
                    Top = 32
                    Width = 129
                    Height = 21
                    DataField = 'DOC_TRABALHO'
                    DataSource = DsCadastro
                    TabOrder = 0
                  end
                  object DBLookupComboBoxlocaltrabalho: TDBLookupComboBox
                    Left = 16
                    Top = 80
                    Width = 281
                    Height = 21
                    DataField = 'ID_LOCAL_TRABALHO'
                    DataSource = DsCadastro
                    KeyField = 'ID_LOCAL_TRABALHO'
                    ListField = 'LOCAL_TRABALHO'
                    ListSource = DM.dslocaltrabalho
                    TabOrder = 3
                  end
                  object DBComboBoxtipoatividade: TDBComboBox
                    Left = 19
                    Top = 128
                    Width = 182
                    Height = 21
                    DataField = 'TIPO_ATIVIDADE'
                    DataSource = DsCadastro
                    Items.Strings = (
                      'INTERNA'
                      'EXTERNA')
                    TabOrder = 5
                  end
                end
                object TabSheet8: TTabSheet
                  Caption = 'Hor'#225'rios'
                  ImageIndex = 1
                  object Label60: TLabel
                    Left = 152
                    Top = 72
                    Width = 118
                    Height = 13
                    Caption = 'Hor'#225'rio Entrada Semanal'
                    FocusControl = DBEditentradasemanal
                  end
                  object Label61: TLabel
                    Left = 8
                    Top = 72
                    Width = 110
                    Height = 13
                    Caption = 'Hor'#225'rio Sa'#237'da Semanal'
                    FocusControl = DBEditsaidasemanal
                  end
                  object Label62: TLabel
                    Left = 296
                    Top = 24
                    Width = 66
                    Height = 13
                    Caption = 'Turma Said'#227'o'
                    FocusControl = DBEdit22
                  end
                  object Label67: TLabel
                    Left = 152
                    Top = 24
                    Width = 110
                    Height = 13
                    Caption = 'Hor'#225'rio Entrada Said'#227'o'
                    FocusControl = DBEditentradasaidao
                  end
                  object Label68: TLabel
                    Left = 8
                    Top = 24
                    Width = 100
                    Height = 13
                    Caption = 'Hor'#225'rio Saida Said'#227'o'
                    FocusControl = DBEditsaidasaidao
                  end
                  object Label70: TLabel
                    Left = 440
                    Top = 121
                    Width = 114
                    Height = 13
                    Caption = 'Hor'#225'rio Entrada Sabado'
                    FocusControl = DBEditentradasabado
                  end
                  object Label71: TLabel
                    Left = 296
                    Top = 121
                    Width = 106
                    Height = 13
                    Caption = 'Hor'#225'rio Sa'#237'da Sabado'
                    FocusControl = DBEditsaidasabado
                  end
                  object Label72: TLabel
                    Left = 440
                    Top = 169
                    Width = 119
                    Height = 13
                    Caption = 'Hor'#225'rio Entrada Domingo'
                    FocusControl = DBEditentradadomingo
                  end
                  object Label73: TLabel
                    Left = 296
                    Top = 169
                    Width = 111
                    Height = 13
                    Caption = 'Hor'#225'rio Sa'#237'da Domingo'
                    FocusControl = DBEditsaidadomingo
                  end
                  object Label75: TLabel
                    Left = 376
                    Top = 24
                    Width = 25
                    Height = 13
                    Caption = 'Corte'
                    FocusControl = DBEdit41
                  end
                  object DBEditentradasemanal: TDBEdit
                    Left = 152
                    Top = 88
                    Width = 137
                    Height = 21
                    DataField = 'HORARIO_ENTRADA_SEMANAL'
                    DataSource = DsCadastro
                    TabOrder = 5
                  end
                  object DBEditsaidasemanal: TDBEdit
                    Left = 8
                    Top = 88
                    Width = 134
                    Height = 21
                    DataField = 'HORARIO_SAIDA_SEMANAL'
                    DataSource = DsCadastro
                    TabOrder = 4
                  end
                  object DBEdit22: TDBEdit
                    Left = 296
                    Top = 40
                    Width = 73
                    Height = 21
                    DataField = 'TURMA_SAIDAO'
                    DataSource = DsCadastro
                    TabOrder = 2
                  end
                  object DBEditentradasaidao: TDBEdit
                    Left = 152
                    Top = 40
                    Width = 134
                    Height = 21
                    DataField = 'HORARIO_ENTRADA_SAIDAO'
                    DataSource = DsCadastro
                    TabOrder = 1
                  end
                  object DBEditsaidasaidao: TDBEdit
                    Left = 8
                    Top = 40
                    Width = 134
                    Height = 21
                    DataField = 'HORARIO_SAIDA_SAIDAO'
                    DataSource = DsCadastro
                    TabOrder = 0
                  end
                  object DBEditentradasabado: TDBEdit
                    Left = 440
                    Top = 137
                    Width = 134
                    Height = 21
                    DataField = 'HORARIO_ENTRADA_SABADO'
                    DataSource = DsCadastro
                    TabOrder = 7
                  end
                  object DBEditsaidasabado: TDBEdit
                    Left = 296
                    Top = 137
                    Width = 134
                    Height = 21
                    DataField = 'HORARIO_SAIDA_SABADO'
                    DataSource = DsCadastro
                    TabOrder = 6
                  end
                  object DBEditentradadomingo: TDBEdit
                    Left = 440
                    Top = 185
                    Width = 134
                    Height = 21
                    DataField = 'HORARIO_ENTRADA_DOMINGO'
                    DataSource = DsCadastro
                    TabOrder = 9
                  end
                  object DBEditsaidadomingo: TDBEdit
                    Left = 296
                    Top = 185
                    Width = 134
                    Height = 21
                    DataField = 'HORARIO_SAIDA_DOMINGO'
                    DataSource = DsCadastro
                    TabOrder = 8
                  end
                  object DBEdit41: TDBEdit
                    Left = 376
                    Top = 40
                    Width = 134
                    Height = 21
                    DataField = 'CORTE'
                    DataSource = DsCadastro
                    TabOrder = 3
                  end
                  object GroupBox2: TGroupBox
                    Left = 7
                    Top = 114
                    Width = 285
                    Height = 241
                    Caption = 'Para dias de folga deixe em branco:'
                    TabOrder = 10
                    object Label76: TLabel
                      Left = 2
                      Top = 24
                      Width = 112
                      Height = 13
                      Caption = 'Hor'#225'rio Sa'#237'da Segunda'
                      FocusControl = DBEdit15
                    end
                    object Label77: TLabel
                      Left = 146
                      Top = 24
                      Width = 120
                      Height = 13
                      Caption = 'Hor'#225'rio Entrada Segunda'
                      FocusControl = DBEdit21
                    end
                    object Label81: TLabel
                      Left = 2
                      Top = 66
                      Width = 97
                      Height = 13
                      Caption = 'Hor'#225'rio Sa'#237'da Ter'#231'a'
                      FocusControl = DBEdit23
                    end
                    object Label84: TLabel
                      Left = 146
                      Top = 66
                      Width = 105
                      Height = 13
                      Caption = 'Hor'#225'rio Entrada Ter'#231'a'
                      FocusControl = DBEdit30
                    end
                    object Label85: TLabel
                      Left = 2
                      Top = 108
                      Width = 101
                      Height = 13
                      Caption = 'Hor'#225'rio Sa'#237'da Quarta'
                      FocusControl = DBEdit36
                    end
                    object Label86: TLabel
                      Left = 146
                      Top = 108
                      Width = 109
                      Height = 13
                      Caption = 'Hor'#225'rio Entrada Quarta'
                      FocusControl = DBEdit37
                    end
                    object Label87: TLabel
                      Left = 2
                      Top = 150
                      Width = 100
                      Height = 13
                      Caption = 'Hor'#225'rio Sa'#237'da Quinta'
                      FocusControl = DBEdit38
                    end
                    object Label88: TLabel
                      Left = 146
                      Top = 150
                      Width = 108
                      Height = 13
                      Caption = 'Hor'#225'rio Entrada Quinta'
                      FocusControl = DBEdit39
                    end
                    object Label89: TLabel
                      Left = 2
                      Top = 192
                      Width = 96
                      Height = 13
                      Caption = 'Hor'#225'rio Sa'#237'da Sexta'
                      FocusControl = DBEdit40
                    end
                    object Label90: TLabel
                      Left = 146
                      Top = 192
                      Width = 104
                      Height = 13
                      Caption = 'Hor'#225'rio Entrada Sexta'
                      FocusControl = DBEdit42
                    end
                    object DBEdit15: TDBEdit
                      Left = 2
                      Top = 40
                      Width = 134
                      Height = 21
                      DataField = 'HORARIO_SAIDA_SEG'
                      DataSource = DsCadastro
                      TabOrder = 0
                    end
                    object DBEdit21: TDBEdit
                      Left = 146
                      Top = 40
                      Width = 137
                      Height = 21
                      DataField = 'HORARIO_ENTRADA_SEG'
                      DataSource = DsCadastro
                      TabOrder = 1
                    end
                    object DBEdit23: TDBEdit
                      Left = 2
                      Top = 82
                      Width = 134
                      Height = 21
                      DataField = 'HORARIO_SAIDA_TER'
                      DataSource = DsCadastro
                      TabOrder = 2
                    end
                    object DBEdit30: TDBEdit
                      Left = 146
                      Top = 82
                      Width = 137
                      Height = 21
                      DataField = 'HORARIO_ENTRADA_TER'
                      DataSource = DsCadastro
                      TabOrder = 3
                    end
                    object DBEdit36: TDBEdit
                      Left = 2
                      Top = 124
                      Width = 134
                      Height = 21
                      DataField = 'HORARIO_SAIDA_QUA'
                      DataSource = DsCadastro
                      TabOrder = 4
                    end
                    object DBEdit37: TDBEdit
                      Left = 146
                      Top = 124
                      Width = 137
                      Height = 21
                      DataField = 'HORARIO_ENTRADA_QUA'
                      DataSource = DsCadastro
                      TabOrder = 5
                    end
                    object DBEdit38: TDBEdit
                      Left = 2
                      Top = 166
                      Width = 134
                      Height = 21
                      DataField = 'HORARIO_SAIDA_QUI'
                      DataSource = DsCadastro
                      TabOrder = 6
                    end
                    object DBEdit39: TDBEdit
                      Left = 146
                      Top = 166
                      Width = 137
                      Height = 21
                      DataField = 'HORARIO_ENTRADA_QUI'
                      DataSource = DsCadastro
                      TabOrder = 7
                    end
                    object DBEdit40: TDBEdit
                      Left = 2
                      Top = 208
                      Width = 134
                      Height = 21
                      DataField = 'HORARIO_SAIDA_SEX'
                      DataSource = DsCadastro
                      TabOrder = 8
                    end
                    object DBEdit42: TDBEdit
                      Left = 146
                      Top = 208
                      Width = 137
                      Height = 21
                      DataField = 'HORARIO_ENTRADA_SEX'
                      DataSource = DsCadastro
                      TabOrder = 9
                    end
                  end
                  object BtnCopiar: TButton
                    Left = 296
                    Top = 82
                    Width = 125
                    Height = 25
                    Caption = 'Copiar para todos'
                    TabOrder = 11
                    OnClick = BtnCopiarClick
                  end
                end
              end
            end
            object TabSheet3: TTabSheet
              Caption = 'Remi'#231#227'o'
              ImageIndex = 4
              object PageControl1: TPageControl
                Left = 0
                Top = 0
                Width = 811
                Height = 468
                ActivePage = TabSheet4
                Align = alClient
                TabOrder = 0
                TabWidth = 100
                object TabSheet4: TTabSheet
                  Caption = 'Dados'
                  object Label16: TLabel
                    Left = 8
                    Top = 15
                    Width = 53
                    Height = 13
                    Caption = 'Data Inicial'
                  end
                  object Label17: TLabel
                    Left = 112
                    Top = 15
                    Width = 48
                    Height = 13
                    Caption = 'Data Final'
                  end
                  object Label26: TLabel
                    Left = 8
                    Top = 62
                    Width = 66
                    Height = 13
                    Caption = 'Dias Trabalho'
                  end
                  object GroupBox1: TGroupBox
                    Left = 226
                    Top = 17
                    Width = 156
                    Height = 37
                    Caption = 'N'#227'o Remir'
                    TabOrder = 2
                    object CHDomingo: TCheckBox
                      Left = 82
                      Top = 15
                      Width = 63
                      Height = 17
                      Caption = 'Domingo'
                      TabOrder = 1
                    end
                    object CHsabado: TCheckBox
                      Left = 13
                      Top = 16
                      Width = 60
                      Height = 17
                      Caption = 'S'#225'bado'
                      TabOrder = 0
                    end
                  end
                  object Button3: TButton
                    Left = 152
                    Top = 72
                    Width = 105
                    Height = 25
                    Caption = 'Inserir'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 5
                    OnClick = Button3Click
                  end
                  object PageControl3: TPageControl
                    Left = 8
                    Top = 112
                    Width = 625
                    Height = 193
                    ActivePage = TabSheet6
                    TabOrder = 6
                    object TabSheet6: TTabSheet
                      Caption = 'Remi'#231#245'es'
                      object DBGrid2: TDBGrid
                        Left = 16
                        Top = 24
                        Width = 585
                        Height = 120
                        DataSource = dscalc_trabalho
                        PopupMenu = PopupMenuexcluirremissao
                        TabOrder = 0
                        TitleFont.Charset = DEFAULT_CHARSET
                        TitleFont.Color = clWindowText
                        TitleFont.Height = -11
                        TitleFont.Name = 'MS Sans Serif'
                        TitleFont.Style = []
                        Columns = <
                          item
                            Expanded = False
                            FieldName = 'DATA_INICIAL'
                            Title.Caption = 'Data Inicial'
                            Width = 80
                            Visible = True
                          end
                          item
                            Expanded = False
                            FieldName = 'DATA_FINAL'
                            Title.Caption = 'Data Final'
                            Width = 102
                            Visible = True
                          end
                          item
                            Expanded = False
                            FieldName = 'QTDEDIASTRABALHADO'
                            Title.Caption = 'Dias Trabalhado'
                            Width = 111
                            Visible = True
                          end>
                      end
                    end
                  end
                  object DateTimePickerdatainicial: TDateTimePicker
                    Left = 8
                    Top = 32
                    Width = 97
                    Height = 21
                    Date = 41058.000000000000000000
                    Time = 0.395588993058481700
                    TabOrder = 0
                  end
                  object DateTimePickerdatafinal: TDateTimePicker
                    Left = 112
                    Top = 32
                    Width = 97
                    Height = 21
                    Date = 41058.000000000000000000
                    Time = 0.395606736106856300
                    TabOrder = 1
                  end
                  object Editdiastrabalhado: TEdit
                    Left = 9
                    Top = 80
                    Width = 102
                    Height = 21
                    TabOrder = 4
                    OnKeyPress = EditdiastrabalhadoKeyPress
                  end
                  object Button2: TButton
                    Left = 400
                    Top = 27
                    Width = 75
                    Height = 25
                    Caption = 'Calcular'
                    TabOrder = 3
                    OnClick = Button2Click
                  end
                end
                object TabSheet7: TTabSheet
                  Caption = 'Certid'#227'o'
                  ImageIndex = 1
                  object Label41: TLabel
                    Left = 32
                    Top = 15
                    Width = 53
                    Height = 13
                    Caption = 'Data Inicial'
                  end
                  object Label42: TLabel
                    Left = 160
                    Top = 15
                    Width = 48
                    Height = 13
                    Caption = 'Data Final'
                  end
                  object Label56: TLabel
                    Left = 128
                    Top = 64
                    Width = 83
                    Height = 13
                    Caption = 'Dias Trabalhados'
                  end
                  object Label57: TLabel
                    Left = 312
                    Top = 64
                    Width = 60
                    Height = 13
                    Caption = 'Dias Remido'
                  end
                  object Label58: TLabel
                    Left = 32
                    Top = 64
                    Width = 66
                    Height = 13
                    Caption = 'Saldo Anterior'
                  end
                  object Label59: TLabel
                    Left = 384
                    Top = 64
                    Width = 67
                    Height = 13
                    Caption = 'Saldo Pr'#243'xima'
                  end
                  object Label29: TLabel
                    Left = 224
                    Top = 64
                    Width = 81
                    Height = 13
                    Caption = 'Total Trabalhado'
                  end
                  object DateTimePickerdtinicialcertidao: TDateTimePicker
                    Left = 32
                    Top = 32
                    Width = 121
                    Height = 21
                    Date = 41058.000000000000000000
                    Time = 0.395588993058481700
                    TabOrder = 0
                  end
                  object BitBtn1: TBitBtn
                    Left = 303
                    Top = 27
                    Width = 106
                    Height = 25
                    Caption = 'Calcular'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    Glyph.Data = {
                      DE010000424DDE01000000000000760000002800000024000000120000000100
                      0400000000006801000000000000000000001000000000000000000000000000
                      80000080000000808000800000008000800080800000C0C0C000808080000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
                      33333333333F8888883F33330000324334222222443333388F3833333388F333
                      000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
                      F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
                      223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
                      3338888300003AAAAAAA33333333333888888833333333330000333333333333
                      333333333333333333FFFFFF000033333333333344444433FFFF333333888888
                      00003A444333333A22222438888F333338F3333800003A2243333333A2222438
                      F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
                      22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
                      33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
                      3333333333338888883333330000333333333333333333333333333333333333
                      0000}
                    NumGlyphs = 2
                    ParentFont = False
                    TabOrder = 2
                    OnClick = BitBtn1Click
                  end
                  object Editdiastrabalhadocertidao: TEdit
                    Left = 128
                    Top = 80
                    Width = 89
                    Height = 21
                    TabOrder = 4
                    OnKeyPress = EditdiastrabalhadocertidaoKeyPress
                  end
                  object Editdiasremidocertidao: TEdit
                    Left = 312
                    Top = 80
                    Width = 65
                    Height = 21
                    TabOrder = 6
                    OnKeyPress = EditdiasremidocertidaoKeyPress
                  end
                  object Editsaldoanterior: TEdit
                    Left = 32
                    Top = 80
                    Width = 89
                    Height = 21
                    TabOrder = 3
                    OnKeyPress = EditsaldoanteriorKeyPress
                  end
                  object Editsaldoproximo: TEdit
                    Left = 384
                    Top = 80
                    Width = 81
                    Height = 21
                    TabOrder = 7
                    OnKeyPress = EditsaldoproximoKeyPress
                  end
                  object DBGrid4: TDBGrid
                    Left = 32
                    Top = 168
                    Width = 561
                    Height = 120
                    DataSource = dscertidao_trabalho
                    PopupMenu = PopupMenuexcluiratestado
                    TabOrder = 9
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'DATA_INICIAL'
                        Title.Caption = 'Data Inicial'
                        Width = 68
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DATA_FINAL'
                        Title.Caption = 'Data Final'
                        Width = 74
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'SALDO_ANTERIOR'
                        Title.Caption = 'Saldo Anterior'
                        Width = 71
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DIAS_TRABALHADO'
                        Title.Caption = 'Dias Trabalhado'
                        Width = 89
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'total_dias'
                        Title.Caption = 'Total Trabalho'
                        Width = 77
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DIAS_REMIDO'
                        Title.Caption = 'Dias Remido'
                        Width = 69
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'SALDO_PROXIMA'
                        Title.Caption = 'Saldo Pr'#243'xima'
                        Width = 77
                        Visible = True
                      end>
                  end
                  object adpDBDateTimePickerdtfinalcertidao: TadpDBDateTimePicker
                    Left = 160
                    Top = 32
                    Width = 121
                    Height = 21
                    Date = 41094.000000000000000000
                    Time = 0.636673703702399500
                    TabOrder = 1
                    ReadOnly = False
                  end
                  object BitBtn2: TBitBtn
                    Left = 212
                    Top = 126
                    Width = 97
                    Height = 25
                    Caption = 'Inserir'
                    Default = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    Glyph.Data = {
                      DE010000424DDE01000000000000760000002800000024000000120000000100
                      0400000000006801000000000000000000001000000000000000000000000000
                      80000080000000808000800000008000800080800000C0C0C000808080000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                      3333333333333333333333330000333333333333333333333333F33333333333
                      00003333344333333333333333388F3333333333000033334224333333333333
                      338338F3333333330000333422224333333333333833338F3333333300003342
                      222224333333333383333338F3333333000034222A22224333333338F338F333
                      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
                      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
                      0000333333333A222433333333333338F338F33300003333333333A222433333
                      333333338F338F33000033333333333A222433333333333338F338F300003333
                      33333333A222433333333333338F338F00003333333333333A22433333333333
                      3338F38F000033333333333333A223333333333333338F830000333333333333
                      333A333333333333333338330000333333333333333333333333333333333333
                      0000}
                    NumGlyphs = 2
                    ParentFont = False
                    TabOrder = 8
                    OnClick = BitBtn2Click
                  end
                  object Edittotaltrabalhado: TEdit
                    Left = 224
                    Top = 80
                    Width = 81
                    Height = 21
                    TabOrder = 5
                    OnKeyPress = EdittotaltrabalhadoKeyPress
                  end
                end
              end
            end
            object TabSheet2: TTabSheet
              Caption = 'Hist'#243'rico'
              ImageIndex = 3
              object Label53: TLabel
                Left = 7
                Top = 16
                Width = 23
                Height = 13
                Caption = 'Data'
              end
              object DateTimePickerHistorico: TDateTimePicker
                Left = 7
                Top = 33
                Width = 91
                Height = 21
                Date = 45153.000000000000000000
                Time = 0.302563541663403200
                TabOrder = 0
              end
              object MemoDescricao: TMemo
                Left = 108
                Top = 33
                Width = 506
                Height = 97
                TabOrder = 1
              end
              object Button1: TButton
                Left = 6
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
              object DBGrid1: TDBGrid
                Left = 8
                Top = 157
                Width = 610
                Height = 129
                DataSource = DSHISTORICO_interno
                TabOrder = 3
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'DATA_HORA'
                    Title.Caption = 'Data'
                    Width = 72
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SETOR'
                    Title.Caption = 'Setor'
                    Width = 69
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DESCRICAO'
                    Title.Caption = 'Descri'#231#227'o'
                    Width = 435
                    Visible = True
                  end>
              end
              object DBMemo1: TDBMemo
                Left = 8
                Top = 299
                Width = 610
                Height = 121
                DataField = 'DESCRICAO'
                DataSource = DSHISTORICO_interno
                TabOrder = 4
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        ExplicitWidth = 821
        ExplicitHeight = 498
        inherited PanelLocalizaConsulta: TPanel
          Width = 821
          ExplicitWidth = 821
          inherited EditLocalizar: TEdit
            TabOrder = 1
          end
          inherited RadioGroupStatus: TRadioGroup
            Left = 691
            TabOrder = 3
            ExplicitLeft = 691
          end
          inherited chkSoundex: TCheckBox
            Width = 60
            TabOrder = 2
            ExplicitWidth = 60
          end
        end
        inherited PanelConsulta: TPanel
          Width = 821
          Height = 456
          ExplicitWidth = 821
          ExplicitHeight = 456
          inherited DBGridConsulta: TDBGrid
            Width = 819
            Height = 454
          end
          inherited DBCtrlGridConsulta: TDBCtrlGrid
            Width = 819
            Height = 454
            PanelWidth = 802
            ExplicitWidth = 819
            ExplicitHeight = 454
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 944
    ExplicitWidth = 940
  end
  inherited StatusBar1: TStatusBar
    Top = 558
    Width = 944
    ExplicitTop = 558
    ExplicitWidth = 944
  end
  inherited SqlCadastro: TFDQuery
    Left = 704
    Top = 0
  end
  inherited DspCadastro: TDataSetProvider
    Left = 732
    Top = 0
  end
  inherited CdsCadastro: TClientDataSet
    Left = 760
    Top = 0
  end
  inherited DsCadastro: TDataSource
    Left = 788
    Top = 0
  end
  inherited MainMenu1: TMainMenu
    Left = 427
    Top = 8
  end
  inherited SqlFaccao: TFDQuery
    Left = 48
    Top = 0
  end
  inherited DspFaccao: TDataSetProvider
    Left = 76
    Top = 0
  end
  inherited CdsFaccao: TClientDataSet
    Left = 104
    Top = 0
  end
  inherited DsFaccao: TDataSource
    Left = 132
    Top = 0
  end
  object SQLHISTORICO_internoold: TSQLQuery
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
      'where idinterno=:id_interno and setor like '#39'Trabalho'#39
      'order by data_hora desc')
    SQLConnection = DM.SQLConnect
    Left = 361
    Top = 225
  end
  object DSPHISTORICO_interno: TDataSetProvider
    DataSet = SQLHISTORICO_interno
    Left = 557
    Top = 9
  end
  object CDSHISTORICO_interno: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDINTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPHISTORICO_interno'
    Left = 585
    Top = 9
  end
  object DSHISTORICO_interno: TDataSource
    DataSet = CDSHISTORICO_interno
    OnDataChange = DsCadastroDataChange
    Left = 613
    Top = 9
  end
  object dscalc_trabalho: TDataSource
    DataSet = cdscalc_trabalho
    Left = 764
    Top = 113
  end
  object cdscalc_trabalho: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspcalc_trabalho'
    Left = 740
    Top = 113
  end
  object dspcalc_trabalho: TDataSetProvider
    DataSet = SQLcalc_trabalho
    Left = 708
    Top = 113
  end
  object SQLcalc_trabalhoold: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM calc_setor_trabalho'
      'where id_interno = :id_interno'
      'order by data_inicial desc')
    SQLConnection = DM.SQLConnect
    Left = 468
    Top = 217
  end
  object PopupMenuIsolamento: TPopupMenu
    Left = 812
    Top = 33
    object Liberar1: TMenuItem
      Caption = 'Liberar Setor de Trabalho'
      OnClick = Liberar1Click
    end
    object EditarTrabalho1: TMenuItem
      Caption = 'Editar Trabalho'
      OnClick = EditarTrabalho1Click
    end
    object DeletarRegistro1: TMenuItem
      Caption = 'Deletar Registro'
      OnClick = DeletarRegistro1Click
    end
  end
  object SQLhistorico_trabalhoold: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from historico_trabalho'
      'where id_interno=:id_interno '
      'order by data desc')
    SQLConnection = DM.SQLConnect
    Left = 575
    Top = 216
  end
  object dsphistorico_trabalho: TDataSetProvider
    DataSet = SQLhistorico_trabalho
    Left = 711
    Top = 208
  end
  object cdshistorico_trabalho: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dsphistorico_trabalho'
    Left = 751
    Top = 208
    object cdshistorico_trabalhoID_HISTORICO_TRABALHO: TIntegerField
      FieldName = 'ID_HISTORICO_TRABALHO'
      Required = True
    end
    object cdshistorico_trabalhoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 8192
    end
    object cdshistorico_trabalhoDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object cdshistorico_trabalhoID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdshistorico_trabalhoID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object cdshistorico_trabalhoID_SETOR_TRABALHO: TIntegerField
      FieldName = 'ID_SETOR_TRABALHO'
    end
    object cdshistorico_trabalhoID_FUNCAO_INTERNO: TIntegerField
      FieldName = 'ID_FUNCAO_INTERNO'
    end
    object cdshistorico_trabalhoOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cdshistorico_trabalhoDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 30
    end
    object cdshistorico_trabalhoID_LOCAL_TRABALHO: TIntegerField
      FieldName = 'ID_LOCAL_TRABALHO'
    end
    object cdshistorico_trabalhoDATA_SAIDA: TSQLTimeStampField
      FieldName = 'DATA_SAIDA'
    end
    object cdshistorico_trabalhoMOTIVO_SAIDA: TStringField
      FieldName = 'MOTIVO_SAIDA'
      Size = 100
    end
    object cdshistorico_trabalhoSetorTrabalho: TStringField
      FieldKind = fkLookup
      FieldName = 'Setor Trabalho'
      LookupDataSet = DM.CdsSetorTrabalho
      LookupKeyFields = 'ID_SETOR_TRABALHO'
      LookupResultField = 'SETOR_TRABALHO'
      KeyFields = 'ID_SETOR_TRABALHO'
      Size = 50
      Lookup = True
    end
    object cdshistorico_trabalhoLocalTrabalho: TStringField
      FieldKind = fkLookup
      FieldName = 'Local Trabalho'
      LookupDataSet = DM.cdslocaltrabalho
      LookupKeyFields = 'ID_LOCAL_TRABALHO'
      LookupResultField = 'LOCAL_TRABALHO'
      KeyFields = 'ID_LOCAL_TRABALHO'
      Size = 50
      Lookup = True
    end
    object cdshistorico_trabalhoFuno: TStringField
      FieldKind = fkLookup
      FieldName = 'Fun'#231#227'o'
      LookupDataSet = DM.CDSFUNCAOINTERNO
      LookupKeyFields = 'ID_FUNCAO_INTERNO'
      LookupResultField = 'FUNCAO_INTERNO'
      KeyFields = 'ID_FUNCAO_INTERNO'
      Size = 50
      Lookup = True
    end
    object cdshistorico_trabalhoDOCUMENTO_DESCLASSIFICACAO: TStringField
      FieldName = 'DOCUMENTO_DESCLASSIFICACAO'
      Size = 50
    end
  end
  object dshistorico_trabalho: TDataSource
    DataSet = cdshistorico_trabalho
    Left = 784
    Top = 208
  end
  object dscertidao_trabalho: TDataSource
    DataSet = cdscertidao_trabalho
    Left = 360
    Top = 72
  end
  object cdscertidao_trabalho: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'id_interno'
    MasterFields = 'id_interno'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspcertidao_trabalho'
    Left = 328
    Top = 72
  end
  object dspcertidao_trabalho: TDataSetProvider
    DataSet = SQLcertidao_trabalho
    Left = 296
    Top = 72
  end
  object SQLcertidao_trabalhoold: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'idinterno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from atestado_trabalho'
      'where id_interno = :idinterno')
    SQLConnection = DM.SQLConnect
    Left = 256
    Top = 232
  end
  object PopupMenuexcluirremissao: TPopupMenu
    Left = 612
    Top = 57
    object ExcluirRegistro1: TMenuItem
      Caption = 'Excluir Registro'
      OnClick = ExcluirRegistro1Click
    end
  end
  object PopupMenuexcluiratestado: TPopupMenu
    Left = 496
    Top = 57
    object ExcluirRegistro2: TMenuItem
      Caption = 'Excluir Registro'
      OnClick = ExcluirRegistro2Click
    end
  end
  object SQLcertidao_trabalho: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from atestado_trabalho'
      'where id_interno = :idinterno'
      '')
    Left = 247
    Top = 290
    ParamData = <
      item
        Name = 'IDINTERNO'
        ParamType = ptInput
      end>
  end
  object SQLHISTORICO_interno: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select *'
      'from historico_interno'
      'where idinterno=:id_interno and setor like '#39'Trabalho'#39
      'order by data_hora desc'
      '')
    Left = 367
    Top = 290
    ParamData = <
      item
        Name = 'ID_INTERNO'
        ParamType = ptInput
      end>
  end
  object SQLcalc_trabalho: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT * '
      'FROM calc_setor_trabalho'
      'where id_interno = :id_interno'
      'order by data_inicial desc'
      '')
    Left = 479
    Top = 290
    ParamData = <
      item
        Name = 'ID_INTERNO'
        ParamType = ptInput
      end>
  end
  object SQLhistorico_trabalho: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select *'
      'from HISTORICO_TRABALHO'
      'where id_interno=:id_interno '
      'order by data desc')
    Left = 591
    Top = 290
    ParamData = <
      item
        Name = 'ID_INTERNO'
        ParamType = ptInput
      end>
  end
end
