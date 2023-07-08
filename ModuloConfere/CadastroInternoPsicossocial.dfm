inherited FrmCadastroInternoPsicossocial: TFrmCadastroInternoPsicossocial
  Left = 220
  Top = 70
  Width = 860
  Caption = 'Cadastro do Psicossocial'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 729
    inherited PageControlModeloCadastro: TPageControl
      Width = 729
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 721
          inherited PageControlPrincipal: TPageControl
            Width = 719
            ActivePage = TabSheet1
            inherited TabSheetDadosGerais: TTabSheet
              inherited Label28: TLabel
                Enabled = True
              end
              inherited Label30: TLabel
                Enabled = True
              end
              inherited Label31: TLabel
                Enabled = True
              end
              inherited Label32: TLabel
                Enabled = True
              end
              inherited Label33: TLabel
                Enabled = True
              end
              inherited Label34: TLabel
                Enabled = True
              end
              inherited Label35: TLabel
                Enabled = True
              end
              inherited lbl2: TLabel
                Enabled = True
              end
              inherited Label6: TLabel
                Enabled = True
              end
              inherited DBEdit10: TDBEdit
                Enabled = True
              end
              inherited DBEdit11: TDBEdit
                Enabled = True
              end
              inherited DBEdit12: TDBEdit
                Enabled = True
              end
              inherited DBEdit13: TDBEdit
                Enabled = True
              end
              inherited DBEdit14: TDBEdit
                Enabled = True
              end
              inherited DBEdit16: TDBEdit
                Enabled = True
              end
              inherited DBEdit17: TDBEdit
                Enabled = True
              end
              inherited DBLookupComboBoxIDCIDADE: TDBLookupComboBox
                Enabled = True
              end
              inherited DBLookupComboBoxIDNACIONALIDADE1: TDBLookupComboBox
                Enabled = True
              end
            end
            object TabSheet1: TTabSheet
              Caption = 'Psicossocial'
              ImageIndex = 2
              object PageControlPsicossocial: TPageControl
                Left = 0
                Top = 0
                Width = 711
                Height = 463
                ActivePage = TabSheet13
                Align = alClient
                TabOrder = 0
                object TabSheet12: TTabSheet
                  Caption = 'Geral'
                  object Label81: TLabel
                    Left = 16
                    Top = 64
                    Width = 139
                    Height = 13
                    Caption = 'Unidade penal familiar preso?'
                  end
                  object Label138: TLabel
                    Left = 16
                    Top = 146
                    Width = 49
                    Height = 13
                    Caption = 'Advogado'
                  end
                  object Label160: TLabel
                    Left = 400
                    Top = 146
                    Width = 64
                    Height = 13
                    Caption = 'Situa'#231#227'o Civil'
                  end
                  object Label161: TLabel
                    Left = 16
                    Top = 191
                    Width = 45
                    Height = 13
                    Caption = 'Visitantes'
                    FocusControl = DBEdit91
                  end
                  object Label8: TLabel
                    Left = 16
                    Top = 24
                    Width = 88
                    Height = 13
                    Caption = 'Tem familiar preso:'
                  end
                  object Label14: TLabel
                    Left = 448
                    Top = 24
                    Width = 99
                    Height = 13
                    Caption = 'Qual '#233' o parentesco:'
                  end
                  object Label15: TLabel
                    Left = 16
                    Top = 104
                    Width = 75
                    Height = 13
                    Caption = 'Motivo do delito'
                  end
                  object Label16: TLabel
                    Left = 400
                    Top = 104
                    Width = 56
                    Height = 13
                    Caption = 'Maior perda'
                  end
                  object DBEdit39: TDBEdit
                    Left = 16
                    Top = 40
                    Width = 417
                    Height = 21
                    DataField = 'FAMILIARPRESO'
                    DataSource = DsCadastro
                    TabOrder = 0
                  end
                  object DBEdit40: TDBEdit
                    Left = 448
                    Top = 40
                    Width = 171
                    Height = 21
                    DataField = 'PARENTESCOPRESO'
                    DataSource = DsCadastro
                    TabOrder = 1
                  end
                  object DBComboBox8: TDBComboBox
                    Left = 17
                    Top = 119
                    Width = 376
                    Height = 21
                    DataField = 'MOTIVODELITO'
                    DataSource = DsCadastro
                    ItemHeight = 13
                    Items.Strings = (
                      'N'#195'O COMETEU'
                      'VINGAN'#199'A'
                      'IMPULSIVIDADE/INCONSEQUENCIA'
                      'INFLU'#202'NCIA DE OUTROS'
                      'NECESSIDADES MATERIAIS'
                      'DESEJO DE SER RECONHECIDO, DE SER VALORIZADO'
                      'CIRCUNST'#194'NCIAS DO MOMENTO EM QUE OCORREU O CRIME'
                      'ENVOLVIMENTO COM GRUPOS ORGANIZADOS'
                      'ENVOLVIMENTO COM DROGAS'
                      'OUTROS')
                    TabOrder = 3
                  end
                  object DBComboBox9: TDBComboBox
                    Left = 400
                    Top = 119
                    Width = 220
                    Height = 21
                    Style = csDropDownList
                    DataField = 'MAIORPERDA'
                    DataSource = DsCadastro
                    ItemHeight = 13
                    Items.Strings = (
                      'FICAR LONGE DA FAM'#205'LIA'
                      'FICAR LONGE DOS AMIGOS'
                      'ROMPIMENTO DE RELACIONAMENTO AMOROSO'
                      'PERDA DE EMPREGO'
                      'PERDA DO DIREITO DE IR E VIR'
                      'OUTROS')
                    TabOrder = 4
                  end
                  object DBLookupComboBox10: TDBLookupComboBox
                    Left = 16
                    Top = 162
                    Width = 377
                    Height = 21
                    DataField = 'IDADVOGADO'
                    DataSource = DsCadastro
                    KeyField = 'ID_ADVOGADO'
                    ListField = 'ADVOGADO'
                    ListSource = DM.DsAdvogado
                    TabOrder = 5
                  end
                  object DBEdit41: TDBEdit
                    Left = 16
                    Top = 80
                    Width = 603
                    Height = 21
                    DataField = 'UPFAMILIARPRESO'
                    DataSource = DsCadastro
                    TabOrder = 2
                  end
                  object DBComboBox29: TDBComboBox
                    Left = 400
                    Top = 162
                    Width = 220
                    Height = 21
                    Style = csDropDownList
                    DataField = 'SITUACAOCIVIL'
                    DataSource = DsCadastro
                    ItemHeight = 13
                    Items.Strings = (
                      'Amasiado'
                      'Casado'
                      'Divorciado'
                      'Separado Judicialmente'
                      'Solteiro'
                      'Vi'#250'vo'
                      'Uni'#227'o Est'#225'vel'
                      'N'#227'o Declarado')
                    TabOrder = 6
                  end
                  object DBEdit91: TDBEdit
                    Left = 16
                    Top = 207
                    Width = 604
                    Height = 21
                    DataField = 'VISITANTES'
                    DataSource = DsCadastro
                    TabOrder = 7
                  end
                end
                object TabSheet13: TTabSheet
                  Caption = 'Hist'#243'rico Familiar'
                  ImageIndex = 1
                  object Label84: TLabel
                    Left = 8
                    Top = 16
                    Width = 94
                    Height = 13
                    Caption = 'Pais naturais vivos?'
                    FocusControl = DBEdit42
                  end
                  object Label85: TLabel
                    Left = 163
                    Top = 16
                    Width = 78
                    Height = 13
                    Caption = 'Pais separados?'
                    FocusControl = DBEdit43
                  end
                  object Label86: TLabel
                    Left = 264
                    Top = 16
                    Width = 128
                    Height = 13
                    Caption = 'Idade separa'#231#227'o dos pais?'
                    FocusControl = DBEdit44
                  end
                  object Label87: TLabel
                    Left = 8
                    Top = 64
                    Width = 179
                    Height = 13
                    Caption = 'Profiss'#227'o dos pais ou de quem o criou'
                    FocusControl = DBEdit45
                  end
                  object Label88: TLabel
                    Left = 440
                    Top = 16
                    Width = 97
                    Height = 13
                    Caption = 'Por quem foi criado?'
                  end
                  object Label89: TLabel
                    Left = 251
                    Top = 64
                    Width = 121
                    Height = 13
                    Caption = 'Quem trabalha na fam'#237'lia:'
                    FocusControl = DBEdit47
                  end
                  object Label90: TLabel
                    Left = 432
                    Top = 64
                    Width = 109
                    Height = 13
                    Caption = 'Tem irm'#227'os? Quantos?'
                    FocusControl = DBEdit48
                  end
                  object Label91: TLabel
                    Left = 8
                    Top = 113
                    Width = 109
                    Height = 13
                    Caption = 'Criado junto aos irm'#227'os'
                    FocusControl = DBEdit49
                  end
                  object Label92: TLabel
                    Left = 176
                    Top = 112
                    Width = 105
                    Height = 13
                    Caption = 'Condi'#231#245'es de moradia'
                  end
                  object Label93: TLabel
                    Left = 328
                    Top = 101
                    Width = 277
                    Height = 27
                    AutoSize = False
                    Caption = 
                      'O que seus pais ou aqueles que o criaram representaram para voc'#234 +
                      ' na inf'#226'ncia?'
                    WordWrap = True
                  end
                  object Label94: TLabel
                    Left = 8
                    Top = 160
                    Width = 93
                    Height = 13
                    Caption = 'Educa'#231#227'o recebida'
                  end
                  object Label95: TLabel
                    Left = 184
                    Top = 160
                    Width = 216
                    Height = 13
                    Caption = 'Quantas vezes mudou de fam'#237'lia na inf'#226'ncia?'
                  end
                  object Label96: TLabel
                    Left = 480
                    Top = 149
                    Width = 117
                    Height = 27
                    AutoSize = False
                    Caption = 'Fugiu de casa alguma vez? Por qu'#234'?'
                    FocusControl = DBEdit46
                    WordWrap = True
                  end
                  object Label97: TLabel
                    Left = 8
                    Top = 206
                    Width = 184
                    Height = 13
                    Caption = 'Em que condi'#231#245'es materiais foi criado?'
                  end
                  object Label98: TLabel
                    Left = 384
                    Top = 208
                    Width = 239
                    Height = 13
                    Caption = 'Passou por institui'#231#227'o assistencial na menoridade?'
                  end
                  object Label99: TLabel
                    Left = 8
                    Top = 256
                    Width = 163
                    Height = 13
                    Caption = 'Foi v'#237'tima de viol'#234'ncia dom'#233'stica?'
                  end
                  object DBEdit42: TDBEdit
                    Left = 8
                    Top = 32
                    Width = 153
                    Height = 21
                    DataField = 'PAISVIVOS'
                    DataSource = DsCadastro
                    TabOrder = 0
                  end
                  object DBEdit43: TDBEdit
                    Left = 163
                    Top = 32
                    Width = 99
                    Height = 21
                    DataField = 'PAISSEPARADOS'
                    DataSource = DsCadastro
                    TabOrder = 1
                  end
                  object DBEdit44: TDBEdit
                    Left = 264
                    Top = 32
                    Width = 166
                    Height = 21
                    DataField = 'IDADEPAISSEPARADOS'
                    DataSource = DsCadastro
                    TabOrder = 2
                  end
                  object DBEdit45: TDBEdit
                    Left = 8
                    Top = 80
                    Width = 241
                    Height = 21
                    DataField = 'PROFISSAOPAIS'
                    DataSource = DsCadastro
                    TabOrder = 4
                  end
                  object DBEdit47: TDBEdit
                    Left = 251
                    Top = 80
                    Width = 179
                    Height = 21
                    DataField = 'TRABALHOFAMILIA'
                    DataSource = DsCadastro
                    TabOrder = 5
                  end
                  object DBEdit48: TDBEdit
                    Left = 432
                    Top = 80
                    Width = 183
                    Height = 21
                    DataField = 'QTDEIRMAOS'
                    DataSource = DsCadastro
                    TabOrder = 6
                  end
                  object DBEdit49: TDBEdit
                    Left = 8
                    Top = 129
                    Width = 161
                    Height = 21
                    DataField = 'CRIADOIRMAOS'
                    DataSource = DsCadastro
                    TabOrder = 7
                  end
                  object DBComboBox10: TDBComboBox
                    Left = 440
                    Top = 32
                    Width = 175
                    Height = 21
                    Style = csDropDownList
                    DataField = 'QUEMCRIOU'
                    DataSource = DsCadastro
                    ItemHeight = 13
                    Items.Strings = (
                      'AV'#211'S PATERNOS'
                      'AV'#211'S MATERNOS'
                      'PELOS PAIS'
                      'PELO PAI'
                      'PELA M'#195'E'
                      'POR INSTITUI'#199#195'O'
                      'POR IRM'#195'O(S) MAIS VELHO(S)'
                      'POR OUTRA FAM'#205'LIA'
                      'POR PARENTES'
                      'OUTROS')
                    TabOrder = 3
                  end
                  object DBComboBox11: TDBComboBox
                    Left = 176
                    Top = 128
                    Width = 145
                    Height = 21
                    Style = csDropDownList
                    DataField = 'MORADIA'
                    DataSource = DsCadastro
                    ItemHeight = 13
                    Items.Strings = (
                      'ALVEN'#193'RIA'
                      'ALUGADA'
                      'CEDIDA'
                      'BARRO'
                      'MADEIRA'
                      'PR'#211'PRIA'
                      'SEM TETO')
                    TabOrder = 8
                  end
                  object DBComboBox12: TDBComboBox
                    Left = 329
                    Top = 126
                    Width = 287
                    Height = 21
                    Style = csDropDownList
                    DataField = 'REPRESENTACAOPAIS'
                    DataSource = DsCadastro
                    ItemHeight = 13
                    Items.Strings = (
                      'AUSENTES'
                      'FORAM PESSOAS FUNDAMENTAIS'
                      'FORAM PESSOAS IMPORTANTES'
                      'FORAM PESSOAS INDIFERENTES'
                      'FORAM PESSOAS NEGLIGENTES'
                      'FORAM PESSOAS PRESENTES'
                      'OUTROS')
                    TabOrder = 9
                  end
                  object DBComboBox13: TDBComboBox
                    Left = 8
                    Top = 176
                    Width = 169
                    Height = 21
                    Style = csDropDownList
                    DataField = 'EDUCACAORECEBIDA'
                    DataSource = DsCadastro
                    ItemHeight = 13
                    Items.Strings = (
                      'R'#205'GIDA'
                      'MUITO R'#205'GIDA'
                      'FLEX'#205'VEL'
                      'SEM LIMITES'
                      'OUTRAS')
                    TabOrder = 10
                  end
                  object DBComboBox14: TDBComboBox
                    Left = 184
                    Top = 176
                    Width = 289
                    Height = 21
                    Style = csDropDownList
                    DataField = 'MUDANCAFAMILIA'
                    DataSource = DsCadastro
                    ItemHeight = 13
                    Items.Strings = (
                      'NENHUMA VEZ'
                      'UMA VEZ'
                      'DUAS VEZES'
                      'MAIS DE DUAS VEZES')
                    TabOrder = 11
                  end
                  object DBEdit46: TDBEdit
                    Left = 480
                    Top = 176
                    Width = 135
                    Height = 21
                    DataField = 'FUGACASA'
                    DataSource = DsCadastro
                    TabOrder = 12
                  end
                  object DBComboBox15: TDBComboBox
                    Left = 8
                    Top = 224
                    Width = 369
                    Height = 21
                    Style = csDropDownList
                    DataField = 'CONDICOESCRIACAO'
                    DataSource = DsCadastro
                    ItemHeight = 13
                    Items.Strings = (
                      #211'TIMAS CONDI'#199#213'ES'
                      'BOAS CONDI'#199#213'ES'
                      'TENDO SUAS NECESSIDADES B'#193'SICAS ATENDIDAS'
                      'COM POBREZA'
                      'EXTREMA POBREZA')
                    TabOrder = 13
                  end
                  object DBComboBox16: TDBComboBox
                    Left = 384
                    Top = 224
                    Width = 233
                    Height = 21
                    Style = csDropDownList
                    DataField = 'INSTITUICAOASSISTENCIAL'
                    DataSource = DsCadastro
                    ItemHeight = 13
                    Items.Strings = (
                      'N'#195'O'
                      'SIM COMO CARENTE'
                      'SIM COMO INFRATOR')
                    TabOrder = 14
                  end
                  object DBComboBox17: TDBComboBox
                    Left = 8
                    Top = 272
                    Width = 369
                    Height = 21
                    Style = csDropDownList
                    DataField = 'VIOLENCIADOMESTICA'
                    DataSource = DsCadastro
                    ItemHeight = 13
                    Items.Strings = (
                      'N'#195'O'
                      'SIM, VIOL'#202'NCIA F'#205'SICA'
                      'SIM, VIOL'#202'NCIA PSICOL'#211'GICA'
                      'SIM, VIOL'#202'NCIA SEXUAL'
                      'SIM, NEGLIG'#202'NCIA')
                    TabOrder = 15
                  end
                end
                object TabSheet14: TTabSheet
                  Caption = 'Situa'#231#227'o Pessoal'
                  ImageIndex = 2
                  object Label100: TLabel
                    Left = 8
                    Top = 11
                    Width = 38
                    Height = 13
                    Caption = 'Religi'#227'o'
                  end
                  object Label101: TLabel
                    Left = 232
                    Top = 8
                    Width = 184
                    Height = 13
                    Caption = 'Com quem morava antes de ser preso?'
                  end
                  object Label102: TLabel
                    Left = 488
                    Top = 8
                    Width = 88
                    Height = 13
                    Caption = 'Resid'#234'ncia familiar'
                  end
                  object Label103: TLabel
                    Left = 8
                    Top = 56
                    Width = 120
                    Height = 13
                    Caption = 'Quantos filhos voc'#234' tem?'
                    FocusControl = DBEdit52
                  end
                  object Label104: TLabel
                    Left = 184
                    Top = 56
                    Width = 153
                    Height = 13
                    Caption = 'Tem filhos menores de 16 anos?'
                    FocusControl = DBEdit50
                  end
                  object Label105: TLabel
                    Left = 432
                    Top = 56
                    Width = 137
                    Height = 13
                    Caption = 'Com quem seus filhos est'#227'o?'
                  end
                  object Label106: TLabel
                    Left = 8
                    Top = 104
                    Width = 311
                    Height = 13
                    Caption = 'Teve algum filho encaminhado para ado'#231#227'o ou fam'#237'lia substituta?'
                  end
                  object Label107: TLabel
                    Left = 432
                    Top = 104
                    Width = 170
                    Height = 13
                    Caption = 'Voc'#234' '#233' o '#250'nica provedor da familia?'
                    FocusControl = DBEdit54
                  end
                  object Label108: TLabel
                    Left = 8
                    Top = 152
                    Width = 127
                    Height = 13
                    Caption = 'Qual o rendimento familiar?'
                  end
                  object Label109: TLabel
                    Left = 336
                    Top = 142
                    Width = 300
                    Height = 27
                    AutoSize = False
                    Caption = 
                      'Sua fam'#237'lia est'#225' inscrita em programa social oficial ou comunit'#225 +
                      'rio? Qual(is)?'
                    FocusControl = DBEdit56
                    WordWrap = True
                  end
                  object Label110: TLabel
                    Left = 8
                    Top = 200
                    Width = 127
                    Height = 13
                    Caption = 'Recebe Aux'#237'lio Reclus'#227'o?'
                    FocusControl = DBEdit57
                  end
                  object DBComboBox18: TDBComboBox
                    Left = 8
                    Top = 24
                    Width = 217
                    Height = 21
                    Style = csDropDownList
                    DataField = 'RELIGIAO'
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
                    TabOrder = 0
                  end
                  object DBEdit52: TDBEdit
                    Left = 8
                    Top = 72
                    Width = 161
                    Height = 21
                    DataField = 'QTDEFILHOS'
                    DataSource = DsCadastro
                    TabOrder = 3
                  end
                  object DBComboBox19: TDBComboBox
                    Left = 232
                    Top = 24
                    Width = 241
                    Height = 21
                    Style = csDropDownList
                    DataField = 'MORADIAANTESPRESO'
                    DataSource = DsCadastro
                    ItemHeight = 13
                    Items.Strings = (
                      'AMIGOS'
                      'AV'#211'S'
                      'ESPOSA'
                      'FILHOS'
                      'IRM'#195'OS'
                      'NAMORADA'
                      'M'#195'E'
                      'PAI'
                      'TIOS'
                      'OUTROS')
                    TabOrder = 1
                  end
                  object DBComboBox20: TDBComboBox
                    Left = 488
                    Top = 24
                    Width = 146
                    Height = 21
                    Style = csDropDownList
                    DataField = 'RESIDENCIAFAMILIAR'
                    DataSource = DsCadastro
                    ItemHeight = 13
                    Items.Strings = (
                      'IMOV'#201'L PR'#211'PRIO'
                      'IMOV'#201'L ALUGADO'
                      'IMOV'#201'L CEDIDO'
                      'IMOV'#201'L OCUPADO'
                      'ALBERGUE'
                      'OUTROS')
                    TabOrder = 2
                  end
                  object DBEdit50: TDBEdit
                    Left = 184
                    Top = 72
                    Width = 233
                    Height = 21
                    DataField = 'FILHOSMENORES16'
                    DataSource = DsCadastro
                    TabOrder = 4
                  end
                  object DBEdit54: TDBEdit
                    Left = 432
                    Top = 120
                    Width = 202
                    Height = 21
                    DataField = 'PROVEDORFAMILIA'
                    DataSource = DsCadastro
                    TabOrder = 7
                  end
                  object DBEdit56: TDBEdit
                    Left = 336
                    Top = 168
                    Width = 298
                    Height = 21
                    DataField = 'PROGRAMASOCIAL'
                    DataSource = DsCadastro
                    TabOrder = 9
                  end
                  object DBEdit57: TDBEdit
                    Left = 8
                    Top = 216
                    Width = 321
                    Height = 21
                    DataField = 'AUXRECLUSAO'
                    DataSource = DsCadastro
                    TabOrder = 10
                  end
                  object DBComboBox21: TDBComboBox
                    Left = 432
                    Top = 72
                    Width = 202
                    Height = 21
                    Style = csDropDownList
                    DataField = 'FILHOSVIVEM'
                    DataSource = DsCadastro
                    ItemHeight = 13
                    Items.Strings = (
                      'M'#195'E'
                      'PAI'
                      'AV'#211'S MATERNOS'
                      'AV'#211'S PATERNOS'
                      'FEBEM'
                      'ORFANATO'
                      'EST'#195'O PRESOS'
                      'S'#195'O INDEPENDENTES'
                      'TIOS'
                      'IRMAOS(S) MAIS VELHO(S)'
                      'N'#195'O SEI'
                      'OUTROS')
                    TabOrder = 5
                  end
                  object DBComboBox22: TDBComboBox
                    Left = 8
                    Top = 120
                    Width = 417
                    Height = 21
                    Style = csDropDownList
                    DataField = 'FILHOADOCAO'
                    DataSource = DsCadastro
                    ItemHeight = 13
                    Items.Strings = (
                      'N'#195'O SEI'
                      'N'#195'O'
                      'SIM, PARA FAM'#205'LIA SUBSTITUTA'
                      'SEM SUA CONCORD'#194'NCIA'
                      'COM SUA CONCORD'#194'NCIA')
                    TabOrder = 6
                  end
                  object DBComboBox23: TDBComboBox
                    Left = 8
                    Top = 168
                    Width = 321
                    Height = 21
                    Style = csDropDownList
                    DataField = 'RENDIMENTOFAMILIAR'
                    DataSource = DsCadastro
                    ItemHeight = 13
                    Items.Strings = (
                      '0 A 1/2 SAL'#193'RIO M'#205'NIMO'
                      'ACIMA DE 1/2 AT'#201' 2 SAL'#193'RIOS M'#205'NIMOS'
                      'ACIMA DE 2 AT'#201' 4 SAL'#193'RIOS M'#205'NIMOS'
                      'ACIMA DE 4 AT'#201' 9 SAL'#193'RIOS M'#205'NIMOS'
                      'ACIMA DE 9 AT'#201' 15 SAL'#193'RIOS M'#205'NIMOS'
                      'MAIS DE 15 SAL'#193'RIOS M'#205'NIMOS')
                    TabOrder = 8
                  end
                end
                object TabSheet15: TTabSheet
                  Caption = 'Escolaridade'
                  ImageIndex = 3
                  object Label111: TLabel
                    Left = 9
                    Top = 12
                    Width = 61
                    Height = 13
                    Caption = 'Escolaridade'
                  end
                  object Label112: TLabel
                    Left = 365
                    Top = 11
                    Width = 185
                    Height = 13
                    Caption = 'Repetiu alguma s'#233'rie? Quantas vezes?'
                    FocusControl = DBEdit51
                  end
                  object DBLookupComboBox6: TDBLookupComboBox
                    Left = 8
                    Top = 28
                    Width = 355
                    Height = 21
                    DataField = 'IDESCOLARIDADE'
                    DataSource = DsCadastro
                    KeyField = 'ID_ESCOLARIDADE'
                    ListField = 'ESCOLARIDADE'
                    ListSource = DM.DSESCOLARIDADE
                    TabOrder = 0
                  end
                  object DBEdit51: TDBEdit
                    Left = 365
                    Top = 27
                    Width = 238
                    Height = 21
                    DataField = 'REPROVADOESCOLA'
                    DataSource = DsCadastro
                    TabOrder = 1
                  end
                end
                object TabSheet16: TTabSheet
                  Caption = 'Situa'#231#227'o Profissional/Documental'
                  ImageIndex = 4
                  object Label113: TLabel
                    Left = 8
                    Top = 16
                    Width = 177
                    Height = 13
                    Caption = 'Com que idade come'#231'ou a trabalhar?'
                    FocusControl = DBEdit53
                  end
                  object Label114: TLabel
                    Left = 250
                    Top = 15
                    Width = 193
                    Height = 13
                    Caption = 'Possui curso profissionalizante? Qual(is)?'
                    FocusControl = DBEdit55
                  end
                  object Label115: TLabel
                    Left = 250
                    Top = 64
                    Width = 229
                    Height = 13
                    Caption = 'No momento da pris'#227'o exercia atividade laboral?'
                    FocusControl = DBEdit58
                  end
                  object Label116: TLabel
                    Left = 8
                    Top = 112
                    Width = 119
                    Height = 13
                    Caption = 'Com registro em carteira?'
                    FocusControl = DBEdit59
                  end
                  object Label117: TLabel
                    Left = 250
                    Top = 102
                    Width = 317
                    Height = 13
                    Caption = 
                      'Se preso em outra unidade prisional, em quais setores j'#225' trabalh' +
                      'ou?'
                    FocusControl = DBEdit60
                    WordWrap = True
                  end
                  object Label118: TLabel
                    Left = 8
                    Top = 64
                    Width = 43
                    Height = 13
                    Caption = 'Profiss'#227'o'
                  end
                  object Label119: TLabel
                    Left = 8
                    Top = 160
                    Width = 127
                    Height = 13
                    Caption = 'Quais documentos possui?'
                    FocusControl = DBEdit61
                  end
                  object DBEdit53: TDBEdit
                    Left = 8
                    Top = 32
                    Width = 241
                    Height = 21
                    DataField = 'IDADETRABALHO'
                    DataSource = DsCadastro
                    TabOrder = 0
                  end
                  object DBEdit55: TDBEdit
                    Left = 250
                    Top = 31
                    Width = 363
                    Height = 21
                    DataField = 'CURSOPROFISSIONALIZANTE'
                    DataSource = DsCadastro
                    TabOrder = 1
                  end
                  object DBEdit58: TDBEdit
                    Left = 250
                    Top = 80
                    Width = 363
                    Height = 21
                    DataField = 'EXERCICIATRABALHO'
                    DataSource = DsCadastro
                    TabOrder = 3
                  end
                  object DBEdit59: TDBEdit
                    Left = 8
                    Top = 128
                    Width = 241
                    Height = 21
                    DataField = 'REGISTROCARTEIRA'
                    DataSource = DsCadastro
                    TabOrder = 4
                  end
                  object DBEdit60: TDBEdit
                    Left = 250
                    Top = 128
                    Width = 363
                    Height = 21
                    DataField = 'TRABALHOUPANTERIOR'
                    DataSource = DsCadastro
                    TabOrder = 5
                  end
                  object DBLookupComboBox7: TDBLookupComboBox
                    Left = 8
                    Top = 80
                    Width = 241
                    Height = 21
                    DataField = 'IDPROFISSAO'
                    DataSource = DsCadastro
                    KeyField = 'ID_PROFISSAO'
                    ListField = 'PROFISSAO'
                    ListSource = DM.DsProfissao
                    TabOrder = 2
                  end
                  object DBEdit61: TDBEdit
                    Left = 8
                    Top = 176
                    Width = 605
                    Height = 21
                    DataField = 'DOCUMENTOS'
                    DataSource = DsCadastro
                    TabOrder = 6
                  end
                end
                object TabSheet18: TTabSheet
                  Caption = 'Situa'#231#227'o Intramuros/Perspectivas'
                  ImageIndex = 6
                  object Label128: TLabel
                    Left = 8
                    Top = 16
                    Width = 253
                    Height = 13
                    Caption = 'Recebe visitas de familiares ou outra pessoa? Quem?'
                    FocusControl = DBEdit63
                  end
                  object Label129: TLabel
                    Left = 8
                    Top = 63
                    Width = 250
                    Height = 13
                    Caption = 'Gostaris de estudar durante o cumprimento da pena?'
                    FocusControl = DBEdit65
                  end
                  object Label130: TLabel
                    Left = 408
                    Top = 54
                    Width = 222
                    Height = 27
                    AutoSize = False
                    Caption = 'Gostaria de trabalhar durante o cumprimento da pena?'
                    FocusControl = DBEdit70
                    WordWrap = True
                  end
                  object Label131: TLabel
                    Left = 8
                    Top = 108
                    Width = 204
                    Height = 13
                    Caption = 'Gostaria de aprender uma profiss'#227'o? Qual?'
                    FocusControl = DBEdit71
                  end
                  object Label132: TLabel
                    Left = 9
                    Top = 149
                    Width = 58
                    Height = 13
                    Caption = 'Observa'#231#227'o'
                    FocusControl = DBEdit72
                  end
                  object Label133: TLabel
                    Left = 9
                    Top = 199
                    Width = 84
                    Height = 13
                    Caption = 'Data atendimento'
                    FocusControl = DBEdit73
                  end
                  object Label134: TLabel
                    Left = 161
                    Top = 199
                    Width = 207
                    Height = 13
                    Caption = 'T'#233'cnico(a) respons'#225'vel pelo preenchimento'
                  end
                  object DBEdit63: TDBEdit
                    Left = 8
                    Top = 32
                    Width = 610
                    Height = 21
                    DataField = 'VISITAOUTRAPESSOA'
                    DataSource = DsCadastro
                    TabOrder = 0
                  end
                  object DBEdit65: TDBEdit
                    Left = 8
                    Top = 79
                    Width = 393
                    Height = 21
                    DataField = 'ESTUDOCUMPENA'
                    DataSource = DsCadastro
                    TabOrder = 1
                  end
                  object DBEdit70: TDBEdit
                    Left = 408
                    Top = 79
                    Width = 210
                    Height = 21
                    DataField = 'TRABALHOCUMPENA'
                    DataSource = DsCadastro
                    TabOrder = 2
                  end
                  object DBEdit71: TDBEdit
                    Left = 8
                    Top = 124
                    Width = 610
                    Height = 21
                    DataField = 'PROFISSAOCUMPENA'
                    DataSource = DsCadastro
                    TabOrder = 3
                  end
                  object DBEdit72: TDBEdit
                    Left = 9
                    Top = 169
                    Width = 610
                    Height = 21
                    DataField = 'OBSPSICOSSOCIAL'
                    DataSource = DsCadastro
                    TabOrder = 4
                  end
                  object DBEdit73: TDBEdit
                    Left = 9
                    Top = 215
                    Width = 145
                    Height = 21
                    DataField = 'DATAPSICOSSOCIAL'
                    DataSource = DsCadastro
                    TabOrder = 5
                  end
                  object DBLookupComboBox8: TDBLookupComboBox
                    Left = 161
                    Top = 215
                    Width = 458
                    Height = 21
                    DataField = 'IDTECNICO'
                    DataSource = DsCadastro
                    KeyField = 'ID_FUNCIONARIO'
                    ListField = 'NOME_FUNCIONARIO'
                    ListSource = DM.DsFuncionario
                    TabOrder = 6
                  end
                end
                object TabSheet2: TTabSheet
                  Caption = 'Sa'#250'de I'
                  ImageIndex = 7
                  object Label165: TLabel
                    Left = 10
                    Top = 70
                    Width = 151
                    Height = 13
                    Caption = 'Quando se tornou dependente?'
                  end
                  object Label166: TLabel
                    Left = 214
                    Top = 61
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
                    Left = 10
                    Top = 115
                    Width = 341
                    Height = 26
                    AutoSize = False
                    Caption = 
                      'Uso de drogas ou bebidas alco'#243'licas tem rela'#231#227'o com a pr'#225'tica do' +
                      ' delito?'
                    WordWrap = True
                  end
                  object Label168: TLabel
                    Left = 358
                    Top = 114
                    Width = 258
                    Height = 27
                    AutoSize = False
                    Caption = 'J'#225' sofreu de doen'#231'a grave em alguma fase da vida? Qual?'
                    FocusControl = DBEdit94
                    WordWrap = True
                  end
                  object Label169: TLabel
                    Left = 10
                    Top = 164
                    Width = 251
                    Height = 17
                    AutoSize = False
                    Caption = 'Tem caso de doen'#231'a mental na fam'#237'lia? Qual?'
                    FocusControl = DBEdit95
                    WordWrap = True
                  end
                  object Label170: TLabel
                    Left = 278
                    Top = 164
                    Width = 230
                    Height = 13
                    Caption = 'Voc'#234' tem algum problema de sa'#250'de atualmente?'
                    FocusControl = DBEdit96
                  end
                  object Label171: TLabel
                    Left = 342
                    Top = 24
                    Width = 120
                    Height = 13
                    Caption = 'Efeitos do uso de drogas:'
                    FocusControl = DBEdit97
                  end
                  object Label172: TLabel
                    Left = 10
                    Top = 206
                    Width = 197
                    Height = 13
                    Caption = 'Faz uso de medica'#231#227'o controlada? Qual?'
                    FocusControl = DBEdit98
                  end
                  object Label173: TLabel
                    Left = 277
                    Top = 204
                    Width = 134
                    Height = 13
                    Caption = 'Doen'#231'a infecto contagiosa?'
                    FocusControl = DBEdit99
                  end
                  object Label174: TLabel
                    Left = 10
                    Top = 253
                    Width = 135
                    Height = 13
                    Caption = 'Realizou tratamento infecto?'
                    FocusControl = DBEdit100
                  end
                  object Label175: TLabel
                    Left = 277
                    Top = 253
                    Width = 142
                    Height = 13
                    Caption = 'Resultado tratamento infecto?'
                    FocusControl = DBEdit101
                  end
                  object Label17: TLabel
                    Left = 142
                    Top = 24
                    Width = 90
                    Height = 13
                    Caption = 'Faz uso de drogas:'
                    FocusControl = DBEdit97
                  end
                  object Label67: TLabel
                    Left = 10
                    Top = 24
                    Width = 96
                    Height = 13
                    Caption = 'N'#250'mero Cart'#227'o SUS'
                    FocusControl = DBEdit97
                  end
                  object DBEdit92: TDBEdit
                    Left = 144
                    Top = 40
                    Width = 194
                    Height = 21
                    DataField = 'USODROGAS'
                    DataSource = DsCadastro
                    TabOrder = 1
                  end
                  object DBEdit93: TDBEdit
                    Left = 213
                    Top = 86
                    Width = 407
                    Height = 21
                    DataField = 'ABANDONODROGAS'
                    DataSource = DsCadastro
                    TabOrder = 4
                  end
                  object DBEdit94: TDBEdit
                    Left = 357
                    Top = 140
                    Width = 263
                    Height = 21
                    DataField = 'DOENCAGRAVE'
                    DataSource = DsCadastro
                    TabOrder = 6
                  end
                  object DBEdit95: TDBEdit
                    Left = 10
                    Top = 180
                    Width = 255
                    Height = 21
                    DataField = 'DOENCAMENTAL'
                    DataSource = DsCadastro
                    TabOrder = 7
                  end
                  object DBEdit96: TDBEdit
                    Left = 277
                    Top = 180
                    Width = 343
                    Height = 21
                    DataField = 'PROBLEMASAUDE'
                    DataSource = DsCadastro
                    TabOrder = 8
                  end
                  object DBComboBox26: TDBComboBox
                    Left = 10
                    Top = 86
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
                    TabOrder = 3
                  end
                  object DBComboBox27: TDBComboBox
                    Left = 10
                    Top = 140
                    Width = 344
                    Height = 21
                    Style = csDropDownList
                    DataField = 'DROGASCOMCRIME'
                    DataSource = DsCadastro
                    ImeMode = imDisable
                    ItemHeight = 13
                    Items.Strings = (
                      'N'#195'O'
                      'SIM, PARA USO DE DROGAS'
                      'SIM, PARA USO DE BEBIDAS ALCO'#211'LICAS')
                    TabOrder = 5
                  end
                  object DBEdit97: TDBEdit
                    Left = 341
                    Top = 40
                    Width = 279
                    Height = 21
                    DataField = 'EFEITOSDROGA'
                    DataSource = DsCadastro
                    TabOrder = 2
                  end
                  object DBEdit98: TDBEdit
                    Left = 10
                    Top = 222
                    Width = 255
                    Height = 21
                    DataField = 'MEDICACAOCONTROLADA'
                    DataSource = DsCadastro
                    TabOrder = 9
                  end
                  object DBEdit99: TDBEdit
                    Left = 277
                    Top = 220
                    Width = 342
                    Height = 21
                    DataField = 'DOENCAINFECTOCONTAGIOSA'
                    DataSource = DsCadastro
                    TabOrder = 10
                  end
                  object DBEdit100: TDBEdit
                    Left = 10
                    Top = 269
                    Width = 255
                    Height = 21
                    DataField = 'TRATAMENTOINFECTO'
                    DataSource = DsCadastro
                    TabOrder = 11
                  end
                  object DBEdit101: TDBEdit
                    Left = 277
                    Top = 269
                    Width = 342
                    Height = 21
                    DataField = 'RESULTADOINFECTO'
                    DataSource = DsCadastro
                    TabOrder = 12
                  end
                  object DBEdit15: TDBEdit
                    Left = 10
                    Top = 40
                    Width = 125
                    Height = 21
                    DataField = 'SUS'
                    DataSource = DsCadastro
                    TabOrder = 0
                  end
                end
                object TabSheet3: TTabSheet
                  Caption = 'Sa'#250'de II'
                  ImageIndex = 8
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
                  object DBRadioGroup3: TDBRadioGroup
                    Left = 8
                    Top = 305
                    Width = 201
                    Height = 49
                    Caption = 'Tem tosse h'#225' mais de duas semanas?'
                    Columns = 2
                    DataField = 'tosse_semana'
                    DataSource = DsCadastro
                    Items.Strings = (
                      'Sim'
                      'N'#227'o')
                    TabOrder = 9
                    Values.Strings = (
                      'S'
                      'N')
                  end
                  object DBRadioGroup4: TDBRadioGroup
                    Left = 218
                    Top = 305
                    Width = 185
                    Height = 49
                    Caption = 'Tem mancha amortecida no corpo?'
                    Columns = 2
                    DataField = 'mancha_corpo'
                    DataSource = DsCadastro
                    Items.Strings = (
                      'Sim'
                      'N'#227'o')
                    TabOrder = 10
                    Values.Strings = (
                      'S'
                      'N')
                  end
                  object DBRadioGroup5: TDBRadioGroup
                    Left = 416
                    Top = 305
                    Width = 201
                    Height = 49
                    Caption = 'Tem ou teve alguma doen'#231'a ven'#233'rea?'
                    Columns = 2
                    DataField = 'doenca_venerea'
                    DataSource = DsCadastro
                    Items.Strings = (
                      'Sim'
                      'N'#227'o')
                    TabOrder = 11
                    Values.Strings = (
                      'S'
                      'N')
                  end
                  object DBRadioGroup9: TDBRadioGroup
                    Left = 472
                    Top = 366
                    Width = 145
                    Height = 49
                    Caption = 'Tem HIV'
                    Columns = 2
                    DataField = 'hiv'
                    DataSource = DsCadastro
                    Items.Strings = (
                      'Sim'
                      'N'#227'o')
                    TabOrder = 15
                    Values.Strings = (
                      'S'
                      'N')
                  end
                  object DBRadioGroup8: TDBRadioGroup
                    Left = 320
                    Top = 366
                    Width = 137
                    Height = 49
                    Caption = 'Tem diabete?'
                    Columns = 2
                    DataField = 'diabete'
                    DataSource = DsCadastro
                    Items.Strings = (
                      'Sim'
                      'N'#227'o')
                    TabOrder = 14
                    Values.Strings = (
                      'S'
                      'N')
                  end
                  object DBRadioGroup7: TDBRadioGroup
                    Left = 168
                    Top = 366
                    Width = 137
                    Height = 49
                    Caption = 'Tem press'#227'o alta?'
                    Columns = 2
                    DataField = 'pressao_alta'
                    DataSource = DsCadastro
                    Items.Strings = (
                      'Sim'
                      'N'#227'o')
                    TabOrder = 13
                    Values.Strings = (
                      'S'
                      'N')
                  end
                  object DBRadioGroup6: TDBRadioGroup
                    Left = 8
                    Top = 366
                    Width = 145
                    Height = 49
                    Caption = 'Tem ou teve hepatite?'
                    Columns = 2
                    DataField = 'hepatite'
                    DataSource = DsCadastro
                    Items.Strings = (
                      'Sim'
                      'N'#227'o')
                    TabOrder = 12
                    Values.Strings = (
                      'S'
                      'N')
                  end
                end
                object TabSheet19: TTabSheet
                  Caption = 'Atendimentos'
                  ImageIndex = 7
                  object Label135: TLabel
                    Left = 8
                    Top = 8
                    Width = 23
                    Height = 13
                    Caption = 'Data'
                  end
                  object Label136: TLabel
                    Left = 8
                    Top = 48
                    Width = 109
                    Height = 13
                    Caption = 'Descri'#231#227'o atendimento'
                  end
                  object Label137: TLabel
                    Left = 128
                    Top = 8
                    Width = 112
                    Height = 13
                    Caption = 'T'#233'cnico(a) atendimento'
                  end
                  object DBGrid4: TDBGrid
                    Left = 8
                    Top = 172
                    Width = 600
                    Height = 159
                    DataSource = DSATENDIMENTO
                    TabOrder = 4
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'DATAATENDIMENTO'
                        Title.Caption = 'Data'
                        Width = 117
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DESCRICAO_ATENDIMENTO'
                        Title.Caption = 'Descri'#231#227'o'
                        Width = 505
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'T'#201'CNICO(A)'
                        Title.Caption = 'T'#233'cnico(a)'
                        Width = 151
                        Visible = True
                      end>
                  end
                  object DBMemo3: TDBMemo
                    Left = 9
                    Top = 336
                    Width = 600
                    Height = 58
                    DataField = 'DESCRICAO_ATENDIMENTO'
                    DataSource = DSATENDIMENTO
                    TabOrder = 5
                  end
                  object Memo1: TMemo
                    Left = 9
                    Top = 64
                    Width = 600
                    Height = 81
                    TabOrder = 2
                  end
                  object DBLookupComboBox9: TDBLookupComboBox
                    Left = 128
                    Top = 24
                    Width = 480
                    Height = 21
                    KeyField = 'ID_FUNCIONARIO'
                    ListField = 'NOME_FUNCIONARIO'
                    ListSource = DM.DsFuncionario
                    TabOrder = 1
                  end
                  object MaskEdit3: TMaskEdit
                    Left = 7
                    Top = 22
                    Width = 113
                    Height = 21
                    EditMask = '!99/99/00;1;_'
                    MaxLength = 8
                    TabOrder = 0
                    Text = '  /  /  '
                  end
                  object Button3: TButton
                    Left = 514
                    Top = 146
                    Width = 75
                    Height = 25
                    Caption = 'Incluir'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 3
                    OnClick = Button3Click
                  end
                end
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 721
          inherited RadioGroupStatus: TRadioGroup
            Left = 592
          end
        end
        inherited PanelConsulta: TPanel
          Width = 721
          inherited DBGridConsulta: TDBGrid
            Width = 719
          end
          inherited DBCtrlGridConsulta: TDBCtrlGrid
            Width = 719
            Height = 445
            PanelWidth = 702
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 844
    inherited Image2: TImage
      Width = 844
    end
  end
  inherited StatusBar1: TStatusBar
    Width = 844
  end
  inherited SqlCadastro: TSQLQuery
    Left = 744
    Top = 288
  end
  inherited DspCadastro: TDataSetProvider
    Left = 772
    Top = 288
  end
  inherited CdsCadastro: TClientDataSet
    Left = 800
    Top = 288
  end
  inherited DsCadastro: TDataSource
    Left = 828
    Top = 288
  end
  inherited SqlFaccao: TSQLQuery
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
  object DSATENDIMENTO: TDataSource
    DataSet = CDSATENDIMENTO
    OnDataChange = DsCadastroDataChange
    Left = 557
    Top = 5
  end
  object CDSATENDIMENTO: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDINTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPATENDIMENTO'
    Left = 529
    Top = 5
    object CDSATENDIMENTOID_ATENDIMENTO: TIntegerField
      FieldName = 'ID_ATENDIMENTO'
      Required = True
    end
    object CDSATENDIMENTOIDINTERNO: TIntegerField
      FieldName = 'IDINTERNO'
    end
    object CDSATENDIMENTODATAATENDIMENTO: TSQLTimeStampField
      DisplayLabel = 'DATA'
      FieldName = 'DATAATENDIMENTO'
    end
    object CDSATENDIMENTOIDTECNICO: TIntegerField
      FieldName = 'IDTECNICO'
    end
    object CDSATENDIMENTODESCRICAO_ATENDIMENTO: TStringField
      DisplayLabel = 'ATENDIMENTO'
      FieldName = 'DESCRICAO_ATENDIMENTO'
      Size = 16386
    end
    object CDSATENDIMENTOTCNICOA: TStringField
      FieldKind = fkLookup
      FieldName = 'T'#201'CNICO(A)'
      LookupDataSet = DM.cdsfuncionario
      LookupKeyFields = 'ID_FUNCIONARIO'
      LookupResultField = 'NOME_FUNCIONARIO'
      KeyFields = 'IDTECNICO'
      Size = 100
      Lookup = True
    end
  end
  object DSPATENDIMENTO: TDataSetProvider
    DataSet = SQLATENDIMENTO
    Left = 501
    Top = 5
  end
  object SQLATENDIMENTO: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from atendimento_psicossocial'
      'where idinterno=:id_interno'
      'order by dataatendimento desc')
    SQLConnection = DM.SQLConnect
    Left = 473
    Top = 5
  end
end
