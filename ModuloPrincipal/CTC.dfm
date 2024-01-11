inherited FrmCTC: TFrmCTC
  Left = 209
  Top = 123
  Caption = 'CTC - Comiss'#227'o T'#233'cnica de Classifica'#231#227'o'
  ExplicitWidth = 956
  ExplicitHeight = 622
  TextHeight = 13
  inherited PanelBotoes: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    inherited Image2: TImage
      Width = 949
      ExplicitWidth = 949
    end
    inherited PageControlModeloCadastro: TPageControl
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          object PageControlPrincipal: TPageControl
            Left = 1
            Top = 1
            Width = 819
            Height = 503
            ActivePage = TabSheetPrincipal
            Align = alClient
            MultiLine = True
            TabOrder = 0
            TabWidth = 130
            object TabSheetPrincipal: TTabSheet
              Caption = 'Identifica'#231#227'o'
              object Label2: TLabel
                Left = 228
                Top = 46
                Width = 11
                Height = 13
                Caption = 'ID'
                FocusControl = DBEditID
              end
              object Label3: TLabel
                Left = 277
                Top = 46
                Width = 33
                Height = 13
                Caption = 'Interno'
                FocusControl = DBEdit2
              end
              object Label4: TLabel
                Left = 348
                Top = 92
                Width = 76
                Height = 13
                Caption = 'RGI (Prontu'#225'rio)'
                FocusControl = DBEdit3
              end
              object Label12: TLabel
                Left = 103
                Top = 365
                Width = 60
                Height = 13
                Caption = 'Procedencia'
              end
              object Label45: TLabel
                Left = 100
                Top = 407
                Width = 96
                Height = 13
                Caption = 'Condi'#231#227'o do Interno'
              end
              object Label46: TLabel
                Left = 100
                Top = 324
                Width = 70
                Height = 13
                Caption = 'Unidade Penal'
              end
              object Label27: TLabel
                Left = 228
                Top = 141
                Width = 57
                Height = 13
                Caption = 'Outro Nome'
                FocusControl = DBEdit24
              end
              object Label36: TLabel
                Left = 511
                Top = 141
                Width = 27
                Height = 13
                Caption = 'Vulgo'
                FocusControl = DBEdit25
              end
              object Label65: TLabel
                Left = 202
                Top = 240
                Width = 60
                Height = 13
                Caption = 'Nome Social'
                FocusControl = DBEdit35
              end
              object Label66: TLabel
                Left = 42
                Top = 283
                Width = 87
                Height = 13
                Caption = 'Orienta'#231#227'o Sexual'
              end
              object Label67: TLabel
                Left = 344
                Top = 282
                Width = 88
                Height = 13
                Caption = 'Identidade G'#234'nero'
              end
              object Label163: TLabel
                Left = 446
                Top = 366
                Width = 36
                Height = 13
                Caption = 'Fac'#231#227'o'
                FocusControl = DBEdit84
              end
              object Label164: TLabel
                Left = 445
                Top = 405
                Width = 73
                Height = 13
                Caption = 'Vara de Origem'
                FocusControl = DBEdit85
              end
              object lbl1: TLabel
                Left = 228
                Top = 94
                Width = 76
                Height = 13
                Caption = 'Numero Infopen'
                FocusControl = DBEdit86
              end
              object Label43: TLabel
                Left = 42
                Top = 324
                Width = 11
                Height = 13
                Caption = 'ID'
                FocusControl = DBEdit7
              end
              object Label18: TLabel
                Left = 42
                Top = 365
                Width = 11
                Height = 13
                Caption = 'ID'
              end
              object Label44: TLabel
                Left = 42
                Top = 407
                Width = 11
                Height = 13
                Caption = 'ID'
                FocusControl = DBEdit6
              end
              object Label10: TLabel
                Left = 229
                Top = 195
                Width = 63
                Height = 13
                Caption = 'Data Entrada'
                FocusControl = DBEdit4
              end
              object Label40: TLabel
                Left = 314
                Top = 195
                Width = 55
                Height = 13
                Caption = 'Data Pris'#227'o'
              end
              object Label55: TLabel
                Left = 506
                Top = 194
                Width = 69
                Height = 13
                Caption = 'CI/OF Entrada'
                FocusControl = DBEdit29
              end
              object Label38: TLabel
                Left = 40
                Top = 242
                Width = 36
                Height = 13
                Caption = 'Regime'
              end
              object Label49: TLabel
                Left = 399
                Top = 195
                Width = 88
                Height = 13
                Caption = 'Data Perman'#234'ncia'
              end
              object Label71: TLabel
                Left = 40
                Top = 2
                Width = 45
                Height = 13
                Caption = 'Interno(a)'
              end
              object DBEditID: TDBEdit
                Left = 228
                Top = 62
                Width = 44
                Height = 21
                DataField = 'ID_INTERNO'
                DataSource = DsInterno
                Enabled = False
                TabOrder = 3
              end
              object DBEdit2: TDBEdit
                Left = 275
                Top = 62
                Width = 406
                Height = 21
                CharCase = ecUpperCase
                DataField = 'NOME_INTERNO'
                DataSource = DsInterno
                TabOrder = 4
              end
              object DBEdit3: TDBEdit
                Left = 346
                Top = 109
                Width = 100
                Height = 21
                DataField = 'RGI'
                DataSource = DsInterno
                TabOrder = 6
              end
              object DBEditID_PROCEDENCIA: TDBEdit
                Left = 42
                Top = 381
                Width = 52
                Height = 21
                DataField = 'ID_PROCEDENCIA'
                DataSource = DsInterno
                TabOrder = 22
              end
              object DBLookupComboBoxID_PROCEDENCIA: TDBLookupComboBox
                Left = 100
                Top = 381
                Width = 265
                Height = 21
                DataField = 'ID_PROCEDENCIA'
                DataSource = DsInterno
                KeyField = 'ID_PROCEDENCIA'
                ListField = 'PROCEDENCIA'
                ListSource = DM.DsProcedencia
                TabOrder = 23
              end
              object DBRadioGroup1: TDBRadioGroup
                Left = 567
                Top = 89
                Width = 113
                Height = 40
                Caption = 'Status'
                Columns = 2
                DataField = 'ST'
                DataSource = DsInterno
                Items.Strings = (
                  'Ativo'
                  'Inativo')
                TabOrder = 8
                Values.Strings = (
                  'A'
                  'I')
              end
              object DBRadioGroup2: TDBRadioGroup
                Left = 539
                Top = 282
                Width = 142
                Height = 40
                Caption = 'Sexo'
                Columns = 2
                DataField = 'SEXO'
                DataSource = DsInterno
                Items.Strings = (
                  'Masculino'
                  'Feminino')
                TabOrder = 19
                Values.Strings = (
                  'M'
                  'F')
              end
              object DBEdit6: TDBEdit
                Left = 42
                Top = 423
                Width = 52
                Height = 21
                DataField = 'IDCONDICAO_INTERNO'
                DataSource = DsInterno
                TabOrder = 25
              end
              object DBLookupComboBox1: TDBLookupComboBox
                Left = 100
                Top = 423
                Width = 265
                Height = 21
                DataField = 'IDCONDICAO_INTERNO'
                DataSource = DsInterno
                KeyField = 'IDCONDICAO_INTERNO'
                ListField = 'DESCRICAO'
                ListSource = DM.DsCondicaoInterno
                TabOrder = 26
              end
              object DBEdit7: TDBEdit
                Left = 42
                Top = 340
                Width = 52
                Height = 21
                DataField = 'ID_UP'
                DataSource = DsInterno
                TabOrder = 20
              end
              object DBLookupComboBox2: TDBLookupComboBox
                Left = 100
                Top = 340
                Width = 580
                Height = 21
                DataField = 'ID_UP'
                DataSource = DsInterno
                KeyField = 'ID_UP'
                ListField = 'NOME_UP'
                ListSource = DM.DsUP
                TabOrder = 21
              end
              object DBImageFOTOInterno: TDBImage
                Left = 39
                Top = 49
                Width = 183
                Height = 179
                BorderStyle = bsNone
                DataField = 'FOTO'
                DataSource = DsInterno
                Stretch = True
                TabOrder = 2
              end
              object DBEdit24: TDBEdit
                Left = 228
                Top = 157
                Width = 276
                Height = 21
                DataField = 'OUTRO_NOME'
                DataSource = DsInterno
                TabOrder = 9
              end
              object DBEdit25: TDBEdit
                Left = 509
                Top = 157
                Width = 171
                Height = 21
                DataField = 'VULGO'
                DataSource = DsInterno
                TabOrder = 10
              end
              object DBEdit35: TDBEdit
                Left = 200
                Top = 257
                Width = 480
                Height = 21
                DataField = 'NOME_SOCIAL'
                DataSource = DsInterno
                TabOrder = 16
              end
              object DBComboBox3: TDBComboBox
                Left = 42
                Top = 299
                Width = 248
                Height = 21
                DataField = 'ORIENTACAO_SEXUAL'
                DataSource = DsInterno
                Items.Strings = (
                  'HOMOSEXUAL'
                  'BISEXUAL'
                  'HETEROSEXUAL')
                TabOrder = 17
              end
              object DBComboBox4: TDBComboBox
                Left = 344
                Top = 299
                Width = 193
                Height = 21
                DataField = 'IDENTIDADE_GENERO'
                DataSource = DsInterno
                Items.Strings = (
                  'FEMININO'
                  'MASCULINO')
                TabOrder = 18
              end
              object DBEdit84: TDBEdit
                Left = 446
                Top = 382
                Width = 235
                Height = 21
                Hint = 'FACCAO'
                DataField = 'FACCAO'
                DataSource = DsInterno
                TabOrder = 24
              end
              object DBEdit85: TDBEdit
                Left = 446
                Top = 421
                Width = 235
                Height = 21
                Hint = 'VARA_ORIGEM'
                DataField = 'VARA_ORIGEM'
                DataSource = DsInterno
                TabOrder = 27
              end
              object DBEdit86: TDBEdit
                Left = 228
                Top = 109
                Width = 114
                Height = 21
                DataField = 'NUMERO_INFOPEN'
                DataSource = DsInterno
                TabOrder = 5
              end
              object dbrgrpST: TDBRadioGroup
                Left = 452
                Top = 89
                Width = 113
                Height = 40
                Caption = 'Reinser'#231#227'o'
                Columns = 2
                DataField = 'REINCERSAO'
                DataSource = DsInterno
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 7
                Values.Strings = (
                  'S'
                  'N')
              end
              object DBEdit4: TDBEdit
                Left = 229
                Top = 211
                Width = 76
                Height = 21
                DataField = 'DATA_ENTRADA'
                DataSource = DsInterno
                TabOrder = 11
              end
              object DBEdit20: TDBEdit
                Left = 314
                Top = 211
                Width = 79
                Height = 21
                DataField = 'DATA_PRISAO'
                DataSource = DsInterno
                TabOrder = 12
              end
              object DBEdit29: TDBEdit
                Left = 504
                Top = 210
                Width = 177
                Height = 21
                DataField = 'CI'
                DataSource = DsInterno
                TabOrder = 14
              end
              object DBComboBox2: TDBComboBox
                Left = 40
                Top = 258
                Width = 153
                Height = 21
                DataField = 'TIPOREGIME'
                DataSource = DsInterno
                Items.Strings = (
                  'Aberto'
                  'Fechado'
                  'Semiaberto')
                TabOrder = 15
              end
              object DBEditpermanencia: TDBEdit
                Left = 399
                Top = 211
                Width = 99
                Height = 21
                DataField = 'DATA_PERMANENCIA'
                DataSource = DsInterno
                TabOrder = 13
              end
              object DBLookupComboBoxInterno: TDBLookupComboBox
                Left = 40
                Top = 19
                Width = 393
                Height = 21
                DataField = 'IDINTERNO'
                DataSource = DsCadastro
                KeyField = 'ID_INTERNO'
                ListField = 'NOME_INTERNO'
                ListSource = DM.DsInterno
                TabOrder = 0
              end
              object DBRadioGroup3: TDBRadioGroup
                Left = 444
                Top = 2
                Width = 237
                Height = 48
                Caption = 'Status'
                Columns = 2
                DataField = 'STATUS'
                DataSource = DsCadastro
                Items.Strings = (
                  'Finalizado'
                  'Reaberto')
                TabOrder = 1
                Values.Strings = (
                  'FINALIZADO'
                  'REALIZADO')
              end
            end
            object TabSheetDadosGerais: TTabSheet
              Caption = 'Dados Gerais'
              ImageIndex = 1
              object Label11: TLabel
                Left = 59
                Top = 63
                Width = 23
                Height = 13
                Caption = 'M'#195'E'
                FocusControl = DBEdit1
              end
              object Label19: TLabel
                Left = 332
                Top = 46
                Width = 15
                Height = 13
                Caption = 'Pai'
                FocusControl = DBEdit5
              end
              object Label21: TLabel
                Left = 332
                Top = 86
                Width = 68
                Height = 13
                Caption = 'Nacionalidade'
              end
              object Label22: TLabel
                Left = 59
                Top = 142
                Width = 29
                Height = 13
                Caption = 'RA'#199'A'
              end
              object Label23: TLabel
                Left = 45
                Top = 164
                Width = 61
                Height = 13
                Caption = 'Escolaridade'
              end
              object Label20: TLabel
                Left = 44
                Top = 86
                Width = 60
                Height = 13
                Caption = 'Naturalidade'
              end
              object Label37: TLabel
                Left = 44
                Top = 202
                Width = 38
                Height = 13
                Caption = 'Religi'#227'o'
                FocusControl = DBEdit18
              end
              object Label13: TLabel
                Left = 356
                Top = 203
                Width = 43
                Height = 13
                Caption = 'Profiss'#227'o'
              end
              object Label5: TLabel
                Left = 157
                Top = 6
                Width = 16
                Height = 13
                Caption = 'RG'
                FocusControl = DBEdit9
              end
              object Label24: TLabel
                Left = 257
                Top = 6
                Width = 20
                Height = 13
                Caption = 'CPF'
                FocusControl = DBEdit19
              end
              object Label25: TLabel
                Left = 408
                Top = 6
                Width = 55
                Height = 13
                Caption = 'Estado Civil'
              end
              object Label39: TLabel
                Left = 548
                Top = 6
                Width = 27
                Height = 13
                Caption = 'Altura'
                FocusControl = DBEdit26
              end
              object Label47: TLabel
                Left = 604
                Top = 6
                Width = 24
                Height = 13
                Caption = 'Peso'
                FocusControl = DBEdit27
              end
              object Label52: TLabel
                Left = 44
                Top = 6
                Width = 82
                Height = 13
                Caption = 'Data Nascimento'
                FocusControl = DBEdit28
              end
              object Label63: TLabel
                Left = 285
                Top = 126
                Width = 66
                Height = 13
                Caption = 'Cor dos Olhos'
                FocusControl = DBEdit32
              end
              object Label64: TLabel
                Left = 446
                Top = 125
                Width = 77
                Height = 13
                Caption = 'Cor dos Cabelos'
                FocusControl = DBEdit34
              end
              object Label28: TLabel
                Left = 44
                Top = 239
                Width = 46
                Height = 13
                Caption = 'Endere'#231'o'
                FocusControl = DBEdit10
              end
              object Label30: TLabel
                Left = 108
                Top = 279
                Width = 27
                Height = 13
                Caption = 'Bairro'
                FocusControl = DBEdit12
              end
              object Label31: TLabel
                Left = 44
                Top = 320
                Width = 64
                Height = 13
                Caption = 'Complemento'
                FocusControl = DBEdit13
              end
              object Label32: TLabel
                Left = 524
                Top = 320
                Width = 21
                Height = 13
                Caption = 'CEP'
                FocusControl = DBEdit14
              end
              object Label33: TLabel
                Left = 44
                Top = 358
                Width = 33
                Height = 13
                Caption = 'Cidade'
              end
              object Label34: TLabel
                Left = 524
                Top = 358
                Width = 42
                Height = 13
                Caption = 'Telefone'
                FocusControl = DBEdit16
              end
              object Label35: TLabel
                Left = 412
                Top = 398
                Width = 37
                Height = 13
                Caption = 'Contato'
                FocusControl = DBEdit17
              end
              object lbl2: TLabel
                Left = 44
                Top = 398
                Width = 22
                Height = 13
                Caption = 'Pa'#237's'
              end
              object Label6: TLabel
                Left = 44
                Top = 279
                Width = 37
                Height = 13
                Caption = 'Numero'
                FocusControl = DBEdit7
              end
              object Label7: TLabel
                Left = 44
                Top = 126
                Width = 26
                Height = 13
                Caption = 'Ra'#231'a'
              end
              object Label9: TLabel
                Left = 44
                Top = 47
                Width = 21
                Height = 13
                Caption = 'M'#227'e'
                FocusControl = DBEdit1
              end
              object DBEdit1: TDBEdit
                Left = 44
                Top = 62
                Width = 281
                Height = 21
                DataField = 'MAE'
                DataSource = DsInterno
                TabOrder = 6
              end
              object DBEdit5: TDBEdit
                Left = 332
                Top = 62
                Width = 313
                Height = 21
                DataField = 'PAI'
                DataSource = DsInterno
                TabOrder = 7
              end
              object DBLookupComboBoxIDNATURALIDADE: TDBLookupComboBox
                Left = 44
                Top = 102
                Width = 257
                Height = 21
                DataField = 'IDNATURALIDADE'
                DataSource = DsInterno
                KeyField = 'ID_CIDADE'
                ListField = 'CIDADE'
                ListSource = DM.DSCIDADE
                TabOrder = 8
              end
              object DBLookupComboBoxIDNACIONALIDADE: TDBLookupComboBox
                Left = 332
                Top = 102
                Width = 281
                Height = 21
                DataField = 'IDNACIONALIDADE'
                DataSource = DsInterno
                KeyField = 'ID_NACIONALIDADE'
                ListField = 'NACIONALIDADE'
                ListSource = DM.DSNACIONALIDADE
                TabOrder = 9
              end
              object DBLookupComboBoxIDRACA: TDBLookupComboBox
                Left = 44
                Top = 141
                Width = 209
                Height = 21
                DataField = 'IDRACA'
                DataSource = DsInterno
                KeyField = 'ID_RACA'
                ListField = 'RACA'
                ListSource = DM.DSRACA
                TabOrder = 10
              end
              object DBLookupComboBoxIDESCOLARIDADE: TDBLookupComboBox
                Left = 44
                Top = 180
                Width = 569
                Height = 21
                DataField = 'IDESCOLARIDADE'
                DataSource = DsInterno
                KeyField = 'ID_ESCOLARIDADE'
                ListField = 'ESCOLARIDADE'
                ListSource = DM.DSESCOLARIDADE
                TabOrder = 13
              end
              object DBEdit18: TDBEdit
                Left = 44
                Top = 218
                Width = 304
                Height = 21
                DataField = 'RELIGIAO'
                DataSource = DsInterno
                TabOrder = 14
              end
              object DBLookupComboBoxIDPROFISSAO: TDBLookupComboBox
                Left = 356
                Top = 219
                Width = 257
                Height = 21
                DataField = 'IDPROFISSAO'
                DataSource = DsInterno
                KeyField = 'ID_PROFISSAO'
                ListField = 'PROFISSAO'
                ListSource = DM.DsProfissao
                TabOrder = 15
              end
              object DBEdit9: TDBEdit
                Left = 157
                Top = 22
                Width = 98
                Height = 21
                DataField = 'RG'
                DataSource = DsInterno
                TabOrder = 1
              end
              object DBEdit19: TDBEdit
                Left = 258
                Top = 22
                Width = 147
                Height = 21
                DataField = 'CPF'
                DataSource = DsInterno
                TabOrder = 2
              end
              object DBComboBox1: TDBComboBox
                Left = 408
                Top = 22
                Width = 137
                Height = 21
                DataField = 'ESTADO_CIVIL'
                DataSource = DsInterno
                Items.Strings = (
                  'Amasiado'
                  'Casado'
                  'Divorciado'
                  'Separado Judicialmente'
                  'Solteiro'
                  'Viuvo'
                  'Uni'#227'o Estavel')
                TabOrder = 3
              end
              object DBEdit26: TDBEdit
                Left = 548
                Top = 22
                Width = 49
                Height = 21
                DataField = 'ALTURA'
                DataSource = DsInterno
                TabOrder = 4
              end
              object DBEdit27: TDBEdit
                Left = 604
                Top = 22
                Width = 41
                Height = 21
                DataField = 'PESO'
                DataSource = DsInterno
                TabOrder = 5
              end
              object DBEdit28: TDBEdit
                Left = 44
                Top = 22
                Width = 105
                Height = 21
                DataField = 'DATA_NASCIMENTO'
                DataSource = DsInterno
                TabOrder = 0
              end
              object DBEdit32: TDBEdit
                Left = 285
                Top = 141
                Width = 158
                Height = 21
                DataField = 'COR_OLHOS'
                DataSource = DsInterno
                TabOrder = 11
              end
              object DBEdit34: TDBEdit
                Left = 445
                Top = 141
                Width = 200
                Height = 21
                DataField = 'COR_CABELOS'
                DataSource = DsInterno
                TabOrder = 12
              end
              object DBEdit10: TDBEdit
                Left = 44
                Top = 255
                Width = 600
                Height = 21
                DataField = 'ENDERECO'
                DataSource = DsInterno
                TabOrder = 16
              end
              object DBEdit11: TDBEdit
                Left = 44
                Top = 295
                Width = 57
                Height = 21
                DataField = 'NUMERO'
                DataSource = DsInterno
                TabOrder = 17
              end
              object DBEdit12: TDBEdit
                Left = 108
                Top = 295
                Width = 537
                Height = 21
                DataField = 'BAIRRO'
                DataSource = DsInterno
                TabOrder = 18
              end
              object DBEdit13: TDBEdit
                Left = 44
                Top = 336
                Width = 465
                Height = 21
                DataField = 'COMPLEMENETO'
                DataSource = DsInterno
                TabOrder = 19
              end
              object DBEdit14: TDBEdit
                Left = 524
                Top = 336
                Width = 121
                Height = 21
                DataField = 'CEP'
                DataSource = DsInterno
                TabOrder = 20
              end
              object DBEdit16: TDBEdit
                Left = 524
                Top = 374
                Width = 121
                Height = 21
                DataField = 'FONE'
                DataSource = DsInterno
                TabOrder = 22
              end
              object DBEdit17: TDBEdit
                Left = 412
                Top = 414
                Width = 234
                Height = 21
                DataField = 'CONTATO'
                DataSource = DsInterno
                TabOrder = 24
              end
              object DBLookupComboBoxIDCIDADE: TDBLookupComboBox
                Left = 44
                Top = 374
                Width = 441
                Height = 21
                DataField = 'IDCIDADE'
                DataSource = DsInterno
                KeyField = 'ID_CIDADE'
                ListField = 'CIDADE'
                ListSource = DM.DSCIDADE
                TabOrder = 21
              end
              object DBLookupComboBoxIDNACIONALIDADE1: TDBLookupComboBox
                Left = 44
                Top = 414
                Width = 331
                Height = 21
                DataField = 'IDPAIS_ENDERECO'
                DataSource = DsInterno
                KeyField = 'ID_NACIONALIDADE'
                ListField = 'NACIONALIDADE'
                ListSource = DM.DsPais
                TabOrder = 23
              end
            end
            object TabSheet1: TTabSheet
              Caption = 'CTC - Passo 1'
              ImageIndex = 2
              object Label8: TLabel
                Left = 16
                Top = 114
                Width = 191
                Height = 13
                Caption = 'An'#225'lise do crime praticado (participa'#231#227'o)'
                FocusControl = DBEdit8
              end
              object Label14: TLabel
                Left = 15
                Top = 310
                Width = 97
                Height = 13
                Caption = 'Situa'#231#227'o Processual'
              end
              object Label15: TLabel
                Left = 15
                Top = 154
                Width = 95
                Height = 13
                Caption = 'Passagem pelo SPF'
                FocusControl = DBEdit15
              end
              object Label16: TLabel
                Left = 15
                Top = 194
                Width = 62
                Height = 13
                Caption = 'Reincid'#234'ncia'
                FocusControl = DBEdit21
              end
              object Label26: TLabel
                Left = 15
                Top = 235
                Width = 83
                Height = 13
                Caption = 'Fac'#231#227'o criminosa'
                FocusControl = DBEdit23
              end
              object Label29: TLabel
                Left = 15
                Top = 272
                Width = 93
                Height = 13
                Caption = 'Situa'#231#227'o na fac'#231#227'o'
                FocusControl = DBEdit30
              end
              object Label17: TLabel
                Left = 15
                Top = 14
                Width = 107
                Height = 13
                Caption = 'Requisitos de Inclus'#227'o'
              end
              object DBEdit8: TDBEdit
                Left = 15
                Top = 130
                Width = 750
                Height = 21
                DataField = 'ANALISE_CRIME_PRATICADO'
                DataSource = DsCadastro
                TabOrder = 1
              end
              object DBEdit15: TDBEdit
                Left = 15
                Top = 170
                Width = 750
                Height = 21
                DataField = 'PASSAGEM_SPF'
                DataSource = DsCadastro
                TabOrder = 2
              end
              object DBEdit21: TDBEdit
                Left = 15
                Top = 210
                Width = 750
                Height = 21
                DataField = 'REINCIDENCIA'
                DataSource = DsCadastro
                TabOrder = 3
              end
              object DBEdit23: TDBEdit
                Left = 15
                Top = 251
                Width = 750
                Height = 21
                DataField = 'FACCAO_CRIMINOSA'
                DataSource = DsCadastro
                TabOrder = 4
              end
              object DBEdit30: TDBEdit
                Left = 15
                Top = 288
                Width = 750
                Height = 21
                DataField = 'SITUACAO_FACCAO'
                DataSource = DsCadastro
                TabOrder = 5
              end
              object DBMemo1: TDBMemo
                Left = 15
                Top = 32
                Width = 750
                Height = 80
                DataField = 'REQUISITO_INCLUSAO'
                DataSource = DsCadastro
                TabOrder = 0
              end
              object DBMemo19: TDBMemo
                Left = 15
                Top = 328
                Width = 750
                Height = 80
                DataField = 'SITUACAO_PROCESSUAL'
                DataSource = DsCadastro
                TabOrder = 6
              end
              object BtnSituacaoProcessual: TBitBtn
                Left = 767
                Top = 380
                Width = 30
                Height = 25
                Glyph.Data = {
                  F2010000424DF201000000000000760000002800000024000000130000000100
                  0400000000007C01000000000000000000001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
                  3333333333388F3333333333000033334224333333333333338338F333333333
                  0000333422224333333333333833338F33333333000033422222243333333333
                  83333338F3333333000034222A22224333333338F33F33338F33333300003222
                  A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
                  38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
                  2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
                  0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
                  333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
                  33333A2224A2233333333338F338F83300003333333333A2224A333333333333
                  8F338F33000033333333333A222433333333333338F338F30000333333333333
                  A224333333333333338F38F300003333333333333A223333333333333338F8F3
                  000033333333333333A3333333333333333383330000}
                NumGlyphs = 2
                TabOrder = 7
              end
            end
            object TabSheet2: TTabSheet
              Caption = 'CTC - Passo 2'
              ImageIndex = 3
              object Label41: TLabel
                Left = 15
                Top = 15
                Width = 205
                Height = 13
                Caption = 'Informa'#231#245'es de outras areas de intelig'#234'ncia'
              end
              object Label42: TLabel
                Left = 15
                Top = 131
                Width = 233
                Height = 13
                Caption = 'Confirma'#231#227'o da motiva'#231#227'o do pedido de inclus'#227'o'
                FocusControl = DBMemo2
              end
              object Label48: TLabel
                Left = 15
                Top = 247
                Width = 172
                Height = 13
                Caption = 'Conduta dentro desta unidade penal'
                FocusControl = DBMemo3
              end
              object DBMemo2: TDBMemo
                Left = 15
                Top = 147
                Width = 750
                Height = 89
                DataField = 'CONFIRMACAO_PEDIDO_INCLUSAO'
                DataSource = DsCadastro
                TabOrder = 1
              end
              object DBMemo3: TDBMemo
                Left = 15
                Top = 263
                Width = 750
                Height = 89
                DataField = 'CONDUTA_UNIDADE_PENAL'
                DataSource = DsCadastro
                TabOrder = 2
              end
              object DBMemo15: TDBMemo
                Left = 15
                Top = 32
                Width = 750
                Height = 89
                DataField = 'INFORMACOES_INTELIGENCIA'
                DataSource = DsCadastro
                TabOrder = 0
              end
              object BtnInTeligencia: TBitBtn
                Left = 767
                Top = 94
                Width = 30
                Height = 25
                Glyph.Data = {
                  F2010000424DF201000000000000760000002800000024000000130000000100
                  0400000000007C01000000000000000000001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
                  3333333333388F3333333333000033334224333333333333338338F333333333
                  0000333422224333333333333833338F33333333000033422222243333333333
                  83333338F3333333000034222A22224333333338F33F33338F33333300003222
                  A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
                  38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
                  2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
                  0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
                  333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
                  33333A2224A2233333333338F338F83300003333333333A2224A333333333333
                  8F338F33000033333333333A222433333333333338F338F30000333333333333
                  A224333333333333338F38F300003333333333333A223333333333333338F8F3
                  000033333333333333A3333333333333333383330000}
                NumGlyphs = 2
                TabOrder = 3
              end
              object BtnMotivacaoInclusao: TBitBtn
                Left = 767
                Top = 208
                Width = 30
                Height = 25
                Glyph.Data = {
                  F2010000424DF201000000000000760000002800000024000000130000000100
                  0400000000007C01000000000000000000001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
                  3333333333388F3333333333000033334224333333333333338338F333333333
                  0000333422224333333333333833338F33333333000033422222243333333333
                  83333338F3333333000034222A22224333333338F33F33338F33333300003222
                  A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
                  38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
                  2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
                  0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
                  333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
                  33333A2224A2233333333338F338F83300003333333333A2224A333333333333
                  8F338F33000033333333333A222433333333333338F338F30000333333333333
                  A224333333333333338F38F300003333333333333A223333333333333338F8F3
                  000033333333333333A3333333333333333383330000}
                NumGlyphs = 2
                TabOrder = 4
              end
              object BtnCondutaDentroUnidade: TBitBtn
                Left = 767
                Top = 328
                Width = 30
                Height = 25
                Glyph.Data = {
                  F2010000424DF201000000000000760000002800000024000000130000000100
                  0400000000007C01000000000000000000001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
                  3333333333388F3333333333000033334224333333333333338338F333333333
                  0000333422224333333333333833338F33333333000033422222243333333333
                  83333338F3333333000034222A22224333333338F33F33338F33333300003222
                  A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
                  38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
                  2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
                  0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
                  333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
                  33333A2224A2233333333338F338F83300003333333333A2224A333333333333
                  8F338F33000033333333333A222433333333333338F338F30000333333333333
                  A224333333333333338F38F300003333333333333A223333333333333338F8F3
                  000033333333333333A3333333333333333383330000}
                NumGlyphs = 2
                TabOrder = 5
              end
            end
            object TabSheet3: TTabSheet
              Caption = 'CTC - Passo 3'
              ImageIndex = 4
              object Label50: TLabel
                Left = 15
                Top = 18
                Width = 68
                Height = 13
                Caption = 'Servi'#231'o Social'
                FocusControl = DBMemo4
              end
              object Label51: TLabel
                Left = 15
                Top = 130
                Width = 59
                Height = 13
                Caption = 'Enfermagem'
                FocusControl = DBMemo5
              end
              object Label53: TLabel
                Left = 15
                Top = 242
                Width = 43
                Height = 13
                Caption = 'Farm'#225'cia'
                FocusControl = DBMemo6
              end
              object DBMemo4: TDBMemo
                Left = 15
                Top = 34
                Width = 750
                Height = 89
                DataField = 'SERVICO_SOCIAL'
                DataSource = DsCadastro
                TabOrder = 0
              end
              object DBMemo5: TDBMemo
                Left = 15
                Top = 146
                Width = 750
                Height = 89
                DataField = 'ENFERMAGEM'
                DataSource = DsCadastro
                TabOrder = 1
              end
              object DBMemo6: TDBMemo
                Left = 15
                Top = 258
                Width = 750
                Height = 89
                DataField = 'FARMACIA'
                DataSource = DsCadastro
                TabOrder = 2
              end
              object BtnServicoSocial: TBitBtn
                Left = 767
                Top = 97
                Width = 30
                Height = 25
                Glyph.Data = {
                  F2010000424DF201000000000000760000002800000024000000130000000100
                  0400000000007C01000000000000000000001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
                  3333333333388F3333333333000033334224333333333333338338F333333333
                  0000333422224333333333333833338F33333333000033422222243333333333
                  83333338F3333333000034222A22224333333338F33F33338F33333300003222
                  A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
                  38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
                  2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
                  0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
                  333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
                  33333A2224A2233333333338F338F83300003333333333A2224A333333333333
                  8F338F33000033333333333A222433333333333338F338F30000333333333333
                  A224333333333333338F38F300003333333333333A223333333333333338F8F3
                  000033333333333333A3333333333333333383330000}
                NumGlyphs = 2
                TabOrder = 3
              end
              object Btnenfermagem: TBitBtn
                Left = 767
                Top = 208
                Width = 30
                Height = 25
                Glyph.Data = {
                  F2010000424DF201000000000000760000002800000024000000130000000100
                  0400000000007C01000000000000000000001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
                  3333333333388F3333333333000033334224333333333333338338F333333333
                  0000333422224333333333333833338F33333333000033422222243333333333
                  83333338F3333333000034222A22224333333338F33F33338F33333300003222
                  A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
                  38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
                  2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
                  0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
                  333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
                  33333A2224A2233333333338F338F83300003333333333A2224A333333333333
                  8F338F33000033333333333A222433333333333338F338F30000333333333333
                  A224333333333333338F38F300003333333333333A223333333333333338F8F3
                  000033333333333333A3333333333333333383330000}
                NumGlyphs = 2
                TabOrder = 4
              end
              object BtnFarmacia: TBitBtn
                Left = 767
                Top = 322
                Width = 30
                Height = 25
                Glyph.Data = {
                  F2010000424DF201000000000000760000002800000024000000130000000100
                  0400000000007C01000000000000000000001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
                  3333333333388F3333333333000033334224333333333333338338F333333333
                  0000333422224333333333333833338F33333333000033422222243333333333
                  83333338F3333333000034222A22224333333338F33F33338F33333300003222
                  A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
                  38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
                  2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
                  0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
                  333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
                  33333A2224A2233333333338F338F83300003333333333A2224A333333333333
                  8F338F33000033333333333A222433333333333338F338F30000333333333333
                  A224333333333333338F38F300003333333333333A223333333333333338F8F3
                  000033333333333333A3333333333333333383330000}
                NumGlyphs = 2
                TabOrder = 5
              end
            end
            object TabSheet4: TTabSheet
              Caption = 'CTC - Passo 4'
              ImageIndex = 5
              object Label54: TLabel
                Left = 15
                Top = 16
                Width = 69
                Height = 13
                Caption = 'Clinica M'#233'dica'
                FocusControl = DBMemo7
              end
              object Label56: TLabel
                Left = 15
                Top = 128
                Width = 48
                Height = 13
                Caption = 'Psiquiatria'
                FocusControl = DBMemo8
              end
              object Label57: TLabel
                Left = 15
                Top = 240
                Width = 57
                Height = 13
                Caption = 'Odontologia'
                FocusControl = DBMemo9
              end
              object DBMemo7: TDBMemo
                Left = 15
                Top = 32
                Width = 750
                Height = 89
                DataField = 'CLINICA_MEDICA'
                DataSource = DsCadastro
                TabOrder = 0
              end
              object DBMemo8: TDBMemo
                Left = 15
                Top = 144
                Width = 750
                Height = 89
                DataField = 'PSIQUIATRIA'
                DataSource = DsCadastro
                TabOrder = 1
              end
              object DBMemo9: TDBMemo
                Left = 15
                Top = 256
                Width = 750
                Height = 89
                DataField = 'ODONTOLOGIA'
                DataSource = DsCadastro
                TabOrder = 2
              end
              object BtnOdontologia: TBitBtn
                Left = 767
                Top = 318
                Width = 30
                Height = 25
                Glyph.Data = {
                  F2010000424DF201000000000000760000002800000024000000130000000100
                  0400000000007C01000000000000000000001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
                  3333333333388F3333333333000033334224333333333333338338F333333333
                  0000333422224333333333333833338F33333333000033422222243333333333
                  83333338F3333333000034222A22224333333338F33F33338F33333300003222
                  A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
                  38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
                  2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
                  0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
                  333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
                  33333A2224A2233333333338F338F83300003333333333A2224A333333333333
                  8F338F33000033333333333A222433333333333338F338F30000333333333333
                  A224333333333333338F38F300003333333333333A223333333333333338F8F3
                  000033333333333333A3333333333333333383330000}
                NumGlyphs = 2
                TabOrder = 3
              end
              object BtnPsiquiatria: TBitBtn
                Left = 767
                Top = 204
                Width = 30
                Height = 25
                Glyph.Data = {
                  F2010000424DF201000000000000760000002800000024000000130000000100
                  0400000000007C01000000000000000000001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
                  3333333333388F3333333333000033334224333333333333338338F333333333
                  0000333422224333333333333833338F33333333000033422222243333333333
                  83333338F3333333000034222A22224333333338F33F33338F33333300003222
                  A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
                  38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
                  2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
                  0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
                  333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
                  33333A2224A2233333333338F338F83300003333333333A2224A333333333333
                  8F338F33000033333333333A222433333333333338F338F30000333333333333
                  A224333333333333338F38F300003333333333333A223333333333333338F8F3
                  000033333333333333A3333333333333333383330000}
                NumGlyphs = 2
                TabOrder = 4
              end
              object BtnClinicaMedica: TBitBtn
                Left = 767
                Top = 94
                Width = 30
                Height = 25
                Glyph.Data = {
                  F2010000424DF201000000000000760000002800000024000000130000000100
                  0400000000007C01000000000000000000001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
                  3333333333388F3333333333000033334224333333333333338338F333333333
                  0000333422224333333333333833338F33333333000033422222243333333333
                  83333338F3333333000034222A22224333333338F33F33338F33333300003222
                  A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
                  38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
                  2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
                  0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
                  333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
                  33333A2224A2233333333338F338F83300003333333333A2224A333333333333
                  8F338F33000033333333333A222433333333333338F338F30000333333333333
                  A224333333333333338F38F300003333333333333A223333333333333338F8F3
                  000033333333333333A3333333333333333383330000}
                NumGlyphs = 2
                TabOrder = 5
              end
            end
            object TabSheet5: TTabSheet
              Caption = 'CTC - Passo 5'
              ImageIndex = 6
              object Label58: TLabel
                Left = 15
                Top = 8
                Width = 48
                Height = 13
                Caption = 'Psicologia'
                FocusControl = DBMemo10
              end
              object Label59: TLabel
                Left = 15
                Top = 120
                Width = 99
                Height = 13
                Caption = 'Terapia Ocupacional'
                FocusControl = DBMemo11
              end
              object Label60: TLabel
                Left = 15
                Top = 232
                Width = 51
                Height = 13
                Caption = 'Pedagogia'
                FocusControl = DBMemo12
              end
              object DBMemo10: TDBMemo
                Left = 15
                Top = 24
                Width = 750
                Height = 89
                DataField = 'PSICOLOGIA'
                DataSource = DsCadastro
                TabOrder = 0
              end
              object DBMemo11: TDBMemo
                Left = 15
                Top = 136
                Width = 750
                Height = 89
                DataField = 'TERAPIA_OCUPACIONAL'
                DataSource = DsCadastro
                TabOrder = 1
              end
              object DBMemo12: TDBMemo
                Left = 15
                Top = 248
                Width = 750
                Height = 89
                DataField = 'PEDAGOGIA'
                DataSource = DsCadastro
                TabOrder = 2
              end
              object BtnPedagogia: TBitBtn
                Left = 767
                Top = 311
                Width = 30
                Height = 25
                Glyph.Data = {
                  F2010000424DF201000000000000760000002800000024000000130000000100
                  0400000000007C01000000000000000000001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
                  3333333333388F3333333333000033334224333333333333338338F333333333
                  0000333422224333333333333833338F33333333000033422222243333333333
                  83333338F3333333000034222A22224333333338F33F33338F33333300003222
                  A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
                  38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
                  2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
                  0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
                  333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
                  33333A2224A2233333333338F338F83300003333333333A2224A333333333333
                  8F338F33000033333333333A222433333333333338F338F30000333333333333
                  A224333333333333338F38F300003333333333333A223333333333333338F8F3
                  000033333333333333A3333333333333333383330000}
                NumGlyphs = 2
                TabOrder = 3
              end
              object BtnTerapiaOcupacional: TBitBtn
                Left = 767
                Top = 197
                Width = 30
                Height = 25
                Glyph.Data = {
                  F2010000424DF201000000000000760000002800000024000000130000000100
                  0400000000007C01000000000000000000001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
                  3333333333388F3333333333000033334224333333333333338338F333333333
                  0000333422224333333333333833338F33333333000033422222243333333333
                  83333338F3333333000034222A22224333333338F33F33338F33333300003222
                  A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
                  38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
                  2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
                  0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
                  333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
                  33333A2224A2233333333338F338F83300003333333333A2224A333333333333
                  8F338F33000033333333333A222433333333333338F338F30000333333333333
                  A224333333333333338F38F300003333333333333A223333333333333338F8F3
                  000033333333333333A3333333333333333383330000}
                NumGlyphs = 2
                TabOrder = 4
              end
              object BtnPsicologia: TBitBtn
                Left = 767
                Top = 87
                Width = 30
                Height = 25
                Glyph.Data = {
                  F2010000424DF201000000000000760000002800000024000000130000000100
                  0400000000007C01000000000000000000001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
                  3333333333388F3333333333000033334224333333333333338338F333333333
                  0000333422224333333333333833338F33333333000033422222243333333333
                  83333338F3333333000034222A22224333333338F33F33338F33333300003222
                  A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
                  38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
                  2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
                  0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
                  333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
                  33333A2224A2233333333338F338F83300003333333333A2224A333333333333
                  8F338F33000033333333333A222433333333333338F338F30000333333333333
                  A224333333333333338F38F300003333333333333A223333333333333338F8F3
                  000033333333333333A3333333333333333383330000}
                NumGlyphs = 2
                TabOrder = 5
              end
            end
            object TabSheet6: TTabSheet
              Caption = 'CTC - Passo 6'
              ImageIndex = 7
              object Label61: TLabel
                Left = 15
                Top = 13
                Width = 99
                Height = 13
                Caption = 'Assist'#234'ncia Religiosa'
              end
              object Label62: TLabel
                Left = 15
                Top = 124
                Width = 96
                Height = 13
                Caption = 'Assist'#234'ncia  Material'
              end
              object Label68: TLabel
                Left = 15
                Top = 238
                Width = 94
                Height = 13
                Caption = 'Assist'#234'ncia Jur'#237'dica'
              end
              object DBMemo16: TDBMemo
                Left = 15
                Top = 32
                Width = 750
                Height = 89
                DataField = 'ASSISTENCIA_RELIGIOSA'
                DataSource = DsCadastro
                TabOrder = 0
              end
              object DBMemo17: TDBMemo
                Left = 15
                Top = 144
                Width = 750
                Height = 89
                DataField = 'ASSISTENCIA_MATERIAL'
                DataSource = DsCadastro
                TabOrder = 1
              end
              object DBMemo18: TDBMemo
                Left = 15
                Top = 256
                Width = 750
                Height = 89
                DataField = 'ASSISTENCIA_JURIDICA'
                DataSource = DsCadastro
                TabOrder = 2
              end
              object BtnAssistenciaJuridica: TBitBtn
                Left = 767
                Top = 318
                Width = 30
                Height = 25
                Glyph.Data = {
                  F2010000424DF201000000000000760000002800000024000000130000000100
                  0400000000007C01000000000000000000001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
                  3333333333388F3333333333000033334224333333333333338338F333333333
                  0000333422224333333333333833338F33333333000033422222243333333333
                  83333338F3333333000034222A22224333333338F33F33338F33333300003222
                  A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
                  38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
                  2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
                  0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
                  333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
                  33333A2224A2233333333338F338F83300003333333333A2224A333333333333
                  8F338F33000033333333333A222433333333333338F338F30000333333333333
                  A224333333333333338F38F300003333333333333A223333333333333338F8F3
                  000033333333333333A3333333333333333383330000}
                NumGlyphs = 2
                TabOrder = 3
              end
              object BtnAssistenciaMaterial: TBitBtn
                Left = 767
                Top = 204
                Width = 30
                Height = 25
                Glyph.Data = {
                  F2010000424DF201000000000000760000002800000024000000130000000100
                  0400000000007C01000000000000000000001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
                  3333333333388F3333333333000033334224333333333333338338F333333333
                  0000333422224333333333333833338F33333333000033422222243333333333
                  83333338F3333333000034222A22224333333338F33F33338F33333300003222
                  A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
                  38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
                  2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
                  0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
                  333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
                  33333A2224A2233333333338F338F83300003333333333A2224A333333333333
                  8F338F33000033333333333A222433333333333338F338F30000333333333333
                  A224333333333333338F38F300003333333333333A223333333333333338F8F3
                  000033333333333333A3333333333333333383330000}
                NumGlyphs = 2
                TabOrder = 4
              end
              object BtnAssistenciaReligiosa: TBitBtn
                Left = 767
                Top = 94
                Width = 30
                Height = 25
                Glyph.Data = {
                  F2010000424DF201000000000000760000002800000024000000130000000100
                  0400000000007C01000000000000000000001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
                  3333333333388F3333333333000033334224333333333333338338F333333333
                  0000333422224333333333333833338F33333333000033422222243333333333
                  83333338F3333333000034222A22224333333338F33F33338F33333300003222
                  A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
                  38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
                  2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
                  0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
                  333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
                  33333A2224A2233333333338F338F83300003333333333A2224A333333333333
                  8F338F33000033333333333A222433333333333338F338F30000333333333333
                  A224333333333333338F38F300003333333333333A223333333333333338F8F3
                  000033333333333333A3333333333333333383330000}
                NumGlyphs = 2
                TabOrder = 5
              end
            end
            object TabSheet8: TTabSheet
              Caption = 'CTC - Passo 7'
              ImageIndex = 9
              object Label69: TLabel
                Left = 15
                Top = 16
                Width = 110
                Height = 13
                Caption = 'Projeto e demais a'#231#245'es'
                FocusControl = DBMemo13
              end
              object DBMemo13: TDBMemo
                Left = 15
                Top = 32
                Width = 750
                Height = 354
                DataField = 'PROJETO_DEMAIS_ACOES'
                DataSource = DsCadastro
                TabOrder = 0
              end
            end
            object TabSheet7: TTabSheet
              Caption = 'CTC - Conclus'#227'o'
              ImageIndex = 8
              object Label70: TLabel
                Left = 15
                Top = 16
                Width = 50
                Height = 13
                Caption = 'Conclus'#227'o'
                FocusControl = DBMemo14
              end
              object DBMemo14: TDBMemo
                Left = 15
                Top = 32
                Width = 737
                Height = 376
                DataField = 'CONCLUSAO'
                DataSource = DsCadastro
                TabOrder = 0
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelConsulta: TPanel
          inherited DBGridConsulta: TDBGrid
            Columns = <
              item
                Expanded = False
                FieldName = 'IDCTC'
                Title.Caption = 'Numero'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATUS'
                Title.Caption = 'Status'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_INICIO'
                Title.Caption = 'Data Inicial'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_FINAL'
                Title.Caption = 'Data Final'
                Width = 100
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM CTC')
  end
  inherited CdsCadastro: TClientDataSet
    AfterInsert = CdsCadastroAfterInsert
  end
  object DspInterno: TDataSetProvider
    DataSet = SqInterno
    Left = 508
    Top = 10
  end
  object CDSInterno: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'IDINTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspInterno'
    Left = 536
    Top = 10
  end
  object DsInterno: TDataSource
    DataSet = CDSInterno
    Left = 565
    Top = 10
  end
  object SqInterno: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from interno'
      'where id_interno=:id_interno')
    Left = 464
    Top = 8
    ParamData = <
      item
        Name = 'ID_INTERNO'
        ParamType = ptInput
      end>
  end
end
