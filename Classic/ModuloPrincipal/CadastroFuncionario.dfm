inherited FrmCadastroFuncionario: TFrmCadastroFuncionario
  Left = 356
  Top = 127
  Width = 957
  Height = 681
  Caption = 'Cadastro Funcion'#225'rio'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 603
    inherited ToolBarModeloCadastro: TToolBar
      Height = 585
    end
    inherited DBNavigator1: TDBNavigator
      Top = 585
      Hints.Strings = ()
      OnClick = DBNavigator1Click
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 834
    Height = 603
    inherited PageControlModeloCadastro: TPageControl
      Width = 834
      Height = 603
      ActivePage = TabSheetCadastro
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 826
          Height = 575
          object PageControlFuncionario: TPageControl
            Left = 1
            Top = 1
            Width = 824
            Height = 573
            ActivePage = TabPrincipal
            Align = alClient
            TabOrder = 0
            object TabPrincipal: TTabSheet
              Caption = 'Principal'
              object Label2: TLabel
                Left = 151
                Top = 20
                Width = 11
                Height = 13
                Caption = 'ID'
                FocusControl = DBEditcodigo
              end
              object Label3: TLabel
                Left = 194
                Top = 20
                Width = 28
                Height = 13
                Caption = 'Nome'
                FocusControl = DBEdit2
              end
              object Label17: TLabel
                Left = 263
                Top = 63
                Width = 67
                Height = 13
                Caption = 'Nome da M'#227'e'
                FocusControl = DBEdit12
              end
              object Label4: TLabel
                Left = 151
                Top = 108
                Width = 45
                Height = 13
                Caption = 'Matr'#237'cula'
                FocusControl = DBEdit3
              end
              object Label6: TLabel
                Left = 258
                Top = 108
                Width = 20
                Height = 13
                Caption = 'CPF'
                FocusControl = DBEditCPF
              end
              object Label7: TLabel
                Left = 402
                Top = 108
                Width = 16
                Height = 13
                Caption = 'RG'
                FocusControl = DBEdit1
              end
              object Label13: TLabel
                Left = 514
                Top = 108
                Width = 68
                Height = 13
                Caption = #211'rg'#227'o Emissor'
                FocusControl = DBEdit6
              end
              object Label16: TLabel
                Left = 619
                Top = 108
                Width = 31
                Height = 13
                Caption = 'Classe'
                FocusControl = DBEdit11
              end
              object Label19: TLabel
                Left = 693
                Top = 108
                Width = 77
                Height = 13
                Caption = 'Tipo Sangu'#237'neo'
                FocusControl = DBEdit14
              end
              object Label14: TLabel
                Left = 687
                Top = 20
                Width = 86
                Height = 13
                Caption = 'Data de Admiss'#227'o'
                FocusControl = DBEditadmissao
              end
              object Label15: TLabel
                Left = 152
                Top = 63
                Width = 97
                Height = 13
                Caption = 'Data de Nascimento'
                FocusControl = DBEditnascimento
              end
              object Label20: TLabel
                Left = 16
                Top = 214
                Width = 60
                Height = 13
                Caption = 'Naturalidade'
              end
              object Label21: TLabel
                Left = 16
                Top = 307
                Width = 28
                Height = 13
                Caption = 'Cargo'
              end
              object Label10: TLabel
                Left = 312
                Top = 348
                Width = 114
                Height = 13
                Caption = 'Fun'#231#227'o Desempenhada'
              end
              object Label22: TLabel
                Left = 16
                Top = 348
                Width = 80
                Height = 13
                Caption = #193'rea de Atua'#231#227'o'
              end
              object Label11: TLabel
                Left = 440
                Top = 390
                Width = 256
                Height = 13
                Caption = 'Lota'#231#227'o Atual = Unidade que ter'#225'  Acesso no Sistema'
              end
              object Label18: TLabel
                Left = 551
                Top = 63
                Width = 61
                Height = 13
                Caption = 'Nome do Pai'
                FocusControl = DBEdit13
              end
              object Label31: TLabel
                Left = 680
                Top = 160
                Width = 71
                Height = 20
                Caption = 'DIGITAL'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                Visible = False
              end
              object FOTO: TLabel
                Left = 56
                Top = 3
                Width = 47
                Height = 20
                Caption = 'FOTO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label32: TLabel
                Left = 336
                Top = 390
                Width = 80
                Height = 13
                Caption = 'Data da Lota'#231#227'o'
                FocusControl = DBEditdtlotacao
              end
              object Label33: TLabel
                Left = 16
                Top = 260
                Width = 61
                Height = 13
                Caption = 'Escolaridade'
              end
              object Label34: TLabel
                Left = 640
                Top = 347
                Width = 131
                Height = 13
                Caption = 'Hor'#225'rio/Escala de Trabalho'
              end
              object Label35: TLabel
                Left = 16
                Top = 391
                Width = 118
                Height = 13
                Caption = 'Posto/Local de Trabalho'
              end
              object SpeedButton3: TSpeedButton
                Left = 303
                Top = 405
                Width = 23
                Height = 22
                Caption = '...'
                OnClick = SpeedButton3Click
              end
              object Label36: TLabel
                Left = 313
                Top = 258
                Width = 27
                Height = 13
                Caption = 'Curso'
              end
              object SpeedButton1: TSpeedButton
                Left = 608
                Top = 272
                Width = 23
                Height = 22
                Hint = 'Cadastrar Curso'
                Caption = '...'
                Enabled = False
                Flat = True
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton1Click
              end
              object Label37: TLabel
                Left = 567
                Top = 20
                Width = 78
                Height = 13
                Caption = 'Nome de Guerra'
                FocusControl = DBEdit5
              end
              object Label38: TLabel
                Left = 14
                Top = 160
                Width = 55
                Height = 13
                Caption = 'Estado Civil'
              end
              object Label39: TLabel
                Left = 184
                Top = 159
                Width = 38
                Height = 13
                Caption = 'Religi'#227'o'
              end
              object Label40: TLabel
                Left = 432
                Top = 159
                Width = 23
                Height = 13
                Caption = 'Cutis'
                FocusControl = DBEdit9
              end
              object Label42: TLabel
                Left = 312
                Top = 307
                Width = 159
                Height = 13
                Caption = 'Observa'#231#245'es Referente ao Cargo'
              end
              object DBImageFOTOFUNCIONARIO: TDBImage
                Left = 16
                Top = 22
                Width = 127
                Height = 127
                DataField = 'FOTO'
                DataSource = DsCadastro
                Stretch = True
                TabOrder = 0
                OnClick = DBImageFOTOFUNCIONARIOClick
              end
              object DBEditcodigo: TDBEdit
                Left = 151
                Top = 36
                Width = 41
                Height = 21
                DataField = 'ID_FUNCIONARIO'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 1
              end
              object DBEdit2: TDBEdit
                Left = 194
                Top = 36
                Width = 367
                Height = 21
                DataField = 'NOME_FUNCIONARIO'
                DataSource = DsCadastro
                TabOrder = 2
              end
              object DBEdit12: TDBEdit
                Left = 264
                Top = 79
                Width = 280
                Height = 21
                DataField = 'MAE'
                DataSource = DsCadastro
                TabOrder = 6
              end
              object DBEdit3: TDBEdit
                Left = 151
                Top = 124
                Width = 97
                Height = 21
                DataField = 'MATRICULA'
                DataSource = DsCadastro
                TabOrder = 8
              end
              object DBEditCPF: TDBEdit
                Left = 258
                Top = 124
                Width = 137
                Height = 21
                DataField = 'CPF'
                DataSource = DsCadastro
                TabOrder = 9
                OnExit = DBEditCPFExit
                OnKeyPress = DBEditCPFKeyPress
              end
              object DBEdit1: TDBEdit
                Left = 402
                Top = 124
                Width = 102
                Height = 21
                DataField = 'RG'
                DataSource = DsCadastro
                TabOrder = 10
              end
              object DBEdit6: TDBEdit
                Left = 514
                Top = 124
                Width = 102
                Height = 21
                DataField = 'ORGAOEMISSOR'
                DataSource = DsCadastro
                TabOrder = 11
              end
              object DBEdit11: TDBEdit
                Left = 619
                Top = 124
                Width = 76
                Height = 21
                DataField = 'CLASSE'
                DataSource = DsCadastro
                TabOrder = 12
              end
              object DBEdit14: TDBEdit
                Left = 696
                Top = 124
                Width = 89
                Height = 21
                DataField = 'FATORRH'
                DataSource = DsCadastro
                TabOrder = 13
              end
              object DBEditadmissao: TDBEdit
                Left = 687
                Top = 36
                Width = 100
                Height = 21
                DataField = 'ADMISSAO'
                DataSource = DsCadastro
                TabOrder = 4
                OnExit = DBEditadmissaoExit
                OnKeyPress = DBEditadmissaoKeyPress
              end
              object DBEditnascimento: TDBEdit
                Left = 152
                Top = 79
                Width = 105
                Height = 21
                DataField = 'DTNASCIMENTO'
                DataSource = DsCadastro
                TabOrder = 5
                OnExit = DBEditnascimentoExit
                OnKeyPress = DBEditnascimentoKeyPress
              end
              object DBLookupComboBox1: TDBLookupComboBox
                Left = 16
                Top = 230
                Width = 217
                Height = 21
                DataField = 'ID_NATURALIDADE'
                DataSource = DsCadastro
                KeyField = 'ID_CIDADE'
                ListField = 'CIDADE'
                ListSource = DM.DSCIDADE
                TabOrder = 17
              end
              object DBComboBox2: TDBComboBox
                Left = 16
                Top = 323
                Width = 281
                Height = 21
                Style = csDropDownList
                DataField = 'CARGO'
                DataSource = DsCadastro
                ItemHeight = 13
                Items.Strings = (
                  'POLICIAL PENAL'
                  'ASSISTENTE ADMINISTRATIVO'
                  'ASSISTENTE SOCIAL'
                  'T'#201'CNICO EM ENFERMAGEM'
                  'PSICOLOGO'
                  'CHEFE DE PLANT'#195'O'
                  'FARMAC'#202'UTICO'
                  'M'#201'DICO'
                  'DENTISTA'
                  'DIRETOR'
                  'SUBDIRETOR'
                  'GERENTE PENAL'
                  'CHEFE DE DISCIPLINA'
                  'ADVOGADO'
                  'PSIQUIATRA'
                  'GERENTE DE MANUTEN'#199#195'O'
                  'PEDAGOGO'
                  'NUTRICIONISTA')
                TabOrder = 23
                OnKeyPress = DBComboBox2KeyPress
              end
              object DBComboBox1: TDBComboBox
                Left = 312
                Top = 363
                Width = 321
                Height = 21
                Style = csDropDownList
                DataField = 'FUNCAO'
                DataSource = DsCadastro
                ItemHeight = 13
                Items.Strings = (
                  'ADMINISTRATIVO'
                  'ARQUIVAMENTO'
                  'AUXILIAR DE ADJUNTO'
                  'AUXILIAR DE CHEFE DE PLANT'#195'O'
                  'AUXILIAR DO CHEFE DA DIVIS'#195'O DE SEGURAN'#199'A'
                  'CHEFE DA DIVIS'#195'O DE SEGURAN'#199'A'
                  'CHEFE DA INTELIG'#202'NCIA'
                  'CHEFE DA REABILITA'#199#195'O'
                  'CHEFE DA SA'#218'DE'
                  'CHEFE DE DISCIPLINA'
                  'CHEFE DE N'#218'CLEO'
                  'CHEFE DE P'#193'TIO'
                  'CHEFE DE PLANT'#195'O'
                  'CHEFE DE VIV'#202'NCIA'
                  'CHEFE DO ADMINISTRATIVO'
                  'CHEFE DO MONITORAMENTO'
                  'DIRETOR'
                  'DIRETOR EM SUBSTITUI'#199#195'O'
                  'DISCIPLINA'
                  'EDUCA'#199#195'O'
                  'ENFERMAGEM'
                  'FARM'#193'CIA'
                  'GERENTES'
                  'JUR'#205'DICO'
                  'ODONTOLOGIA'
                  'PEDAGOGIA'
                  'PSICOLOGIA'
                  'PSICOSSOCIAL'
                  'PSIQUIATRIA'
                  'RECURSOS HUMANOS'
                  'SA'#218'DE'
                  'SERVI'#199'O SOCIAL'
                  'SUBDIRETOR'
                  'SUBDIRETOR EM SUBSTITUI'#199#195'O'
                  'TERAPIA OCUPACIONAL')
                Sorted = True
                TabOrder = 26
                OnKeyPress = DBComboBox1KeyPress
              end
              object DBComboBox3: TDBComboBox
                Left = 16
                Top = 364
                Width = 281
                Height = 21
                DataField = 'AREA'
                DataSource = DsCadastro
                ItemHeight = 13
                Items.Strings = (
                  'ADMINISTRA'#199#195'O E FINAN'#199'AS'
                  'ASSIST'#202'NCIA E PER'#205'CIA'
                  'ASSIST'#202'NCIA JUR'#205'DICA'
                  'MANUTEN'#199#195'O'
                  'SEGURAN'#199'A E CUST'#211'DIA'
                  'POLICIAL E PER'#205'CIA'
                  'INTELIG'#202'NCIA'
                  'MONITORAMENTO'
                  'ASSIST'#202'NCIA RELIGIOSA')
                TabOrder = 25
                OnKeyPress = DBComboBox3KeyPress
              end
              object DBLookupComboBox2: TDBLookupComboBox
                Left = 440
                Top = 406
                Width = 345
                Height = 21
                DataField = 'ID_UP'
                DataSource = DsCadastro
                KeyField = 'ID_UP'
                ListField = 'NOME_UP'
                ListSource = DM.DsUP
                TabOrder = 30
              end
              object DBRadioGroup1: TDBRadioGroup
                Left = 481
                Top = 210
                Width = 152
                Height = 40
                Caption = 'Imprimir Identidade Funcional'
                Columns = 2
                DataField = 'IMPRIMIR'
                DataSource = DsCadastro
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 19
                Values.Strings = (
                  'S'
                  'N')
                Visible = False
              end
              object DBEdit13: TDBEdit
                Left = 552
                Top = 79
                Width = 234
                Height = 21
                DataField = 'PAI'
                DataSource = DsCadastro
                TabOrder = 7
              end
              object DBImagedIGITAL: TDBImage
                Left = 656
                Top = 185
                Width = 127
                Height = 127
                DataField = 'DIGITAL'
                DataSource = DsCadastro
                TabOrder = 20
                Visible = False
                OnClick = DBImagedIGITALClick
              end
              object DBEditdtlotacao: TDBEdit
                Left = 336
                Top = 406
                Width = 89
                Height = 21
                DataField = 'DATA_LOTACAO'
                DataSource = DsCadastro
                TabOrder = 29
                OnExit = DBEditdtlotacaoExit
                OnKeyPress = DBEditdtlotacaoKeyPress
              end
              object DBComboBox4: TDBComboBox
                Left = 15
                Top = 275
                Width = 282
                Height = 21
                Style = csDropDownList
                DataField = 'ESCOLARIDADE'
                DataSource = DsCadastro
                ItemHeight = 13
                Items.Strings = (
                  'Ensino Fundamental Incompleto'
                  'Ensino Fundamental Completo'
                  'Ensino Medio Incompleto'
                  'Ensino Medio Completo'
                  'Ensino Superior Incompleto'
                  'Ensino Superior Completo'
                  'P'#243's-Graduado'
                  'Mestrado'
                  'Doutorado')
                TabOrder = 21
              end
              object DBRadioGroup3: TDBRadioGroup
                Left = 271
                Top = 211
                Width = 153
                Height = 40
                Caption = 'Sexo'
                Columns = 2
                DataField = 'SEXO'
                DataSource = DsCadastro
                Items.Strings = (
                  'Masculino'
                  'Feminino')
                TabOrder = 18
                Values.Strings = (
                  'M'
                  'F')
              end
              object DBComboBox5: TDBComboBox
                Left = 640
                Top = 363
                Width = 145
                Height = 21
                Style = csDropDownList
                DataField = 'PLANTAO_EXPEDIENTE'
                DataSource = DsCadastro
                ItemHeight = 13
                Items.Strings = (
                  'EXPEDIENTE'
                  'PLANT'#195'O')
                TabOrder = 27
                OnKeyPress = DBComboBox5KeyPress
              end
              object DBLookupComboBoxPostoTrabalho: TDBLookupComboBox
                Left = 16
                Top = 406
                Width = 281
                Height = 21
                DataField = 'IDPOSTO_TRABALHO'
                DataSource = DsCadastro
                KeyField = 'IDPOSTO_TRABALHO'
                ListField = 'POSTO_TRABALHO'
                ListSource = DM.DsPostoTrabalho
                TabOrder = 28
              end
              object DBLookupComboBox4: TDBLookupComboBox
                Left = 312
                Top = 273
                Width = 289
                Height = 21
                DataField = 'id_curso'
                DataSource = DsCadastro
                KeyField = 'id_curso'
                ListField = 'curso'
                ListSource = DM.dscurso
                TabOrder = 22
              end
              object DBEdit5: TDBEdit
                Left = 568
                Top = 36
                Width = 115
                Height = 21
                CharCase = ecUpperCase
                DataField = 'NOME_GUERRA'
                DataSource = DsCadastro
                TabOrder = 3
              end
              object DBComboBox6: TDBComboBox
                Left = 14
                Top = 176
                Width = 163
                Height = 21
                Style = csDropDownList
                DataField = 'ESTADO_CIVIL'
                DataSource = DsCadastro
                ItemHeight = 13
                Items.Strings = (
                  'Amasiado'
                  'Casado'
                  'Divorciado'
                  'Separado Judicialmente'
                  'Solteiro'
                  'Viuvo'
                  'Uni'#227'o Estavel')
                TabOrder = 14
              end
              object DBEdit9: TDBEdit
                Left = 432
                Top = 175
                Width = 201
                Height = 21
                DataField = 'cutis'
                DataSource = DsCadastro
                TabOrder = 16
              end
              object DBCbReligiao: TDBComboBox
                Left = 184
                Top = 176
                Width = 241
                Height = 21
                Style = csDropDownList
                DataField = 'religiao'
                DataSource = DsCadastro
                ItemHeight = 13
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
                TabOrder = 15
              end
              object DBEdit10: TDBEdit
                Left = 312
                Top = 323
                Width = 473
                Height = 21
                DataField = 'OBS_CARGO'
                DataSource = DsCadastro
                MaxLength = 200
                TabOrder = 24
              end
            end
            object TabEndereco: TTabSheet
              Caption = 'Endere'#231'o'
              ImageIndex = 1
              object Label9: TLabel
                Left = 16
                Top = 16
                Width = 46
                Height = 13
                Caption = 'Endere'#231'o'
                FocusControl = DBEdit8
              end
              object Label23: TLabel
                Left = 16
                Top = 60
                Width = 27
                Height = 13
                Caption = 'Bairro'
                FocusControl = DBEdit15
              end
              object Label24: TLabel
                Left = 392
                Top = 60
                Width = 64
                Height = 13
                Caption = 'Complemento'
                FocusControl = DBEdit16
              end
              object Label25: TLabel
                Left = 120
                Top = 104
                Width = 33
                Height = 13
                Caption = 'Cidade'
              end
              object Label26: TLabel
                Left = 16
                Top = 104
                Width = 21
                Height = 13
                Caption = 'CEP'
                FocusControl = DBEditcep
              end
              object Label27: TLabel
                Left = 448
                Top = 104
                Width = 64
                Height = 13
                Caption = 'Telefone Fixo'
                FocusControl = DBEditfone
              end
              object Label28: TLabel
                Left = 560
                Top = 104
                Width = 32
                Height = 13
                Caption = 'Celular'
                FocusControl = DBEditcelular
              end
              object Label29: TLabel
                Left = 16
                Top = 149
                Width = 28
                Height = 13
                Caption = 'E-mail'
                FocusControl = DBEdit21
              end
              object Label30: TLabel
                Left = 624
                Top = 16
                Width = 12
                Height = 13
                Caption = 'N'#186
                FocusControl = DBEdit22
              end
              object DBEdit8: TDBEdit
                Left = 16
                Top = 32
                Width = 601
                Height = 21
                DataField = 'ENDERECO'
                DataSource = DsCadastro
                TabOrder = 0
              end
              object DBEdit15: TDBEdit
                Left = 16
                Top = 76
                Width = 361
                Height = 21
                DataField = 'BAIRRO'
                DataSource = DsCadastro
                TabOrder = 2
              end
              object DBEdit16: TDBEdit
                Left = 392
                Top = 76
                Width = 281
                Height = 21
                DataField = 'COMPLEMENTO'
                DataSource = DsCadastro
                TabOrder = 3
              end
              object DBEditcep: TDBEdit
                Left = 16
                Top = 120
                Width = 97
                Height = 21
                DataField = 'CEP'
                DataSource = DsCadastro
                TabOrder = 4
              end
              object DBEditfone: TDBEdit
                Left = 448
                Top = 120
                Width = 105
                Height = 21
                DataField = 'FONE'
                DataSource = DsCadastro
                TabOrder = 6
              end
              object DBEditcelular: TDBEdit
                Left = 560
                Top = 120
                Width = 113
                Height = 21
                DataField = 'CELULAR'
                DataSource = DsCadastro
                TabOrder = 7
              end
              object DBEdit21: TDBEdit
                Left = 16
                Top = 165
                Width = 657
                Height = 21
                CharCase = ecLowerCase
                DataField = 'EMAIL'
                DataSource = DsCadastro
                TabOrder = 8
              end
              object DBEdit22: TDBEdit
                Left = 624
                Top = 32
                Width = 49
                Height = 21
                DataField = 'NUMERO'
                DataSource = DsCadastro
                TabOrder = 1
              end
              object DBLookupComboBox3: TDBLookupComboBox
                Left = 120
                Top = 120
                Width = 313
                Height = 21
                DataField = 'ID_CIDADE'
                DataSource = DsCadastro
                KeyField = 'ID_CIDADE'
                ListField = 'CIDADE'
                ListSource = DM.DSCIDADE
                TabOrder = 5
              end
            end
            object TabPermissao: TTabSheet
              Caption = 'Permiss'#227'o / Acesso'
              ImageIndex = 2
              object Label8: TLabel
                Left = 10
                Top = 45
                Width = 26
                Height = 13
                Caption = 'Login'
                FocusControl = DBEdit7
              end
              object Label5: TLabel
                Left = 146
                Top = 45
                Width = 31
                Height = 13
                Caption = 'Senha'
                FocusControl = DBEdit4
              end
              object Label12: TLabel
                Left = 258
                Top = 45
                Width = 78
                Height = 13
                Caption = 'Confirmar Senha'
              end
              object Label41: TLabel
                Left = 388
                Top = 45
                Width = 117
                Height = 13
                Caption = 'Perfil de Usu'#225'rio/Acesso'
              end
              object Label43: TLabel
                Left = 7
                Top = 1
                Width = 796
                Height = 13
                Caption = 
                  '*As permiss'#245'es que est'#227'o desabilitadas, mesmo se marcadas como n' +
                  #227'o ou n'#227'o selecionadas, '#233' porque o usu'#225'rio j'#225' a possui atrav'#233's d' +
                  'as permiss'#245'es do Perfil de Usu'#225'rio.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object DBEdit7: TDBEdit
                Left = 10
                Top = 61
                Width = 127
                Height = 21
                DataField = 'LOGIN'
                DataSource = DsCadastro
                TabOrder = 0
              end
              object DBEdit4: TDBEdit
                Left = 146
                Top = 61
                Width = 105
                Height = 21
                CharCase = ecUpperCase
                DataField = 'SENHA'
                DataSource = DsCadastro
                PasswordChar = '*'
                TabOrder = 1
              end
              object EdtConfirmaSenha: TEdit
                Left = 258
                Top = 61
                Width = 121
                Height = 21
                CharCase = ecUpperCase
                PasswordChar = '*'
                TabOrder = 2
              end
              object PageControlPermissao: TPageControl
                Left = 8
                Top = 96
                Width = 785
                Height = 433
                ActivePage = TabModulos
                TabOrder = 6
                object TabGeral: TTabSheet
                  Caption = 'Geral'
                  object GroupBox1: TGroupBox
                    Left = 102
                    Top = 47
                    Width = 90
                    Height = 170
                    Caption = 'Confere'
                    TabOrder = 6
                    object CHEditarConfere: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = CHEditarConfereClick
                    end
                    object CHdeletarconfere: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = CHdeletarconfereClick
                    end
                    object CHConsultarConfere: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = CHConsultarConfereClick
                    end
                    object CHInserirConfere: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = CHInserirConfereClick
                    end
                    object CHTodasConfere: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = CHTodasConfereClick
                    end
                    object chrelatorioconfere: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatorioconfereClick
                    end
                  end
                  object GroupBox2: TGroupBox
                    Left = 197
                    Top = 47
                    Width = 90
                    Height = 170
                    Caption = 'Visitante'
                    TabOrder = 7
                    object chEditarVisitante: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = chEditarVisitanteClick
                    end
                    object chdeletarVisitante: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarVisitanteClick
                    end
                    object chConsultarVisitante: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chConsultarVisitanteClick
                    end
                    object chInserirVisitante: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chInserirVisitanteClick
                    end
                    object chTodasVisitante: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chTodasVisitanteClick
                    end
                    object chrelatoriovisitante: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriovisitanteClick
                    end
                  end
                  object GroupBox20: TGroupBox
                    Left = 581
                    Top = 47
                    Width = 90
                    Height = 194
                    Caption = 'Ocorr'#234'ncias'
                    TabOrder = 11
                    object chConsultaOcorrencia: TCheckBox
                      Left = 8
                      Top = 22
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chConsultaOcorrenciaClick
                    end
                    object chEditaOcorrencia: TCheckBox
                      Left = 8
                      Top = 47
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = chEditaOcorrenciaClick
                    end
                    object chDeletaOcorrencia: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chDeletaOcorrenciaClick
                    end
                    object chInsereOcorrencia: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chInsereOcorrenciaClick
                    end
                    object chRelatorioOcorrencia: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chRelatorioOcorrenciaClick
                    end
                    object chTodasOcorrencia: TCheckBox
                      Left = 8
                      Top = 167
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 6
                      OnClick = chTodasOcorrenciaClick
                    end
                    object chDespachoOcorrencia: TCheckBox
                      Left = 8
                      Top = 143
                      Width = 73
                      Height = 17
                      Caption = 'Despacho'
                      TabOrder = 5
                      OnClick = chDespachoOcorrenciaClick
                    end
                  end
                  object DBrgEntradaVisitante: TDBRadioGroup
                    Left = 8
                    Top = 2
                    Width = 121
                    Height = 41
                    Caption = 'Entrada de Visitantes'
                    Columns = 2
                    DataField = 'PERMISSAO_ENTRADAVISITANTE'
                    DataSource = DsCadastro
                    Items.Strings = (
                      'Sim'
                      'N'#227'o')
                    TabOrder = 0
                    Values.Strings = (
                      'S'
                      'N')
                  end
                  object DBRadioGroupVISUALIZA_OUTRAS_UP: TDBRadioGroup
                    Left = 133
                    Top = 2
                    Width = 174
                    Height = 41
                    Caption = 'Acessa outras Unidades Penais?'
                    Columns = 2
                    DataField = 'VISUALIZA_OUTRAS_UP'
                    DataSource = DsCadastro
                    Items.Strings = (
                      'Sim'
                      'N'#227'o')
                    TabOrder = 1
                    Values.Strings = (
                      'S'
                      'N')
                  end
                  object DBRadioGroupAutorizadoWeb: TDBRadioGroup
                    Left = 311
                    Top = 2
                    Width = 113
                    Height = 41
                    Caption = 'Liberar SiapenWeb?'
                    Columns = 2
                    DataField = 'AUTORIZADO_WEB'
                    DataSource = DsCadastro
                    Items.Strings = (
                      'Sim'
                      'N'#227'o')
                    TabOrder = 2
                    Values.Strings = (
                      'S'
                      'N')
                  end
                  object DbrDefinePerfilUsuario: TDBRadioGroup
                    Left = 428
                    Top = 2
                    Width = 162
                    Height = 41
                    Caption = 'Pode atribuir Perfil ao Usu'#225'rio?'
                    Columns = 2
                    DataField = 'DEFINE_PERFIL_USUARIO'
                    DataSource = DsCadastro
                    Items.Strings = (
                      'Sim'
                      'N'#227'o')
                    TabOrder = 3
                    Values.Strings = (
                      'S'
                      'N')
                  end
                  object DbrConcedePermissaoIndividual: TDBRadioGroup
                    Left = 594
                    Top = 2
                    Width = 183
                    Height = 41
                    Caption = 'Concede Permiss'#245'es Fora do Perfil?'
                    Columns = 2
                    DataField = 'CONCEDE_PERMISSAO_INDIVIDUAL'
                    DataSource = DsCadastro
                    Items.Strings = (
                      'Sim'
                      'N'#227'o')
                    TabOrder = 4
                    Values.Strings = (
                      'S'
                      'N')
                  end
                  object GbAdvogado: TGroupBox
                    Left = 7
                    Top = 47
                    Width = 90
                    Height = 170
                    Caption = 'Advogado'
                    TabOrder = 5
                    object ChConsultarAdvogado: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarAdvogadoClick
                    end
                    object ChEditarAdvogado: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarAdvogadoClick
                    end
                    object ChDeletarAdvogado: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarAdvogadoClick
                    end
                    object ChInserirAdvogado: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirAdvogadoClick
                    end
                    object ChRelatorioAdvogado: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioAdvogadoClick
                    end
                    object ChTodasAdvogado: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasAdvogadoClick
                    end
                  end
                  object GroupBox21: TGroupBox
                    Left = 388
                    Top = 47
                    Width = 90
                    Height = 170
                    Caption = 'Fac'#231#227'o'
                    TabOrder = 9
                    object ChConsultarFaccao: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarFaccaoClick
                    end
                    object ChEditarFaccao: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarFaccaoClick
                    end
                    object ChDeletarFaccao: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarFaccaoClick
                    end
                    object ChInserirFaccao: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirFaccaoClick
                    end
                    object ChRelatorioFaccao: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioFaccaoClick
                    end
                    object ChTodasFaccao: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasFaccaoClick
                    end
                  end
                  object GbCTC: TGroupBox
                    Left = 484
                    Top = 47
                    Width = 90
                    Height = 170
                    Caption = 'CTC'
                    TabOrder = 10
                    object ChConsultarCTC: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarCTCClick
                    end
                    object ChEditarCTC: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarCTCClick
                    end
                    object ChDeletarCTC: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarCTCClick
                    end
                    object ChInserirCTC: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirCTCClick
                    end
                    object ChRelatorioCTC: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioCTCClick
                    end
                    object ChTodasCTC: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasCTCClick
                    end
                  end
                  object GbVisitanteTrafico: TGroupBox
                    Left = 292
                    Top = 48
                    Width = 90
                    Height = 170
                    Caption = 'Visitante Tr'#225'fico'
                    TabOrder = 8
                    object ChConsultarVisitanteTrafico: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarVisitanteTraficoClick
                    end
                    object ChEditarVisitanteTrafico: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarVisitanteTraficoClick
                    end
                    object ChDeletarVisitanteTrafico: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarVisitanteTraficoClick
                    end
                    object ChInserirVisitanteTrafico: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirVisitanteTraficoClick
                    end
                    object ChRelatorioVisitanteTrafico: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioVisitanteTraficoClick
                    end
                    object ChTodasVisitanteTrafico: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasVisitanteTraficoClick
                    end
                  end
                  object GbCorrespondencia: TGroupBox
                    Left = 120
                    Top = 232
                    Width = 93
                    Height = 170
                    Caption = 'Correspond'#234'ncia'
                    TabOrder = 13
                    object ChConsultarCorrespondencia: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarCorrespondenciaClick
                    end
                    object ChEditarCorrespondencia: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarCorrespondenciaClick
                    end
                    object ChDeletarCorrespondencia: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarCorrespondenciaClick
                    end
                    object ChInserirCorrespondencia: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirCorrespondenciaClick
                    end
                    object ChRelatorioCorrespondencia: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioCorrespondenciaClick
                    end
                    object ChTodasCorrespondencia: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasCorrespondenciaClick
                    end
                  end
                  object GbAgendaAtendimento: TGroupBox
                    Left = 7
                    Top = 232
                    Width = 109
                    Height = 170
                    Caption = 'Agenda Atentimento'
                    TabOrder = 12
                    object ChConsultarAgendaAtendimento: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarAgendaAtendimentoClick
                    end
                    object ChEditarAgendaAtendimento: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarAgendaAtendimentoClick
                    end
                    object ChDeletarAgendaAtendimento: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarAgendaAtendimentoClick
                    end
                    object ChInserirAgendaAtendimento: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirAgendaAtendimentoClick
                    end
                    object ChRelatorioAgendaAtendimento: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioAgendaAtendimentoClick
                    end
                    object ChTodasAgendaAtendimento: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasAgendaAtendimentoClick
                    end
                  end
                  object GbLivroRevista: TGroupBox
                    Left = 217
                    Top = 232
                    Width = 90
                    Height = 170
                    Caption = 'Livro e Revista'
                    TabOrder = 14
                    object ChConsultarLivroRevista: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarLivroRevistaClick
                    end
                    object ChEditarLivroRevista: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarLivroRevistaClick
                    end
                    object ChDeletarLivroRevista: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarLivroRevistaClick
                    end
                    object ChInserirLivroRevista: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirLivroRevistaClick
                    end
                    object ChRelatorioLivroRevista: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rio'
                      TabOrder = 4
                      OnClick = ChRelatorioLivroRevistaClick
                    end
                    object ChTodasLivroRevista: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasLivroRevistaClick
                    end
                  end
                end
                object TabCadastros: TTabSheet
                  Caption = 'Cadastros'
                  ImageIndex = 5
                  object Label44: TLabel
                    Left = 7
                    Top = 8
                    Width = 376
                    Height = 13
                    Caption = '______________________Localiza'#231#227'o______________________'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold, fsUnderline]
                    ParentFont = False
                  end
                  object GbPavilhao: TGroupBox
                    Left = 7
                    Top = 23
                    Width = 90
                    Height = 170
                    Caption = 'Pavilh'#227'o'
                    TabOrder = 0
                    object ChConsultarPavilhao: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarPavilhaoClick
                    end
                    object ChEditarPavilhao: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarPavilhaoClick
                    end
                    object ChDeletarPavilhao: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarPavilhaoClick
                    end
                    object ChInserirPavilhao: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirPavilhaoClick
                    end
                    object ChRelatorioPavilhao: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioPavilhaoClick
                    end
                    object ChTodasPavilhao: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasPavilhaoClick
                    end
                  end
                  object GbGaleria: TGroupBox
                    Left = 103
                    Top = 23
                    Width = 90
                    Height = 170
                    Caption = 'Galeria'
                    TabOrder = 1
                    object ChConsultarGaleria: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarGaleriaClick
                    end
                    object ChEditarGaleria: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarGaleriaClick
                    end
                    object ChDeletarGaleria: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarGaleriaClick
                    end
                    object ChInserirGaleria: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirGaleriaClick
                    end
                    object ChRelatorioGaleria: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioGaleriaClick
                    end
                    object ChTodasGaleria: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasGaleriaClick
                    end
                  end
                  object GbSolario: TGroupBox
                    Left = 198
                    Top = 23
                    Width = 90
                    Height = 170
                    Caption = 'Sol'#225'rio'
                    TabOrder = 2
                    object ChConsultarSolario: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarSolarioClick
                    end
                    object ChEditarSolario: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarSolarioClick
                    end
                    object ChDeletarSolario: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarSolarioClick
                    end
                    object ChInserirSolario: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirSolarioClick
                    end
                    object ChRelatorioSolario: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioSolarioClick
                    end
                    object ChTodasSolario: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasSolarioClick
                    end
                  end
                  object GbCela: TGroupBox
                    Left = 293
                    Top = 23
                    Width = 90
                    Height = 170
                    Caption = 'Cela'
                    TabOrder = 3
                    object ChConsultarCela: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarCelaClick
                    end
                    object ChEditarCela: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarCelaClick
                    end
                    object ChDeletarCela: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarCelaClick
                    end
                    object ChInserirCela: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirCelaClick
                    end
                    object ChRelatorioCela: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioCelaClick
                    end
                    object ChTodasCela: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasCelaClick
                    end
                  end
                  object GbEscolaridade: TGroupBox
                    Left = 7
                    Top = 224
                    Width = 90
                    Height = 170
                    Caption = 'Escolaridade'
                    TabOrder = 8
                    object ChConsultarEscolaridade: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarEscolaridadeClick
                    end
                    object ChEditarEscolaridade: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarEscolaridadeClick
                    end
                    object ChDeletarEscolaridade: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarEscolaridadeClick
                    end
                    object ChInserirEscolaridade: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirEscolaridadeClick
                    end
                    object ChRelatorioEscolaridade: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioEscolaridadeClick
                    end
                    object ChTodasEscolaridade: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasEscolaridadeClick
                    end
                  end
                  object GbCondicaoInterno: TGroupBox
                    Left = 490
                    Top = 23
                    Width = 93
                    Height = 170
                    Caption = 'Condicao Interno'
                    TabOrder = 5
                    object ChConsultarCondicaoInterno: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarCondicaoInternoClick
                    end
                    object ChEditarCondicaoInterno: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarCondicaoInternoClick
                    end
                    object ChDeletarCondicaoInterno: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarCondicaoInternoClick
                    end
                    object ChInserirCondicaoInterno: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirCondicaoInternoClick
                    end
                    object ChRelatorioCondicaoInterno: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioCondicaoInternoClick
                    end
                    object ChTodasCondicaoInterno: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasCondicaoInternoClick
                    end
                  end
                  object GbCidade: TGroupBox
                    Left = 588
                    Top = 23
                    Width = 90
                    Height = 170
                    Caption = 'Cidade'
                    TabOrder = 6
                    object ChConsultarCidade: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarCidadeClick
                    end
                    object ChEditarCidade: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarCidadeClick
                    end
                    object ChDeletarCidade: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarCidadeClick
                    end
                    object ChInserirCidade: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirCidadeClick
                    end
                    object ChRelatorioCidade: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioCidadeClick
                    end
                    object ChTodasCidade: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasCidadeClick
                    end
                  end
                  object GbRaca: TGroupBox
                    Left = 683
                    Top = 23
                    Width = 90
                    Height = 170
                    Caption = 'Raca'
                    TabOrder = 7
                    object ChConsultarRaca: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarRacaClick
                    end
                    object ChEditarRaca: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarRacaClick
                    end
                    object ChDeletarRaca: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarRacaClick
                    end
                    object ChInserirRaca: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirRacaClick
                    end
                    object ChRelatorioRaca: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioRacaClick
                    end
                    object ChTodasRaca: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasRacaClick
                    end
                  end
                  object GbCadastroInternos: TGroupBox
                    Left = 389
                    Top = 23
                    Width = 96
                    Height = 170
                    Caption = 'Cadastro Internos'
                    TabOrder = 4
                    object chconsultarcadastro: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarcadastroClick
                    end
                    object cheditarcadastro: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarcadastroClick
                    end
                    object chdeletarcadastro: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarcadastroClick
                    end
                    object chinserircadastro: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserircadastroClick
                    end
                    object chtodascadastro: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodascadastroClick
                    end
                    object chrelatoriocadastro: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriocadastroClick
                    end
                  end
                  object GbNacionalidade: TGroupBox
                    Left = 103
                    Top = 224
                    Width = 90
                    Height = 170
                    Caption = 'Nacionalidade'
                    TabOrder = 9
                    object ChConsultarNacionalidade: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarNacionalidadeClick
                    end
                    object CheditarNacionalidade: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = CheditarNacionalidadeClick
                    end
                    object ChDeletarNacionalidade: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarNacionalidadeClick
                    end
                    object ChInserirNacionalidade: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirNacionalidadeClick
                    end
                    object ChRelatorioNacionalidade: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioNacionalidadeClick
                    end
                    object ChTodasNacionalidade: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasNacionalidadeClick
                    end
                  end
                  object GbProcedencia: TGroupBox
                    Left = 198
                    Top = 224
                    Width = 90
                    Height = 170
                    Caption = 'Proced'#234'ncia'
                    TabOrder = 10
                    object ChConsultarProcedencia: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarProcedenciaClick
                    end
                    object ChEditarProcedencia: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarProcedenciaClick
                    end
                    object ChDeletarProcedencia: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarProcedenciaClick
                    end
                    object ChInserirProcedencia: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirProcedenciaClick
                    end
                    object ChRelatorioProcedencia: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rio'
                      TabOrder = 4
                      OnClick = ChRelatorioProcedenciaClick
                    end
                    object ChTodasProcedencia: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasProcedenciaClick
                    end
                  end
                  object GbDestino: TGroupBox
                    Left = 293
                    Top = 224
                    Width = 90
                    Height = 170
                    Caption = 'Destino'
                    TabOrder = 11
                    object ChConsultarDestino: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarDestinoClick
                    end
                    object ChEditarDestino: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarDestinoClick
                    end
                    object ChDeletarDestino: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarDestinoClick
                    end
                    object ChInserirDestino: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirDestinoClick
                    end
                    object ChRelatorioDestino: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioDestinoClick
                    end
                    object ChTodasDestino: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasDestinoClick
                    end
                  end
                  object GFornecedor: TGroupBox
                    Left = 387
                    Top = 224
                    Width = 90
                    Height = 170
                    Caption = 'Fornecedor'
                    TabOrder = 12
                    object ChConsultarFornecedor: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarFornecedorClick
                    end
                    object ChEditarFornecedor: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarFornecedorClick
                    end
                    object ChDeletarFornecedor: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarFornecedorClick
                    end
                    object ChInserirFornecedor: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirFornecedorClick
                    end
                    object ChRelatorioFornecedor: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioFornecedorClick
                    end
                    object ChTodasFornecedor: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasFornecedorClick
                    end
                  end
                  object GbProfissao: TGroupBox
                    Left = 482
                    Top = 224
                    Width = 90
                    Height = 170
                    Caption = 'Profiss'#227'o'
                    TabOrder = 13
                    object ChConsultarProfissao: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarProfissaoClick
                    end
                    object ChEditarProfissao: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarProfissaoClick
                    end
                    object ChDeletarProfissao: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarProfissaoClick
                    end
                    object ChInserirProfissao: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirProfissaoClick
                    end
                    object ChRelatorioProfissao: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioProfissaoClick
                    end
                    object ChTodasProfissao: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasProfissaoClick
                    end
                  end
                  object GbFaltaDisciplinar: TGroupBox
                    Left = 577
                    Top = 224
                    Width = 90
                    Height = 170
                    Caption = 'Falta Disciplinar'
                    TabOrder = 14
                    object ChConsultarFaltaDisciplinar: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarFaltaDisciplinarClick
                    end
                    object ChEditarFaltaDisciplinar: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarFaltaDisciplinarClick
                    end
                    object ChDeletarFaltaDisciplinar: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarFaltaDisciplinarClick
                    end
                    object ChInserirFaltaDisciplinar: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirFaltaDisciplinarClick
                    end
                    object ChRelatorioFaltaDisciplinar: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioFaltaDisciplinarClick
                    end
                    object ChTodasFaltaDisciplinar: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasFaltaDisciplinarClick
                    end
                  end
                  object GbSerieFase: TGroupBox
                    Left = 672
                    Top = 224
                    Width = 102
                    Height = 170
                    Caption = 'S'#233'rie/Fase Estudo'
                    TabOrder = 15
                    object ChConsultarSerieFaseEstudo: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarSerieFaseEstudoClick
                    end
                    object ChEditarSerieFaseEstudo: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarSerieFaseEstudoClick
                    end
                    object ChDeletarSerieFaseEstudo: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarSerieFaseEstudoClick
                    end
                    object ChInserirSerieFaseEstudo: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirSerieFaseEstudoClick
                    end
                    object ChRelatorioSerieFaseEstudo: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioSerieFaseEstudoClick
                    end
                    object ChTodasSerieFaseEstudo: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasSerieFaseEstudoClick
                    end
                  end
                end
                object TabCadastro2: TTabSheet
                  Caption = 'Cadastros 2'
                  ImageIndex = 6
                  object Label45: TLabel
                    Left = 492
                    Top = 208
                    Width = 275
                    Height = 13
                    Caption = '___________Agenda de Atendimento_________'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold, fsUnderline]
                    ParentFont = False
                  end
                  object Label46: TLabel
                    Left = 7
                    Top = 8
                    Width = 578
                    Height = 13
                    Caption = 
                      '______________________________________Jur'#237'dico__________________' +
                      '____________________'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold, fsUnderline]
                    ParentFont = False
                  end
                  object Label47: TLabel
                    Left = 7
                    Top = 208
                    Width = 288
                    Height = 13
                    Caption = '_________________Trabalho_________________'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold, fsUnderline]
                    ParentFont = False
                  end
                  object Label48: TLabel
                    Left = 688
                    Top = 8
                    Width = 84
                    Height = 13
                    Caption = '____________'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold, fsUnderline]
                    ParentFont = False
                  end
                  object GbProcessoCondenacao: TGroupBox
                    Left = 7
                    Top = 23
                    Width = 122
                    Height = 170
                    Caption = 'Processo/Condena'#231#227'o'
                    TabOrder = 0
                    object ChConsultarProcessoCondenacao: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarProcessoCondenacaoClick
                    end
                    object ChEditarProcessoCondenacao: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarProcessoCondenacaoClick
                    end
                    object ChDeletarProcessoCondenacao: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarProcessoCondenacaoClick
                    end
                    object ChInserirProcessoCondenacao: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirProcessoCondenacaoClick
                    end
                    object ChRelatorioProcessoCondenacao: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioProcessoCondenacaoClick
                    end
                    object ChTodasProcessoCondenacao: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasProcessoCondenacaoClick
                    end
                  end
                  object GbDetracao: TGroupBox
                    Left = 131
                    Top = 23
                    Width = 90
                    Height = 170
                    Caption = 'Detra'#231#227'o'
                    TabOrder = 1
                    object ChConsultarDetracao: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarDetracaoClick
                    end
                    object ChEditarDetracao: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarDetracaoClick
                    end
                    object ChDeletarDetracao: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarDetracaoClick
                    end
                    object ChInserirDetracao: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirDetracaoClick
                    end
                    object ChRelatorioDetracao: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioDetracaoClick
                    end
                    object ChTodasDetracao: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasDetracaoClick
                    end
                  end
                  object GbInterrupcao: TGroupBox
                    Left = 224
                    Top = 23
                    Width = 90
                    Height = 170
                    Caption = 'Interrup'#231#227'o'
                    TabOrder = 2
                    object ChConsultarInterrupcao: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarInterrupcaoClick
                    end
                    object ChEditarInterrupcao: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarInterrupcaoClick
                    end
                    object ChDeletarInterrupcao: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarInterrupcaoClick
                    end
                    object ChInserirInterrupcao: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirInterrupcaoClick
                    end
                    object ChRelatorioInterrupcao: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioInterrupcaoClick
                    end
                    object ChTodasInterrupcao: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasInterrupcaoClick
                    end
                  end
                  object GbRemicao: TGroupBox
                    Left = 316
                    Top = 23
                    Width = 90
                    Height = 170
                    Caption = 'Remi'#231#227'o'
                    TabOrder = 3
                    object ChConsultarRemicao: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarRemicaoClick
                    end
                    object ChEditarRemicao: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarRemicaoClick
                    end
                    object ChDeletarRemicao: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarRemicaoClick
                    end
                    object ChInserirRemicao: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirRemicaoClick
                    end
                    object ChRelatorioRemicao: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioRemicaoClick
                    end
                    object ChTodasRemicao: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasRemicaoClick
                    end
                  end
                  object GbArtigoPenal: TGroupBox
                    Left = 408
                    Top = 23
                    Width = 90
                    Height = 170
                    Caption = 'Artigo Penal'
                    TabOrder = 4
                    object ChConsultarArtigoPenal: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarArtigoPenalClick
                    end
                    object ChEditarArtigoPenal: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarArtigoPenalClick
                    end
                    object ChDeletarArtigoPenal: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarArtigoPenalClick
                    end
                    object ChInserirArtigoPenal: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirArtigoPenalClick
                    end
                    object ChRelatorioArtigoPenal: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioArtigoPenalClick
                    end
                    object ChTodasArtigoPenal: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasArtigoPenalClick
                    end
                  end
                  object GbVaraExecucao: TGroupBox
                    Left = 500
                    Top = 23
                    Width = 90
                    Height = 170
                    Caption = 'Vara Execu'#231#227'o'
                    TabOrder = 5
                    object ChConsultarVaraExecucao: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarVaraExecucaoClick
                    end
                    object ChEditarVaraExecucao: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarVaraExecucaoClick
                    end
                    object ChDeletarVaraExecucao: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarVaraExecucaoClick
                    end
                    object ChInserirVaraExecucao: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirVaraExecucaoClick
                    end
                    object ChRelatorioVaraExecucao: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioVaraExecucaoClick
                    end
                    object ChTodasVaraExecucao: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasVaraExecucaoClick
                    end
                  end
                  object GbRemedio: TGroupBox
                    Left = 592
                    Top = 23
                    Width = 90
                    Height = 170
                    Caption = 'Rem'#233'dio'
                    TabOrder = 6
                    object ChConsultarRemedio: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarRemedioClick
                    end
                    object ChEditarRemedio: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarRemedioClick
                    end
                    object ChDeletarRemedio: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarRemedioClick
                    end
                    object ChInserirRemedio: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirRemedioClick
                    end
                    object ChRelatorioRemedio: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioRemedioClick
                    end
                    object ChTodasRemedio: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasRemedioClick
                    end
                  end
                  object GbcSetorTrabalhoCadastro: TGroupBox
                    Left = 685
                    Top = 24
                    Width = 90
                    Height = 170
                    Caption = 'Setor Trabalho'
                    TabOrder = 7
                    object ChConsultarSetorTrabalhoCad: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarSetorTrabalhoCadClick
                    end
                    object ChEditarSetorTrabalhoCad: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarSetorTrabalhoCadClick
                    end
                    object ChDeletarSetorTrabalhoCad: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarSetorTrabalhoCadClick
                    end
                    object ChInserirSetorTrabalhoCad: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirSetorTrabalhoCadClick
                    end
                    object ChRelatorioSetorTrabalhoCad: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioSetorTrabalhoCadClick
                    end
                    object ChTodasSetorTrabalhoCad: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasSetorTrabalhoCadClick
                    end
                  end
                  object GbFuncaoInterno: TGroupBox
                    Left = 7
                    Top = 224
                    Width = 90
                    Height = 170
                    Caption = 'Fun'#231#227'o Interno'
                    TabOrder = 8
                    object ChConsultarFuncaoInterno: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarFuncaoInternoClick
                    end
                    object ChEditarFuncaoInterno: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarFuncaoInternoClick
                    end
                    object ChDeletarFuncaoInterno: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarFuncaoInternoClick
                    end
                    object ChInserirFuncaoInterno: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirFuncaoInternoClick
                    end
                    object ChRelatorioFuncaoInterno: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioFuncaoInternoClick
                    end
                    object ChTodasFuncaoInterno: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasFuncaoInternoClick
                    end
                  end
                  object GbCalculoTrabalho: TGroupBox
                    Left = 101
                    Top = 224
                    Width = 94
                    Height = 170
                    Caption = 'C'#225'lculo Trabalho'
                    TabOrder = 9
                    object ChConsultarCalculoTrabalho: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarCalculoTrabalhoClick
                    end
                    object ChEditarCalculoTrabalho: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarCalculoTrabalhoClick
                    end
                    object ChDeletarCalculoTrabalho: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarCalculoTrabalhoClick
                    end
                    object ChInserirCalculoTrabalho: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirCalculoTrabalhoClick
                    end
                    object ChRelatorioCalculoTrabalho: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioCalculoTrabalhoClick
                    end
                    object ChTodasCalculoTrabalho: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasCalculoTrabalhoClick
                    end
                  end
                  object GbRemicaoTrabalho: TGroupBox
                    Left = 198
                    Top = 224
                    Width = 100
                    Height = 170
                    Caption = 'Remi'#231#227'o Trabalho'
                    TabOrder = 10
                    object ChConsultarRemicaoTrabalho: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarRemicaoTrabalhoClick
                    end
                    object ChEditarRemicaoTrabalho: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarRemicaoTrabalhoClick
                    end
                    object ChDeletarRemicaoTrabalho: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarRemicaoTrabalhoClick
                    end
                    object ChInserirRemicaoTrabalho: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirRemicaoTrabalhoClick
                    end
                    object ChRelatorioRemicaoTrabalho: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioRemicaoTrabalhoClick
                    end
                    object ChTodasRemicaoTrabalho: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasRemicaoTrabalhoClick
                    end
                  end
                  object GbRoupas: TGroupBox
                    Left = 302
                    Top = 224
                    Width = 90
                    Height = 170
                    Caption = 'Roupas'
                    TabOrder = 11
                    object ChConsultarRoupas: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarRoupasClick
                    end
                    object ChEditarRoupas: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarRoupasClick
                    end
                    object ChDeletarRoupas: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarRoupasClick
                    end
                    object ChInserirRoupas: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirRoupasClick
                    end
                    object ChRelatorioRoupas: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioRoupasClick
                    end
                    object ChTodasRoupas: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasRoupasClick
                    end
                  end
                  object GbGrauParentesco: TGroupBox
                    Left = 396
                    Top = 224
                    Width = 92
                    Height = 170
                    Caption = 'Grau Parentesco'
                    TabOrder = 12
                    object ChConsultarGrauParentesco: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarGrauParentescoClick
                    end
                    object ChEditarGrauParentesco: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarGrauParentescoClick
                    end
                    object ChDeletarGrauParentesco: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarGrauParentescoClick
                    end
                    object ChInserirGrauParentesco: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirGrauParentescoClick
                    end
                    object ChRelatorioGrauParentesco: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioGrauParentescoClick
                    end
                    object ChTodasGrauParentesco: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasGrauParentescoClick
                    end
                  end
                  object GbTipoContato: TGroupBox
                    Left = 492
                    Top = 224
                    Width = 90
                    Height = 170
                    Caption = 'Tipo Contato'
                    TabOrder = 13
                    object ChConsultarTipoContato: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarTipoContatoClick
                    end
                    object ChEditarTipoContato: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarTipoContatoClick
                    end
                    object ChDeletarTipoContato: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarTipoContatoClick
                    end
                    object ChInserirTipoContato: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirTipoContatoClick
                    end
                    object ChRelatorioTipoContato: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioTipoContatoClick
                    end
                    object ChTodasTipoContato: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasTipoContatoClick
                    end
                  end
                  object GbAssunto: TGroupBox
                    Left = 586
                    Top = 224
                    Width = 90
                    Height = 170
                    Caption = 'Assunto'
                    TabOrder = 14
                    object ChConsultarAssunto: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarAssuntoClick
                    end
                    object ChEditarAssunto: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarAssuntoClick
                    end
                    object ChDeletarAssunto: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarAssuntoClick
                    end
                    object ChInserirAssunto: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirAssuntoClick
                    end
                    object ChRelatorioAssunto: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioAssuntoClick
                    end
                    object ChTodasAssunto: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasAssuntoClick
                    end
                  end
                  object GbSituacao: TGroupBox
                    Left = 681
                    Top = 224
                    Width = 90
                    Height = 170
                    Caption = 'Situa'#231#227'o'
                    TabOrder = 15
                    object ChConsultarSituacao: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarSituacaoClick
                    end
                    object ChEditarSituacao: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarSituacaoClick
                    end
                    object ChDeletarSituacao: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarSituacaoClick
                    end
                    object ChInserirSituacao: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirSituacaoClick
                    end
                    object ChRelatorioSituacao: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioSituacaoClick
                    end
                    object ChTodasSituacao: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasSituacaoClick
                    end
                  end
                end
                object TabSetores: TTabSheet
                  Caption = 'Setores'
                  ImageIndex = 1
                  object GroupBox3: TGroupBox
                    Left = 7
                    Top = 15
                    Width = 90
                    Height = 170
                    Caption = 'Trabalho'
                    TabOrder = 0
                    object cheditartrabalho: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 70
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditartrabalhoClick
                    end
                    object chdeletartrabalho: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 70
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletartrabalhoClick
                    end
                    object chConsultartrabalho: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 70
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chConsultartrabalhoClick
                    end
                    object chinserirtrabalho: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 70
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirtrabalhoClick
                    end
                    object chtodastrabalho: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 70
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodastrabalhoClick
                    end
                    object chrelatoriotrabalho: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 70
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriotrabalhoClick
                    end
                  end
                  object GroupBox4: TGroupBox
                    Left = 101
                    Top = 15
                    Width = 90
                    Height = 170
                    Caption = 'Educa'#231#227'o'
                    TabOrder = 1
                    object cheditareducacao: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 70
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditareducacaoClick
                    end
                    object chdeletareducacao: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 70
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletareducacaoClick
                    end
                    object chconsultareducacao: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 70
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultareducacaoClick
                    end
                    object chinserireducacao: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 70
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserireducacaoClick
                    end
                    object chtodaseducacao: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 70
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodaseducacaoClick
                    end
                    object chrelatorioeducacao: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 70
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatorioeducacaoClick
                    end
                  end
                  object GroupBox7: TGroupBox
                    Left = 7
                    Top = 200
                    Width = 90
                    Height = 170
                    Caption = 'Jur'#237'dico'
                    TabOrder = 8
                    object chconsultarjuridica: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarjuridicaClick
                    end
                    object cheditarjuridica: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarjuridicaClick
                    end
                    object chdeletarjuridica: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarjuridicaClick
                    end
                    object chinserirjuridica: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirjuridicaClick
                    end
                    object chtodasjuridica: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasjuridicaClick
                    end
                    object chrelatoriojuridico: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriojuridicoClick
                    end
                  end
                  object GroupBox8: TGroupBox
                    Left = 101
                    Top = 200
                    Width = 90
                    Height = 170
                    Caption = 'Disciplina'
                    TabOrder = 9
                    object chconsultardisciplina: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultardisciplinaClick
                    end
                    object cheditardisciplina: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditardisciplinaClick
                    end
                    object chdeletardisciplina: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletardisciplinaClick
                    end
                    object chinserirdisciplina: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirdisciplinaClick
                    end
                    object chtodasdisciplina: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasdisciplinaClick
                    end
                    object chrelatoriodisciplina: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriodisciplinaClick
                    end
                  end
                  object GroupBox6: TGroupBox
                    Left = 195
                    Top = 15
                    Width = 90
                    Height = 170
                    Caption = 'Psicossocial'
                    TabOrder = 2
                    object chconsultarpsicossocial: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarpsicossocialClick
                    end
                    object cheditarpsicossocial: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarpsicossocialClick
                    end
                    object chdeletarpsicossocial: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarpsicossocialClick
                    end
                    object chinserirpsicossocial: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirpsicossocialClick
                    end
                    object chtodaspsicossocial: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodaspsicossocialClick
                    end
                    object chrelatoriopsicossocial: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriopsicossocialClick
                    end
                  end
                  object GroupBox9: TGroupBox
                    Left = 194
                    Top = 200
                    Width = 90
                    Height = 170
                    Caption = 'Cl'#237'nica M'#233'dica'
                    TabOrder = 10
                    object chconsultarclinicamedica: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarclinicamedicaClick
                    end
                    object cheditarclinicamedica: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarclinicamedicaClick
                    end
                    object chdeletarclinicamedica: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarclinicamedicaClick
                    end
                    object chinserirclinicamedica: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirclinicamedicaClick
                    end
                    object chtodasclinicamedica: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasclinicamedicaClick
                    end
                    object chrelatorioclinicamedica: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatorioclinicamedicaClick
                    end
                  end
                  object GroupBox10: TGroupBox
                    Left = 288
                    Top = 15
                    Width = 90
                    Height = 170
                    Caption = 'Enfermagem'
                    TabOrder = 3
                    object chconsultarenfermagem: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarenfermagemClick
                    end
                    object cheditarenfermagem: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarenfermagemClick
                    end
                    object chdeletarenfermagem: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarenfermagemClick
                    end
                    object chinserirenfermagem: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirenfermagemClick
                    end
                    object chtodasenfermagem: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasenfermagemClick
                    end
                    object chrelatorioenfermagem: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatorioenfermagemClick
                    end
                  end
                  object GroupBox11: TGroupBox
                    Left = 287
                    Top = 200
                    Width = 90
                    Height = 170
                    Caption = 'Odontologia'
                    TabOrder = 11
                    object chconsultarodontologia: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarodontologiaClick
                    end
                    object cheditarodontologia: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarodontologiaClick
                    end
                    object chdeletarodontologia: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarodontologiaClick
                    end
                    object chinserirodontologia: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirodontologiaClick
                    end
                    object chtodasodontologia: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasodontologiaClick
                    end
                    object chrelatorioodontologia: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatorioodontologiaClick
                    end
                  end
                  object GroupBox12: TGroupBox
                    Left = 381
                    Top = 15
                    Width = 90
                    Height = 170
                    Caption = 'Farm'#225'cia'
                    TabOrder = 4
                    object chconsultarfarmacia: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarfarmaciaClick
                    end
                    object cheditarfarmacia: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarfarmaciaClick
                    end
                    object chdeletarfarmacia: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarfarmaciaClick
                    end
                    object chinserirfarmacia: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirfarmaciaClick
                    end
                    object chtodasfarmacia: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasfarmaciaClick
                    end
                    object chrelatoriofaramcia: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriofaramciaClick
                    end
                  end
                  object GroupBox13: TGroupBox
                    Left = 380
                    Top = 200
                    Width = 90
                    Height = 170
                    Caption = 'Pedagogia'
                    TabOrder = 12
                    object chconsultarpedagogia: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarpedagogiaClick
                    end
                    object cheditarpedagogia: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarpedagogiaClick
                    end
                    object chdeletarpedagogia: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarpedagogiaClick
                    end
                    object chinserirpedagogia: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirpedagogiaClick
                    end
                    object chtodaspedagogia: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodaspedagogiaClick
                    end
                    object chrelatoriopedagogia: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriopedagogiaClick
                    end
                  end
                  object GroupBox14: TGroupBox
                    Left = 658
                    Top = 15
                    Width = 95
                    Height = 170
                    Caption = 'Ter. Ocupacional'
                    TabOrder = 7
                    object chconsultarterapiaocupacional: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarterapiaocupacionalClick
                    end
                    object cheditarterapiaocupacional: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarterapiaocupacionalClick
                    end
                    object chdeletarterapiaocupacional: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarterapiaocupacionalClick
                    end
                    object chinserirterapiaocupacional: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirterapiaocupacionalClick
                    end
                    object chtodasterapiaocupacional: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasterapiaocupacionalClick
                    end
                    object chrelatorioterapiaocupacional: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatorioterapiaocupacionalClick
                    end
                  end
                  object GroupBox15: TGroupBox
                    Left = 565
                    Top = 15
                    Width = 90
                    Height = 170
                    Caption = 'Servi'#231'o Social'
                    TabOrder = 6
                    object chconsultarservicosocial: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarservicosocialClick
                    end
                    object cheditarservicosocial: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarservicosocialClick
                    end
                    object chdeletarservicosocial: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarservicosocialClick
                    end
                    object chinserirservicosocial: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirservicosocialClick
                    end
                    object chtodasservicosocial: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasservicosocialClick
                    end
                    object chrelatorioservicosocial: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatorioservicosocialClick
                    end
                  end
                  object GroupBox16: TGroupBox
                    Left = 473
                    Top = 200
                    Width = 90
                    Height = 170
                    Caption = 'Psicologia'
                    TabOrder = 13
                    object chconsultarpsicologia: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarpsicologiaClick
                    end
                    object cheditarpsicologia: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarpsicologiaClick
                    end
                    object chdeletarpsicologia: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarpsicologiaClick
                    end
                    object chinserirpsicologia: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirpsicologiaClick
                    end
                    object chtodaspsicologia: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodaspsicologiaClick
                    end
                    object chrelatoriopsicologia: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriopsicologiaClick
                    end
                  end
                  object GroupBox17: TGroupBox
                    Left = 473
                    Top = 15
                    Width = 90
                    Height = 170
                    Caption = 'Psiquiatria'
                    TabOrder = 5
                    object chconsultarpsiquiatria: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarpsiquiatriaClick
                    end
                    object cheditarpsiquiatria: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarpsiquiatriaClick
                    end
                    object chdeletarpsiquiatria: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarpsiquiatriaClick
                    end
                    object chinserirpsiquiatria: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirpsiquiatriaClick
                    end
                    object chtodaspsiquiatria: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodaspsiquiatriaClick
                    end
                    object chrelatoriopsiquiatria: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriopsiquiatriaClick
                    end
                  end
                  object GroupBox18: TGroupBox
                    Left = 566
                    Top = 200
                    Width = 90
                    Height = 170
                    Caption = 'Sa'#250'de'
                    TabOrder = 14
                    object chconsultarsaude: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarsaudeClick
                    end
                    object cheditarsaude: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarsaudeClick
                    end
                    object chdeletarsaude: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarsaudeClick
                    end
                    object chinserirsaude: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirsaudeClick
                    end
                    object chtodassaude: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodassaudeClick
                    end
                    object chrelatoriosaude: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriosaudeClick
                    end
                  end
                  object GbConselhoDisciplinar: TGroupBox
                    Left = 659
                    Top = 200
                    Width = 90
                    Height = 170
                    Caption = 'Cons. Disciplinar'
                    TabOrder = 15
                    object chConsultarConsDisciplinar: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chConsultarConsDisciplinarClick
                    end
                    object chEditarConsDisciplinar: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = chEditarConsDisciplinarClick
                    end
                    object chDeletarConsDisciplinar: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chDeletarConsDisciplinarClick
                    end
                    object chInserirConsDisciplinar: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chInserirConsDisciplinarClick
                    end
                    object chRelatorioConsDisciplinar: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rio'
                      TabOrder = 4
                      OnClick = chRelatorioConsDisciplinarClick
                    end
                    object chTodasConsDisciplinar: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chTodasConsDisciplinarClick
                    end
                  end
                end
                object TabMovimentacao: TTabSheet
                  Caption = 'Movimenta'#231#227'o'
                  ImageIndex = 2
                  object GbTransferenciaInterno: TGroupBox
                    Left = 7
                    Top = 15
                    Width = 130
                    Height = 170
                    Caption = 'Transfer'#234'ncia de Interno'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    object chConsultarTransferenciaInterno: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 0
                      OnClick = chConsultarTransferenciaInternoClick
                    end
                    object chEditarTransferenciaInterno: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 1
                      OnClick = chEditarTransferenciaInternoClick
                    end
                    object chDeletarTransferenciaInterno: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 2
                      OnClick = chDeletarTransferenciaInternoClick
                    end
                    object chInserirTransferenciaInterno: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 3
                      OnClick = chInserirTransferenciaInternoClick
                    end
                    object chRelatorioTransferenciaInterno: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 4
                      OnClick = chRelatorioTransferenciaInternoClick
                    end
                    object chTodasTransferenciaInterno: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 5
                      OnClick = chTodasTransferenciaInternoClick
                    end
                  end
                  object GbMudancaCela: TGroupBox
                    Left = 141
                    Top = 15
                    Width = 97
                    Height = 170
                    Caption = 'Mudan'#231'a de Cela'
                    TabOrder = 1
                    object ChConsultarMudancaCela: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarMudancaCelaClick
                    end
                    object ChEditarMudancaCela: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarMudancaCelaClick
                    end
                    object ChDeletarMudancaCela: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarMudancaCelaClick
                    end
                    object ChInserirMudancaCela: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirMudancaCelaClick
                    end
                    object ChRelatorioMudancaCela: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioMudancaCelaClick
                    end
                    object ChTodasMudancaCela: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasMudancaCelaClick
                    end
                  end
                  object GbSaidao: TGroupBox
                    Left = 242
                    Top = 15
                    Width = 99
                    Height = 170
                    Caption = 'Said'#227'o Internos'
                    TabOrder = 2
                    object ChConsultarSaidao: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarSaidaoClick
                    end
                    object ChEditarSaidao: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarSaidaoClick
                    end
                    object ChDeletarSaidao: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarSaidaoClick
                    end
                    object ChInserirSaidao: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirSaidaoClick
                    end
                    object ChRelatorioSaidao: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioSaidaoClick
                    end
                    object ChTodasSaidao: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasSaidaoClick
                    end
                  end
                  object GbCirculacaoInterno: TGroupBox
                    Left = 345
                    Top = 15
                    Width = 120
                    Height = 170
                    Caption = 'Circula'#231#227'o de Interno'
                    TabOrder = 3
                    object ChConsultarCirculacaoInterno: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarCirculacaoInternoClick
                    end
                    object ChEditarCirculacaoInterno: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarCirculacaoInternoClick
                    end
                    object ChDeletarCirculacaoInterno: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarCirculacaoInternoClick
                    end
                    object ChInserirCirculacaoInterno: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirCirculacaoInternoClick
                    end
                    object ChRelatorioCirculacaoInterno: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioCirculacaoInternoClick
                    end
                    object ChTodasCirculacaoInterno: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasCirculacaoInternoClick
                    end
                  end
                  object GbMovimentoSemiAberto: TGroupBox
                    Left = 469
                    Top = 15
                    Width = 170
                    Height = 170
                    Caption = 'Movimento Semi-Aberto / Aberto'
                    TabOrder = 4
                    object ChConsultarMovimentoSemiAberto: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarMovimentoSemiAbertoClick
                    end
                    object ChEditarMovimentoSemiAberto: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarMovimentoSemiAbertoClick
                    end
                    object ChDeletarMovimentoSemiAberto: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarMovimentoSemiAbertoClick
                    end
                    object ChInserirMovimentoSemiAberto: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirMovimentoSemiAbertoClick
                    end
                    object ChRelatorioMovimentoSemiAberto: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioMovimentoSemiAbertoClick
                    end
                    object ChTodasMovimentoSemiAberto: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasMovimentoSemiAbertoClick
                    end
                  end
                  object GBPortariaSaidao: TGroupBox
                    Left = 643
                    Top = 14
                    Width = 112
                    Height = 170
                    Caption = 'Portaria Said'#227'o'
                    TabOrder = 5
                    object ChConsultarSaidaoCadastro: TCheckBox
                      Left = 8
                      Top = 25
                      Width = 97
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarSaidaoCadastroClick
                    end
                    object ChEditarSaidaoCadastro: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 97
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarSaidaoCadastroClick
                    end
                    object ChDeletarSaidaoCadastro: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 97
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarSaidaoCadastroClick
                    end
                    object ChInserirSaidaoCadastro: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 97
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirSaidaoCadastroClick
                    end
                    object chRelatorioSaidaoCadastro: TCheckBox
                      Left = 9
                      Top = 120
                      Width = 97
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chRelatorioSaidaoCadastroClick
                    end
                    object ChTodasSaidaoCadastro: TCheckBox
                      Left = 9
                      Top = 144
                      Width = 97
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasSaidaoCadastroClick
                    end
                  end
                end
                object TabModulos: TTabSheet
                  Caption = 'M'#243'dulos'
                  ImageIndex = 3
                  object GroupBoxinteligencia: TGroupBox
                    Left = 212
                    Top = 15
                    Width = 90
                    Height = 170
                    Caption = 'Intelig'#234'ncia'
                    TabOrder = 2
                    object chconsultarinteligencia: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarinteligenciaClick
                    end
                    object cheditarinteligencia: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarinteligenciaClick
                    end
                    object chdeletarinteligencia: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarinteligenciaClick
                    end
                    object chinseririnteligencia: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinseririnteligenciaClick
                    end
                    object chrelatoriointeligencia: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriointeligenciaClick
                    end
                    object chtodasinteligencia: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasinteligenciaClick
                    end
                  end
                  object GroupBox19: TGroupBox
                    Left = 7
                    Top = 15
                    Width = 90
                    Height = 170
                    Caption = 'Armas'
                    TabOrder = 0
                    object chconsultararmas: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultararmasClick
                    end
                    object cheditararmas: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditararmasClick
                    end
                    object chdeletararmas: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletararmasClick
                    end
                    object chinserirarmas: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirarmasClick
                    end
                    object chrelatorioarmas: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatorioarmasClick
                    end
                    object chtodasarmas: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasarmasClick
                    end
                  end
                  object Monitoramento: TGroupBox
                    Left = 102
                    Top = 15
                    Width = 99
                    Height = 170
                    Caption = 'Monit. Eletr'#244'nico'
                    TabOrder = 1
                    object chconsultarmonitoramento: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 73
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarmonitoramentoClick
                    end
                    object cheditarmonitoramento: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarmonitoramentoClick
                    end
                    object chdeletarmonitoramento: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 73
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarmonitoramentoClick
                    end
                    object chinserirmonitoramento: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 73
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirmonitoramentoClick
                    end
                    object chrelatoriomonitoramento: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 73
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriomonitoramentoClick
                    end
                    object chtodasmonitoramento: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 73
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasmonitoramentoClick
                    end
                  end
                  object GroupBoxPainel: TGroupBox
                    Left = 312
                    Top = 15
                    Width = 90
                    Height = 170
                    Caption = 'Painel'
                    TabOrder = 3
                    object ChConsultarPainel: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarPainelClick
                    end
                    object ChEditarPainel: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarPainelClick
                    end
                    object ChDeletarPainel: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarPainelClick
                    end
                    object ChInserirPainel: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirPainelClick
                    end
                    object ChRelatorioPainel: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioPainelClick
                    end
                    object ChTodasPainel: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasPainelClick
                    end
                  end
                end
                object TabMonitoramento: TTabSheet
                  Caption = 'Monitoramento'
                  ImageIndex = 7
                  object Label49: TLabel
                    Left = 7
                    Top = 8
                    Width = 763
                    Height = 13
                    Caption = 
                      '____________________________________________________Cadastros___' +
                      '______________________________________________'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold, fsUnderline]
                    ParentFont = False
                  end
                  object Label50: TLabel
                    Left = 5
                    Top = 208
                    Width = 768
                    Height = 13
                    Caption = 
                      '___________________________________________________Lan'#231'amentos__' +
                      '______________________________________________'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold, fsUnderline]
                    ParentFont = False
                  end
                  object GbEventos: TGroupBox
                    Left = 8
                    Top = 23
                    Width = 90
                    Height = 170
                    Caption = 'Eventos'
                    TabOrder = 0
                    object ChConsultarEventos: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarEventosClick
                    end
                    object ChEditarEventos: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarEventosClick
                    end
                    object ChDeletarEventos: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarEventosClick
                    end
                    object ChInserirEventos: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirEventosClick
                    end
                    object ChRelatorioEventos: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioEventosClick
                    end
                    object ChTodasEventos: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasEventosClick
                    end
                  end
                  object GbSubEventos: TGroupBox
                    Left = 104
                    Top = 23
                    Width = 90
                    Height = 170
                    Caption = 'Sub Eventos'
                    TabOrder = 1
                    object ChConsultarSubEventos: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarSubEventosClick
                    end
                    object ChEditarSubEventos: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarSubEventosClick
                    end
                    object ChDeletarSubEventos: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarSubEventosClick
                    end
                    object ChInserirSubEventos: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirSubEventosClick
                    end
                    object ChRelatorioSubEventos: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioSubEventosClick
                    end
                    object ChTodasSubEventos: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasSubEventosClick
                    end
                  end
                  object GbMonitEventos: TGroupBox
                    Left = 8
                    Top = 224
                    Width = 129
                    Height = 170
                    Caption = 'Monitoramento Eventos'
                    TabOrder = 2
                    object ChConsultarMonitEventos: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarMonitEventosClick
                    end
                    object ChEditarMonitEventos: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarMonitEventosClick
                    end
                    object ChDeletarMonitEventos: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarMonitEventosClick
                    end
                    object ChInserirMonitEventos: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirMonitEventosClick
                    end
                    object ChRelatorioMonitEventos: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioMonitEventosClick
                    end
                    object ChTodasMonitEventos: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasMonitEventosClick
                    end
                  end
                end
                object TabConfiguracao: TTabSheet
                  Caption = 'Configura'#231#245'es'
                  ImageIndex = 4
                  object GbFuncionario: TGroupBox
                    Left = 7
                    Top = 15
                    Width = 90
                    Height = 170
                    Caption = 'Funcion'#225'rio'
                    TabOrder = 0
                    object ChConsultarFuncionario: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarFuncionarioClick
                    end
                    object ChEditarFuncionario: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarFuncionarioClick
                    end
                    object ChDeletarFuncionario: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarFuncionarioClick
                    end
                    object ChInserirFuncionario: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirFuncionarioClick
                    end
                    object ChRelatorioFuncionario: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioFuncionarioClick
                    end
                    object ChTodasFuncionario: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasFuncionarioClick
                    end
                  end
                  object GbFuncaoFuncionario: TGroupBox
                    Left = 100
                    Top = 15
                    Width = 110
                    Height = 170
                    Caption = 'Fun'#231#227'o Funcion'#225'rio'
                    TabOrder = 1
                    object ChConsultarFuncaoFuncionario: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarFuncaoFuncionarioClick
                    end
                    object ChEditarFuncaoFuncionario: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarFuncaoFuncionarioClick
                    end
                    object ChDeletarFuncaoFuncionario: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarFuncaoFuncionarioClick
                    end
                    object ChInserirFuncaoFuncionario: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirFuncaoFuncionarioClick
                    end
                    object ChRelatorioFuncaoFuncionario: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioFuncaoFuncionarioClick
                    end
                    object ChTodasFuncaoFuncionario: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasFuncaoFuncionarioClick
                    end
                  end
                  object GbUnidadePenal: TGroupBox
                    Left = 214
                    Top = 15
                    Width = 90
                    Height = 170
                    Caption = 'Unidade Penal'
                    TabOrder = 2
                    object ChConsultarUnidadePenal: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarUnidadePenalClick
                    end
                    object ChEditarUnidadePenal: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarUnidadePenalClick
                    end
                    object ChDeletarUnidadePenal: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarUnidadePenalClick
                    end
                    object ChInserirUnidadePenal: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirUnidadePenalClick
                    end
                    object ChRelatorioUnidadePenal: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioUnidadePenalClick
                    end
                    object ChTodasUnidadePenal: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasUnidadePenalClick
                    end
                  end
                  object GbHorarioFuncionario: TGroupBox
                    Left = 307
                    Top = 15
                    Width = 106
                    Height = 170
                    Caption = 'Hor'#225'rio Funcion'#225'rio'
                    TabOrder = 3
                    object ChConsultarHorarioFuncionario: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarHorarioFuncionarioClick
                    end
                    object ChEditarHorarioFuncionario: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarHorarioFuncionarioClick
                    end
                    object ChDeletarHorarioFuncionario: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarHorarioFuncionarioClick
                    end
                    object ChInserirHorarioFuncionario: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirHorarioFuncionarioClick
                    end
                    object ChRelatorioHorarioFuncionario: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioHorarioFuncionarioClick
                    end
                    object ChTodasHorarioFuncionario: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasHorarioFuncionarioClick
                    end
                  end
                  object GbPadraoSistema: TGroupBox
                    Left = 417
                    Top = 15
                    Width = 103
                    Height = 170
                    Caption = 'Padr'#227'o do Sistema'
                    TabOrder = 4
                    object ChConsultarPadraoSistema: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarPadraoSistemaClick
                    end
                    object ChEditarPadraoSistema: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarPadraoSistemaClick
                    end
                    object ChDeletarPadraoSistema: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarPadraoSistemaClick
                    end
                    object ChInserirPadraoSistema: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirPadraoSistemaClick
                    end
                    object ChRelatorioPadraoSistema: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioPadraoSistemaClick
                    end
                    object ChTodasPadraoSistema: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasPadraoSistemaClick
                    end
                  end
                  object GbEquipe: TGroupBox
                    Left = 524
                    Top = 15
                    Width = 90
                    Height = 170
                    Caption = 'Equipe'
                    TabOrder = 5
                    object ChConsultarEquipe: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarEquipeClick
                    end
                    object ChEditarEquipe: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarEquipeClick
                    end
                    object ChDeletarEquipe: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarEquipeClick
                    end
                    object ChInserirEquipe: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirEquipeClick
                    end
                    object ChRelatorioEquipe: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioEquipeClick
                    end
                    object ChTodasEquipe: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasEquipeClick
                    end
                  end
                  object GbPostoLocalTrabalho: TGroupBox
                    Left = 618
                    Top = 15
                    Width = 129
                    Height = 170
                    Caption = 'Posto / Local Trabalho'
                    TabOrder = 6
                    object ChConsultarPostoLocalTrabalho: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarPostoLocalTrabalhoClick
                    end
                    object ChEditarPostoLocalTrabalho: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarPostoLocalTrabalhoClick
                    end
                    object ChDeletarPostoLocalTrabalho: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarPostoLocalTrabalhoClick
                    end
                    object ChInserirPostoLocalTrabalho: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirPostoLocalTrabalhoClick
                    end
                    object ChRelatorioPostoLocalTrabalho: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioPostoLocalTrabalhoClick
                    end
                    object ChTodasPostoLocalTrabalho: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasPostoLocalTrabalhoClick
                    end
                  end
                  object GbAgenteEquipe: TGroupBox
                    Left = 3
                    Top = 199
                    Width = 102
                    Height = 170
                    Caption = 'Agente por Equipe'
                    TabOrder = 7
                    object ChConsultarAgenteEquipe: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarAgenteEquipeClick
                    end
                    object ChEditarAgenteEquipe: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarAgenteEquipeClick
                    end
                    object ChDeletarAgenteEquipe: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarAgenteEquipeClick
                    end
                    object ChInserirAgenteEquipe: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirAgenteEquipeClick
                    end
                    object ChRelatorioAgenteEquipe: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioAgenteEquipeClick
                    end
                    object ChTodasAgenteEquipe: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasAgenteEquipeClick
                    end
                  end
                  object GbRegraVisitacao: TGroupBox
                    Left = 109
                    Top = 200
                    Width = 110
                    Height = 170
                    Caption = 'Regras de Visita'#231#227'o'
                    TabOrder = 8
                    object ChConsultarRegraVisitacao: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarRegraVisitacaoClick
                    end
                    object ChEditarRegraVisitacao: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarRegraVisitacaoClick
                    end
                    object ChDeletarRegraVisitacao: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarRegraVisitacaoClick
                    end
                    object ChInserirRegraVisitacao: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirRegraVisitacaoClick
                    end
                    object ChRelatorioRegraVisitacao: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioRegraVisitacaoClick
                    end
                    object ChTodasRegraVisitacao: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasRegraVisitacaoClick
                    end
                  end
                  object GbPerfilUsuario: TGroupBox
                    Left = 223
                    Top = 200
                    Width = 94
                    Height = 170
                    Caption = 'Perfil de Usuario'
                    TabOrder = 9
                    object ChConsultarPerfilUsuario: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarPerfilUsuarioClick
                    end
                    object ChEditarPerfilUsuario: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarPerfilUsuarioClick
                    end
                    object ChDeletarPerfilUsuario: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarPerfilUsuarioClick
                    end
                    object ChInserirPerfilUsuario: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirPerfilUsuarioClick
                    end
                    object ChRelatorioPerfilUsuario: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioPerfilUsuarioClick
                    end
                    object ChTodasPerfilUsuario: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasPerfilUsuarioClick
                    end
                  end
                end
              end
              object DBRadioGroupAutorizadoDelphi: TDBRadioGroup
                Left = 672
                Top = 19
                Width = 121
                Height = 40
                Caption = 'Situa'#231#227'o do Cadastro?'
                Columns = 2
                DataField = 'AUTORIZADO_DELPHI'
                DataSource = DsCadastro
                Items.Strings = (
                  'Ativo'
                  'Inativo')
                TabOrder = 4
                Values.Strings = (
                  'S'
                  'N')
              end
              object DBLookupPerfilUsuario: TDBLookupComboBox
                Left = 388
                Top = 61
                Width = 405
                Height = 21
                DataField = 'ID_PERFIL_USUARIO'
                DataSource = DsCadastro
                KeyField = 'ID_PERFIL_USUARIO'
                ListField = 'PERFIL'
                ListSource = DsPerfilUsuario
                TabOrder = 3
                OnCloseUp = DBLookupPerfilUsuarioCloseUp
                OnKeyUp = DBLookupPerfilUsuarioKeyUp
              end
              object BtnLimparPermissoes: TButton
                Left = 632
                Top = 85
                Width = 161
                Height = 25
                Caption = 'Limpar Permiss'#245'es Individuais'
                TabOrder = 5
                OnClick = BtnLimparPermissoesClick
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 826
        end
        inherited PanelConsulta: TPanel
          Width = 826
          Height = 541
          inherited DBGridConsulta: TDBGrid
            Width = 824
            Height = 539
            DataSource = DsConsulta
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 949
    inherited Image2: TImage
      Width = 949
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 635
    Width = 949
  end
  inherited SqlCadastro: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_FUNCIONARIO'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM FUNCIONARIO'
      'WHERE ID_FUNCIONARIO = :ID_FUNCIONARIO')
    Left = 520
    Top = 0
  end
  inherited DspCadastro: TDataSetProvider
    Left = 548
    Top = 0
  end
  inherited CdsCadastro: TClientDataSet
    Left = 576
    Top = 0
  end
  inherited DsCadastro: TDataSource
    Left = 604
    Top = 0
  end
  object SqlConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select  ID_FUNCIONARIO, nome_funcionario, matricula, login, cpf ' +
        'from funcionario'
      'order by nome_funcionario collate win_ptbr')
    SQLConnection = DM.SQLConnect
    Top = 376
  end
  object Dspconsulta: TDataSetProvider
    DataSet = SqlConsulta
    Left = 28
    Top = 376
  end
  object CdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dspconsulta'
    Left = 56
    Top = 376
    object CdsConsultaNOME_FUNCIONARIO: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'NOME_FUNCIONARIO'
      Size = 100
    end
    object CdsConsultaMATRICULA: TStringField
      FieldName = 'MATRICULA'
      Size = 30
    end
    object CdsConsultaLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 30
    end
    object CdsConsultaCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object CdsConsultaID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      Required = True
    end
  end
  object DsConsulta: TDataSource
    DataSet = CdsConsulta
    Left = 84
    Top = 376
  end
  object SqlSelectFuncionario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from funcionario')
    SQLConnection = DM.SQLConnect
    Left = 40
    Top = 436
  end
  object SQLpermissaointeligencia: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_funcionario'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from funcionario f'
      
        'inner join posto_trabalho p on (f.idposto_trabalho = p.idposto_t' +
        'rabalho)'
      
        'where id_funcionario= :id_funcionario and ( (p.posto_trabalho li' +
        'ke '#39'%INTELIG%'#39') or (p.posto_trabalho = '#39'CGIN'#39') )')
    SQLConnection = DM.SQLConnect
    Left = 200
    Top = 8
  end
  object DSPpermissaointeligencia: TDataSetProvider
    DataSet = SQLpermissaointeligencia
    Left = 228
    Top = 8
  end
  object cdspermissaointeligencia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPpermissaointeligencia'
    Left = 256
    Top = 8
  end
  object dspermissaointeligencia: TDataSource
    DataSet = cdspermissaointeligencia
    Left = 284
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Imagens (*.jpg)|*.jpg'
    Left = 679
    Top = 8
  end
  object DsPerfilUsuario: TDataSource
    DataSet = CdsPerfilUsuario
    Left = 900
    Top = 8
  end
  object CdsPerfilUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPerfilUsuario'
    Left = 872
    Top = 8
  end
  object DspPerfilUsuario: TDataSetProvider
    DataSet = SqlPerfilUsuario
    Left = 844
    Top = 8
  end
  object SqlPerfilUsuario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ID_PERFIL_USUARIO, PERFIL'
      'FROM PERFIL_USUARIO'
      'ORDER BY PERFIL')
    SQLConnection = DM.SQLConnect
    Left = 816
    Top = 8
  end
  object DsPerfilAtribui: TDataSource
    DataSet = CDsPerfilAtribui
    Left = 788
    Top = 40
  end
  object CDsPerfilAtribui: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSpPerfilAtribui'
    Left = 760
    Top = 40
  end
  object DSpPerfilAtribui: TDataSetProvider
    DataSet = SQLPerfilAtribui
    Left = 732
    Top = 40
  end
  object SQLPerfilAtribui: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_perfil'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      
        'select * from perfil_usuario where perfil_usuario.id_perfil_usua' +
        'rio = :id_perfil')
    SQLConnection = DM.SQLConnect
    Left = 704
    Top = 40
  end
end
