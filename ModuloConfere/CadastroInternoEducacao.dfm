inherited FrmCadastroInternoEducacao: TFrmCadastroInternoEducacao
  Left = 458
  Top = 249
  Caption = 'Cadastro da Educa'#231#227'o'
  ClientWidth = 1068
  ExplicitWidth = 1084
  TextHeight = 13
  inherited PanelBotoes: TPanel
    inherited ToolBarModeloCadastro: TToolBar
      inherited Novo: TToolButton
        ExplicitWidth = 99
      end
      inherited Editar: TToolButton
        ExplicitWidth = 99
      end
      inherited Cancelar: TToolButton
        ExplicitWidth = 99
      end
      inherited Salvar: TToolButton
        ExplicitWidth = 99
      end
      inherited Excluir: TToolButton
        ExplicitWidth = 99
      end
      inherited Fechar: TToolButton
        ExplicitWidth = 99
      end
    end
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 953
    ExplicitWidth = 949
    inherited Image2: TImage
      Width = 858
      ExplicitWidth = 858
    end
    inherited PageControlModeloCadastro: TPageControl
      Width = 953
      ActivePage = TabSheetCadastro
      ExplicitWidth = 949
      inherited TabSheetCadastro: TTabSheet
        ExplicitWidth = 945
        inherited PanelCadastro: TPanel
          Width = 945
          ExplicitWidth = 945
          ExplicitHeight = 498
          inherited PageControlPrincipal: TPageControl
            Width = 943
            ActivePage = TabSheet3
            OnChange = PageControlPrincipalChange
            ExplicitWidth = 943
            ExplicitHeight = 496
            inherited TabSheetPrincipal: TTabSheet
              ExplicitWidth = 935
            end
            inherited TabSheetDadosGerais: TTabSheet
              ExplicitWidth = 935
              inherited Label23: TLabel
                Enabled = True
              end
              inherited Label13: TLabel
                Enabled = True
              end
              inherited SpeedButton7: TSpeedButton
                Visible = False
              end
              inherited DBLookupComboBoxIDESCOLARIDADE: TDBLookupComboBox
                Enabled = True
              end
              inherited DBLookupComboBoxIDPROFISSAO: TDBLookupComboBox
                Enabled = True
              end
            end
            object TabSheet1: TTabSheet
              Caption = 'Educa'#231#227'o'
              ImageIndex = 2
              object Label59: TLabel
                Left = 16
                Top = 24
                Width = 71
                Height = 13
                Caption = 'Data Matr'#237'cula'
                FocusControl = DBEditdtmatricula
              end
              object Label60: TLabel
                Left = 465
                Top = 24
                Width = 53
                Height = 13
                Caption = 'Defici'#234'ncia'
              end
              object Label61: TLabel
                Left = 192
                Top = 72
                Width = 22
                Height = 13
                Caption = 'OBS'
                FocusControl = DBEditobseducacao
              end
              object Label62: TLabel
                Left = 96
                Top = 24
                Width = 79
                Height = 13
                Caption = 'S'#233'rie/Fase Atual'
              end
              object Label8: TLabel
                Left = 16
                Top = 72
                Width = 38
                Height = 13
                Caption = 'Per'#237'odo'
              end
              object Label15: TLabel
                Left = 400
                Top = 24
                Width = 30
                Height = 13
                Caption = 'Turma'
                FocusControl = DBEditturma
              end
              object DBEditdtmatricula: TDBEdit
                Left = 16
                Top = 40
                Width = 73
                Height = 21
                DataField = 'DATA_MATRICULA'
                DataSource = DsCadastro
                TabOrder = 0
              end
              object DBEditobseducacao: TDBEdit
                Left = 192
                Top = 88
                Width = 417
                Height = 21
                DataField = 'OBSEDUCACAO'
                DataSource = DsCadastro
                TabOrder = 5
              end
              object DBLookupComboBoxserie: TDBLookupComboBox
                Left = 96
                Top = 40
                Width = 297
                Height = 21
                DataField = 'IDSERIEESTUDO'
                DataSource = DsCadastro
                KeyField = 'ID_SERIE_ESTUDO'
                ListField = 'SERIE_ESTUDO'
                ListSource = DM.DSSERIEESTUDO
                TabOrder = 1
              end
              object DBComboBoxperiodo: TDBComboBox
                Left = 16
                Top = 88
                Width = 169
                Height = 21
                DataField = 'PERIODO'
                DataSource = DsCadastro
                Items.Strings = (
                  ''
                  'Matutino'
                  'Vespertino'
                  'Noturno'
                  'Diurno')
                TabOrder = 4
              end
              object DBComboBoxdeficiencia: TDBComboBox
                Left = 464
                Top = 40
                Width = 145
                Height = 21
                DataField = 'deficiencia'
                DataSource = DsCadastro
                Items.Strings = (
                  ''
                  'Auditiva'
                  'Cognitiva'
                  'Linguagem'
                  'Motora '
                  'Visual')
                TabOrder = 3
                OnKeyPress = DBComboBoxdeficienciaKeyPress
              end
              object DBEditturma: TDBEdit
                Left = 400
                Top = 40
                Width = 57
                Height = 21
                DataField = 'TURMA'
                DataSource = DsCadastro
                TabOrder = 2
              end
              object Btncancelarmatricula: TBitBtn
                Left = 272
                Top = 140
                Width = 137
                Height = 25
                Cancel = True
                Caption = 'Cancelar Matr'#237'cula'
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
                TabOrder = 7
                OnClick = BtncancelarmatriculaClick
              end
              object btnreativarmatricula: TBitBtn
                Left = 104
                Top = 140
                Width = 137
                Height = 25
                Caption = 'Re-Matricular'
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
                TabOrder = 6
                OnClick = btnreativarmatriculaClick
              end
            end
            object TabSheet3: TTabSheet
              Caption = 'Remi'#231#227'o'
              ImageIndex = 3
              object PageControl1: TPageControl
                Left = 0
                Top = 0
                Width = 935
                Height = 468
                ActivePage = TabSheet8
                Align = alClient
                TabOrder = 0
                TabWidth = 100
                object TabSheet8: TTabSheet
                  Caption = 'Portaria'
                  ImageIndex = 4
                  object Label73: TLabel
                    Left = 32
                    Top = 32
                    Width = 37
                    Height = 13
                    Caption = 'Entrada'
                  end
                  object Label74: TLabel
                    Left = 184
                    Top = 32
                    Width = 62
                    Height = 13
                    Caption = 'Turma/Curso'
                  end
                  object Label75: TLabel
                    Left = 336
                    Top = 32
                    Width = 51
                    Height = 13
                    Caption = 'N'#186' Portaria'
                  end
                  object adpDBDateTimePicker1: TadpDBDateTimePicker
                    Left = 32
                    Top = 48
                    Width = 145
                    Height = 21
                    Date = 44424.000000000000000000
                    Time = 0.579159641201840700
                    TabOrder = 0
                    ReadOnly = False
                  end
                  object BitBtn1: TBitBtn
                    Left = 200
                    Top = 88
                    Width = 105
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
                    TabOrder = 1
                    OnClick = BitBtn1Click
                  end
                  object DBGrid5: TDBGrid
                    Left = 32
                    Top = 128
                    Width = 433
                    Height = 185
                    DataSource = dsportaria
                    PopupMenu = PopupEncerrarPortaria
                    TabOrder = 2
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'PORTARIA'
                        Width = 74
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DATA_ENTRADA'
                        Width = 107
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'TURMA'
                        Width = 155
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DATA_FINAL'
                        Width = 74
                        Visible = True
                      end>
                  end
                  object ComboTurma: TComboBox
                    Left = 184
                    Top = 48
                    Width = 145
                    Height = 21
                    TabOrder = 3
                  end
                  object EditPortaria: TEdit
                    Left = 336
                    Top = 48
                    Width = 121
                    Height = 21
                    TabOrder = 4
                  end
                end
                object TabSheet2: TTabSheet
                  Caption = 'Dados Estudo'
                  object Label26: TLabel
                    Left = 24
                    Top = 22
                    Width = 53
                    Height = 13
                    Caption = 'Data Inicial'
                  end
                  object Label29: TLabel
                    Left = 128
                    Top = 22
                    Width = 48
                    Height = 13
                    Caption = 'Data Final'
                  end
                  object Label14: TLabel
                    Left = 234
                    Top = 22
                    Width = 28
                    Height = 13
                    Caption = 'Horas'
                  end
                  object Portaria: TLabel
                    Left = 328
                    Top = 24
                    Width = 36
                    Height = 13
                    Caption = 'Portaria'
                  end
                  object Edithoras: TEdit
                    Left = 232
                    Top = 40
                    Width = 89
                    Height = 21
                    TabOrder = 2
                  end
                  object adpDBDateTimePickerdtinicial: TadpDBDateTimePicker
                    Left = 24
                    Top = 40
                    Width = 97
                    Height = 21
                    Date = 41094.000000000000000000
                    Time = 0.521542534719628700
                    TabOrder = 0
                    ReadOnly = False
                  end
                  object BitBtn3: TBitBtn
                    Left = 200
                    Top = 88
                    Width = 105
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
                    TabOrder = 3
                    OnClick = BitBtn3Click
                  end
                  object DBGrid1: TDBGrid
                    Left = 24
                    Top = 136
                    Width = 457
                    Height = 201
                    DataSource = DSremissao_estudo
                    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                    PopupMenu = PopupMenuexcluirremissao
                    TabOrder = 4
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
                        FieldName = 'data_final'
                        Title.Caption = 'Data Final'
                        Width = 90
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'QTDE_HORAS'
                        Title.Caption = 'Horas'
                        Width = 72
                        Visible = True
                      end>
                  end
                  object adpDBDateTimePickerdtfinalremicao: TadpDBDateTimePicker
                    Left = 128
                    Top = 40
                    Width = 97
                    Height = 21
                    Date = 41095.000000000000000000
                    Time = 0.494579293983406400
                    TabOrder = 1
                    ReadOnly = False
                  end
                  object ComboSalas: TComboBox
                    Left = 328
                    Top = 40
                    Width = 145
                    Height = 21
                    TabOrder = 5
                  end
                end
                object TabSheet4: TTabSheet
                  Caption = 'Atestado Estudo'
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
                    Width = 81
                    Height = 13
                    Caption = 'Horas Estudadas'
                  end
                  object Label16: TLabel
                    Left = 304
                    Top = 64
                    Width = 60
                    Height = 13
                    Caption = 'Dias Remido'
                  end
                  object Label17: TLabel
                    Left = 32
                    Top = 64
                    Width = 66
                    Height = 13
                    Caption = 'Saldo Anterior'
                  end
                  object Label48: TLabel
                    Left = 384
                    Top = 64
                    Width = 67
                    Height = 13
                    Caption = 'Saldo Pr'#243'xima'
                  end
                  object Label50: TLabel
                    Left = 216
                    Top = 64
                    Width = 60
                    Height = 13
                    Caption = 'Total Estudo'
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
                  object Editdiasestudo: TEdit
                    Left = 128
                    Top = 80
                    Width = 83
                    Height = 21
                    TabOrder = 4
                  end
                  object Editdiasremido: TEdit
                    Left = 304
                    Top = 80
                    Width = 73
                    Height = 21
                    TabOrder = 6
                  end
                  object Editsaldoanterior: TEdit
                    Left = 32
                    Top = 80
                    Width = 89
                    Height = 21
                    TabOrder = 3
                  end
                  object Editsaldoproximo: TEdit
                    Left = 384
                    Top = 80
                    Width = 81
                    Height = 21
                    TabOrder = 7
                  end
                  object DBGrid4: TDBGrid
                    Left = 32
                    Top = 168
                    Width = 561
                    Height = 120
                    DataSource = dscertidao_estudo
                    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
                        FieldName = 'dias_remido'
                        Title.Caption = 'Dias Remido'
                        Width = 89
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'total_horas'
                        Title.Caption = 'Total Horas'
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
                  object edittotalestudo: TEdit
                    Left = 216
                    Top = 80
                    Width = 81
                    Height = 21
                    TabOrder = 5
                  end
                  object BitBtn4: TBitBtn
                    Left = 293
                    Top = 26
                    Width = 97
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
                    OnClick = BitBtn4Click
                  end
                  object BitBtn5: TBitBtn
                    Left = 216
                    Top = 128
                    Width = 105
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
                    OnClick = BitBtn5Click
                  end
                end
                object TabSheet6: TTabSheet
                  Caption = 'Dados Livros'
                  ImageIndex = 2
                  object Label51: TLabel
                    Left = 232
                    Top = 52
                    Width = 28
                    Height = 13
                    Caption = 'Livros'
                  end
                  object Label53: TLabel
                    Left = 120
                    Top = 52
                    Width = 48
                    Height = 13
                    Caption = 'Data Final'
                  end
                  object Label67: TLabel
                    Left = 12
                    Top = 52
                    Width = 53
                    Height = 13
                    Caption = 'Data Inicial'
                  end
                  object BitBtnInserirDiasLivro: TBitBtn
                    Left = 120
                    Top = 124
                    Width = 75
                    Height = 25
                    Caption = 'Inserir'
                    TabOrder = 0
                    OnClick = BitBtnInserirDiasLivroClick
                  end
                  object EditQtdeLivro: TEdit
                    Left = 232
                    Top = 72
                    Width = 121
                    Height = 21
                    TabOrder = 1
                  end
                  object adpDBDateTimePickerLivrosFinal: TadpDBDateTimePicker
                    Left = 120
                    Top = 72
                    Width = 97
                    Height = 21
                    Date = 41253.000000000000000000
                    Time = 0.686674479169596500
                    TabOrder = 2
                    ReadOnly = False
                  end
                  object adpDBDateTimePickerLivroInicial: TadpDBDateTimePicker
                    Left = 12
                    Top = 72
                    Width = 97
                    Height = 21
                    Date = 41253.000000000000000000
                    Time = 0.686674479169596500
                    TabOrder = 3
                    ReadOnly = False
                  end
                  object DBGridLivros: TDBGrid
                    Left = 8
                    Top = 160
                    Width = 345
                    Height = 197
                    DataSource = dsDiasLivro
                    TabOrder = 4
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'data_inicial'
                        Title.Caption = 'Data Inicial'
                        Width = 100
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'data_final'
                        Title.Caption = 'Data Final'
                        Width = 100
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'qtde_livros'
                        Title.Caption = 'Livros'
                        Width = 110
                        Visible = True
                      end>
                  end
                end
                object TabSheet7: TTabSheet
                  Caption = 'Atestado Livro'
                  ImageIndex = 3
                  object Label68: TLabel
                    Left = 12
                    Top = 32
                    Width = 53
                    Height = 13
                    Caption = 'Data Inicial'
                  end
                  object Label70: TLabel
                    Left = 140
                    Top = 32
                    Width = 48
                    Height = 13
                    Caption = 'Data Final'
                  end
                  object Label71: TLabel
                    Left = 12
                    Top = 80
                    Width = 28
                    Height = 13
                    Caption = 'Livros'
                  end
                  object Label72: TLabel
                    Left = 140
                    Top = 80
                    Width = 65
                    Height = 13
                    Caption = 'Dias Remidos'
                  end
                  object adpDBDateTimePickerLivroDtInicialAtestado: TadpDBDateTimePicker
                    Left = 12
                    Top = 48
                    Width = 117
                    Height = 21
                    Date = 41253.000000000000000000
                    Time = 0.710046157408214600
                    TabOrder = 0
                    ReadOnly = False
                  end
                  object adpDBDateTimePickerLivroDtFinalAtestado: TadpDBDateTimePicker
                    Left = 140
                    Top = 48
                    Width = 117
                    Height = 21
                    Date = 41253.000000000000000000
                    Time = 0.710113865738094300
                    TabOrder = 1
                    ReadOnly = False
                  end
                  object EditLivros: TEdit
                    Left = 12
                    Top = 96
                    Width = 121
                    Height = 21
                    TabOrder = 2
                  end
                  object EditRemidos: TEdit
                    Left = 140
                    Top = 96
                    Width = 121
                    Height = 21
                    TabOrder = 3
                  end
                  object BitBtnCalcularLivro: TBitBtn
                    Left = 268
                    Top = 44
                    Width = 75
                    Height = 25
                    Caption = 'Calcular'
                    TabOrder = 4
                    OnClick = BitBtnCalcularLivroClick
                  end
                  object BitBtnInserirAtestadoLivro: TBitBtn
                    Left = 88
                    Top = 124
                    Width = 75
                    Height = 25
                    Caption = 'Inserir'
                    TabOrder = 5
                  end
                  object DBGrid3: TDBGrid
                    Left = 8
                    Top = 164
                    Width = 337
                    Height = 173
                    TabOrder = 6
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                  end
                end
              end
            end
            object TabSheet5: TTabSheet
              Caption = 'Hist'#243'rico'
              ImageIndex = 4
              object Label57: TLabel
                Left = 24
                Top = 24
                Width = 23
                Height = 13
                Caption = 'Data'
              end
              object Label58: TLabel
                Left = 120
                Top = 24
                Width = 41
                Height = 13
                Caption = 'Hist'#243'rico'
              end
              object MaskEdit2: TMaskEdit
                Left = 24
                Top = 40
                Width = 88
                Height = 21
                EditMask = '!99/99/00;1;_'
                MaxLength = 8
                TabOrder = 0
                Text = '  /  /  '
              end
              object Button2: TButton
                Left = 24
                Top = 104
                Width = 75
                Height = 25
                Caption = 'Incluir'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                OnClick = Button2Click
              end
              object DBGrid2: TDBGrid
                Left = 24
                Top = 156
                Width = 609
                Height = 125
                DataSource = DSHISTORICOEDUCACAO
                TabOrder = 3
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'DATA_HISTORICO'
                    Width = 86
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'HISTORICO'
                    Width = 557
                    Visible = True
                  end>
              end
              object DBMemo2: TDBMemo
                Left = 24
                Top = 296
                Width = 609
                Height = 61
                DataField = 'HISTORICO'
                DataSource = DSHISTORICOEDUCACAO
                TabOrder = 4
              end
              object Memohistorico: TMemo
                Left = 120
                Top = 40
                Width = 513
                Height = 89
                Lines.Strings = (
                  '')
                TabOrder = 1
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        ExplicitWidth = 945
        inherited PanelLocalizaConsulta: TPanel
          Width = 945
          ExplicitWidth = 941
          inherited EditLocalizar: TEdit
            TabOrder = 1
          end
          inherited RadioGroupStatus: TRadioGroup
            Left = 648
            TabOrder = 3
            ExplicitLeft = 644
          end
          inherited chkSoundex: TCheckBox
            TabOrder = 2
          end
        end
        inherited PanelConsulta: TPanel
          Width = 945
          ExplicitWidth = 945
          ExplicitHeight = 456
          inherited DBGridConsulta: TDBGrid
            Width = 943
            Height = 455
          end
          inherited DBCtrlGridConsulta: TDBCtrlGrid
            Width = 943
            Height = 455
            PanelHeight = 91
            PanelWidth = 926
            ExplicitWidth = 939
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 1068
    ExplicitWidth = 1064
  end
  inherited StatusBar1: TStatusBar
    Width = 1068
    ExplicitWidth = 1064
  end
  inherited SqlCadastro: TFDQuery
    Left = 728
    Top = 0
  end
  inherited DspCadastro: TDataSetProvider
    Left = 756
    Top = 0
  end
  inherited CdsCadastro: TClientDataSet
    Left = 784
    Top = 0
  end
  inherited DsCadastro: TDataSource
    Left = 812
    Top = 0
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
  object DSHISTORICOEDUCACAO: TDataSource
    DataSet = CDSHISTORICOEDUCACAO
    OnDataChange = DsCadastroDataChange
    Left = 525
    Top = 8
  end
  object CDSHISTORICOEDUCACAO: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPHISTORICOEDUCACAO'
    Left = 497
    Top = 8
    object CDSHISTORICOEDUCACAOID_HISTORICO_ESTUDO: TIntegerField
      FieldName = 'ID_HISTORICO_ESTUDO'
      Required = True
    end
    object CDSHISTORICOEDUCACAODATA_HISTORICO: TSQLTimeStampField
      DisplayLabel = 'DATA'
      FieldName = 'DATA_HISTORICO'
    end
    object CDSHISTORICOEDUCACAOID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object CDSHISTORICOEDUCACAOHISTORICO: TStringField
      DisplayLabel = 'HIST'#211'RICO'
      FieldName = 'HISTORICO'
      Size = 16386
    end
    object CDSHISTORICOEDUCACAODEFICIENCIA: TStringField
      FieldName = 'DEFICIENCIA'
      Size = 30
    end
    object CDSHISTORICOEDUCACAOID_SERIE_ESTUDO: TIntegerField
      FieldName = 'ID_SERIE_ESTUDO'
    end
    object CDSHISTORICOEDUCACAODATA_MATRICULA: TSQLTimeStampField
      FieldName = 'DATA_MATRICULA'
    end
    object CDSHISTORICOEDUCACAOPERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 30
    end
    object CDSHISTORICOEDUCACAOTURMA: TStringField
      FieldName = 'TURMA'
      Size = 10
    end
    object CDSHISTORICOEDUCACAOID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object CDSHISTORICOEDUCACAODATA_SAIDA: TSQLTimeStampField
      FieldName = 'DATA_SAIDA'
    end
  end
  object DSPHISTORICOEDUCACAO: TDataSetProvider
    DataSet = SQLHISTORICOEDUCACAO
    Left = 469
    Top = 8
  end
  object SQLHISTORICOEDUCACAO: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from historico_estudo h'
      'where h.id_interno=:id_interno and coalesce(h.historico,'#39#39')<>'#39#39
      'order by h.data_historico desc')
    SQLConnection = DM.SQLConnect
    Left = 441
    Top = 8
  end
  object SQLremissao_estudo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'select * from horas_aula'
      'where id_interno = :id_interno')
    SQLConnection = DM.SQLConnect
    Left = 716
    Top = 49
  end
  object DSPremissao_estudo: TDataSetProvider
    DataSet = SQLremissao_estudo
    Left = 756
    Top = 49
  end
  object CDSremissao_estudo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPremissao_estudo'
    Left = 784
    Top = 48
  end
  object DSremissao_estudo: TDataSource
    DataSet = CDSremissao_estudo
    Left = 812
    Top = 49
  end
  object SQLcertidao_estudo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'idinterno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from atestado_estudo'
      'where id_interno = :idinterno'
      'order by data_inicial desc')
    SQLConnection = DM.SQLConnect
    Left = 672
    Top = 272
  end
  object dspcertidao_estudo: TDataSetProvider
    DataSet = SQLcertidao_estudo
    Left = 704
    Top = 272
  end
  object cdscertidao_estudo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'id_interno'
    MasterFields = 'id_interno'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspcertidao_estudo'
    Left = 744
    Top = 272
  end
  object dscertidao_estudo: TDataSource
    DataSet = cdscertidao_estudo
    Left = 776
    Top = 272
  end
  object PopupMenuexcluirremissao: TPopupMenu
    Left = 652
    Top = 337
    object ExcluirRegistro1: TMenuItem
      Caption = 'Excluir Registro'
      OnClick = ExcluirRegistro1Click
    end
  end
  object PopupMenuexcluiratestado: TPopupMenu
    Left = 640
    Top = 185
    object ExcluirRegistro2: TMenuItem
      Caption = 'Excluir Registro'
      OnClick = ExcluirRegistro2Click
    end
  end
  object SQLDiasLivro: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'select * from dias_leitura'
      'where id_interno = :id_interno')
    SQLConnection = DM.SQLConnect
    Left = 692
    Top = 177
  end
  object dspDiasLivro: TDataSetProvider
    DataSet = SQLDiasLivro
    Left = 720
    Top = 177
  end
  object cdsDiasLivro: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'id_interno'
    MasterFields = 'id_interno'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspDiasLivro'
    Left = 748
    Top = 177
  end
  object dsDiasLivro: TDataSource
    DataSet = cdsDiasLivro
    Left = 776
    Top = 177
  end
  object SQLQuery1: TSQLQuery
    Params = <>
    Left = 696
    Top = 225
  end
  object DataSetProvider1: TDataSetProvider
    Left = 724
    Top = 225
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 752
    Top = 225
  end
  object DataSource1: TDataSource
    Left = 780
    Top = 225
  end
  object SqlPortaria: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'select * from portaria_educacao'
      'where id_interno = :id_interno')
    SQLConnection = DM.SQLConnect
    Left = 672
    Top = 129
  end
  object dspportaria: TDataSetProvider
    DataSet = SqlPortaria
    Left = 704
    Top = 129
  end
  object cdsportaria: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsConsulta
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspportaria'
    Left = 736
    Top = 129
  end
  object dsportaria: TDataSource
    DataSet = cdsportaria
    Left = 768
    Top = 129
  end
  object PopupEncerrarPortaria: TPopupMenu
    Left = 632
    Top = 417
    object Encerrar_portaria: TMenuItem
      Caption = 'Finalizar Portaria'
      OnClick = Encerrar_portariaClick
    end
    object ExcluirPortaria1: TMenuItem
      Caption = 'Excluir Portaria'
      OnClick = ExcluirPortaria1Click
    end
  end
  object SQLPortariaAluno: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'select * from portaria_educacao'
      'where id_interno = :id_interno'
      'order by data_entrada desc')
    SQLConnection = DM.SQLConnect
    Left = 672
    Top = 385
    object SQLPortariaAlunoTURMA: TStringField
      FieldName = 'TURMA'
    end
    object SQLPortariaAlunoID_PORTARIA_EDUCACAO: TIntegerField
      FieldName = 'ID_PORTARIA_EDUCACAO'
    end
    object SQLPortariaAlunoID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object SQLPortariaAlunoDATA_ENTRADA: TSQLTimeStampField
      FieldName = 'DATA_ENTRADA'
    end
    object SQLPortariaAlunoID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object SQLPortariaAlunoOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object SQLPortariaAlunoDATA_FINAL: TSQLTimeStampField
      FieldName = 'DATA_FINAL'
    end
    object SQLPortariaAlunoPORTARIA: TStringField
      FieldName = 'PORTARIA'
      Size = 10
    end
  end
  object cdsportariaaluno: TClientDataSet
    Aggregates = <>
    MasterSource = dsportariaaluno
    PacketRecords = 0
    Params = <>
    Left = 744
    Top = 385
  end
  object dsportariaaluno: TDataSource
    DataSet = SQLPortariaAluno
    Left = 784
    Top = 385
  end
  object dspportariaaluno: TDataSetProvider
    DataSet = cdsportariaaluno
    Left = 712
    Top = 385
  end
end
