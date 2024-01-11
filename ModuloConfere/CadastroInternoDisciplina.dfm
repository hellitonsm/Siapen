inherited FrmCadastroInternoDisciplina: TFrmCadastroInternoDisciplina
  Left = 188
  Top = 129
  Caption = 'Cadastro da Disciplina'
  ClientHeight = 583
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 525
    ExplicitHeight = 524
    inherited ToolBarModeloCadastro: TToolBar
      Height = 507
      ExplicitHeight = 506
    end
    inherited DBNavigator1: TDBNavigator
      Top = 507
      Hints.Strings = ()
      ExplicitTop = 506
    end
  end
  inherited PanelModeloCadastro: TPanel
    Height = 525
    inherited Image2: TImage
      Width = 997
      ExplicitWidth = 997
    end
    inherited PageControlModeloCadastro: TPageControl
      Height = 525
      inherited TabSheetCadastro: TTabSheet
        ExplicitHeight = 497
        inherited PanelCadastro: TPanel
          Height = 497
          inherited PageControlPrincipal: TPageControl
            Height = 495
            ActivePage = TabSheet4
            inherited TabSheetPrincipal: TTabSheet
              ExplicitHeight = 467
              inherited SpeedButton1: TSpeedButton
                Left = 335
                ExplicitLeft = 335
              end
              inherited SpeedButton2: TSpeedButton
                Left = 335
                ExplicitLeft = 335
              end
            end
            inherited TabSheetDadosGerais: TTabSheet
              ExplicitHeight = 467
            end
            object TabSheetDisciplina: TTabSheet
              Caption = 'Disciplina'
              ImageIndex = 2
              object PageControlDisciplina: TPageControl
                Left = 0
                Top = 0
                Width = 807
                Height = 467
                ActivePage = faltasdisciplinares
                Align = alClient
                TabOrder = 0
                TabWidth = 200
                object faltasdisciplinares: TTabSheet
                  Caption = 'Faltas Disciplinares'
                  object Label120: TLabel
                    Left = 8
                    Top = 4
                    Width = 74
                    Height = 13
                    Caption = 'Falta Disciplinar'
                    Visible = False
                  end
                  object Label16: TLabel
                    Left = 9
                    Top = 100
                    Width = 73
                    Height = 13
                    Caption = 'N'#186'  Documento'
                    Visible = False
                  end
                  object Label121: TLabel
                    Left = 97
                    Top = 100
                    Width = 90
                    Height = 13
                    Caption = 'Data da Incid'#234'ncia'
                    Visible = False
                  end
                  object Label17: TLabel
                    Left = 233
                    Top = 158
                    Width = 42
                    Height = 13
                    Caption = 'Situa'#231#227'o'
                    Visible = False
                  end
                  object Label15: TLabel
                    Left = 112
                    Top = 158
                    Width = 102
                    Height = 13
                    Caption = 'Data da Condena'#231#227'o'
                    Visible = False
                  end
                  object Label26: TLabel
                    Left = 6
                    Top = 158
                    Width = 85
                    Height = 13
                    Caption = 'Data Reabilita'#231#227'o'
                    Visible = False
                  end
                  object SpeedButton12: TSpeedButton
                    Left = 721
                    Top = 18
                    Width = 23
                    Height = 22
                    Hint = 'Cadastrar Falta Disciplinar'
                    Caption = '...'
                    Flat = True
                    ParentShowHint = False
                    ShowHint = True
                    Visible = False
                    OnClick = SpeedButton12Click
                  end
                  object Label41: TLabel
                    Left = 521
                    Top = 159
                    Width = 48
                    Height = 13
                    Caption = 'Resultado'
                    Visible = False
                  end
                  object Label29: TLabel
                    Left = 407
                    Top = 159
                    Width = 74
                    Height = 13
                    Caption = 'Data Resultado'
                    Visible = False
                  end
                  object Label50: TLabel
                    Left = 571
                    Top = 99
                    Width = 101
                    Height = 13
                    Caption = 'Qtde Dias Isolamento'
                    Visible = False
                  end
                  object Label42: TLabel
                    Left = 455
                    Top = 99
                    Width = 107
                    Height = 13
                    Caption = 'Data In'#237'cio Isolamento'
                    Visible = False
                  end
                  object Label122: TLabel
                    Left = 9
                    Top = 254
                    Width = 58
                    Height = 13
                    Caption = 'Observa'#231#227'o'
                    Visible = False
                  end
                  object Label14: TLabel
                    Left = 7
                    Top = 216
                    Width = 89
                    Height = 13
                    Caption = 'Tipo Procedimento'
                    Visible = False
                  end
                  object Label57: TLabel
                    Left = 354
                    Top = 217
                    Width = 91
                    Height = 13
                    Caption = 'Data Procedimento'
                    Visible = False
                  end
                  object Label58: TLabel
                    Left = 242
                    Top = 217
                    Width = 83
                    Height = 13
                    Caption = 'N'#186'  Procedimento'
                    Visible = False
                  end
                  object Label61: TLabel
                    Left = 198
                    Top = 99
                    Width = 81
                    Height = 13
                    Caption = 'Data Inst portaria'
                    Visible = False
                  end
                  object Label62: TLabel
                    Left = 290
                    Top = 100
                    Width = 43
                    Height = 13
                    Hint = 'Natureza da falta aplicada (leve, media, grave)'
                    Caption = 'Natureza'
                    ParentShowHint = False
                    ShowHint = True
                    Visible = False
                  end
                  object Label48: TLabel
                    Left = 689
                    Top = 98
                    Width = 96
                    Height = 13
                    Caption = 'Data Fim Isolamento'
                    Visible = False
                  end
                  object Label67: TLabel
                    Left = 8
                    Top = 8
                    Width = 181
                    Height = 16
                    Caption = 'Este M'#243'dulo mudou para: '
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -13
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label68: TLabel
                    Left = 8
                    Top = 24
                    Width = 338
                    Height = 16
                    Caption = 'Menu Superior --> Setor ---> Conselho Disciplinar'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -13
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object DBLookupComboBoxfaltadisciplinar: TDBLookupComboBox
                    Left = 7
                    Top = 15
                    Width = 649
                    Height = 21
                    Enabled = False
                    KeyField = 'ID_FALTA_DISCIPLINAR'
                    ListField = 'FALTA_DISCIPLINAR'
                    ListSource = Dsfaltadisciplinar
                    TabOrder = 0
                    Visible = False
                  end
                  object Memo1: TMemo
                    Left = 8
                    Top = 46
                    Width = 657
                    Height = 49
                    Enabled = False
                    Lines.Strings = (
                      '')
                    TabOrder = 2
                    Visible = False
                  end
                  object Editpdi: TEdit
                    Left = 9
                    Top = 116
                    Width = 80
                    Height = 21
                    Hint = 'N'#250'mero do PDI / Documento'
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 3
                    Visible = False
                  end
                  object DateTimePickerdataincidencia: TDateTimePicker
                    Left = 97
                    Top = 116
                    Width = 97
                    Height = 21
                    Hint = 'Data do Fato / Incid'#234'ncia'
                    Date = 45254.000000000000000000
                    Time = 0.302563541663403200
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 4
                    Visible = False
                  end
                  object ComboBoxconclusao: TComboBox
                    Left = 233
                    Top = 174
                    Width = 168
                    Height = 21
                    Hint = 
                      'Situa'#231#227'o do PDI (Andamento, Concluido/Arquivado, Conclu'#237'do, Recu' +
                      'rso)'
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 5
                    Visible = False
                    Items.Strings = (
                      'Andamento'
                      'Concluido/Arquivado'
                      'Concluido'
                      'Recurso')
                  end
                  object Editcondenacao: TEdit
                    Left = 113
                    Top = 174
                    Width = 101
                    Height = 21
                    TabOrder = 7
                    Visible = False
                  end
                  object Editreabilitacao: TEdit
                    Left = 4
                    Top = 174
                    Width = 96
                    Height = 21
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 6
                    Visible = False
                  end
                  object btnBuscar: TButton
                    Left = 666
                    Top = 19
                    Width = 45
                    Height = 20
                    Caption = 'Busca'
                    TabOrder = 1
                    Visible = False
                    OnClick = btnBuscarClick
                  end
                  object ComboBoxresultado: TComboBox
                    Left = 521
                    Top = 175
                    Width = 194
                    Height = 21
                    Style = csDropDownList
                    TabOrder = 11
                    Visible = False
                    Items.Strings = (
                      'Arquivado'
                      'Absolvido'
                      'Condenado'
                      'Extinto')
                  end
                  object Editresultado: TEdit
                    Left = 408
                    Top = 175
                    Width = 109
                    Height = 21
                    TabOrder = 10
                    Visible = False
                  end
                  object Editqtdedias: TEdit
                    Left = 572
                    Top = 115
                    Width = 111
                    Height = 21
                    TabOrder = 9
                    Visible = False
                    OnExit = EditqtdediasExit
                  end
                  object Editinicioisolamento: TEdit
                    Left = 456
                    Top = 115
                    Width = 111
                    Height = 21
                    TabOrder = 8
                    Visible = False
                  end
                  object Memoobs: TMemo
                    Left = 8
                    Top = 270
                    Width = 657
                    Height = 35
                    Lines.Strings = (
                      '')
                    TabOrder = 15
                    Visible = False
                  end
                  object BitBtn1: TBitBtn
                    Left = 285
                    Top = 310
                    Width = 97
                    Height = 25
                    Caption = '&Incluir'
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
                    TabOrder = 16
                    Visible = False
                    OnClick = BitBtn1Click
                  end
                  object DBGrid6: TDBGrid
                    Left = 12
                    Top = 337
                    Width = 657
                    Height = 160
                    DataSource = Dsvincfaltadisciplinar
                    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                    PopupMenu = PopupMenuIsolamento
                    TabOrder = 17
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    Visible = False
                    OnDblClick = DBGrid6DblClick
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'NUMERO_PDI'
                        Title.Caption = 'N'#186' PDI'
                        Width = 78
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DATA_INCIDENCIA'
                        Title.Caption = 'Data Incid'#234'ncia'
                        Width = 80
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DT_INICIO_ISOLAMENTO'
                        Title.Caption = 'In'#237'cio Isolamento'
                        Width = 88
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DT_FIM_ISOLAMENTO'
                        Title.Caption = 'Fim Isolamento'
                        Width = 77
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'falta_disciplinar'
                        Title.Caption = 'Falta Disciplinar'
                        Width = 170
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CONCLUSAOCD'
                        Title.Caption = 'Situa'#231#227'o PDI'
                        Width = 133
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'RESULTADO'
                        Title.Caption = 'Resultado'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DATA_RESULTADO'
                        Title.Caption = 'Data Resultado'
                        Width = 81
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DATA_CONDENACAO'
                        Title.Caption = 'Data Condena'#231#227'o'
                        Width = 91
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DATA_REABILITACAO'
                        Title.Caption = 'Data Reabilita'#231#227'o'
                        Width = 92
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'QTDE_DIAS_ISOLAMENTO'
                        Title.Caption = 'Dias Isolamento'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'TIPO'
                        Title.Caption = 'Tipo Procedimento'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DATA_INSTAURACAO'
                        Title.Caption = 'Data Instaura'#231#227'o'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'NUMERO'
                        Title.Caption = 'N'#186' Procedimento'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'STATUS'
                        Title.Caption = 'Isolamento'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'OBS'
                        Visible = True
                      end>
                  end
                  object ComboBoxtipoprocedimento: TComboBox
                    Left = 8
                    Top = 232
                    Width = 233
                    Height = 21
                    Style = csDropDownList
                    TabOrder = 12
                    Visible = False
                    Items.Strings = (
                      'RELAT'#211'RIO DE REPREENS'#195'O'
                      'INQU'#201'RITO DISCIPLINAR')
                  end
                  object Editprocedimento: TEdit
                    Left = 355
                    Top = 233
                    Width = 110
                    Height = 21
                    TabOrder = 14
                    Visible = False
                  end
                  object Editnprocedimento: TEdit
                    Left = 243
                    Top = 233
                    Width = 102
                    Height = 21
                    TabOrder = 13
                    Visible = False
                  end
                  object EditDataInstPortaria: TEdit
                    Left = 197
                    Top = 115
                    Width = 84
                    Height = 21
                    Hint = 'Data de instaura'#231#227'o da portaria'
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 18
                    Visible = False
                  end
                  object ComboBoxNatureza: TComboBox
                    Left = 288
                    Top = 115
                    Width = 105
                    Height = 21
                    Hint = 'Tipo de natureza da falta (grave, media, leve)'
                    Style = csDropDownList
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 19
                    Visible = False
                    Items.Strings = (
                      'GRAVE'
                      'M'#201'DIA'
                      'LEVE')
                  end
                  object RadioGroup1: TRadioGroup
                    Left = 392
                    Top = 96
                    Width = 61
                    Height = 41
                    Hint = 'Selecionar se '#233' isolamento preventivo ou n'#227'o'
                    Caption = 'Preventivo'
                    Items.Strings = (
                      'S'
                      'N')
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 20
                    Visible = False
                  end
                  object Editfimisolamento: TEdit
                    Left = 686
                    Top = 114
                    Width = 104
                    Height = 21
                    TabOrder = 21
                    Visible = False
                  end
                end
                object TabSheet1: TTabSheet
                  Caption = 'Conduta'
                  ImageIndex = 2
                  object Label70: TLabel
                    Left = 16
                    Top = 17
                    Width = 91
                    Height = 13
                    Caption = 'Conduta Disciplinar'
                  end
                  object Label59: TLabel
                    Left = 16
                    Top = 64
                    Width = 22
                    Height = 13
                    Caption = 'OBS'
                    FocusControl = DBEdit15
                  end
                  object Label77: TLabel
                    Left = 328
                    Top = 16
                    Width = 114
                    Height = 13
                    Caption = 'DATA DA  INCID'#202'NCIA'
                    FocusControl = DBEdit36
                  end
                  object Label60: TLabel
                    Left = 472
                    Top = 16
                    Width = 109
                    Height = 13
                    Caption = 'DATA REABILITACAO'
                    FocusControl = DBEdit38
                  end
                  object DBComboBox6: TDBComboBox
                    Left = 16
                    Top = 33
                    Width = 305
                    Height = 21
                    DataField = 'TIPOCONDUTA'
                    DataSource = DsCadastro
                    Items.Strings = (
                      #211'timo'
                      'Bom'
                      'Regular'
                      'M'#225
                      'Prejudicado'
                      'N'#227'o Classificado Por Falta de Lapso Temporal'
                      'Aguardando CD')
                    TabOrder = 0
                    OnKeyPress = DBComboBox6KeyPress
                  end
                  object DBEdit15: TDBEdit
                    Left = 16
                    Top = 80
                    Width = 577
                    Height = 21
                    DataField = 'CONCEITO_DISCIPLINAR'
                    DataSource = DsCadastro
                    TabOrder = 3
                  end
                  object DBEdit36: TDBEdit
                    Left = 328
                    Top = 32
                    Width = 137
                    Height = 21
                    DataField = 'DATA_DELITO'
                    DataSource = DsCadastro
                    TabOrder = 1
                  end
                  object DBEdit38: TDBEdit
                    Left = 472
                    Top = 32
                    Width = 121
                    Height = 21
                    DataField = 'DATA_REABILITACAO'
                    DataSource = DsCadastro
                    TabOrder = 2
                  end
                end
                object TabSheet20: TTabSheet
                  Caption = 'Req. de Inc. (Art. 3'#186', Dec. n'#186' 6.877/08)'
                  ImageIndex = 1
                  object GroupBox1: TGroupBox
                    Left = 0
                    Top = 0
                    Width = 799
                    Height = 439
                    Align = alClient
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 0
                    object Label8: TLabel
                      Left = 16
                      Top = 14
                      Width = 585
                      Height = 32
                      Caption = 
                        'Art. 3'#186' Para a inclus'#227'o ou transfer'#234'ncia, o preso dever'#225' possuir' +
                        ', ao menos, uma das seguintes caracter'#237'sticas:'
                      WordWrap = True
                    end
                    object DBGrid5: TDBGrid
                      Left = 8
                      Top = 120
                      Width = 594
                      Height = 241
                      DataSource = dsvincartigoperfil
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 1
                      TitleFont.Charset = DEFAULT_CHARSET
                      TitleFont.Color = clWindowText
                      TitleFont.Height = -13
                      TitleFont.Name = 'MS Sans Serif'
                      TitleFont.Style = [fsBold]
                      Columns = <
                        item
                          Expanded = False
                          FieldName = 'ARTIGO_PERFIL'
                          Title.Caption = 'Requisito(s)'
                          Width = 818
                          Visible = True
                        end>
                    end
                    object DBLookupComboBoxartigoperfil: TDBLookupComboBox
                      Left = 8
                      Top = 52
                      Width = 594
                      Height = 21
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      KeyField = 'ID_ARTIGO_PERFIL'
                      ListField = 'ARTIGO_PERFIL'
                      ListSource = DM.dsartigo_perfil
                      ParentFont = False
                      TabOrder = 0
                    end
                  end
                end
              end
            end
            object TabSheet3: TTabSheet
              Caption = 'Hist'#243'rico'
              ImageIndex = 3
              object Label53: TLabel
                Left = 7
                Top = 16
                Width = 62
                Height = 13
                Caption = 'Data do Fato'
              end
              object DateTimePickerHistorico: TDateTimePicker
                Left = 7
                Top = 33
                Width = 91
                Height = 21
                Date = 45254.000000000000000000
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
                Top = 149
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
                    Width = 75
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SETOR'
                    Title.Caption = 'Setor'
                    Width = 66
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DESCRICAO'
                    Title.Caption = 'Descri'#231#227'o'
                    Visible = True
                  end>
              end
              object DBMemo1: TDBMemo
                Left = 8
                Top = 287
                Width = 610
                Height = 121
                DataField = 'DESCRICAO'
                DataSource = DSHISTORICO_interno
                TabOrder = 4
              end
            end
            object TabSheet4: TTabSheet
              Caption = 'Elogio'
              ImageIndex = 4
              object Label51: TLabel
                Left = 7
                Top = 16
                Width = 23
                Height = 13
                Caption = 'Data'
              end
              object Label56: TLabel
                Left = 112
                Top = 16
                Width = 95
                Height = 13
                Caption = 'Descri'#231#227'o do Elogio'
              end
              object DateTimePickerelogio: TDateTimePicker
                Left = 7
                Top = 33
                Width = 91
                Height = 21
                Date = 45254.000000000000000000
                Time = 0.302563541663403200
                TabOrder = 0
              end
              object Memoelogio: TMemo
                Left = 108
                Top = 33
                Width = 506
                Height = 97
                TabOrder = 1
              end
              object DBGrid2: TDBGrid
                Left = 8
                Top = 157
                Width = 610
                Height = 140
                DataSource = dshistoricoelogio
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
                    Width = 74
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SETOR'
                    Title.Caption = 'Setor'
                    Width = 66
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DESCRICAO'
                    Title.Caption = 'Descri'#231#227'o'
                    Width = 445
                    Visible = True
                  end>
              end
              object DBMemo2: TDBMemo
                Left = 8
                Top = 327
                Width = 610
                Height = 106
                DataField = 'DESCRICAO'
                DataSource = dshistoricoelogio
                TabOrder = 4
              end
              object BitBtn2: TBitBtn
                Left = 16
                Top = 104
                Width = 81
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
                TabOrder = 2
                OnClick = BitBtn2Click
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        ExplicitHeight = 497
        inherited PanelLocalizaConsulta: TPanel
          inherited EditLocalizar: TEdit
            TabOrder = 1
          end
          inherited RadioGroupStatus: TRadioGroup
            Left = 684
            TabOrder = 3
            ExplicitLeft = 684
          end
          inherited chkSoundex: TCheckBox
            TabOrder = 2
          end
        end
        inherited PanelConsulta: TPanel
          Height = 455
          ExplicitHeight = 456
          inherited DBGridConsulta: TDBGrid
            Height = 453
            TabOrder = 1
          end
          inherited DBCtrlGridConsulta: TDBCtrlGrid
            Width = 815
            Height = 453
            PanelWidth = 798
            TabOrder = 0
          end
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 557
  end
  inherited SqlCadastro: TFDQuery
    Left = 792
    Top = 296
  end
  inherited DspCadastro: TDataSetProvider
    Left = 828
    Top = 296
  end
  inherited CdsCadastro: TClientDataSet
    Left = 864
    Top = 296
  end
  inherited DsCadastro: TDataSource
    Left = 900
    Top = 296
  end
  inherited DsConsulta: TDataSource
    Left = 365
  end
  inherited CdsConsulta: TClientDataSet
    Left = 337
  end
  inherited DspConsulta: TDataSetProvider
    Left = 309
  end
  inherited SqlConsulta: TFDQuery
    Left = 281
    Top = 3
  end
  inherited SqlFaccao: TFDQuery
    Connection = DM.SQLConnect
    Left = 380
    Top = 60
  end
  inherited DspFaccao: TDataSetProvider
    Left = 408
    Top = 60
  end
  inherited CdsFaccao: TClientDataSet
    Left = 436
    Top = 60
  end
  inherited DsFaccao: TDataSource
    Left = 464
    Top = 60
  end
  object Dsvincfaltadisciplinar: TDataSource
    DataSet = Cdsvincfaltadisciplinar
    OnDataChange = DsvincfaltadisciplinarDataChange
    Left = 556
    Top = 8
  end
  object Cdsvincfaltadisciplinar: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'Dspvincpfaltadisciplinar'
    OnCalcFields = CdsvincfaltadisciplinarCalcFields
    Left = 528
    Top = 8
    object Cdsvincfaltadisciplinarfalta_disciplinar: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'falta_disciplinar'
      Size = 200
    end
    object CdsvincfaltadisciplinarID_FALTA_DISCIPLINAR: TIntegerField
      FieldName = 'ID_FALTA_DISCIPLINAR'
    end
    object CdsvincfaltadisciplinarID_VINC_FALTA_DISCIPLINAR: TIntegerField
      FieldName = 'ID_VINC_FALTA_DISCIPLINAR'
      Required = True
    end
    object CdsvincfaltadisciplinarID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object CdsvincfaltadisciplinarDATA_INCIDENCIA: TSQLTimeStampField
      FieldName = 'DATA_INCIDENCIA'
    end
    object CdsvincfaltadisciplinarDATA_REABILITACAO: TSQLTimeStampField
      FieldName = 'DATA_REABILITACAO'
    end
    object CdsvincfaltadisciplinarOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object CdsvincfaltadisciplinarCONCLUSAOCD: TStringField
      FieldName = 'CONCLUSAOCD'
      Size = 100
    end
    object CdsvincfaltadisciplinarNUMERO_PDI: TStringField
      FieldName = 'NUMERO_PDI'
      Size = 30
    end
    object CdsvincfaltadisciplinarDATA_CONDENACAO: TSQLTimeStampField
      FieldName = 'DATA_CONDENACAO'
    end
    object CdsvincfaltadisciplinarRESULTADO: TStringField
      FieldName = 'RESULTADO'
      Size = 50
    end
    object CdsvincfaltadisciplinarDATA_RESULTADO: TSQLTimeStampField
      FieldName = 'DATA_RESULTADO'
    end
    object CdsvincfaltadisciplinarDT_INICIO_ISOLAMENTO: TSQLTimeStampField
      FieldName = 'DT_INICIO_ISOLAMENTO'
    end
    object CdsvincfaltadisciplinarDT_FIM_ISOLAMENTO: TSQLTimeStampField
      FieldName = 'DT_FIM_ISOLAMENTO'
    end
    object CdsvincfaltadisciplinarQTDE_DIAS_ISOLAMENTO: TIntegerField
      FieldName = 'QTDE_DIAS_ISOLAMENTO'
    end
    object CdsvincfaltadisciplinarSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 10
    end
    object CdsvincfaltadisciplinarID_UP: TIntegerField
      FieldName = 'ID_UP'
    end
    object CdsvincfaltadisciplinarNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 30
    end
    object CdsvincfaltadisciplinarDATA_INSTAURACAO: TSQLTimeStampField
      FieldName = 'DATA_INSTAURACAO'
    end
    object CdsvincfaltadisciplinarTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object CdsvincfaltadisciplinarDATA_INST_PORTARIA: TSQLTimeStampField
      FieldName = 'DATA_INST_PORTARIA'
    end
  end
  object Dspvincpfaltadisciplinar: TDataSetProvider
    DataSet = Sqlvincfaltadisciplinar
    Left = 500
    Top = 8
  end
  object Sqlvincfaltadisciplinarold: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM vinc_falta_disciplinar'
      'where id_interno = :id_interno'
      'order by data_incidencia desc')
    SQLConnection = DM.SQLConnect
    Left = 520
    Top = 240
    object SqlvincfaltadisciplinaroldID_VINC_FALTA_DISCIPLINAR: TIntegerField
      FieldName = 'ID_VINC_FALTA_DISCIPLINAR'
      Required = True
    end
    object SqlvincfaltadisciplinaroldID_FALTA_DISCIPLINAR: TIntegerField
      FieldName = 'ID_FALTA_DISCIPLINAR'
    end
    object SqlvincfaltadisciplinaroldID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object SqlvincfaltadisciplinaroldDATA_INCIDENCIA: TSQLTimeStampField
      FieldName = 'DATA_INCIDENCIA'
    end
    object SqlvincfaltadisciplinaroldDATA_REABILITACAO: TSQLTimeStampField
      FieldName = 'DATA_REABILITACAO'
    end
    object SqlvincfaltadisciplinaroldOBS: TStringField
      FieldName = 'OBS'
      Size = 8192
    end
    object SqlvincfaltadisciplinaroldCONCLUSAOCD: TStringField
      FieldName = 'CONCLUSAOCD'
      Size = 100
    end
    object SqlvincfaltadisciplinaroldNUMERO_PDI: TStringField
      FieldName = 'NUMERO_PDI'
      Size = 30
    end
    object SqlvincfaltadisciplinaroldDATA_CONDENACAO: TSQLTimeStampField
      FieldName = 'DATA_CONDENACAO'
    end
    object SqlvincfaltadisciplinaroldRESULTADO: TStringField
      FieldName = 'RESULTADO'
      Size = 50
    end
    object SqlvincfaltadisciplinaroldDATA_RESULTADO: TSQLTimeStampField
      FieldName = 'DATA_RESULTADO'
    end
    object SqlvincfaltadisciplinaroldDT_INICIO_ISOLAMENTO: TSQLTimeStampField
      FieldName = 'DT_INICIO_ISOLAMENTO'
    end
    object SqlvincfaltadisciplinaroldDT_FIM_ISOLAMENTO: TSQLTimeStampField
      FieldName = 'DT_FIM_ISOLAMENTO'
    end
    object SqlvincfaltadisciplinaroldQTDE_DIAS_ISOLAMENTO: TIntegerField
      FieldName = 'QTDE_DIAS_ISOLAMENTO'
    end
    object SqlvincfaltadisciplinaroldSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 10
    end
    object SqlvincfaltadisciplinaroldID_UP: TIntegerField
      FieldName = 'ID_UP'
    end
    object SqlvincfaltadisciplinaroldNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 30
    end
    object SqlvincfaltadisciplinaroldDATA_INSTAURACAO: TSQLTimeStampField
      FieldName = 'DATA_INSTAURACAO'
    end
    object SqlvincfaltadisciplinaroldTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object SqlvincfaltadisciplinaroldDATA_INST_PORTARIA: TSQLTimeStampField
      FieldName = 'DATA_INST_PORTARIA'
    end
  end
  object dsvincartigoperfil: TDataSource
    DataSet = cdsvincartigoperfil
    Left = 680
    Top = 8
  end
  object cdsvincartigoperfil: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPvincartigoperfil'
    Left = 652
    Top = 8
  end
  object DSPvincartigoperfil: TDataSetProvider
    DataSet = SQLvincartigoperfil
    Left = 624
    Top = 8
  end
  object DSPcalcfaltadisciplinar: TDataSetProvider
    DataSet = SQLcalcfaltadisciplinar
    Left = 748
    Top = 8
  end
  object CDScalcfaltadisciplinar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPcalcfaltadisciplinar'
    Left = 776
    Top = 8
  end
  object DScalcfaltadisciplinar: TDataSource
    DataSet = CDScalcfaltadisciplinar
    OnDataChange = DsCadastroDataChange
    Left = 804
    Top = 8
  end
  object DSPHISTORICO_interno: TDataSetProvider
    DataSet = SQLHISTORICO_interno
    Left = 849
    Top = 93
  end
  object CDSHISTORICO_interno: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDINTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPHISTORICO_interno'
    Left = 873
    Top = 93
    object CDSHISTORICO_internoIDHISTORICO_INTERNO: TIntegerField
      FieldName = 'IDHISTORICO_INTERNO'
      Required = True
    end
    object CDSHISTORICO_internoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 16386
    end
    object CDSHISTORICO_internoDATA_HORA: TSQLTimeStampField
      FieldName = 'DATA_HORA'
      Required = True
    end
    object CDSHISTORICO_internoIDINTERNO: TIntegerField
      FieldName = 'IDINTERNO'
      Required = True
    end
    object CDSHISTORICO_internoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object CDSHISTORICO_internoMOTIVO_SAIDA: TStringField
      FieldName = 'MOTIVO_SAIDA'
      Size = 50
    end
    object CDSHISTORICO_internoIDPROCEDENCIA: TIntegerField
      FieldName = 'IDPROCEDENCIA'
    end
    object CDSHISTORICO_internoIDUP: TIntegerField
      FieldName = 'IDUP'
    end
    object CDSHISTORICO_internoSETOR: TStringField
      FieldName = 'SETOR'
      Size = 50
    end
    object CDSHISTORICO_internoID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object CDSHISTORICO_internoTIPO_HISTORICO: TStringField
      FieldName = 'TIPO_HISTORICO'
      Size = 30
    end
  end
  object DSHISTORICO_interno: TDataSource
    DataSet = CDSHISTORICO_interno
    OnDataChange = DsCadastroDataChange
    Left = 901
    Top = 93
  end
  object PopupMenuIsolamento: TPopupMenu
    Left = 748
    Top = 65
    object Liberar1: TMenuItem
      Caption = 'Pena Cumprida/Liberada'
      OnClick = Liberar1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object EditarFalta1: TMenuItem
      Caption = 'Editar Falta'
      OnClick = EditarFalta1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      OnClick = Excluir1Click
    end
  end
  object dsphistoricoelogio: TDataSetProvider
    DataSet = SQLhistoricoelogio
    Left = 829
    Top = 193
  end
  object cdshistoricoelogio: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDINTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dsphistoricoelogio'
    Left = 857
    Top = 193
    object IntegerField1: TIntegerField
      FieldName = 'IDHISTORICO_INTERNO'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 16386
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'DATA_HORA'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'IDINTERNO'
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object StringField3: TStringField
      FieldName = 'MOTIVO_SAIDA'
      Size = 50
    end
    object IntegerField3: TIntegerField
      FieldName = 'IDPROCEDENCIA'
    end
    object IntegerField4: TIntegerField
      FieldName = 'IDUP'
    end
    object StringField4: TStringField
      FieldName = 'SETOR'
      Size = 50
    end
    object IntegerField5: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object StringField5: TStringField
      FieldName = 'TIPO_HISTORICO'
      Size = 30
    end
  end
  object dshistoricoelogio: TDataSource
    DataSet = cdshistoricoelogio
    OnDataChange = DsCadastroDataChange
    Left = 885
    Top = 193
  end
  object Dsfaltadisciplinar: TDataSource
    DataSet = Cdsfaltadisciplinar
    Left = 908
    Top = 248
  end
  object Cdsfaltadisciplinar: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'Dspfaltadisciplinar'
    Left = 872
    Top = 248
  end
  object Dspfaltadisciplinar: TDataSetProvider
    DataSet = Sqlfaltadisciplinar
    Left = 836
    Top = 248
  end
  object SQLvincartigoperfil: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from vinc_artigo_perfil'
      'where id_interno = :id_interno')
    Left = 596
    Top = 8
    ParamData = <
      item
        Name = 'ID_INTERNO'
        ParamType = ptInput
      end>
  end
  object SQLcalcfaltadisciplinar: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT * '
      'FROM SP_CALCULA_FALTA_DISCIPLINAR(:tempo, :dat_inc)')
    Left = 720
    Top = 8
    ParamData = <
      item
        Name = 'TEMPO'
        ParamType = ptInput
      end
      item
        Name = 'DAT_INC'
        ParamType = ptInput
      end>
  end
  object SQLHISTORICO_interno: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select *'
      'from HISTORICO_INTERNO'
      
        'where idinterno=:id_interno and coalesce(tipo_historico,'#39#39')='#39#39' a' +
        'nd setor like '#39'Disciplina'#39
      'order by data_hora desc')
    Left = 784
    Top = 96
    ParamData = <
      item
        Name = 'ID_INTERNO'
        ParamType = ptInput
      end>
  end
  object SQLhistoricoelogio: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select *'
      'from HISTORICO_INTERNO'
      'where idinterno=:id_interno and tipo_historico = '#39'Elogio'#39
      'order by data_hora desc')
    Left = 768
    Top = 176
    ParamData = <
      item
        Name = 'ID_INTERNO'
        ParamType = ptInput
      end>
  end
  object Sqlfaltadisciplinar: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      
        'SELECT f.falta_disciplinar||'#39' - Gravidade:'#39'||f.tipofalta||'#39' - '#39'|' +
        '| f.temporeabilitacao||'#39' Dias.'#39' as falta_disciplinar,'
      'f.id_falta_disciplinar'
      'FROM falta_disciplinar f'
      'where '#39'ta no fonte'#39'<>'#39'ta no fonte'#39
      'order by f.falta_disciplinar')
    Left = 768
    Top = 248
  end
  object SqlExecute: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT id_interno, nome_interno, rgi'
      'FROM INTERNO'
      'ORDER BY NOME_INTERNO')
    Left = 888
    Top = 16
  end
  object Sqlvincfaltadisciplinar: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT * '
      'FROM vinc_falta_disciplinar'
      'where id_interno = :id_interno'
      'order by data_incidencia desc'
      '')
    Left = 471
    Top = 2
    ParamData = <
      item
        Name = 'ID_INTERNO'
        ParamType = ptInput
      end>
  end
end
