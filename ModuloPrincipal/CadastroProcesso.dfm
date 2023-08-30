inherited FrmCadastroProcesso: TFrmCadastroProcesso
  Left = 251
  Top = 84
  Caption = 'Inqu'#233'ritos / Processos / Condena'#231#245'es'
  ClientHeight = 581
  ClientWidth = 932
  ExplicitWidth = 944
  ExplicitHeight = 619
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 530
    ExplicitHeight = 529
    inherited ToolBarModeloCadastro: TToolBar
      Height = 512
      ExplicitHeight = 511
      inherited Excluir: TToolButton
        Visible = True
      end
    end
    inherited DBNavigator1: TDBNavigator
      Top = 512
      DataSource = DsConsulta
      Hints.Strings = ()
      ExplicitTop = 511
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 817
    Height = 530
    ExplicitWidth = 813
    ExplicitHeight = 529
    inherited Image2: TImage
      Width = 918
      ExplicitWidth = 918
    end
    inherited PageControlModeloCadastro: TPageControl
      Width = 817
      Height = 530
      ExplicitWidth = 813
      ExplicitHeight = 529
      inherited TabSheetCadastro: TTabSheet
        ExplicitWidth = 809
        ExplicitHeight = 502
        inherited PanelCadastro: TPanel
          Width = 809
          Height = 502
          ExplicitWidth = 809
          ExplicitHeight = 502
          object Label2: TLabel
            Left = 10
            Top = 8
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = dbeditcodigo
          end
          object Label7: TLabel
            Left = 72
            Top = 8
            Width = 33
            Height = 13
            Caption = 'Interno'
          end
          object Label155: TLabel
            Left = 72
            Top = 50
            Width = 193
            Height = 13
            Caption = 'Situa'#231#227'o em que se encontra o Registro.'
          end
          object LabelComutacao: TLabel
            Left = 337
            Top = 50
            Width = 147
            Height = 13
            Caption = 'Processo com Comuta'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object PageControlProcesso: TPageControl
            Left = 1
            Top = 106
            Width = 807
            Height = 395
            ActivePage = TabSheetInquerito
            Align = alBottom
            TabOrder = 4
            TabWidth = 120
            object TabSheetInquerito: TTabSheet
              Caption = 'Inqu'#233'rito Policial'
              ImageIndex = 2
              object Label16: TLabel
                Left = 17
                Top = 35
                Width = 71
                Height = 13
                Caption = 'N'#186' do Inqu'#233'rito'
              end
              object Label17: TLabel
                Left = 18
                Top = 111
                Width = 48
                Height = 13
                Caption = 'Delegacia'
              end
              object Label18: TLabel
                Left = 176
                Top = 35
                Width = 82
                Height = 13
                Caption = 'Data do Inqu'#233'rito'
              end
              object Label19: TLabel
                Left = 18
                Top = 154
                Width = 79
                Height = 13
                Caption = 'Motivo da Pris'#227'o'
              end
              object Label20: TLabel
                Left = 18
                Top = 197
                Width = 80
                Height = 13
                Caption = 'Dispositivo Legal'
              end
              object Label21: TLabel
                Left = 406
                Top = 35
                Width = 70
                Height = 13
                Caption = 'Data da Pris'#227'o'
              end
              object Label22: TLabel
                Left = 18
                Top = 280
                Width = 96
                Height = 13
                Caption = 'Tipifica'#231#227'o do Crime'
              end
              object Label72: TLabel
                Left = 18
                Top = 321
                Width = 58
                Height = 13
                Caption = 'Observa'#231#227'o'
              end
              object Label6: TLabel
                Left = 292
                Top = 35
                Width = 62
                Height = 13
                Caption = 'Data do Fato'
              end
              object SpeedButton2: TSpeedButton
                Left = 493
                Top = 127
                Width = 23
                Height = 22
                Caption = '...'
                Enabled = False
                Visible = False
                OnClick = SpeedButton2Click
              end
              object Label35: TLabel
                Left = 522
                Top = 111
                Width = 112
                Height = 13
                Caption = 'Descri'#231#227'o da delegacia'
              end
              object Label36: TLabel
                Left = 18
                Top = 73
                Width = 92
                Height = 13
                Caption = 'Cidade do Inqu'#233'rito'
              end
              object SpeedButton3: TSpeedButton
                Left = 493
                Top = 86
                Width = 23
                Height = 22
                Caption = '...'
                OnClick = SpeedButton3Click
              end
              object DBEdit14: TDBEdit
                Left = 18
                Top = 51
                Width = 149
                Height = 21
                DataField = 'NUMERO_INQUERITO'
                DataSource = DsCadastro
                TabOrder = 1
              end
              object DBEdit4: TDBEdit
                Left = 18
                Top = 337
                Width = 505
                Height = 21
                DataField = 'OBSERVACAO'
                DataSource = DsCadastro
                TabOrder = 12
              end
              object BtnBuscarIP: TButton
                Left = 18
                Top = 6
                Width = 161
                Height = 25
                Caption = 'Buscar Dados de Outro IP'
                TabOrder = 0
                OnClick = BtnBuscarIPClick
              end
              object DBLookupComboBoxDelegacia: TDBLookupComboBox
                Left = 18
                Top = 127
                Width = 470
                Height = 21
                DataField = 'ID_DESTINO_DELEGACIA'
                DataSource = DsCadastro
                KeyField = 'ID_DESTINO'
                ListField = 'DESTINO'
                ListSource = DsDelegacia
                TabOrder = 6
                OnClick = DBLookupComboBoxDelegaciaClick
              end
              object DBEdit18: TDBEdit
                Left = 522
                Top = 127
                Width = 215
                Height = 21
                DataField = 'DELEGACIA'
                DataSource = DsCadastro
                TabOrder = 7
              end
              object DBLookupComboBoxCIDADE_INQUERITO: TDBLookupComboBox
                Left = 18
                Top = 89
                Width = 470
                Height = 21
                DataField = 'ID_CIDADE_INQUERITO'
                DataSource = DsCadastro
                KeyField = 'ID_CIDADE'
                ListField = 'CIDADE'
                ListSource = DsCidadeInquerito
                TabOrder = 5
              end
              object DBComboBox3: TDBComboBox
                Left = 18
                Top = 170
                Width = 510
                Height = 21
                Style = csDropDownList
                DataField = 'MOTIVO_PRISAO'
                DataSource = DsCadastro
                Items.Strings = (
                  'CUMPRIMENTO DE SENTEN'#199'A'
                  'DECORRENTE DE SENTEN'#199'A DE PRON'#218'NCIA'
                  'FLAGRANTE'
                  'MANDADO DE PRIS'#195'O PREVENTIVA'
                  'MANDADO DE PRIS'#195'O PROVIS'#211'RIO'
                  'MANDADO DE PRIS'#195'O TEMPOR'#193'RIA'
                  'MANDADO DE PRIS'#195'O CONDENAT'#211'RIO'
                  'SENTE'#199'A PENAL RECORR'#205'VEL')
                TabOrder = 8
              end
              object Button1: TButton
                Left = 484
                Top = 227
                Width = 45
                Height = 20
                Caption = 'Busca'
                TabOrder = 10
                OnClick = Button1Click
              end
              object Button2: TButton
                Left = 484
                Top = 296
                Width = 45
                Height = 20
                Caption = 'Busca'
                TabOrder = 11
                Visible = False
                OnClick = Button2Click
              end
              object DBEditDATA_INQUERITO: TDBEdit
                Left = 176
                Top = 51
                Width = 101
                Height = 21
                DataField = 'DATA_INQUERITO'
                DataSource = DsCadastro
                TabOrder = 2
              end
              object DBEditDATA_FATO_CONDENACAO: TDBEdit
                Left = 293
                Top = 51
                Width = 101
                Height = 21
                DataField = 'DATA_FATO_CONDENACAO'
                DataSource = DsCadastro
                TabOrder = 3
              end
              object DBEditDATA_PRISAO: TDBEdit
                Left = 405
                Top = 51
                Width = 101
                Height = 21
                DataField = 'DATA_PRISAO'
                DataSource = DsCadastro
                TabOrder = 4
              end
              object DBMemo1: TDBMemo
                Left = 19
                Top = 213
                Width = 462
                Height = 57
                DataField = 'DISPOSITIVO_LEGAL'
                DataSource = DsCadastro
                TabOrder = 9
              end
              object DBComboBox9: TDBComboBox
                Left = 20
                Top = 294
                Width = 460
                Height = 21
                Style = csDropDownList
                DataField = 'TIPO_CRIME'
                DataSource = DsCadastro
                Items.Strings = (
                  ''
                  'AMEA'#199'A (ART.147 CP)'
                  'APROPRIA'#199#195'O IND'#201'BITA (ART.168 CP)'
                  'ASSOCIA'#199#195'O PARA O TR'#193'FICO (ART.35 LEI 11.343/06)'
                  'ATENTADO VIOLENTO AO PUDOR (ART.214 CP)'
                  'CONTRABANDO OU DESCAMINHO (ART.334 CP)'
                  'CORRUP'#199#195'O ATIVA (ART.333 CP)'
                  'CORRUP'#199#195'O DE MENORES (ART.218 CP)'
                  'CORRUP'#199#195'O PASSIVA (ART.317 CP)'
                  'CRIME DE TORTURA (LEI 9.455/97)'
                  'CRIME PREVISTO NA LEI DE ARMAS (LEI 10.826/03)'
                  'CRIME PREVISTO NA LEI DE DROGAS (LEI 11.343/06)'
                  'CRIMES CONTRA A ADMINISTRA'#199#195'O P'#218'BLICA'
                  'CRIMES CONTRA O MEIO AMBIENTE (LEI 9.605/98)'
                  'DANO (ART. 163 CP)'
                  'DANO QUALIFICADO (ART. 163, PAR'#193'GRAFO '#218'NICO CP )'
                  'DISPARO DE ARMA DE FOGO (ART. 15 LEI 10.826/03)'
                  'ESTATUTO DA CRIAN'#199'A E DO ADOLESCENTE (LEI 8.069/90)'
                  'ESTELIONATO (ART.171 CP)'
                  'ESTUPRO (ART.213 CP)'
                  'EXTORS'#195'O (ART.158 CP)'
                  'EXTORS'#195'O MEDIANTE SEQUESTRO (ART.159 CP)'
                  'EXTORS'#195'O QUALIFICADA POR MORTE (ART.158, '#167'3'#186' CP)'
                  
                    'FALSIDADE DE T'#205'TULOS E OUTROS PAP'#201'IS P'#218'BLICOS (ART. 293 A 299 CP' +
                    ')'
                  'FALSIDADE IDEOL'#211'GICA (ART.299 CP)'
                  'FURTO (ART.155 CP)'
                  'FURTO QUALIFICADO (ART.155, '#167'4'#186' e '#167'5'#186')'
                  'HOMIC'#205'DIO QUALIFICADO (ART.121, '#167'2'#186' CP)'
                  'HOMIC'#205'DIO SIMPLES (ART.121, '#167'2'#186' CP)'
                  'LATROC'#205'NIO (ART.157, '#167'3'#186' CP)'
                  'LEI DOS CRIMES HEDIONDOS (LEI N'#186' 8.072/90.)'
                  'LEI MARIA DA PENHA (LEI 11.340/06)'
                  'LES'#195'O CORPORAL (ART.129 CP)'
                  'MOEDA FALSA (ART. 289 CP)'
                  'N'#195'O INFORMADO'
                  'OUTROS CRIMES'
                  'PECULATO (ART.312 CP)'
                  'PORTE ILEGAL DE ARMA DE FOGO (ART. 14 LEI 10.826/03)'
                  
                    'POSSE OU PORTE ILEGAL DE ARMA DE FOGO RESTRITO (ART. 16 LEI 10.8' +
                    '26/03)'
                  'QUADRILHA OU BANDO (ART.288 CP)'
                  'RECEPTA'#199#195'O (ART.180 CP)'
                  'RECEPTA'#199#195'O QUALIFICADA (ART.180, '#167'1'#186' CP)'
                  'ROUBO (ART.157 CP)'
                  'ROUBO QUALIFICADO (ART.157, '#167'2'#186' CP)'
                  'SEQUESTRO E C'#193'RCERE PRIVADO (ART.148 CP)'
                  'TENTATIVA DE FURTO SIMPLES (ART.155 C/ ART.14, II CP)'
                  
                    'TENTATIVA DE FURTO QUALIFICADO  (ART.155, '#167'4'#186' e '#167'5'#186' C/ ART.14, I' +
                    'I CP)'
                  'TENTATIVA DE HOMIC'#205'DIO (ART.121 C/ ART.14, II CP)'
                  
                    'TENTATIVA DE HOMIC'#205'DIO QUALIFICADO (ART.121, '#167'2'#186' C/ ART.14, II C' +
                    'P)'
                  'TENTATIVA DE LATROC'#205'NIO (ART.157, '#167'3'#186' C/ ART.14, II CP)'
                  'TENTATIVA DE ROUBO (ART.157 C/ ART.14, II CP)'
                  'TR'#193'FICO IL'#205'CITO DE ENTORPECENTES E DROGAS AFINS'
                  'USO DE DOCUMENTO FALSO (ART. 304 CP)'
                  'USU'#193'RIO DE ENTORPECENTES E DROGAS AFINS')
                TabOrder = 13
              end
            end
            object TabSheet1: TTabSheet
              Caption = 'Processo'
              object Label139: TLabel
                Left = 11
                Top = 81
                Width = 42
                Height = 13
                Caption = 'Comarca'
              end
              object Label150: TLabel
                Left = 618
                Top = 82
                Width = 88
                Height = 13
                Caption = 'Descri'#231#227'o da Vara'
              end
              object Label162: TLabel
                Left = 153
                Top = 42
                Width = 33
                Height = 13
                Caption = 'Justi'#231'a'
              end
              object Label153: TLabel
                Left = 12
                Top = 2
                Width = 59
                Height = 13
                Caption = 'N'#186' Processo'
              end
              object Label152: TLabel
                Left = 351
                Top = 42
                Width = 20
                Height = 13
                Caption = 'R'#233'u'
              end
              object Label151: TLabel
                Left = 267
                Top = 1
                Width = 53
                Height = 13
                Caption = 'Tipo Pris'#227'o'
              end
              object Label154: TLabel
                Left = 12
                Top = 41
                Width = 90
                Height = 13
                Caption = 'Guia Recolhimento'
              end
              object Label4: TLabel
                Left = 164
                Top = 1
                Width = 70
                Height = 13
                Caption = 'Data Cumprida'
              end
              object Label37: TLabel
                Left = 327
                Top = 81
                Width = 22
                Height = 13
                Caption = 'Vara'
              end
              object SpeedButton1: TSpeedButton
                Left = 594
                Top = 95
                Width = 23
                Height = 22
                Caption = '...'
                OnClick = SpeedButton1Click
              end
              object DBLookupComboBoxCOMARCA: TDBLookupComboBox
                Left = 11
                Top = 97
                Width = 308
                Height = 21
                DataField = 'IDCOMARCA'
                DataSource = DsCadastro
                KeyField = 'ID_CIDADE'
                ListField = 'CIDADE'
                ListSource = DsCidadeVara
                TabOrder = 6
              end
              object PageControlGeralProcessos: TPageControl
                Left = 11
                Top = 120
                Width = 601
                Height = 231
                ActivePage = TabSheet2
                TabOrder = 9
                TabWidth = 120
                object TabSheet2: TTabSheet
                  Caption = 'Artigos'
                  object Label3: TLabel
                    Left = 8
                    Top = 4
                    Width = 27
                    Height = 13
                    Caption = 'Artigo'
                  end
                  object SpeedButton4: TSpeedButton
                    Left = 445
                    Top = 18
                    Width = 23
                    Height = 22
                    Hint = 'Cadastrar Artigo'
                    Caption = '...'
                    Flat = True
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton4Click
                  end
                  object DBGridArtigos: TDBGrid
                    Left = 0
                    Top = 48
                    Width = 593
                    Height = 130
                    Align = alBottom
                    DataSource = dsvincartigo
                    ReadOnly = True
                    TabOrder = 3
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'Artigo(s)'
                        Width = 450
                        Visible = True
                      end>
                  end
                  object DBLookupComboBoxartigo: TDBLookupComboBox
                    Left = 8
                    Top = 20
                    Width = 385
                    Height = 21
                    Enabled = False
                    KeyField = 'ID_ARTIGO'
                    ListField = 'ARTIGO'
                    ListSource = DM.Dsartigo
                    TabOrder = 0
                  end
                  object BitBtn1: TBitBtn
                    Left = 480
                    Top = 17
                    Width = 75
                    Height = 25
                    Caption = 'Inserir'
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
                    TabOrder = 2
                    OnClick = BitBtn1Click
                  end
                  object DBNavigator2: TDBNavigator
                    Left = 0
                    Top = 178
                    Width = 593
                    Height = 25
                    DataSource = dsvincartigo
                    Align = alBottom
                    TabOrder = 4
                  end
                  object Button4: TButton
                    Left = 394
                    Top = 21
                    Width = 45
                    Height = 20
                    Caption = 'Busca'
                    TabOrder = 1
                    OnClick = Button4Click
                  end
                end
                object TabSheet5: TTabSheet
                  Caption = 'Eventos'
                  ImageIndex = 2
                  object PanelEventos: TPanel
                    Left = 0
                    Top = 0
                    Width = 593
                    Height = 41
                    Align = alTop
                    TabOrder = 0
                    object BtnEventos: TButton
                      Left = 16
                      Top = 8
                      Width = 129
                      Height = 25
                      Caption = 'Cadastro de Eventos'
                      TabOrder = 0
                      OnClick = BtnEventosClick
                    end
                  end
                  object DBGridEventos: TDBGrid
                    Left = 0
                    Top = 41
                    Width = 593
                    Height = 162
                    Align = alClient
                    DataSource = DsEventos
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
                        FieldName = 'DATA'
                        Title.Caption = 'Data'
                        Width = 75
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'TIPO_EVENTO'
                        Title.Caption = 'Descri'#231#227'o do Tipo de Evento'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'MOTIVO'
                        Title.Caption = 'Motivo'
                        Width = 115
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'EXPEDIDO_POR'
                        Title.Caption = 'Expedido por'
                        Width = 115
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'CUMPRIDO'
                        Title.Caption = 'Cumprido'
                        Width = 40
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'ARQUIVADO'
                        Title.Caption = 'Arquivado'
                        Width = 40
                        Visible = True
                      end>
                  end
                end
                object TabSheet3: TTabSheet
                  Caption = 'Documentos'
                  ImageIndex = 1
                  object DBGridDocumentos: TDBGrid
                    Left = 0
                    Top = 40
                    Width = 593
                    Height = 163
                    Cursor = crHandPoint
                    Align = alBottom
                    BorderStyle = bsNone
                    DataSource = DsDocumentos
                    Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
                    ReadOnly = True
                    TabOrder = 2
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    OnCellClick = DBGridDocumentosCellClick
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'DESCRICAO'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clNavy
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = [fsBold, fsUnderline]
                        Title.Caption = 'Documentos Digitalizados'
                        Width = 550
                        Visible = True
                      end>
                  end
                  object BtnIncluirDocDigitalizado: TBitBtn
                    Left = 4
                    Top = 5
                    Width = 200
                    Height = 30
                    Caption = 'Incluir Documentos'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -13
                    Font.Name = 'Times New Roman'
                    Font.Style = []
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
                    ParentFont = False
                    Style = bsWin31
                    TabOrder = 0
                    TabStop = False
                    OnClick = BtnIncluirDocDigitalizadoClick
                  end
                  object BtnVisuzalizarDocDigitalizador: TBitBtn
                    Left = 212
                    Top = 4
                    Width = 200
                    Height = 30
                    Caption = 'Visualizar Documento'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -13
                    Font.Name = 'Times New Roman'
                    Font.Style = []
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
                    ParentFont = False
                    Style = bsWin31
                    TabOrder = 1
                    TabStop = False
                    OnClick = BtnVisuzalizarDocDigitalizadorClick
                  end
                end
                object TabSheet6: TTabSheet
                  Caption = 'Comuta'#231#227'o de Pena'
                  ImageIndex = 3
                  object Panel1: TPanel
                    Left = 0
                    Top = 0
                    Width = 593
                    Height = 41
                    Align = alTop
                    TabOrder = 0
                    object BtnComutacao: TButton
                      Left = 16
                      Top = 8
                      Width = 129
                      Height = 25
                      Caption = 'Cadastro de Comuta'#231#227'o'
                      TabOrder = 0
                      OnClick = BtnComutacaoClick
                    end
                  end
                  object DBGrid1: TDBGrid
                    Left = 0
                    Top = 41
                    Width = 593
                    Height = 162
                    Align = alClient
                    DataSource = DsComutacao
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
              object DBEdit1: TDBEdit
                Left = 618
                Top = 97
                Width = 154
                Height = 21
                DataField = 'VARA'
                DataSource = DsCadastro
                TabOrder = 8
              end
              object DBEdit2: TDBEdit
                Left = 12
                Top = 18
                Width = 149
                Height = 21
                DataField = 'NPROCESSO'
                DataSource = DsCadastro
                TabOrder = 0
              end
              object DBEdit3: TDBEdit
                Left = 12
                Top = 57
                Width = 136
                Height = 21
                DataField = 'GR'
                DataSource = DsCadastro
                TabOrder = 3
              end
              object DBComboBox4: TDBComboBox
                Left = 269
                Top = 18
                Width = 331
                Height = 21
                Style = csDropDownList
                DataField = 'PRISAO'
                DataSource = DsCadastro
                Items.Strings = (
                  ''
                  'CUMPRIMENTO DE SENTEN'#199'A'
                  'DECORRENTE DE SENTEN'#199'A DE PRON'#218'NCIA'
                  'FLAGRANTE'
                  'MANDADO DE PRIS'#195'O PREVENTIVA'
                  'MANDADO DE PRIS'#195'O PROVIS'#211'RIO'
                  'MANDADO DE PRIS'#195'O TEMPOR'#193'RIA'
                  'MANDADO DE PRIS'#195'O CONDENAT'#211'RIO'
                  'SENTE'#199'A PENAL RECORR'#205'VEL')
                TabOrder = 2
              end
              object DBComboBox5: TDBComboBox
                Left = 152
                Top = 56
                Width = 193
                Height = 21
                Style = csDropDownList
                DataField = 'TIPOJUSTICA'
                DataSource = DsCadastro
                Items.Strings = (
                  ''
                  'JUSTI'#199'A COMUM'
                  'JUSTI'#199'A FEDERAL'
                  'JUSTI'#199'A MILITAR')
                TabOrder = 4
              end
              object DBComboBox6: TDBComboBox
                Left = 352
                Top = 56
                Width = 248
                Height = 21
                Style = csDropDownList
                DataField = 'REU'
                DataSource = DsCadastro
                Items.Strings = (
                  ''
                  'PRIM'#193'RIO'
                  'REINCIDENTE'
                  'TECNICAMENTE PRIM'#193'RIO')
                TabOrder = 5
              end
              object DBEditDATA_PROCESSO: TDBEdit
                Left = 165
                Top = 18
                Width = 101
                Height = 21
                DataField = 'DATA_PROCESSO'
                DataSource = DsCadastro
                TabOrder = 1
              end
              object DBLookupComboBoxVara: TDBLookupComboBox
                Left = 327
                Top = 97
                Width = 266
                Height = 21
                DataField = 'ID_DESTINO_VARA'
                DataSource = DsCadastro
                KeyField = 'ID_DESTINO'
                ListField = 'DESTINO'
                ListSource = DsVara
                TabOrder = 7
                OnClick = DBLookupComboBoxVaraClick
              end
            end
            object TabSheetCondenacao: TTabSheet
              Caption = 'Condena'#231#227'o'
              ImageIndex = 1
              object DBText1: TDBText
                Left = 162
                Top = 16
                Width = 207
                Height = 17
                DataField = 'SITUACAOJURIDICA'
                DataSource = DsCadastro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label9: TLabel
                Left = 10
                Top = 16
                Width = 145
                Height = 13
                Caption = 'O Interno neste processo est'#225':'
              end
              object PanelCondenado: TPanel
                Left = 4
                Top = 32
                Width = 717
                Height = 380
                TabOrder = 1
                object Label29: TLabel
                  Left = 364
                  Top = 50
                  Width = 100
                  Height = 13
                  Caption = 'Tipo de Condena'#231#227'o'
                end
                object Label75: TLabel
                  Left = 146
                  Top = 50
                  Width = 27
                  Height = 13
                  Caption = 'Dia(s)'
                end
                object Label74: TLabel
                  Left = 79
                  Top = 50
                  Width = 37
                  Height = 13
                  Caption = 'M'#234's(es)'
                end
                object Label73: TLabel
                  Left = 12
                  Top = 50
                  Width = 30
                  Height = 13
                  Caption = 'Ano(s)'
                end
                object Label8: TLabel
                  Left = 225
                  Top = 10
                  Width = 104
                  Height = 13
                  Caption = 'Inicio da Condena'#231#227'o'
                end
                object Label38: TLabel
                  Left = 220
                  Top = 50
                  Width = 66
                  Height = 13
                  Caption = 'Regime Inicial'
                end
                object Label34: TLabel
                  Left = 432
                  Top = 297
                  Width = 65
                  Height = 13
                  Caption = 'Final da Pena'
                  Visible = False
                end
                object Label27: TLabel
                  Left = 12
                  Top = 10
                  Width = 79
                  Height = 13
                  Caption = 'N.Processo VEP'
                end
                object Label28: TLabel
                  Left = 118
                  Top = 10
                  Width = 62
                  Height = 13
                  Caption = 'Data na VEP'
                end
                object Label5: TLabel
                  Left = 364
                  Top = 8
                  Width = 97
                  Height = 13
                  Caption = 'Situa'#231#227'o Processual'
                end
                object PageControlCondenacao: TPageControl
                  Left = 0
                  Top = 126
                  Width = 529
                  Height = 171
                  ActivePage = TabSheet8
                  TabOrder = 10
                  TabWidth = 200
                  object TabSheet8: TTabSheet
                    Caption = 'Requisito para Progress'#227'o'
                    ImageIndex = 1
                    object GroupBox1: TGroupBox
                      Left = 9
                      Top = 78
                      Width = 405
                      Height = 65
                      Caption = 'Progress'#227'o de regime ap'#243's:'
                      TabOrder = 1
                      object Label10: TLabel
                        Left = 10
                        Top = 20
                        Width = 30
                        Height = 13
                        Caption = 'Ano(s)'
                      end
                      object Label11: TLabel
                        Left = 88
                        Top = 20
                        Width = 37
                        Height = 13
                        Caption = 'M'#234's(es)'
                      end
                      object Label12: TLabel
                        Left = 168
                        Top = 20
                        Width = 27
                        Height = 13
                        Caption = 'Dia(s)'
                      end
                      object Label30: TLabel
                        Left = 249
                        Top = 20
                        Width = 79
                        Height = 13
                        Caption = 'Data Progress'#227'o'
                        Visible = False
                      end
                      object DBEdit8: TDBEdit
                        Left = 10
                        Top = 36
                        Width = 65
                        Height = 21
                        DataField = 'ANO_PROGRESSAO'
                        DataSource = DsCadastro
                        Enabled = False
                        TabOrder = 0
                      end
                      object DBEdit9: TDBEdit
                        Left = 88
                        Top = 36
                        Width = 73
                        Height = 21
                        DataField = 'MES_PROGRESSAO'
                        DataSource = DsCadastro
                        Enabled = False
                        TabOrder = 1
                      end
                      object DBEdit10: TDBEdit
                        Left = 168
                        Top = 36
                        Width = 65
                        Height = 21
                        DataField = 'DIA_PROGRESSAO'
                        DataSource = DsCadastro
                        Enabled = False
                        TabOrder = 2
                      end
                      object adpDBDateTimePicker4: TadpDBDateTimePicker
                        Left = 248
                        Top = 35
                        Width = 101
                        Height = 21
                        Date = 41038.000000000000000000
                        Time = 0.574410995366633900
                        TabOrder = 3
                        Visible = False
                        DataField = 'DATA_PROGRESSAO'
                        DataSource = DsCadastro
                        ReadOnly = False
                      end
                    end
                    object DBRadioGroup1: TDBRadioGroup
                      Left = 9
                      Top = 5
                      Width = 405
                      Height = 73
                      Caption = 'Progress'#227'o de Regime'
                      DataField = 'PROGRESSAO_REGIME'
                      DataSource = DsCadastro
                      Items.Strings = (
                        
                          '1/6 - Comum Prim'#225'rio, Comum Reincidente, Hediondo (antes de 29/0' +
                          '3/2007)'
                        '2/5 - Hediondo Prim'#225'rio (a partir de 29/03/2007)'
                        '3/5 - Hediondo Reincidente (a partir de 29/03/2007)')
                      TabOrder = 0
                      Values.Strings = (
                        '0'
                        '1'
                        '2')
                    end
                  end
                  object TabSheet7: TTabSheet
                    Caption = 'Requisito para Condicional'
                    object DBRadioGroup2: TDBRadioGroup
                      Left = 9
                      Top = 7
                      Width = 405
                      Height = 68
                      Caption = 'Livramento Condicional'
                      Columns = 2
                      DataField = 'LIVRAMENTO_CONDICIONAL'
                      DataSource = DsCadastro
                      Items.Strings = (
                        '1/3 - Comum Prim'#225'rio'
                        '1/2 - Comum Reincidente'
                        '2/3 - Hediondo'
                        '1/1 - Hediondo Reincidente'
                        '1/1 - Revoga'#231#227'o LC')
                      TabOrder = 0
                      Values.Strings = (
                        '0'
                        '1'
                        '2'
                        '3'
                        '4')
                    end
                    object GroupBox2: TGroupBox
                      Left = 9
                      Top = 77
                      Width = 405
                      Height = 65
                      Caption = 'Livramento condicional ap'#243's:'
                      TabOrder = 1
                      object Label13: TLabel
                        Left = 10
                        Top = 20
                        Width = 30
                        Height = 13
                        Caption = 'Ano(s)'
                      end
                      object Label14: TLabel
                        Left = 88
                        Top = 20
                        Width = 37
                        Height = 13
                        Caption = 'M'#234's(es)'
                      end
                      object Label15: TLabel
                        Left = 168
                        Top = 20
                        Width = 27
                        Height = 13
                        Caption = 'Dia(s)'
                      end
                      object Label31: TLabel
                        Left = 248
                        Top = 20
                        Width = 81
                        Height = 13
                        Caption = 'Data Condicional'
                        Visible = False
                      end
                      object DBEdit11: TDBEdit
                        Left = 10
                        Top = 36
                        Width = 65
                        Height = 21
                        DataField = 'ANO_CONDICIONAL'
                        DataSource = DsCadastro
                        Enabled = False
                        TabOrder = 0
                      end
                      object DBEdit12: TDBEdit
                        Left = 88
                        Top = 36
                        Width = 73
                        Height = 21
                        DataField = 'MES_CONDICIONAL'
                        DataSource = DsCadastro
                        Enabled = False
                        TabOrder = 1
                      end
                      object DBEdit13: TDBEdit
                        Left = 168
                        Top = 36
                        Width = 65
                        Height = 21
                        DataField = 'DIA_CONDICIONAL'
                        DataSource = DsCadastro
                        Enabled = False
                        TabOrder = 2
                      end
                      object adpDBDateTimePicker5: TadpDBDateTimePicker
                        Left = 248
                        Top = 35
                        Width = 101
                        Height = 21
                        Date = 41038.000000000000000000
                        Time = 0.574410995366633900
                        TabOrder = 3
                        Visible = False
                        DataField = 'DATA_CONDICIONAL'
                        DataSource = DsCadastro
                        ReadOnly = False
                      end
                    end
                  end
                  object TabSheet9: TTabSheet
                    Caption = 'Detra'#231#227'o'
                    ImageIndex = 2
                    TabVisible = False
                    object DBGrid7: TDBGrid
                      Left = 0
                      Top = 41
                      Width = 521
                      Height = 102
                      Align = alClient
                      DataSource = DsDetracao
                      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                      ReadOnly = True
                      TabOrder = 1
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
                          Title.Caption = 'Data Pris'#227'o'
                          Width = 80
                          Visible = True
                        end
                        item
                          Expanded = False
                          FieldName = 'DATA_FINAL'
                          Title.Caption = 'Data Sa'#237'da'
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
                    object Panel2: TPanel
                      Left = 0
                      Top = 0
                      Width = 521
                      Height = 41
                      Align = alTop
                      TabOrder = 0
                      object Label32: TLabel
                        Left = 117
                        Top = 6
                        Width = 287
                        Height = 32
                        AutoSize = False
                        Caption = 
                          'Detra'#231#227'o '#233' o tempo de pris'#227'o preventiva ou provis'#243'ria, e o de in' +
                          'terna'#231#227'o em hospital ou manic'#244'mio.'
                        WordWrap = True
                      end
                      object BtnDetrcao: TBitBtn
                        Left = 10
                        Top = 3
                        Width = 99
                        Height = 31
                        Caption = 'Detra'#231#227'o'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clNavy
                        Font.Height = -11
                        Font.Name = 'Times New Roman'
                        Font.Style = []
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
                        ParentFont = False
                        Style = bsWin31
                        TabOrder = 0
                        TabStop = False
                        OnClick = BtnDetrcaoClick
                      end
                    end
                  end
                  object TabSheet10: TTabSheet
                    Caption = 'Interrup'#231#227'o'
                    ImageIndex = 3
                    TabVisible = False
                    object DBGrid8: TDBGrid
                      Left = 0
                      Top = 41
                      Width = 521
                      Height = 102
                      Align = alClient
                      DataSource = DsInterrupcao
                      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                      ReadOnly = True
                      TabOrder = 1
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
                          Title.Caption = 'Data Sa'#237'da'
                          Width = 80
                          Visible = True
                        end
                        item
                          Expanded = False
                          FieldName = 'DATA_FINAL'
                          Title.Caption = 'Data Pris'#227'o'
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
                    object Panel3: TPanel
                      Left = 0
                      Top = 0
                      Width = 521
                      Height = 41
                      Align = alTop
                      TabOrder = 0
                      object Label33: TLabel
                        Left = 117
                        Top = 3
                        Width = 287
                        Height = 34
                        AutoSize = False
                        Caption = 
                          'Interrup'#231#227'o de lapso de tempo de cumprimento de pena privativa d' +
                          'e liberdade, com '
                        WordWrap = True
                      end
                      object BtnInterrupcao: TBitBtn
                        Left = 9
                        Top = 4
                        Width = 96
                        Height = 30
                        Caption = 'Interrup'#231#227'o'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clNavy
                        Font.Height = -11
                        Font.Name = 'Times New Roman'
                        Font.Style = []
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
                        ParentFont = False
                        Style = bsWin31
                        TabOrder = 0
                        TabStop = False
                        OnClick = BtnInterrupcaoClick
                      end
                    end
                  end
                  object TabSheet11: TTabSheet
                    Caption = 'Remi'#231#227'o'
                    ImageIndex = 4
                    TabVisible = False
                    object DBGrid9: TDBGrid
                      Left = 0
                      Top = 41
                      Width = 521
                      Height = 102
                      Align = alClient
                      DataSource = DsRemicao
                      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                      ReadOnly = True
                      TabOrder = 1
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
                    object Panel4: TPanel
                      Left = 0
                      Top = 0
                      Width = 521
                      Height = 41
                      Align = alTop
                      TabOrder = 0
                      object BtnRemicao: TBitBtn
                        Left = 25
                        Top = 5
                        Width = 150
                        Height = 32
                        Caption = 'Remi'#231#227'o'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clNavy
                        Font.Height = -11
                        Font.Name = 'Times New Roman'
                        Font.Style = []
                        Glyph.Data = {
                          76050000424D7605000000000000360300002800000018000000180000000100
                          08000000000040020000120B0000120B0000C0000000C0000000FF00FF000A74
                          00000872000007700500008F0000007E0000005B000007800600046C0700086D
                          0B00138F190015AB250014A82800128824001B9A340027B549000279200027AF
                          4B002CB853002BC85E0002692C000982410021955A00007A4900066B4A001191
                          6B001A99780000937D00006A600000887E00046B65000F8C8600016B6900056C
                          690062E0E000005D5F0071FBFF0077FCFF007CF4F8006EF9FF005EF2FF0065F3
                          FF0064EDF8004AEFFF004FE8F90052EDFF003DE6FF003EE9FF004BEAFF004CDB
                          ED0053D9ED005AD5E70067E0EF0066DDEC0025DBFB0027DFFF002CDFFF0033DE
                          FD003AE1FB0043E4FE0000D4FF0000CBF70000CDF70001CFF90002D2FF0005CF
                          FB0006D6FF000CD4FF000FD4FA0014D7FF0015D9FF0016D2F8001AD9FF0024D5
                          F70029C9EB0030D0F0003DC6E4004ACCE5004FC3DA0050C3DB0057CAE00000D1
                          FF0000CCFC0000CDFB0000C8F70000C3F20008CDF9000ECFFC001DC3E80031C4
                          E50033C4E50037C1E1003ABBD90048C3DE0043B4CE004EC0DD004BB8D20000B8
                          E80000B3E60000B2E50000ADDF0004B2E400036983000ABBEE000AAEDE000CB0
                          DF000EB3E10014B0DD0019BAE50018B6E10018B1DD001BB3DD001CB4DF0027BF
                          E60026B7DE0027B7DD0028B3DA0031BADD0034C0E6003BBBE00000ACE00000AC
                          DF0000A9DD0000AADD0000A3D60000A0D500009BCE0001AADD0009ADDE000AA9
                          D8000F9AC7001BADD800199CC6001D9CC60025A1C700269DC40029A2C9002B9F
                          C3002C9EC20032A8CB0036A4C600008FC4000091C400008FC300008FC2000395
                          C7000390C300038CBE000493C5001390BE001ABCF500148CB9001592BF001993
                          BF001C92BD001E94BC00229AC2002192BA002294BC002996BD002A95BC002C98
                          BE000089C2000088C000008AC0000084B8000083B700007DB1000189C100037E
                          B000037CAF000480B3000C81B1000F86B6001088B800228BB400248DB5000079
                          AE000189C3000578AC0000669A0000659900076EA0000066A000006499000062
                          970000609600005E94000A689B00146A9A000560950000000000000000000000
                          00000000B4B4B4B40000000000000000000000000000000000B4B4B4B3A9A7B1
                          B4B4B400000000000000000000000000B4885A4B4947565455617DB400000000
                          00000000000000B4352428302E38484340513C3DB400000000000000000000B6
                          602625292D3B393746425364B40000000000000000000000B4B44E333274834A
                          5881B4B40000000000000000000000000000B4B4A17E7C95B4B4000000000000
                          000000000000000000000000BD7B62BD00000000000000000000000000B4B4B4
                          B4000000BD7B63BD000000B4B4B4B400000000B4B470697979B4B400BD7F63BD
                          00B4B496671B17B4B400B48B5B726E687A7878B4BD8065BDB477761F14080210
                          1DB4B4342A2C3A36443F3EB4BD6B6ABD5F2216060312110115B400B4A0868482
                          9192AE00BD6F6CBD00180907040C0F0D20B70000B40000000000BD00BD7371BD
                          002319130B050A210000000000BC000000BD0000BD7559BD00001C1A0E001E00
                          000000000000BB00BE000000B95C4CB500000000660000000000000000AF9F9D
                          9E9B9A99AC5D4DAA93A8B2A3A2A4A6000000000000B08C8A89879C85AD4F50AB
                          94908F8D8F8EA500000000000000000000000000BA9798B80000000000000000
                          000000000000000000000000B45752B400000000000000000000000000000000
                          000000B4312F4541B4000000000000000000000000000000000000B45E272B6D
                          B400000000000000000000000000000000000000B4B4B4B40000000000000000
                          0000000000000000000000000000000000000000000000000000}
                        ParentFont = False
                        Style = bsWin31
                        TabOrder = 0
                        TabStop = False
                        OnClick = BtnRemicaoClick
                      end
                    end
                  end
                end
                object DBComboBox1: TDBComboBox
                  Left = 364
                  Top = 66
                  Width = 289
                  Height = 21
                  Style = csDropDownList
                  DataField = 'TIPOCONDENACAO'
                  DataSource = DsCadastro
                  Items.Strings = (
                    'DETEN'#199#195'O'
                    'PRIS'#195'O CIVIL'
                    'PRIS'#195'O SIMPLES'
                    'RECLUS'#195'O')
                  Sorted = True
                  TabOrder = 8
                end
                object DBEdit7: TDBEdit
                  Left = 146
                  Top = 66
                  Width = 65
                  Height = 21
                  DataField = 'TOTAL_PENA_DIA'
                  DataSource = DsCadastro
                  TabOrder = 6
                end
                object DBEdit6: TDBEdit
                  Left = 79
                  Top = 66
                  Width = 65
                  Height = 21
                  DataField = 'TOTAL_PENA_MES'
                  DataSource = DsCadastro
                  TabOrder = 5
                end
                object DBEdit5: TDBEdit
                  Left = 12
                  Top = 66
                  Width = 65
                  Height = 21
                  DataField = 'TOTAL_PENA_ANO'
                  DataSource = DsCadastro
                  TabOrder = 4
                end
                object adpDBDateTimePickerDataCondenacao: TadpDBDateTimePicker
                  Left = 226
                  Top = 25
                  Width = 101
                  Height = 21
                  Date = 41038.000000000000000000
                  Time = 0.574410995366633900
                  TabOrder = 2
                  DataField = 'DATA_INICIO_CONDENACAO'
                  DataSource = DsCadastro
                  ReadOnly = False
                end
                object BtnCalcular: TBitBtn
                  Left = 10
                  Top = 98
                  Width = 199
                  Height = 25
                  Caption = 'Calcular'
                  Glyph.Data = {
                    A6030000424DA603000000000000A60200002800000010000000100000000100
                    08000000000000010000120B0000120B00009C0000009C00000000000000FFFF
                    FF005A58F4006867F7006564EE007674CF00A2A1F500B3B2E000B9B8E4009692
                    EA008785CC009A97E700746DFF00A9A5C500ACA6C600BAB5CF00B4AEC4008062
                    B100E5E1EB00785F8600FF00FF00FFFDFF00B3818700E2A9AE00EBAAAF00B482
                    8300B6ABAB00C27E7C00E6B1AF00A45A4900A8615100958A87007B635200C164
                    1600CF640000FFF5EC00D3690000CB670400C9670400C9680400CC680600CB68
                    0600CB680700CB690800FFDAB400D9730300D4710700DEBE9B00DFD1C200C494
                    5B00F7CD99008C827600FFF3E500FFFAF400F2CA9500FCD49F0075655000EDD7
                    BB00FFEFDA00FFF0DD00FEF0DE00FEE8C9006F665800FFEED200FBECD400C3AC
                    8500F7DCAB00FFEBC800FAF7F00085764C00F1E7CA00FFF3BE00F1ECD500E8E1
                    B900FFFDF200BAB59200FCF7D100FFFBDC008B843300FEFDD6009C9B6A00FFFF
                    DE00FFFFE200E1E1C700F5F5E600DEDED200FFFFF600FFFFF800FFFFFA009D9E
                    8E007A7B6E00F4F7E800C0D09500E3EBD100F1F6EB00B3D191006D904B007595
                    5900B9DE9F00ABD2940081C0630081BE620081C0660092CF7600B2DD9E00B4D9
                    A3007DC0660069BA530087C9740068BA56008AC77B0069AE5B0081C6740057B3
                    46007CC5700082C9760081C67600F1F9F0007DC47B00EFF7F40088BFBA0088B1
                    AF004A4D4D0013ACD5001D637A00567D8900F2F6F8008E98A0000E74E700BAC9
                    D900002CB400C0C9EA002F43CA00C4C8EE000C1AB8003843D4004E58EB005B60
                    DE006F75F4004040FB004549FF004F50FE004B4BEA005253EE005656F1005B5B
                    FB005354D9006162FC006060FA005F60F2006162D8007D7DF900C3C3E700F9F9
                    FF00F1F1F500FDFDFF0014141414141414141414141414141414142B2B2B2B2B
                    2B2B2B2B2B2B2B2B2B141429010101733A3A3A314E2C2C2C2514142B01010173
                    3A3B3F1F7C332F2C281414266E7074716A66646F7D1638602714142A5E757572
                    5D484649611819202214142A589B99765B4A2340651C171B4514142406958E87
                    978162636B5F507F7B821411960E100F058479686D695C788086918A55473237
                    4D0A0C9A6C15344313149107514F4C423630928567353C3D211403835752597A
                    3E1A891E2D2E2E2E141494980156535A4139881D141414141414940944010154
                    4B0D8C1414141414141414930B12777E088F141414141414141414148D020490
                    8B141414141414141414}
                  TabOrder = 9
                  OnClick = BtnCalcularClick
                end
                object DBComboBox2: TDBComboBox
                  Left = 220
                  Top = 66
                  Width = 140
                  Height = 21
                  Style = csDropDownList
                  DataField = 'TIPOREGIME'
                  DataSource = DsCadastro
                  Items.Strings = (
                    'Aberto'
                    'Fechado'
                    'Mandado de Pris'#227'o C'#237'vel'
                    'Medida de Seguran'#231'a'
                    'Medida de Tratamento'
                    'Provis'#243'rio'
                    'Semi-Aberto'
                    'Semi-Aberto Sem Sa'#237'da'
                    'Semi-Aberto Com Trabalho Externo'
                    'Semi-Aberto Com Sa'#237'da'
                    'Semi-Aberto Com Trabalho Concedido'
                    'Semi-Aberto Com Trabalho Concedido e Sa'#237'da'
                    'Semi-Aberto Com Trabalho e Sa'#237'da'
                    'Tempor'#225'rio'
                    'N'#227'o Informado')
                  TabOrder = 7
                end
                object BtnLinhaTempo: TButton
                  Left = 256
                  Top = 304
                  Width = 161
                  Height = 25
                  Caption = 'Linha de Tempo'
                  TabOrder = 11
                  Visible = False
                  OnClick = BtnLinhaTempoClick
                end
                object MemoLinhaTempo: TRichEdit
                  Left = 544
                  Top = 316
                  Width = 166
                  Height = 13
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Lucida Console'
                  Font.Style = []
                  Lines.Strings = (
                    'MemoLinhaTempo')
                  ParentFont = False
                  ScrollBars = ssVertical
                  TabOrder = 13
                  Visible = False
                end
                object adpDBDateTimePickerFinalPena: TadpDBDateTimePicker
                  Left = 432
                  Top = 312
                  Width = 101
                  Height = 21
                  Date = 41038.000000000000000000
                  Time = 0.574410995366633900
                  Enabled = False
                  TabOrder = 12
                  Visible = False
                  DataField = 'DATA_FINAL_PENA'
                  DataSource = DsCadastro
                  ReadOnly = False
                end
                object DBEdit19: TDBEdit
                  Left = 12
                  Top = 26
                  Width = 100
                  Height = 21
                  DataField = 'PROCESSO_VEC'
                  DataSource = DsCadastro
                  TabOrder = 0
                end
                object DBEditDATA_PROCESSO_VEC: TDBEdit
                  Left = 119
                  Top = 26
                  Width = 101
                  Height = 21
                  DataField = 'DATA_PROCESSO_VEC'
                  DataSource = DsCadastro
                  TabOrder = 1
                end
                object DBComboBox8: TDBComboBox
                  Left = 364
                  Top = 24
                  Width = 293
                  Height = 21
                  Style = csDropDownList
                  DataField = 'SITUACAO_CONDENACAO'
                  DataSource = DsCadastro
                  Items.Strings = (
                    ''
                    'GUIA DE RECOLHIMENTO'
                    'MANDADO DE PRIS'#195'O CONDENAT'#211'RIA'
                    'PRONUNCIADO'
                    'RECOMENDA'#199#195'O DE PRIS'#195'O'
                    'SENTEN'#199'A')
                  Sorted = True
                  TabOrder = 3
                end
              end
              object BtnLimpaPena: TButton
                Left = 376
                Top = 4
                Width = 153
                Height = 25
                Caption = 'Limpar dados da pena'
                TabOrder = 0
                OnClick = BtnLimpaPenaClick
              end
            end
            object TabSheet4: TTabSheet
              Caption = 'Libera'#231#227'o'
              ImageIndex = 3
              object Label23: TLabel
                Left = 430
                Top = 17
                Width = 88
                Height = 13
                Caption = 'Data da Libera'#231#227'o'
              end
              object Label24: TLabel
                Left = 18
                Top = 18
                Width = 135
                Height = 13
                Caption = 'N'#186' do Documento Libera'#231#227'o'
              end
              object Label25: TLabel
                Left = 18
                Top = 58
                Width = 97
                Height = 13
                Caption = 'Motivo da Libera'#231#227'o'
              end
              object Label26: TLabel
                Left = 17
                Top = 100
                Width = 123
                Height = 13
                Caption = 'Observa'#231#227'o da Libera'#231#227'o'
              end
              object DBEdit15: TDBEdit
                Left = 18
                Top = 34
                Width = 207
                Height = 21
                DataField = 'DOCUMENTO_LIBERACAO'
                DataSource = DsCadastro
                TabOrder = 0
              end
              object DBEdit16: TDBEdit
                Left = 17
                Top = 116
                Width = 508
                Height = 21
                DataField = 'OBSERVACAO_LIBERACAO'
                DataSource = DsCadastro
                TabOrder = 4
              end
              object DBEdit21: TDBEdit
                Left = 18
                Top = 73
                Width = 463
                Height = 21
                DataField = 'MOTIVO_LIBERACAO'
                DataSource = DsCadastro
                TabOrder = 2
              end
              object Button3: TButton
                Left = 484
                Top = 73
                Width = 45
                Height = 20
                Caption = 'Busca'
                TabOrder = 3
                OnClick = Button3Click
              end
              object DBEdit17: TDBEdit
                Left = 429
                Top = 34
                Width = 101
                Height = 21
                DataField = 'DATA_LIBERACAO'
                DataSource = DsCadastro
                TabOrder = 1
              end
            end
          end
          object dbeditcodigo: TDBEdit
            Left = 10
            Top = 24
            Width = 49
            Height = 21
            DataField = 'IDPROCESSO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBLookupComboBoxNomeInterno: TDBLookupComboBox
            Left = 72
            Top = 24
            Width = 457
            Height = 21
            DataField = 'IDINTERNO'
            DataSource = DsCadastro
            KeyField = 'ID_INTERNO'
            ListField = 'NOME_INTERNO'
            ListSource = DM.DsInterno
            TabOrder = 1
          end
          object BtnBuscaInterno: TButton
            Left = 528
            Top = 24
            Width = 45
            Height = 20
            Caption = 'Busca'
            TabOrder = 2
            OnClick = BtnBuscaInternoClick
          end
          object DBComboBox7: TDBComboBox
            Left = 72
            Top = 64
            Width = 457
            Height = 21
            Style = csDropDownList
            DataField = 'SITUACAOJURIDICA'
            DataSource = DsCadastro
            Items.Strings = (
              'ABSOLVIDO'
              'CONDENADO'
              'EXTIN'#199#195'O'
              'INQU'#201'RITO POLICIAL'
              'PROCESSADO')
            TabOrder = 3
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        ExplicitWidth = 809
        ExplicitHeight = 502
        inherited PanelLocalizaConsulta: TPanel
          Width = 809
          ExplicitWidth = 805
        end
        inherited PanelConsulta: TPanel
          Width = 809
          Height = 468
          ExplicitWidth = 805
          ExplicitHeight = 467
          inherited DBGridConsulta: TDBGrid
            Width = 807
            Height = 466
            DataSource = DsConsulta
            Columns = <
              item
                Expanded = False
                FieldName = 'RGI'
                Title.Caption = 'Prontu'#225'rio'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_INTERNO'
                Title.Caption = 'Interno'
                Width = 235
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_LIBERACAO'
                Title.Caption = 'Data Libera'#231#227'o'
                Width = 87
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SITUACAOJURIDICA'
                Title.Caption = 'Situa'#231#227'o'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMERO_INQUERITO'
                Title.Caption = 'Inqu'#233'rito'
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
                FieldName = 'IDPROCESSO'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'IDINTERNO'
                Visible = False
              end>
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 932
    ExplicitWidth = 928
  end
  inherited StatusBar1: TStatusBar
    Top = 562
    Width = 932
    ExplicitTop = 561
    ExplicitWidth = 928
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM processo'
      'WHERE IDPROCESSO = :IDPROCESSO')
    Left = 480
    Top = 8
    ParamData = <
      item
        Name = 'IDPROCESSO'
        DataType = ftInteger
        ParamType = ptInput
        Value = -1
      end>
  end
  inherited DspCadastro: TDataSetProvider
    Left = 508
    Top = 8
  end
  inherited CdsCadastro: TClientDataSet
    IndexFieldNames = 'IDPROCESSO'
    MasterFields = 'IDPROCESSO'
    MasterSource = DsConsulta
    PacketRecords = 0
    AfterInsert = CdsCadastroAfterInsert
    BeforeEdit = CdsCadastroBeforeEdit
    BeforePost = CdsCadastroBeforePost
    Left = 536
    Top = 8
  end
  inherited DsCadastro: TDataSource
    Left = 564
    Top = 8
  end
  object dsvincartigo: TDataSource
    DataSet = cdsvincartigo
    Left = 696
    Top = 8
  end
  object cdsvincartigo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_PROCESSO'
    MasterFields = 'IDPROCESSO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspvincartigo'
    AfterInsert = cdsvincartigoAfterInsert
    Left = 672
    Top = 8
    object cdsvincartigoID_VINC_ARTIGO: TIntegerField
      FieldName = 'ID_VINC_ARTIGO'
      Required = True
    end
    object cdsvincartigoID_ARTIGO: TIntegerField
      FieldName = 'ID_ARTIGO'
    end
    object cdsvincartigoID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsvincartigoArtigos: TStringField
      FieldKind = fkLookup
      FieldName = 'Artigo(s)'
      LookupDataSet = DM.Cdsartigo
      LookupKeyFields = 'ID_ARTIGO'
      LookupResultField = 'ARTIGO'
      KeyFields = 'ID_ARTIGO'
      Size = 100
      Lookup = True
    end
  end
  object dspvincartigo: TDataSetProvider
    DataSet = SQLVincartigo
    Left = 648
    Top = 8
  end
  object SQLvincartigoold: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'idprocesso'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM vinc_artigo'
      'where id_processo = :idprocesso')
    Left = 200
    Top = 304
  end
  object SqlListaold: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MARCAS '
      'FROM PATRIMONIO')
    Left = 112
    Top = 304
  end
  object DspLista: TDataSetProvider
    DataSet = SqlLista
    Left = 332
  end
  object CdsLista: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspLista'
    BeforePost = CdsCadastroBeforePost
    Left = 360
  end
  object DsLista: TDataSource
    DataSet = CdsLista
    OnDataChange = DsCadastroDataChange
    Left = 388
  end
  object SqlConsultaold: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_UP'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'select'
      'i.nome_interno,'
      'p.nprocesso,'
      'p.idprocesso,'
      'p.SITUACAOJURIDICA,'
      'p.NUMERO_INQUERITO,'
      'p.IDINTERNO,'
      'i.rgi,'
      'p.data_liberacao'
      'from processo p'
      'join interno i on p.idinterno = i.id_interno'
      'where i.id_up = :ID_UP'
      'order by i.nome_interno')
    Left = 16
    Top = 304
  end
  object DspConsulta: TDataSetProvider
    DataSet = SqlConsulta
    Left = 180
  end
  object CdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspConsulta'
    BeforePost = CdsCadastroBeforePost
    OnFilterRecord = CdsConsultaFilterRecord
    Left = 208
    object CdsConsultaNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 100
    end
    object CdsConsultaNPROCESSO: TStringField
      FieldName = 'NPROCESSO'
      Size = 100
    end
    object CdsConsultaIDPROCESSO: TIntegerField
      FieldName = 'IDPROCESSO'
      Required = True
    end
    object CdsConsultaIDINTERNO: TIntegerField
      FieldName = 'IDINTERNO'
      Required = True
    end
    object CdsConsultaSITUACAOJURIDICA: TStringField
      FieldName = 'SITUACAOJURIDICA'
      Size = 100
    end
    object CdsConsultaNUMERO_INQUERITO: TStringField
      FieldName = 'NUMERO_INQUERITO'
      Size = 30
    end
    object CdsConsultaRGI: TStringField
      FieldName = 'RGI'
      Size = 30
    end
    object CdsConsultaDATA_LIBERACAO: TSQLTimeStampField
      FieldName = 'DATA_LIBERACAO'
    end
  end
  object DsConsulta: TDataSource
    DataSet = CdsConsulta
    OnDataChange = DsCadastroDataChange
    Left = 236
  end
  object SqlDocumentosold: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDPROCESSO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'select * from DOCUMENTOS_PROCESSO'
      'where IDPROCESSO = :IDPROCESSO'
      '')
    Left = 440
    Top = 304
  end
  object DspDocumentos: TDataSetProvider
    DataSet = SqlDocumentos
    Left = 696
    Top = 72
  end
  object CdsDocumentos: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDPROCESSO'
    MasterFields = 'IDPROCESSO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspDocumentos'
    AfterInsert = CdsDocumentosAfterInsert
    Left = 728
    Top = 72
  end
  object DsDocumentos: TDataSource
    DataSet = CdsDocumentos
    Left = 760
    Top = 72
  end
  object OpenDialogDoc: TOpenDialog
    Left = 687
    Top = 120
  end
  object SaveDialogDoc: TSaveDialog
    Left = 656
    Top = 120
  end
  object SqlEventosold: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDPROCESSO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'select * from EVENTO_PROCESSO'
      'where IDPROCESSO = :IDPROCESSO'
      '')
    Left = 200
    Top = 416
  end
  object DspEventos: TDataSetProvider
    DataSet = SqlEventos
    Left = 768
    Top = 200
  end
  object CdsEventos: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDPROCESSO'
    MasterFields = 'IDPROCESSO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspEventos'
    AfterInsert = CdsDocumentosAfterInsert
    Left = 800
    Top = 200
  end
  object DsEventos: TDataSource
    DataSet = CdsEventos
    Left = 832
    Top = 200
  end
  object DsTipoEventos: TDataSource
    DataSet = CdsTipoEventos
    Left = 829
    Top = 280
  end
  object SqlTipoEventosold: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * '
      'FROM TIPO_EVENTO_PROCESSO')
    Left = 296
    Top = 416
  end
  object DspTipoEventos: TDataSetProvider
    DataSet = SqlTipoEventos
    Left = 772
    Top = 280
  end
  object CdsTipoEventos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspTipoEventos'
    Left = 800
    Top = 280
    object CdsCadastroIDTIPO_EVENTO_PROCESSO: TIntegerField
      FieldName = 'IDTIPO_EVENTO_PROCESSO'
      Required = True
    end
    object CdsCadastroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object SqlComutacaoold: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDPROCESSO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT '
      'V.IDPROCESSO,'
      'C.DATA_LIBERACAO,C.TIPO_COMUTACAO,C.VARA'
      'FROM COMUTACAO C'
      'JOIN VINC_COMUTACAO V ON (V.ID_COMUTACAO=C.ID_COMUTACAO)'
      'WHERE V.IDPROCESSO=:IDPROCESSO')
    Left = 408
    Top = 416
  end
  object DspComutacao: TDataSetProvider
    DataSet = SqlComutacao
    Left = 772
    Top = 328
  end
  object CdsComutacao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDPROCESSO'
    MasterFields = 'IDPROCESSO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspComutacao'
    AfterInsert = CdsDocumentosAfterInsert
    Left = 800
    Top = 328
  end
  object DsComutacao: TDataSource
    DataSet = CdsComutacao
    Left = 829
    Top = 328
  end
  object TimerComutacao: TTimer
    Interval = 500
    OnTimer = TimerComutacaoTimer
    Left = 463
    Top = 48
  end
  object SqlDetracaoold: TSQLQuery
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
    Left = 505
    Top = 414
  end
  object DspDetracao: TDataSetProvider
    DataSet = SqlDetracao
    Left = 781
    Top = 366
  end
  object CdsDetracao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'IDINTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPDetracao'
    Left = 809
    Top = 366
  end
  object DsDetracao: TDataSource
    DataSet = CdsDetracao
    OnDataChange = DsCadastroDataChange
    Left = 837
    Top = 366
  end
  object SqlInterrupcaoold: TSQLQuery
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
    Left = 601
    Top = 410
  end
  object DspInterrupcao: TDataSetProvider
    DataSet = SqlInterrupcao
    Left = 781
    Top = 410
  end
  object CdsInterrupcao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'IDINTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPInterrupcao'
    Left = 809
    Top = 410
  end
  object DsInterrupcao: TDataSource
    DataSet = CdsInterrupcao
    OnDataChange = DsCadastroDataChange
    Left = 837
    Top = 410
  end
  object SqlRemicaoold: TSQLQuery
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
    Left = 625
    Top = 309
  end
  object DspRemicao: TDataSetProvider
    DataSet = SqlRemicao
    Left = 781
    Top = 453
  end
  object CdsRemicao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'IDINTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPRemicao'
    Left = 809
    Top = 453
  end
  object DsRemicao: TDataSource
    DataSet = CdsRemicao
    OnDataChange = DsCadastroDataChange
    Left = 837
    Top = 453
  end
  object SqlDelegaciaold: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDCIDADE'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM DESTINO'
      'where TIPO_DESTINO='#39'DELEGACIA'#39
      'AND IDCIDADE=:IDCIDADE')
    Left = 544
    Top = 304
  end
  object DspDelegacia: TDataSetProvider
    DataSet = SqlDelegacia
    Left = 812
    Top = 56
  end
  object CdsDelegacia: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDCIDADE'
    MasterFields = 'ID_CIDADE'
    MasterSource = DsCidadeInquerito
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspDelegacia'
    Left = 840
    Top = 56
  end
  object DsDelegacia: TDataSource
    DataSet = CdsDelegacia
    Left = 868
    Top = 56
  end
  object SqlCidadeInqueritoold: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ID_CIDADE, CIDADE ||'#39'-'#39'|| UF AS CIDADE'
      'FROM CIDADE'
      'where trim(coalesce(CIDADE ||'#39'-'#39'|| UF,'#39#39'))<>'#39#39
      'ORDER BY CIDADE ||'#39'-'#39'|| UF')
    Left = 320
    Top = 304
  end
  object DSpCidadeInquerito: TDataSetProvider
    DataSet = SqlCidadeInquerito
    Left = 812
    Top = 8
  end
  object CdsCidadeInquerito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCidadeInquerito'
    Left = 840
    Top = 8
  end
  object DsCidadeInquerito: TDataSource
    DataSet = CdsCidadeInquerito
    Left = 868
    Top = 8
  end
  object SqlCidadeVaraold: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ID_CIDADE, CIDADE ||'#39'-'#39'|| UF AS CIDADE'
      'FROM CIDADE'
      'where trim(coalesce(CIDADE ||'#39'-'#39'|| UF,'#39#39'))<>'#39#39
      'ORDER BY CIDADE ||'#39'-'#39'|| UF')
    Left = 16
    Top = 416
  end
  object DspCidadeVara: TDataSetProvider
    DataSet = SqlCidadeVara
    Left = 812
    Top = 104
  end
  object CdsCidadeVara: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCidadeVara'
    Left = 840
    Top = 104
  end
  object DsCidadeVara: TDataSource
    DataSet = CdsCidadeVara
    Left = 868
    Top = 104
  end
  object SqlVaraold: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDCIDADE'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM DESTINO'
      'where TIPO_DESTINO='#39'VARA'#39
      'AND IDCIDADE=:IDCIDADE')
    Left = 104
    Top = 416
  end
  object DspVara: TDataSetProvider
    DataSet = SqlVara
    Left = 812
    Top = 152
  end
  object CdsVara: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDCIDADE'
    MasterFields = 'ID_CIDADE'
    MasterSource = DsCidadeVara
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspVara'
    Left = 840
    Top = 152
  end
  object DsVara: TDataSource
    DataSet = CdsVara
    Left = 868
    Top = 152
  end
  object SqlConsulta: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select'
      'i.nome_interno,'
      'p.nprocesso,'
      'p.idprocesso,'
      'p.SITUACAOJURIDICA,'
      'p.NUMERO_INQUERITO,'
      'p.IDINTERNO,'
      'i.rgi,'
      'p.data_liberacao'
      'from processo p'
      'join interno i on p.idinterno = i.id_interno'
      'where i.id_up = :ID_UP'
      'order by i.nome_interno'
      '')
    Left = 24
    Top = 368
    ParamData = <
      item
        Name = 'ID_UP'
        ParamType = ptInput
      end>
  end
  object SqlLista: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT MARCAS '
      'FROM PATRIMONIO')
    Left = 119
    Top = 368
  end
  object SQLVincartigo: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT * '
      'FROM vinc_artigo'
      'where id_processo = :idprocesso')
    Left = 204
    Top = 370
    ParamData = <
      item
        Name = 'IDPROCESSO'
        ParamType = ptInput
      end>
  end
  object SqlCidadeInquerito: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT ID_CIDADE, CIDADE ||'#39'-'#39'|| UF AS CIDADE'
      'FROM CIDADE'
      'where trim(coalesce(CIDADE ||'#39'-'#39'|| UF,'#39#39'))<>'#39#39
      'ORDER BY CIDADE ||'#39'-'#39'|| UF'
      '')
    Left = 308
    Top = 370
  end
  object SqlDocumentos: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from DOCUMENTOS_PROCESSO'
      'where IDPROCESSO = :IDPROCESSO'
      ''
      '')
    Left = 412
    Top = 370
    ParamData = <
      item
        Name = 'IDPROCESSO'
        ParamType = ptInput
      end>
  end
  object SqlDelegacia: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT * '
      'FROM DESTINO'
      'where TIPO_DESTINO='#39'DELEGACIA'#39
      'AND IDCIDADE=:IDCIDADE'
      '')
    Left = 516
    Top = 370
    ParamData = <
      item
        Name = 'IDCIDADE'
        ParamType = ptInput
      end>
  end
  object SqlRemicao: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select *'
      'from remicao'
      'where id_interno=:id_interno'
      '')
    Left = 612
    Top = 370
    ParamData = <
      item
        Name = 'ID_INTERNO'
        ParamType = ptInput
      end>
  end
  object SqlCidadeVara: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT ID_CIDADE, CIDADE ||'#39'-'#39'|| UF AS CIDADE'
      'FROM CIDADE'
      'where trim(coalesce(CIDADE ||'#39'-'#39'|| UF,'#39#39'))<>'#39#39
      'ORDER BY CIDADE ||'#39'-'#39'|| UF'
      '')
    Left = 24
    Top = 480
  end
  object SqlVara: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT * '
      'FROM DESTINO'
      'where TIPO_DESTINO='#39'VARA'#39
      'AND IDCIDADE=:IDCIDADE'
      '')
    Left = 115
    Top = 480
    ParamData = <
      item
        Name = 'IDCIDADE'
        ParamType = ptInput
      end>
  end
  object SqlEventos: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from EVENTO_PROCESSO'
      'where IDPROCESSO = :IDPROCESSO'
      ''
      '')
    Left = 204
    Top = 474
    ParamData = <
      item
        Name = 'IDPROCESSO'
        ParamType = ptInput
      end>
  end
  object SqlTipoEventos: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT * '
      'FROM TIPO_EVENTO_PROCESSO'
      '')
    Left = 292
    Top = 482
  end
  object SqlComutacao: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT '
      'V.IDPROCESSO,'
      'C.DATA_LIBERACAO,C.TIPO_COMUTACAO,C.VARA'
      'FROM COMUTACAO C'
      'JOIN VINC_COMUTACAO V ON (V.ID_COMUTACAO=C.ID_COMUTACAO)'
      'WHERE V.IDPROCESSO=:IDPROCESSO'
      '')
    Left = 396
    Top = 482
    ParamData = <
      item
        Name = 'IDPROCESSO'
        ParamType = ptInput
      end>
  end
  object SqlDetracao: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select *'
      'from detracao'
      'where id_interno=:id_interno'
      ''
      '')
    Left = 500
    Top = 482
    ParamData = <
      item
        Name = 'ID_INTERNO'
        ParamType = ptInput
      end>
  end
  object SqlInterrupcao: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select *'
      'from detracao'
      'where id_interno=:id_interno'
      ''
      '')
    Left = 604
    Top = 482
    ParamData = <
      item
        Name = 'ID_INTERNO'
        ParamType = ptInput
      end>
  end
end
