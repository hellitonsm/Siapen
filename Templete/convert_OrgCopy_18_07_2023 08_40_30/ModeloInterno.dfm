inherited FrmModeloInterno: TFrmModeloInterno
  Left = 264
  Top = 81
  Caption = 'FrmModeloInterno'
  KeyPreview = True
  Menu = MainMenu1
  ExplicitHeight = 642
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 526
    ExplicitHeight = 525
    inherited ToolBarModeloCadastro: TToolBar
      Height = 508
      ButtonWidth = 99
      ExplicitHeight = 507
      inherited Novo: TToolButton
        Caption = '&N'#195'O'
        Visible = False
      end
      inherited Editar: TToolButton
        Caption = '&EDI'#199#195'O'
      end
      inherited Cancelar: TToolButton
        Caption = '&CANCELA'
      end
    end
    inherited DBNavigator1: TDBNavigator
      Top = 508
      DataSource = DsConsulta
      Hints.Strings = ()
      TabOrder = 2
      ExplicitTop = 507
    end
    object DBImage1: TDBImage
      Left = 8
      Top = 248
      Width = 97
      Height = 92
      BorderStyle = bsNone
      DataField = 'FOTO'
      DataSource = DsCadastro
      Enabled = False
      Stretch = True
      TabOrder = 1
    end
  end
  inherited PanelModeloCadastro: TPanel
    Height = 526
    ExplicitHeight = 525
    inherited Image2: TImage
      Width = 935
      ExplicitWidth = 935
    end
    inherited PageControlModeloCadastro: TPageControl
      Height = 526
      ExplicitHeight = 525
      inherited TabSheetCadastro: TTabSheet
        ExplicitHeight = 498
        inherited PanelCadastro: TPanel
          Height = 498
          ExplicitHeight = 497
          object PageControlPrincipal: TPageControl
            Left = 1
            Top = 1
            Width = 819
            Height = 496
            ActivePage = TabSheetPrincipal
            Align = alClient
            TabOrder = 0
            TabWidth = 150
            ExplicitWidth = 815
            ExplicitHeight = 495
            object TabSheetPrincipal: TTabSheet
              Caption = 'Identifica'#231#227'o'
              Enabled = False
              object Label2: TLabel
                Left = 196
                Top = 9
                Width = 11
                Height = 13
                Caption = 'ID'
                Enabled = False
                FocusControl = DBEditCodigo
              end
              object Label3: TLabel
                Left = 277
                Top = 9
                Width = 33
                Height = 13
                Caption = 'Interno'
                Enabled = False
                FocusControl = DBEdit2
              end
              object Label4: TLabel
                Left = 316
                Top = 55
                Width = 76
                Height = 13
                Caption = 'RGI (Prontu'#225'rio)'
                Enabled = False
                FocusControl = DBEdit3
              end
              object Label12: TLabel
                Left = 71
                Top = 293
                Width = 60
                Height = 13
                Caption = 'Procedencia'
                Enabled = False
              end
              object SpeedButton1: TSpeedButton
                Left = 336
                Top = 309
                Width = 23
                Height = 22
                Hint = 'Cadastrar Procedencia'
                Caption = '...'
                Enabled = False
                Flat = True
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton1Click
              end
              object Label45: TLabel
                Left = 68
                Top = 335
                Width = 96
                Height = 13
                Caption = 'Condi'#231#227'o do Interno'
                Enabled = False
              end
              object Label46: TLabel
                Left = 68
                Top = 247
                Width = 70
                Height = 13
                Caption = 'Unidade Penal'
                Enabled = False
              end
              object SpeedButton2: TSpeedButton
                Left = 336
                Top = 348
                Width = 23
                Height = 22
                Hint = 'Cadastrar Procedencia'
                Caption = '...'
                Enabled = False
                Flat = True
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton2Click
              end
              object Label27: TLabel
                Left = 196
                Top = 104
                Width = 57
                Height = 13
                Caption = 'Outro Nome'
                Enabled = False
                FocusControl = DBEdit24
              end
              object Label36: TLabel
                Left = 479
                Top = 104
                Width = 27
                Height = 13
                Caption = 'Vulgo'
                Enabled = False
                FocusControl = DBEdit25
              end
              object Label65: TLabel
                Left = 170
                Top = 203
                Width = 60
                Height = 13
                Caption = 'Nome Social'
                Enabled = False
                FocusControl = DBEdit35
              end
              object Label66: TLabel
                Left = 469
                Top = 203
                Width = 87
                Height = 13
                Caption = 'Orienta'#231#227'o Sexual'
                Enabled = False
              end
              object lbl1: TLabel
                Left = 196
                Top = 57
                Width = 76
                Height = 13
                Caption = 'Numero Infopen'
                Enabled = False
                FocusControl = DBEdit86
              end
              object Label43: TLabel
                Left = 10
                Top = 247
                Width = 11
                Height = 13
                Caption = 'ID'
                Enabled = False
                FocusControl = DBEdit7
              end
              object Label18: TLabel
                Left = 10
                Top = 293
                Width = 11
                Height = 13
                Caption = 'ID'
                Enabled = False
              end
              object Label44: TLabel
                Left = 10
                Top = 335
                Width = 11
                Height = 13
                Caption = 'ID'
                Enabled = False
                FocusControl = DBEdit6
              end
              object Label10: TLabel
                Left = 197
                Top = 158
                Width = 63
                Height = 13
                Caption = 'Data Entrada'
                Enabled = False
                FocusControl = DBEdit4
              end
              object Label40: TLabel
                Left = 282
                Top = 158
                Width = 55
                Height = 13
                Caption = 'Data Pris'#227'o'
                Enabled = False
              end
              object Label55: TLabel
                Left = 474
                Top = 157
                Width = 69
                Height = 13
                Caption = 'CI/OF Entrada'
                Enabled = False
                FocusControl = DBEdit29
              end
              object Label38: TLabel
                Left = 8
                Top = 205
                Width = 36
                Height = 13
                Caption = 'Regime'
                Enabled = False
              end
              object Label49: TLabel
                Left = 367
                Top = 158
                Width = 88
                Height = 13
                Caption = 'Data Perman'#234'ncia'
                Enabled = False
              end
              object Label54: TLabel
                Left = 368
                Top = 292
                Width = 36
                Height = 13
                Caption = 'Fac'#231#227'o'
                Enabled = False
              end
              object SpeedButton8: TSpeedButton
                Left = 641
                Top = 308
                Width = 23
                Height = 22
                Hint = 'Cadastrar Procedencia'
                Caption = '...'
                Enabled = False
                Flat = True
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton8Click
              end
              object Label78: TLabel
                Left = 10
                Top = 379
                Width = 30
                Height = 13
                Caption = 'Ano(s)'
                Enabled = False
              end
              object Label79: TLabel
                Left = 77
                Top = 379
                Width = 37
                Height = 13
                Caption = 'M'#234's(es)'
                Enabled = False
              end
              object Label80: TLabel
                Left = 144
                Top = 379
                Width = 27
                Height = 13
                Caption = 'Dia(s)'
                Enabled = False
              end
              object Label82: TLabel
                Left = 221
                Top = 379
                Width = 63
                Height = 13
                Caption = 'Regime Atual'
                Enabled = False
              end
              object Label83: TLabel
                Left = 493
                Top = 379
                Width = 110
                Height = 13
                Caption = 'Grau de Periculosidade'
                Enabled = False
              end
              object DBEditCodigo: TDBEdit
                Left = 196
                Top = 25
                Width = 77
                Height = 21
                DataField = 'ID_INTERNO'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 1
              end
              object DBEdit2: TDBEdit
                Left = 280
                Top = 25
                Width = 369
                Height = 21
                CharCase = ecUpperCase
                DataField = 'NOME_INTERNO'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 2
              end
              object DBEdit3: TDBEdit
                Left = 314
                Top = 72
                Width = 100
                Height = 21
                DataField = 'RGI'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 4
              end
              object DBEditID_PROCEDENCIA: TDBEdit
                Left = 10
                Top = 309
                Width = 52
                Height = 21
                DataField = 'ID_PROCEDENCIA'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 19
              end
              object DBLookupComboBoxID_PROCEDENCIA: TDBLookupComboBox
                Left = 68
                Top = 309
                Width = 265
                Height = 21
                DataField = 'ID_PROCEDENCIA'
                DataSource = DsCadastro
                Enabled = False
                KeyField = 'ID_PROCEDENCIA'
                ListField = 'PROCEDENCIA'
                ListSource = DM.DsProcedencia
                TabOrder = 20
              end
              object DBRadioGroup1: TDBRadioGroup
                Left = 535
                Top = 52
                Width = 113
                Height = 40
                Caption = 'Status'
                Columns = 2
                DataField = 'ST'
                DataSource = DsCadastro
                Enabled = False
                Items.Strings = (
                  'Ativo'
                  'Inativo')
                TabOrder = 6
                Values.Strings = (
                  'A'
                  'I')
              end
              object DBRadioGroup2: TDBRadioGroup
                Left = 507
                Top = 245
                Width = 142
                Height = 40
                Caption = 'Sexo'
                Columns = 2
                DataField = 'SEXO'
                DataSource = DsCadastro
                Enabled = False
                Items.Strings = (
                  'Masculino'
                  'Feminino')
                TabOrder = 18
                Values.Strings = (
                  'M'
                  'F')
              end
              object DBEdit6: TDBEdit
                Left = 10
                Top = 351
                Width = 52
                Height = 21
                DataField = 'IDCONDICAO_INTERNO'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 22
              end
              object DBLookupComboBox1: TDBLookupComboBox
                Left = 68
                Top = 351
                Width = 265
                Height = 21
                DataField = 'IDCONDICAO_INTERNO'
                DataSource = DsCadastro
                Enabled = False
                KeyField = 'IDCONDICAO_INTERNO'
                ListField = 'DESCRICAO'
                ListSource = DM.DsCondicaoInterno
                TabOrder = 23
              end
              object DBEdit7: TDBEdit
                Left = 10
                Top = 263
                Width = 52
                Height = 21
                DataField = 'ID_UP'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 16
              end
              object DBLookupComboBox2: TDBLookupComboBox
                Left = 68
                Top = 263
                Width = 421
                Height = 21
                DataField = 'ID_UP'
                DataSource = DsCadastro
                Enabled = False
                KeyField = 'ID_UP'
                ListField = 'NOME_UP'
                ListSource = DM.DsUP
                TabOrder = 17
              end
              object DBImageFOTOInterno: TDBImage
                Left = 7
                Top = 12
                Width = 183
                Height = 179
                BorderStyle = bsNone
                DataField = 'FOTO'
                DataSource = DsCadastro
                Enabled = False
                Stretch = True
                TabOrder = 0
                OnClick = DBImageFOTOInternoClick
              end
              object DBEdit24: TDBEdit
                Left = 196
                Top = 120
                Width = 276
                Height = 21
                DataField = 'OUTRO_NOME'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 7
              end
              object DBEdit25: TDBEdit
                Left = 477
                Top = 120
                Width = 171
                Height = 21
                DataField = 'VULGO'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 8
              end
              object DBEdit35: TDBEdit
                Left = 168
                Top = 220
                Width = 297
                Height = 21
                DataField = 'NOME_SOCIAL'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 14
              end
              object DBComboBox3: TDBComboBox
                Left = 469
                Top = 219
                Width = 180
                Height = 21
                Style = csDropDownList
                DataField = 'ORIENTACAO_SEXUAL'
                DataSource = DsCadastro
                Enabled = False
                Items.Strings = (
                  'HOMOSEXUAL'
                  'BISSEXUAL'
                  'HETEROSEXUAL')
                TabOrder = 15
              end
              object DBEdit86: TDBEdit
                Left = 196
                Top = 72
                Width = 114
                Height = 21
                DataField = 'NUMERO_INFOPEN'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 3
              end
              object dbrgrpST: TDBRadioGroup
                Left = 420
                Top = 52
                Width = 113
                Height = 40
                Caption = 'Reinser'#231#227'o'
                Columns = 2
                DataField = 'REINCERSAO'
                DataSource = DsCadastro
                Enabled = False
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 5
                Values.Strings = (
                  'S'
                  'N')
              end
              object DBEdit4: TDBEdit
                Left = 197
                Top = 174
                Width = 76
                Height = 21
                DataField = 'DATA_ENTRADA'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 9
              end
              object DBEdit20: TDBEdit
                Left = 282
                Top = 174
                Width = 79
                Height = 21
                DataField = 'DATA_PRISAO'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 10
              end
              object DBEdit29: TDBEdit
                Left = 472
                Top = 173
                Width = 177
                Height = 21
                DataField = 'CI'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 12
              end
              object DBComboBox2: TDBComboBox
                Left = 8
                Top = 221
                Width = 153
                Height = 21
                Style = csDropDownList
                DataField = 'TIPOREGIME'
                DataSource = DsCadastro
                Enabled = False
                Items.Strings = (
                  'Aberto'
                  'Fechado'
                  'Semiaberto')
                TabOrder = 13
              end
              object DBEditpermanencia: TDBEdit
                Left = 367
                Top = 174
                Width = 99
                Height = 21
                DataField = 'DATA_PERMANENCIA'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 11
              end
              object DBLookupComboBoxFACCAO: TDBLookupComboBox
                Left = 367
                Top = 308
                Width = 265
                Height = 21
                DataField = 'ID_FACCAO'
                DataSource = DsCadastro
                Enabled = False
                KeyField = 'ID_FACCAO'
                ListField = 'FACCAO'
                ListSource = DsFaccao
                TabOrder = 21
              end
              object DBEdit8: TDBEdit
                Left = 10
                Top = 395
                Width = 65
                Height = 21
                DataField = 'TEMPO_CONSOLIDADO_ANO'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 24
              end
              object DBEdit31: TDBEdit
                Left = 77
                Top = 395
                Width = 65
                Height = 21
                DataField = 'TEMPO_CONSOLIDADO_MES'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 25
              end
              object DBEdit33: TDBEdit
                Left = 144
                Top = 395
                Width = 65
                Height = 21
                DataField = 'TEMPO_CONSOLIDADO_DIA'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 26
              end
              object DBComboBox5: TDBComboBox
                Left = 219
                Top = 395
                Width = 265
                Height = 21
                Style = csDropDownList
                DataField = 'REGIME_ATUAL'
                DataSource = DsCadastro
                Enabled = False
                Items.Strings = (
                  'Aberto'
                  'Fechado'
                  'Mandado de Pris'#227'o C'#237'vel'
                  'Medida de Seguran'#231'a'
                  'Medida de Tratamento'
                  'Provis'#243'rio'
                  'Semi-Aberto Sem Sa'#237'da'
                  'Semi-Aberto Com Trabalho Externo'
                  'Semi-Aberto Com Sa'#237'da'
                  'Semi-Aberto Com Trabalho Concedido'
                  'Semi-Aberto Com Trabalho Concedido e Sa'#237'da'
                  'Semi-Aberto Com Trabalho e Sa'#237'da'
                  'Tempor'#225'rio'
                  'N'#227'o Informado')
                TabOrder = 27
              end
              object DBComboBox4: TDBComboBox
                Left = 493
                Top = 394
                Width = 164
                Height = 21
                Style = csDropDownList
                DataField = 'GRAU_PERICULOSIDADE'
                DataSource = DsCadastro
                Enabled = False
                Items.Strings = (
                  'Nivel 1'
                  'Nivel 1-A'
                  'Nivel 2'
                  'Nivel 2-A'
                  'Nivel 3'
                  'Nivel 3-A'
                  'Nivel 4'
                  'Nivel 4-A'
                  'Nivel 5'
                  'Nivel 5-A')
                TabOrder = 28
              end
            end
            object TabSheetDadosGerais: TTabSheet
              Caption = 'Dados Gerais'
              ImageIndex = 1
              object Label11: TLabel
                Left = 24
                Top = 56
                Width = 23
                Height = 13
                Caption = 'M'#195'E'
                Enabled = False
                FocusControl = DBEdit1
              end
              object Label19: TLabel
                Left = 297
                Top = 39
                Width = 15
                Height = 13
                Caption = 'Pai'
                Enabled = False
                FocusControl = DBEdit5
              end
              object Label21: TLabel
                Left = 297
                Top = 79
                Width = 68
                Height = 13
                Caption = 'Nacionalidade'
                Enabled = False
              end
              object Label22: TLabel
                Left = 24
                Top = 135
                Width = 29
                Height = 13
                Caption = 'RA'#199'A'
                Enabled = False
              end
              object Label23: TLabel
                Left = 10
                Top = 157
                Width = 61
                Height = 13
                Caption = 'Escolaridade'
                Enabled = False
              end
              object Label20: TLabel
                Left = 9
                Top = 79
                Width = 60
                Height = 13
                Caption = 'Naturalidade'
                Enabled = False
              end
              object Label37: TLabel
                Left = 9
                Top = 196
                Width = 38
                Height = 13
                Caption = 'Religi'#227'o'
                Enabled = False
              end
              object Label13: TLabel
                Left = 321
                Top = 196
                Width = 43
                Height = 13
                Caption = 'Profiss'#227'o'
                Enabled = False
              end
              object SpeedButton4: TSpeedButton
                Left = 269
                Top = 94
                Width = 23
                Height = 22
                Caption = '...'
                Enabled = False
                Flat = True
              end
              object SpeedButton5: TSpeedButton
                Left = 587
                Top = 94
                Width = 23
                Height = 22
                Caption = '...'
                Enabled = False
                Flat = True
              end
              object SpeedButton6: TSpeedButton
                Left = 222
                Top = 134
                Width = 23
                Height = 22
                Caption = '...'
                Enabled = False
                Flat = True
              end
              object SpeedButton7: TSpeedButton
                Left = 587
                Top = 173
                Width = 23
                Height = 22
                Caption = '...'
                Enabled = False
                Flat = True
              end
              object SpeedButton9: TSpeedButton
                Left = 587
                Top = 209
                Width = 23
                Height = 22
                Caption = '...'
                Enabled = False
                Flat = True
              end
              object Label5: TLabel
                Left = 122
                Top = -1
                Width = 16
                Height = 13
                Caption = 'RG'
                Enabled = False
                FocusControl = DBEdit9
              end
              object Label24: TLabel
                Left = 222
                Top = -1
                Width = 20
                Height = 13
                Caption = 'CPF'
                Enabled = False
                FocusControl = DBEdit19
              end
              object Label25: TLabel
                Left = 373
                Top = -1
                Width = 55
                Height = 13
                Caption = 'Estado Civil'
                Enabled = False
              end
              object Label39: TLabel
                Left = 513
                Top = -1
                Width = 27
                Height = 13
                Caption = 'Altura'
                Enabled = False
                FocusControl = DBEdit26
              end
              object Label47: TLabel
                Left = 569
                Top = -1
                Width = 24
                Height = 13
                Caption = 'Peso'
                Enabled = False
                FocusControl = DBEdit27
              end
              object Label52: TLabel
                Left = 9
                Top = -1
                Width = 82
                Height = 13
                Caption = 'Data Nascimento'
                Enabled = False
                FocusControl = DBEdit28
              end
              object Label63: TLabel
                Left = 250
                Top = 119
                Width = 66
                Height = 13
                Caption = 'Cor dos Olhos'
                Enabled = False
                FocusControl = DBEdit32
              end
              object Label64: TLabel
                Left = 411
                Top = 118
                Width = 77
                Height = 13
                Caption = 'Cor dos Cabelos'
                Enabled = False
                FocusControl = DBEdit34
              end
              object Label28: TLabel
                Left = 9
                Top = 232
                Width = 46
                Height = 13
                Caption = 'Endere'#231'o'
                Enabled = False
                FocusControl = DBEdit10
              end
              object Label30: TLabel
                Left = 73
                Top = 272
                Width = 27
                Height = 13
                Caption = 'Bairro'
                Enabled = False
                FocusControl = DBEdit12
              end
              object Label31: TLabel
                Left = 9
                Top = 313
                Width = 64
                Height = 13
                Caption = 'Complemento'
                Enabled = False
                FocusControl = DBEdit13
              end
              object Label32: TLabel
                Left = 489
                Top = 313
                Width = 21
                Height = 13
                Caption = 'CEP'
                Enabled = False
                FocusControl = DBEdit14
              end
              object Label33: TLabel
                Left = 9
                Top = 351
                Width = 33
                Height = 13
                Caption = 'Cidade'
                Enabled = False
              end
              object Label34: TLabel
                Left = 489
                Top = 351
                Width = 42
                Height = 13
                Caption = 'Telefone'
                Enabled = False
                FocusControl = DBEdit16
              end
              object Label35: TLabel
                Left = 377
                Top = 391
                Width = 37
                Height = 13
                Caption = 'Contato'
                Enabled = False
                FocusControl = DBEdit17
              end
              object SpeedButton11: TSpeedButton
                Left = 455
                Top = 365
                Width = 23
                Height = 22
                Hint = 'Cadastrar Cidade'
                Caption = '...'
                Enabled = False
                Flat = True
                ParentShowHint = False
                ShowHint = True
              end
              object lbl2: TLabel
                Left = 9
                Top = 391
                Width = 22
                Height = 13
                Caption = 'Pa'#237's'
                Enabled = False
              end
              object btn1: TSpeedButton
                Left = 343
                Top = 406
                Width = 23
                Height = 22
                Caption = '...'
                Enabled = False
                Flat = True
              end
              object Label6: TLabel
                Left = 9
                Top = 272
                Width = 37
                Height = 13
                Caption = 'Numero'
                Enabled = False
                FocusControl = DBEdit7
              end
              object Label7: TLabel
                Left = 9
                Top = 119
                Width = 26
                Height = 13
                Caption = 'Ra'#231'a'
                Enabled = False
              end
              object Label9: TLabel
                Left = 9
                Top = 40
                Width = 21
                Height = 13
                Caption = 'M'#227'e'
                Enabled = False
                FocusControl = DBEdit1
              end
              object DBEdit1: TDBEdit
                Left = 9
                Top = 55
                Width = 281
                Height = 21
                DataField = 'MAE'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 6
              end
              object DBEdit5: TDBEdit
                Left = 297
                Top = 55
                Width = 313
                Height = 21
                DataField = 'PAI'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 7
              end
              object DBLookupComboBoxIDNATURALIDADE: TDBLookupComboBox
                Left = 9
                Top = 95
                Width = 257
                Height = 21
                DataField = 'IDNATURALIDADE'
                DataSource = DsCadastro
                Enabled = False
                KeyField = 'ID_CIDADE'
                ListField = 'CIDADE'
                ListSource = DM.DSCIDADE
                TabOrder = 8
              end
              object DBLookupComboBoxIDNACIONALIDADE: TDBLookupComboBox
                Left = 297
                Top = 95
                Width = 281
                Height = 21
                DataField = 'IDNACIONALIDADE'
                DataSource = DsCadastro
                Enabled = False
                KeyField = 'ID_NACIONALIDADE'
                ListField = 'NACIONALIDADE'
                ListSource = DM.DSNACIONALIDADE
                TabOrder = 9
              end
              object DBLookupComboBoxIDRACA: TDBLookupComboBox
                Left = 9
                Top = 134
                Width = 209
                Height = 21
                DataField = 'IDRACA'
                DataSource = DsCadastro
                Enabled = False
                KeyField = 'ID_RACA'
                ListField = 'RACA'
                ListSource = DM.DSRACA
                TabOrder = 10
              end
              object DBLookupComboBoxIDESCOLARIDADE: TDBLookupComboBox
                Left = 9
                Top = 173
                Width = 569
                Height = 21
                DataField = 'IDESCOLARIDADE'
                DataSource = DsCadastro
                Enabled = False
                KeyField = 'ID_ESCOLARIDADE'
                ListField = 'ESCOLARIDADE'
                ListSource = DM.DSESCOLARIDADE
                TabOrder = 13
              end
              object DBLookupComboBoxIDPROFISSAO: TDBLookupComboBox
                Left = 321
                Top = 212
                Width = 257
                Height = 21
                DataField = 'IDPROFISSAO'
                DataSource = DsCadastro
                Enabled = False
                KeyField = 'ID_PROFISSAO'
                ListField = 'PROFISSAO'
                ListSource = DM.DsProfissao
                TabOrder = 15
              end
              object DBEdit9: TDBEdit
                Left = 122
                Top = 15
                Width = 98
                Height = 21
                DataField = 'RG'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 1
              end
              object DBEdit19: TDBEdit
                Left = 223
                Top = 15
                Width = 147
                Height = 21
                DataField = 'CPF'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 2
              end
              object DBComboBox1: TDBComboBox
                Left = 373
                Top = 15
                Width = 137
                Height = 21
                Style = csDropDownList
                DataField = 'ESTADO_CIVIL'
                DataSource = DsCadastro
                Enabled = False
                Items.Strings = (
                  'Amasiado'
                  'Casado'
                  'Divorciado'
                  'Separado Judicialmente'
                  'Solteiro'
                  'Vi'#250'vo'
                  'Uni'#227'o Est'#225'vel'
                  'N'#227'o Declarado')
                TabOrder = 3
              end
              object DBEdit26: TDBEdit
                Left = 513
                Top = 15
                Width = 49
                Height = 21
                DataField = 'ALTURA'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 4
              end
              object DBEdit27: TDBEdit
                Left = 569
                Top = 15
                Width = 41
                Height = 21
                DataField = 'PESO'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 5
              end
              object DBEdit28: TDBEdit
                Left = 9
                Top = 15
                Width = 105
                Height = 21
                DataField = 'DATA_NASCIMENTO'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 0
              end
              object DBEdit32: TDBEdit
                Left = 250
                Top = 134
                Width = 158
                Height = 21
                DataField = 'COR_OLHOS'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 11
              end
              object DBEdit34: TDBEdit
                Left = 410
                Top = 134
                Width = 200
                Height = 21
                DataField = 'COR_CABELOS'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 12
              end
              object DBEdit10: TDBEdit
                Left = 9
                Top = 248
                Width = 600
                Height = 21
                DataField = 'ENDERECO'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 16
              end
              object DBEdit11: TDBEdit
                Left = 9
                Top = 288
                Width = 57
                Height = 21
                DataField = 'NUMERO'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 17
              end
              object DBEdit12: TDBEdit
                Left = 73
                Top = 288
                Width = 537
                Height = 21
                DataField = 'BAIRRO'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 18
              end
              object DBEdit13: TDBEdit
                Left = 9
                Top = 329
                Width = 465
                Height = 21
                DataField = 'COMPLEMENETO'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 19
              end
              object DBEdit14: TDBEdit
                Left = 489
                Top = 329
                Width = 121
                Height = 21
                DataField = 'CEP'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 20
              end
              object DBEdit16: TDBEdit
                Left = 489
                Top = 367
                Width = 121
                Height = 21
                DataField = 'FONE'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 22
              end
              object DBEdit17: TDBEdit
                Left = 377
                Top = 407
                Width = 234
                Height = 21
                DataField = 'CONTATO'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 24
              end
              object DBLookupComboBoxIDCIDADE: TDBLookupComboBox
                Left = 9
                Top = 367
                Width = 441
                Height = 21
                DataField = 'IDCIDADE'
                DataSource = DsCadastro
                Enabled = False
                KeyField = 'ID_CIDADE'
                ListField = 'CIDADE'
                ListSource = DM.DSCIDADE
                TabOrder = 21
              end
              object DBLookupComboBoxIDNACIONALIDADE1: TDBLookupComboBox
                Left = 9
                Top = 407
                Width = 331
                Height = 21
                DataField = 'IDPAIS_ENDERECO'
                DataSource = DsCadastro
                Enabled = False
                KeyField = 'ID_NACIONALIDADE'
                ListField = 'NACIONALIDADE'
                ListSource = DM.DsPais
                TabOrder = 23
              end
              object DBComboBoxReligiao1: TDBComboBox
                Left = 9
                Top = 212
                Width = 281
                Height = 21
                Style = csDropDownList
                DataField = 'RELIGIAO'
                DataSource = DsCadastro
                Enabled = False
                Items.Strings = (
                  'Adventista'
                  'Ateu'
                  'Budista'
                  'Cat'#243'lica'
                  'Evang'#233'lica'
                  'Esp'#237'rita'
                  'Mul'#231'umano'
                  'N'#227'o Informada'
                  'Sem Religi'#227'o'
                  'Outras')
                TabOrder = 14
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        ExplicitHeight = 498
        inherited PanelLocalizaConsulta: TPanel
          Height = 42
          ExplicitHeight = 42
          DesignSize = (
            821
            42)
          inherited EditLocalizar: TEdit
            Left = 216
            Top = 6
            Width = 321
            Height = 31
            TabOrder = 2
            ExplicitLeft = 216
            ExplicitTop = 6
            ExplicitWidth = 321
            ExplicitHeight = 31
          end
          object RadioGroupStatus: TRadioGroup
            Left = 524
            Top = -2
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
            ExplicitLeft = 520
          end
          object chkSoundex: TCheckBox
            Left = 541
            Top = 10
            Width = 77
            Height = 17
            Caption = 'Fon'#233'tica'
            TabOrder = 3
            Visible = False
            OnClick = chkSoundexClick
          end
          object RadioGroupTipoLocalizar: TRadioGroup
            Left = 54
            Top = -2
            Width = 155
            Height = 34
            Columns = 2
            ItemIndex = 1
            Items.Strings = (
              'Prontu'#225'rio'
              'Nome')
            TabOrder = 0
            OnClick = RadioGroupTipoLocalizarClick
          end
        end
        inherited PanelConsulta: TPanel
          Top = 42
          Height = 456
          ExplicitTop = 42
          ExplicitHeight = 455
          inherited DBGridConsulta: TDBGrid
            Height = 454
            DataSource = DsConsulta
            Columns = <
              item
                Expanded = False
                FieldName = 'NOME_INTERNO'
                Title.Caption = 'Nome do Interno'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SIGLA'
                Title.Caption = 'Sigla'
                Width = 53
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PAVILHAO'
                Title.Caption = 'Pavilh'#227'o'
                Width = 94
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SOLARIO'
                Title.Caption = 'Solario'
                Width = 83
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CELA'
                Title.Caption = 'Cela'
                Width = 62
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATUS'
                Title.Caption = 'Status'
                Width = 62
                Visible = True
              end>
          end
          object DBCtrlGridConsulta: TDBCtrlGrid
            Left = 1
            Top = 1
            Width = 819
            Height = 454
            Align = alClient
            DataSource = DsConsulta
            PanelHeight = 90
            PanelWidth = 802
            TabOrder = 1
            RowCount = 5
            SelectedColor = clSilver
            OnDblClick = DBGridConsultaDblClick
            ExplicitWidth = 815
            ExplicitHeight = 453
            object LabelNome: TLabel
              Left = 82
              Top = 4
              Width = 79
              Height = 13
              Caption = 'Nome do Interno'
              OnDblClick = DBGridConsultaDblClick
            end
            object LabelPavilhao: TLabel
              Left = 165
              Top = 59
              Width = 41
              Height = 13
              Caption = 'Pavilh'#227'o'
              OnDblClick = DBGridConsultaDblClick
            end
            object LabelGaleria: TLabel
              Left = 317
              Top = 59
              Width = 33
              Height = 13
              Caption = 'Galeria'
              OnDblClick = DBGridConsultaDblClick
            end
            object LabelSolario: TLabel
              Left = 449
              Top = 59
              Width = 32
              Height = 13
              Caption = 'Solario'
              OnDblClick = DBGridConsultaDblClick
            end
            object LabelCela: TLabel
              Left = 595
              Top = 58
              Width = 21
              Height = 13
              Caption = 'Cela'
              OnDblClick = DBGridConsultaDblClick
            end
            object Label73sigla: TLabel
              Left = 82
              Top = 59
              Width = 23
              Height = 13
              Caption = 'Sigla'
              OnDblClick = DBGridConsultaDblClick
            end
            object Label74vulgo: TLabel
              Left = 449
              Top = 4
              Width = 27
              Height = 13
              Caption = 'Vulgo'
              OnDblClick = DBGridConsultaDblClick
            end
            object DBTextNomeInterno: TDBText
              Left = 82
              Top = 17
              Width = 360
              Height = 15
              Color = clBtnFace
              DataField = 'NOME_INTERNO'
              DataSource = DsConsulta
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
              OnDblClick = DBGridConsultaDblClick
            end
            object DBTextVulgo: TDBText
              Left = 449
              Top = 17
              Width = 244
              Height = 15
              Color = clBtnFace
              DataField = 'VULGO'
              DataSource = DsConsulta
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
              OnDblClick = DBGridConsultaDblClick
            end
            object DBTextSigla: TDBText
              Left = 82
              Top = 72
              Width = 78
              Height = 15
              Color = clBtnFace
              DataField = 'SIGLA'
              DataSource = DsConsulta
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
              OnDblClick = DBGridConsultaDblClick
            end
            object DBTextPavilhao: TDBText
              Left = 165
              Top = 72
              Width = 148
              Height = 15
              Color = clBtnFace
              DataField = 'PAVILHAO'
              DataSource = DsConsulta
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
              OnDblClick = DBGridConsultaDblClick
            end
            object DBTextGaleria: TDBText
              Left = 317
              Top = 72
              Width = 125
              Height = 15
              Color = clBtnFace
              DataField = 'GALERIA'
              DataSource = DsConsulta
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
              OnDblClick = DBGridConsultaDblClick
            end
            object DBTextSolario: TDBText
              Left = 449
              Top = 72
              Width = 138
              Height = 15
              Color = clBtnFace
              DataField = 'SOLARIO'
              DataSource = DsConsulta
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
              OnDblClick = DBGridConsultaDblClick
            end
            object DBTextCela: TDBText
              Left = 594
              Top = 72
              Width = 99
              Height = 15
              Color = clBtnFace
              DataField = 'CELA'
              DataSource = DsConsulta
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
              OnDblClick = DBGridConsultaDblClick
            end
            object Label75facacao: TLabel
              Left = 449
              Top = 31
              Width = 36
              Height = 13
              Caption = 'Fac'#231#227'o'
              OnDblClick = DBGridConsultaDblClick
            end
            object DBTextFaccao: TDBText
              Left = 449
              Top = 44
              Width = 244
              Height = 15
              Color = clBtnFace
              DataField = 'FACCAO'
              DataSource = DsConsulta
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
              OnDblClick = DBGridConsultaDblClick
            end
            object DBTextEstado: TDBText
              Left = 82
              Top = 44
              Width = 360
              Height = 15
              Color = clBtnFace
              DataField = 'ESTADO_SOLICITANTE'
              DataSource = DsConsulta
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
              OnDblClick = DBGridConsultaDblClick
            end
            object LabelProced: TLabel
              Left = 82
              Top = 31
              Width = 128
              Height = 13
              Caption = 'Estado Solicitante da Vaga'
              OnDblClick = DBGridConsultaDblClick
            end
            object Image1: TImage
              Left = 28
              Top = 47
              Width = 34
              Height = 34
              Picture.Data = {
                055449636F6E0000010006003030000001000800A80E00006600000020200000
                01000800A80800000E0F0000101000000100080068050000B617000030300000
                01002000A82500001E1D00002020000001002000A8100000C642000010100000
                01002000680400006E5300002800000030000000600000000100080000000000
                800A00000000000000000000000100000000000000000000FFFFFF0001010100
                040404001818180012141400060606001A1A1A00101010001212120010121200
                02020200141414000A0A0A00161616000E0E0E00080808000C0C0C000C0E0E00
                1C1C1C00262626004E4E4E00525252004040400030303000363636002A2A2A00
                2E2E2E0042424200222222002C2C2C00282828004A4A4A00464646003C3C3C00
                4444440032323200646464007C7E7E00545656000E1010003E3E3E0024242400
                3838380020202000626262006E7070007E808000282A2A001E1E1E003A3A3A00
                484848004E505000444646003434340062646400545454004C4C4C0066666600
                5A5A5A005C5C5C0068686800585858006A6A6A00565656001618180050505000
                040606002A2C2C00303232000A08080020222200E0E0E000F8FAFA00FAFCFC00
                F8FCFC00FCFCFC00888A8A00E2E2E200A8AAAA00AEB0B000EAEAEA00E4E4E400
                96989800F4F4F400F0F4F200F0F4F400F2F4F400E8E8E800D4D6D600F0F0F000
                FCFEFE00FEFEFE0088888800EAECEC00B6B8B800DEE2E200EEF0F000BABCBE00
                B2B4B400B0B0B000666868008C8E8E00686A6A00888A8C00ACACAE00B8BCBC00
                B8BABA00B4B6B800EAEEEE0050525200B4B4B600BABCBC00BCBEC000B0B2B200
                5E6060001C1E1E00CED2D200484A4A00B4B6B600D0D2D2007A7A7C0060626200
                424244005C5E5E008A8A8A002A2A2C00181A1A0010101200AAACAC0092949400
                828484004C4E4C0004040600D6DADA003C3E3E00BEC0C0005A5C5C00F0F2F200
                26262800DEE0E000F4F6F6006A6C6C000000020070727200E0E4E400B6BABA00
                464848007A7C7C0090909200ECF0F000E8EAEA00222424009496980050505200
                A8AAAC0080828200ACAEAE0036363800CED0D000787A7A00D8DADA007C7C7C00
                606060008A8C8C00CCCED000ECEEEE00989A9A0074767600AEB0B200FAFEFE00
                A6A8A800E2E4E400FAFAFA003E4040002C2C2E000E0E100068686A009C9C9C00
                D6D8D800A8A8A800A4A6A60032343400ACAEB000B2B4B600C6C8CA00A2A4A400
                2E303000E0E2E20034323200E6E8E800C8CACA00C6C6C600C8C8C800C0C0C000
                B8BABC009496960084868600E4E6E600EEEEEE006E6E7000ECECEC009A9C9C00
                F2F2F200F6F8F800C0C2C200CACCCC002E2E30002C2E2E00383A3A0024262600
                404042003638380062626400545456003E3E4000202022001E20200008080A00
                1C1C1E0072727200080A0A000C0A0A0034363600050505001919190013141400
                070707001B1B1B0013131300111212000303030012131300101111000B0B0B00
                11111100171717000F0F0F0009090900151515000D0E0E000A0B0B000C0D0D00
                4F4F4F00414141003131310037373700141515002F2F2F000D0D0D0042434300
                232323002929290027272700434343004B4B4B00020202020202020202020202
                02020202020202020202020010ED000002020202020202020202020202020202
                0202020002020202020202020202020202020202020202020202020006E4E700
                0000000202020202020202020202020202020200020202020202020202020202
                0202020202020202020000000F0D2C0F030B0000020202020202020202020202
                0202020002020202020202020202020202020202020202020000EA08EA0EF822
                0C060B0000000202020202020202020202020200020202020202020202020202
                0202020202020002EEED09E7FB1D0E19221110E7000002020202020202020202
                020202000202020202020202020202020202020202020000E10F00E4F52C2C09
                E5E4EAEE03000002020202020202020202020200020202020202020202020202
                02020202020202000008061EF814EB00000D1311EAE700020202020202020202
                02020200020202020202020202020202020202020202020200020C33F6240D00
                00001D07EDE30002020202020202020202020200020202020202020202020202
                020202020202020200020C3B4024FC000000191DEF1000020202020202020202
                020202000202020202020202020202020202020202020200001D13223A1719F5
                1D2AF62AE4E70002020202020202020202020200020202020202020202020202
                02020202020202000EF51318DC33221B1A3121390F0000020202020202020202
                0202020002020202020202020202020202020202020202001B24FB2C07FE4242
                212132FDEAE00000000000000202020202020200000000000000000002000000
                0000000202000000F618242AEAF91F213B391DE7072C1A0D03E30B0000000000
                00020200E70000000000000000E70000E700000000020B0036FE33F80000001E
                2431101AFDF9EE181C19310000000200000002000918BB1BF81BF83100E1F609
                11322C000000141BFF90D3181A141816332BF625381E1E27241DAE1AE7024724
                2C00000002265B4A4A4A4A58A0E359C60DC4C73C020320C7BA2EA6B21B241D42
                163EAC54CC8DCC4CCD10CE48EC006E5EC933000000244FABABB59D4C01E46301
                361A0158506FB901BA180191361919294021BE019FBFC0BFC2FC6A012100C401
                01C5000000000000000000A701209001A80072015B564A01ABE4AC4A422B171B
                ED1D625C3F17222A1CFEB2017C04B3015C6A000000062A6E3D3D3C81019C2901
                5000F6019F2A790182007701A17878756431260150253D1EEDEC7A01A4210188
                9F6110000002900101010101013D0C4A91E7006B013367019400950161868697
                015034010101011500002A4A6A68014053011E0000008301701515151700E086
                01FB0029018826013F0B3C015F00000E5E55FD5401535D19000011785E488DF1
                8E013C00000020015F0000000000004F0116000B780178012D0CE4792D101000
                6301FE7C7D421E070A00008101016300210182000200EB61016250636364293D
                016600E53F01010125E50668696A6A5F6D012E166F626A715F72332E01017300
                315B75000200002D48494A4A4A4C4D074E4F001F075051523E0C005354555657
                585936155A5B564A01014D2B5A5E2C00005F60E1020200000608EBEBEBEBED00
                0F13E533140919EE1314000B0D0D0D0DEE020000EA2B25253C15162BFB1D1D00
                00EEE5E00202020000000000000000EA1E2A13FA1D11F800F936000000000000
                00000000E41B0915333217EF000024EE0000000002020202000000000000E72B
                1B2C111819EAFE02002BED0002020202020200F939042AFDEBE4E103EA020008
                030002000202000003E1ECE5EE00E8FE14EC000C1C0633E100E5F4E000000200
                00000342FCFC2C22EB1D0E0EE3110B06E902000002000BE51E1DEB11E6F21D21
                1BEF000220E11F21000031F4E4E70000060719211FE439E3030700E3EF0DEEE0
                06E60000000604FBF81DEFEDEE06E5201B1AF9E723331133FD00000F242B24F5
                F5311D3619FE18001DEE0000EC11EDEA0010F90000EAE9242AE50002ED0D0019
                20FD1E1F2C3F1AE0201A00000003EAEE020031213B2BE40E070000000408E50F
                E000EBE0E31109221AE0000011091006FE39223618213CE702F4F40E00000000
                000D173F20F93EE100000000FDF904EFE700EAF90B110C211E1300E004E107E7
                03142BF614E71427F90013F41CF6F524F624143922173EF80000E71B04E1EC13
                0000080D00100D2222FDFC1DFB321D0F0600000000EAEA1E3BF500000BEBEC09
                E000003C253DF9F521172213E5FC310C00020C02000B0F0E2021F62216F507EF
                08EEE700EC1DE1EB0E1C15221FE4E50931182B243A1B161A090C091AF5131A03
                EBE5100002000B10E4F42B15172C0D02E3080608F81D13F9EEE0091720392129
                F81306000C25FEF421F42B1BF8190D0FE7000000020200000010E7241A310000
                0008EA1B3614E30000EA241FEC0811EE0000000000062125F321F33836111102
                0002020002020202000DEA29181F000000E1ED22F6FC02000004FEF5070000E0
                F909000002000014211BFC0DE3E0000002020200020202020006EE24FEFDFD07
                2C07E1F6FE1FFB06103233321000131434F422E0000FFD140000000000000202
                0202020002020202000D061115171A1B2AFCFBEDFF2BFD1E1DF62D170700E02E
                2F092A2BF81AECE70000020202020202020202000202020200E50600E5FEFF21
                221BEA0013F323F6242225241F14132226270810060000000202020202020202
                020202000202020200F7E40000ED1AF8EB00000200F9F6FAF50CFBF3F61EFC1D
                17FD00000002020202020202020202020202020002020202000DE50E0EEA0006
                EF10000200E0F1F20FED0614F316F4F5F60D0002020202020202020202020202
                0202020002020202020000E706000000ECED000200EB00000BEEEF11F013EF03
                E100000202020202020202020202020202020200020202020202020000000002
                E8E3060000E90300000000000000EAEBE0000202020202020202020202020202
                020202000202020202020202020200E3E408E5E60609E300020202020200E70C
                0200020202020202020202020202020202020200020202020202020202020200
                000000E0E1E20000020202020202000000020202020202020202020202020202
                0202020002020202020202020202020202020200030200020202020202020202
                0202020202020202020202020202020202020200000000000000000000000000
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
                0000000000000000000000000000000000000000280000002000000040000000
                0100080000000000800400000000000000000000000100000000000000000000
                FFFFFF0001010100020202000C0C0C00030303000B0B0B00080808000D0D0D00
                1212120007070700131313000A0A0A0009090900040404001010100010111100
                05050500151515003838380032323200212222001B1B1B001A1A1A003B3B3B00
                363636001F1F1F003F3F3F003E3E3E0033333300373838003D3D3D001E1E1E00
                49494900343434000F0F0F0048484800373737002C2C2C004F4F4F0074767600
                4F5050001D1D1D002121210042424200191919003C3C3C000606060043434300
                030202001112120014141400171717002E2E2E00181818003131310042434300
                55555500454545002D2D2D00080909004C4C4C002B2B2B003939390025252500
                0E0E0E00525252004646460035353500444343002F2F2F001616160024242400
                6E6E6E004040400023232300303030002929290020202000222222004B4B4B00
                414141001C1C1C00111111004A4A4A002A2A2A00545454002425250002030300
                18191900272727000C0D0D001213130044444400646464006262620016171700
                88898900F4F5F500EDF0F000F1F1F100E5E7E7003A3B3B00E1E3E30091929200
                F0F0F0009092920057595900E2E2E200EAEDED00E9EBEB00E3E3E3003A3A3B00
                BCBEBE00EFEFEF00F3F6F600F7F7F7008081810096979700EFF0F000DFE2E200
                0F1010007172720013141400232324005D5E5E00AAABAB006769690064656500
                595B5B00555657008C8E8E005E5E5F00444546003334340013131400D9DCDC00
                313232003E3F3F00F9FCFC0037383900B7B8B8009A9B9B00838383008F919100
                DEE1E10093959500D1D3D300ACAFAF00B3B6B500F5F8F800A6A8A70098999900
                E5E8E80074757500CBCACA00E6E8E8009293930078797A00CED1D1000F0F1000
                6D6F70009495950097999A006D6E6E00A3A5A500C0C2C200FEFFFF00E3E3E400
                E1E3E400DADBDB0053545400B1B3B300D7D8D800939494003F40400062636300
                E1E4E40071727300E8EBEB00D4D6D7008B8D8D00202121002223230037373800
                5B5C5D00F6F9F9004647470070727200E4E7E700C1C3C3006162620026262600
                F8FAFA00B3B4B4005C5D5D006363630051515100AFB0B000D3D5D400F5F7F800
                06060700BDBFBF00ECEFEF00F2F2F200B3B5B50034343500E6E8E900DCDEDE00
                6F7070001B1C1C009395960098999A00C8CACA004F4E4E005F606000E8E9EA00
                F6F6F600676767009EA0A000999A9A00A8ABAB00E8E8E8001D1D1E00191A1A00
                1A1B1B000E0F0F000E0E0F0061626300424141002B2C2C003131320047484800
                3E3E3F002E2F3000161617000D0E0E0066666600282828000A0B0B00090A0A00
                FFFFFF00E1000000FFFFFF00E2000000FFFFFF00E3000000FFFFFF00E4000000
                FFFFFF0001010100010101000101010001010100010101000101010002020202
                020202020202020202020200080E000002020202020202020202020202020202
                0202020202020202020200000609050000000202020202020202020202020202
                020202020202020202002FEF415A1DF000000002020202020202020202020202
                02020202020202020008040D5552EE520A030000020202020202020202020202
                02020202020202020005114F1D12000A340C0200020202020202020202020202
                02020202020202020200033A242A00004D120E00020202020202020202020202
                020202020202020200021713ED444B171F2A0000020202020202020202020202
                02020202020202020034462B303D3A182C0B0300000000020202020200000000
                0000000000000002002A3F5A0047212408083653121100000000000209DFE0E1
                590079E2E2E10000E322E44C0B0FE5E6E7E859E91EEA0702EBEC0000C9CA72CB
                CCCDCECF4CD0D1D2D3BED4D5464DD6D7D8696DD9DADBDC00DDDE470000B65AB7
                B801B9BABBBC01BD01BEBF01AF4C5AC0C1C2C3C4C5C6C732C801BB0000A0A1A2
                A3019A71980001A4A5A687A7A8A9AAABACADAEAF2FB0B1B2B3B4B500008C018D
                8E8F23909100929394950096974A98999A019B27007B6D9C9D9E9F000079017A
                7B7C607D010E1701017E057F801581018283848586878801898A8B0C00006162
                63646566674C0568696A026B6C6D6E6F70717273747576770008783D02000004
                0B5C1200362B18122B2317000808040300235D5E5F272B206000060402020000
                00000036350922164F003B0000000000003B345A4F2B02005311000200000E59
                47410E3F26002A4025052D550500000E3B25405A0C0F4107025B0500000C573B
                53040A134408043A481D00343B404B2A4644510A0B000D090C0506580E233736
                002F2F095419555646341D0E000503001C5614520D0007340905054111231F4E
                050C202F47132247134E09353E4F4F1A185051442F04203452020353000A3745
                461D25340E0000060F1F191212470B0948494A4B4C4D2A40162F410A00023C22
                1C3D2B2F0C0A333E1211362E303F3B40411642433F44253E080A0E0202000000
                33193400030F1935020036373307020000000C38393A3B040300000202020000
                0F2C2609122D2E25092F1830310E1E181A0D322D0D0000000002020202020007
                0220211B221A2324252627270B0428292A2B0B05000002020202020202020006
                120016141703000F18191A1B1C1D1E1F00000000020202020202020202020003
                060F020010020005051106121314150400020202020202020202020202020200
                000000020B0C020D0E000202000E040000020202020202020202020202020202
                02020005060708090500000000030A0002020202020202020202020202020202
                0202020000000304000202020200000202020202020202020202020200000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000028000000
                1000000020000000010008000000000040010000000000000000000000010000
                0000000000000000FFFFFF000101010004040400090909000203030003030300
                060606000505050007070700101111000A0B0B00020202000C0C0C001E1E1E00
                1717170011111100242424002D2D2D002B2B2B00303030001A1A1A0023232300
                16161600292929002C2C2C0016171700252525000F0F0F000808080018181800
                2E2E2E001F1F1F00262626003737370020202000222222001414140027272700
                151515003D3D3D000E0E0E000B0B0B000A0A0A00131313001010100014151500
                121212002F2F2F000D0D0D00212121001D1D1D002A2A2A001B1C1C0018191900
                252626004A4A4A003B3B3B007E7F7F007D7E7F00646566006D6E6E0063646400
                A6A7A8004A4B4B007A7C7C00999B9B00858686008D8F8F006F707100A2A4A400
                5C5D5D008B8C8C00797A7A009092920085868700777878009B9C9C00A5A7A700
                888A8A009496960092949400B2B4B4006162620055565600B5B8B800A8AAAA00
                4F50500036373700717273008486860077787900868788009597970090919100
                4C4C4C0059595900ACAEAE008A8B8B007B7C7C00636465000E0F0F0015161600
                0C0C0D001C1C1C003A3A3A00232424003C3C3C00303131001B1B1C000D0D0E00
                2828280000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000000000000000E8999B00
                E8999B009C0E0000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000249A9B00249A9B00
                58080000E6020000FFFFFF00E7020000FFFFFF00E8020000FFFFFF00EA020000
                01000000EB02000003000000EC02000007000000ED0200000B000000EE020000
                10000000EF02000014000000F002000018000000F10200001B000000F2020000
                1D000000F30200001C000000989A9B00989A9B00EC0D000017000000F6020000
                13000000F70200000E000000F80200000A000000F902000005000000FA020000
                0200000002020202020202022B060202020202020202020202020C1D1E2C0602
                020202020202020202020C0F110D1C0202020202020202020202076F6B26200C
                0202020265662F67290968696A6B6C266D046E025859445A5B5C5D5E5F606162
                63645D1527494A4B4C4D4E4F50515253545556572A3A3B3C3D3E3F4041424344
                45464748021C323326183417353637383923292B032C2D2E1124162F2D103016
                310D09030D241025242126152717281329172A2B061E1F2004170F16161E2122
                12230403020C151617180F191A1B1C150F1D0202020C0D0E0F10111213140B06
                0002020202020606040708090A0B020202020202020202020304050202020202
                0202020200000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000028000000300000006000000001002000000000008025000000000000
                000000000000000000000000010101F2010101F2010101F2010101F2010101F2
                010101F2010101F2010101F2010101F2010101F2010101F2010101F2010101F2
                010101F2010101F2010101F2010101F2010101F2010101F2010101F2010101F2
                010101F2010101F2000000F2080808F20F0F0FF2000000F2000000F2010101F2
                010101F2010101F2010101F2010101F2010101F2010101F2010101F2010101F2
                010101F2010101F2010101F2010101F2010101F2010101F2010101F2010101F2
                010101F2010101F2000000E1010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF000000FF060606FF1B1B1BFF030303FF000000FF000000FF
                000000FF000000FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF000000ED010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                000000FF000000FF000000FF0E0E0EFF0A0A0AFF202020FF0E0E0EFF040404FF
                020202FF000000FF000000FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF000000ED010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF000000FF
                000000FF0B0B0BFF101010FF0B0B0BFF161616FF2F2F2FFF3C3D3DFF141414FF
                060606FF020202FF000000FF000000FF000000FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF000000ED010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF000000FF010101FF090909FF
                0F0F0FFF121212FF030303FF232323FF222222FF161616FF353636FF3C3C3CFF
                0C0C0CFF080808FF030303FF000000FF000000FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF000000ED010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF000000FF000000FF181919FF
                0E0E0EFF000000FF1B1B1BFF313131FF202020FF1F1F1FFF121212FF131313FF
                1B1B1BFF0C0B0BFF090909FF040404FF000000FF000000FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF000000ED010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF000000FF000000FF
                101010FF060606FF2D2C2CFF2F2F2FFF262626FF111111FF000000FF000000FF
                090A0AFF1C1C1CFF0C0C0CFF0B0B0BFF030303FF000000FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF000000ED010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF000000FF
                010101FF141414FF484949FF373737FF323232FF0A0A0AFF000000FF000000FF
                000000FF222222FF1A1A1AFF0F0F0FFF070707FF000000FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF000000ED010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF000000FF
                010101FF141414FF595959FF565656FF323232FF292929FF000000FF000000FF
                000000FF353535FF212121FF151515FF080808FF000000FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF000000ED010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF000000FF000000FF
                222222FF1C1C1CFF3B3B3BFF676767FF3F3F3FFF353535FF313131FF222222FF
                242424FF363737FF242424FF1B1B1BFF030303FF000000FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF000000ED010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF000000FF161616FF
                313131FF1C1C1CFF303030FF727272FF494848FF3D3D3DFF2D2D2DFF2A2A2AFF
                1E1E1EFF464747FF4C4C4CFF0E0E0EFF000000FF000000FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF000000ED010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF000000FF2D2D2DFF
                323232FF232323FF202121FF1A1A1AFF434343FF505050FF505050FF464646FF
                474747FF3A3A3AFF272727FF0B0B0BFF050505FF000000FF000000FF000000FF
                000000FF000000FF000000FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF000000ED000000FF000000FF000000FF000000FF000000FF
                000000FF000000FF000000FF010101FF000000FF000000FF000000FF000000FF
                000000FF000000FF010101FF010101FF000000FF000000FF000000FF373737FF
                303030FF333333FF242424FF0B0B0BFF0D0D0DFF282828FF464646FF5B5B5BFF
                4C4C4CFF212121FF030303FF1A1A1AFF202020FF2A2A2AFF0A0A0AFF040404FF
                070707FF020202FF000000FF000000FF000000FF000000FF000000FF000000FF
                010101FF010101FF000000ED030303FF000000FF000000FF000000FF000000FF
                000000FF000000FF000000FF000000FF030303FF000000FF000000FF020303FF
                000000FF000000FF000000FF000000FF010101FF020202FF000000FF343434FF
                434343FF474848FF2F2F2FFF000000FF000000FF000000FF2C2C2CFF323333FF
                1E1E1EFF080808FF2B2B2BFF272727FF0D0D0DFF09090AFF303030FF424342FF
                363636FF1D1D1EFF000000FF000000FF000000FF010101FF000000FF000000FF
                000000FF010101FF000000ED121212FF2F3031FF2E2F30FF2D2E2FFF2E2F2FFF
                2D2E2FFF2E2F2FFF1D1E1EFF000000FF181919FF363737FF121212FF0C0C0DFF
                393A3BFF202021FF000000FF000000FF000000FF252627FF2D2E2FFF4A4B4BFF
                717273FF404142FF303030FF2B2B2BFF262626FF303030FF515151FF484848FF
                373839FF373738FF636364FF545455FF2B2C2DFF2C2D2DFF545556FF333333FF
                212222FF3E3F40FF292A2AFF030302FF010101FF202122FF313233FF1F2020FF
                000000FF000000FF000000ED010101FF7C7E7EFFFDFEFEFFFAFDFDFFFAFDFDFF
                FAFDFDFFFAFDFDFFE8E8E8FF787A7AFF070707FFD4D7D7FFE4E6E6FF0A0A0AFF
                949696FFEEEEEEFF5B5D5DFF010102FF040405FF494A4BFFEEEEEEFFA2A4A4FF
                6E6F70FFEDEDEDFF9B9D9DFF2D2D2DFF333333FF222222FF505050FF535353FF
                585859FFE2E4E4FFF3F3F3FFF6F8F8FFF4F7F7FFF6F8F8FFFDFDFDFFC0C2C2FF
                080808FFCACCCCFFDFE1E1FF171717FF000000FF505152FFEBECECFFECECECFF
                484848FF000000FF000000ED000000FF313232FFA9A9A9FFA5A7A7FFA5A7A7FF
                A5A6A6FFACAEAEFFFCFDFDFFFEFFFFFF1A1B1BFFB2B4B4FFFFFFFFFF333434FF
                2A2A2BFFFFFFFFFFE8E9E9FFADAFB0FFB3B5B6FFC7C9CAFFFFFFFFFFA2A4A4FF
                2F3030FFFFFFFFFFE0E3E3FF343333FF353535FF353535FF3E3E3EFF565656FF
                464646FFE6E8E8FFFFFFFFFFCFD0D0FFC8CACAFFC6C7C7FFC9C9C9FFC0C1C1FF
                292929FFB9BBBCFFFFFFFFFF464646FF000000FF949696FFFFFFFFFFFFFFFFFF
                848686FF000000FF000000ED000000FF000000FF000000FF000000FF000000FF
                000000FF000000FF999B9BFFFFFFFFFF494A4AFF717273FFFFFFFFFF747676FF
                000000FFAFB1B2FFFFFFFFFFFBFEFEFFF1F4F4FFFAFDFDFFFFFFFFFFA6A8A8FF
                1B1B1BFFE2E5E5FFFAFBFBFF505051FF383839FF3F4040FF2D2D2EFF0F0F10FF
                212121FFBBBDBDFFFEFEFEFF69696AFF404040FF3D3D3DFF242424FF434242FF
                434343FF9C9D9DFFFFFFFFFF5D5E5EFF171819FFD6D8D8FFFEFFFFFFFEFEFEFF
                B9BBBBFF000000FF000000ED000000FF050606FF232425FF505152FF676868FF
                676969FF5B5D5DFFA9ABACFFFFFFFFFF818282FF3D3E3FFFFFFFFFFFADAFAFFF
                000000FF373738FFFFFFFFFFCED0D0FF242424FF797B7BFFFFFFFFFF929494FF
                000000FFB4B6B6FFFFFFFFFFD8DBDBFFD1D3D3FFD0D2D3FFCFD1D1FFB0B1B1FF
                1E1F1FFF7C7D7DFFFFFFFFFFAEB0B1FF636465FF686969FF2C2C2CFF0F0F0FFF
                171717FF606161FFFFFFFFFF8A8C8CFF464747FFFFFFFFFFBEC0C0FFCDCFD0FF
                EDEFEFFF080808FF000000ED000000FF010102FF717273FFFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF686969FF141415FFFAFCFCFFE1E4E4FF
                030303FF000000FFB7BABAFFFFFFFFFF474848FF686A6AFFFFFFFFFF7A7C7CFF
                000000FF909192FFFFFFFFFFEDF0F0FFD7DADAFFD7DADAFFE8EBEBFFFFFFFFFF
                AFB1B1FF4F5050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E4E4EFF000000FF
                000000FF232424FFFAFCFCFFB9BCBCFF898B8CFFFFFFFFFF565757FF959798FF
                FFFFFFFF2C2D2DFF000000ED000000FF000000FF838585FFFFFFFFFFBABCBCFF
                4D4E4DFF4D4D4DFF4E4E4EFF3F3F3FFF000000FF050506FFD7DADAFFFFFFFFFF
                232323FF000000FF3D3E3EFFFFFFFFFFBEC1C1FF7C7E7EFFFFFFFFFF6A6B6BFF
                020202FF5B5C5CFFFFFFFFFFB7B9B9FF000000FF000000FF161617FFEAECECFF
                F0F3F3FF272728FFF3F5F5FFFFFFFFFF979898FF898888FF353535FF000000FF
                000000FF0C0C0CFFD0D3D3FFEBEDEDFFDFE1E1FFF4F6F6FF0A0B0BFF6B6D6DFF
                FFFFFFFF5B5C5CFF000000ED000000FF000000FF494A4BFFFFFFFFFFB5B7B7FF
                000000FF000000FF000000FF000000FF000000FF000000FFA8AAABFFFFFFFFFF
                515252FF000000FF020202FFD1D3D3FFFFFFFFFFD0D2D2FFFFFFFFFF626363FF
                141414FF1A1B1BFF7B7B7CFF616363FF080809FF080809FF000001FFB3B5B5FF
                FFFFFFFF434344FF5D5E5FFF8A8B8BFF505051FF2B2B2CFF191A1BFF101112FF
                000000FF000000FFAAACADFFFFFFFFFFFFFFFFFFB3B5B5FF000000FF454646FF
                FFFFFFFF939494FF000000ED010101FF000000FF111111FFEEF1F1FFFFFFFFFF
                BBBDBEFFAFB1B1FFB2B4B5FFB3B5B5FFB1B1B1FF3E3F3EFF676868FFFFFFFFFF
                8D8F8FFF000000FF131313FF696A6AFFFFFFFFFFFFFFFFFFFFFFFFFF646565FF
                131313FF050606FF898B8CFFADADAEFFB9BCBCFFB9BBBBFFB5B7B8FFEBEEEEFF
                FFFFFFFF6E7070FF515353FFB5B5B6FFBABCBDFFB9BBBBFFBDBFC0FFB6B8B9FF
                B1B2B2FF484949FF6E7070FFFFFFFFFFFFFFFFFF5F6060FF000000FF1D1E1EFF
                FDFFFFFFCFD2D2FF000000ED010101FF000000FF000000FF626363FFE0E0E0FF
                F8FAFAFFFAFDFDFFF9FCFCFFF9FCFCFFFDFDFDFF888A8AFF1A1A1AFFE3E3E3FF
                A8AAAAFF000000FF282828FF1A1A1AFFAFB1B1FFEAEAEAFFE4E5E5FF575757FF
                141414FF000000FF979898FFF4F4F4FFF1F4F3FFF1F4F4FFF2F4F4FFE8E9E9FF
                D5D6D6FF343434FF4D4D4DFFF1F1F1FFFCFFFFFFF1F4F4FFFAFDFDFFFFFFFFFF
                FFFFFFFF888989FF393939FFF0F1F1FFEAECECFF1F1F1FFF000000FF000000FF
                B7B9B9FFDFE2E2FF191919ED010101FF010101FF000000FF000000FF060606FF
                101010FF111111FF111111FF111111FF111111FF0F0F0FFF000000FF0E0E0EFF
                1D1D1DFF131313FF484949FF252525FF121212FF363636FF080909FF1C1C1CFF
                252525FF000000FF020202FF0A0A0AFF0A0A0AFF0A0A0AFF0A0A0AFF0A0909FF
                000101FF000000FF000000FF0B0B0BFF393939FF646464FF646464FF5D5D5DFF
                4E4E4EFF515151FF383838FF232323FF212222FF222222FF000000FF000000FF
                090909FF131313FF050505ED010101FF010101FF010101FF000000FF000000FF
                000000FF000000FF000000FF000000FF000000FF000000FF0B0B0BFF2B2C2CFF
                242424FF1D1D1DFF424343FF212121FF0C0C0CFF2F2F2FFF000000FF0D0D0DFF
                343434FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
                000000FF000000FF000000FF1B1B1BFF2D2D2DFF121212FF4E4E4EFF484848FF
                3A3A3AFF3F3F3FFF151515FF000000FF000000FF313232FF090909FF000000FF
                000000FF000000FF000000ED010101FF010101FF010101FF010101FF000000FF
                000000FF000000FF000000FF000000FF000000FF030303FF383838FF2D2D2DFF
                202020FF0C0C0CFF303030FF363636FF0B0B0BFF434343FF010101FF000000FF
                393939FF0F0F0FFF000000FF010101FF010101FF010101FF010101FF010101FF
                010101FF000000FF0D0D0DFF4C4C4CFF181818FF242424FF272727FF111111FF
                1B1B1BFF191919FF040404FF0B0B0BFF010101FF000000FF101010FF040404FF
                000000FF010101FF000000ED010101FF010101FF000000FF000000FF040404FF
                191919FF171717FF131313FF090909FF000000FF121313FF434343FF262626FF
                171717FF000000FF141414FF424242FF060606FF484848FF191919FF000000FF
                131313FF414141FF050505FF000000FF000000FF010101FF000000FF000000FF
                000000FF040404FF505050FF292929FF292929FF202020FF3D3D3DFF111111FF
                212121FF161616FF161616FF070707FF0C0C0CFF020202FF050606FF101111FF
                010101FF000000FF000000ED010101FF000000FF020202FF131313FF2C2D2DFF
                212121FF111111FF0C0C0CFF111212FF0C0D0DFF212121FF454545FF2D2D2DFF
                151515FF000000FF010101FF4A4A4AFF191919FF282828FF464646FF000000FF
                000000FF1E1E1EFF414141FF1B1B1BFF030303FF000000FF000000FF060606FF
                1A1A1AFF363636FF474747FF282828FF1B1B1BFF4C4C4CFF070707FF040404FF
                1A1A1AFF000000FF070707FF151515FF0A0A0AFF090909FF050505FF060606FF
                111212FF000000FF000000ED000000FF060606FF171818FF232323FF2F2F2FFF
                212121FF151515FF0F0F0FFF090909FF060606FF131313FF494949FF2D2D2DFF
                2B2B2BFF0D0D0DFF030303FF444444FF484848FF0C0C0CFF484848FF272727FF
                000000FF000000FF0E0E0EFF333333FF393939FF333333FF313131FF313131FF
                1E1E1EFF212121FF343434FF363636FF434343FF303030FF000000FF222222FF
                090909FF000000FF000000FF171717FF0C0C0CFF0F0F0FFF0B0B0BFF000000FF
                080808FF0D0D0DFF000000ED000000FF0B0B0BFF101111FF323232FF242424FF
                131313FF000000FF010101FF0F0F0FFF0A0A0AFF000000FF363636FF494949FF
                272727FF2C2C2CFF282828FF202020FF6B6B6BFF2B2B2BFF050505FF494949FF
                2A2A2AFF000000FF000000FF000000FF040404FF0B0B0BFF090909FF010101FF
                000000FF1E1E1EFF474747FF595959FF393939FF1B1B1BFF161616FF1A1A1AFF
                000000FF000000FF000000FF181818FF101010FF131313FF0E0E0EFF050505FF
                000000FF111111FF050505ED070707FF0C0C0CFF121212FF3C3C3CFF2B2B2BFF
                050505FF000000FF000000FF0C0C0CFF121212FF080808FF060606FF434343FF
                4C4C4CFF3C3C3CFF343434FF303030FF474747FF5C5C5CFF030303FF010101FF
                414141FF414141FF161616FF000000FF000000FF000000FF000000FF000000FF
                0A0A0AFF404040FF6A6A6AFF4A4A4AFF0D0D0DFF575757FF191919FF000000FF
                000000FF000000FF000000FF272727FF0D0D0DFF181818FF151515FF030303FF
                000000FF0B0B0BFF0D0D0DED020202FF0C0C0CFF141414FF454545FF2C2C2CFF
                1D1D1DFF000000FF050505FF181818FF191919FF1A1A1AFF030303FF040404FF
                262626FF383838FF373737FF252525FF030303FF252525FF555555FF0D0D0DFF
                000000FF1D1D1DFF414141FF424242FF373737FF313131FF323232FF373737FF
                333333FF262626FF4C4C4CFF3C3C3CFF3F3F3FFF585858FF2F2F2FFF000000FF
                000000FF030303FF2D2D2DFF181818FF191919FF171717FF1D1D1DFF000000FF
                000000FF101010FF0A0A0AED000000FF080808FF0A0A0AFF3C3C3CFF3D3D3DFF
                272727FF292929FF212121FF232323FF3A3A3AFF222222FF0E0E0EFF060606FF
                000000FF000000FF000000FF000000FF0B0B0BFF0B0B0BFF2C2C2CFF5A5A5AFF
                313131FF000000FF000000FF020202FF111111FF171717FF121212FF050505FF
                000000FF000000FF5C5C5CFF646464FF686868FF0D0D0DFF313131FF464646FF
                404040FF3B3B3BFF1C1C1CFF131313FF292929FF1E1E1EFF141414FF000000FF
                010101FF141414FF010101ED000000FF020202FF0E0E0EFF161616FF4A4A4AFF
                454545FF373737FF3B3B3BFF535353FF313131FF1A1A1AFF151515FF101010FF
                090909FF030303FF000000FF171717FF222222FF191919FF111111FF161616FF
                424242FF4E4E4EFF3B3B3BFF282828FF1B1B1BFF131313FF121212FF1E1E1EFF
                303030FF393939FF323232FF666666FF2E2E2EFF525252FF2A2A2AFF121212FF
                141414FF121212FF2A2A2AFF313131FF1D1D1DFF2A2A2AFF040404FF111111FF
                131313FF080808FF000000ED010101FF000000FF020202FF080808FF1B1B1BFF
                414141FF383838FF4D4D4DFF3F3F3FFF202020FF0A0A0AFF010101FF070707FF
                101010FF060606FF101010FF2F2F2FFF212121FF1C1C1CFF0D0D0DFF090909FF
                050505FF121212FF3F3F3FFF4A4A4AFF4C4C4CFF464646FF3E3E3EFF2F2F2FFF
                1C1C1CFF060606FF000000FF141414FF636363FF434343FF414141FF454545FF
                414141FF393939FF2D2D2DFF2F2F2FFF363636FF0A0A0AFF0E0E0EFF030303FF
                000000FF000000FF000000ED010101FF010101FF000000FF000000FF000000FF
                080808FF030303FF333333FF2A2A2AFF1E1E1EFF000000FF000000FF000000FF
                101010FF0B0B0BFF2D2D2DFF343434FF252525FF070707FF000000FF000000FF
                0B0B0BFF323232FF282828FF171717FF101010FF0C0C0CFF090909FF000000FF
                000000FF000000FF000000FF000000FF060606FF464646FF636464FF4F4F4FFF
                464646FF4E4F4FFF545454FF343434FF0C0C0CFF0C0C0CFF010101FF000000FF
                010101FF010101FF000000ED010101FF010101FF010101FF010101FF000000FF
                0A0A0AFF0B0B0BFF3E3E3EFF303030FF282828FF000000FF000000FF000000FF
                191919FF0F0F0FFF3D3D3DFF373737FF292929FF010101FF000000FF000000FF
                181818FF434343FF313131FF1A1A1AFF000000FF000000FF050505FF0D0D0DFF
                121212FF000000FF000000FF010101FF000000FF000000FF252525FF454646FF
                2D2D2DFF282929FF0A0A0AFF070707FF050505FF000000FF000000FF010101FF
                010101FF010101FF000000ED010101FF010101FF010101FF010101FF000000FF
                060606FF090909FF323232FF434343FF272727FF272727FF1A1A1AFF1F1F1FFF
                1A1A1AFF191919FF373737FF434343FF282828FF232323FF060606FF080808FF
                3A3A3AFF484848FF3A3A3AFF080808FF000000FF1C1D1DFF252525FF4F5050FF
                404141FF3B3B3BFF050505FF000000FF0E0E0EFF272727FF262626FF000000FF
                000000FF000000FF000000FF000000FF000000FF010101FF010101FF010101FF
                010101FF010101FF000000ED010101FF010101FF010101FF010101FF000000FF
                0A0A0AFF060606FF0C0C0CFF4E4E4EFF3F3F3FFF2B2B2BFF2D2D2DFF242424FF
                292929FF232323FF0F0F0FFF4B4B4BFF393939FF272727FF2C2C2CFF212121FF
                373737FF626262FF3F3F3FFF1A1A1AFF000000FF050505FF6F7070FF7F8080FF
                121212FF242525FF383939FF2F2F2FFF292A2AFF161717FF030303FF000000FF
                000000FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF000000ED010101FF010101FF010101FF010101FF000000FF
                131313FF060606FF000000FF131313FF434343FF4B4B4BFF464646FF3C3C3CFF
                2D2D2DFF0B0B0BFF000000FF1C1C1CFF4F4F4FFF444444FF373737FF323232FF
                3C3C3CFF656565FF333333FF282828FF262626FF1C1C1CFF3C3C3CFF7D7E7EFF
                555656FF0F1010FF080808FF060606FF000000FF000000FF000000FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF000000ED010101FF010101FF010101FF010101FF000000FF
                141515FF1B1B1BFF000000FF000000FF0F0F0FFF2A2A2AFF2F2F2FFF111111FF
                000000FF000000FF010101FF000000FF0D0D0DFF373737FF424343FF313131FF
                141414FF232323FF4F4F4FFF373737FF2C2C2CFF292929FF222222FF404040FF
                272727FF000000FF000000FF000000FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF000000ED010101FF010101FF010101FF010101FF000000FF
                0A0A0AFF131313FF161616FF161616FF0B0B0BFF000000FF060606FF151515FF
                080808FF000000FF010101FF000000FF050505FF0A0B0BFF0C0D0DFF0E0E0EFF
                0F0F0FFF060606FF262626FF4F4F4FFF525252FF414141FF313131FF373737FF
                0A0A0AFF000000FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF000000ED010101FF010101FF010101FF010101FF010101FF
                000000FF000000FF030303FF060606FF000000FF000000FF000000FF171717FF
                0F0F0FFF000000FF010101FF000000FF111111FF000000FF000000FF020202FF
                090909FF151515FF0C0C0CFF0D0E0EFF1C1C1CFF151515FF040404FF191919FF
                000000FF000000FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF000000ED010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF000000FF000000FF000000FF000000FF010101FF121313FF
                070707FF060606FF000000FF000000FF101111FF040404FF000000FF000000FF
                000000FF000000FF000000FF000000FF000000FF0B0B0BFF111111FF050505FF
                000000FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF000000ED010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF000000FF070707FF1B1B1BFF
                101010FF131313FF111212FF060606FF121212FF070707FF000000FF010101FF
                010101FF010101FF010101FF010101FF000000FF030303FF141414FF010101FF
                000000FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF000000ED010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF000000FF000000FF
                000000FF000000FF050505FF191919FF131414FF000000FF000000FF010101FF
                010101FF010101FF010101FF010101FF010101FF000000FF000000FF000000FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF000000ED010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF000000FF040404FF010101FF000000FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF000000ED0000000000000000000000000000000000000000
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
                0000000000000000000000002800000020000000400000000100200000000000
                8010000000000000000000000000000000000000010101F6010101F6010101F6
                010101F6010101F6010101F6010101F6010101F6010101F6010101F6010101F6
                010101F6010101F6010101F6010101F6000000F60D0D0DF6040404F6000000F6
                000000F6010101F6010101F6010101F6010101F6010101F6010101F6010101F6
                010101F6010101F6010101F6010101F6010101E9010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF000000FF000000FF0B0B0BFF121212FF030303FF
                000000FF000000FF000000FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101F2010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF000000FF060606FF0A0B0BFF0E0E0EFF272727FF333333FF
                090A0AFF000000FF000000FF000000FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101F2010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF000000FF0D0D0DFF0C0C0CFF090909FF2A2A2AFF1C1C1CFF282828FF
                1C1C1CFF070707FF020202FF000000FF000000FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101F2010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF000000FF030303FF050505FF222222FF333333FF151515FF000000FF
                070707FF171717FF0A0A0AFF010101FF000000FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101F2010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF000000FF020202FF454545FF484848FF1D1D1DFF000000FF
                000000FF292929FF151515FF040404FF000000FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101F2010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF000000FF010101FF1A1A1AFF383838FF666666FF353535FF232323FF
                1A1A1AFF3D3D3DFF1D1D1DFF000000FF000000FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101F2010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF000000FF171717FF2F2F2FFF212121FF434343FF4C4C4CFF454545FF
                3B3B3BFF424242FF131313FF020202FF000000FF000000FF000000FF000000FF
                010101FF010101FF010101FF010101FF010101F2000000FF000000FF000000FF
                000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
                010101FF000000FF1D1D1DFF393939FF272727FF000000FF161616FF494949FF
                484848FF0D0D0DFF0D0D0DFF181818FF111111FF151515FF050505FF000000FF
                000000FF000000FF000000FF000000FF010101F2121212FF1D1D1EFF191A1AFF
                1A1B1BFF181919FF000000FF0F1010FF0E0F0FFF0E0F0FFF1A1B1BFF000000FF
                000000FF0E0E0FFF343434FF616263FF303030FF131313FF101010FF424141FF
                2B2C2CFF313132FF474848FF181919FF3E3E3FFF373838FF2E2F30FF080808FF
                010101FF161617FF0D0E0EFF000000FF000000F2060607FFBDBFBFFFEFEFEFFF
                ECEFEFFFF2F2F2FFB3B5B5FF343435FFE6E8E9FF303030FFDCDEDEFF6F7070FF
                1B1C1CFF939596FFC1C3C3FF98999AFFC8CACAFF2F2F2FFF292929FF4F4E4EFF
                5F6060FFE8E9EAFFF0F0F0FFEAEDEDFFF6F6F6FF676767FF9EA0A0FF999A9AFF
                000000FFA8ABABFFE8E8E8FF161616FF000000F2000000FF202121FF272727FF
                222323FF373738FFFFFFFFFF5B5C5DFFF6F9F9FF464747FF707272FFFFFFFFFF
                E4E7E7FFFFFFFFFFC1C3C3FF616262FFFFFFFFFF3F4040FF303030FF272727FF
                262626FFF8FAFAFFB3B4B4FF5C5D5DFF636363FF515151FFAFB0B0FFD3D5D4FF
                111212FFF5F7F8FFFFFFFFFF464747FF000000F2000000FF0F0F10FF6D6F70FF
                949595FF97999AFFFFFFFFFF747575FFBCBEBEFF989999FF000000FFFFFFFFFF
                6D6E6EFFA3A5A5FFC0C2C2FF131314FFFEFFFFFFE3E3E4FFE1E3E4FFDADBDBFF
                535454FFB1B3B3FFD7D8D8FF939494FF3F4040FF060606FF626363FFE1E4E4FF
                717273FFE8EBEBFFD4D6D7FF8B8D8DFF000000F2000000FF373839FFFFFFFFFF
                B7B8B8FF9A9B9BFF838383FF0F0F0FFF8F9191FFDEE1E1FF000000FF939595FF
                D1D3D3FFACAFAFFFB3B6B5FF000000FFF5F8F8FFA6A8A7FF404040FF989999FF
                E5E8E8FF747575FFFFFFFFFFCBCACAFF4F4F4FFF000000FF131414FFEAEDEDFF
                E6E8E8FF929393FF78797AFFCED1D1FF000000F2000000FF0F1010FFFFFFFFFF
                717272FF131414FF232324FF161717FF5D5E5EFFFFFFFFFF040404FF1A1A1AFF
                FFFFFFFFFFFFFFFFAAABABFF030303FF676969FF646565FF212222FF595B5BFF
                FFFFFFFF555657FF8C8E8EFF5E5E5FFF444546FF333434FF131314FFD9DCDCFF
                FFFFFFFF313232FF3E3F3FFFF9FCFCFF0A0A0AF2000000FF000000FF888989FF
                F4F5F5FFEDF0F0FFF1F1F1FFE5E7E7FF3A3B3BFFE1E3E3FF303030FF030303FF
                919292FFF0F0F0FF909292FF010101FF575959FFE2E2E2FFEAEDEDFFE9EBEBFF
                E3E3E3FF3A3A3BFFBCBEBEFFEFEFEFFFF3F6F6FFF7F7F7FF808181FF969797FF
                EFF0F0FF000000FF0D0D0DFFDFE2E2FF4C4C4CF2010101FF000000FF000000FF
                0C0C0CFF131313FF121313FF151515FF000000FF181818FF212121FF3B3B3BFF
                151515FF212121FF0F0F0FFF1A1A1AFF000000FF0D0D0DFF0D0D0DFF0C0C0CFF
                020202FF000000FF0F0F0FFF444444FF646464FF626262FF4F4F4FFF212121FF
                1E1E1EFF161717FF000000FF0B0B0BFF0C0C0CF2010101FF010101FF000000FF
                000000FF000000FF000000FF000000FF181818FF2E2E2EFF121212FF343434FF
                1B1B1BFF222222FF000000FF2D2D2DFF000000FF000000FF000000FF000000FF
                000000FF000000FF2D2D2DFF171717FF272727FF222222FF212121FF010101FF
                000000FF111111FF050505FF000000FF010101F2000000FF000000FF040404FF
                181919FF161616FF0E0E0EFF040404FF393939FF2C2C2CFF000000FF1D1D1DFF
                252525FF373737FF030303FF191919FF2A2A2AFF030303FF000000FF000000FF
                040404FF2D2D2DFF373737FF252525FF272727FF0A0A0AFF101010FF0E0E0EFF
                080808FF010101FF0C0D0DFF030303FF000000F2000000FF0A0A0AFF242525FF
                2D2D2DFF111111FF0C0C0CFF070707FF383838FF353535FF0D0D0DFF0C0C0CFF
                454545FF242424FF333333FF000000FF171717FF2D2D2DFF252525FF232323FF
                1D1D1DFF2F2F2FFF353535FF414141FF070707FF131313FF000000FF090909FF
                121212FF0A0A0AFF030303FF0B0B0BFF020303F2040404FF0F0F0FFF313131FF
                181818FF000000FF060606FF060606FF121212FF4A4A4AFF363636FF2A2A2AFF
                545454FF2F2F2FFF171717FF333333FF040404FF000000FF030303FF020202FF
                000000FF3E3E3EFF545454FF323232FF1C1C1CFF090909FF000000FF080808FF
                171717FF121212FF030303FF030303FF0E0E0EF2050505FF0F0F0FFF3D3D3DFF
                202020FF030303FF0A0A0AFF1E1E1EFF060606FF161616FF383838FF343434FF
                161616FF383838FF202020FF121212FF2E2E2EFF2B2B2BFF222222FF222222FF
                1F1F1FFF3B3B3BFF4B4B4BFF414141FF353535FF060606FF0C0C0CFF1E1E1EFF
                171717FF1C1C1CFF010101FF020202FF111111F2000000FF070707FF313131FF
                444343FF2F2F2FFF333333FF373737FF171717FF040404FF000000FF000000FF
                0B0B0BFF101010FF3D3D3DFF363636FF151515FF151515FF161616FF131313FF
                121212FF242424FF6E6E6EFF404040FF232323FF303030FF292929FF1D1D1DFF
                252525FF1B1B1BFF060606FF0E0E0EFF070707F2000000FF010101FF080909FF
                343434FF3E3E3EFF4C4C4CFF212121FF060606FF0A0A0AFF070707FF141414FF
                2B2B2BFF151515FF050505FF181818FF3C3C3CFF434343FF393939FF2D2D2DFF
                252525FF0E0E0EFF1B1B1BFF525252FF464646FF393939FF353535FF373737FF
                2B2B2BFF0D0D0DFF070707FF040404FF010101F2010101FF000000FF000000FF
                000000FF141414FF363636FF171717FF000000FF020202FF101010FF363636FF
                2E2E2EFF010101FF000000FF181818FF313131FF141414FF080808FF010101FF
                000000FF000000FF000000FF0A0A0AFF424343FF555555FF454545FF2D2D2DFF
                0C0C0CFF020202FF000000FF000000FF010101F2010101FF010101FF000000FF
                000000FF101010FF424242FF2C2C2CFF121212FF151515FF191919FF3C3C3CFF
                373737FF121212FF060606FF3B3B3BFF434343FF030202FF040404FF373838FF
                3B3B3BFF1F1F1FFF090909FF111212FF191919FF090909FF000000FF000000FF
                000000FF000000FF010101FF010101FF010101F2010101FF010101FF000000FF
                080808FF010101FF1E1E1EFF494949FF3F3F3FFF343434FF1F1F1FFF0F0F0FFF
                484848FF373737FF2C2C2CFF4F4F4FFF4F4F4FFF131313FF0C0C0CFF747676FF
                4F5050FF1D1D1DFF212121FF131313FF030303FF000000FF000000FF010101FF
                010101FF010101FF010101FF010101FF010101F2010101FF010101FF000000FF
                0B0B0BFF151515FF000000FF1B1B1BFF323232FF1A1A1AFF020202FF000000FF
                101010FF3B3B3BFF363636FF1F1F1FFF3F3F3FFF3E3E3EFF333333FF373838FF
                3D3D3DFF000000FF000000FF000000FF000000FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101F2010101FF010101FF000000FF
                020202FF0B0B0BFF101010FF010101FF000000FF101111FF010101FF000000FF
                030303FF030303FF050505FF0B0B0BFF151515FF383838FF323232FF212222FF
                0C0C0CFF000000FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101F2010101FF010101FF010101FF
                000000FF000000FF000000FF000000FF010101FF131313FF0A0A0AFF010101FF
                090909FF040404FF000000FF010101FF010101FF000000FF040404FF0C0C0CFF
                000000FF000000FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101F2010101FF010101FF010101FF
                010101FF010101FF010101FF000000FF030303FF0B0B0BFF080808FF0D0D0DFF
                121212FF030303FF000000FF000000FF000000FF000000FF020202FF070707FF
                000000FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101F2010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF000000FF000000FF000000FF020202FF
                0C0C0CFF000000FF010101FF010101FF010101FF010101FF000000FF000000FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101F2000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000280000001000000020000000
                01002000000000004004000000000000000000000000000000000000010101FB
                010101FB010101FB010101FB010101FB010101FB010101FB010101FB0A0A0AFB
                030303FB010101FB010101FB010101FB010101FB010101FB010101F6010101FF
                010101FF010101FF010101FF010101FF010101FF020202FF080808FF181818FF
                131313FF030303FF010101FF010101FF010101FF010101FF010101FA010101FF
                010101FF010101FF010101FF010101FF010101FF020202FF171717FF242424FF
                0C0C0CFF0F0F0FFF010101FF010101FF010101FF010101FF010101FA010101FF
                010101FF010101FF010101FF010101FF010101FF060606FF282828FF3C3C3CFF
                272727FF1F1F1FFF020202FF010101FF010101FF010101FF010101FA0E0F0FFF
                151616FF121212FF0C0C0DFF0E0E0EFF070707FF1C1C1CFF3A3A3AFF232424FF
                3C3C3CFF303131FF272727FF1B1B1CFF090909FF0D0D0EFF010101FA363737FF
                717273FF8D8F8FFF848686FF777879FF868788FF959797FF909191FF4C4C4CFF
                595959FFACAEAEFF8A8B8BFF7B7C7CFF636465FF959797FF1A1A1AFA151515FF
                797A7AFF909292FF858687FF777878FF9B9C9CFFA5A7A7FF888A8AFF949696FF
                929494FFB2B4B4FF616262FF555656FFB5B8B8FFA8AAAAFF4F5050FA0B0B0BFF
                7E7F7FFF7D7E7FFF646566FF6D6E6EFF636464FFA6A7A8FF4A4B4BFF7A7C7CFF
                999B9BFF858686FF8D8F8FFF6F7071FFA2A4A4FF5C5D5DFF8B8C8CFA010101FF
                0F0F0FFF212121FF1D1D1DFF272727FF292929FF2A2A2AFF161616FF1B1C1CFF
                181919FF252626FF4A4A4AFF3B3B3BFF202020FF0E0E0EFF0A0A0AFA040404FF
                131313FF101010FF141515FF242424FF222222FF232323FF121212FF101010FF
                111111FF2F2F2FFF232323FF0D0D0DFF0C0C0CFF070707FF040404FA0C0C0CFF
                222222FF111111FF141414FF222222FF262626FF272727FF1A1A1AFF151515FF
                161616FF3D3D3DFF2B2B2BFF0E0E0EFF161616FF0B0B0BFF0A0A0AFA030303FF
                181818FF2E2E2EFF1F1F1FFF090909FF161616FF171717FF232323FF232323FF
                181818FF262626FF373737FF2D2D2DFF202020FF090909FF040404FA010101FF
                020202FF1A1A1AFF232323FF161616FF292929FF171717FF2C2C2CFF161717FF
                252525FF0F0F0FFF1A1A1AFF171717FF080808FF010101FF010101FA010101FF
                020202FF0C0C0CFF1E1E1EFF171717FF111111FF242424FF2D2D2DFF2B2B2BFF
                303030FF0A0B0BFF030303FF000000FF010101FF010101FF010101FA010101FF
                010101FF030303FF030303FF090909FF060606FF050505FF070707FF101111FF
                0A0B0BFF010101FF010101FF010101FF010101FF010101FF010101FA010101FF
                010101FF010101FF010101FF040404FF090909FF020303FF010101FF010101FF
                010101FF010101FF010101FF010101FF010101FF010101FF010101FA00000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000000000000000}
            end
            object Label69: TLabel
              Left = 11
              Top = 2
              Width = 48
              Height = 13
              Caption = 'Prontu'#225'rio'
            end
            object DBTextProntuario: TDBText
              Left = 10
              Top = 17
              Width = 63
              Height = 15
              Color = clBtnFace
              DataField = 'RGI'
              DataSource = DsConsulta
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
              OnDblClick = DBGridConsultaDblClick
            end
            object LabelST: TLabel
              Left = 699
              Top = 58
              Width = 30
              Height = 13
              Caption = 'Status'
              OnDblClick = DBGridConsultaDblClick
            end
            object DBTextST: TDBText
              Left = 700
              Top = 72
              Width = 99
              Height = 15
              Color = clBtnFace
              DataField = 'STATUS'
              DataSource = DsConsulta
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
              OnDblClick = DBGridConsultaDblClick
            end
          end
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 558
    Height = 26
    ExplicitTop = 557
    ExplicitHeight = 26
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'select *'
      'from interno'
      'where id_interno=:id_interno')
    Left = 776
    Top = 168
    ParamData = <
      item
        Name = 'id_interno'
        DataType = ftInteger
        ParamType = ptInput
        Value = -1
      end>
  end
  inherited DspCadastro: TDataSetProvider
    Left = 804
    Top = 168
  end
  inherited CdsCadastro: TClientDataSet
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsConsulta
    PacketRecords = 0
    Left = 840
    Top = 168
  end
  inherited DsCadastro: TDataSource
    Left = 876
    Top = 168
  end
  object DsConsulta: TDataSource
    DataSet = CdsConsulta
    OnDataChange = DsConsultaDataChange
    Left = 341
    Top = 65535
  end
  object CdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspConsulta'
    OnFilterRecord = CdsConsultaFilterRecord
    Left = 313
    Top = 65535
  end
  object DspConsulta: TDataSetProvider
    DataSet = SqlConsulta
    Left = 285
    Top = 65535
  end
  object SqlConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '    interno.nome_interno,'
      '    interno.rgi,'
      '    INTERNO.VULGO,'
      '    FACCAO.FACCAO,'
      '    '#39#39' as  nome_interno_soundex,'
      '    unidade_penal.sigla,'
      '    pavilhao.pavilhao,'
      '    galeria.galeria,'
      '    solario.solario,'
      '    cela.cela,'
      '    interno.id_interno,'
      '    interno.id_up,'
      '    interno.idpavilhao,'
      '    interno.idgaleria,'
      '    interno.idsolario,'
      '    coalesce(interno.st,'#39#39') as st,'
      '    interno.numero_roupa,'
      '    iif(interno.st='#39'A'#39','#39'ATIVO'#39', '#39'INATIVO'#39') status,'
      '    interno.em_transito,'
      
        '    PROCEDENCIA.PROEDENCIA||'#39'/'#39'||coalesce(PROCEDENCIA.UF,'#39'UF'#39') A' +
        'S PROCEDENCIA,'
      
        '   IIF(TRIM(COALESCE(estado.estado,'#39#39'))='#39#39','#39'N'#195'O INFORMADO'#39',estad' +
        'o.estado) as ESTADO_SOLICITANTE'
      'from interno'
      '   left join cela on (cela.id_cela = interno.idcela)'
      
        '   left join pavilhao on (interno.idpavilhao = pavilhao.id_pavil' +
        'hao)'
      
        '   left join unidade_penal on (pavilhao.id_up = unidade_penal.id' +
        '_up)'
      '   left join galeria on (interno.idgaleria = galeria.id_galeria)'
      '   left join solario on (interno.idsolario = solario.id_solario)'
      '   left join faccao on (interno.id_faccao = faccao.id_faccao)'
      
        '   LEFT JOIN PROCEDENCIA ON (INTERNO.ID_PROCEDENCIA = PROCEDENCI' +
        'A.ID_PROCEDENCIA)'
      
        '   LEFT JOIN  CIDADE ON (INTERNO.ID_SOLICITANTE_VAGA = CIDADE.ID' +
        '_CIDADE)'
      '   LEFT JOIN ESTADO ON (CIDADE.UF = ESTADO.UF)'
      'where coalesce(interno.nome_interno,'#39#39')<>'#39#39
      'ORDER BY INTERNO.NOME_INTERNO collate win_ptbr')
    SQLConnection = DM.SQLConnect
    Left = 257
    Top = 65535
  end
  object SqlConsultaBackup: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select '
      '    interno.nome_interno,'
      '    interno.rgi,'
      '    INTERNO.VULGO,'
      '    FACCAO.FACCAO,'
      '    '#39#39' as  nome_interno_soundex,'
      '    unidade_penal.sigla,'
      '    pavilhao.pavilhao,'
      '    galeria.galeria,'
      '    solario.solario,'
      '    cela.cela,'
      '    interno.id_interno,'
      '    interno.id_up,'
      '    interno.idpavilhao,'
      '    interno.idgaleria,'
      '    interno.idsolario,'
      '    coalesce(interno.st,'#39#39') as st,'
      '    interno.numero_roupa,'
      '    iif(interno.st='#39'A'#39','#39'ATIVO'#39', '#39'INATIVO'#39') status,'
      '    interno.em_transito,'
      
        '    PROCEDENCIA.PROEDENCIA||'#39'/'#39'||coalesce(PROCEDENCIA.UF,'#39'UF'#39') A' +
        'S PROCEDENCIA,'
      
        '   IIF(TRIM(COALESCE(estado.estado,'#39#39'))='#39#39','#39'N'#195'O INFORMADO'#39',estad' +
        'o.estado) as ESTADO_SOLICITANTE'
      'from interno'
      '   left join cela on (cela.id_cela = interno.idcela)'
      
        '   left join pavilhao on (interno.idpavilhao = pavilhao.id_pavil' +
        'hao)'
      
        '   left join unidade_penal on (pavilhao.id_up = unidade_penal.id' +
        '_up)'
      '   left join galeria on (interno.idgaleria = galeria.id_galeria)'
      '   left join solario on (interno.idsolario = solario.id_solario)'
      '   left join faccao on (interno.id_faccao = faccao.id_faccao)'
      
        '   LEFT JOIN PROCEDENCIA ON (INTERNO.ID_PROCEDENCIA = PROCEDENCI' +
        'A.ID_PROCEDENCIA)'
      
        '   LEFT JOIN  CIDADE ON (INTERNO.ID_SOLICITANTE_VAGA = CIDADE.ID' +
        '_CIDADE)'
      '   LEFT JOIN ESTADO ON (CIDADE.UF = ESTADO.UF)'
      'where coalesce(interno.nome_interno,'#39#39')<>'#39#39)
    SQLConnection = DM.SQLConnect
    Left = 168
  end
  object MainMenu1: TMainMenu
    Left = 219
    object Relatorios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object Especifico1: TMenuItem
        Caption = 'Espec'#237'ficos'
        OnClick = Especifico1Click
      end
    end
  end
  object SqlFaccao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * '
      'FROM FACCAO')
    Left = 16
    Top = 64
  end
  object DspFaccao: TDataSetProvider
    DataSet = SqlFaccao
    Left = 44
    Top = 64
  end
  object CdsFaccao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFaccao'
    Left = 72
    Top = 64
  end
  object DsFaccao: TDataSource
    DataSet = CdsFaccao
    Left = 100
    Top = 64
  end
  object OpenDialogCapturarFoto: TOpenDialog
    Filter = 'Imagens (*.jpg)|*.jpg'
    Left = 679
    Top = 8
  end
end
