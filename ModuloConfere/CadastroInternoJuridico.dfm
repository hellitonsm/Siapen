inherited FrmCadastroInternoJuridico: TFrmCadastroInternoJuridico
  Left = 581
  Top = 226
  Width = 964
  Height = 663
  Caption = 'Cadastro Jur'#237'dico'
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Width = 956
    Height = 40
    Align = alTop
    inherited ToolBarModeloCadastro: TToolBar
      Width = 876
      Height = 40
      inherited Novo: TToolButton
        Wrap = False
      end
      inherited Editar: TToolButton
        Left = 114
        Top = 0
        Wrap = False
      end
      inherited Cancelar: TToolButton
        Left = 222
        Top = 0
        Wrap = False
      end
      inherited Salvar: TToolButton
        Left = 330
        Top = 0
        Wrap = False
      end
      inherited Excluir: TToolButton
        Left = 438
        Top = 0
        Wrap = False
      end
      inherited Fechar: TToolButton
        Left = 546
        Top = 0
      end
    end
    inherited DBNavigator1: TDBNavigator
      Left = 876
      Top = 0
      Width = 80
      Height = 40
      Align = alRight
      Hints.Strings = ()
      TabOrder = 1
    end
    inherited DBImage1: TDBImage
      TabOrder = 3
    end
    object DBImage2: TDBImage
      Left = 816
      Top = 1
      Width = 40
      Height = 38
      BorderStyle = bsNone
      DataField = 'FOTO'
      DataSource = DsCadastro
      Enabled = False
      Stretch = True
      TabOrder = 2
    end
  end
  inherited PanelModeloCadastro: TPanel
    Left = 0
    Top = 72
    Width = 956
    Height = 519
    inherited PageControlModeloCadastro: TPageControl
      Width = 956
      Height = 519
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 948
          Height = 491
          inherited PageControlPrincipal: TPageControl
            Width = 946
            Height = 489
            ActivePage = TabSheetjuridico
            OnChange = PageControlPrincipalChange
            inherited TabSheetPrincipal: TTabSheet
              Enabled = True
              inherited Label2: TLabel
                Enabled = True
              end
              inherited Label3: TLabel
                Enabled = True
              end
              inherited Label4: TLabel
                Enabled = True
              end
              inherited Label12: TLabel
                Enabled = True
              end
              inherited SpeedButton1: TSpeedButton
                Enabled = True
              end
              inherited Label45: TLabel
                Enabled = True
              end
              inherited Label46: TLabel
                Enabled = True
              end
              inherited SpeedButton2: TSpeedButton
                Enabled = True
              end
              inherited Label27: TLabel
                Enabled = True
              end
              inherited Label36: TLabel
                Enabled = True
              end
              inherited Label65: TLabel
                Enabled = True
              end
              inherited Label66: TLabel
                Enabled = True
              end
              inherited lbl1: TLabel
                Enabled = True
              end
              inherited Label43: TLabel
                Enabled = True
              end
              inherited Label18: TLabel
                Enabled = True
              end
              inherited Label44: TLabel
                Enabled = True
              end
              inherited Label54: TLabel
                Enabled = True
              end
              inherited Label78: TLabel
                Enabled = True
              end
              inherited Label79: TLabel
                Enabled = True
              end
              inherited Label80: TLabel
                Enabled = True
              end
              inherited Label82: TLabel
                Left = 220
                Enabled = True
              end
              inherited Label83: TLabel
                Enabled = True
              end
              inherited DBEdit2: TDBEdit
                Enabled = True
              end
              inherited DBEdit3: TDBEdit
                Enabled = True
              end
              inherited DBEditID_PROCEDENCIA: TDBEdit
                Enabled = True
              end
              inherited DBLookupComboBoxID_PROCEDENCIA: TDBLookupComboBox
                Enabled = True
              end
              inherited DBRadioGroup1: TDBRadioGroup
                Enabled = True
              end
              inherited DBRadioGroup2: TDBRadioGroup
                Enabled = True
              end
              inherited DBEdit6: TDBEdit
                Enabled = True
              end
              inherited DBLookupComboBox1: TDBLookupComboBox
                Enabled = True
              end
              inherited DBEdit7: TDBEdit
                Enabled = True
              end
              inherited DBLookupComboBox2: TDBLookupComboBox
                Enabled = True
              end
              inherited DBImageFOTOInterno: TDBImage
                Enabled = True
              end
              inherited DBEdit24: TDBEdit
                Enabled = True
              end
              inherited DBEdit25: TDBEdit
                Enabled = True
              end
              inherited DBEdit35: TDBEdit
                Enabled = True
              end
              inherited DBComboBox3: TDBComboBox
                Enabled = True
              end
              inherited DBEdit86: TDBEdit
                Enabled = True
              end
              inherited dbrgrpST: TDBRadioGroup
                Enabled = True
              end
              inherited DBComboBox2: TDBComboBox
                Top = 220
              end
              inherited DBLookupComboBoxFACCAO: TDBLookupComboBox
                Enabled = True
              end
              inherited DBEdit8: TDBEdit
                Enabled = True
              end
              inherited DBEdit31: TDBEdit
                Enabled = True
              end
              inherited DBEdit33: TDBEdit
                Enabled = True
              end
              inherited DBComboBox5: TDBComboBox
                Left = 221
                Top = 394
                Enabled = True
                Items.Strings = (
                  'Aberto'
                  'Fechado'
                  'Medida de Seguran'#231'a'
                  'Medida de Tratamento'
                  'Provis'#243'rio'
                  'Semi-Aberto'
                  'Semi-Aberto Sem Saida'
                  'Semi-Aberto Com Trabalho Externo'
                  'Semi-Aberto Com Trabalho Externo e Sa'#237'da'
                  'Semi-Aberto Com Saida'
                  'Tempor'#225'rio')
              end
              inherited DBComboBox4: TDBComboBox
                Enabled = True
              end
            end
            inherited TabSheetDadosGerais: TTabSheet
              inherited Label11: TLabel
                Top = 64
                Enabled = True
              end
              inherited Label19: TLabel
                Top = 47
                Enabled = True
              end
              inherited Label21: TLabel
                Top = 87
                Enabled = True
              end
              inherited Label22: TLabel
                Top = 143
                Enabled = True
              end
              inherited Label23: TLabel
                Top = 165
                Enabled = True
              end
              inherited Label20: TLabel
                Top = 87
                Enabled = True
              end
              inherited Label37: TLabel
                Top = 203
                Enabled = True
              end
              inherited Label13: TLabel
                Top = 204
                Enabled = True
              end
              inherited SpeedButton4: TSpeedButton
                Top = 102
                Enabled = True
                OnClick = SpeedButton4Click
              end
              inherited SpeedButton5: TSpeedButton
                Top = 102
                Enabled = True
                OnClick = SpeedButton5Click
              end
              inherited SpeedButton6: TSpeedButton
                Top = 142
                Enabled = True
                OnClick = SpeedButton6Click
              end
              inherited SpeedButton7: TSpeedButton
                Top = 181
                Enabled = True
                OnClick = SpeedButton7Click
              end
              inherited SpeedButton9: TSpeedButton
                Top = 217
                Enabled = True
                OnClick = SpeedButton9Click
              end
              inherited Label5: TLabel
                Top = 7
                Enabled = True
              end
              inherited Label24: TLabel
                Top = 7
                Enabled = True
              end
              inherited Label25: TLabel
                Top = 7
                Enabled = True
              end
              inherited Label39: TLabel
                Top = 7
                Enabled = True
              end
              inherited Label47: TLabel
                Top = 7
                Enabled = True
              end
              inherited Label52: TLabel
                Top = 7
                Enabled = True
              end
              inherited Label63: TLabel
                Top = 127
                Enabled = True
              end
              inherited Label64: TLabel
                Top = 126
                Enabled = True
              end
              inherited Label28: TLabel
                Top = 240
                Enabled = True
              end
              inherited Label30: TLabel
                Top = 280
                Enabled = True
              end
              inherited Label31: TLabel
                Top = 321
                Enabled = True
              end
              inherited Label32: TLabel
                Top = 321
                Enabled = True
              end
              inherited Label33: TLabel
                Top = 359
                Enabled = True
              end
              inherited Label34: TLabel
                Top = 359
                Enabled = True
              end
              inherited Label35: TLabel
                Top = 399
                Enabled = True
              end
              inherited SpeedButton11: TSpeedButton
                Top = 373
                Enabled = True
                OnClick = SpeedButton11Click
              end
              inherited lbl2: TLabel
                Top = 399
                Enabled = True
              end
              inherited btn1: TSpeedButton
                Top = 414
                Enabled = True
                OnClick = btn1Click
              end
              inherited Label6: TLabel
                Top = 280
                Enabled = True
              end
              inherited Label7: TLabel
                Top = 127
                Enabled = True
              end
              inherited Label9: TLabel
                Top = 48
                Enabled = True
              end
              inherited DBEdit1: TDBEdit
                Top = 63
                Enabled = True
              end
              inherited DBEdit5: TDBEdit
                Top = 63
                Enabled = True
              end
              inherited DBLookupComboBoxIDNATURALIDADE: TDBLookupComboBox
                Top = 103
                Enabled = True
              end
              inherited DBLookupComboBoxIDNACIONALIDADE: TDBLookupComboBox
                Top = 103
                Enabled = True
              end
              inherited DBLookupComboBoxIDRACA: TDBLookupComboBox
                Top = 142
                Enabled = True
              end
              inherited DBLookupComboBoxIDESCOLARIDADE: TDBLookupComboBox
                Top = 181
                Enabled = True
              end
              inherited DBLookupComboBoxIDPROFISSAO: TDBLookupComboBox
                Top = 220
                Enabled = True
                TabOrder = 24
              end
              inherited DBEdit9: TDBEdit
                Top = 23
                Enabled = True
              end
              inherited DBEdit19: TDBEdit
                Top = 23
                Enabled = True
                OnExit = DBEdit19Exit
              end
              inherited DBComboBox1: TDBComboBox
                Top = 23
                Enabled = True
                Items.Strings = (
                  'Amasiado'
                  'Casado'
                  'Divorciado'
                  'Separado Judicialmente'
                  'Solteiro'
                  'Viuvo'
                  'Uni'#227'o Estavel'
                  'N'#227'o Declarado')
              end
              inherited DBEdit26: TDBEdit
                Top = 23
                Enabled = True
              end
              inherited DBEdit27: TDBEdit
                Top = 23
                Enabled = True
              end
              inherited DBEdit28: TDBEdit
                Top = 23
                Enabled = True
              end
              inherited DBEdit32: TDBEdit
                Top = 142
                Enabled = True
              end
              inherited DBEdit34: TDBEdit
                Top = 142
                Enabled = True
              end
              inherited DBEdit10: TDBEdit
                Top = 256
                Enabled = True
                TabOrder = 14
              end
              inherited DBEdit11: TDBEdit
                Top = 296
                Enabled = True
                TabOrder = 15
              end
              inherited DBEdit12: TDBEdit
                Top = 296
                Enabled = True
                TabOrder = 16
              end
              inherited DBEdit13: TDBEdit
                Top = 337
                Enabled = True
                TabOrder = 17
              end
              inherited DBEdit14: TDBEdit
                Top = 337
                Enabled = True
                TabOrder = 18
              end
              inherited DBEdit16: TDBEdit
                Top = 375
                Enabled = True
                TabOrder = 20
              end
              inherited DBEdit17: TDBEdit
                Top = 415
                Enabled = True
                TabOrder = 22
              end
              inherited DBLookupComboBoxIDCIDADE: TDBLookupComboBox
                Top = 375
                Enabled = True
                TabOrder = 19
              end
              inherited DBLookupComboBoxIDNACIONALIDADE1: TDBLookupComboBox
                Top = 415
                Enabled = True
                TabOrder = 21
              end
              inherited DBComboBoxReligiao1: TDBComboBox
                Top = 220
                Enabled = True
                TabOrder = 23
              end
            end
            object TabSheetjuridico: TTabSheet
              Caption = 'Jur'#237'dico'
              ImageIndex = 2
              object SpeedButton3: TSpeedButton
                Left = 380
                Top = 8
                Width = 23
                Height = 22
                Hint = 'Tirar Medida de Seguran'#231'a'
                Caption = '#'
                Flat = True
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton3Click
              end
              object Label17: TLabel
                Left = 16
                Top = 11
                Width = 83
                Height = 13
                Caption = 'Situa'#231#227'o Jurid'#237'ca'
              end
              object DBRadioGroup3: TDBRadioGroup
                Left = 415
                Top = -1
                Width = 170
                Height = 34
                DataField = 'MEDIDASEGURANCA'
                DataSource = DsCadastro
                Items.Strings = (
                  'MEDIDA DE SEGURAN'#199'A')
                TabOrder = 1
                Values.Strings = (
                  'MS')
              end
              object PageControl1: TPageControl
                Left = 0
                Top = 38
                Width = 862
                Height = 408
                ActivePage = TabSheet2
                TabOrder = 2
                TabWidth = 150
                object TabSheet2: TTabSheet
                  Caption = 'Controle Perman'#234'ncia'
                  object Label15: TLabel
                    Left = 5
                    Top = 11
                    Width = 53
                    Height = 13
                    Caption = 'Data Inicial'
                    Transparent = True
                  end
                  object Label57: TLabel
                    Left = 5
                    Top = 54
                    Width = 42
                    Height = 13
                    Caption = 'N'#186' Autos'
                    Transparent = True
                  end
                  object Label58: TLabel
                    Left = 172
                    Top = 54
                    Width = 177
                    Height = 13
                    Caption = 'Observa'#231#227'o referente '#224' Perman'#234'ncia'
                    Transparent = True
                  end
                  object Label56: TLabel
                    Left = 89
                    Top = 11
                    Width = 135
                    Height = 13
                    Caption = 'Autoriza'#231#227'o (Juiz/Colegiado)'
                    Transparent = True
                  end
                  object Label26: TLabel
                    Left = 508
                    Top = 11
                    Width = 74
                    Height = 13
                    Caption = 'Dias Autorizado'
                    Transparent = True
                  end
                  object Label16: TLabel
                    Left = 599
                    Top = 11
                    Width = 64
                    Height = 13
                    Caption = 'Data Retorno'
                    Transparent = True
                  end
                  object LbNumConflito: TLabel
                    Left = 712
                    Top = 54
                    Width = 65
                    Height = 13
                    Caption = 'N'#186' do Conflito'
                    Enabled = False
                  end
                  object LbObsConflito: TLabel
                    Left = 712
                    Top = 160
                    Width = 120
                    Height = 13
                    Caption = 'Obs. referente ao Conflito'
                    Enabled = False
                  end
                  object LbMSG1: TLabel
                    Left = 248
                    Top = 234
                    Width = 338
                    Height = 26
                    Caption = 
                      'Clique no menos (-) para excluir o registro de perman'#234'ncia selec' +
                      'ionado. Obs: S'#243' '#233' poss'#237'vel excluir a perman'#234'ncia ap'#243's excluir os' +
                      ' anexos dela.'
                    WordWrap = True
                  end
                  object GroupBox1: TGroupBox
                    Left = 0
                    Top = 264
                    Width = 710
                    Height = 123
                    Caption = 'Anexos'
                    TabOrder = 17
                    object LbMSG2: TLabel
                      Left = 16
                      Top = 88
                      Width = 134
                      Height = 26
                      Caption = 'Clique no menos (-) para excluir o anexo selecionado.'
                      WordWrap = True
                    end
                  end
                  object BtnIncluirDocDigitalizado: TBitBtn
                    Left = 56
                    Top = 273
                    Width = 200
                    Height = 30
                    Caption = 'Incluir Doc. Digitalizado'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -13
                    Font.Name = 'Times New Roman'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 13
                    TabStop = False
                    OnClick = BtnIncluirDocDigitalizadoClick
                    Glyph.Data = {
                      36020000424D3602000000000000360100002800000010000000100000000100
                      08000000000000010000120B0000120B0000400000004000000000000000FFFF
                      FF00FF00FF00A4676900A56B5F00A7756B00BC826800F2E7E100D1926D00C078
                      4900DA9D7500E7AB7900EDC79500FFEFD700FBE6C000F8E0AD00FFFCEE00D1E9
                      F000A4D7E600ADDCEB00B0DDEB005CAAC60083C1D800ACDAEA00B2DCEA00BDE1
                      ED00CAE5EE00395662004E687200A6D4E700096B99000D6F9D00167DAD00155F
                      81003596C1005DA9CB00162830007FBBD7009DCFE600A9D3E600E7F7FE000066
                      980000649700015F90000160900002699C000262900005699A00056797000566
                      95001075A500359FD5001B44580045A0CC0049A1CB005FB5E0002C4F600073C2
                      EB0073C0E7009FD4EE00B6DDF000BDE1F300A1D1EB00ACD8F000020202020202
                      020202020202020202023131020202020231313131313131020231331F022402
                      24213B3E2E233F310202313A221C1B3438203C3D2B2528310202312731240224
                      022F37312E3139310202312C0202020232363102020231353102020202020231
                      1D3102020202023126310202020202311A3102030303022A1131020202020231
                      183102030C0302291931020202020231123102030F0302291731020202020231
                      133102050E0302291431020202020231153102060D03022D1631020202020202
                      31310208100302301E020202020202020202020A070402020202020202020202
                      0202020B09020202020202020202020202020208020202020202}
                    Style = bsWin31
                  end
                  object BtnVisuzalizarDocDigitalizador: TBitBtn
                    Left = 56
                    Top = 313
                    Width = 200
                    Height = 30
                    Caption = 'Visualizar Doc. Digitalizado'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -13
                    Font.Name = 'Times New Roman'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 14
                    TabStop = False
                    OnClick = BtnVisuzalizarDocDigitalizadorClick
                    Glyph.Data = {
                      5E020000424D5E020000000000005E0100002800000010000000100000000100
                      08000000000000010000120B0000120B00004A0000004A00000000000000FFFF
                      FF00FF00FF00FCFCFC00F6F6F600F3F3F300F0F0F000ECECEC00EBEBEB00EAEA
                      EA00E8E8E800E4E4E400E2E2E200E1E1E100E0E0E000DFDFDF00DEDEDE00D9D9
                      D900D6D6D600D5D5D500D3D3D300D2D2D200D1D1D100D0D0D000CECECE00CCCC
                      CC00C9C9C900C6C6C600C5C5C500C4C4C400C3C3C300C2C2C200C1C1C100BFBF
                      BF00BEBEBE00BCBCBC00B8B8B800B7B7B700B6B6B600B5B5B500B2B2B200B0B0
                      B000AEAEAE00ADADAD00ACACAC00ABABAB00AAAAAA00A9A9A900A8A8A800A7A7
                      A700A6A6A600A5A5A500A4A4A400A3A3A300A2A2A2009E9E9E009D9D9D009C9C
                      9C009898980097979700929292008E8E8E008484840083838300828282008181
                      8100808080007F7F7F007E7E7E007878780077777700767676006A6A6A006363
                      630002492F020202020202020202020202023B3F462B02020202020202020202
                      020234303E472C020202020202020202020202313041462A0202020202020202
                      02020202313240453202020202020202020202020230334248023D2A22250202
                      0202020202022E163A381108090812240202020202020220210E09192D0E0406
                      370202020202022E13140B25440D03011802020202020220133228394329220B
                      0D2A02020202021A163C4343434444190A2902020202021D11282436421F140A
                      0B290202020202290F0F183543150A0717020202020202021C010523391E110C
                      3202020202020202021B0910131113260202020202020202020229271E1F0202
                      0202}
                    Style = bsWin31
                  end
                  object DBNavigator2: TDBNavigator
                    Left = -1
                    Top = 234
                    Width = 240
                    Height = 25
                    DataSource = DsControlePermanencia
                    TabOrder = 12
                  end
                  object DBGrid3: TDBGrid
                    Left = 264
                    Top = 273
                    Width = 441
                    Height = 105
                    DataSource = DsPermanenciaScaner
                    Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
                    ReadOnly = True
                    TabOrder = 15
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    OnDblClick = DBGrid3DblClick
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'DESCRICAO_PERMANENCIA'
                        Title.Caption = 'Documentos Digitalizados'
                        Width = 420
                        Visible = True
                      end>
                  end
                  object DBEditDataInicio: TDBEdit
                    Left = 5
                    Top = 29
                    Width = 82
                    Height = 21
                    DataField = 'data_inicial'
                    DataSource = DsControlePermanencia
                    TabOrder = 0
                    OnExit = DBEditDataInicioExit
                    OnKeyPress = DBEditDataInicioKeyPress
                  end
                  object DBEdit23: TDBEdit
                    Left = 5
                    Top = 69
                    Width = 164
                    Height = 21
                    DataField = 'nautos'
                    DataSource = DsControlePermanencia
                    TabOrder = 4
                  end
                  object DBMemo4: TDBMemo
                    Left = 172
                    Top = 69
                    Width = 333
                    Height = 41
                    DataField = 'obs'
                    DataSource = DsControlePermanencia
                    TabOrder = 5
                  end
                  object DBEdit22: TDBEdit
                    Left = 89
                    Top = 29
                    Width = 418
                    Height = 21
                    DataField = 'autorizacao'
                    DataSource = DsControlePermanencia
                    TabOrder = 1
                  end
                  object DBEdit30: TDBEdit
                    Left = 508
                    Top = 29
                    Width = 90
                    Height = 21
                    DataField = 'diasautorizados'
                    DataSource = DsControlePermanencia
                    TabOrder = 2
                  end
                  object DBEditDataFim: TDBEdit
                    Left = 599
                    Top = 29
                    Width = 90
                    Height = 21
                    DataField = 'data_final'
                    DataSource = DsControlePermanencia
                    TabOrder = 3
                    OnExit = DBEditDataFimExit
                    OnKeyPress = DBEditDataFimKeyPress
                  end
                  object DBGrid11: TDBGrid
                    Left = 0
                    Top = 112
                    Width = 705
                    Height = 120
                    DataSource = DsControlePermanencia
                    ReadOnly = True
                    TabOrder = 11
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    OnDrawColumnCell = DBGrid11DrawColumnCell
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'data_inicial'
                        Title.Caption = 'Data Inicial'
                        Width = 80
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'autorizacao'
                        Title.Caption = 'Juiz/Colegiado'
                        Width = 100
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'diasautorizados'
                        Title.Caption = 'Dias Aut.'
                        Width = 60
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'data_final'
                        Title.Caption = 'Data Final'
                        Width = 80
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'nautos'
                        Title.Caption = 'N'#186' Autos'
                        Width = 100
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'obs'
                        Title.Caption = 'Observa'#231#227'o Perman'#234'ncia'
                        Width = 260
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CONFLITO_COMPETENCIA'
                        Title.Caption = 'H'#225' Conflito?'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'NUM_CONFLITO_COMPETENCIA'
                        Title.Caption = 'N'#186' Conflito'
                        Width = 100
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'OBS_CONFLITO_COMPETENCIA'
                        Title.Caption = 'Observa'#231#227'o Conflito'
                        Width = 260
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CONFLITO_STATUS'
                        Title.Caption = 'Status Conflito'
                        Width = 80
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'OFICIO_PRAZO'
                        Title.Caption = 'Of'#237'cio Renova'#231#227'o'
                        Width = 94
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'NUM_OFICIO_PRAZO'
                        Title.Caption = 'N'#186' Of'#237'cio'
                        Width = 100
                        Visible = True
                      end>
                  end
                  object DBRadioGroupConflito: TDBRadioGroup
                    Left = 696
                    Top = 8
                    Width = 153
                    Height = 41
                    Caption = 'H'#225' Conflito de Compet'#234'ncia?'
                    Columns = 2
                    DataField = 'CONFLITO_COMPETENCIA'
                    DataSource = DsControlePermanencia
                    Items.Strings = (
                      'Sim'
                      'N'#227'o')
                    TabOrder = 7
                    Values.Strings = (
                      'S'
                      'N')
                    OnChange = DBRadioGroupConflitoChange
                    OnClick = DBRadioGroupConflitoClick
                  end
                  object DBEditNumConflito: TDBEdit
                    Left = 712
                    Top = 69
                    Width = 137
                    Height = 21
                    DataField = 'NUM_CONFLITO_COMPETENCIA'
                    DataSource = DsControlePermanencia
                    Enabled = False
                    TabOrder = 8
                  end
                  object DBMemoObsConflito: TDBMemo
                    Left = 712
                    Top = 176
                    Width = 137
                    Height = 185
                    DataField = 'OBS_CONFLITO_COMPETENCIA'
                    DataSource = DsControlePermanencia
                    Enabled = False
                    TabOrder = 10
                  end
                  object DBRadioGroupStatusConflito: TDBRadioGroup
                    Left = 712
                    Top = 104
                    Width = 137
                    Height = 49
                    Caption = 'Status do Conflito'
                    DataField = 'CONFLITO_STATUS'
                    DataSource = DsControlePermanencia
                    Enabled = False
                    Items.Strings = (
                      'Em Andamento'
                      'Finalizado')
                    TabOrder = 9
                    Values.Strings = (
                      'A'
                      'F')
                  end
                  object DBNavigator3: TDBNavigator
                    Left = 160
                    Top = 352
                    Width = 100
                    Height = 25
                    DataSource = DsPermanenciaScaner
                    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete]
                    TabOrder = 16
                  end
                  object GbOficioPrazo: TGroupBox
                    Left = 508
                    Top = 54
                    Width = 197
                    Height = 57
                    Caption = 'Of'#237'cio de Renova'#231#227'o de Prazo'
                    TabOrder = 6
                    object LbNumOficioPrazo: TLabel
                      Left = 104
                      Top = 15
                      Width = 59
                      Height = 13
                      Caption = 'N'#186' do Of'#237'cio'
                      Enabled = False
                    end
                    object DbRgEnviadoOficioPrazo: TDBRadioGroup
                      Left = 4
                      Top = 16
                      Width = 93
                      Height = 36
                      Caption = 'Enviado?'
                      Columns = 2
                      DataField = 'OFICIO_PRAZO'
                      DataSource = DsControlePermanencia
                      Items.Strings = (
                        'Sim'
                        'N'#227'o')
                      TabOrder = 0
                      Values.Strings = (
                        'S'
                        'N')
                      OnChange = DbRgEnviadoOficioPrazoChange
                      OnClick = DbRgEnviadoOficioPrazoClick
                    end
                    object DBEditNumOficioPrazo: TDBEdit
                      Left = 104
                      Top = 31
                      Width = 89
                      Height = 21
                      DataField = 'NUM_OFICIO_PRAZO'
                      DataSource = DsControlePermanencia
                      Enabled = False
                      TabOrder = 1
                    end
                  end
                end
                object TabSheet3: TTabSheet
                  Caption = 
                    'Metodo Antigo no Jur'#237'dico (Substituido por Cadastro de Processos' +
                    ')'
                  ImageIndex = 1
                  TabVisible = False
                  object PageControl2: TPageControl
                    Left = 8
                    Top = 4
                    Width = 648
                    Height = 363
                    ActivePage = TabSheet9
                    TabOrder = 0
                    object TabSheet9: TTabSheet
                      Caption = 'Condena'#231#227'o do Interno'
                      object Label71: TLabel
                        Left = 16
                        Top = 113
                        Width = 32
                        Height = 13
                        Caption = 'Artigos'
                      end
                      object Label72: TLabel
                        Left = 16
                        Top = 152
                        Width = 58
                        Height = 13
                        Caption = 'Observa'#231#227'o'
                      end
                      object Label73: TLabel
                        Left = 403
                        Top = 115
                        Width = 19
                        Height = 13
                        Caption = 'Ano'
                      end
                      object Label74: TLabel
                        Left = 475
                        Top = 115
                        Width = 20
                        Height = 13
                        Caption = 'M'#234's'
                      end
                      object Label75: TLabel
                        Left = 555
                        Top = 115
                        Width = 16
                        Height = 13
                        Caption = 'Dia'
                      end
                      object Label139: TLabel
                        Left = 16
                        Top = 0
                        Width = 42
                        Height = 13
                        Caption = 'Comarca'
                      end
                      object Label150: TLabel
                        Left = 296
                        Top = 0
                        Width = 22
                        Height = 13
                        Caption = 'Vara'
                      end
                      object Label151: TLabel
                        Left = 16
                        Top = 38
                        Width = 29
                        Height = 13
                        Caption = 'Pris'#227'o'
                      end
                      object Label152: TLabel
                        Left = 296
                        Top = 38
                        Width = 20
                        Height = 13
                        Caption = 'R'#233'u'
                      end
                      object Label153: TLabel
                        Left = 457
                        Top = 38
                        Width = 59
                        Height = 13
                        Caption = 'N'#186' Processo'
                      end
                      object Label154: TLabel
                        Left = 16
                        Top = 75
                        Width = 90
                        Height = 13
                        Caption = 'Guia Recolhimento'
                      end
                      object Label155: TLabel
                        Left = 345
                        Top = 75
                        Width = 83
                        Height = 13
                        Caption = 'Situa'#231#227'o Jur'#237'dica'
                      end
                      object Label162: TLabel
                        Left = 457
                        Top = 0
                        Width = 33
                        Height = 13
                        Caption = 'Justi'#231'a'
                      end
                      object BitBtn2: TBitBtn
                        Left = 168
                        Top = 189
                        Width = 75
                        Height = 25
                        Caption = 'Inserir'
                        TabOrder = 13
                        OnClick = BtnVisuzalizarDocDigitalizadorClick
                        Glyph.Data = {
                          76010000424D7601000000000000760000002800000020000000100000000100
                          04000000000000010000120B0000120B00001000000010000000000000000000
                          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
                          333333333337F33333333333333033333333333333373F333333333333090333
                          33333333337F7F33333333333309033333333333337373F33333333330999033
                          3333333337F337F33333333330999033333333333733373F3333333309999903
                          333333337F33337F33333333099999033333333373333373F333333099999990
                          33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
                          33333333337F7F33333333333309033333333333337F7F333333333333090333
                          33333333337F7F33333333333309033333333333337F7F333333333333090333
                          33333333337F7F33333333333300033333333333337773333333}
                        NumGlyphs = 2
                      end
                      object BitBtn3: TBitBtn
                        Left = 264
                        Top = 189
                        Width = 75
                        Height = 25
                        Caption = 'Deletar'
                        TabOrder = 14
                        Glyph.Data = {
                          76010000424D7601000000000000760000002800000020000000100000000100
                          04000000000000010000120B0000120B00001000000010000000000000000000
                          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
                          3333333333777F33333333333309033333333333337F7F333333333333090333
                          33333333337F7F33333333333309033333333333337F7F333333333333090333
                          33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
                          3333333777737777F333333099999990333333373F3333373333333309999903
                          333333337F33337F33333333099999033333333373F333733333333330999033
                          3333333337F337F3333333333099903333333333373F37333333333333090333
                          33333333337F7F33333333333309033333333333337373333333333333303333
                          333333333337F333333333333330333333333333333733333333}
                        NumGlyphs = 2
                      end
                      object DBGrid2: TDBGrid
                        Left = 16
                        Top = 216
                        Width = 601
                        Height = 118
                        TabOrder = 15
                        TitleFont.Charset = DEFAULT_CHARSET
                        TitleFont.Color = clWindowText
                        TitleFont.Height = -11
                        TitleFont.Name = 'MS Sans Serif'
                        TitleFont.Style = []
                        Columns = <
                          item
                            Expanded = False
                            FieldName = 'COMARCA'
                            Width = 197
                            Visible = True
                          end
                          item
                            Expanded = False
                            FieldName = 'VARA'
                            Width = 132
                            Visible = True
                          end
                          item
                            Expanded = False
                            FieldName = 'PRISAO'
                            Width = 135
                            Visible = True
                          end
                          item
                            Expanded = False
                            FieldName = 'REU'
                            Width = 128
                            Visible = True
                          end
                          item
                            Expanded = False
                            FieldName = 'NPROCESSO'
                            Width = 86
                            Visible = True
                          end
                          item
                            Expanded = False
                            FieldName = 'GR'
                            Width = 97
                            Visible = True
                          end
                          item
                            Expanded = False
                            FieldName = 'SITUACAOJURIDICA'
                            Visible = True
                          end
                          item
                            Expanded = False
                            FieldName = 'TOTAL_PENA_ANO'
                            Visible = True
                          end
                          item
                            Expanded = False
                            FieldName = 'ARTIGO'
                            Width = 154
                            Visible = True
                          end
                          item
                            Expanded = False
                            FieldName = 'TOTAL_PENA_MES'
                            Visible = True
                          end
                          item
                            Expanded = False
                            FieldName = 'TOTAL_PENA_DIA'
                            Visible = True
                          end
                          item
                            Expanded = False
                            FieldName = 'OBSERVACAO'
                            Visible = True
                          end>
                      end
                      object EditArtigo: TEdit
                        Left = 16
                        Top = 129
                        Width = 375
                        Height = 21
                        MaxLength = 100
                        TabOrder = 8
                      end
                      object EditObservacaoCondenacao: TEdit
                        Left = 16
                        Top = 166
                        Width = 600
                        Height = 21
                        MaxLength = 100
                        TabOrder = 12
                      end
                      object EditAno: TEdit
                        Left = 401
                        Top = 129
                        Width = 65
                        Height = 21
                        MaxLength = 4
                        TabOrder = 9
                      end
                      object EditMes: TEdit
                        Left = 473
                        Top = 129
                        Width = 73
                        Height = 21
                        MaxLength = 4
                        TabOrder = 10
                      end
                      object EditDia: TEdit
                        Left = 553
                        Top = 129
                        Width = 62
                        Height = 21
                        MaxLength = 4
                        TabOrder = 11
                      end
                      object DBLookupComboBox11: TDBLookupComboBox
                        Left = 16
                        Top = 16
                        Width = 270
                        Height = 21
                        KeyField = 'ID_CIDADE'
                        ListField = 'CIDADE'
                        ListSource = DM.DSCIDADE
                        TabOrder = 0
                      end
                      object Editguia: TEdit
                        Left = 16
                        Top = 91
                        Width = 322
                        Height = 21
                        TabOrder = 6
                      end
                      object Editvara: TEdit
                        Left = 296
                        Top = 16
                        Width = 152
                        Height = 21
                        TabOrder = 1
                      end
                      object ComboBoxprisao: TComboBox
                        Left = 16
                        Top = 54
                        Width = 273
                        Height = 21
                        ItemHeight = 13
                        TabOrder = 3
                        Items.Strings = (
                          'Flagrante'
                          'Cumprimento de Senten'#231'a'
                          'Mandado de Pris'#227'o Preventiva'
                          'Mandado de Pris'#227'o Provis'#243'rio')
                      end
                      object ComboBoxreu: TComboBox
                        Left = 296
                        Top = 54
                        Width = 154
                        Height = 21
                        ItemHeight = 13
                        TabOrder = 4
                        Items.Strings = (
                          'Prim'#225'rio'
                          'Reincidente'
                          'Tecnicamente Prim'#225'rio')
                      end
                      object Editprocesso: TEdit
                        Left = 457
                        Top = 54
                        Width = 158
                        Height = 21
                        TabOrder = 5
                      end
                      object ComboBox1: TComboBox
                        Left = 345
                        Top = 91
                        Width = 271
                        Height = 21
                        ItemHeight = 13
                        ItemIndex = 0
                        TabOrder = 7
                        Text = 'Condenado'
                        Items.Strings = (
                          'Condenado'
                          'Processado')
                      end
                      object cbbJustica: TComboBox
                        Left = 456
                        Top = 16
                        Width = 157
                        Height = 21
                        ItemHeight = 13
                        TabOrder = 2
                        Text = 'cbbJustica'
                        Items.Strings = (
                          'JUSTI'#199'A COMUM'
                          'JUSTI'#199'A FEDERAL')
                      end
                    end
                  end
                end
                object TabSheet4: TTabSheet
                  Caption = 'Passagem no Sistema'
                  ImageIndex = 2
                  object Label8: TLabel
                    Left = 16
                    Top = 16
                    Width = 258
                    Height = 13
                    Caption = 'Observa'#231#245'es da Passagem Pelo Sistema Penitenci'#225'rio'
                  end
                  object Label14: TLabel
                    Left = 16
                    Top = 152
                    Width = 159
                    Height = 13
                    Caption = 'Motiva'#231#227'o do Pedido de Inclus'#227'o'
                  end
                  object DBMemo2: TDBMemo
                    Left = 16
                    Top = 32
                    Width = 713
                    Height = 97
                    DataField = 'PASSAGEM_SPF'
                    DataSource = DsCadastro
                    TabOrder = 0
                  end
                  object DBMemo3: TDBMemo
                    Left = 16
                    Top = 168
                    Width = 713
                    Height = 153
                    DataField = 'MOTIVACAO_INCLUSAO'
                    DataSource = DsCadastro
                    TabOrder = 1
                  end
                end
              end
              object DBComboBox7: TDBComboBox
                Left = 104
                Top = 9
                Width = 265
                Height = 21
                Style = csDropDownList
                DataField = 'TIPOPROCESSO'
                DataSource = DsCadastro
                ItemHeight = 13
                Items.Strings = (
                  'CONDENADO'
                  'PROVISORIO')
                TabOrder = 0
              end
            end
            object TabSheet1: TTabSheet
              Caption = 'Hist'#243'rico'
              ImageIndex = 3
              object Label29: TLabel
                Left = 39
                Top = 16
                Width = 23
                Height = 13
                Caption = 'Data'
              end
              object Label41: TLabel
                Left = 144
                Top = 16
                Width = 48
                Height = 13
                Caption = 'Descri'#231#227'o'
              end
              object DateTimePickhistorico: TDateTimePicker
                Left = 39
                Top = 33
                Width = 91
                Height = 21
                Date = 0.302563541663403200
                Time = 0.302563541663403200
                TabOrder = 0
              end
              object Memohistorico: TMemo
                Left = 140
                Top = 33
                Width = 506
                Height = 97
                TabOrder = 1
              end
              object BitBtn6: TBitBtn
                Left = 48
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
                ParentFont = False
                TabOrder = 2
                OnClick = BitBtn6Click
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
              object DBGrid5: TDBGrid
                Left = 40
                Top = 157
                Width = 610
                Height = 140
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
                    Width = 79
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SETOR'
                    Title.Caption = 'Setor'
                    Width = 71
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DESCRICAO'
                    Title.Caption = 'Descri'#231#227'o'
                    Width = 454
                    Visible = True
                  end>
              end
              object DBMemohistorico: TDBMemo
                Left = 40
                Top = 327
                Width = 610
                Height = 106
                DataField = 'DESCRICAO'
                DataSource = DSHISTORICO_interno
                TabOrder = 4
              end
            end
            object TabSheetCalcularExecucaoPenal: TTabSheet
              Caption = 'Calcular a Execu'#231#227'o Penal'
              ImageIndex = 4
              object Label48: TLabel
                Left = 24
                Top = 18
                Width = 536
                Height = 13
                Caption = 
                  'F'#243'rmula: (Data inicial)-(Data base) + Soma das Fra'#231#245'es dos Proce' +
                  'ssos  + Interrup'#231#227'o - Detra'#231#227'o - Remi'#231#227'o - 1 dia'
              end
              object Label60: TLabel
                Left = 24
                Top = 2
                Width = 304
                Height = 13
                Caption = 'M'#233'todo da calculadora do CNJ: http://www.cnj.jus.br'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object BitBtn15: TBitBtn
                Left = 14
                Top = 41
                Width = 175
                Height = 43
                Caption = 'I / P / C'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -19
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                TabStop = False
                OnClick = BitBtn15Click
                Glyph.Data = {
                  76060000424D7606000000000000360400002800000018000000180000000100
                  08000000000040020000120B0000120B0000000100000000000000000000FFFF
                  FF00FF00FF0096898D00A4676900A56B6B00AB77750099757400DAC5C300A067
                  5B00A56B5F00A7756B00B8918900D4BCB700B78F8400CBB0A800C1836C00DCC4
                  BB00B56D4D00BF7A5C00BC826800D5A48E00A7847200D8AF9A00AB9F9900C4A3
                  9000FBF4F000FAF3EF00EDE6E200D1926D00EAD6CA00B6ABA400FCF7F400F7F2
                  EF00DA9D7500AF958300E7AB7900CAAB9100E9A36200EBAB7000D5B19100F8EA
                  DC00FAF0E600E68F3100E19E5500EBB27400EFBD8400F0C28A00E3C29C00D1B8
                  9A00FCF6EF00F8B55C00F6C27F00F2C68A00E9C9A000E2C49C00DCBF9A00FFFC
                  F800F7DEBA00CBB69900B8AB9800FEF4E600FCCF8900F4D39F00F2D3A400EDD1
                  A300D8C7AD00FED58C00FAD89E00FFDE9B00F3D9A600FFFEFC00FADDA100FFE6
                  A100FAE6B000D3C49D00F0E7CE00FFFBF000FFEBAB00FCF0BF00DAD4B600F7F0
                  D000FEF7C700FFF8B900FCF7C600FCF8C900F8F6DA00FEFDCE00FFFFC900FFFF
                  D100FFFFD300FFFFD500FFFFD700FFFFD800FFFFDA00FFFFDD00FFFFE100FFFF
                  EA00FFFFF000FFFFF600FFFFF800FFFFFE00CBCEC400A7ABA9008AFEFF00AAFF
                  FF00D1FFFF0090A3A30079FBFF007DFAFF007FFCFF00B8FCFE0076F7FF007AF7
                  FF0075E9F00081FAFF0089F8FF008BDCE0008ED7DA0078F6FF0078F4FF007DF4
                  FF0081F7FF007BE9F20088F7FF007CC5CB0073898B0077F3FF0076EEFC0078F2
                  FF0078F0FC007AF3FF0083D9E2008BCAD00074EFFF0073EBFC0076EFFE0075E3
                  F2007FE6F40081DEEA007FB4BB0066E1F70065DDF3006EE5FB006DDDF10075EA
                  FC0072E0F20080E9FC0082EBFC008BEAFA008AC0C900C3F3FB0067E2FB0069E2
                  FB0068DEF6006DE7FE006CE5FC0066D8EF006FE7FF006BDAEF0079E7FE0073DE
                  F20073DAF00075D9ED0083E9FC0079D4E600A3BABF0053D0EE006CE3FE0088DC
                  EF00B2E9F70041C2E60049C1E3004ECAEA005BD5F50053B5D0006BBFD500BDEA
                  F60032B6DE003ABAE10040C0E600BBE6F30023A9D80029A9D8002AADD9002DAD
                  DA003BB5DE004BC9F60043B1DA004ECAF60062D1F8007AD8FA00A2DBEE00ADDE
                  F0001396CB001698CE001899CF001C9ED10020A0D3001F9CCF00239FD10024A4
                  D50027A0D1003BA9D6004AC5F60048ADD7006FC2E20070C1E1008FD1EA00078A
                  C600098AC6000A8CC7000A8BC6000A8AC5000C8CC7000C8EC6000D8FC9000F90
                  CA000F91C9000F8FC9001091CA00108FC9001192CA001190C9001290C9001391
                  CA001593CA001896CC001996CB001C98CE00288AB7004EC9FE00ABDAEE009CC6
                  D8003FAFFF002899F6003099F00034A4FD003DA9FF003EA9FF003FAAFE0046AA
                  FB005280A700329DFF00359EFF0034628B005E809F002390FF00319AFF00265C
                  8F002D5E8E000D6BD100235E9C001F4975000C6CDB000F6EE100020202020202
                  020202020202020202020202020202020202E5E5E50202020202020202020202
                  02020202020202020202D8BCBAC9C3D9D602020202020202020202020207FD02
                  0202D2D06F77808EADB3B7C4D9D4D4020202020206FCFBF60202D1CD6A6C6D6E
                  73738391AEB4B9C5DED8E606FAFFEDEC0202D8E3B16871717878787878798187
                  9AB003F9FFF4F0F70202C2C6CE69707178787F82888688868B03FAFEF8EEF702
                  0202DCACCB6F6C717878848576857D898CF5FEF3EFEBD8020202DB9DB3C06878
                  7B751F4250423C6B7EF2F1EAEDAEC2020202DB9004CF69726B66515C5B5D5B4B
                  160FBFE7CC9CB8020202DB9004BC977D0F39635E5A5A57534015A39BBD9EA7D6
                  0202DD9F09B2E818566565625F5954444528968FBDA887C30202DD9F093DCA19
                  5F6147635F5A542F3E4167A2BD997AB2D502DFA10B4D293B5E5D60605D5A4A27
                  34461FA5BD997A8DDE02E0A10B472A255C5A5B5D5B4F35263E4667A3BB988379
                  B802E0921401200E575955524A352E3F5337A695BEA07C74A7D7E0921401470D
                  3158482E272D3A644C18E9C0C1B5B197AAE3E1891D01012011384E454349601C
                  0CAFABB4C5DFE2E3E4DAE28A1D010101391E17363037252305887F86B6020202
                  0202DBA9220101010147323D1E0A0A0A04A49493C9020202020202CB22010101
                  01014763110A2C2B12C7C8CADE020202020202D32401010101010101080A3313
                  020202020202020202020202241A1A1B1B212121080A10020202020202020202
                  02020202241D1D1D1D1D1D1D1D0A020202020202020202020202}
                Style = bsWin31
              end
              object BitBtn1: TBitBtn
                Left = 196
                Top = 41
                Width = 175
                Height = 43
                Caption = 'Detra'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -19
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                TabStop = False
                OnClick = BitBtn1Click
                Glyph.Data = {
                  76060000424D7606000000000000360400002800000018000000180000000100
                  0800000000004002000000000000000000000001000000010000FF00FF002F1E
                  1F00373834003B3C3B005654470056574C0068484100704648007A564B00905A
                  5C008C62570095655B0092635D0093655E009D665B00966A5D00986859008067
                  620084696400896A6300946560009F646600976863009A6D6200887F6500A366
                  6800A4676900A5686B00EA892300E2903A00F6A03600A3937300A1927F00DD98
                  4F00EFA75100EFA95200CF8E6800D9A26C00E7A97000EBB37300EDB57A00EEB8
                  7B00F6B675003D3DAA003C3CAD003C3AB4003E3EBB004B4CA600484AAC004E4F
                  B1004141BA005050B2007E6CA1002C2CD5003736D1001717FF001A1AFB001919
                  FF001C1CFE003939E5003E3EE5002F2FF7002020FF002626FF002C2CFA002828
                  FE002F2EFF003232F4003131FD003535FF003839FF004C4DCE004142D4005858
                  D9007A7AC6004242E0004444E9004B49E9005C5CED004343FD004848FF004C4D
                  FE00615EE1006362E6006C6BE1006B6AEB006565F7006A6AFB008072AC008A78
                  B0000C8CC70032A5D4003DBDE30053CEEF0051D4EF0057D3F2005BD4F2005ED8
                  F30072CBE6006ED5ED007ED5ED007BD8F0006CE3F60066E2F9006BE3F9006CEC
                  FB0076E6F80072EDFE007DEBFB0075F1FF0079F4FE007CF9FF008F8F8F009C95
                  8C00A4978600A79C8B00BDB08A00ACA19300AFAF9300B0A69A00B8AB9A00B5B5
                  99008B87AB008280B000908BBB009391B200ACA9A700BCB1A200B8B2AC00ADAC
                  B400AAA9BF00B4B3B100C4B09600CCB29000E0BA8700F6BC8300C2B5A600CCB4
                  AB00C2BCB300D1BAB200F4C78C00E6C49600EDC99600E3C49A00E7C69900E1C4
                  9D00F4CF9600F7CE9A00F0CE9E00FFD09200F8D09800D5C6B600D8C6B200DAC5
                  BC00D7CBBD00D8CBBC00D7D7B000DED4BD00E2C6A400EECEA100EECFA600E5CC
                  AE00EFD0A900EFD3AD00F2D1A500FFDCA100F0D1AA00F0D3AF00F3D5AD00EFD3
                  B400E3D2BA00E9D4BB00EDD6B800EDD8BF00F2D4B100F0D7B500F2D8B700F6DA
                  B600F2D9B900F4DABB00F2DABD00F3DCBD00FAE3AD00FBEFBA00968ACF008F89
                  D300958BD2009797D800AAA5C000ACABCA00BAAFCF00C6BCC50088DAF000BBD0
                  E3008BE6F8008EEDFA0091E2F20091E7F80093EBF8009AEEFA0084F1FC0089F4
                  FD0084FCFF008EFFFF0099F3FD0096FEFF00C1C1C100CEC2C100CCCBC600C9CA
                  CA00CCCCCC00C7C5D300D3C9DC00DED8D300E1CFCC00E4D5C200EED7C000E6DA
                  C700EEDBC500ECDECD00F3DCC300F1DECA00E3DDDE00E7E7C700EAE2CE00F6E0
                  C100F6E1C600F4E1CC00F8E6CF00FFF7C200FFF8C400FFFAC900FEFDCF00E7E0
                  D400EAE3DC00F5E4D200FAEAD700F2E6DC00F7E9DA00FAEEDE00FFFFD100FFFF
                  D500FFFBDA00FFFFD800FFFFDD00CEDAE500CBE3EF00E4E4E400E3EEEB00EAE9
                  EE00FAF0E500FFFFEB00FFFFEF00F0F0F000FFFFF400FDFEFE00000000000000
                  00000000000000000037383A3A00000000000000000609090909090908070638
                  352C31312C353701000000000008A1AFA09F908E86344F477B9DCFBDD97A2B35
                  000000000008ACB3AEA89F9059514982E69229269FFBCE2C380000000008D8E1
                  AFAE9F9058564AF0E6B7B68C298EF47B350000000008DAE1DCAFAE904253D3F2
                  F0E7F0E6A52A87D72B3800000008E3E4E1B3AC9E5154F5FFF0F27603030303CE
                  2F4100000008EDEEE4DCB3A15154C1FFFEF27903021825BC303F00000008EDEE
                  EEE3DCD84255D4FFFFFEF29C051F95AB324200000008FAFAEEE4E3DCB857B9FE
                  FFFFFFFBDF04747C3C0000000008D5EAE9DAE9E3AC5155BEFEFFFFFFFFE78148
                  3E005A5A5A067E83808A9AD7D7B84F4EB8DEF8F6F8BB4B4200005AC4665A5A5A
                  5A5A71778898B844514D52524C41420600005AC46F6F6E6E6E675A5A5A7598AC
                  B93A3A373A58590A00005A62CD6E6E6E6E6E6E6C605A7FACD8ACA19E9090900B
                  00005A5AC66F6E6E6B6E6B6E605C7198DADCB3A9A39F851100005A5A64CA6E6E
                  6E6B6B6B5D605A7FD7E3DCB3A184201100005A6E5AC4C4C46E6E676E5D685C71
                  9AE3EC9D7873721100005ACA6B5A5A5A5AC76E6B5D67675A8A9A0E0E0B0B0A0A
                  00005ACA6F6F6F6E5E5AC0C265C2CC5A8A890E25211D1C1500005ACA6F6F6E6E
                  6E6B5A5A5A5A5B5AD08B0E27231E1B0000005ACB6F6E6F6E6A6A6CC85A7083D1
                  F7990E27231B000000005A63C8C8665A5A5A5A5A5ACEDEFDFFD60E271B000000
                  0000005A5A5A5A24242424242424242424240E1B000000000000}
                Style = bsWin31
              end
              object BitBtn4: TBitBtn
                Left = 378
                Top = 41
                Width = 175
                Height = 43
                Caption = 'Interrup'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -19
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                TabStop = False
                OnClick = BitBtn4Click
                Glyph.Data = {
                  76060000424D7606000000000000360400002800000018000000180000000100
                  0800000000004002000000000000000000000001000000010000FF00FF002222
                  220023242400262626002D2C2B002D2D2C0035342E0036363300363535003D3B
                  3300403F3800424036004542380046453C0049463B00534E4200575149005E5C
                  5600675E5B005D547900635A6E0074696C0078756A007A6F7A0075727D000000
                  890000008D0005058C000B0A8F0012118A000000910007079000000095000001
                  9A0000019D00131295001E1B9000363189002828920026289C000001A0000003
                  A5000003A9000004AE000005B1000005B5000007BA000008BC0051498700514A
                  88005D54870057528E004B49970060578300685E8800706D8F006A6696006F6B
                  98000008C1000009C5000009C900000CCE00000DD300000DD500000EDA00000F
                  DC000010E2000011E5000012EA000013EE000014EF000015F1000016F5000017
                  F900011BFA00001CFA000019FE00001DFF000022FE000421FE000124FF000328
                  FF000728FF00062DFE00092AFF000930FF000A34FF000C36FF000E38FF00113A
                  FF00123DFF001641FF001942FE001D48FF00204BFF002853FF002955FE002D57
                  FE002D59FE002F5CFF00345AFE00385FFE003763FE003D64FE004168FE004974
                  FE004C78FE00507AFE005781FE005982FE005F85FE006E93FE007B9DFE008783
                  820086828B008C88990083A4FE0087AAFE008BABFE0097B5FE00000000000000
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
                  0000000000000000000000000000000000000000000000000003030303030303
                  0303030300000000000000000000000303030303030303030303030303030000
                  0000000000000303030303030303030303030303030303000000000000000303
                  0303030303030303030303030303030000000000000003030406090C0C0C0F0C
                  0B09090404030300000000000000061116183739383331303235131412100600
                  00000000000071733426231F1F1A1A1A1A1A1C24253615000000000000007227
                  1A1A1A1A1A1A1A1A1A1A1A1A1A1D1700000000000000002D28281F1A1A191A19
                  1A191A1A1A1F0000000000000000003C3A3A3C3A3A3A2B2B28281F1F1F280000
                  000000000000003F4143444443433F3C3A2D281F1F2B00000000000000000043
                  48494949494948433F3A2D281F28000000000000000000484951505050494948
                  433F3A2D282800000000000000000049575959575151504949433C2E282B0000
                  0000000000000050595B5B5B5B5951514948413A2D2D00000000000000000051
                  616162615E5B59515049443C2D2D000000000000000000526D6F696A665E5951
                  5049483F3A2D000000000000000000006D776D6C696159575049483F3A000000
                  00000000000000006574756C696259515049483C3A0000000000000000000000
                  006870756E6259515049443F00000000000000000000000000006467685C5150
                  50483F0000000000000000000000000000000000504950444300000000000000
                  0000000000000000000000000000000000000000000000000000}
                Style = bsWin31
              end
              object BitBtn5: TBitBtn
                Left = 560
                Top = 41
                Width = 175
                Height = 43
                Caption = 'Remi'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -19
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                TabStop = False
                OnClick = BitBtn5Click
                Glyph.Data = {
                  76060000424D7606000000000000360400002800000018000000180000000100
                  0800000000004002000000000000000000000001000000010000FF00FF001A34
                  2400242425002D26250029282A00322E2E0033322C00313236003E393A00423E
                  3E001E503E001A6935001B6F37001E793D00226B3600575F3200765428006D50
                  3B0057612F0059632F005B6631005F6A3200626D3300657134001F204B002035
                  4800343244003C3A4A0022255100242A56003E3D64002433740019464D002044
                  45001B7740001F7F40001D7E44001F605D00286D40002B744F002A467F00374C
                  7A00314D7D000C777F00007F7F0026636300246C720040404000454141004A45
                  450056525200664C4A00654F5E00615F5F0077555000686868006D6C6C007777
                  7700797979007C7C7D00845C1F00885E1C008C5F1C00AD700D00AA6E1500895A
                  2000895D580090616600A06A6A00A56C6D00B1716D00B1727800208E4D0027A4
                  520025A456002FAB590028B05E002AB86300CD800600E58C0700EC890300EE8F
                  0000F28C0100F58E0000F0920400F8980000FF9A0000FF9D0000FFA00000D683
                  7A001F3384001B328C0019319700233388001533AA00062EBA001C5287002545
                  860027488C0029488900284A8F00335C8400345E8B00284B9500274C98001F77
                  880034668D002162A1002164A1002C6AAF00346EAA00296EB000415D87004A58
                  870041589300496A8E005B6488004F6C9000566D90005E6F91005072A0005275
                  A4005D7EA7005F7AA8004179B400457ABB00032FDA00052FE400032FEA00022E
                  EE000733E500002FF9000433F0000032FE002E7CC600337DDA00058184000092
                  92000094940009A4A0004C82BD005583B3005288BD003185D6003C8BDF002E8A
                  E3002F8BE700348DE5003690E4003694EA003492F0003295F3003399FC00349F
                  FF004D90C600569CD3006A91C0005FA6D5005EAEDC0064A8D0004698E30051A6
                  E7005BB4EC0000D0D00002EDED006DC3EA0075C8E60075CEEC007DD6EF0067C2
                  F00072D0F500889DB900ACACAC00B1B1B200BBBCBC00CE808900DF8A8B00E88C
                  8700E88E9300F7979700FB979700FF999A00FF9C9B00FF9C9E00FF9FA000FFA1
                  A2008DB4CC0081DBEE0094E4F100AAE7F300AFE0F800B8E6F400B6E7FA00C0EB
                  F400EBEBEB00EEEEEE0000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000030
                  303030303030000000000000000000000000000000063044B0B4B9B4B0440730
                  000000000000000000000000305B5C46B9B5B5B5B9473D3D3000000000000000
                  000000305A85831EB1B5B5B5B21151573C30000000000000000000308485855F
                  42B5B5B9433F575754300000000000000000305E858585851F59B9AF10575757
                  574030000000000000003082858585857E34B3364E575757574F300000000000
                  0000307F80808080805D33415151515251513000000000000000306864626162
                  6728030F16130F14151630000000000000003094958F6F86936A2D274A242248
                  4C4D3000000000000000309399916B6B6D2EA4250E0C0C0D4A4B300000000000
                  0000306E99917B60198BA3880170292124260900000000000000003096969C7B
                  20898988709F9E1D0A0500000000003005050030659971C1AB2B8870A6709D9A
                  1C1A00003B3030300402000030662974C1BA70A870AA709B7C1818183BADAD30
                  083000000030306977BD7A70A770A970A1A090873BACAC303030000000000030
                  1B76BC7970A570A2A1A090873BAEAE303232000000000000000075BB79A5A9A2
                  A1A090873BC3C330353500000000000000000073BFAAA9A2A1A090873BC3C330
                  38380000000000000000000070C0BEA2A1A090643BC3C3303939000000000000
                  0000000000008D8E8C7D72003B3B3B303B380000000000000000000000000000
                  0000000000000030303000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                Style = bsWin31
              end
              object PageControlCalculo: TPageControl
                Left = 8
                Top = 88
                Width = 915
                Height = 350
                ActivePage = TabSheet12
                TabOrder = 5
                TabWidth = 100
                object TabSheet12: TTabSheet
                  Caption = 'Calculo'
                  ImageIndex = 131
                  object DBGridLinhaTempo: TDBGrid
                    Left = 0
                    Top = 57
                    Width = 907
                    Height = 265
                    Align = alClient
                    DataSource = DsLinhaTempo
                    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                    ReadOnly = True
                    TabOrder = 1
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'LINHA'
                        Title.Caption = 'Registros'
                        Width = 860
                        Visible = True
                      end>
                  end
                  object Panel1: TPanel
                    Left = 0
                    Top = 0
                    Width = 907
                    Height = 57
                    Align = alTop
                    TabOrder = 0
                    object Label81: TLabel
                      Left = 186
                      Top = 7
                      Width = 89
                      Height = 13
                      Caption = 'Pena Consolidada:'
                    end
                    object BtnCalcular: TBitBtn
                      Left = 6
                      Top = 9
                      Width = 175
                      Height = 33
                      Caption = 'Calcular'
                      TabOrder = 0
                      OnClick = BtnCalcularClick
                      Glyph.Data = {
                        76060000424D7606000000000000360400002800000018000000180000000100
                        0800000000004002000000000000000000000001000000010000FF00FF003277
                        2500327A2900327D2E0092635D0093655E00986859008067620084696400896A
                        63009365600095666000986963009F6F60009E6E64009D706500A4676900A568
                        6B00A0706300A1726500A7756800AC796900B17E6B0000810000548437005489
                        3E00548F4700648E430064934C0064995600D5812700B6816C00BB846E00AFB1
                        7400C0896F00CF8E6800C58C7000CB917300CF967400D4987500AFBA8400AFC4
                        9700EECE9E00FECB9600FECC9700FECD9800F8CE9C00FECE9D00FED09E00F6D3
                        A700FED1A100FED3A400FED4A600FED5AA00FED7AD00FED8AE00EED9B500F8D9
                        B100FED9B100FEDAB400FEDCB600FEDDB900FEDEBC00FEE0BD00EFE6CF00F6E0
                        C000FEE1C100FEE2C500FFE5C700F8E6CB00FEE5CA00FEE6CD00FEE9CF00FEE9
                        D100FEEAD400FFEDD700F7EEDA00FFEBD800FEEDD900FEEEDC00FFF0DE00FEEF
                        E000FEF1E100FEF2E500FFF4E700FEF4EA00FEF6EE00FFF8EF00FEF8F200FEFA
                        F500FFFCF700FFFBF800FEFDFA00FFFEFE000000000000000000000000000000
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
                        0000000000000000000000000000000000000000000000000000000000041010
                        101010101010101010101010101010100000000000043C3C3C36363434343030
                        30302B2B2B2B2B0D0000000000043F3C3C3C363636343430303030302B2B2B0D
                        00000000000A423F3F3C3C3636343434341730302B302B0D0000000000044242
                        3F3F3C3C3737363417171730302B2B0D00000000000A47421E1E1E1E1E1E3617
                        011B17183030300D00000000000A484742423F3F3F3C3C17313621171730300D
                        00000000000D4A4A474742423F3F3C3C3736362A1717300D00000000000D4D4A
                        48474742423F3E3C373C36363634300D0000000000134D4D4A4A474742473E3E
                        3E173C363636340D000000000013534D4D4A4A47474242421717173C3636360D
                        00000000001553531E1E1E1E1E1E4717021C1719373C360D0000000000165553
                        53514D4D4A4A47174142281717373C1200000000001F55555353534D4D4A4A47
                        4742423817173C0D0000000000205757555353534D514A4A48474742423F3F09
                        00000000002257575757535353514D4A4A174747424242070000000000245C57
                        575757535353515117171747474742080000000000255C5C1E1E1E1E1E1E5317
                        021D171A4747420D0000000000255C5C5C575757575553174C4D291717474710
                        0000000000275C5C5C5C5C575757555553535340171748080000000000275C5C
                        5C5C5C5C57575755555353514D4D4A080000000000275C5C5C5C5C5C5C5C5757
                        5755535353514D08000000000023232323232323232323232323232323232308
                        0000000000000000000000000000000000000000000000000000}
                    end
                    object DBEditANO: TDBEdit
                      Left = 187
                      Top = 23
                      Width = 65
                      Height = 21
                      DataField = 'TEMPO_CONSOLIDADO_ANO'
                      DataSource = DsCadastro
                      TabOrder = 1
                    end
                    object RadioGroupVerLinha: TRadioGroup
                      Left = 520
                      Top = 7
                      Width = 185
                      Height = 39
                      Caption = 'Visualizar detalhes:'
                      Columns = 2
                      ItemIndex = 1
                      Items.Strings = (
                        'Sim'
                        'N'#227'o')
                      TabOrder = 5
                    end
                    object DBEditMES: TDBEdit
                      Left = 259
                      Top = 23
                      Width = 65
                      Height = 21
                      DataField = 'TEMPO_CONSOLIDADO_MES'
                      DataSource = DsCadastro
                      TabOrder = 2
                    end
                    object DBEditDIA: TDBEdit
                      Left = 331
                      Top = 23
                      Width = 65
                      Height = 21
                      DataField = 'TEMPO_CONSOLIDADO_DIA'
                      DataSource = DsCadastro
                      TabOrder = 3
                    end
                    object DBCheckBox1: TDBCheckBox
                      Left = 408
                      Top = 24
                      Width = 97
                      Height = 17
                      Caption = 'Calculo Manual'
                      DataSource = DsCadastro
                      TabOrder = 4
                      ValueChecked = 'True'
                      ValueUnchecked = 'False'
                      Visible = False
                    end
                  end
                end
                object TabSheet7: TTabSheet
                  Caption = 'Condena'#231#245'es'
                  ImageIndex = 86
                  object DBGrid6: TDBGrid
                    Left = 0
                    Top = 0
                    Width = 907
                    Height = 322
                    Align = alClient
                    DataSource = DsCondenacao
                    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                    ReadOnly = True
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    OnDrawColumnCell = DBGridConsultaDrawColumnCell
                    OnDblClick = DBGridConsultaDblClick
                    OnKeyDown = DBGridConsultaKeyDown
                    OnTitleClick = DBGridConsultaTitleClick
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'NUMERO_INQUERITO'
                        Title.Caption = 'Inqu'#233'rito'
                        Width = 100
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DATA_PRISAO'
                        Title.Caption = 'Data Pris'#227'o'
                        Width = 100
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'NPROCESSO'
                        Title.Caption = 'Processo'
                        Width = 100
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DATA_INICIO_CONDENACAO'
                        Title.Caption = 'Inicio Condena'#231#227'o'
                        Width = 100
                        Visible = True
                      end>
                  end
                end
                object TabSheet8: TTabSheet
                  Caption = 'Detra'#231#227'o'
                  ImageIndex = 83
                  object DBGrid7: TDBGrid
                    Left = 0
                    Top = 0
                    Width = 907
                    Height = 322
                    Align = alClient
                    DataSource = DsDetracao
                    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                    ReadOnly = True
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    OnDrawColumnCell = DBGridConsultaDrawColumnCell
                    OnDblClick = DBGridConsultaDblClick
                    OnKeyDown = DBGridConsultaKeyDown
                    OnTitleClick = DBGridConsultaTitleClick
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'NUMERO_DOCUMENTO'
                        Title.Caption = 'Documento'
                        Width = 80
                        Visible = True
                      end
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
                        Width = 80
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'ANO'
                        Title.Caption = 'Ano'
                        Width = 40
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'MES'
                        Title.Caption = 'M'#234's'
                        Width = 40
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DIA'
                        Title.Caption = 'Dia'
                        Width = 40
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'MOTIVO'
                        Title.Caption = 'Motivo'
                        Width = 130
                        Visible = True
                      end>
                  end
                end
                object TabSheet10: TTabSheet
                  Caption = 'Interrup'#231#227'o'
                  ImageIndex = 2
                  object DBGrid8: TDBGrid
                    Left = 0
                    Top = 0
                    Width = 907
                    Height = 322
                    Align = alClient
                    DataSource = DsInterrupcao
                    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                    ReadOnly = True
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    OnDrawColumnCell = DBGridConsultaDrawColumnCell
                    OnDblClick = DBGridConsultaDblClick
                    OnKeyDown = DBGridConsultaKeyDown
                    OnTitleClick = DBGridConsultaTitleClick
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'NUMERO_DOCUMENTO'
                        Title.Caption = 'Documento'
                        Width = 80
                        Visible = True
                      end
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
                        Width = 80
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'ANO'
                        Title.Caption = 'Ano'
                        Width = 40
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'MES'
                        Title.Caption = 'M'#234's'
                        Width = 40
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DIA'
                        Title.Caption = 'Dia'
                        Width = 40
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'MOTIVO'
                        Title.Caption = 'Motivo'
                        Width = 130
                        Visible = True
                      end>
                  end
                end
                object TabSheet11: TTabSheet
                  Caption = 'Remi'#231#227'o'
                  ImageIndex = 18
                  object DBGrid9: TDBGrid
                    Left = 0
                    Top = 0
                    Width = 907
                    Height = 322
                    Align = alClient
                    DataSource = DsRemicao
                    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                    ReadOnly = True
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    OnDrawColumnCell = DBGridConsultaDrawColumnCell
                    OnDblClick = DBGridConsultaDblClick
                    OnKeyDown = DBGridConsultaKeyDown
                    OnTitleClick = DBGridConsultaTitleClick
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'NUMERO_DOCUMENTO'
                        Title.Caption = 'Documento'
                        Width = 80
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DIAS_REMIDOS'
                        Title.Caption = 'Dias Remidos'
                        Width = 80
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'MOTIVO'
                        Title.Caption = 'Motivo'
                        Width = 300
                        Visible = True
                      end>
                  end
                end
                object TabSheet6: TTabSheet
                  Caption = 'Formula'#231#227'o'
                  TabVisible = False
                  object DBGrid1: TDBGrid
                    Left = 0
                    Top = 0
                    Width = 907
                    Height = 322
                    Align = alClient
                    DataSource = DsCalculoPena
                    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
                        FieldName = 'DATA_PRISAO'
                        Title.Caption = 'Pris'#227'o Definitiva'
                        Width = 80
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'TIPO'
                        Title.Caption = 'Tipo de refer'#234'ncia'
                        Width = 250
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'TOTAL_PENA_ANO'
                        Title.Caption = 'Pena Ano'
                        Width = 60
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'TOTAL_PENA_MES'
                        Title.Caption = 'Pena M'#234's'
                        Width = 60
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'TOTAL_PENA_DIA'
                        Title.Caption = 'Pena Dia'
                        Width = 60
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DATA_TERMINO_PENA'
                        Title.Caption = 'Termino Pena'
                        Width = 80
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'ANO_PROGRESSAO'
                        Title.Caption = 'Ano RTP'
                        Width = 60
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'MES_PROGRESSAO'
                        Title.Caption = 'M'#234's RTP'
                        Width = 60
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DIA_PROGRESSAO'
                        Title.Caption = 'Dia RTP'
                        Width = 60
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DATA_PROGRESSAO'
                        Title.Caption = 'Data do RTP'
                        Width = 80
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'ANO_CONDICIONAL'
                        Title.Caption = 'Ano RTC'
                        Width = 60
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'MES_CONDICIONAL'
                        Title.Caption = 'M'#234's RTC'
                        Width = 60
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DIA_CONDICIONAL'
                        Title.Caption = 'Dia RTC'
                        Width = 60
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DATA_CONDICIONAL'
                        Title.Caption = 'Data para RTC'
                        Width = 80
                        Visible = True
                      end>
                  end
                end
                object TabSheet13: TTabSheet
                  Caption = 'Mapa Carcer'#225'rio'
                  ImageIndex = 125
                  object Label42: TLabel
                    Left = 258
                    Top = 11
                    Width = 25
                    Height = 13
                    Caption = 'Pena'
                  end
                  object Label50: TLabel
                    Left = 287
                    Top = 11
                    Width = 19
                    Height = 13
                    Caption = 'Ano'
                  end
                  object Label51: TLabel
                    Left = 354
                    Top = 11
                    Width = 20
                    Height = 13
                    Caption = 'M'#234's'
                  end
                  object Label53: TLabel
                    Left = 421
                    Top = 11
                    Width = 16
                    Height = 13
                    Caption = 'Dia'
                  end
                  object DBEdit21: TDBEdit
                    Left = 287
                    Top = 27
                    Width = 65
                    Height = 21
                    DataField = 'TEMPO_CONSOLIDADO_ANO'
                    DataSource = DsCadastro
                    TabOrder = 1
                  end
                  object DBEdit36: TDBEdit
                    Left = 354
                    Top = 27
                    Width = 65
                    Height = 21
                    DataField = 'TEMPO_CONSOLIDADO_MES'
                    DataSource = DsCadastro
                    TabOrder = 2
                  end
                  object DBEdit37: TDBEdit
                    Left = 421
                    Top = 27
                    Width = 65
                    Height = 21
                    DataField = 'TEMPO_CONSOLIDADO_DIA'
                    DataSource = DsCadastro
                    TabOrder = 3
                  end
                  object DBComboBox6: TDBComboBox
                    Left = 18
                    Top = 29
                    Width = 239
                    Height = 21
                    Style = csDropDownList
                    DataField = 'REGIME_ATUAL'
                    DataSource = DsCadastro
                    ItemHeight = 13
                    Items.Strings = (
                      'Fechado'
                      'Semi-Aberto Sem Saida'
                      'Semi-Aberto Com Trabalho Externo'
                      'Semi-Aberto Com Saida'
                      'Semi-Aberto Com Trabalho Externo e Sa'#237'da')
                    TabOrder = 0
                  end
                end
                object TabSheet14: TTabSheet
                  Caption = 'Comuta'#231#227'o'
                  ImageIndex = 135
                  object DBGrid10: TDBGrid
                    Left = 0
                    Top = 0
                    Width = 907
                    Height = 322
                    Align = alClient
                    DataSource = DsComutacao
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
                        FieldName = 'DATA_LIBERACAO'
                        Title.Caption = 'Libera'#231#227'o'
                        Width = 100
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'TIPO_COMUTACAO'
                        Title.Caption = 'Tipo'
                        Width = 200
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'VARA'
                        Title.Caption = 'Vara'
                        Width = 200
                        Visible = True
                      end>
                  end
                end
              end
              object BitBtn7: TBitBtn
                Left = 742
                Top = 41
                Width = 175
                Height = 43
                Caption = 'Comuta'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -19
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
                TabStop = False
                OnClick = BitBtn7Click
                Glyph.Data = {
                  76060000424D7606000000000000360400002800000018000000180000000100
                  0800000000004002000000000000000000000001000000010000FF00FF000066
                  0000754F2400755025007C592E007C5A30007E785C007F7E7C00835D3200A352
                  2800CA6E1800D7771200D4761600C677380082694D009E6A4E00826A5000997D
                  5C00AE7A4E00957F6500E5861600D2833E00DF993E009C846900E2914000EE9E
                  4000EAC078004E6ED4007999930000CCFF0097A39200AEA39300A7A7A600B3B2
                  AF00F6BB8000FCC08000DBCDBE00FED7AB00FED8AD00F4DBB600F4DCB700FEDA
                  B100FEDBB400FEDCB600F4DCB900F4DEBC00FEDDB900FEDFBC00FBE0BE00FEE0
                  BE0099FFFE00AAEEFF00DBCFC300DAD3CA00DBD5CE00DBD7D100FEE1C100FEE3
                  C400FEE4C600FAE5C900FEE5C900FBE7CE00FEE6CC00FBE8CF00FEE8CE00FEE9
                  D100FEEAD400FEECD700FBECD800FEEDD900FBEFDC00FEEEDD00FEF0DF00DBE0
                  E000F2EEE900FEF1E200FFF2E500FEF4E900FFF6ED00EDEFF000EDF0F000FEF8
                  F100FFFAF500FFFBF900FFFCF900FFFEFE000000000000000000000000000000
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
                  0000090909090909090909090909090909090909090909090909094E4E3D2C27
                  555530413D3D39392F2F2B2B2B2626252509095134050808134A55413D3D3939
                  302F2F2B2B262626250909510E0655551E135541403D3D3939302F2B2B262B25
                  2509095103494F55550827451616161616161616161616262609095103494950
                  550827454141413D3939302F2B2B2B26260909550E17494911053D454541413D
                  3D3930302F2B2B2B26090955350E03030E244B48454541403D393939302B2B2B
                  26090955514B2C2C55553D4B454545413D3D3939302F2B2B2B09095535050707
                  2055554B4B454541403D3D3939302F2B2B090955101C1D1D3320554B4B484545
                  413D3D3939302F2B2B090955031D01011D072C4E16161616161616161616162F
                  2F090955033201011D072C4E4B4B4B454541413D3D39302F2F0909551021551D
                  1F05454E4E4B4B484545413D3D3939302F090955371003031035514E4E4E4B4B
                  454541403D3D39393009091A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A
                  1A09090A0B0B0B0B0B0B0B0B0B0B0B0B0B2319142319121B0A09090D15151515
                  15151515151515151522180B23180F1B0D090009090909090909090909090909
                  0909090909090909090000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                Style = bsWin31
              end
            end
            object TabSheet5: TTabSheet
              Caption = 'Benef'#237'cio'
              ImageIndex = 5
              object Label61: TLabel
                Left = 16
                Top = 24
                Width = 23
                Height = 13
                Caption = 'Data'
              end
              object Label62: TLabel
                Left = 160
                Top = 24
                Width = 46
                Height = 13
                Caption = 'Benef'#237'cio'
              end
              object Label70: TLabel
                Left = 16
                Top = 64
                Width = 51
                Height = 13
                Caption = 'Concedido'
              end
              object Label76: TLabel
                Left = 19
                Top = 112
                Width = 19
                Height = 13
                Caption = 'Obs'
              end
              object Label77: TLabel
                Left = 288
                Top = 410
                Width = 356
                Height = 20
                Caption = 'DUPLO CLIQUE PARA EDITAR BENEF'#205'CIO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Editconcedido: TEdit
                Left = 16
                Top = 80
                Width = 417
                Height = 21
                TabOrder = 2
              end
              object Memoobsbeneficio: TMemo
                Left = 17
                Top = 132
                Width = 416
                Height = 89
                Lines.Strings = (
                  '')
                TabOrder = 3
              end
              object ComboBoxbeneficio: TComboBox
                Left = 160
                Top = 40
                Width = 273
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 1
                Items.Strings = (
                  'Livramento Condicional'
                  'Pris'#227'o Domiciliar'
                  'Progress'#227'o de Regime'
                  'Progress'#227'o de Regime/Trabalho Externo'
                  'Prog. Regime/Trab. Ext./Sa'#237'da Temp.'
                  'Sa'#237'das Tempor'#225'rias/Trabalho Externo'
                  'Sa'#237'da Tempor'#225'ria'
                  'Trabalho Externo')
              end
              object DateTimePickerdtbeneficio: TDateTimePicker
                Left = 17
                Top = 40
                Width = 129
                Height = 21
                Date = 41072.458390775460000000
                Time = 41072.458390775460000000
                TabOrder = 0
              end
              object DBGrid4: TDBGrid
                Left = 16
                Top = 272
                Width = 665
                Height = 120
                DataSource = dsbeneficio
                TabOrder = 5
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                OnDblClick = DBGrid4DblClick
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'DATA_BENEFICIO'
                    Title.Caption = 'Data'
                    Width = 81
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'BENEFICIO'
                    Title.Caption = 'Benef'#237'cio'
                    Width = 182
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CONCEDIDO'
                    Title.Caption = 'Concedido'
                    Width = 102
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DATA_REVOGACAO'
                    Title.Caption = 'Data Revoga'#231'ao'
                    Width = 89
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MOTIVO_REVOGACAO'
                    Title.Caption = 'Motivo Revoga'#231'ao'
                    Width = 191
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'OBS'
                    Width = 174
                    Visible = True
                  end>
              end
              object Button1: TButton
                Left = 144
                Top = 232
                Width = 75
                Height = 25
                Caption = 'Inserir'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 4
                OnClick = Button1Click
              end
              object DBMemo1: TDBMemo
                Left = 685
                Top = 271
                Width = 193
                Height = 103
                DataField = 'OBS'
                DataSource = dsbeneficio
                TabOrder = 6
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 948
          inherited EditLocalizar: TEdit
            TabOrder = 1
          end
          inherited RadioGroupStatus: TRadioGroup
            Left = 811
            TabOrder = 3
          end
          inherited chkSoundex: TCheckBox
            TabOrder = 2
          end
        end
        inherited PanelConsulta: TPanel
          Width = 948
          Height = 449
          inherited DBGridConsulta: TDBGrid
            Width = 938
            Height = 435
          end
          inherited DBCtrlGridConsulta: TDBCtrlGrid
            Width = 937
            Height = 435
            PanelHeight = 87
            PanelWidth = 921
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 956
    inherited Image2: TImage
      Width = 956
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 591
    Width = 956
  end
  inherited ImageListCadastro: TImageList
    Left = 608
    Top = 65528
  end
  inherited SqlCadastro: TSQLQuery
    Left = 448
    Top = 0
  end
  inherited DspCadastro: TDataSetProvider
    Left = 476
    Top = 0
  end
  inherited CdsCadastro: TClientDataSet
    Left = 504
    Top = 0
  end
  inherited DsCadastro: TDataSource
    Left = 532
    Top = 0
  end
  inherited DsConsulta: TDataSource
    Left = 821
  end
  inherited CdsConsulta: TClientDataSet
    Left = 793
  end
  inherited DspConsulta: TDataSetProvider
    Left = 765
  end
  inherited SqlConsulta: TSQLQuery
    Left = 737
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
      'where idinterno=:id_interno '
      'and coalesce(tipo_historico,'#39#39')='#39#39' '
      'and (setor = '#39'Jur'#237'dico'#39' or setor like '#39'Monitor%'#39')'
      'order by data_hora desc')
    SQLConnection = DM.SQLConnect
    Left = 585
    Top = 465
  end
  object DSPHISTORICO_interno: TDataSetProvider
    DataSet = SQLHISTORICO_interno
    Left = 613
    Top = 465
  end
  object CDSHISTORICO_interno: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDINTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPHISTORICO_interno'
    AfterInsert = CDSHISTORICO_internoAfterInsert
    Left = 641
    Top = 465
    object CDSHISTORICO_internoFuncionrio: TStringField
      FieldKind = fkLookup
      FieldName = 'Funcion'#225'rio'
      LookupDataSet = DM.CdsFuncionarioLista
      LookupKeyFields = 'ID_FUNCIONARIO'
      LookupResultField = 'NOME_FUNCIONARIO'
      KeyFields = 'ID_FUNCIONARIO'
      Size = 100
      Lookup = True
    end
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
    Left = 669
    Top = 465
  end
  object SqlDsControlePermanencia: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ''
      'ID_CONTROLE_PERMANENCIA,'
      'DATA_INICIAL,'
      'DATA_FINAL,'
      'AUTORIZACAO,'
      'OBS,'
      'ID_INTERNO,'
      'DIASAUTORIZADOS,'
      'NAUTOS,'
      'AVISADO,'
      'CONFLITO_COMPETENCIA,'
      'NUM_CONFLITO_COMPETENCIA,'
      'OBS_CONFLITO_COMPETENCIA,'
      'CONFLITO_STATUS,'
      'OFICIO_PRAZO,'
      'NUM_OFICIO_PRAZO'
      ''
      'from controle_permanencia'
      'where id_interno = :id_interno'
      'order by data_final desc')
    SQLConnection = DM.SQLConnect
    Left = 16
    Top = 368
  end
  object DspDsControlePermanencia: TDataSetProvider
    DataSet = SqlDsControlePermanencia
    Left = 44
    Top = 368
  end
  object CdsDsControlePermanencia: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspDsControlePermanencia'
    AfterInsert = CdsDsControlePermanenciaAfterInsert
    AfterPost = CdsDsControlePermanenciaAfterPost
    Left = 72
    Top = 368
  end
  object DsControlePermanencia: TDataSource
    DataSet = CdsDsControlePermanencia
    OnDataChange = DsControlePermanenciaDataChange
    Left = 100
    Top = 368
  end
  object SqlPermanenciaScaner: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_controle_permanencia'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from permanencia_scaner'
      'where id_controle_permanencia = :id_controle_permanencia'
      '')
    SQLConnection = DM.SQLConnect
    Left = 152
    Top = 336
  end
  object DspPermanenciaScaner: TDataSetProvider
    DataSet = SqlPermanenciaScaner
    Left = 180
    Top = 336
  end
  object CdsPermanenciaScaner: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CONTROLE_PERMANENCIA'
    MasterFields = 'ID_CONTROLE_PERMANENCIA'
    MasterSource = DsControlePermanencia
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspPermanenciaScaner'
    AfterInsert = CdsPermanenciaScanerAfterInsert
    Left = 208
    Top = 336
  end
  object DsPermanenciaScaner: TDataSource
    DataSet = CdsPermanenciaScaner
    OnDataChange = DsPermanenciaScanerDataChange
    Left = 236
    Top = 336
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Imagens (*.jpg)|*.jpg'
    Left = 559
    Top = 65528
  end
  object OpenDialogDoc: TOpenDialog
    Left = 359
    Top = 8
  end
  object SaveDialogDoc: TSaveDialog
    Left = 304
    Top = 8
  end
  object DsCalculoPena: TDataSource
    DataSet = CdsCalculoPena
    OnDataChange = DsPermanenciaScanerDataChange
    Left = 912
    Top = 128
  end
  object CdsCalculoPena: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCalculoPena'
    AfterInsert = CdsPermanenciaScanerAfterInsert
    Left = 880
    Top = 128
  end
  object DspCalculoPena: TDataSetProvider
    DataSet = SqlCalculoPena
    Left = 848
    Top = 128
  end
  object SqlCalculoPena: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_INTERNO'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftDateTime
        Name = 'DATA_PRISAO'
        ParamType = ptInput
        Value = 0d
      end
      item
        DataType = ftDateTime
        Name = 'data_base_p'
        ParamType = ptInput
        Value = 0d
      end
      item
        DataType = ftDateTime
        Name = 'data_base_c'
        ParamType = ptInput
        Value = 0d
      end>
    SQL.Strings = (
      
        'select * from SP_CALCULO_EXECUCAO_PENAL (:ID_INTERNO,:DATA_PRISA' +
        'O,:data_base_p,:data_base_c)')
    SQLConnection = DM.SQLConnect
    Left = 816
    Top = 128
  end
  object SQLbeneficio: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'select * from beneficio'
      'where id_interno = :id'
      'order by data_beneficio desc')
    SQLConnection = DM.SQLConnect
    Left = 632
    Top = 128
  end
  object DSPbeneficio: TDataSetProvider
    DataSet = SQLbeneficio
    Left = 664
    Top = 128
  end
  object cdsbeneficio: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPbeneficio'
    Left = 696
    Top = 128
    object cdsbeneficioID_BENEFICIOS: TIntegerField
      FieldName = 'ID_BENEFICIOS'
      Required = True
    end
    object cdsbeneficioBENEFICIO: TStringField
      FieldName = 'BENEFICIO'
      Size = 100
    end
    object cdsbeneficioDATA_BENEFICIO: TSQLTimeStampField
      FieldName = 'DATA_BENEFICIO'
    end
    object cdsbeneficioCONCEDIDO: TStringField
      FieldName = 'CONCEDIDO'
      Size = 100
    end
    object cdsbeneficioDATA_REVOGACAO: TSQLTimeStampField
      FieldName = 'DATA_REVOGACAO'
    end
    object cdsbeneficioMOTIVO_REVOGACAO: TStringField
      FieldName = 'MOTIVO_REVOGACAO'
      Size = 100
    end
    object cdsbeneficioOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cdsbeneficioID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
  end
  object dsbeneficio: TDataSource
    DataSet = cdsbeneficio
    Left = 728
    Top = 128
  end
  object SqlCondenacao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'idinterno'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'select *'
      'from processo'
      'where idinterno=:idinterno'
      'and upper(SITUACAOJURIDICA) like '#39'COND%'#39)
    SQLConnection = DM.SQLConnect
    Left = 281
    Top = 371
  end
  object DspCondenacao: TDataSetProvider
    DataSet = SqlCondenacao
    Left = 309
    Top = 371
  end
  object CdsCondenacao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDINTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspCondenacao'
    AfterInsert = CDSHISTORICO_internoAfterInsert
    Left = 337
    Top = 371
  end
  object DsCondenacao: TDataSource
    DataSet = CdsCondenacao
    OnDataChange = DsCadastroDataChange
    Left = 365
    Top = 371
  end
  object SqlDetracao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from detracao'
      'where id_interno=:id_interno'
      '')
    SQLConnection = DM.SQLConnect
    Left = 385
    Top = 334
  end
  object DspDetracao: TDataSetProvider
    DataSet = SqlDetracao
    Left = 413
    Top = 334
  end
  object CdsDetracao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPDetracao'
    AfterInsert = CDSHISTORICO_internoAfterInsert
    Left = 441
    Top = 334
  end
  object DsDetracao: TDataSource
    DataSet = CdsDetracao
    OnDataChange = DsCadastroDataChange
    Left = 469
    Top = 334
  end
  object SqlInterrupcao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from interrupcao'
      'where id_interno=:id_interno'
      '')
    SQLConnection = DM.SQLConnect
    Left = 297
    Top = 474
  end
  object DspInterrupcao: TDataSetProvider
    DataSet = SqlInterrupcao
    Left = 325
    Top = 474
  end
  object CdsInterrupcao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPInterrupcao'
    AfterInsert = CDSHISTORICO_internoAfterInsert
    Left = 353
    Top = 474
  end
  object DsInterrupcao: TDataSource
    DataSet = CdsInterrupcao
    OnDataChange = DsCadastroDataChange
    Left = 381
    Top = 474
  end
  object SqlRemicao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from remicao'
      'where id_interno=:id_interno'
      '')
    SQLConnection = DM.SQLConnect
    Left = 433
    Top = 477
  end
  object DspRemicao: TDataSetProvider
    DataSet = SqlRemicao
    Left = 461
    Top = 477
  end
  object CdsRemicao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPRemicao'
    AfterInsert = CDSHISTORICO_internoAfterInsert
    Left = 489
    Top = 477
  end
  object DsRemicao: TDataSource
    DataSet = CdsRemicao
    OnDataChange = DsCadastroDataChange
    Left = 517
    Top = 477
  end
  object SqlLinhaTempo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ver_linha'
        ParamType = ptUnknown
        Value = 'N'
      end>
    SQL.Strings = (
      'select *'
      'from sp_linha_tempo(:id_interno,:ver_linha)'
      ''
      '')
    SQLConnection = DM.SQLConnect
    Left = 729
    Top = 61
  end
  object DspLinhaTempo: TDataSetProvider
    DataSet = SqlLinhaTempo
    Left = 757
    Top = 61
  end
  object CdsLinhaTempo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPLinhaTempo'
    Left = 785
    Top = 61
  end
  object DsLinhaTempo: TDataSource
    DataSet = CdsLinhaTempo
    OnDataChange = DsCadastroDataChange
    Left = 813
    Top = 61
  end
  object DsComutacao: TDataSource
    DataSet = CdsComutacao
    Left = 672
    Top = 56
  end
  object CdsComutacao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspComutacao'
    Left = 640
    Top = 56
  end
  object DspComutacao: TDataSetProvider
    DataSet = SqlComutacao
    Left = 608
    Top = 56
  end
  object SqlComutacao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_INTERNO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT '
      'V.IDPROCESSO,'
      'C.DATA_LIBERACAO,C.TIPO_COMUTACAO,C.VARA'
      ',C.ID_INTERNO'
      'FROM COMUTACAO C'
      'JOIN VINC_COMUTACAO V ON (V.ID_COMUTACAO=C.ID_COMUTACAO)'
      'WHERE C.ID_INTERNO=:ID_INTERNO')
    SQLConnection = DM.SQLConnect
    Left = 576
    Top = 56
  end
end
