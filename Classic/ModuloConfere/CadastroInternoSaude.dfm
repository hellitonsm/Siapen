inherited FrmCadastroInternoSaude: TFrmCadastroInternoSaude
  Left = 199
  Top = 108
  Width = 952
  Height = 624
  Caption = 'Cadastro da Sa'#250'de'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 508
    inherited ToolBarModeloCadastro: TToolBar
      Height = 490
    end
    inherited DBNavigator1: TDBNavigator
      Top = 490
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 821
    Height = 508
    inherited PageControlModeloCadastro: TPageControl
      Width = 821
      Height = 508
      ActivePage = TabSheetCadastro
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 813
          Height = 480
          inherited PageControlPrincipal: TPageControl
            Width = 811
            Height = 478
            ActivePage = TabSheetDadosGerais
            inherited TabSheetPrincipal: TTabSheet
              inherited Label3: TLabel
                Left = 297
              end
              inherited DBEditCodigo: TDBEdit
                Width = 93
              end
              inherited DBEdit2: TDBEdit
                Left = 296
                Width = 353
              end
              inherited DBEdit3: TDBEdit
                TabOrder = 4
              end
              inherited DBEditID_PROCEDENCIA: TDBEdit
                TabOrder = 19
              end
              inherited DBLookupComboBoxID_PROCEDENCIA: TDBLookupComboBox
                TabOrder = 20
              end
              inherited DBRadioGroup1: TDBRadioGroup
                TabOrder = 6
              end
              inherited DBRadioGroup2: TDBRadioGroup
                TabOrder = 18
              end
              inherited DBEdit7: TDBEdit
                TabOrder = 16
              end
              inherited DBLookupComboBox2: TDBLookupComboBox
                TabOrder = 17
              end
              inherited DBComboBox3: TDBComboBox
                TabOrder = 15
              end
              inherited DBEdit86: TDBEdit
                TabOrder = 3
              end
              inherited dbrgrpST: TDBRadioGroup
                TabOrder = 5
              end
              inherited DBEdit4: TDBEdit
                TabOrder = 9
              end
              inherited DBEdit20: TDBEdit
                TabOrder = 10
              end
              inherited DBEdit29: TDBEdit
                TabOrder = 12
              end
              inherited DBComboBox2: TDBComboBox
                TabOrder = 13
              end
              inherited DBEditpermanencia: TDBEdit
                TabOrder = 11
              end
              inherited DBLookupComboBoxFACCAO: TDBLookupComboBox
                TabOrder = 21
              end
              inherited DBEdit8: TDBEdit
                TabOrder = 24
              end
              inherited DBEdit31: TDBEdit
                TabOrder = 25
              end
              inherited DBEdit33: TDBEdit
                TabOrder = 26
              end
              inherited DBComboBox5: TDBComboBox
                TabOrder = 27
              end
              inherited DBComboBox4: TDBComboBox
                TabOrder = 28
              end
            end
            object TabSheet1: TTabSheet
              Caption = 'Sa'#250'de'
              ImageIndex = 2
              object PageControlSaude: TPageControl
                Left = 0
                Top = 0
                Width = 803
                Height = 450
                ActivePage = TabSheet2
                Align = alClient
                TabOrder = 0
                TabWidth = 80
                object TabSheet2: TTabSheet
                  Caption = 'Hist'#243'rico'
                  ImageIndex = 2
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
                    Date = 0.302563541663403200
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
                    DataSource = dshistorico_saude
                    TabOrder = 3
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'DATA'
                        Title.Caption = 'Data'
                        Width = 88
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'SETOR'
                        Title.Caption = 'Setor'
                        Width = 107
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DESCRICAO'
                        Title.Caption = 'Descri'#231#227'o'
                        Width = 347
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'Funcion'#225'rio'
                        Visible = True
                      end>
                  end
                  object DBMemo1: TDBMemo
                    Left = 8
                    Top = 287
                    Width = 610
                    Height = 121
                    DataField = 'DESCRICAO'
                    DataSource = dshistorico_saude
                    TabOrder = 4
                  end
                end
                object TabSheet3: TTabSheet
                  Caption = 'Dieta'
                  ImageIndex = 3
                  object Label14: TLabel
                    Left = 7
                    Top = 16
                    Width = 67
                    Height = 13
                    Caption = 'Data Consulta'
                  end
                  object Label15: TLabel
                    Left = 8
                    Top = 65
                    Width = 48
                    Height = 13
                    Caption = 'Descri'#231#227'o'
                  end
                  object Label16: TLabel
                    Left = 103
                    Top = 16
                    Width = 51
                    Height = 13
                    Caption = 'Data Inicio'
                  end
                  object Label17: TLabel
                    Left = 199
                    Top = 16
                    Width = 64
                    Height = 13
                    Caption = 'Data T'#233'rmino'
                  end
                  object Label26: TLabel
                    Left = 295
                    Top = 16
                    Width = 35
                    Height = 13
                    Caption = 'M'#233'dico'
                  end
                  object Label29: TLabel
                    Left = 297
                    Top = 65
                    Width = 49
                    Height = 13
                    Caption = 'Tipo Dieta'
                  end
                  object SpeedButton3: TSpeedButton
                    Left = 584
                    Top = 32
                    Width = 23
                    Height = 22
                    Hint = 'Cadastrar M'#233'dico'
                    Caption = '...'
                    Flat = True
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton3Click
                  end
                  object SpeedButton16: TSpeedButton
                    Left = 581
                    Top = 75
                    Width = 23
                    Height = 22
                    Hint = 'Cadastrar M'#233'dico'
                    Caption = '...'
                    Flat = True
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton16Click
                  end
                  object DateTimePickerconsulta: TDateTimePicker
                    Left = 7
                    Top = 33
                    Width = 91
                    Height = 21
                    Date = 0.302563541663403200
                    Time = 0.302563541663403200
                    TabOrder = 0
                  end
                  object Memodescricaodieta: TMemo
                    Left = 7
                    Top = 81
                    Width = 282
                    Height = 56
                    TabOrder = 4
                  end
                  object DBGrid2: TDBGrid
                    Left = 8
                    Top = 156
                    Width = 610
                    Height = 129
                    DataSource = dsdieta
                    TabOrder = 7
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'DATA_CONSULTA'
                        Title.Caption = 'Consulta'
                        Width = 73
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DATA_INICIO'
                        Title.Caption = 'Dt In'#237'cio'
                        Width = 69
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DATA_TERMINO'
                        Title.Caption = 'Dt T'#233'rmino'
                        Width = 78
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'TipoDieta'
                        Title.Caption = 'Tipo Dieta'
                        Width = 218
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DESCRICAO'
                        Title.Caption = 'Descri'#231#227'o'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'M'#233'dico'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'Funcion'#225'rio'
                        Visible = True
                      end>
                  end
                  object DBMemo2: TDBMemo
                    Left = 8
                    Top = 304
                    Width = 610
                    Height = 80
                    DataField = 'DESCRICAO'
                    DataSource = dsdieta
                    TabOrder = 8
                  end
                  object DateTimePickerinicio: TDateTimePicker
                    Left = 103
                    Top = 33
                    Width = 91
                    Height = 21
                    Date = 0.302563541663403200
                    Time = 0.302563541663403200
                    TabOrder = 1
                  end
                  object DateTimePickertermino: TDateTimePicker
                    Left = 199
                    Top = 33
                    Width = 91
                    Height = 21
                    Date = 0.302563541663403200
                    Time = 0.302563541663403200
                    TabOrder = 2
                  end
                  object DBLookupComboBoxmedico: TDBLookupComboBox
                    Left = 296
                    Top = 32
                    Width = 281
                    Height = 21
                    KeyField = 'ID_MEDICO'
                    ListField = 'MEDICO'
                    ListSource = DM.dsmedico
                    TabOrder = 3
                  end
                  object DBLookupComboBoxtipodieta: TDBLookupComboBox
                    Left = 298
                    Top = 82
                    Width = 278
                    Height = 21
                    KeyField = 'ID_TIPO_DIETA'
                    ListField = 'TIPO_DIETA'
                    ListSource = DM.dstipodieta
                    TabOrder = 5
                  end
                  object Button2: TButton
                    Left = 392
                    Top = 112
                    Width = 75
                    Height = 25
                    Caption = 'Incluir'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 6
                    OnClick = Button2Click
                  end
                end
                object TabSheet4: TTabSheet
                  Caption = 'Enfermidade'
                  ImageIndex = 4
                  object Label41: TLabel
                    Left = 16
                    Top = 16
                    Width = 59
                    Height = 13
                    Caption = 'Enfermidade'
                  end
                  object SpeedButton10: TSpeedButton
                    Left = 510
                    Top = 23
                    Width = 23
                    Height = 22
                    Hint = 'Cadastrar Enfermidade'
                    Caption = '...'
                    Flat = True
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton10Click
                  end
                  object SpeedButton13: TSpeedButton
                    Left = 256
                    Top = 32
                    Width = 23
                    Height = 22
                    Hint = 'Cadastrar Enfermdiade'
                    Caption = '...'
                    Flat = True
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton13Click
                  end
                  object PageControl1: TPageControl
                    Left = 296
                    Top = 8
                    Width = 409
                    Height = 377
                    ActivePage = TabSheet5
                    TabOrder = 3
                    object TabSheet5: TTabSheet
                      Caption = 'Rem'#233'dio'
                      object Label42: TLabel
                        Left = 16
                        Top = 16
                        Width = 23
                        Height = 13
                        Caption = 'Data'
                      end
                      object Label48: TLabel
                        Left = 16
                        Top = 60
                        Width = 42
                        Height = 13
                        Caption = 'Rem'#233'dio'
                      end
                      object Label50: TLabel
                        Left = 16
                        Top = 104
                        Width = 22
                        Height = 13
                        Caption = 'OBS'
                      end
                      object SpeedButton12: TSpeedButton
                        Left = 286
                        Top = 74
                        Width = 23
                        Height = 22
                        Hint = 'Cadastrar Rem'#233'dio'
                        Caption = '...'
                        Flat = True
                        ParentShowHint = False
                        ShowHint = True
                        OnClick = SpeedButton12Click
                      end
                      object Label51: TLabel
                        Left = 112
                        Top = 16
                        Width = 59
                        Height = 13
                        Caption = 'Enfermidade'
                      end
                      object Label56: TLabel
                        Left = 322
                        Top = 60
                        Width = 23
                        Height = 13
                        Caption = 'Qtde'
                      end
                      object DateTimePickerdataremedio: TDateTimePicker
                        Left = 15
                        Top = 33
                        Width = 91
                        Height = 21
                        Date = 0.302563541663403200
                        Time = 0.302563541663403200
                        TabOrder = 0
                      end
                      object DBLookupComboBoxremedio: TDBLookupComboBox
                        Left = 16
                        Top = 76
                        Width = 265
                        Height = 21
                        KeyField = 'ID_REMEDIO'
                        ListField = 'NOME_REMEDIO'
                        ListSource = DM.DSRemedio
                        TabOrder = 2
                      end
                      object Memoenfermidade: TMemo
                        Left = 16
                        Top = 120
                        Width = 377
                        Height = 41
                        Lines.Strings = (
                          '')
                        TabOrder = 4
                      end
                      object DBGrid4: TDBGrid
                        Left = 24
                        Top = 200
                        Width = 369
                        Height = 120
                        DataSource = dsremedioenfermidade
                        PopupMenu = PopupMenuIsolamento
                        TabOrder = 6
                        TitleFont.Charset = DEFAULT_CHARSET
                        TitleFont.Color = clWindowText
                        TitleFont.Height = -11
                        TitleFont.Name = 'MS Sans Serif'
                        TitleFont.Style = []
                        Columns = <
                          item
                            Expanded = False
                            FieldName = 'DATA_INICIO'
                            Title.Caption = 'Data In'#237'cio'
                            Width = 75
                            Visible = True
                          end
                          item
                            Expanded = False
                            FieldName = 'Rem'#233'dio'
                            Width = 162
                            Visible = True
                          end
                          item
                            Expanded = False
                            FieldName = 'QTDE'
                            Width = 35
                            Visible = True
                          end
                          item
                            Expanded = False
                            FieldName = 'DATA_FIM'
                            Title.Caption = 'Data Fim'
                            Width = 71
                            Visible = True
                          end
                          item
                            Expanded = False
                            FieldName = 'OBS'
                            Visible = True
                          end
                          item
                            Expanded = False
                            FieldName = 'STATUS'
                            Visible = True
                          end>
                      end
                      object Button4: TButton
                        Left = 160
                        Top = 168
                        Width = 75
                        Height = 25
                        Caption = 'Inserir'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'MS Sans Serif'
                        Font.Style = [fsBold]
                        ParentFont = False
                        TabOrder = 5
                        OnClick = Button4Click
                      end
                      object DBLookupComboBoxenfermidadeinterno: TDBLookupComboBox
                        Left = 112
                        Top = 32
                        Width = 281
                        Height = 21
                        KeyField = 'ID_ENFERMDIADE_INTERNO'
                        ListField = 'Enfermidade'
                        ListSource = DSENFERMDIADE_INTERNO
                        TabOrder = 1
                      end
                      object Editqtde: TEdit
                        Left = 320
                        Top = 75
                        Width = 73
                        Height = 21
                        TabOrder = 3
                      end
                    end
                  end
                  object DBLookupComboBoxenfermidade: TDBLookupComboBox
                    Left = 16
                    Top = 32
                    Width = 233
                    Height = 21
                    KeyField = 'ID_ENFERMIDADE'
                    ListField = 'ENFERMIDADE'
                    ListSource = DM.dsenfermidade
                    TabOrder = 0
                  end
                  object Button3: TButton
                    Left = 96
                    Top = 72
                    Width = 75
                    Height = 25
                    Caption = 'Inserir'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 1
                    OnClick = Button3Click
                  end
                  object DBGrid3: TDBGrid
                    Left = 16
                    Top = 112
                    Width = 265
                    Height = 273
                    DataSource = DSENFERMDIADE_INTERNO
                    TabOrder = 2
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'Enfermidade'
                        Visible = True
                      end>
                  end
                end
                object TabSheet6: TTabSheet
                  Caption = 'Defici'#234'ncia'
                  ImageIndex = 3
                  object Label57: TLabel
                    Left = 16
                    Top = 16
                    Width = 23
                    Height = 13
                    Caption = 'Data'
                  end
                  object Label58: TLabel
                    Left = 112
                    Top = 16
                    Width = 53
                    Height = 13
                    Caption = 'Defici'#234'ncia'
                  end
                  object SpeedButton14: TSpeedButton
                    Left = 336
                    Top = 32
                    Width = 23
                    Height = 22
                    Hint = 'Cadastrar Defici'#234'ncia'
                    Caption = '...'
                    Flat = True
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton14Click
                  end
                  object Label59: TLabel
                    Left = 368
                    Top = 16
                    Width = 56
                    Height = 13
                    Caption = 'Locomo'#231#227'o'
                  end
                  object Label60: TLabel
                    Left = 16
                    Top = 64
                    Width = 38
                    Height = 13
                    Caption = 'Membro'
                  end
                  object Label61: TLabel
                    Left = 288
                    Top = 64
                    Width = 30
                    Height = 13
                    Caption = 'Atrofia'
                  end
                  object Label62: TLabel
                    Left = 16
                    Top = 112
                    Width = 32
                    Height = 13
                    Caption = 'Motivo'
                  end
                  object DateTimePickerdeficiencia: TDateTimePicker
                    Left = 15
                    Top = 33
                    Width = 91
                    Height = 21
                    Date = 0.302563541663403200
                    Time = 0.302563541663403200
                    TabOrder = 0
                  end
                  object DBLookupComboBoxdeficiencia: TDBLookupComboBox
                    Left = 112
                    Top = 32
                    Width = 217
                    Height = 21
                    KeyField = 'ID_DEFICIENCIA'
                    ListField = 'DEFICIENCIA'
                    ListSource = DM.dsdeficiencia
                    TabOrder = 1
                  end
                  object DBGrid5: TDBGrid
                    Left = 16
                    Top = 200
                    Width = 641
                    Height = 120
                    DataSource = dsdeficienciainterno
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
                        FieldName = 'Defici'#234'ncia'
                        Width = 168
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'TIPO_LOCOMOCAO'
                        Title.Caption = 'Locomo'#231#227'o'
                        Width = 103
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'MEMBRO'
                        Title.Caption = 'Membro'
                        Width = 119
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'TIPO_ATROFIA'
                        Title.Caption = 'Atrofia'
                        Width = 133
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'MOTIVO'
                        Title.Caption = 'Motivo'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'ID_FUNCIONARIO'
                        Visible = True
                      end>
                  end
                  object EditLOCOMOCAO: TEdit
                    Left = 368
                    Top = 32
                    Width = 249
                    Height = 21
                    TabOrder = 2
                  end
                  object EditMEMBRO: TEdit
                    Left = 16
                    Top = 80
                    Width = 257
                    Height = 21
                    TabOrder = 3
                  end
                  object EditATROFIA: TEdit
                    Left = 288
                    Top = 80
                    Width = 281
                    Height = 21
                    TabOrder = 4
                  end
                  object EditMOTIVO: TEdit
                    Left = 16
                    Top = 128
                    Width = 545
                    Height = 21
                    TabOrder = 5
                  end
                  object BitBtn1: TBitBtn
                    Left = 272
                    Top = 168
                    Width = 89
                    Height = 25
                    Caption = 'Inserir'
                    Default = True
                    TabOrder = 6
                    OnClick = BitBtn1Click
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
                  end
                end
                object TabSheet7: TTabSheet
                  Caption = 'Vacina'
                  ImageIndex = 6
                  object Label68: TLabel
                    Left = 7
                    Top = 16
                    Width = 23
                    Height = 13
                    Caption = 'Data'
                  end
                  object Label70: TLabel
                    Left = 104
                    Top = 16
                    Width = 33
                    Height = 13
                    Caption = 'Vacina'
                  end
                  object Label71: TLabel
                    Left = 360
                    Top = 16
                    Width = 25
                    Height = 13
                    Caption = 'Dose'
                  end
                  object SpeedButton15: TSpeedButton
                    Left = 325
                    Top = 29
                    Width = 23
                    Height = 22
                    Hint = 'Cadastrar Vacina'
                    Caption = '...'
                    Flat = True
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton15Click
                  end
                  object DateTimePickerdatavacina: TDateTimePicker
                    Left = 7
                    Top = 33
                    Width = 91
                    Height = 21
                    Date = 0.302563541663403200
                    Time = 0.302563541663403200
                    TabOrder = 0
                  end
                  object DBGrid6: TDBGrid
                    Left = 8
                    Top = 133
                    Width = 610
                    Height = 129
                    DataSource = dsvacinainterno
                    TabOrder = 4
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'DATA_VACINA'
                        Title.Caption = 'Data'
                        Width = 74
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DOSE'
                        Title.Caption = 'Dose'
                        Width = 130
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'Vacina'
                        Width = 353
                        Visible = True
                      end>
                  end
                  object DBLookupComboBoxvacina: TDBLookupComboBox
                    Left = 104
                    Top = 32
                    Width = 217
                    Height = 21
                    KeyField = 'ID_VACINA'
                    ListField = 'VACINA'
                    ListSource = DM.dsvacina
                    TabOrder = 1
                  end
                  object Editdose: TEdit
                    Left = 360
                    Top = 32
                    Width = 169
                    Height = 21
                    TabOrder = 2
                  end
                  object BitBtn2: TBitBtn
                    Left = 256
                    Top = 80
                    Width = 97
                    Height = 25
                    Caption = 'Inserir'
                    Default = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 3
                    OnClick = BitBtn2Click
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
                  end
                end
                object TabSheet23: TTabSheet
                  Caption = 'Dados - 1'
                  object Label165: TLabel
                    Left = 2
                    Top = 62
                    Width = 151
                    Height = 13
                    Caption = 'Quando se tornou dependente?'
                  end
                  object Label166: TLabel
                    Left = 206
                    Top = 53
                    Width = 428
                    Height = 28
                    AutoSize = False
                    Caption = 
                      'J'#225' fez alguma tentativa para abandonar as drogas ou bebidas alco' +
                      #243'licas?'
                    FocusControl = DBEdit93
                    WordWrap = True
                  end
                  object Label167: TLabel
                    Left = 2
                    Top = 99
                    Width = 341
                    Height = 26
                    AutoSize = False
                    Caption = 
                      'Uso de drogas ou bebidas alco'#243'licas tem rela'#231#227'o com a pr'#225'tica do' +
                      ' delito?'
                    WordWrap = True
                  end
                  object Label168: TLabel
                    Left = 350
                    Top = 98
                    Width = 258
                    Height = 27
                    AutoSize = False
                    Caption = 'J'#225' sofreu de doen'#231'a grave em alguma fase da vida? Qual?'
                    FocusControl = DBEdit94
                    WordWrap = True
                  end
                  object Label169: TLabel
                    Left = 2
                    Top = 156
                    Width = 251
                    Height = 17
                    AutoSize = False
                    Caption = 'Tem caso de doen'#231'a mental na fam'#237'lia? Qual?'
                    FocusControl = DBEdit95
                    WordWrap = True
                  end
                  object Label170: TLabel
                    Left = 270
                    Top = 156
                    Width = 230
                    Height = 13
                    Caption = 'Voc'#234' tem algum problema de sa'#250'de atualmente?'
                    FocusControl = DBEdit96
                  end
                  object Label171: TLabel
                    Left = 334
                    Top = 16
                    Width = 120
                    Height = 13
                    Caption = 'Efeitos do uso de drogas:'
                    FocusControl = DBEdit97
                  end
                  object Label172: TLabel
                    Left = 2
                    Top = 198
                    Width = 197
                    Height = 13
                    Caption = 'Faz uso de medica'#231#227'o controlada? Qual?'
                    FocusControl = DBEdit98
                  end
                  object Label173: TLabel
                    Left = 266
                    Top = 196
                    Width = 134
                    Height = 13
                    Caption = 'Doen'#231'a infecto contagiosa?'
                    FocusControl = DBEdit99
                  end
                  object Label174: TLabel
                    Left = 2
                    Top = 245
                    Width = 135
                    Height = 13
                    Caption = 'Realizou tratamento infecto?'
                    FocusControl = DBEdit100
                  end
                  object Label175: TLabel
                    Left = 209
                    Top = 245
                    Width = 142
                    Height = 13
                    Caption = 'Resultado tratamento infecto?'
                    FocusControl = DBEdit101
                  end
                  object Label8: TLabel
                    Left = 134
                    Top = 16
                    Width = 90
                    Height = 13
                    Caption = 'Faz uso de drogas:'
                    FocusControl = DBEdit97
                  end
                  object Label67: TLabel
                    Left = 2
                    Top = 16
                    Width = 96
                    Height = 13
                    Caption = 'N'#250'mero Cart'#227'o SUS'
                    FocusControl = DBEdit97
                  end
                  object DBEdit92: TDBEdit
                    Left = 136
                    Top = 32
                    Width = 194
                    Height = 21
                    DataField = 'USODROGAS'
                    DataSource = DsCadastro
                    TabOrder = 0
                  end
                  object DBEdit93: TDBEdit
                    Left = 205
                    Top = 78
                    Width = 407
                    Height = 21
                    DataField = 'ABANDONODROGAS'
                    DataSource = DsCadastro
                    TabOrder = 1
                  end
                  object DBEdit94: TDBEdit
                    Left = 349
                    Top = 124
                    Width = 263
                    Height = 21
                    DataField = 'DOENCAGRAVE'
                    DataSource = DsCadastro
                    TabOrder = 2
                  end
                  object DBEdit95: TDBEdit
                    Left = 2
                    Top = 172
                    Width = 264
                    Height = 21
                    DataField = 'DOENCAMENTAL'
                    DataSource = DsCadastro
                    TabOrder = 3
                  end
                  object DBEdit96: TDBEdit
                    Left = 269
                    Top = 172
                    Width = 343
                    Height = 21
                    DataField = 'PROBLEMASAUDE'
                    DataSource = DsCadastro
                    TabOrder = 4
                  end
                  object DBComboBox26: TDBComboBox
                    Left = 2
                    Top = 78
                    Width = 200
                    Height = 21
                    Style = csDropDownList
                    DataField = 'DATADEPENDENCIA'
                    DataSource = DsCadastro
                    ItemHeight = 13
                    Items.Strings = (
                      'INF'#194'NCIA'
                      'ADOLESC'#202'NCIA'
                      'VIDA ADULTA'
                      'DEPOIS DE SER PRESO')
                    TabOrder = 5
                  end
                  object DBComboBox27: TDBComboBox
                    Left = 2
                    Top = 124
                    Width = 344
                    Height = 21
                    DataField = 'DROGASCOMCRIME'
                    DataSource = DsCadastro
                    ImeMode = imDisable
                    ItemHeight = 13
                    Items.Strings = (
                      'N'#195'O'
                      'SIM, PARA USO DE DROGAS'
                      'SIM, PARA USO DE BEBIDAS ALCO'#211'LICAS')
                    TabOrder = 6
                    OnKeyPress = DBComboBox27KeyPress
                  end
                  object DBEdit97: TDBEdit
                    Left = 333
                    Top = 32
                    Width = 279
                    Height = 21
                    DataField = 'EFEITOSDROGA'
                    DataSource = DsCadastro
                    TabOrder = 7
                  end
                  object DBEdit98: TDBEdit
                    Left = 2
                    Top = 214
                    Width = 257
                    Height = 21
                    DataField = 'MEDICACAOCONTROLADA'
                    DataSource = DsCadastro
                    TabOrder = 8
                  end
                  object DBEdit99: TDBEdit
                    Left = 266
                    Top = 212
                    Width = 177
                    Height = 21
                    DataField = 'DOENCAINFECTOCONTAGIOSA'
                    DataSource = DsCadastro
                    TabOrder = 9
                  end
                  object DBEdit100: TDBEdit
                    Left = 2
                    Top = 261
                    Width = 200
                    Height = 21
                    DataField = 'TRATAMENTOINFECTO'
                    DataSource = DsCadastro
                    TabOrder = 10
                  end
                  object DBEdit101: TDBEdit
                    Left = 209
                    Top = 261
                    Width = 225
                    Height = 21
                    DataField = 'RESULTADOINFECTO'
                    DataSource = DsCadastro
                    TabOrder = 11
                  end
                  object DBEdit15: TDBEdit
                    Left = 2
                    Top = 32
                    Width = 125
                    Height = 21
                    DataField = 'SUS'
                    DataSource = DsCadastro
                    TabOrder = 12
                  end
                end
                object TabSheet24: TTabSheet
                  Caption = 'Dados - 2'
                  ImageIndex = 1
                  object Label176: TLabel
                    Left = 6
                    Top = 9
                    Width = 423
                    Height = 13
                    Caption = 
                      'Possui alguma doen'#231'a que impe'#231'a de desenvolver alguma atividade ' +
                      'laborativa? Qual(is)?'
                    FocusControl = DBEdit102
                  end
                  object Label177: TLabel
                    Left = 6
                    Top = 52
                    Width = 100
                    Height = 13
                    Caption = 'Tentativa de suic'#237'dio'
                    FocusControl = DBEdit103
                  end
                  object Label178: TLabel
                    Left = 153
                    Top = 53
                    Width = 145
                    Height = 13
                    Caption = 'Diagn'#243'stico psiqui'#225'trico? CID?'
                    FocusControl = DBEdit104
                  end
                  object Label179: TLabel
                    Left = 404
                    Top = 53
                    Width = 102
                    Height = 13
                    Caption = 'Sintomas depressivos'
                    FocusControl = DBEdit105
                  end
                  object Label180: TLabel
                    Left = 6
                    Top = 97
                    Width = 92
                    Height = 13
                    Caption = 'Episodios de humor'
                    FocusControl = DBEdit106
                  end
                  object Label181: TLabel
                    Left = 6
                    Top = 137
                    Width = 93
                    Height = 13
                    Caption = 'Sintomas psic'#243'ticos'
                    FocusControl = DBEdit107
                  end
                  object Label182: TLabel
                    Left = 6
                    Top = 177
                    Width = 36
                    Height = 13
                    Caption = 'Del'#237'rios'
                    FocusControl = DBEdit108
                  end
                  object Label183: TLabel
                    Left = 6
                    Top = 217
                    Width = 58
                    Height = 13
                    Caption = 'Alucina'#231#245'es'
                    FocusControl = DBEdit109
                  end
                  object Label184: TLabel
                    Left = 6
                    Top = 257
                    Width = 193
                    Height = 13
                    Caption = 'Aspectos de personalidade (Transtornos)'
                    FocusControl = DBEdit110
                  end
                  object DBEdit102: TDBEdit
                    Left = 6
                    Top = 25
                    Width = 600
                    Height = 21
                    DataField = 'DOENCALABORAL'
                    DataSource = DsCadastro
                    TabOrder = 0
                  end
                  object DBEdit103: TDBEdit
                    Left = 6
                    Top = 68
                    Width = 145
                    Height = 21
                    DataField = 'SUICIDIO'
                    DataSource = DsCadastro
                    TabOrder = 1
                  end
                  object DBEdit104: TDBEdit
                    Left = 152
                    Top = 68
                    Width = 251
                    Height = 21
                    DataField = 'CID'
                    DataSource = DsCadastro
                    TabOrder = 2
                  end
                  object DBEdit105: TDBEdit
                    Left = 405
                    Top = 68
                    Width = 201
                    Height = 21
                    DataField = 'SINTOMASDEPRESSIVOS'
                    DataSource = DsCadastro
                    TabOrder = 3
                  end
                  object DBEdit106: TDBEdit
                    Left = 6
                    Top = 113
                    Width = 600
                    Height = 21
                    DataField = 'EPISODIOSHUMOR'
                    DataSource = DsCadastro
                    TabOrder = 4
                  end
                  object DBEdit107: TDBEdit
                    Left = 6
                    Top = 153
                    Width = 600
                    Height = 21
                    DataField = 'SINTOMASPSICOTICOS'
                    DataSource = DsCadastro
                    TabOrder = 5
                  end
                  object DBEdit108: TDBEdit
                    Left = 6
                    Top = 193
                    Width = 600
                    Height = 21
                    DataField = 'DELIRIOS'
                    DataSource = DsCadastro
                    TabOrder = 6
                  end
                  object DBEdit109: TDBEdit
                    Left = 6
                    Top = 233
                    Width = 600
                    Height = 21
                    DataField = 'ALUCINACOES'
                    DataSource = DsCadastro
                    TabOrder = 7
                  end
                  object DBEdit110: TDBEdit
                    Left = 6
                    Top = 273
                    Width = 600
                    Height = 21
                    DataField = 'PERSONALIDADE'
                    DataSource = DsCadastro
                    TabOrder = 8
                  end
                end
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 813
          inherited EditLocalizar: TEdit
            TabOrder = 1
          end
          inherited RadioGroupStatus: TRadioGroup
            Left = 691
            TabOrder = 3
          end
          inherited chkSoundex: TCheckBox
            Width = 60
            TabOrder = 2
          end
        end
        inherited PanelConsulta: TPanel
          Width = 813
          Height = 438
          inherited DBGridConsulta: TDBGrid
            Width = 811
            Height = 436
          end
          inherited DBCtrlGridConsulta: TDBCtrlGrid
            Width = 811
            Height = 436
            PanelHeight = 87
            PanelWidth = 794
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 936
    inherited Image2: TImage
      Width = 936
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 540
    Width = 936
  end
  inherited SqlCadastro: TSQLQuery
    Left = 616
    Top = 288
  end
  inherited DspCadastro: TDataSetProvider
    Left = 676
    Top = 288
  end
  inherited CdsCadastro: TClientDataSet
    Left = 728
    Top = 288
  end
  inherited DsCadastro: TDataSource
    Left = 780
    Top = 288
  end
  object Sqlhistorico_saude: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM historico_saude'
      'where id_interno = :id_interno')
    SQLConnection = DM.SQLConnect
    Left = 536
  end
  object Dsphistorico_saude: TDataSetProvider
    DataSet = Sqlhistorico_saude
    Left = 564
  end
  object Cdshistorico_saude: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'Dsphistorico_saude'
    Left = 592
    object Cdshistorico_saudeID_HISTORICO_SAUDE: TIntegerField
      FieldName = 'ID_HISTORICO_SAUDE'
      Required = True
    end
    object Cdshistorico_saudeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 8192
    end
    object Cdshistorico_saudeDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object Cdshistorico_saudeID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object Cdshistorico_saudeID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object Cdshistorico_saudeSETOR: TStringField
      FieldName = 'SETOR'
      Size = 50
    end
    object Cdshistorico_saudeFuncionrio: TStringField
      FieldKind = fkLookup
      FieldName = 'Funcion'#225'rio'
      LookupDataSet = DM.cdsfuncionario
      LookupKeyFields = 'ID_FUNCIONARIO'
      LookupResultField = 'NOME_FUNCIONARIO'
      KeyFields = 'ID_FUNCIONARIO'
      Size = 50
      Lookup = True
    end
  end
  object dshistorico_saude: TDataSource
    DataSet = Cdshistorico_saude
    Left = 620
  end
  object SQLdieta: TSQLQuery
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
      'FROM controle_dieta'
      'where'
      'id_interno = :id_interno')
    SQLConnection = DM.SQLConnect
    Left = 664
  end
  object DSPdieta: TDataSetProvider
    DataSet = SQLdieta
    Left = 692
  end
  object cdsdieta: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPdieta'
    Left = 720
    object cdsdietaID_CONTROLE_DIETA: TIntegerField
      FieldName = 'ID_CONTROLE_DIETA'
      Required = True
    end
    object cdsdietaID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object cdsdietaID_TIPO_DIETA: TIntegerField
      FieldName = 'ID_TIPO_DIETA'
    end
    object cdsdietaDATA_INICIO: TSQLTimeStampField
      FieldName = 'DATA_INICIO'
    end
    object cdsdietaDATA_TERMINO: TSQLTimeStampField
      FieldName = 'DATA_TERMINO'
    end
    object cdsdietaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 8192
    end
    object cdsdietaID_MEDICO: TIntegerField
      FieldName = 'ID_MEDICO'
      Required = True
    end
    object cdsdietaDATA_CONSULTA: TSQLTimeStampField
      FieldName = 'DATA_CONSULTA'
    end
    object cdsdietaID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsdietaFuncionrio: TStringField
      FieldKind = fkLookup
      FieldName = 'Funcion'#225'rio'
      LookupDataSet = DM.CdsFuncionarioLista
      LookupKeyFields = 'ID_FUNCIONARIO'
      LookupResultField = 'NOME_FUNCIONARIO'
      KeyFields = 'ID_FUNCIONARIO'
      Size = 50
      Lookup = True
    end
    object cdsdietaMdico: TStringField
      FieldKind = fkLookup
      FieldName = 'M'#233'dico'
      LookupDataSet = DM.cdsmedico
      LookupKeyFields = 'ID_MEDICO'
      LookupResultField = 'MEDICO'
      KeyFields = 'ID_MEDICO'
      Size = 50
      Lookup = True
    end
    object cdsdietaTipoDieta: TStringField
      FieldKind = fkLookup
      FieldName = 'TipoDieta'
      LookupDataSet = DM.cdstipodieta
      LookupKeyFields = 'ID_TIPO_DIETA'
      LookupResultField = 'TIPO_DIETA'
      KeyFields = 'ID_TIPO_DIETA'
      Size = 50
      Lookup = True
    end
  end
  object dsdieta: TDataSource
    DataSet = cdsdieta
    OnDataChange = DsCadastroDataChange
    Left = 748
  end
  object SQLenfermidadeinterno: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'select * from ENFERMDIADE_INTERNO'
      'where id_interno = :id')
    SQLConnection = DM.SQLConnect
    Left = 784
    Top = 112
  end
  object DSPenfermidadeinterno: TDataSetProvider
    DataSet = SQLenfermidadeinterno
    Left = 816
    Top = 112
  end
  object CDSenfermidadeinterno: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPenfermidadeinterno'
    Left = 848
    Top = 112
    object CDSenfermidadeinternoID_ENFERMDIADE_INTERNO: TIntegerField
      FieldName = 'ID_ENFERMDIADE_INTERNO'
      Required = True
    end
    object CDSenfermidadeinternoID_ENFERMIDADE: TIntegerField
      FieldName = 'ID_ENFERMIDADE'
    end
    object CDSenfermidadeinternoID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object CDSenfermidadeinternoEnfermidade: TStringField
      FieldKind = fkLookup
      FieldName = 'Enfermidade'
      LookupDataSet = DM.cdsenfermidade
      LookupKeyFields = 'ID_ENFERMIDADE'
      LookupResultField = 'ENFERMIDADE'
      KeyFields = 'ID_ENFERMIDADE'
      Size = 100
      Lookup = True
    end
    object CDSenfermidadeinternoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
  end
  object DSENFERMDIADE_INTERNO: TDataSource
    DataSet = CDSenfermidadeinterno
    Left = 880
    Top = 112
  end
  object SQLremedioenfermdiade: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'enfermidade'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from remedio_enfermidade'
      'where id_enfermidade_interno = :enfermidade')
    SQLConnection = DM.SQLConnect
    Left = 528
    Top = 48
  end
  object DSPremedioenfermdiade: TDataSetProvider
    DataSet = SQLremedioenfermdiade
    Left = 560
    Top = 48
  end
  object CDSremedioenfermdiade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_ENFERMIDADE_INTERNO'
    MasterFields = 'ID_ENFERMDIADE_INTERNO'
    MasterSource = DSENFERMDIADE_INTERNO
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPremedioenfermdiade'
    Left = 592
    Top = 48
    object CDSremedioenfermdiadeID_REMEDIO_ENFERMIDADE: TIntegerField
      FieldName = 'ID_REMEDIO_ENFERMIDADE'
      Required = True
    end
    object CDSremedioenfermdiadeID_REMEDIO: TIntegerField
      FieldName = 'ID_REMEDIO'
    end
    object CDSremedioenfermdiadeDATA_INICIO: TSQLTimeStampField
      FieldName = 'DATA_INICIO'
    end
    object CDSremedioenfermdiadeDATA_FIM: TSQLTimeStampField
      FieldName = 'DATA_FIM'
    end
    object CDSremedioenfermdiadeSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 10
    end
    object CDSremedioenfermdiadeID_ENFERMIDADE_INTERNO: TIntegerField
      FieldName = 'ID_ENFERMIDADE_INTERNO'
    end
    object CDSremedioenfermdiadeOBS: TStringField
      FieldName = 'OBS'
      Size = 1000
    end
    object CDSremedioenfermdiadeRemdio: TStringField
      FieldKind = fkLookup
      FieldName = 'Rem'#233'dio'
      LookupDataSet = DM.CDSRemedio
      LookupKeyFields = 'ID_REMEDIO'
      LookupResultField = 'NOME_REMEDIO'
      KeyFields = 'ID_REMEDIO'
      Size = 50
      Lookup = True
    end
    object CDSremedioenfermdiadeQTDE: TStringField
      FieldName = 'QTDE'
      Size = 10
    end
  end
  object dsremedioenfermidade: TDataSource
    DataSet = CDSremedioenfermdiade
    Left = 624
    Top = 48
  end
  object PopupMenuIsolamento: TPopupMenu
    Left = 788
    Top = 1
    object Liberar1: TMenuItem
      Caption = 'Encerrar Tratamento'
      OnClick = Liberar1Click
    end
  end
  object SQLdeficienciainterno: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'select * from deficiencia_interno'
      'where id_interno = :id_interno')
    SQLConnection = DM.SQLConnect
    Left = 648
    Top = 168
  end
  object dspdeficienciainterno: TDataSetProvider
    DataSet = SQLdeficienciainterno
    Left = 680
    Top = 168
  end
  object cdsdeficienciainterno: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspdeficienciainterno'
    Left = 728
    Top = 168
    object cdsdeficienciainternoID_DEFICIENCIA_INTERNO: TIntegerField
      FieldName = 'ID_DEFICIENCIA_INTERNO'
      Required = True
    end
    object cdsdeficienciainternoID_DEFICIENCIA: TIntegerField
      FieldName = 'ID_DEFICIENCIA'
    end
    object cdsdeficienciainternoID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object cdsdeficienciainternoTIPO_LOCOMOCAO: TStringField
      FieldName = 'TIPO_LOCOMOCAO'
      Size = 50
    end
    object cdsdeficienciainternoMEMBRO: TStringField
      FieldName = 'MEMBRO'
      Size = 50
    end
    object cdsdeficienciainternoTIPO_ATROFIA: TStringField
      FieldName = 'TIPO_ATROFIA'
      Size = 50
    end
    object cdsdeficienciainternoMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 100
    end
    object cdsdeficienciainternoID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsdeficienciainternoDeficincia: TStringField
      FieldKind = fkLookup
      FieldName = 'Defici'#234'ncia'
      LookupDataSet = DM.cdsdeficiencia
      LookupKeyFields = 'ID_DEFICIENCIA'
      LookupResultField = 'DEFICIENCIA'
      KeyFields = 'ID_DEFICIENCIA'
      Size = 50
      Lookup = True
    end
  end
  object dsdeficienciainterno: TDataSource
    DataSet = cdsdeficienciainterno
    Left = 760
    Top = 168
  end
  object SQLvacinainterno: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'select * from vacina_interno'
      'where id_interno = :id_interno')
    SQLConnection = DM.SQLConnect
    Left = 664
    Top = 224
  end
  object dspvacinainterno: TDataSetProvider
    DataSet = SQLvacinainterno
    Left = 696
    Top = 224
  end
  object cdsvacinainterno: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspvacinainterno'
    Left = 728
    Top = 224
    object cdsvacinainternoID_VACINA_INTERNO: TIntegerField
      FieldName = 'ID_VACINA_INTERNO'
      Required = True
    end
    object cdsvacinainternoID_VACINA: TIntegerField
      FieldName = 'ID_VACINA'
    end
    object cdsvacinainternoID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object cdsvacinainternoDATA_VACINA: TSQLTimeStampField
      FieldName = 'DATA_VACINA'
    end
    object cdsvacinainternoDOSE: TStringField
      FieldName = 'DOSE'
      Size = 50
    end
    object cdsvacinainternoVacina: TStringField
      FieldKind = fkLookup
      FieldName = 'Vacina'
      LookupDataSet = DM.cdsvacina
      LookupKeyFields = 'ID_VACINA'
      LookupResultField = 'VACINA'
      KeyFields = 'ID_VACINA'
      Size = 50
      Lookup = True
    end
  end
  object dsvacinainterno: TDataSource
    DataSet = cdsvacinainterno
    Left = 760
    Top = 224
  end
end
