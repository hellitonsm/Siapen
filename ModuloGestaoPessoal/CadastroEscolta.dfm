inherited frmCadastroEscolta: TfrmCadastroEscolta
  Left = 192
  Top = 122
  Caption = 'Cadastro de Escolta'
  ClientHeight = 583
  ClientWidth = 940
  ExplicitWidth = 956
  ExplicitHeight = 622
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 532
    inherited ToolBarModeloCadastro: TToolBar
      Height = 514
    end
    inherited DBNavigator1: TDBNavigator
      Top = 514
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 825
    Height = 532
    inherited Image2: TImage
      Width = 725
      ExplicitWidth = 725
    end
    inherited PageControlModeloCadastro: TPageControl
      Width = 825
      Height = 532
      ActivePage = TabSheetCadastro
      inherited TabSheetCadastro: TTabSheet
        ExplicitWidth = 817
        ExplicitHeight = 504
        inherited PanelCadastro: TPanel
          Width = 817
          Height = 504
          ExplicitWidth = 817
          ExplicitHeight = 504
          object PageControlEscolta: TPageControl
            Left = -4
            Top = 4
            Width = 621
            Height = 497
            ActivePage = TabSheetEscolta
            Images = DM.ImageListNetworkI
            TabOrder = 0
            TabWidth = 100
            object TabSheetEscolta: TTabSheet
              Caption = 'Escolta'
              object Label2: TLabel
                Left = 12
                Top = 12
                Width = 47
                Height = 13
                Caption = 'Id Escolta'
                FocusControl = edtIdEscolta
              end
              object Label3: TLabel
                Left = 114
                Top = 12
                Width = 27
                Height = 13
                Caption = 'Oficio'
              end
              object Label4: TLabel
                Left = 12
                Top = 60
                Width = 71
                Height = 13
                Caption = 'Data da Saida '
              end
              object Label5: TLabel
                Left = 171
                Top = 60
                Width = 68
                Height = 13
                Caption = 'Hora da Saida'
              end
              object Label6: TLabel
                Left = 300
                Top = 60
                Width = 82
                Height = 13
                Caption = 'Data de Retorno '
              end
              object Label7: TLabel
                Left = 471
                Top = 60
                Width = 82
                Height = 13
                Caption = 'Hora de Retorno '
                FocusControl = edtHoraRetornoEscolta
              end
              object Label8: TLabel
                Left = 12
                Top = 104
                Width = 80
                Height = 13
                Caption = 'OMP da Escolta '
                FocusControl = edtEscoltaOmp
              end
              object Label9: TLabel
                Left = 290
                Top = 104
                Width = 74
                Height = 13
                Caption = 'Tipo de Escolta'
              end
              object Label10: TLabel
                Left = 12
                Top = 148
                Width = 86
                Height = 13
                Caption = 'Origem da Escolta'
              end
              object Label11: TLabel
                Left = 291
                Top = 148
                Width = 89
                Height = 13
                Caption = 'Destino da Escolta'
              end
              object Label13: TLabel
                Left = 12
                Top = 237
                Width = 46
                Height = 13
                Caption = 'Pendente'
                FocusControl = EdtEscoltaPendente
              end
              object Label12: TLabel
                Left = 12
                Top = 192
                Width = 58
                Height = 13
                Caption = 'Observa'#231#227'o'
                FocusControl = edtEscoltaObs
              end
              object edtIdEscolta: TDBEdit
                Left = 12
                Top = 28
                Width = 85
                Height = 21
                DataField = 'ID_ESCOLTA'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 0
              end
              object cmdOficio: TDBLookupComboBox
                Left = 112
                Top = 28
                Width = 137
                Height = 21
                DataField = 'ID_DOC_OFICIO'
                DataSource = DsCadastro
                KeyField = 'ID_DOC_OFICIO'
                ListField = 'DOC_DESCRICAO'
                ListSource = DM.dsDocOficio
                TabOrder = 1
              end
              object cmdDataSaidaEscolta: TadpDBDateTimePicker
                Left = 12
                Top = 76
                Width = 135
                Height = 21
                Date = 41060.000000000000000000
                Time = 0.490616909723030400
                TabOrder = 2
                DataField = 'ESCOLTA_DATA_IDA'
                DataSource = DsCadastro
                ReadOnly = False
              end
              object edtHoraSaidaEscolta: TDBEdit
                Left = 171
                Top = 76
                Width = 80
                Height = 21
                DataField = 'ESCOLTA_HORA_IDA'
                DataSource = DsCadastro
                TabOrder = 3
              end
              object CmdDataRetornoEscolta: TadpDBDateTimePicker
                Left = 300
                Top = 76
                Width = 135
                Height = 21
                Date = 41060.000000000000000000
                Time = 0.540477800932421800
                TabOrder = 4
                DataField = 'ESCOLTA_DATA_RETORNO'
                DataSource = DsCadastro
                ReadOnly = False
              end
              object edtHoraRetornoEscolta: TDBEdit
                Left = 473
                Top = 76
                Width = 80
                Height = 21
                DataField = 'ESCOLTA_HORA_RETORNO'
                DataSource = DsCadastro
                TabOrder = 5
              end
              object edtEscoltaOmp: TDBEdit
                Left = 12
                Top = 120
                Width = 265
                Height = 21
                DataField = 'ESCOLTA_OMP'
                DataSource = DsCadastro
                TabOrder = 6
              end
              object cmdEscoltaOrigem: TDBComboBox
                Left = 12
                Top = 164
                Width = 265
                Height = 21
                DataField = 'ESCOLTA_ORIGEM'
                DataSource = DsCadastro
                Items.Strings = (
                  'PFCAT'
                  'PFCG'
                  'PFPV'
                  'PFMOS'
                  'SPAC'
                  'SPAL'
                  'SPAP'
                  'SPAM'
                  'SPBA'
                  'SPCE'
                  'SPDF'
                  'SPGO'
                  'SPES'
                  'SPMA'
                  'SPMT'
                  'SPMS'
                  'SPMG'
                  'SPPA'
                  'SPPB'
                  'SPPR'
                  'SPPE'
                  'SPPI'
                  'SPRJ'
                  'SPRN'
                  'SPRS'
                  'SPRO'
                  'SPRR'
                  'SPSP'
                  'SPSC'
                  'SPSE'
                  'SPTO')
                TabOrder = 8
              end
              object cmdEscoltaDestino: TDBComboBox
                Left = 289
                Top = 164
                Width = 265
                Height = 21
                DataField = 'ESCOLTA_DESTINO'
                DataSource = DsCadastro
                Items.Strings = (
                  'AC'
                  'AL'
                  'AP'
                  'AM'
                  'BA'
                  'CE'
                  'DF'
                  'GO'
                  'ES'
                  'MA'
                  'MT'
                  'MS'
                  'MG'
                  'PA'
                  'PB'
                  'PR'
                  'PE'
                  'PI'
                  'RJ'
                  'RN'
                  'RS'
                  'RO'
                  'RR'
                  'SP'
                  'SC'
                  'SE'
                  'TO')
                TabOrder = 9
              end
              object edtEscoltaObs: TDBEdit
                Left = 12
                Top = 208
                Width = 539
                Height = 21
                DataField = 'ESCOLTA_OBSERVACAO'
                DataSource = DsCadastro
                TabOrder = 10
              end
              object EdtEscoltaPendente: TDBEdit
                Left = 12
                Top = 253
                Width = 292
                Height = 21
                DataField = 'ESCOLTA_PENDENTE'
                DataSource = DsCadastro
                TabOrder = 11
              end
              object DBComboBox1: TDBComboBox
                Left = 289
                Top = 120
                Width = 265
                Height = 21
                DataField = 'ESCOLTA_TIPO'
                DataSource = DsCadastro
                Items.Strings = (
                  'APOIO'
                  'AUDI'#202'NCIA'
                  'DEVOLU'#199#195'O'
                  'INCLUS'#195'O'
                  'OUTRA'
                  'TRANSFER'#202'NCIA'
                  'VIDEO CONFER'#202'NCIA')
                TabOrder = 7
              end
            end
            object TabSheetItinerario: TTabSheet
              Caption = 'Itinerario'
              ImageIndex = 33
              object GroupBox1: TGroupBox
                Left = 8
                Top = 16
                Width = 557
                Height = 161
                Caption = 'Itiner'#225'rio'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                object Label23: TLabel
                  Left = 8
                  Top = 16
                  Width = 52
                  Height = 13
                  Caption = 'Id Itinerario'
                end
                object Label24: TLabel
                  Left = 152
                  Top = 16
                  Width = 47
                  Height = 13
                  Caption = 'Id Escolta'
                end
                object Label25: TLabel
                  Left = 304
                  Top = 16
                  Width = 77
                  Height = 13
                  Caption = 'Meio Transporte'
                end
                object Label26: TLabel
                  Left = 8
                  Top = 60
                  Width = 36
                  Height = 13
                  Caption = 'Destino'
                end
                object Label27: TLabel
                  Left = 233
                  Top = 56
                  Width = 33
                  Height = 13
                  Caption = 'Origem'
                end
                object Label28: TLabel
                  Left = 464
                  Top = 60
                  Width = 37
                  Height = 13
                  Caption = 'Numero'
                end
                object Label29: TLabel
                  Left = 8
                  Top = 104
                  Width = 53
                  Height = 13
                  Caption = 'Data Inicial'
                end
                object Label30: TLabel
                  Left = 172
                  Top = 104
                  Width = 45
                  Height = 13
                  Caption = 'Data final'
                end
                object Label31: TLabel
                  Left = 92
                  Top = 104
                  Width = 53
                  Height = 13
                  Caption = 'Hora Inicial'
                end
                object Label32: TLabel
                  Left = 264
                  Top = 104
                  Width = 45
                  Height = 13
                  Caption = 'Hora final'
                end
                object cmdDestino: TDBLookupComboBox
                  Left = 8
                  Top = 76
                  Width = 205
                  Height = 21
                  KeyField = 'ID_ITINERARIO'
                  ListField = 'INTINERARIO_DESC'
                  ListSource = DM.dsItinerario
                  TabOrder = 4
                end
                object cmdOrigem: TDBLookupComboBox
                  Left = 232
                  Top = 76
                  Width = 221
                  Height = 21
                  KeyField = 'ID_ITINERARIO'
                  ListField = 'INTINERARIO_DESC'
                  ListSource = DM.dsItinerario
                  TabOrder = 5
                end
                object cmdMeioTransporte: TDBLookupComboBox
                  Left = 304
                  Top = 32
                  Width = 177
                  Height = 21
                  KeyField = 'ID_MEIO_TRANSPORTE'
                  ListField = 'TRANSPORTE_DESC'
                  ListSource = DM.dsMeioTransporte
                  TabOrder = 2
                end
                object edtIdItinerario: TEdit
                  Left = 8
                  Top = 32
                  Width = 121
                  Height = 21
                  TabOrder = 0
                end
                object edtDataFinal: TMaskEdit
                  Left = 172
                  Top = 120
                  Width = 73
                  Height = 21
                  EditMask = '!99/99/0000;1;_'
                  MaxLength = 10
                  TabOrder = 9
                  Text = '  /  /    '
                end
                object edtHoraFinal: TMaskEdit
                  Left = 264
                  Top = 120
                  Width = 49
                  Height = 21
                  EditMask = '!90:00;1;_'
                  MaxLength = 5
                  TabOrder = 10
                  Text = '  :  '
                end
                object edtHoraInicial: TMaskEdit
                  Left = 92
                  Top = 120
                  Width = 61
                  Height = 21
                  EditMask = '!90:00;1;_'
                  MaxLength = 5
                  TabOrder = 8
                  Text = '  :  '
                end
                object edtNumero: TEdit
                  Left = 464
                  Top = 76
                  Width = 57
                  Height = 21
                  TabOrder = 6
                end
                object edtDataInicial: TMaskEdit
                  Left = 8
                  Top = 120
                  Width = 72
                  Height = 21
                  EditMask = '!99/99/0000;1;_'
                  MaxLength = 10
                  TabOrder = 7
                  Text = '  /  /    '
                end
                object Button1: TButton
                  Left = 356
                  Top = 116
                  Width = 75
                  Height = 25
                  Caption = 'Incluir'
                  TabOrder = 11
                  OnClick = Button1Click
                end
                object btnExcluirItinerario: TButton
                  Left = 448
                  Top = 116
                  Width = 75
                  Height = 25
                  Caption = 'Excluir'
                  TabOrder = 12
                  OnClick = btnExcluirItinerarioClick
                end
                object Edit2: TEdit
                  Left = 152
                  Top = 32
                  Width = 121
                  Height = 21
                  TabOrder = 1
                end
                object Button2: TButton
                  Left = 491
                  Top = 32
                  Width = 29
                  Height = 20
                  Caption = '...'
                  TabOrder = 3
                  OnClick = Button2Click
                end
              end
              object dbGridItinerario: TDBGrid
                Left = 16
                Top = 196
                Width = 557
                Height = 249
                DataSource = dsItinerario
                TabOrder = 1
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                OnDblClick = dbGridItinerarioDblClick
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'ITINERARIO_NUMERO'
                    Title.Caption = 'Numero Itinerario'
                    Width = 86
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ITINERARIO_DATA_INICIAL'
                    Title.Caption = 'Data Inicial'
                    Width = 73
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ITINERARIO_DATA_FINAL'
                    Title.Caption = 'Data Final'
                    Width = 71
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ITINERARIO_HORA_INICIAL'
                    Title.Caption = 'Hora Inicial'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ITINERARIO_HORA_FINAL'
                    Title.Caption = 'Hora Final'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ATIVO'
                    Title.Caption = 'Ativo'
                    Visible = True
                  end>
              end
            end
            object TabSheetInterno: TTabSheet
              Caption = 'Interno'
              ImageIndex = 5
              object Label33: TLabel
                Left = 156
                Top = 12
                Width = 44
                Height = 13
                Caption = 'IdEscolta'
              end
              object Interno: TLabel
                Left = 8
                Top = 64
                Width = 33
                Height = 13
                Caption = 'Interno'
              end
              object Label34: TLabel
                Left = 320
                Top = 64
                Width = 75
                Height = 13
                Caption = 'Escolta Numero'
              end
              object Label35: TLabel
                Left = 8
                Top = 112
                Width = 117
                Height = 13
                Caption = 'Data do PCDP no SCDP'
              end
              object Label36: TLabel
                Left = 176
                Top = 112
                Width = 93
                Height = 13
                Caption = 'Valor passagem Ida'
              end
              object Label22: TLabel
                Left = 320
                Top = 112
                Width = 102
                Height = 13
                Caption = 'Valor passagem Volta'
              end
              object Label37: TLabel
                Left = 8
                Top = 12
                Width = 90
                Height = 13
                Caption = 'Id Escolta Inclusao'
              end
              object edtIdEscoltaInterno: TEdit
                Left = 156
                Top = 28
                Width = 95
                Height = 21
                TabOrder = 1
              end
              object EdtIdEscoltaInternoInclusao: TEdit
                Left = 8
                Top = 28
                Width = 95
                Height = 21
                TabOrder = 0
              end
              object cmdEscoltaInterno: TDBLookupComboBox
                Left = 8
                Top = 80
                Width = 289
                Height = 21
                TabOrder = 2
              end
              object edtPcdpNumeroInterno: TEdit
                Left = 320
                Top = 80
                Width = 121
                Height = 21
                TabOrder = 3
              end
              object edtPcdpDataScdpInterno: TMaskEdit
                Left = 8
                Top = 128
                Width = 113
                Height = 21
                EditMask = '!99/99/0000;1;_'
                MaxLength = 10
                TabOrder = 4
                Text = '  /  /    '
              end
              object EDTPCDPValorPasIdaInterno: TEdit
                Left = 176
                Top = 128
                Width = 121
                Height = 21
                TabOrder = 5
              end
              object EdtPCDPValorPasRetornoInterno: TEdit
                Left = 320
                Top = 128
                Width = 121
                Height = 21
                TabOrder = 6
                Text = 'EdtPCDPValorPasRetornoInterno'
              end
              object DBGrid1: TDBGrid
                Left = 8
                Top = 172
                Width = 557
                Height = 277
                TabOrder = 7
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
              end
            end
            object TabSheetAgente: TTabSheet
              Caption = 'Agente'
              ImageIndex = 161
              object Label14: TLabel
                Left = 8
                Top = 12
                Width = 108
                Height = 13
                Caption = 'Id Escolta_Funcionario'
              end
              object Label15: TLabel
                Left = 8
                Top = 56
                Width = 34
                Height = 13
                Caption = 'Agente'
              end
              object Label16: TLabel
                Left = 168
                Top = 12
                Width = 47
                Height = 13
                Caption = 'Id Escolta'
              end
              object Label17: TLabel
                Left = 273
                Top = 56
                Width = 69
                Height = 13
                Caption = 'PCDP Numero'
              end
              object Label18: TLabel
                Left = 366
                Top = 56
                Width = 87
                Height = 13
                Caption = 'Data PCDP SCDP'
              end
              object Label19: TLabel
                Left = 8
                Top = 116
                Width = 84
                Height = 13
                Caption = 'R$ Passagem Ida'
              end
              object Label20: TLabel
                Left = 170
                Top = 116
                Width = 93
                Height = 13
                Caption = 'R$ Passagem Volta'
              end
              object Label21: TLabel
                Left = 340
                Top = 116
                Width = 79
                Height = 13
                Caption = 'Valor das Diarias'
              end
              object DBGrid2: TDBGrid
                Left = 8
                Top = 236
                Width = 557
                Height = 213
                DataSource = dsEscoltaFuncionarios
                TabOrder = 13
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'PCDP_NUMERO'
                    Title.Caption = 'Numero PCDP'
                    Width = 79
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PCDP_DATA_SCDP'
                    Title.Caption = 'Data SCDP'
                    Width = 88
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PCDP_VALOR_PAS_IDA'
                    Title.Caption = 'R$ Ida'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PCDP_VALOR_PAS_RETORNO'
                    Title.Caption = 'R$ Retorno'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PCDP_VALOR_DIARIAS'
                    Title.Caption = 'R$ Diarias'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PCDP_SERVIDOR_CHEFE_MISSAO'
                    Title.Caption = 'Chefe da Missao'
                    Width = 163
                    Visible = True
                  end>
              end
              object BtnIncluir: TButton
                Left = 168
                Top = 172
                Width = 85
                Height = 49
                Caption = 'Incluir'
                TabOrder = 12
                OnClick = BtnIncluirClick
              end
              object edtIdEscoltaFuncionario: TEdit
                Left = 8
                Top = 28
                Width = 113
                Height = 21
                TabOrder = 0
              end
              object edtIdEscoltaAgente: TEdit
                Left = 168
                Top = 28
                Width = 100
                Height = 21
                TabOrder = 1
              end
              object edtPcdpNumero: TEdit
                Left = 273
                Top = 72
                Width = 81
                Height = 21
                TabOrder = 4
              end
              object EDTPCDPValorPasIda: TEdit
                Left = 8
                Top = 132
                Width = 120
                Height = 21
                TabOrder = 6
              end
              object EdtPCDPValorPasRetorno: TEdit
                Left = 170
                Top = 132
                Width = 120
                Height = 21
                TabOrder = 7
              end
              object EdtPCDPValorDiarias: TEdit
                Left = 340
                Top = 132
                Width = 120
                Height = 21
                TabOrder = 8
              end
              object RadioGroup1: TRadioGroup
                Left = 8
                Top = 176
                Width = 121
                Height = 41
                Caption = 'Chefe da Miss'#227'o'
                TabOrder = 9
              end
              object rdbSim: TRadioButton
                Left = 21
                Top = 192
                Width = 49
                Height = 17
                Caption = 'Sim'
                TabOrder = 10
              end
              object rdbNao: TRadioButton
                Left = 72
                Top = 192
                Width = 61
                Height = 17
                Caption = 'N'#227'o'
                TabOrder = 11
              end
              object CmdIdFuncionario: TDBLookupComboBox
                Left = 8
                Top = 72
                Width = 214
                Height = 21
                KeyField = 'ID_FUNCIONARIO'
                ListField = 'NOME_FUNCIONARIO'
                ListSource = DM.DsFuncionarioLista
                TabOrder = 2
              end
              object edtPcdpDataScdp: TMaskEdit
                Left = 366
                Top = 72
                Width = 91
                Height = 21
                EditMask = '!99/99/0000;1;_'
                MaxLength = 10
                TabOrder = 5
                Text = '  /  /    '
              end
              object Button3: TButton
                Left = 228
                Top = 72
                Width = 25
                Height = 19
                Caption = '...'
                TabOrder = 3
                OnClick = Button3Click
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        ExplicitWidth = 817
        ExplicitHeight = 504
        inherited PanelLocalizaConsulta: TPanel
          Width = 817
        end
        inherited PanelConsulta: TPanel
          Width = 817
          Height = 470
          inherited DBGridConsulta: TDBGrid
            Width = 815
            Height = 468
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_ESCOLTA'
                Title.Caption = 'Id '
                Width = 39
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ESCOLTA_OMP'
                Title.Caption = 'OMP Escolta'
                Width = 136
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ESCOLTA_TIPO'
                Title.Caption = 'Tipo Escolta'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ESCOLTA_ORIGEM'
                Title.Caption = 'Origem'
                Width = 132
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ESCOLTA_DESTINO'
                Title.Caption = 'Destino'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ESCOLTA_DATA_IDA'
                Title.Caption = 'Dt Ida'
                Width = 82
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ESCOLTA_DATA_RETORNO'
                Title.Caption = 'Dt Retorno'
                Width = 81
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ESCOLTA_OBSERVACAO'
                Title.Caption = 'Obs'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ESCOLTA_PENDENTE'
                Title.Caption = 'Pendente'
                Width = 221
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_DOC_OFICIO'
                Title.Caption = 'Id Dod_Oficio'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ESCOLTA_HORA_IDA'
                Title.Caption = 'Hora Ida'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ESCOLTA_HORA_RETORNO'
                Title.Caption = 'Hora Retorno'
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 940
    inherited LabelTitulo: TLabel
      Width = 173
      Caption = 'Cadastro de Escoltas'
      ExplicitWidth = 173
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 564
    Width = 940
  end
  inherited ImageListCadastro: TImageList
    Left = 632
    Top = 32
  end
  inherited SqlCadastro: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT * '
      'FROM ESCOLTA')
    Left = 576
    Top = 104
    object SqlCadastroID_ESCOLTA: TIntegerField
      FieldName = 'ID_ESCOLTA'
      Required = True
    end
    object SqlCadastroID_DOC_OFICIO: TIntegerField
      FieldName = 'ID_DOC_OFICIO'
      Required = True
    end
    object SqlCadastroESCOLTA_DATA_IDA: TSQLTimeStampField
      FieldName = 'ESCOLTA_DATA_IDA'
    end
    object SqlCadastroESCOLTA_HORA_IDA: TTimeField
      FieldName = 'ESCOLTA_HORA_IDA'
    end
    object SqlCadastroESCOLTA_DATA_RETORNO: TSQLTimeStampField
      FieldName = 'ESCOLTA_DATA_RETORNO'
    end
    object SqlCadastroESCOLTA_HORA_RETORNO: TTimeField
      FieldName = 'ESCOLTA_HORA_RETORNO'
    end
    object SqlCadastroESCOLTA_OMP: TStringField
      FieldName = 'ESCOLTA_OMP'
      Size = 30
    end
    object SqlCadastroESCOLTA_TIPO: TStringField
      FieldName = 'ESCOLTA_TIPO'
      Size = 30
    end
    object SqlCadastroESCOLTA_ORIGEM: TStringField
      FieldName = 'ESCOLTA_ORIGEM'
      Size = 30
    end
    object SqlCadastroESCOLTA_DESTINO: TStringField
      FieldName = 'ESCOLTA_DESTINO'
      Size = 30
    end
    object SqlCadastroESCOLTA_OBSERVACAO: TStringField
      FieldName = 'ESCOLTA_OBSERVACAO'
      Size = 100
    end
    object SqlCadastroESCOLTA_PENDENTE: TStringField
      FieldName = 'ESCOLTA_PENDENTE'
      Size = 100
    end
  end
  inherited DspCadastro: TDataSetProvider
    Left = 604
    Top = 104
  end
  inherited CdsCadastro: TClientDataSet
    Left = 632
    Top = 104
    object CdsCadastroID_ESCOLTA: TIntegerField
      FieldName = 'ID_ESCOLTA'
      Required = True
    end
    object CdsCadastroID_DOC_OFICIO: TIntegerField
      FieldName = 'ID_DOC_OFICIO'
      Required = True
    end
    object CdsCadastroESCOLTA_DATA_IDA: TSQLTimeStampField
      FieldName = 'ESCOLTA_DATA_IDA'
      EditMask = '!99/99/00;1;_'
    end
    object CdsCadastroESCOLTA_HORA_IDA: TTimeField
      FieldName = 'ESCOLTA_HORA_IDA'
      EditMask = '!90:00;1;_'
    end
    object CdsCadastroESCOLTA_DATA_RETORNO: TSQLTimeStampField
      FieldName = 'ESCOLTA_DATA_RETORNO'
      EditMask = '!99/99/00;1;_'
    end
    object CdsCadastroESCOLTA_HORA_RETORNO: TTimeField
      FieldName = 'ESCOLTA_HORA_RETORNO'
      EditMask = '!90:00;1;_'
    end
    object CdsCadastroESCOLTA_OMP: TStringField
      FieldName = 'ESCOLTA_OMP'
      Size = 30
    end
    object CdsCadastroESCOLTA_TIPO: TStringField
      FieldName = 'ESCOLTA_TIPO'
      Size = 30
    end
    object CdsCadastroESCOLTA_ORIGEM: TStringField
      FieldName = 'ESCOLTA_ORIGEM'
      Size = 30
    end
    object CdsCadastroESCOLTA_DESTINO: TStringField
      FieldName = 'ESCOLTA_DESTINO'
      Size = 30
    end
    object CdsCadastroESCOLTA_OBSERVACAO: TStringField
      FieldName = 'ESCOLTA_OBSERVACAO'
      Size = 100
    end
    object CdsCadastroESCOLTA_PENDENTE: TStringField
      FieldName = 'ESCOLTA_PENDENTE'
      Size = 100
    end
  end
  inherited DsCadastro: TDataSource
    Left = 660
    Top = 104
  end
  object dspInterno: TDataSetProvider
    DataSet = SQLInterno
    Left = 523
    Top = 288
  end
  object cdsInterno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInterno'
    Left = 583
    Top = 296
  end
  object dsInterno: TDataSource
    DataSet = cdsInterno
    Left = 651
    Top = 288
  end
  object SQLItinerarioold: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_escolta'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'select * from itinerario_escolta '
      'where id_escolta= :id_escolta'
      'order by ativo')
    SQLConnection = DM.SQLConnect
    Left = 111
    Top = 524
    object SQLItinerariooldID_ITINERARIO_ESCOLTA: TIntegerField
      FieldName = 'ID_ITINERARIO_ESCOLTA'
      Required = True
    end
    object SQLItinerariooldID_ESCOLTA: TIntegerField
      FieldName = 'ID_ESCOLTA'
    end
    object SQLItinerariooldID_MEIO_TRANSPORTE: TIntegerField
      FieldName = 'ID_MEIO_TRANSPORTE'
    end
    object SQLItinerariooldID_ITINERARIO_DESTINO: TIntegerField
      FieldName = 'ID_ITINERARIO_DESTINO'
    end
    object SQLItinerariooldID_ITINERARIO_ORIGEM: TIntegerField
      FieldName = 'ID_ITINERARIO_ORIGEM'
    end
    object SQLItinerariooldITINERARIO_NUMERO: TStringField
      FieldName = 'ITINERARIO_NUMERO'
      Size = 30
    end
    object SQLItinerariooldITINERARIO_DATA_INICIAL: TSQLTimeStampField
      FieldName = 'ITINERARIO_DATA_INICIAL'
    end
    object SQLItinerariooldITINERARIO_DATA_FINAL: TSQLTimeStampField
      FieldName = 'ITINERARIO_DATA_FINAL'
    end
    object SQLItinerariooldITINERARIO_HORA_INICIAL: TTimeField
      FieldName = 'ITINERARIO_HORA_INICIAL'
    end
    object SQLItinerariooldITINERARIO_HORA_FINAL: TTimeField
      FieldName = 'ITINERARIO_HORA_FINAL'
    end
    object SQLItinerariooldATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
  end
  object dspItinerario: TDataSetProvider
    DataSet = SQLItinerario
    Left = 139
    Top = 524
  end
  object cdsItinerario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItinerario'
    Left = 171
    Top = 524
    object cdsItinerarioID_ITINERARIO_ESCOLTA: TIntegerField
      FieldName = 'ID_ITINERARIO_ESCOLTA'
      Required = True
    end
    object cdsItinerarioID_ESCOLTA: TIntegerField
      FieldName = 'ID_ESCOLTA'
    end
    object cdsItinerarioID_MEIO_TRANSPORTE: TIntegerField
      FieldName = 'ID_MEIO_TRANSPORTE'
    end
    object cdsItinerarioID_ITINERARIO_DESTINO: TIntegerField
      FieldName = 'ID_ITINERARIO_DESTINO'
    end
    object cdsItinerarioID_ITINERARIO_ORIGEM: TIntegerField
      FieldName = 'ID_ITINERARIO_ORIGEM'
    end
    object cdsItinerarioITINERARIO_NUMERO: TStringField
      FieldName = 'ITINERARIO_NUMERO'
      Size = 30
    end
    object cdsItinerarioITINERARIO_DATA_INICIAL: TSQLTimeStampField
      FieldName = 'ITINERARIO_DATA_INICIAL'
    end
    object cdsItinerarioITINERARIO_DATA_FINAL: TSQLTimeStampField
      FieldName = 'ITINERARIO_DATA_FINAL'
    end
    object cdsItinerarioITINERARIO_HORA_INICIAL: TTimeField
      FieldName = 'ITINERARIO_HORA_INICIAL'
    end
    object cdsItinerarioITINERARIO_HORA_FINAL: TTimeField
      FieldName = 'ITINERARIO_HORA_FINAL'
    end
    object cdsItinerarioATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
  end
  object dsItinerario: TDataSource
    DataSet = cdsItinerario
    Left = 207
    Top = 524
  end
  object SQLEscoltaFuncionariosold: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_escolta'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'select * from escolta_funcionario'
      'where id_escolta = :id_escolta')
    SQLConnection = DM.SQLConnect
    Left = 463
    Top = 396
    object SQLEscoltaFuncionariosoldID_ESCOLTA_FUNCIONARIO: TIntegerField
      FieldName = 'ID_ESCOLTA_FUNCIONARIO'
      Required = True
    end
    object SQLEscoltaFuncionariosoldID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      Required = True
    end
    object SQLEscoltaFuncionariosoldID_ESCOLTA: TIntegerField
      FieldName = 'ID_ESCOLTA'
      Required = True
    end
    object SQLEscoltaFuncionariosoldPCDP_NUMERO: TIntegerField
      FieldName = 'PCDP_NUMERO'
    end
    object SQLEscoltaFuncionariosoldPCDP_DATA_SCDP: TSQLTimeStampField
      FieldName = 'PCDP_DATA_SCDP'
    end
    object SQLEscoltaFuncionariosoldPCDP_VALOR_PAS_IDA: TFloatField
      FieldName = 'PCDP_VALOR_PAS_IDA'
    end
    object SQLEscoltaFuncionariosoldPCDP_VALOR_PAS_RETORNO: TFloatField
      FieldName = 'PCDP_VALOR_PAS_RETORNO'
    end
    object SQLEscoltaFuncionariosoldPCDP_VALOR_DIARIAS: TFloatField
      FieldName = 'PCDP_VALOR_DIARIAS'
    end
    object SQLEscoltaFuncionariosoldPCDP_SERVIDOR_CHEFE_MISSAO: TStringField
      FieldName = 'PCDP_SERVIDOR_CHEFE_MISSAO'
      Size = 1
    end
  end
  object dspEscoltaFuncionarios: TDataSetProvider
    DataSet = SQLEscoltaFuncionarios
    Left = 523
    Top = 396
  end
  object edtNumeroItinerario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEscoltaFuncionarios'
    Left = 575
    Top = 396
    object edtNumeroItinerarioID_ESCOLTA_FUNCIONARIO: TIntegerField
      FieldName = 'ID_ESCOLTA_FUNCIONARIO'
      Required = True
    end
    object edtNumeroItinerarioID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      Required = True
    end
    object edtNumeroItinerarioID_ESCOLTA: TIntegerField
      FieldName = 'ID_ESCOLTA'
      Required = True
    end
    object edtNumeroItinerarioPCDP_NUMERO: TIntegerField
      FieldName = 'PCDP_NUMERO'
    end
    object edtNumeroItinerarioPCDP_DATA_SCDP: TSQLTimeStampField
      FieldName = 'PCDP_DATA_SCDP'
    end
    object edtNumeroItinerarioPCDP_VALOR_PAS_IDA: TFloatField
      FieldName = 'PCDP_VALOR_PAS_IDA'
    end
    object edtNumeroItinerarioPCDP_VALOR_PAS_RETORNO: TFloatField
      FieldName = 'PCDP_VALOR_PAS_RETORNO'
    end
    object edtNumeroItinerarioPCDP_VALOR_DIARIAS: TFloatField
      FieldName = 'PCDP_VALOR_DIARIAS'
    end
    object edtNumeroItinerarioPCDP_SERVIDOR_CHEFE_MISSAO: TStringField
      FieldName = 'PCDP_SERVIDOR_CHEFE_MISSAO'
      Size = 1
    end
  end
  object dsEscoltaFuncionarios: TDataSource
    DataSet = edtNumeroItinerario
    Left = 643
    Top = 396
  end
  object dspEscoltaInterno: TDataSetProvider
    DataSet = SQLEscoltaInterno
    Left = 527
    Top = 340
  end
  object cdsEscoltaInterno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEscoltaInterno'
    Left = 579
    Top = 348
  end
  object dsEscoltaInterno: TDataSource
    DataSet = cdsEscoltaInterno
    Left = 655
    Top = 340
  end
  object SQLInterno: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from'
      'interno_inclusao i, solicitacao_vaga s, doc_oficio  o,'
      'escolta e, interno_inclusao d, interno_vaga v'
      'where  i.id_interno_inclusao = v.id_interno_inclusao and '
      'v.id_solicitacao_vaga = s.id_solicitacao_vaga and'
      's.id_solicitacao_vaga = o.id_solicitacao_vaga and '
      'o.id_doc_oficio = e.id_doc_oficio and '
      'o.id_doc_oficio = :doc_oficio')
    Left = 451
    Top = 288
    ParamData = <
      item
        Name = 'DOC_OFICIO'
        ParamType = ptInput
      end>
  end
  object SQLEscoltaInterno: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from escolta_interno_inclusao'
      'where id_escolta = :id_escolta')
    Left = 467
    Top = 340
    ParamData = <
      item
        Name = 'ID_ESCOLTA'
        ParamType = ptInput
      end>
  end
  object SQLEscoltaFuncionarios: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from escolta_funcionario'
      'where id_escolta = :id_escolta'
      '')
    Left = 407
    Top = 405
    ParamData = <
      item
        Name = 'ID_ESCOLTA'
        ParamType = ptInput
      end>
  end
  object SQLItinerario: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from itinerario_escolta '
      'where id_escolta= :id_escolta'
      'order by ativo'
      '')
    Left = 80
    Top = 528
    ParamData = <
      item
        Name = 'ID_ESCOLTA'
        ParamType = ptInput
      end>
  end
end
