inherited FrmCadastroInternos: TFrmCadastroInternos
  Left = 61
  Top = 89
  Width = 824
  Height = 624
  Caption = 'Cadastro de Internos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 508
    inherited ToolBarModeloCadastro: TToolBar
      Height = 489
      inherited Excluir: TToolButton
        Visible = False
      end
    end
    inherited DBNavigator1: TDBNavigator
      Top = 489
      DataSource = DsConsulta
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 715
    Height = 508
    inherited PageControlModeloCadastro: TPageControl
      Width = 715
      Height = 508
      ActivePage = TabSheetCadastro
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 707
          Height = 480
          object SpeedButton3: TSpeedButton
            Left = 288
            Top = 136
            Width = 23
            Height = 22
          end
          object SpeedButton10: TSpeedButton
            Left = 224
            Top = 16
            Width = 23
            Height = 22
          end
          object PageControl1: TPageControl
            Left = 1
            Top = 1
            Width = 705
            Height = 478
            ActivePage = TabSheet8
            Align = alClient
            TabOrder = 0
            TabWidth = 80
            object TabSheet1: TTabSheet
              Caption = 'Principal'
              object Label2: TLabel
                Left = 149
                Top = 9
                Width = 11
                Height = 13
                Caption = 'ID'
                FocusControl = DBEditCodigo
              end
              object Label3: TLabel
                Left = 198
                Top = 9
                Width = 49
                Height = 13
                Caption = 'INTERNO'
                FocusControl = DBEdit2
              end
              object Label4: TLabel
                Left = 585
                Top = 9
                Width = 19
                Height = 13
                Caption = 'RGI'
                FocusControl = DBEdit3
              end
              object Label10: TLabel
                Left = 150
                Top = 98
                Width = 84
                Height = 13
                Caption = 'DATA ENTRADA'
              end
              object Label12: TLabel
                Left = 69
                Top = 267
                Width = 77
                Height = 13
                Caption = 'PROCED'#202'NCIA'
              end
              object Label40: TLabel
                Left = 263
                Top = 98
                Width = 72
                Height = 13
                Caption = 'DATA PRIS'#195'O'
                FocusControl = DBEdit20
              end
              object Label18: TLabel
                Left = 10
                Top = 267
                Width = 11
                Height = 13
                Caption = 'ID'
              end
              object SpeedButton1: TSpeedButton
                Left = 338
                Top = 283
                Width = 23
                Height = 22
                Hint = 'Cadastrar Procedencia'
                Caption = '...'
                Flat = True
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton1Click
              end
              object Label44: TLabel
                Left = 367
                Top = 269
                Width = 11
                Height = 13
                Caption = 'ID'
                FocusControl = DBEdit6
              end
              object Label45: TLabel
                Left = 426
                Top = 269
                Width = 96
                Height = 13
                Caption = 'Condi'#231#227'o do Interno'
              end
              object Label43: TLabel
                Left = 7
                Top = 226
                Width = 11
                Height = 13
                Caption = 'ID'
                FocusControl = DBEdit7
              end
              object Label46: TLabel
                Left = 66
                Top = 226
                Width = 70
                Height = 13
                Caption = 'Unidade Penal'
              end
              object SpeedButton2: TSpeedButton
                Left = 660
                Top = 283
                Width = 23
                Height = 22
                Hint = 'Cadastrar Procedencia'
                Caption = '...'
                Flat = True
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton2Click
              end
              object Label27: TLabel
                Left = 149
                Top = 53
                Width = 74
                Height = 13
                Caption = 'OUTRO NOME'
                FocusControl = DBEdit24
              end
              object Label36: TLabel
                Left = 512
                Top = 53
                Width = 37
                Height = 13
                Caption = 'VULGO'
                FocusControl = DBEdit25
              end
              object Label55: TLabel
                Left = 382
                Top = 98
                Width = 84
                Height = 13
                Caption = 'CI/OF ENTRADA'
                FocusControl = DBEdit29
              end
              object Label65: TLabel
                Left = 8
                Top = 144
                Width = 73
                Height = 13
                Caption = 'NOME SOCIAL'
                FocusControl = DBEdit35
              end
              object Label66: TLabel
                Left = 8
                Top = 185
                Width = 115
                Height = 13
                Caption = 'ORIENTA'#199#195'O SEXUAL'
              end
              object Label67: TLabel
                Left = 264
                Top = 184
                Width = 115
                Height = 13
                Caption = 'IDENTIDADE G'#202'NERO'
              end
              object DBEditCodigo: TDBEdit
                Left = 149
                Top = 25
                Width = 44
                Height = 21
                DataField = 'ID_INTERNO'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 0
              end
              object DBEdit2: TDBEdit
                Left = 196
                Top = 25
                Width = 381
                Height = 21
                CharCase = ecUpperCase
                DataField = 'NOME_INTERNO'
                DataSource = DsCadastro
                TabOrder = 1
              end
              object DBEdit3: TDBEdit
                Left = 585
                Top = 25
                Width = 100
                Height = 21
                DataField = 'RGI'
                DataSource = DsCadastro
                TabOrder = 2
              end
              object DBEditID_PROCEDENCIA: TDBEdit
                Left = 7
                Top = 283
                Width = 52
                Height = 21
                DataField = 'ID_PROCEDENCIA'
                DataSource = DsCadastro
                TabOrder = 12
              end
              object DBEdit4: TDBEdit
                Left = 150
                Top = 114
                Width = 107
                Height = 21
                DataField = 'DATA_ENTRADA'
                DataSource = DsCadastro
                TabOrder = 5
              end
              object DBLookupComboBoxID_PROCEDENCIA: TDBLookupComboBox
                Left = 66
                Top = 283
                Width = 265
                Height = 21
                DataField = 'ID_PROCEDENCIA'
                DataSource = DsCadastro
                KeyField = 'ID_PROCEDENCIA'
                ListField = 'PROCEDENCIA'
                ListSource = DM.DsProcedencia
                TabOrder = 13
              end
              object DBEdit20: TDBEdit
                Left = 263
                Top = 114
                Width = 106
                Height = 21
                DataField = 'DATA_PRISAO'
                DataSource = DsCadastro
                TabOrder = 6
              end
              object DBRadioGroup1: TDBRadioGroup
                Left = 572
                Top = 95
                Width = 113
                Height = 40
                Caption = 'Status'
                Columns = 2
                DataField = 'ST'
                DataSource = DsCadastro
                Items.Strings = (
                  'Ativo'
                  'Inativo')
                TabOrder = 9
                Values.Strings = (
                  'A'
                  'I')
              end
              object DBRadioGroup2: TDBRadioGroup
                Left = 482
                Top = 184
                Width = 146
                Height = 40
                Caption = 'Sexo'
                Columns = 2
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
              object DBEdit6: TDBEdit
                Left = 367
                Top = 285
                Width = 52
                Height = 21
                DataField = 'IDCONDICAO_INTERNO'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 14
              end
              object DBLookupComboBox1: TDBLookupComboBox
                Left = 426
                Top = 285
                Width = 231
                Height = 21
                DataField = 'IDCONDICAO_INTERNO'
                DataSource = DsCadastro
                KeyField = 'IDCONDICAO_INTERNO'
                ListField = 'DESCRICAO'
                ListSource = DM.DsCondicaoInterno
                TabOrder = 15
              end
              object DBEdit7: TDBEdit
                Left = 7
                Top = 242
                Width = 52
                Height = 21
                DataField = 'ID_UP'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 10
              end
              object DBLookupComboBox2: TDBLookupComboBox
                Left = 66
                Top = 242
                Width = 615
                Height = 21
                DataField = 'ID_UP'
                DataSource = DsCadastro
                Enabled = False
                KeyField = 'ID_UP'
                ListField = 'SIGLA'
                ListSource = DM.DsUP
                TabOrder = 11
              end
              object DBImageFOTOInterno: TDBImage
                Left = 10
                Top = 13
                Width = 127
                Height = 127
                DataField = 'FOTO'
                DataSource = DsCadastro
                Stretch = True
                TabOrder = 16
                OnClick = DBImageFOTOInternoClick
              end
              object DBEdit24: TDBEdit
                Left = 149
                Top = 69
                Width = 356
                Height = 21
                DataField = 'OUTRO_NOME'
                DataSource = DsCadastro
                TabOrder = 3
              end
              object DBEdit25: TDBEdit
                Left = 512
                Top = 69
                Width = 171
                Height = 21
                DataField = 'VULGO'
                DataSource = DsCadastro
                TabOrder = 4
              end
              object DBEdit29: TDBEdit
                Left = 382
                Top = 114
                Width = 171
                Height = 21
                DataField = 'CI'
                DataSource = DsCadastro
                TabOrder = 7
              end
              object DBEdit35: TDBEdit
                Left = 8
                Top = 160
                Width = 665
                Height = 21
                DataField = 'NOME_SOCIAL'
                DataSource = DsCadastro
                TabOrder = 17
              end
              object DBComboBox3: TDBComboBox
                Left = 9
                Top = 201
                Width = 248
                Height = 21
                DataField = 'ORIENTACAO_SEXUAL'
                DataSource = DsCadastro
                ItemHeight = 13
                Items.Strings = (
                  'HOMOSEXUAL'
                  'BISEXUAL'
                  'HETEROSEXUAL')
                TabOrder = 18
              end
              object DBComboBox4: TDBComboBox
                Left = 264
                Top = 201
                Width = 193
                Height = 21
                DataField = 'IDENTIDADE_GENERO'
                DataSource = DsCadastro
                ItemHeight = 13
                Items.Strings = (
                  'FEMININO'
                  'MASCULINO')
                TabOrder = 19
              end
            end
            object TabSheet2: TTabSheet
              Caption = 'Geral'
              ImageIndex = 1
              object Label11: TLabel
                Left = 24
                Top = 56
                Width = 23
                Height = 13
                Caption = 'M'#195'E'
                FocusControl = DBEdit1
              end
              object Label19: TLabel
                Left = 312
                Top = 56
                Width = 17
                Height = 13
                Caption = 'PAI'
                FocusControl = DBEdit5
              end
              object Label21: TLabel
                Left = 312
                Top = 96
                Width = 87
                Height = 13
                Caption = 'NACIONALIDADE'
              end
              object Label22: TLabel
                Left = 24
                Top = 140
                Width = 29
                Height = 13
                Caption = 'RA'#199'A'
              end
              object Label23: TLabel
                Left = 25
                Top = 188
                Width = 83
                Height = 13
                Caption = 'ESCOLARIDADE'
              end
              object Label20: TLabel
                Left = 24
                Top = 96
                Width = 84
                Height = 13
                Caption = 'NATURALIDADE'
              end
              object Label37: TLabel
                Left = 411
                Top = 315
                Width = 50
                Height = 13
                Caption = 'RELIGI'#195'O'
                FocusControl = DBEdit18
              end
              object Label38: TLabel
                Left = 24
                Top = 232
                Width = 61
                Height = 13
                Caption = 'ADVOGADO'
              end
              object Label41: TLabel
                Left = 24
                Top = 314
                Width = 75
                Height = 13
                Caption = 'CONDENA'#199#195'O'
                FocusControl = DBEdit21
              end
              object Label42: TLabel
                Left = 24
                Top = 356
                Width = 59
                Height = 13
                Caption = 'HIST'#211'RICO'
                FocusControl = DBEdit22
              end
              object Label13: TLabel
                Left = 336
                Top = 232
                Width = 61
                Height = 13
                Caption = 'PROFISS'#195'O'
              end
              object SpeedButton4: TSpeedButton
                Left = 284
                Top = 111
                Width = 23
                Height = 22
                Caption = '...'
                Flat = True
                OnClick = SpeedButton4Click
              end
              object SpeedButton5: TSpeedButton
                Left = 602
                Top = 111
                Width = 23
                Height = 22
                Caption = '...'
                Flat = True
                OnClick = SpeedButton5Click
              end
              object SpeedButton6: TSpeedButton
                Left = 237
                Top = 156
                Width = 23
                Height = 22
                Caption = '...'
                Flat = True
                OnClick = SpeedButton6Click
              end
              object SpeedButton7: TSpeedButton
                Left = 600
                Top = 204
                Width = 23
                Height = 22
                Caption = '...'
                Flat = True
                OnClick = SpeedButton7Click
              end
              object SpeedButton8: TSpeedButton
                Left = 304
                Top = 245
                Width = 23
                Height = 22
                Caption = '...'
                Flat = True
                OnClick = SpeedButton8Click
              end
              object SpeedButton9: TSpeedButton
                Left = 601
                Top = 245
                Width = 23
                Height = 22
                Caption = '...'
                Flat = True
                OnClick = SpeedButton9Click
              end
              object Label5: TLabel
                Left = 137
                Top = 16
                Width = 16
                Height = 13
                Caption = 'RG'
                FocusControl = DBEdit9
              end
              object Label24: TLabel
                Left = 237
                Top = 16
                Width = 20
                Height = 13
                Caption = 'CPF'
                FocusControl = DBEdit19
              end
              object Label25: TLabel
                Left = 388
                Top = 16
                Width = 73
                Height = 13
                Caption = 'ESTADO CIVIL'
              end
              object Label26: TLabel
                Left = 24
                Top = 400
                Width = 120
                Height = 13
                Caption = 'SINAIS PARTICULARES'
                FocusControl = DBEdit23
              end
              object Label39: TLabel
                Left = 528
                Top = 16
                Width = 43
                Height = 13
                Caption = 'ALTURA'
                FocusControl = DBEdit26
              end
              object Label47: TLabel
                Left = 584
                Top = 16
                Width = 29
                Height = 13
                Caption = 'PESO'
                FocusControl = DBEdit27
              end
              object Label52: TLabel
                Left = 24
                Top = 16
                Width = 103
                Height = 13
                Caption = 'DATA NASCIMENTO'
                FocusControl = DBEdit28
              end
              object Label56: TLabel
                Left = 24
                Top = 272
                Width = 41
                Height = 13
                Caption = 'ARTIGO'
                FocusControl = DBEdit30
              end
              object Label63: TLabel
                Left = 274
                Top = 141
                Width = 63
                Height = 13
                Caption = 'COR OLHOS'
                FocusControl = DBEdit32
              end
              object Label64: TLabel
                Left = 430
                Top = 140
                Width = 78
                Height = 13
                Caption = 'COR_CABELOS'
                FocusControl = DBEdit34
              end
              object DBEdit1: TDBEdit
                Left = 24
                Top = 72
                Width = 281
                Height = 21
                DataField = 'MAE'
                DataSource = DsCadastro
                TabOrder = 6
              end
              object DBEdit5: TDBEdit
                Left = 312
                Top = 72
                Width = 313
                Height = 21
                DataField = 'PAI'
                DataSource = DsCadastro
                TabOrder = 7
              end
              object DBLookupComboBoxIDNATURALIDADE: TDBLookupComboBox
                Left = 24
                Top = 112
                Width = 257
                Height = 21
                DataField = 'IDNATURALIDADE'
                DataSource = DsCadastro
                KeyField = 'ID_CIDADE'
                ListField = 'CIDADE'
                ListSource = DM.DSCIDADE
                TabOrder = 8
              end
              object DBLookupComboBoxIDNACIONALIDADE: TDBLookupComboBox
                Left = 312
                Top = 112
                Width = 281
                Height = 21
                DataField = 'IDNACIONALIDADE'
                DataSource = DsCadastro
                KeyField = 'ID_NACIONALIDADE'
                ListField = 'NACIONALIDADE'
                ListSource = DM.DSNACIONALIDADE
                TabOrder = 9
              end
              object DBLookupComboBoxIDRACA: TDBLookupComboBox
                Left = 24
                Top = 156
                Width = 209
                Height = 21
                DataField = 'IDRACA'
                DataSource = DsCadastro
                KeyField = 'ID_RACA'
                ListField = 'RACA'
                ListSource = DM.DSRACA
                TabOrder = 10
              end
              object DBLookupComboBoxIDESCOLARIDADE: TDBLookupComboBox
                Left = 24
                Top = 204
                Width = 569
                Height = 21
                DataField = 'IDESCOLARIDADE'
                DataSource = DsCadastro
                KeyField = 'ID_ESCOLARIDADE'
                ListField = 'ESCOLARIDADE'
                ListSource = DM.DSESCOLARIDADE
                TabOrder = 13
              end
              object DBEdit18: TDBEdit
                Left = 411
                Top = 331
                Width = 214
                Height = 21
                DataField = 'RELIGIAO'
                DataSource = DsCadastro
                TabOrder = 18
              end
              object DBLookupComboBoxIDADVOGADO: TDBLookupComboBox
                Left = 24
                Top = 248
                Width = 273
                Height = 21
                DataField = 'IDADVOGADO'
                DataSource = DsCadastro
                KeyField = 'ID_ADVOGADO'
                ListField = 'ADVOGADO'
                ListSource = DM.DSADVOGADO
                TabOrder = 14
              end
              object DBEdit21: TDBEdit
                Left = 24
                Top = 330
                Width = 369
                Height = 21
                DataField = 'CONDENACAO'
                DataSource = DsCadastro
                TabOrder = 17
              end
              object DBEdit22: TDBEdit
                Left = 24
                Top = 372
                Width = 601
                Height = 21
                DataField = 'HISTORICO'
                DataSource = DsCadastro
                TabOrder = 19
              end
              object DBLookupComboBoxIDPROFISSAO: TDBLookupComboBox
                Left = 336
                Top = 248
                Width = 257
                Height = 21
                DataField = 'IDPROFISSAO'
                DataSource = DsCadastro
                KeyField = 'ID_PROFISSAO'
                ListField = 'PROFISSAO'
                ListSource = DM.DsProfissao
                TabOrder = 15
              end
              object DBEdit9: TDBEdit
                Left = 137
                Top = 32
                Width = 98
                Height = 21
                DataField = 'RG'
                DataSource = DsCadastro
                TabOrder = 1
              end
              object DBEdit19: TDBEdit
                Left = 238
                Top = 32
                Width = 147
                Height = 21
                DataField = 'CPF'
                DataSource = DsCadastro
                TabOrder = 2
              end
              object DBEdit23: TDBEdit
                Left = 24
                Top = 416
                Width = 600
                Height = 21
                DataField = 'SINAIS_PARTICULARES'
                DataSource = DsCadastro
                TabOrder = 20
              end
              object DBComboBox1: TDBComboBox
                Left = 388
                Top = 32
                Width = 137
                Height = 21
                DataField = 'ESTADO_CIVIL'
                DataSource = DsCadastro
                ItemHeight = 13
                Items.Strings = (
                  'Amasiado'
                  'Casado'
                  'Divorciado'
                  'Separado Judicialmente'
                  'Solteiro'
                  'Viuvo')
                TabOrder = 3
              end
              object DBEdit26: TDBEdit
                Left = 528
                Top = 32
                Width = 49
                Height = 21
                DataField = 'ALTURA'
                DataSource = DsCadastro
                TabOrder = 4
              end
              object DBEdit27: TDBEdit
                Left = 584
                Top = 32
                Width = 41
                Height = 21
                DataField = 'PESO'
                DataSource = DsCadastro
                TabOrder = 5
              end
              object DBEdit28: TDBEdit
                Left = 24
                Top = 32
                Width = 105
                Height = 21
                DataField = 'DATA_NASCIMENTO'
                DataSource = DsCadastro
                TabOrder = 0
              end
              object DBEdit30: TDBEdit
                Left = 24
                Top = 288
                Width = 601
                Height = 21
                DataField = 'ARTIGO'
                DataSource = DsCadastro
                TabOrder = 16
              end
              object DBEdit32: TDBEdit
                Left = 273
                Top = 156
                Width = 152
                Height = 21
                DataField = 'COR_OLHOS'
                DataSource = DsCadastro
                TabOrder = 11
              end
              object DBEdit34: TDBEdit
                Left = 430
                Top = 156
                Width = 200
                Height = 21
                DataField = 'COR_CABELOS'
                DataSource = DsCadastro
                TabOrder = 12
              end
            end
            object TabSheet3: TTabSheet
              Caption = 'Endere'#231'o'
              ImageIndex = 2
              object Label28: TLabel
                Left = 16
                Top = 8
                Width = 60
                Height = 13
                Caption = 'ENDERE'#199'O'
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
              object Label30: TLabel
                Left = 80
                Top = 48
                Width = 41
                Height = 13
                Caption = 'BAIRRO'
                FocusControl = DBEdit12
              end
              object Label31: TLabel
                Left = 16
                Top = 96
                Width = 83
                Height = 13
                Caption = 'COMPLEMENTO'
                FocusControl = DBEdit13
              end
              object Label32: TLabel
                Left = 496
                Top = 96
                Width = 21
                Height = 13
                Caption = 'CEP'
                FocusControl = DBEdit14
              end
              object Label33: TLabel
                Left = 16
                Top = 142
                Width = 40
                Height = 13
                Caption = 'CIDADE'
              end
              object Label34: TLabel
                Left = 496
                Top = 142
                Width = 29
                Height = 13
                Caption = 'FONE'
                FocusControl = DBEdit16
              end
              object Label35: TLabel
                Left = 16
                Top = 188
                Width = 52
                Height = 13
                Caption = 'CONTATO'
                FocusControl = DBEdit17
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
              object DBEdit10: TDBEdit
                Left = 16
                Top = 24
                Width = 600
                Height = 21
                DataField = 'ENDERECO'
                DataSource = DsCadastro
                TabOrder = 0
              end
              object DBEdit11: TDBEdit
                Left = 16
                Top = 64
                Width = 57
                Height = 21
                DataField = 'NUMERO'
                DataSource = DsCadastro
                TabOrder = 1
              end
              object DBEdit12: TDBEdit
                Left = 80
                Top = 64
                Width = 537
                Height = 21
                DataField = 'BAIRRO'
                DataSource = DsCadastro
                TabOrder = 2
              end
              object DBEdit13: TDBEdit
                Left = 16
                Top = 112
                Width = 465
                Height = 21
                DataField = 'COMPLEMENETO'
                DataSource = DsCadastro
                TabOrder = 3
              end
              object DBEdit14: TDBEdit
                Left = 496
                Top = 112
                Width = 121
                Height = 21
                DataField = 'CEP'
                DataSource = DsCadastro
                TabOrder = 4
              end
              object DBEdit16: TDBEdit
                Left = 496
                Top = 158
                Width = 121
                Height = 21
                DataField = 'FONE'
                DataSource = DsCadastro
                TabOrder = 6
              end
              object DBEdit17: TDBEdit
                Left = 16
                Top = 204
                Width = 601
                Height = 21
                DataField = 'CONTATO'
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
                TabOrder = 5
              end
            end
            object TabSheet4: TTabSheet
              Caption = 'Trabalho'
              ImageIndex = 3
              object Label48: TLabel
                Left = 16
                Top = 16
                Width = 69
                Height = 13
                Caption = 'DATA SETOR'
                FocusControl = DBEdit8
              end
              object Label49: TLabel
                Left = 107
                Top = 16
                Width = 98
                Height = 13
                Caption = 'SETOR TRABALHO'
              end
              object Label50: TLabel
                Left = 392
                Top = 16
                Width = 96
                Height = 13
                Caption = 'FUN'#199#195'O INTERNO'
              end
              object Label51: TLabel
                Left = 16
                Top = 64
                Width = 83
                Height = 13
                Caption = 'OBS TRABALHO'
                FocusControl = DBEdit15
              end
              object DBEdit8: TDBEdit
                Left = 16
                Top = 32
                Width = 81
                Height = 21
                DataField = 'DATA_SETOR'
                DataSource = DsCadastro
                TabOrder = 0
              end
              object DBLookupComboBox4: TDBLookupComboBox
                Left = 105
                Top = 32
                Width = 272
                Height = 21
                DataField = 'IDSETOR_TRABALHO'
                DataSource = DsCadastro
                KeyField = 'ID_SETOR_TRABALHO'
                ListField = 'SETOR_TRABALHO'
                ListSource = DM.DsSetorTrabalho
                TabOrder = 1
              end
              object DBEdit15: TDBEdit
                Left = 16
                Top = 80
                Width = 633
                Height = 21
                DataField = 'OBSTRABALHO'
                DataSource = DsCadastro
                TabOrder = 3
              end
              object DBLookupComboBox5: TDBLookupComboBox
                Left = 392
                Top = 32
                Width = 257
                Height = 21
                DataField = 'ID_FUNCAOINTERNO'
                DataSource = DsCadastro
                KeyField = 'ID_FUNCAO_INTERNO'
                ListField = 'FUNCAO_INTERNO'
                ListSource = DM.DSFUNCAOINTERNO
                TabOrder = 2
              end
            end
            object TabSheet7: TTabSheet
              Caption = 'Educa'#231#227'o'
              ImageIndex = 6
              object Label57: TLabel
                Left = 8
                Top = 96
                Width = 29
                Height = 13
                Caption = 'DATA'
              end
              object Label58: TLabel
                Left = 104
                Top = 96
                Width = 121
                Height = 13
                Caption = 'HIST'#211'RICO EDUCA'#199#195'O'
              end
              object Label59: TLabel
                Left = 8
                Top = 8
                Width = 94
                Height = 13
                Caption = 'DATA MATRICULA'
                FocusControl = DBEdit31
              end
              object Label60: TLabel
                Left = 440
                Top = 8
                Width = 66
                Height = 13
                Caption = 'DEFICI'#202'NCIA'
              end
              object Label61: TLabel
                Left = 8
                Top = 48
                Width = 22
                Height = 13
                Caption = 'OBS'
                FocusControl = DBEdit33
              end
              object Label62: TLabel
                Left = 112
                Top = 8
                Width = 102
                Height = 13
                Caption = 'S'#201'RIE/FASE ATUAL'
              end
              object MaskEdit2: TMaskEdit
                Left = 8
                Top = 112
                Width = 88
                Height = 21
                EditMask = '!99/99/00;1;_'
                MaxLength = 8
                TabOrder = 3
                Text = '  /  /  '
              end
              object Edit8: TEdit
                Left = 104
                Top = 112
                Width = 569
                Height = 21
                TabOrder = 4
              end
              object DBGrid2: TDBGrid
                Left = 8
                Top = 184
                Width = 665
                Height = 129
                DataSource = DSHISTORICOEDUCACAO
                TabOrder = 6
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
                Left = 8
                Top = 320
                Width = 665
                Height = 81
                DataField = 'HISTORICO'
                DataSource = DSHISTORICOEDUCACAO
                TabOrder = 7
              end
              object Button2: TButton
                Left = 272
                Top = 152
                Width = 75
                Height = 25
                Caption = 'Incluir'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 5
                OnClick = Button2Click
              end
              object DBEdit31: TDBEdit
                Left = 8
                Top = 24
                Width = 97
                Height = 21
                DataField = 'DATA_MATRICULA'
                DataSource = DsCadastro
                TabOrder = 0
              end
              object DBEdit33: TDBEdit
                Left = 8
                Top = 64
                Width = 665
                Height = 21
                DataField = 'OBSEDUCACAO'
                DataSource = DsCadastro
                TabOrder = 2
              end
              object DBComboBox2: TDBComboBox
                Left = 440
                Top = 24
                Width = 233
                Height = 21
                DataField = 'DEFICIENCIA'
                DataSource = DsCadastro
                ItemHeight = 13
                Items.Strings = (
                  'Auditiva'
                  'Cognitiva'
                  'Linguagem'
                  'Motora'
                  'Visual')
                TabOrder = 1
              end
              object DBLookupComboBox3: TDBLookupComboBox
                Left = 112
                Top = 24
                Width = 313
                Height = 21
                DataField = 'IDSERIEESTUDO'
                DataSource = DsCadastro
                KeyField = 'ID_SERIE_ESTUDO'
                ListField = 'SERIE_ESTUDO'
                ListSource = DM.DSSERIEESTUDO
                TabOrder = 8
              end
            end
            object TabSheet5: TTabSheet
              Caption = 'Hist'#243'rico'
              ImageIndex = 4
              object Label53: TLabel
                Left = 16
                Top = 16
                Width = 29
                Height = 13
                Caption = 'DATA'
              end
              object Label54: TLabel
                Left = 112
                Top = 16
                Width = 62
                Height = 13
                Caption = 'DESCRI'#199#195'O'
              end
              object DBGrid1: TDBGrid
                Left = 8
                Top = 112
                Width = 665
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
                    Width = 71
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DESCRICAO'
                    Visible = True
                  end>
              end
              object Edit1: TEdit
                Left = 112
                Top = 32
                Width = 561
                Height = 21
                CharCase = ecLowerCase
                TabOrder = 1
              end
              object MaskEdit1: TMaskEdit
                Left = 16
                Top = 32
                Width = 81
                Height = 21
                EditMask = '!99/99/00;1;_'
                MaxLength = 8
                TabOrder = 0
                Text = '  /  /  '
              end
              object Button1: TButton
                Left = 264
                Top = 64
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
                OnClick = Button1Click
              end
              object DBMemo1: TDBMemo
                Left = 8
                Top = 248
                Width = 665
                Height = 121
                DataField = 'DESCRICAO'
                DataSource = DSHISTORICO_interno
                TabOrder = 4
              end
            end
            object TabSheet6: TTabSheet
              Caption = 'Fotos'
              ImageIndex = 5
              object FOTO: TLabel
                Left = 49
                Top = 7
                Width = 37
                Height = 13
                Caption = 'PERFIL'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label6: TLabel
                Left = 172
                Top = 7
                Width = 120
                Height = 13
                Caption = 'SINAIS PARTICULARES'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label7: TLabel
                Left = 324
                Top = 7
                Width = 120
                Height = 13
                Caption = 'SINAIS PARTICULARES'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label8: TLabel
                Left = 476
                Top = 7
                Width = 120
                Height = 13
                Caption = 'SINAIS PARTICULARES'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label9: TLabel
                Left = 172
                Top = 191
                Width = 120
                Height = 13
                Caption = 'SINAIS PARTICULARES'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label14: TLabel
                Left = 324
                Top = 191
                Width = 120
                Height = 13
                Caption = 'SINAIS PARTICULARES'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label15: TLabel
                Left = 476
                Top = 191
                Width = 120
                Height = 13
                Caption = 'SINAIS PARTICULARES'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label16: TLabel
                Left = 24
                Top = 160
                Width = 135
                Height = 20
                Caption = 'Descri'#231#227'o Sinais'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                Visible = False
              end
              object Label17: TLabel
                Left = 24
                Top = 368
                Width = 135
                Height = 20
                Caption = 'Descri'#231#227'o Sinais'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                Visible = False
              end
              object DBImageFOTOPERFIL: TDBImage
                Left = 16
                Top = 23
                Width = 127
                Height = 127
                DataField = 'FOTO_PERFIL'
                DataSource = DsCadastro
                Stretch = True
                TabOrder = 0
                OnClick = DBImageFOTOPERFILClick
              end
              object DBImagetatuagem1: TDBImage
                Left = 168
                Top = 24
                Width = 127
                Height = 127
                DataField = 'FOTO_TATUAGEM'
                DataSource = DsCadastro
                TabOrder = 1
                OnClick = DBImagetatuagem1Click
              end
              object DBImageFOTO_SINAIS: TDBImage
                Left = 320
                Top = 24
                Width = 127
                Height = 127
                DataField = 'FOTO_SINAIS'
                DataSource = DsCadastro
                TabOrder = 2
                OnClick = DBImageFOTO_SINAISClick
              end
              object DBImageFOTO_SINAIS1: TDBImage
                Left = 472
                Top = 24
                Width = 127
                Height = 127
                DataField = 'FOTO_SINAIS1'
                DataSource = DsCadastro
                TabOrder = 3
                OnClick = DBImageFOTO_SINAIS1Click
              end
              object DBImageFOTO_SINAIS2: TDBImage
                Left = 168
                Top = 208
                Width = 127
                Height = 127
                DataField = 'FOTO_SINAIS2'
                DataSource = DsCadastro
                TabOrder = 4
                OnClick = DBImageFOTO_SINAIS2Click
              end
              object DBImageFOTO_SINAIS3: TDBImage
                Left = 320
                Top = 208
                Width = 127
                Height = 127
                DataField = 'FOTO_SINAIS3'
                DataSource = DsCadastro
                TabOrder = 5
                OnClick = DBImageFOTO_SINAIS3Click
              end
              object DBImageFOTO_SINAIS4: TDBImage
                Left = 472
                Top = 208
                Width = 127
                Height = 127
                DataField = 'FOTO_SINAIS4'
                DataSource = DsCadastro
                TabOrder = 6
                OnClick = DBImageFOTO_SINAIS4Click
              end
              object Edit2: TEdit
                Left = 168
                Top = 160
                Width = 121
                Height = 21
                TabOrder = 7
                Visible = False
              end
              object Edit3: TEdit
                Left = 320
                Top = 160
                Width = 129
                Height = 21
                TabOrder = 8
                Visible = False
              end
              object Edit4: TEdit
                Left = 472
                Top = 160
                Width = 129
                Height = 21
                TabOrder = 9
                Visible = False
              end
              object Edit5: TEdit
                Left = 168
                Top = 368
                Width = 121
                Height = 21
                TabOrder = 10
                Visible = False
              end
              object Edit6: TEdit
                Left = 320
                Top = 368
                Width = 129
                Height = 21
                TabOrder = 11
                Visible = False
              end
              object Edit7: TEdit
                Left = 472
                Top = 368
                Width = 129
                Height = 21
                TabOrder = 12
                Visible = False
              end
            end
            object TabSheet8: TTabSheet
              Caption = 'Jur'#237'dica'
              ImageIndex = 7
              object Label68: TLabel
                Left = 16
                Top = 24
                Width = 83
                Height = 13
                Caption = 'Situa'#231#227'o Jur'#237'dica'
              end
              object Label69: TLabel
                Left = 16
                Top = 72
                Width = 65
                Height = 13
                Caption = 'OBS Conduta'
                FocusControl = DBEdit37
              end
              object Label70: TLabel
                Left = 296
                Top = 24
                Width = 91
                Height = 13
                Caption = 'Conduta Disciplinar'
              end
              object DBEdit37: TDBEdit
                Left = 16
                Top = 88
                Width = 585
                Height = 21
                DataField = 'CONCEITO_DISCIPLINAR'
                DataSource = DsCadastro
                TabOrder = 0
              end
              object DBComboBox5: TDBComboBox
                Left = 16
                Top = 40
                Width = 265
                Height = 21
                DataField = 'TIPOPROCESSO'
                DataSource = DsCadastro
                ItemHeight = 13
                Items.Strings = (
                  'Condenado'
                  'Processado')
                TabOrder = 1
              end
              object DBComboBox6: TDBComboBox
                Left = 296
                Top = 40
                Width = 305
                Height = 21
                DataField = 'TIPOCONDUTA'
                DataSource = DsCadastro
                ItemHeight = 13
                Items.Strings = (
                  #211'timo'
                  'Bom'
                  'Regular'
                  'M'#225
                  'N'#227'o Classificado Por Falta de Lapso Temporal')
                TabOrder = 2
              end
              object PageControl2: TPageControl
                Left = 16
                Top = 128
                Width = 601
                Height = 313
                ActivePage = TabSheet9
                TabOrder = 3
                object TabSheet9: TTabSheet
                  Caption = 'Condena'#231#227'o do Interno'
                  object Label71: TLabel
                    Left = 16
                    Top = 16
                    Width = 32
                    Height = 13
                    Caption = 'Artigos'
                  end
                  object Label72: TLabel
                    Left = 18
                    Top = 58
                    Width = 58
                    Height = 13
                    Caption = 'Observa'#231#227'o'
                  end
                  object Label73: TLabel
                    Left = 18
                    Top = 106
                    Width = 19
                    Height = 13
                    Caption = 'Ano'
                  end
                  object Label74: TLabel
                    Left = 90
                    Top = 106
                    Width = 20
                    Height = 13
                    Caption = 'Mes'
                  end
                  object Label75: TLabel
                    Left = 154
                    Top = 106
                    Width = 16
                    Height = 13
                    Caption = 'Dia'
                  end
                  object BitBtn1: TBitBtn
                    Left = 376
                    Top = 120
                    Width = 75
                    Height = 25
                    Caption = 'Inserir'
                    TabOrder = 0
                    OnClick = BitBtn1Click
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
                  object BitBtn2: TBitBtn
                    Left = 472
                    Top = 120
                    Width = 75
                    Height = 25
                    Caption = 'Deletar'
                    TabOrder = 1
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
                  object DBGrid3: TDBGrid
                    Left = 16
                    Top = 152
                    Width = 537
                    Height = 113
                    DataSource = DsCONDENACAO_INTERNO
                    TabOrder = 2
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'ARTIGO'
                        Width = 200
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'OBSERVACAO'
                        Width = 200
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'TOTAL_PENA_ANO'
                        Title.Caption = 'ANO'
                        Width = 40
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'TOTAL_PENA_MES'
                        Title.Caption = 'MES'
                        Width = 30
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'TOTAL_PENA_DIA'
                        Title.Caption = 'DIA'
                        Width = 30
                        Visible = True
                      end>
                  end
                  object EditArtigo: TEdit
                    Left = 16
                    Top = 32
                    Width = 297
                    Height = 21
                    MaxLength = 100
                    TabOrder = 3
                  end
                  object EditObservacaoCondenacao: TEdit
                    Left = 16
                    Top = 72
                    Width = 297
                    Height = 21
                    MaxLength = 100
                    TabOrder = 4
                  end
                  object EditAno: TEdit
                    Left = 16
                    Top = 120
                    Width = 57
                    Height = 21
                    MaxLength = 4
                    TabOrder = 5
                  end
                  object EditMes: TEdit
                    Left = 88
                    Top = 120
                    Width = 57
                    Height = 21
                    MaxLength = 4
                    TabOrder = 6
                  end
                  object EditDia: TEdit
                    Left = 152
                    Top = 120
                    Width = 57
                    Height = 21
                    MaxLength = 4
                    TabOrder = 7
                  end
                end
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 707
          inherited EditLocalizar: TEdit
            Width = 497
            CharCase = ecUpperCase
            OnChange = EditLocalizarChange
          end
          object RadioGroupStatus: TRadioGroup
            Left = 586
            Top = 0
            Width = 121
            Height = 33
            Anchors = [akTop, akRight]
            Caption = 'Filtro'
            Columns = 2
            ItemIndex = 0
            Items.Strings = (
              'Ativo'
              'Inativo')
            TabOrder = 1
            OnClick = RadioGroupStatusClick
          end
        end
        inherited PanelConsulta: TPanel
          Width = 707
          Height = 446
          inherited DBGridConsulta: TDBGrid
            Width = 705
            Height = 444
            DataSource = DsConsulta
            Columns = <
              item
                Expanded = False
                FieldName = 'NOME_INTERNO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Lucida Console'
                Font.Style = [fsBold]
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SIGLA'
                Width = 53
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PAVILHAO'
                Width = 94
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SOLARIO'
                Width = 83
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CELA'
                Width = 62
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATUS'
                Width = 62
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 816
  end
  inherited StatusBar1: TStatusBar
    Top = 578
    Width = 816
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'select *'
      'from interno'
      'where ID_INTERNO = -1'
      '')
    Left = 224
  end
  inherited DspCadastro: TDataSetProvider
    Left = 252
  end
  inherited CdsCadastro: TClientDataSet
    Left = 280
  end
  inherited DsCadastro: TDataSource
    Left = 308
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Imagens (*.jpg)|*.jpg'
    Left = 112
    Top = 57
  end
  object SqlConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select '
      '    interno.nome_interno,'
      '    unidade_penal.sigla,'
      '    pavilhao.pavilhao,'
      '    solario.solario,'
      '    cela.cela,'
      '    interno.id_interno,'
      'interno.idpavilhao,'
      'interno.idgaleria,'
      'interno.idsolario'
      'from cela'
      '   inner join interno on (cela.id_cela = interno.idcela)'
      
        '   inner join pavilhao on (interno.idpavilhao = pavilhao.id_pavi' +
        'lhao)'
      
        '   inner join unidade_penal on (pavilhao.id_up = unidade_penal.i' +
        'd_up)'
      
        '   inner join solario on (interno.idsolario = solario.id_solario' +
        ')'
      '  '
      ' order by nome_interno ')
    SQLConnection = DM.SQLConnect
    Left = 520
    Top = 8
  end
  object DspConsulta: TDataSetProvider
    DataSet = SqlConsulta
    Left = 548
    Top = 8
  end
  object CdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspConsulta'
    Left = 576
    Top = 8
    object CdsConsultaNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 50
    end
    object CdsConsultaSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 50
    end
    object CdsConsultaPAVILHAO: TStringField
      FieldName = 'PAVILHAO'
      Size = 50
    end
    object CdsConsultaSOLARIO: TStringField
      FieldName = 'SOLARIO'
      Size = 50
    end
    object CdsConsultaCELA: TStringField
      FieldName = 'CELA'
      Size = 50
    end
    object CdsConsultaID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
      Required = True
    end
    object CdsConsultaIDPAVILHAO: TIntegerField
      FieldName = 'IDPAVILHAO'
    end
    object CdsConsultaIDGALERIA: TIntegerField
      FieldName = 'IDGALERIA'
    end
    object CdsConsultaIDSOLARIO: TIntegerField
      FieldName = 'IDSOLARIO'
    end
  end
  object DsConsulta: TDataSource
    DataSet = CdsConsulta
    OnDataChange = DsConsultaDataChange
    Left = 604
    Top = 8
  end
  object SqlSelectInterno: TSQLQuery
    Params = <>
    SQL.Strings = (
      'select '
      '    interno.nome_interno,'
      '    unidade_penal.sigla,'
      '    pavilhao.pavilhao,'
      '    solario.solario,'
      '    cela.cela,'
      '    interno.id_interno,'
      'interno.idpavilhao,'
      'interno.idgaleria,'
      'interno.idsolario,'
      'iif(interno.st='#39'A'#39','#39'ATIVO'#39', '#39'INATIVO'#39') status'
      'from cela'
      '   inner join interno on (cela.id_cela = interno.idcela)'
      
        '   inner join pavilhao on (interno.idpavilhao = pavilhao.id_pavi' +
        'lhao)'
      
        '   inner join unidade_penal on (pavilhao.id_up = unidade_penal.i' +
        'd_up)'
      
        '   inner join solario on (interno.idsolario = solario.id_solario' +
        ')'
      '   ')
    Left = 136
    Top = 12
  end
  object DataSource1: TDataSource
    DataSet = SqlCadastro
    Left = 416
    Top = 8
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
      'where idinterno=:id_interno'
      'order by data_hora desc')
    SQLConnection = DM.SQLConnect
    Left = 696
    Top = 8
  end
  object DSPHISTORICO_interno: TDataSetProvider
    DataSet = SQLHISTORICO_interno
    Left = 724
    Top = 8
  end
  object CDSHISTORICO_interno: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDINTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPHISTORICO_interno'
    Left = 752
    Top = 8
    object CDSHISTORICO_internoIDHISTORICO_INTERNO: TIntegerField
      FieldName = 'IDHISTORICO_INTERNO'
      Required = True
    end
    object CDSHISTORICO_internoDESCRICAO: TStringField
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'DESCRICAO'
      Required = True
      Size = 16386
    end
    object CDSHISTORICO_internoDATA_HORA: TSQLTimeStampField
      DisplayLabel = 'DATA'
      FieldName = 'DATA_HORA'
      Required = True
    end
    object CDSHISTORICO_internoIDINTERNO: TIntegerField
      FieldName = 'IDINTERNO'
      Required = True
    end
  end
  object DSHISTORICO_interno: TDataSource
    DataSet = CDSHISTORICO_interno
    OnDataChange = DsCadastroDataChange
    Left = 780
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
      'from historico_estudo'
      'where id_interno=:id_interno'
      'order by data_historico desc')
    SQLConnection = DM.SQLConnect
    Left = 696
    Top = 40
  end
  object DSPHISTORICOEDUCACAO: TDataSetProvider
    DataSet = SQLHISTORICOEDUCACAO
    Left = 724
    Top = 40
  end
  object CDSHISTORICOEDUCACAO: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPHISTORICOEDUCACAO'
    Left = 752
    Top = 40
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
  end
  object DSHISTORICOEDUCACAO: TDataSource
    DataSet = CDSHISTORICOEDUCACAO
    OnDataChange = DsCadastroDataChange
    Left = 780
    Top = 40
  end
  object SQLCONDENACAO_INTERNO: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'select *'
      'from CONDENACAO_INTERNO'
      'where id_interno=:id_interno'
      '')
    SQLConnection = DM.SQLConnect
    Left = 696
    Top = 80
  end
  object DspCONDENACAO_INTERNO: TDataSetProvider
    DataSet = SQLCONDENACAO_INTERNO
    Left = 724
    Top = 80
  end
  object CdsCONDENACAO_INTERNO: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspCONDENACAO_INTERNO'
    Left = 752
    Top = 80
    object CdsCONDENACAO_INTERNOIDCONDENACAO_INTERNO: TIntegerField
      FieldName = 'IDCONDENACAO_INTERNO'
      Required = True
    end
    object CdsCONDENACAO_INTERNOID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
      Required = True
    end
    object CdsCONDENACAO_INTERNOARTIGO: TStringField
      FieldName = 'ARTIGO'
      Size = 100
    end
    object CdsCONDENACAO_INTERNOOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 100
    end
    object CdsCONDENACAO_INTERNOTOTAL_PENA_ANO: TIntegerField
      FieldName = 'TOTAL_PENA_ANO'
    end
    object CdsCONDENACAO_INTERNOTOTAL_PENA_MES: TIntegerField
      FieldName = 'TOTAL_PENA_MES'
    end
    object CdsCONDENACAO_INTERNOTOTAL_PENA_DIA: TIntegerField
      FieldName = 'TOTAL_PENA_DIA'
    end
  end
  object DsCONDENACAO_INTERNO: TDataSource
    DataSet = CdsCONDENACAO_INTERNO
    OnDataChange = DsCadastroDataChange
    Left = 780
    Top = 80
  end
end
