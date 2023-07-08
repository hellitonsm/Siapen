inherited FrmCadastroArmas: TFrmCadastroArmas
  Left = 240
  Top = 72
  Width = 802
  Height = 576
  Caption = 'Cadastro de Armamento'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 487
    inherited ToolBarModeloCadastro: TToolBar
      Height = 469
    end
    inherited DBNavigator1: TDBNavigator
      Top = 469
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 671
    Height = 487
    inherited PageControlModeloCadastro: TPageControl
      Width = 671
      Height = 487
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 663
          Height = 459
          object PageControlArmas: TPageControl
            Left = 1
            Top = 1
            Width = 661
            Height = 457
            ActivePage = TabSheet1
            Align = alClient
            TabOrder = 0
            TabWidth = 100
            object TabSheet1: TTabSheet
              Caption = 'Dados Gerais'
              object Label2: TLabel
                Left = 16
                Top = 9
                Width = 11
                Height = 13
                Caption = 'ID'
                FocusControl = DBEditCODIGO
              end
              object Label3: TLabel
                Left = 16
                Top = 56
                Width = 53
                Height = 13
                Caption = 'Nota Fiscal'
                FocusControl = DBEdit1
              end
              object Label4: TLabel
                Left = 490
                Top = 53
                Width = 39
                Height = 13
                Caption = 'N'#186' Arma'
                FocusControl = DBEdit2
              end
              object Label5: TLabel
                Left = 352
                Top = 54
                Width = 52
                Height = 13
                Caption = 'CNPJ/CPF'
                FocusControl = DBEdit3
              end
              object Label7: TLabel
                Left = 16
                Top = 98
                Width = 83
                Height = 13
                Caption = 'Registro Estadual'
                FocusControl = DBEdit5
              end
              object Label8: TLabel
                Left = 112
                Top = 98
                Width = 79
                Height = 13
                Caption = 'Org'#227'o Expedidor'
                FocusControl = DBEdit6
              end
              object Label9: TLabel
                Left = 198
                Top = 97
                Width = 14
                Height = 13
                Caption = 'UF'
                FocusControl = DBEdit7
              end
              object Label12: TLabel
                Left = 448
                Top = 95
                Width = 38
                Height = 13
                Caption = 'Esp'#233'cie'
              end
              object Label13: TLabel
                Left = 16
                Top = 145
                Width = 30
                Height = 13
                Caption = 'Marca'
              end
              object Label14: TLabel
                Left = 216
                Top = 146
                Width = 35
                Height = 13
                Caption = 'Modelo'
              end
              object Label15: TLabel
                Left = 405
                Top = 145
                Width = 32
                Height = 13
                Caption = 'Calibre'
                FocusControl = DBEdit13
              end
              object Label16: TLabel
                Left = 472
                Top = 146
                Width = 91
                Height = 13
                Caption = 'Pais de Fabrica'#231#227'o'
                FocusControl = DBEdit14
              end
              object Label17: TLabel
                Left = 16
                Top = 203
                Width = 57
                Height = 13
                Caption = 'Capacidade'
                FocusControl = DBEdit15
              end
              object Label18: TLabel
                Left = 150
                Top = 203
                Width = 60
                Height = 13
                Caption = 'N'#186' de Canos'
                FocusControl = DBEdit16
              end
              object Label19: TLabel
                Left = 269
                Top = 203
                Width = 129
                Height = 13
                Caption = 'Comprimento do Cano (mm)'
                FocusControl = DBEdit17
              end
              object Label20: TLabel
                Left = 448
                Top = 202
                Width = 42
                Height = 13
                Caption = 'N'#186' Raias'
                FocusControl = DBEdit18
              end
              object Label11: TLabel
                Left = 350
                Top = 96
                Width = 87
                Height = 13
                Caption = 'Cadastro SINARM'
                FocusControl = DBEdit9
              end
              object Bevel1: TBevel
                Left = 444
                Top = 109
                Width = 156
                Height = 26
                Style = bsRaised
              end
              object Bevel2: TBevel
                Left = 213
                Top = 157
                Width = 186
                Height = 26
                Style = bsRaised
              end
              object Bevel3: TBevel
                Left = 14
                Top = 157
                Width = 186
                Height = 26
                Style = bsRaised
              end
              object Label6: TLabel
                Left = 120
                Top = 56
                Width = 40
                Height = 13
                Caption = 'Data NF'
                FocusControl = DBEditdatanf
              end
              object Label10: TLabel
                Left = 256
                Top = 96
                Width = 76
                Height = 13
                Caption = 'Data Expedi'#231#227'o'
                FocusControl = DBEditdataexpedicao
              end
              object Label24: TLabel
                Left = 80
                Top = 9
                Width = 79
                Height = 13
                Caption = 'Data Fabrica'#231#227'o'
                FocusControl = DBEditdatafabricacao
              end
              object Label28: TLabel
                Left = 190
                Top = 9
                Width = 94
                Height = 13
                Caption = 'Numero do Registro'
                FocusControl = DBEdit8
              end
              object Label44: TLabel
                Left = 385
                Top = 9
                Width = 118
                Height = 13
                Caption = 'Posto/Local de Trabalho'
              end
              object DBEditCODIGO: TDBEdit
                Left = 16
                Top = 25
                Width = 57
                Height = 21
                DataField = 'IDPATRIMONIO'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 0
              end
              object DBEdit1: TDBEdit
                Left = 16
                Top = 72
                Width = 100
                Height = 21
                DataField = 'NOTA_FISCAL'
                DataSource = DsCadastro
                TabOrder = 4
              end
              object DBRadioGroup1: TDBRadioGroup
                Left = 216
                Top = 55
                Width = 129
                Height = 37
                Caption = 'Tipo de Pessoa'
                Columns = 2
                DataField = 'TIPO_PESSOA'
                DataSource = DsCadastro
                Items.Strings = (
                  'PF'
                  'PJ')
                TabOrder = 6
                Values.Strings = (
                  'F'
                  'J')
              end
              object DBEdit2: TDBEdit
                Left = 488
                Top = 69
                Width = 113
                Height = 21
                DataField = 'NUMERO_ARMA'
                DataSource = DsCadastro
                TabOrder = 8
              end
              object DBEdit3: TDBEdit
                Left = 352
                Top = 70
                Width = 129
                Height = 21
                DataField = 'CNPJ_NOTA_FISCAL'
                DataSource = DsCadastro
                TabOrder = 7
                OnExit = DBEdit3Exit
              end
              object DBEdit5: TDBEdit
                Left = 16
                Top = 114
                Width = 89
                Height = 21
                DataField = 'REGISTRO_ESTADUAL'
                DataSource = DsCadastro
                TabOrder = 9
              end
              object DBEdit6: TDBEdit
                Left = 112
                Top = 114
                Width = 81
                Height = 21
                DataField = 'REGISTRO_ORGAO_EXPEDIDOR'
                DataSource = DsCadastro
                TabOrder = 10
              end
              object DBEdit7: TDBEdit
                Left = 199
                Top = 112
                Width = 50
                Height = 21
                DataField = 'REGISTRO_UF'
                DataSource = DsCadastro
                TabOrder = 11
              end
              object DBEdit13: TDBEdit
                Left = 405
                Top = 161
                Width = 60
                Height = 21
                DataField = 'CALIBRE'
                DataSource = DsCadastro
                TabOrder = 17
              end
              object DBEdit14: TDBEdit
                Left = 472
                Top = 162
                Width = 129
                Height = 21
                DataField = 'PAIS_FABRICACAO'
                DataSource = DsCadastro
                TabOrder = 18
              end
              object DBEdit15: TDBEdit
                Left = 16
                Top = 219
                Width = 121
                Height = 21
                DataField = 'CAPACIDADE'
                DataSource = DsCadastro
                TabOrder = 19
              end
              object DBEdit16: TDBEdit
                Left = 150
                Top = 219
                Width = 107
                Height = 21
                DataField = 'NUMEROS_CANOS'
                DataSource = DsCadastro
                TabOrder = 20
              end
              object DBEdit17: TDBEdit
                Left = 269
                Top = 219
                Width = 164
                Height = 21
                DataField = 'COMPRIMENTO_CANO'
                DataSource = DsCadastro
                TabOrder = 21
              end
              object DBRadioGroup2: TDBRadioGroup
                Left = 17
                Top = 250
                Width = 112
                Height = 57
                Caption = 'Alma'
                DataField = 'ARMA_ALMA'
                DataSource = DsCadastro
                Items.Strings = (
                  'Raiada'
                  'Lisa')
                TabOrder = 23
                Values.Strings = (
                  'Raiada'
                  'Lisa')
              end
              object DBEdit18: TDBEdit
                Left = 448
                Top = 218
                Width = 153
                Height = 21
                DataField = 'NUMERO_RAIAS'
                DataSource = DsCadastro
                TabOrder = 22
              end
              object DBRadioGroup3: TDBRadioGroup
                Left = 144
                Top = 250
                Width = 145
                Height = 57
                Caption = 'Sentido da Raia'
                DataField = 'SENTIDO_RAIA'
                DataSource = DsCadastro
                Items.Strings = (
                  'Direita'
                  'Esquerda')
                TabOrder = 24
                Values.Strings = (
                  'Direita'
                  'Esquerda')
              end
              object DBRadioGroup4: TDBRadioGroup
                Left = 312
                Top = 250
                Width = 289
                Height = 57
                Caption = 'Fun'#231#227'o'
                Columns = 2
                DataField = 'FUNCAO_ARMA'
                DataSource = DsCadastro
                Items.Strings = (
                  '1-Repeti'#231#227'o'
                  '2-Semi-Autom'#225'tico'
                  '3-Autom'#225'tico'
                  '4-Outros')
                TabOrder = 25
                Values.Strings = (
                  '1-Repeti'#231#227'o'
                  '2-Semi-Autom'#225'tico'
                  '3-Autom'#225'tico'
                  '4-Outros')
              end
              object DBRadioGroup5: TDBRadioGroup
                Left = 16
                Top = 314
                Width = 585
                Height = 57
                Caption = 'Acabamento'
                Columns = 2
                DataField = 'ACABAMENTO'
                DataSource = DsCadastro
                Items.Strings = (
                  '1-Oxidado'
                  '2-A'#231'o In'#243'x')
                TabOrder = 26
                Values.Strings = (
                  '1-Oxidado'
                  '2-A'#231'o In'#243'x')
              end
              object frxComboBoxEspecie: TfrxComboBox
                Left = 448
                Top = 111
                Width = 145
                Height = 19
                ItemHeight = 13
                ListWidth = 0
                Sorted = True
                TabOrder = 14
                ItemIndex = -1
              end
              object DBEdit9: TDBEdit
                Left = 350
                Top = 112
                Width = 91
                Height = 21
                DataField = 'CADASTRO_SINARM'
                DataSource = DsCadastro
                TabOrder = 13
              end
              object frxComboBoxMarca: TfrxComboBox
                Left = 16
                Top = 160
                Width = 180
                Height = 19
                ItemHeight = 13
                ListWidth = 0
                Sorted = True
                TabOrder = 15
                ItemIndex = -1
              end
              object frxComboBoxModelo: TfrxComboBox
                Left = 216
                Top = 160
                Width = 180
                Height = 19
                ItemHeight = 13
                ListWidth = 0
                Sorted = True
                TabOrder = 16
                ItemIndex = -1
              end
              object DBEditdatanf: TDBEdit
                Left = 120
                Top = 72
                Width = 89
                Height = 21
                DataField = 'DATA_NOTA_FISCAL'
                DataSource = DsCadastro
                TabOrder = 5
              end
              object DBEditdataexpedicao: TDBEdit
                Left = 256
                Top = 112
                Width = 89
                Height = 21
                DataField = 'DATA_EXPEDICAO'
                DataSource = DsCadastro
                TabOrder = 12
              end
              object DBEditdatafabricacao: TDBEdit
                Left = 80
                Top = 25
                Width = 105
                Height = 21
                DataField = 'DATA_FABRICACAO'
                DataSource = DsCadastro
                TabOrder = 1
              end
              object DBEdit8: TDBEdit
                Left = 190
                Top = 25
                Width = 187
                Height = 21
                DataField = 'REGISTRO_SINARM'
                DataSource = DsCadastro
                TabOrder = 2
              end
              object DBLookupComboBoxPostoTrabalho: TDBLookupComboBox
                Left = 385
                Top = 25
                Width = 224
                Height = 21
                DataField = 'IDPOSTO_TRABALHO'
                DataSource = DsCadastro
                KeyField = 'IDPOSTO_TRABALHO'
                ListField = 'POSTO_TRABALHO'
                ListSource = DM.DsPostoTrabalho
                TabOrder = 3
              end
            end
            object TabSheet2: TTabSheet
              Caption = 'Outros'
              ImageIndex = 1
              object Label21: TLabel
                Left = 152
                Top = 136
                Width = 22
                Height = 13
                Caption = 'OBS'
                FocusControl = DBEdit19
              end
              object LabelOrigem: TLabel
                Left = 128
                Top = 56
                Width = 43
                Height = 13
                Caption = 'ORIGEM'
                FocusControl = DBEditORIGEM
              end
              object Label23: TLabel
                Left = 128
                Top = 96
                Width = 118
                Height = 13
                Caption = 'Data '#218'ltima Manuten'#231#227'o'
                FocusControl = DBEditdatamanutencao
              end
              object Label25: TLabel
                Left = 261
                Top = 96
                Width = 103
                Height = 13
                Caption = 'Estado Geral da Arma'
                FocusControl = DBEdit23
              end
              object Label26: TLabel
                Left = 16
                Top = 17
                Width = 37
                Height = 13
                Caption = 'Produto'
                FocusControl = DBEdit24
              end
              object Label27: TLabel
                Left = 16
                Top = 138
                Width = 64
                Height = 13
                Caption = 'N'#186' Patrim'#244'nio'
                FocusControl = DBEdit4
              end
              object DBRadioGroup6: TDBRadioGroup
                Left = 16
                Top = 58
                Width = 105
                Height = 73
                Caption = 'Situa'#231#227'o Geral'
                DataField = 'SITUACAO_GERAL'
                DataSource = DsCadastro
                Items.Strings = (
                  'Nova'
                  'Usada')
                TabOrder = 1
                Values.Strings = (
                  'Nova'
                  'Usada')
                OnChange = DBRadioGroup6Change
              end
              object DBEdit19: TDBEdit
                Left = 152
                Top = 152
                Width = 449
                Height = 21
                DataField = 'OBS_SITUACAO_GERAL'
                DataSource = DsCadastro
                TabOrder = 6
              end
              object DBEditORIGEM: TDBEdit
                Left = 128
                Top = 72
                Width = 473
                Height = 21
                DataField = 'ORIGEM'
                DataSource = DsCadastro
                TabOrder = 2
              end
              object DBEditdatamanutencao: TDBEdit
                Left = 128
                Top = 112
                Width = 121
                Height = 21
                DataField = 'DATA_ULTIMA_MANUTENCAO'
                DataSource = DsCadastro
                TabOrder = 3
              end
              object DBEdit23: TDBEdit
                Left = 261
                Top = 112
                Width = 340
                Height = 21
                DataField = 'ESTADO_GERAL'
                DataSource = DsCadastro
                TabOrder = 4
              end
              object DBEdit24: TDBEdit
                Left = 16
                Top = 33
                Width = 585
                Height = 21
                DataField = 'NOME'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 0
              end
              object DBEdit4: TDBEdit
                Left = 16
                Top = 154
                Width = 129
                Height = 21
                DataField = 'TOMBO'
                DataSource = DsCadastro
                TabOrder = 5
              end
              object PageControl1: TPageControl
                Left = 16
                Top = 184
                Width = 585
                Height = 209
                ActivePage = TabSheet3
                TabOrder = 7
                object TabSheet3: TTabSheet
                  Caption = 'Acess'#243'rios'
                  object Label22: TLabel
                    Left = 8
                    Top = 8
                    Width = 46
                    Height = 13
                    Caption = 'Acess'#243'rio'
                  end
                  object SpeedButton4: TSpeedButton
                    Left = 437
                    Top = 22
                    Width = 23
                    Height = 22
                    Hint = 'Cadastrar Artigo'
                    Caption = '...'
                    Flat = True
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton4Click
                  end
                  object Quantidade: TLabel
                    Left = 464
                    Top = 8
                    Width = 55
                    Height = 13
                    Caption = 'Quantidade'
                  end
                  object DBLookupComboBoxacessorio: TDBLookupComboBox
                    Left = 8
                    Top = 24
                    Width = 425
                    Height = 21
                    KeyField = 'ID_ACESSORIO'
                    ListField = 'DESCRICAO_ACESSORIO'
                    ListSource = DM.dsacessorios
                    TabOrder = 0
                  end
                  object BitBtn1: TBitBtn
                    Left = 216
                    Top = 53
                    Width = 75
                    Height = 25
                    Caption = 'Inserir'
                    TabOrder = 2
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
                  object Editqtde: TEdit
                    Left = 464
                    Top = 24
                    Width = 89
                    Height = 21
                    TabOrder = 1
                  end
                  object DBGrid1: TDBGrid
                    Left = 8
                    Top = 88
                    Width = 561
                    Height = 89
                    DataSource = dsitensacessorio
                    TabOrder = 3
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'Acess'#243'rio'
                        Width = 443
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'QTDE'
                        Visible = True
                      end>
                  end
                end
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 663
        end
        inherited PanelConsulta: TPanel
          Width = 663
          Height = 425
          inherited DBGridConsulta: TDBGrid
            Width = 661
            Height = 423
            Columns = <
              item
                Expanded = False
                FieldName = 'IDPATRIMONIO'
                Title.Caption = 'ID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME'
                Width = 400
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANTIDADE'
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 786
    inherited Image2: TImage
      Width = 786
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 519
    Width = 786
  end
  inherited SqlCadastro: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_UP'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM PATRIMONIO'
      'WHERE TIPO_BASE='#39'ARMAMENTO'#39
      'AND  ID_UP = :ID_UP')
  end
  inherited CdsCadastro: TClientDataSet
    BeforePost = CdsCadastroBeforePost
  end
  object DsLista: TDataSource
    DataSet = CdsLista
    OnDataChange = DsCadastroDataChange
    Left = 388
  end
  object CdsLista: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspLista'
    BeforePost = CdsCadastroBeforePost
    Left = 360
  end
  object DspLista: TDataSetProvider
    DataSet = SqlLista
    Left = 332
  end
  object SqlLista: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MARCAS '
      'FROM PATRIMONIO')
    SQLConnection = DM.SQLConnect
    Left = 304
  end
  object dsitensacessorio: TDataSource
    DataSet = cdsitensacessorio
    Left = 536
    Top = 8
  end
  object cdsitensacessorio: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_PATRIMONIO'
    MasterFields = 'IDPATRIMONIO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspitensacessorio'
    Left = 512
    Top = 8
    object cdsitensacessorioID_ITENS_PATRIMONIO: TIntegerField
      FieldName = 'ID_ITENS_PATRIMONIO'
      Required = True
    end
    object cdsitensacessorioID_PATRIMONIO: TIntegerField
      FieldName = 'ID_PATRIMONIO'
    end
    object cdsitensacessorioID_ACESSORIOS: TIntegerField
      FieldName = 'ID_ACESSORIOS'
    end
    object cdsitensacessorioQTDE: TIntegerField
      FieldName = 'QTDE'
    end
    object cdsitensacessorioAcessrio: TStringField
      FieldKind = fkLookup
      FieldName = 'Acess'#243'rio'
      LookupDataSet = DM.cdsacessorios
      LookupKeyFields = 'ID_ACESSORIO'
      LookupResultField = 'DESCRICAO_ACESSORIO'
      KeyFields = 'ID_ACESSORIOS'
      Size = 50
      Lookup = True
    end
  end
  object dspitensacessorio: TDataSetProvider
    DataSet = SQLitensacessorio
    Left = 488
    Top = 8
  end
  object SQLitensacessorio: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDPATRIMONIO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM ITENS_PATRIMONIO'
      'WHERE ID_PATRIMONIO = :IDPATRIMONIO')
    SQLConnection = DM.SQLConnect
    Left = 464
    Top = 8
  end
end
