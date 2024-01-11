inherited FrmCadastroVisitante: TFrmCadastroVisitante
  Left = 207
  Top = 105
  Caption = 'Cadastro Visitante'
  ClientHeight = 583
  ClientWidth = 932
  KeyPreview = True
  ExplicitWidth = 948
  ExplicitHeight = 622
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 532
    ExplicitHeight = 533
    inherited ToolBarModeloCadastro: TToolBar
      ExplicitHeight = 515
      inherited Excluir: TToolButton
        Visible = True
      end
    end
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
      ExplicitTop = 515
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 817
    Height = 532
    ExplicitHeight = 533
    inherited Image2: TImage
      Width = 909
      ExplicitWidth = 909
    end
    inherited PageControlModeloCadastro: TPageControl
      Width = 821
      Height = 533
      ExplicitHeight = 533
      inherited TabSheetCadastro: TTabSheet
        ExplicitWidth = 813
        ExplicitHeight = 505
        inherited PanelCadastro: TPanel
          Width = 813
          Height = 505
          ExplicitWidth = 813
          object PageControl1: TPageControl
            Left = 1
            Top = 1
            Width = 811
            Height = 503
            ActivePage = TabSheet1
            Align = alClient
            TabOrder = 0
            object TabSheet1: TTabSheet
              Caption = 'Principal'
              object Label2: TLabel
                Left = 16
                Top = 8
                Width = 11
                Height = 13
                Caption = 'ID'
                FocusControl = DBEditCODIGO
              end
              object Label3: TLabel
                Left = 80
                Top = 8
                Width = 40
                Height = 13
                Caption = 'Visitante'
                FocusControl = DBEdit2
              end
              object Label6: TLabel
                Left = 483
                Top = 58
                Width = 46
                Height = 13
                Caption = 'N'#186' Cart'#227'o'
                FocusControl = DBEditCodigoCartao
              end
              object Label7: TLabel
                Left = 144
                Top = 100
                Width = 20
                Height = 13
                Caption = 'CPF'
                FocusControl = DBEditCPF
              end
              object Label8: TLabel
                Left = 274
                Top = 99
                Width = 16
                Height = 13
                Caption = 'RG'
                FocusControl = DBEdit7
              end
              object Label9: TLabel
                Left = 360
                Top = 100
                Width = 79
                Height = 13
                Caption = 'Org'#227'o Expedidor'
                FocusControl = DBEdit8
              end
              object Label12: TLabel
                Left = 245
                Top = 59
                Width = 67
                Height = 13
                Caption = 'Motivo Inativo'
                FocusControl = DBEdit1
              end
              object Label5: TLabel
                Left = 445
                Top = 98
                Width = 84
                Height = 13
                Caption = 'Data Emissao RG'
                FocusControl = DBEditEmissaoRG
              end
              object Label15: TLabel
                Left = 15
                Top = 250
                Width = 21
                Height = 13
                Caption = 'M'#227'e'
                FocusControl = DBEdit14
              end
              object Label19: TLabel
                Left = 335
                Top = 250
                Width = 15
                Height = 13
                Caption = 'Pai'
                FocusControl = DBEdit15
              end
              object Label52: TLabel
                Left = 15
                Top = 60
                Width = 82
                Height = 13
                Caption = 'Data Nascimento'
                FocusControl = DBEditdtrnascimento
              end
              object Label16: TLabel
                Left = 16
                Top = 100
                Width = 113
                Height = 13
                Caption = 'Certid'#227'o de Nascimento'
                FocusControl = DBEdit3
              end
              object Label20: TLabel
                Left = 16
                Top = 211
                Width = 60
                Height = 13
                Caption = 'Naturalidade'
              end
              object SpeedButton4: TSpeedButton
                Left = 260
                Top = 226
                Width = 23
                Height = 22
                Caption = '...'
                Flat = True
                OnClick = SpeedButton4Click
              end
              object Label21: TLabel
                Left = 288
                Top = 211
                Width = 68
                Height = 13
                Caption = 'Nacionalidade'
              end
              object SpeedButton1: TSpeedButton
                Left = 512
                Top = 227
                Width = 23
                Height = 22
                Hint = 'Cadastrar Nacionalidade'
                Caption = '...'
                Flat = True
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton1Click
              end
              object Label18: TLabel
                Left = 16
                Top = 136
                Width = 97
                Height = 13
                Caption = 'Mensagem de Alerta'
              end
              object Label22: TLabel
                Left = 440
                Top = 8
                Width = 79
                Height = 13
                Caption = 'Tipo de Visitante'
              end
              object DBEditCODIGO: TDBEdit
                Left = 16
                Top = 24
                Width = 57
                Height = 21
                DataField = 'ID_VISITANTE'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 0
              end
              object DBEdit2: TDBEdit
                Left = 80
                Top = 24
                Width = 353
                Height = 21
                DataField = 'VISITANTE'
                DataSource = DsCadastro
                TabOrder = 1
              end
              object DBEditCodigoCartao: TDBEdit
                Left = 483
                Top = 74
                Width = 110
                Height = 21
                DataField = 'NUMERO_CARTEIRINHA'
                DataSource = DsCadastro
                TabOrder = 7
              end
              object DBEditCPF: TDBEdit
                Left = 144
                Top = 114
                Width = 120
                Height = 21
                DataField = 'CPF'
                DataSource = DsCadastro
                TabOrder = 10
                OnExit = DBEditCPFExit
              end
              object DBEdit7: TDBEdit
                Left = 272
                Top = 113
                Width = 84
                Height = 21
                DataField = 'RG'
                DataSource = DsCadastro
                TabOrder = 11
              end
              object DBEdit8: TDBEdit
                Left = 360
                Top = 114
                Width = 81
                Height = 21
                DataField = 'ORGAO_EXPEDIDOR'
                DataSource = DsCadastro
                TabOrder = 12
              end
              object DBRadioGroup2: TDBRadioGroup
                Left = 113
                Top = 64
                Width = 128
                Height = 33
                Caption = 'Status'
                Columns = 2
                DataField = 'STATUS'
                DataSource = DsCadastro
                Items.Strings = (
                  'Ativo'
                  'Inativo')
                TabOrder = 5
                Values.Strings = (
                  'A'
                  'I')
                OnChange = DBRadioGroup2Change
              end
              object DBEdit1: TDBEdit
                Left = 245
                Top = 75
                Width = 236
                Height = 21
                DataField = 'MOTIVO_INATIVO'
                DataSource = DsCadastro
                TabOrder = 6
              end
              object DBRadioGroup1: TDBRadioGroup
                Left = 597
                Top = 56
                Width = 84
                Height = 40
                Caption = 'Sexo'
                DataField = 'SEXO'
                DataSource = DsCadastro
                Items.Strings = (
                  'Masculino'
                  'Feminino')
                TabOrder = 8
                Values.Strings = (
                  'M'
                  'F')
              end
              object PageControl2: TPageControl
                Left = 16
                Top = 307
                Width = 665
                Height = 174
                ActivePage = TabSheet3
                TabOrder = 23
                object TabSheet3: TTabSheet
                  Caption = 'Internos'
                  object Label33: TLabel
                    Left = 8
                    Top = 10
                    Width = 38
                    Height = 13
                    Caption = 'Internos'
                  end
                  object Label4: TLabel
                    Left = 482
                    Top = 11
                    Width = 95
                    Height = 13
                    Caption = 'Grau de Parentesco'
                  end
                  object SpeedButton5: TSpeedButton
                    Left = 613
                    Top = 25
                    Width = 23
                    Height = 22
                    Caption = '...'
                    Flat = True
                    OnClick = SpeedButton5Click
                  end
                  object DBLookupComboBoxInterno: TDBLookupComboBox
                    Left = 8
                    Top = 27
                    Width = 313
                    Height = 21
                    KeyField = 'ID_INTERNO'
                    ListField = 'NOME_INTERNO'
                    ListSource = DM.DsInterno
                    TabOrder = 0
                  end
                  object DBLookupComboBoxParentesco: TDBLookupComboBox
                    Left = 480
                    Top = 26
                    Width = 129
                    Height = 21
                    KeyField = 'ID_GRAU_PARENTESCO'
                    ListField = 'GRAU_PARENTESCO'
                    ListSource = DM.DSGrauParentesco
                    TabOrder = 3
                  end
                  object DBGrid1: TDBGrid
                    Left = 8
                    Top = 50
                    Width = 577
                    Height = 95
                    DataSource = DsVisitanteInterno
                    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                    ReadOnly = True
                    TabOrder = 4
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'Interno(a)'
                        Width = 400
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'Grau de Parentesco'
                        Width = 131
                        Visible = True
                      end>
                  end
                  object BitBtn1: TBitBtn
                    Left = 400
                    Top = 24
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
                  object Button2: TButton
                    Left = 325
                    Top = 27
                    Width = 45
                    Height = 20
                    Caption = 'Busca'
                    TabOrder = 1
                    OnClick = Button2Click
                  end
                  object Button3: TButton
                    Left = 592
                    Top = 62
                    Width = 63
                    Height = 25
                    Caption = 'Remover'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 5
                    OnClick = Button3Click
                  end
                end
                object TabSheet4: TTabSheet
                  Caption = 'Menores'
                  ImageIndex = 1
                  TabVisible = False
                  object DBGrid4: TDBGrid
                    Left = 0
                    Top = 67
                    Width = 657
                    Height = 79
                    Align = alBottom
                    DataSource = DsMenores
                    TabOrder = 1
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'NOME_MENORES'
                        Title.Caption = 'Nome do Menor'
                        Width = 300
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'NUMERO_CERTIDAO_NASCIMENTO'
                        Title.Caption = 'N.Certid'#227'o'
                        Width = 100
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DATA_NASCIMENTO'
                        Title.Caption = 'Data Nascimento'
                        Width = 89
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'Grau Parentesco'
                        Width = 120
                        Visible = True
                      end>
                  end
                  object DBNavigator2: TDBNavigator
                    Left = 8
                    Top = 3
                    Width = 240
                    Height = 25
                    DataSource = DsMenores
                    TabOrder = 0
                  end
                end
              end
              object DBEditEmissaoRG: TDBEdit
                Left = 445
                Top = 114
                Width = 92
                Height = 21
                DataField = 'DATA_EMISSAO_RG'
                DataSource = DsCadastro
                TabOrder = 13
              end
              object Panel2: TPanel
                Left = 552
                Top = 108
                Width = 129
                Height = 121
                BevelOuter = bvLowered
                Caption = 'Foto'
                TabOrder = 24
                object DBImageFOTO: TDBImage
                  Left = 1
                  Top = 1
                  Width = 127
                  Height = 119
                  Align = alClient
                  DataField = 'FOTO'
                  DataSource = DsCadastro
                  Stretch = True
                  TabOrder = 0
                  OnClick = DBImageFOTOClick
                end
              end
              object DBEdit14: TDBEdit
                Left = 15
                Top = 266
                Width = 314
                Height = 21
                DataField = 'MAE'
                DataSource = DsCadastro
                TabOrder = 20
              end
              object DBEdit15: TDBEdit
                Left = 335
                Top = 266
                Width = 346
                Height = 21
                DataField = 'PAI'
                DataSource = DsCadastro
                TabOrder = 21
              end
              object DBEditdtrnascimento: TDBEdit
                Left = 15
                Top = 76
                Width = 90
                Height = 21
                DataField = 'DATA_NASCIMENTO'
                DataSource = DsCadastro
                TabOrder = 4
              end
              object DBRadioGroup4: TDBRadioGroup
                Left = 15
                Top = 176
                Width = 170
                Height = 30
                Caption = 'Certid'#227'o Justi'#231'a Federal'
                Columns = 2
                DataField = 'NEGATIVO_CERTIDAO_FEDERAL'
                DataSource = DsCadastro
                Items.Strings = (
                  'Positivo'
                  'Negativo')
                TabOrder = 15
                Values.Strings = (
                  'Positivo'
                  'Negativo')
              end
              object DBRadioGroup5: TDBRadioGroup
                Left = 191
                Top = 176
                Width = 170
                Height = 30
                Caption = 'Certid'#227'o Justi'#231'a Estadual'
                Columns = 2
                DataField = 'NEGATIVO_CERTIDAO_ESTADUAL'
                DataSource = DsCadastro
                Items.Strings = (
                  'Positivo'
                  'Negativo')
                TabOrder = 16
                Values.Strings = (
                  'Positivo'
                  'Negativo')
              end
              object DBRadioGroup6: TDBRadioGroup
                Left = 367
                Top = 176
                Width = 170
                Height = 30
                Caption = 'Tem comprovante de residencia:'
                Columns = 2
                DataField = 'TEM_COMPROVANTE_RESIDENCIA'
                DataSource = DsCadastro
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 17
                Values.Strings = (
                  'Presencial'
                  'Virtual')
              end
              object DBEdit3: TDBEdit
                Left = 16
                Top = 114
                Width = 121
                Height = 21
                DataField = 'NUMERO_CERTIDAO_NASCIMENTO'
                DataSource = DsCadastro
                TabOrder = 9
              end
              object DBLookupComboBoxIDNATURALIDADE: TDBLookupComboBox
                Left = 16
                Top = 227
                Width = 241
                Height = 21
                DataField = 'ID_NATURALIDADE'
                DataSource = DsCadastro
                KeyField = 'ID_CIDADE'
                ListField = 'CIDADE'
                ListSource = DM.DSCIDADE
                TabOrder = 18
              end
              object DBLookupComboBoxIDNACIONALIDADE: TDBLookupComboBox
                Left = 288
                Top = 227
                Width = 217
                Height = 21
                DataField = 'ID_NACIONALIDADE'
                DataSource = DsCadastro
                KeyField = 'ID_NACIONALIDADE'
                ListField = 'NACIONALIDADE'
                ListSource = DM.DSNACIONALIDADE
                TabOrder = 19
              end
              object DBEdit18: TDBEdit
                Left = 16
                Top = 153
                Width = 520
                Height = 21
                DataField = 'CHAVE_MIGRACAO'
                DataSource = DsCadastro
                TabOrder = 14
              end
              object DBComboBox1: TDBComboBox
                Left = 440
                Top = 24
                Width = 137
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
                  'Proibido(a)'
                  'Suspenso(a)'
                  'Virtual')
                TabOrder = 2
              end
              object DBRadioGroup3: TDBRadioGroup
                Left = 580
                Top = 4
                Width = 101
                Height = 41
                Caption = 'Prefer'#234'ncial'
                Columns = 2
                DataField = 'PREFERENCIAL'
                DataSource = DsCadastro
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 3
              end
              object BitBtn2: TBitBtn
                Left = 512
                Top = 289
                Width = 169
                Height = 35
                Caption = 'Capturar Digital'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                Glyph.Data = {
                  E60C0000424DE60C0000000000003600000028000000260000001C0000000100
                  180000000000B00C0000130B0000130B00000000000000000000CCCCCCCCCCCC
                  CCCCCCCCCCCC000000060606010101D1D1D1000000C1C1C1CDCDCD0303030E0E
                  0ED2D2D2030303030303C7C7C7020202030303CECECE000000000000CDCDCD00
                  0000000000CDCDCD000000000000D6D6D6D2D2D2CCCCCCCCCCCCCCCCCCC1C1C1
                  CCCCCCCDCDCDCCCCCC1919190000CCCCCCCCCCCCCCCCCCBEBEBE040404D1D1D1
                  C3C3C3000000D1D1D1000000141414CACACAD7D7D7D8D8D8000000000000C3C3
                  C3F0F0F0010101CECECE000000000000000000D0D0D0C6C6C6BEBEBE01010108
                  0808000000C8C8C80E0E0ECCCCCCCCCCCCCBCBCBCCCCCCCCCCCCCCCCCCCCCCCC
                  0000CECECECACACAC4C4C4000000C6C6C6000000000000C5C5C5000000070707
                  CFCFCF0A0A0A000000D2D2D2000000000000CBCBCB0D0D0D010101D3D3D30000
                  000A0A0A000000020202020202000000C5C5C5000000030303D8D8D800000008
                  0808CCCCCCC9C9C9CCCCCCCCCCCCCCCCCCCCCCCC0000040404D2D2D2030303CA
                  CACA010101D5D5D5C2C2C20A0A0ACFCFCFC7C7C7010101000000CDCDCDCCCCCC
                  000000000000C4C4C4040404070707C8C8C8CFCFCF060606000000D6D6D6CACA
                  CA000000D5D5D5C6C6C60000000C0C0CCACACA060606CCCCCCD1D1D1CCCCCCCC
                  CCCCCCCCCCCCCCCC0000000000C7C7C70C0C0C010101CCCCCC020202050505C9
                  C9C9000000000000C5C5C5D3D3D3C3C3C3CECECE0B0B0B000000C9C9C9C5C5C5
                  070707000000D4D4D4CCCCCC0C0C0C000000050505CACACA0E0E0E090909C1C1
                  C1000000070707050505000000BFBFBFCCCCCCDCDCDCCCCCCCCCCCCC00000202
                  02CBCBCBCCCCCC0A0A0A020202C9C9C9000000CECECEC7C7C7C8C8C8C6C6C6CA
                  CACA000000000000CACACA000000000000000000D1D1D1CBCBCB050505C8C8C8
                  D0D0D0030303CDCDCD000000020202BDBDBDC3C3C30B0B0BCECECECBCBCB0000
                  00C9C9C9CCCCCCD3D3D3CCCCCCCCCCCC00000B0B0B000000C9C9C9CECECE0000
                  00C7C7C7000000CDCDCD090909D5D5D5BFBFBFCCCCCC090909020202050505D2
                  D2D2CFCFCF0202020202020A0A0AD3D3D3000000030303CECECE000000010101
                  CFCFCFCACACA000000070707C7C7C7CCCCCC060606020202D4D4D4CCCCCCCCCC
                  CCCCCCCC0000DADADA000000090909D3D3D3000000D0D0D0000000D0D0D00000
                  000303030B0B0BC7C7C7DBDBDBCDCDCD070707C2C2C2000000C8C8C8D3D3D30C
                  0C0C080808C9C9C9181818010101C9C9C9C3C3C3030303030303000000CFCFCF
                  C9C9C90202020A0A0AD2D2D2C7C7C7D0D0D0CCCCCCCCCCCC0000CFCFCF010101
                  000000CBCBCB000000C8C8C8000000CCCCCC000000020202D1D1D1CACACAC9C9
                  C9C8C8C8C9C9C9040404C0C0C0D0D0D00F0F0FC5C5C5CFCFCF0D0D0D030303C1
                  C1C10C0C0C000000D7D7D7090909C7C7C7C5C5C5000000CFCFCF0C0C0C000000
                  D1D1D1DCDCDCC9C9C9CCCCCC0000000000C7C7C7000000D0D0D0CBCBCBCBCBCB
                  060606DDDDDD040404010101CFCFCFC9C9C9CACACA040404C2C2C20C0C0CD8D8
                  D8C7C7C70000000505050A0A0ACDCDCDD0D0D0000000040404D7D7D7000000CA
                  CACAC0C0C0000000D1D1D1000000C2C2C2D5D5D5CBCBCB000000CCCCCCCCCCCC
                  0000000000CACACA000000C8C8C8BFBFBFC8C8C80D0D0DD2D2D2C9C9C9030303
                  020202010101000000000000BDBDBD000000BDBDBDCBCBCB0B0B0B000000D5D5
                  D5C9C9C9030303060606D3D3D3000000040404CACACA000000010101C9C9C907
                  0707D0D0D00000000C0C0C0D0D0DCCCCCCCCCCCC0000D2D2D2000000BFBFBF05
                  0505D1D1D1030303D6D6D60D0D0D131313D1D1D1D7D7D70C0C0C020202030303
                  C5C5C5000000CBCBCBD0D0D0020202050505C5C5C50D0D0D000000D3D3D3BCBC
                  BC171717D3D3D3000000000000CFCFCFC5C5C5010101E0E0E0020202D4D4D4BE
                  BEBE0A0A0ACCCCCC0000CCCCCC000000C7C7C7020202CECECE000000CACACA15
                  15150C0C0CD0D0D00505050303030D0D0DC8C8C8000000090909CECECECACACA
                  000000C4C4C4080808BFBFBF040404CFCFCF050505BFBFBFD3D3D3090909C4C4
                  C4D2D2D2010101C8C8C8070707C6C6C6000000040404D8D8D8CCCCCC0000CCCC
                  CC000000CACACA020202CFCFCF000000C9C9C9060606050505C2C2C207070700
                  0000010101000000BCBCBCCCCCCC000000CCCCCC000000CECECE060606CACACA
                  050505C9C9C9050505D2D2D2000000C8C8C8040404CFCFCF000000CCCCCC0A0A
                  0A000000CFCFCFD1D1D1CCCCCCCFCFCF0000000000C7C7C7B8B8B80E0E0ED1D1
                  D1030303CBCBCB0000000C0C0CD7D7D7C9C9C9020202000000000000CCCCCCCA
                  CACA000000D3D3D3010101BDBDBD000000CACACA0B0B0BBEBEBE000000D6D6D6
                  C3C3C3151515CACACA050505C8C8C8000000C4C4C4000000C8C8C8C7C7C70F0F
                  0FD1D1D10000141414CDCDCD000000CCCCCCC9C9C9000000D3D3D30000000000
                  00050505C6C6C6D1D1D1CCCCCCCDCDCD000000CACACAD1D1D1C5C5C5050505BF
                  BFBF000000D0D0D0000000CBCBCB000000050505D2D2D2060606C9C9C9000000
                  C6C6C60C0C0C020202000000C7C7C7020202CDCDCDCCCCCC0000D3D3D3CBCBCB
                  030303CACACACACACA010101050505D1D1D1CACACAC6C6C6CBCBCBCECECECECE
                  CE030303CACACA010101C8C8C8000000C9C9C9000000D1D1D10909090A0A0ACE
                  CECE000000CDCDCDCBCBCBC2C2C2C7C7C7020202CFCFCF070707C9C9C9000000
                  CFCFCF0606060B0B0BCCCCCC0000C6C6C6010101D7D7D7D6D6D6000000020202
                  010101000000CCCCCCCDCDCDCECECE070707060606101010CCCCCCC7C7C70000
                  00000000CACACA000000D5D5D50000000C0C0CCECECE000000C9C9C9C1C1C109
                  0909CECECE000000CECECECACACA000000CDCDCD030303CFCFCF040404CCCCCC
                  0000C2C2C2000000060606CCCCCC090909020202010101030303010101000000
                  010101C8C8C8D1D1D1CBCBCB000000010101CDCDCD050505D1D1D1CACACA0505
                  05C5C5C5D0D0D0D1D1D1000000CACACACCCCCC000000C7C7C7000000CDCDCDCC
                  CCCC000000CDCDCD000000D0D0D0CECECECDCDCD0000000000030303000000B7
                  B7B7CECECECDCDCDCDCDCDCDCDCDCDCDCDD2D2D2CFCFCF070707000000C5C5C5
                  020202C9C9C9000000070707CECECE000000080808C4C4C40A0A0ACDCDCD0000
                  00070707D0D0D0010101C8C8C8C8C8C8010101CCCCCC000000CDCDCD0000000A
                  0A0ACCCCCCCCCCCC0000000000000000000000000000CCCCCCCBCBCBCCCCCCCC
                  CCCCCECECE000000000000020202D2D2D2C4C4C40B0B0B0B0B0B000000CACACA
                  CACACA010101CBCBCBC6C6C6020202CBCBCBCFCFCF000000CACACAD0D0D00000
                  00D1D1D1000000010101CECECE000000D3D3D3CACACACCCCCCCCCCCC00000202
                  02000000020202000000000000010101030303010101000000030303C1C1C1C6
                  C6C6C2C2C2131313000000090909CBCBCBC9C9C9000000000000C7C7C7CDCDCD
                  000000C1C1C1C6C6C60000000C0C0CD2D2D2000000CBCBCB000000030303CCCC
                  CC040404CCCCCCCCCCCCCCCCCCCCCCCC0000C3C3C30707070000000505050000
                  00010101010101000000CBCBCBCBCBCBC6C6C6CACACABABABA040404000000C5
                  C5C5CCCCCCCACACA000000121212C8C8C8C3C3C3040404030303CECECEC2C2C2
                  060606C9C9C9020202D0D0D0C4C4C4000000D2D2D2CBCBCBCCCCCCCCCCCCCCCC
                  CCCCCCCC0000CCCCCC070707000000CBCBCBC9C9C9CCCCCCCECECECDCDCDC3C3
                  C3CDCDCDCDCDCD0D0D0D0000000A0A0AC2C2C2C5C5C5BCBCBC03030300000000
                  0000CBCBCBD1D1D1020202020202CBCBCBBCBCBC080808D3D3D30A0A0A000000
                  D4D4D4000000D9D9D9CCCCCCCCCCCCCCCCCCCCCCCCCCCCCC0000CCCCCCCCCCCC
                  D4D4D4C3C3C30F0F0F000000CCCCCCC6C6C6CFCFCFCBCBCBD8D8D80000000000
                  000C0C0CC3C3C3CDCDCD111111000000C5C5C5BFBFBF080808CCCCCCCACACA00
                  0000070707CACACA0303030A0A0ACECECE030303CBCBCBCFCFCFCCCCCCCCCCCC
                  CCCCCCCCCCCCCCCCCCCCCCCC0000CCCCCCCCCCCCCCCCCCCCCCCCCECECEC7C7C7
                  000000000000000000BABABAC5C5C5D5D5D5010101000000B8B8B8D0D0D0CDCD
                  CD000000050505CCCCCC010101CBCBCB0C0C0CDCDCDC010101C0C0C0D4D4D405
                  0505090909CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                  0000CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCFCFCF070707C4C4C4141414
                  010101BBBBBBCACACA000000000000010101D9D9D9CFCFCFC0C0C0CFCFCF0909
                  09D0D0D0000000000000010101242424C0C0C0C4C4C4CCCCCCCCCCCCCCCCCCCC
                  CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC0000CCCCCCCCCCCCCCCCCCCC
                  CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDCDCDD0D0D0
                  090909CDCDCDCACACACCCCCCD2D2D2CACACAD3D3D3D1D1D1CCCCCCCCCCCCCCCC
                  CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
                  CCCCCCCCCCCCCCCC0000}
                ParentFont = False
                TabOrder = 22
                OnClick = BitBtn2Click
              end
            end
            object TabSheet2: TTabSheet
              Caption = 'Dados Gerais'
              ImageIndex = 1
              object Label28: TLabel
                Left = 176
                Top = 8
                Width = 46
                Height = 13
                Caption = 'Endere'#231'o'
                FocusControl = DBEdit10
              end
              object Label29: TLabel
                Left = 16
                Top = 48
                Width = 12
                Height = 13
                Caption = 'N'#186
                FocusControl = DBEdit11
              end
              object Label31: TLabel
                Left = 16
                Top = 96
                Width = 64
                Height = 13
                Caption = 'Complemento'
                FocusControl = DBEdit13
              end
              object Label32: TLabel
                Left = 496
                Top = 96
                Width = 21
                Height = 13
                Caption = 'CEP'
                FocusControl = DBEditcep
              end
              object SpeedButton11: TSpeedButton
                Left = 462
                Top = 156
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
                Left = 496
                Top = 142
                Width = 42
                Height = 13
                Caption = 'Telefone'
                FocusControl = DBEditfone
              end
              object Label14: TLabel
                Left = 16
                Top = 142
                Width = 33
                Height = 13
                Caption = 'Cidade'
              end
              object Label35: TLabel
                Left = 16
                Top = 188
                Width = 37
                Height = 13
                Caption = 'Contato'
                FocusControl = DBEdit17
              end
              object Label30: TLabel
                Left = 80
                Top = 48
                Width = 27
                Height = 13
                Caption = 'Bairro'
                FocusControl = DBEdit12
              end
              object Label13: TLabel
                Left = 16
                Top = 311
                Width = 338
                Height = 13
                Caption = 
                  'Certid'#245'es de antecedentes criminais: (Justi'#231'a Estadual /Justi'#231'a ' +
                  'Federal)'
                FocusControl = DBEdit9
              end
              object Label11: TLabel
                Left = 16
                Top = 271
                Width = 468
                Height = 13
                Caption = 
                  'Quais as documentos apresentados:(Certid'#227'o Casamento/ Uni'#227'o Esta' +
                  'vel/ Certid'#227'o de Nascimento)'
                FocusControl = DBEdit6
              end
              object Label10: TLabel
                Left = 16
                Top = 231
                Width = 338
                Height = 13
                Caption = 
                  'Quais os comprovantes de residencia: (Conta de Agua / Luz/ Telef' +
                  'one)'
                FocusControl = DBEdit4
              end
              object Label17: TLabel
                Left = 16
                Top = 8
                Width = 75
                Height = 13
                Caption = 'T'#237'tulo de Eleitor'
                FocusControl = DBEdit16
              end
              object Label23: TLabel
                Left = 16
                Top = 351
                Width = 22
                Height = 13
                Caption = 'OBS'
              end
              object DBEdit11: TDBEdit
                Left = 16
                Top = 64
                Width = 57
                Height = 21
                DataField = 'NUMERO'
                DataSource = DsCadastro
                TabOrder = 2
              end
              object DBEdit12: TDBEdit
                Left = 80
                Top = 64
                Width = 537
                Height = 21
                DataField = 'BAIRRO'
                DataSource = DsCadastro
                TabOrder = 3
              end
              object DBEdit10: TDBEdit
                Left = 176
                Top = 24
                Width = 440
                Height = 21
                DataField = 'ENDERECO'
                DataSource = DsCadastro
                TabOrder = 1
              end
              object DBEdit13: TDBEdit
                Left = 16
                Top = 112
                Width = 465
                Height = 21
                DataField = 'COMPLEMENETO'
                DataSource = DsCadastro
                TabOrder = 4
              end
              object DBEditcep: TDBEdit
                Left = 496
                Top = 112
                Width = 121
                Height = 21
                DataField = 'CEP'
                DataSource = DsCadastro
                TabOrder = 5
              end
              object DBEditfone: TDBEdit
                Left = 496
                Top = 158
                Width = 121
                Height = 21
                DataField = 'FONE'
                DataSource = DsCadastro
                TabOrder = 7
              end
              object DBLookupComboBoxIDCIDADE: TDBLookupComboBox
                Left = 16
                Top = 158
                Width = 441
                Height = 21
                DataField = 'IDCIDADE'
                DataSource = DsCadastro
                KeyField = 'ID_CIDADE'
                ListField = 'CIDADE'
                ListSource = DM.DSCIDADE
                TabOrder = 6
              end
              object DBEdit17: TDBEdit
                Left = 16
                Top = 204
                Width = 601
                Height = 21
                DataField = 'CONTATO'
                DataSource = DsCadastro
                TabOrder = 8
              end
              object DBEdit9: TDBEdit
                Left = 16
                Top = 327
                Width = 602
                Height = 21
                DataField = 'CERTIDAO_ANTECEDENTE_CRIMINAL'
                DataSource = DsCadastro
                TabOrder = 11
              end
              object DBEdit6: TDBEdit
                Left = 16
                Top = 287
                Width = 602
                Height = 21
                DataField = 'CERTIDAO'
                DataSource = DsCadastro
                TabOrder = 10
              end
              object DBEdit4: TDBEdit
                Left = 16
                Top = 247
                Width = 602
                Height = 21
                DataField = 'COMPROVANTE_RESIDENCIA'
                DataSource = DsCadastro
                TabOrder = 9
              end
              object DBEdit16: TDBEdit
                Left = 16
                Top = 24
                Width = 154
                Height = 21
                DataField = 'titulo_eleitor'
                DataSource = DsCadastro
                TabOrder = 0
              end
              object DBMemo1: TDBMemo
                Left = 16
                Top = 368
                Width = 601
                Height = 73
                DataField = 'OBS'
                DataSource = DsCadastro
                TabOrder = 12
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        ExplicitWidth = 809
        inherited PanelLocalizaConsulta: TPanel
          Width = 813
          Height = 77
          ExplicitHeight = 77
          inherited EditLocalizar: TEdit
            Top = 43
            Width = 433
            Height = 25
            TabOrder = 2
            OnKeyPress = EditLocalizarKeyPress
            ExplicitTop = 43
            ExplicitWidth = 433
            ExplicitHeight = 25
          end
          object Button1: TButton
            Left = 584
            Top = 14
            Width = 75
            Height = 25
            Caption = 'Filtrar'
            TabOrder = 1
            Visible = False
            OnClick = Button1Click
          end
          object RadioGroupTipoLocalizar: TRadioGroup
            Left = 54
            Top = 6
            Width = 283
            Height = 34
            Columns = 4
            ItemIndex = 2
            Items.Strings = (
              'Cart'#227'o'
              'Visitante'
              'Interno'
              'Prontu'#225'rio')
            TabOrder = 0
            OnClick = RadioGroupTipoLocalizarClick
          end
          object BtnBuscar: TButton
            Left = 498
            Top = 43
            Width = 100
            Height = 25
            Caption = 'F5 - Buscar'
            TabOrder = 3
            OnClick = BtnBuscarClick
          end
        end
        inherited PanelConsulta: TPanel
          Top = 77
          Width = 813
          Height = 428
          ExplicitTop = 77
          ExplicitHeight = 428
          inherited DBGridConsulta: TDBGrid
            Width = 811
            Height = 426
            DataSource = DsConsulta
            PopupMenu = PopupMenuVisitante
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
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SIGLA'
                Title.Caption = 'Sigla'
                Width = 35
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
                FieldName = 'localizacao'
                Title.Caption = 'Localiza'#231#227'o'
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
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 932
  end
  inherited StatusBar1: TStatusBar
    Top = 564
    Width = 932
    ExplicitTop = 565
    ExplicitWidth = 936
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT  * '
      'FROM VISITANTE'
      'WHERE ID_visitante = :ID_visitante')
    Left = 536
    Top = 8
    ParamData = <
      item
        Name = 'ID_visitante'
        DataType = ftInteger
        ParamType = ptInput
        Value = -1
      end>
  end
  inherited DspCadastro: TDataSetProvider
    Left = 564
    Top = 8
  end
  inherited CdsCadastro: TClientDataSet
    IndexFieldNames = 'ID_VISITANTE'
    MasterFields = 'ID_VISITANTE'
    MasterSource = DsConsulta
    PacketRecords = 0
    Left = 592
    Top = 8
  end
  inherited DsCadastro: TDataSource
    Left = 620
    Top = 8
  end
  object SqlVisitanteInternoold: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_visitante'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'select *'
      'from visitante_interno'
      'where id_visitante=:id_visitante')
    SQLConnection = DM.SQLConnect
    Left = 232
    Top = 272
  end
  object DspVisitanteInterno: TDataSetProvider
    DataSet = SqlVisitanteInterno
    Left = 180
  end
  object CdsVisitanteInterno: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_VISITANTE'
    MasterFields = 'ID_VISITANTE'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspVisitanteInterno'
    Left = 208
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
    object CdsVisitanteInternoInternoa: TStringField
      FieldKind = fkLookup
      FieldName = 'Interno(a)'
      LookupDataSet = CdsInterno
      LookupKeyFields = 'ID_INTERNO'
      LookupResultField = 'NOME_INTERNO'
      KeyFields = 'ID_INTERNO'
      Size = 50
      Lookup = True
    end
    object CdsVisitanteInternoGraudeParentesco: TStringField
      FieldKind = fkLookup
      FieldName = 'Grau de Parentesco'
      LookupDataSet = DM.CdsGrauParentesco
      LookupKeyFields = 'ID_GRAU_PARENTESCO'
      LookupResultField = 'GRAU_PARENTESCO'
      KeyFields = 'ID_GRAU_PARENTESCO'
      Size = 30
      Lookup = True
    end
  end
  object DsVisitanteInterno: TDataSource
    DataSet = CdsVisitanteInterno
    Left = 236
  end
  object OpenDialogFOTO: TOpenDialog
    Filter = 'Imagens (*.jpg)|*.jpg'
    Left = 912
    Top = 9
  end
  object SqlMenoresold: TSQLQuery
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
    Left = 752
    Top = 296
  end
  object DspMenores: TDataSetProvider
    DataSet = SqlMenores
    Left = 668
    Top = 32
  end
  object CdsMenores: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_VISITANTE'
    MasterFields = 'ID_VISITANTE'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspMenores'
    AfterInsert = CdsMenoresAfterInsert
    Left = 696
    Top = 32
    object CdsMenoresID_MENORES: TIntegerField
      FieldName = 'ID_MENORES'
      Required = True
    end
    object CdsMenoresNOME_MENORES: TStringField
      FieldName = 'NOME_MENORES'
      Size = 50
    end
    object CdsMenoresID_VISITANTE: TIntegerField
      FieldName = 'ID_VISITANTE'
    end
    object CdsMenoresNUMERO_CERTIDAO_NASCIMENTO: TStringField
      FieldName = 'NUMERO_CERTIDAO_NASCIMENTO'
      Size = 100
    end
    object CdsMenoresDATA_NASCIMENTO: TSQLTimeStampField
      FieldName = 'DATA_NASCIMENTO'
    end
    object CdsMenoresID_GRAU_PARENTESCO: TIntegerField
      FieldName = 'ID_GRAU_PARENTESCO'
    end
    object CdsMenoresGrauParentesco: TStringField
      FieldKind = fkLookup
      FieldName = 'Grau Parentesco'
      LookupDataSet = DM.CdsGrauParentesco
      LookupKeyFields = 'ID_GRAU_PARENTESCO'
      LookupResultField = 'GRAU_PARENTESCO'
      KeyFields = 'ID_GRAU_PARENTESCO'
      Size = 50
      Lookup = True
    end
  end
  object DsMenores: TDataSource
    DataSet = CdsMenores
    Left = 724
    Top = 32
  end
  object SqlConsultaold: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'ta no fonte')
    SQLConnection = DM.SQLConnect
    Left = 384
    Top = 288
  end
  object Dspconsulta: TDataSetProvider
    DataSet = SqlConsulta
    Left = 396
  end
  object CdsConsulta: TClientDataSet
    Aggregates = <>
    PacketRecords = 50
    Params = <>
    ProviderName = 'Dspconsulta'
    Left = 424
  end
  object DsConsulta: TDataSource
    DataSet = CdsConsulta
    Left = 452
  end
  object SqlSelectvisitanteold: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT FIRST 20'
      'V.ID_VISITANTE,'
      'V.VISITANTE,'
      'V.CPF,'
      'V.RG,'
      'V.MAE'
      'FROM VISITANTE V')
    SQLConnection = DM.SQLConnect
    Left = 160
    Top = 508
  end
  object SqlInternoold: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT id_interno, nome_interno, rgi'
      'FROM INTERNO'
      'WHERE coalesce(nome_interno,'#39#39')<>'#39#39
      'ORDER BY NOME_INTERNO')
    SQLConnection = DM.SQLConnect
    Left = 160
    Top = 440
  end
  object DspInterno: TDataSetProvider
    DataSet = SqlInterno
    Left = 36
    Top = 328
  end
  object CdsInterno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspInterno'
    Left = 64
    Top = 328
  end
  object DsInterno: TDataSource
    DataSet = CdsInterno
    Left = 92
    Top = 328
  end
  object SqlTodosInternoold: TSQLQuery
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
      'I.ST,'
      'V.status,'
      'U.SIGLA,'
      'I.ID_UP,'
      'GA.galeria || '#39' - '#39' || S.solario ||'#39' - '#39'|| C.cela AS localizacao'
      'FROM INTERNO I'
      'LEFT JOIN UNIDADE_PENAL U ON (U.ID_UP=I.ID_UP)'
      'LEFT JOIN VISITANTE_INTERNO VI ON (VI.ID_INTERNO=I.ID_INTERNO)'
      
        'LEFT JOIN GRAU_PARENTESCO G ON (VI.ID_GRAU_PARENTESCO=G.ID_GRAU_' +
        'PARENTESCO)'
      'LEFT JOIN VISITANTE V ON (V.ID_VISITANTE=VI.ID_VISITANTE)'
      'INNER JOIN pavilhao P ON (P.id_pavilhao=I.idpavilhao)'
      'INNER JOIN GALERIA GA ON (GA.id_galeria=I.idgaleria)'
      'INNER JOIN SOLARIO S ON (S.id_solario=I.idsolario)'
      'INNER JOIN CELA C ON (C.id_cela=I.idcela)')
    Left = 632
    Top = 292
  end
  object SqlTodosVisitantesold: TSQLQuery
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
      'I.NOME_INTERNO,'
      'I.RGI,'
      'I.ST,'
      'U.SIGLA,'
      'I.ID_UP,'
      'GA.galeria || '#39' - '#39' || S.solario ||'#39' - '#39'|| C.cela AS localizacao'
      'FROM VISITANTE V'
      
        'LEFT JOIN VISITANTE_INTERNO VI ON (V.ID_VISITANTE=VI.ID_VISITANT' +
        'E)'
      
        'LEFT JOIN GRAU_PARENTESCO G ON (VI.ID_GRAU_PARENTESCO=G.ID_GRAU_' +
        'PARENTESCO)'
      'LEFT JOIN INTERNO I ON (VI.ID_INTERNO=I.ID_INTERNO)'
      'LEFT JOIN UNIDADE_PENAL U ON (U.ID_UP=I.ID_UP)'
      'LEFT JOIN pavilhao P ON (P.id_pavilhao=I.idpavilhao)'
      'LEFT JOIN GALERIA GA ON (GA.id_galeria=I.idgaleria)'
      'LEFT JOIN SOLARIO S ON (S.id_solario=I.idsolario)'
      'LEFT JOIN CELA C ON (C.id_cela=I.idcela)')
    Left = 848
    Top = 300
  end
  object PopupMenuVisitante: TPopupMenu
    Left = 519
    Top = 213
    object CarteiradeVisitante1: TMenuItem
      Caption = 'Carteira de Visitante'
      OnClick = CarteiradeVisitante1Click
    end
  end
  object Dsconspadrao: TDataSource
    DataSet = Cdsconspadrao
    OnDataChange = DsCadastroDataChange
    Left = 844
  end
  object Cdsconspadrao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dspconspadrao'
    Left = 816
  end
  object Dspconspadrao: TDataSetProvider
    DataSet = SQLconspadrao
    Left = 788
  end
  object SQLconspadraoold: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnect
    Left = 528
    Top = 288
  end
  object SQLconspadrao: TFDQuery
    Connection = DM.SQLConnect
    Left = 527
    Top = 341
  end
  object SqlVisitanteInterno: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select *'
      'from visitante_interno'
      'where id_visitante=:id_visitante'
      '')
    Left = 239
    Top = 365
    ParamData = <
      item
        Name = 'ID_VISITANTE'
        ParamType = ptInput
      end>
  end
  object SqlConsulta: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'ta no fonte'
      '')
    Left = 391
    Top = 365
  end
  object SqlTodosInterno: TFDQuery
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
      'I.ST,'
      'V.status,'
      'U.SIGLA,'
      'I.ID_UP,'
      'GA.galeria || '#39' - '#39' || S.solario ||'#39' - '#39'|| C.cela AS localizacao'
      'FROM INTERNO I'
      'LEFT JOIN UNIDADE_PENAL U ON (U.ID_UP=I.ID_UP)'
      'LEFT JOIN VISITANTE_INTERNO VI ON (VI.ID_INTERNO=I.ID_INTERNO)'
      
        'LEFT JOIN GRAU_PARENTESCO G ON (VI.ID_GRAU_PARENTESCO=G.ID_GRAU_' +
        'PARENTESCO)'
      'LEFT JOIN VISITANTE V ON (V.ID_VISITANTE=VI.ID_VISITANTE)'
      'INNER JOIN pavilhao P ON (P.id_pavilhao=I.idpavilhao)'
      'INNER JOIN GALERIA GA ON (GA.id_galeria=I.idgaleria)'
      'INNER JOIN SOLARIO S ON (S.id_solario=I.idsolario)'
      'INNER JOIN CELA C ON (C.id_cela=I.idcela)'
      '')
    Left = 639
    Top = 373
  end
  object SqlMenores: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT * '
      'FROM menores'
      'where id_visitante=:id_visitante'
      '')
    Left = 759
    Top = 381
    ParamData = <
      item
        Name = 'ID_VISITANTE'
        ParamType = ptInput
      end>
  end
  object SqlTodosVisitantes: TFDQuery
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
      'I.NOME_INTERNO,'
      'I.RGI,'
      'I.ST,'
      'U.SIGLA,'
      'I.ID_UP,'
      'GA.galeria || '#39' - '#39' || S.solario ||'#39' - '#39'|| C.cela AS localizacao'
      'FROM VISITANTE V'
      
        'LEFT JOIN VISITANTE_INTERNO VI ON (V.ID_VISITANTE=VI.ID_VISITANT' +
        'E)'
      
        'LEFT JOIN GRAU_PARENTESCO G ON (VI.ID_GRAU_PARENTESCO=G.ID_GRAU_' +
        'PARENTESCO)'
      'LEFT JOIN INTERNO I ON (VI.ID_INTERNO=I.ID_INTERNO)'
      'LEFT JOIN UNIDADE_PENAL U ON (U.ID_UP=I.ID_UP)'
      'LEFT JOIN pavilhao P ON (P.id_pavilhao=I.idpavilhao)'
      'LEFT JOIN GALERIA GA ON (GA.id_galeria=I.idgaleria)'
      'LEFT JOIN SOLARIO S ON (S.id_solario=I.idsolario)'
      'LEFT JOIN CELA C ON (C.id_cela=I.idcela)'
      '')
    Left = 855
    Top = 389
  end
  object SqlInterno: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT id_interno, nome_interno, rgi'
      'FROM INTERNO'
      'WHERE coalesce(nome_interno,'#39#39')<>'#39#39
      'ORDER BY NOME_INTERNO'
      '')
    Left = 255
    Top = 445
  end
  object SqlSelectvisitante: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT FIRST 20'
      'V.ID_VISITANTE,'
      'V.VISITANTE,'
      'V.CPF,'
      'V.RG,'
      'V.MAE'
      'FROM VISITANTE V'
      '')
    Left = 287
    Top = 517
  end
end
