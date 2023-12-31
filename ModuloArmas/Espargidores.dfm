inherited FrmEspargidores: TFrmEspargidores
  Left = 270
  Top = 128
  Height = 497
  Caption = 'Cadastro de Espargidores'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 408
    inherited ToolBarModeloCadastro: TToolBar
      Height = 390
    end
    inherited DBNavigator1: TDBNavigator
      Top = 390
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Height = 408
    inherited PageControlModeloCadastro: TPageControl
      Height = 408
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Height = 380
          object Label3: TLabel
            Left = 16
            Top = 13
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditCODIGO
          end
          object Label26: TLabel
            Left = 80
            Top = 13
            Width = 37
            Height = 13
            Caption = 'Produto'
            Enabled = False
            FocusControl = DBEdit24
          end
          object Label5: TLabel
            Left = 16
            Top = 176
            Width = 79
            Height = 13
            Caption = 'Data Fabrica'#231#227'o'
            FocusControl = DBEditdatafabricacao
          end
          object Label6: TLabel
            Left = 143
            Top = 176
            Width = 67
            Height = 13
            Caption = 'Data Validade'
            FocusControl = DBEditdatavalidade
          end
          object Label7: TLabel
            Left = 270
            Top = 176
            Width = 61
            Height = 13
            Caption = 'Estado Geral'
            FocusControl = DBEdit5
          end
          object Label13: TLabel
            Left = 16
            Top = 217
            Width = 30
            Height = 13
            Caption = 'Marca'
          end
          object Bevel2: TBevel
            Left = 13
            Top = 233
            Width = 250
            Height = 26
            Style = bsRaised
          end
          object LabelQuantidade: TLabel
            Left = 16
            Top = 312
            Width = 144
            Height = 13
            Caption = 'Quantidade atual  (Obrigat'#243'rio)'
            FocusControl = DBEditQuantidade
          end
          object Label2: TLabel
            Left = 272
            Top = 221
            Width = 67
            Height = 13
            Caption = 'Peso (Liquido)'
            FocusControl = DBEdit1
          end
          object Label4: TLabel
            Left = 352
            Top = 221
            Width = 90
            Height = 13
            Caption = 'Composto Qu'#237'mico'
            FocusControl = DBEdit2
          end
          object Label8: TLabel
            Left = 15
            Top = 264
            Width = 103
            Height = 13
            Caption = 'C'#243'digo de Refer'#234'ncia'
            FocusControl = DBEdit3
          end
          object Label44: TLabel
            Left = 385
            Top = 13
            Width = 118
            Height = 13
            Caption = 'Posto/Local de Trabalho'
          end
          object Label29: TLabel
            Left = 16
            Top = 52
            Width = 108
            Height = 13
            Caption = 'Estabelecimento Penal'
          end
          object DBRadioGroup2: TDBRadioGroup
            Left = 16
            Top = 95
            Width = 585
            Height = 77
            Caption = 'Tipo'
            Columns = 2
            DataField = 'TIPO_ESPARGIDORES'
            DataSource = DsCadastro
            Items.Strings = (
              'Espuma'
              'G'#225's')
            TabOrder = 4
            Values.Strings = (
              'Espuma'
              'G'#225's')
          end
          object DBEditCODIGO: TDBEdit
            Left = 16
            Top = 29
            Width = 57
            Height = 21
            DataField = 'IDPATRIMONIO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit24: TDBEdit
            Left = 80
            Top = 29
            Width = 297
            Height = 21
            DataField = 'NOME'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 1
          end
          object DBEditdatafabricacao: TDBEdit
            Left = 16
            Top = 192
            Width = 120
            Height = 21
            DataField = 'DATA_FABRICACAO'
            DataSource = DsCadastro
            TabOrder = 5
          end
          object DBEditdatavalidade: TDBEdit
            Left = 143
            Top = 192
            Width = 120
            Height = 21
            DataField = 'DATA_VALIDADE'
            DataSource = DsCadastro
            TabOrder = 6
          end
          object DBEdit5: TDBEdit
            Left = 270
            Top = 192
            Width = 330
            Height = 21
            DataField = 'ESTADO_GERAL'
            DataSource = DsCadastro
            TabOrder = 7
          end
          object frxComboBoxMarca: TfrxComboBox
            Left = 16
            Top = 236
            Width = 244
            Height = 19
            ItemHeight = 13
            ListWidth = 0
            Sorted = True
            TabOrder = 8
            ItemIndex = -1
          end
          object DBEditQuantidade: TDBEdit
            Left = 16
            Top = 328
            Width = 134
            Height = 21
            DataField = 'QUANTIDADE'
            DataSource = DsCadastro
            TabOrder = 12
          end
          object DBEdit1: TDBEdit
            Left = 272
            Top = 237
            Width = 73
            Height = 21
            DataField = 'PESO'
            DataSource = DsCadastro
            TabOrder = 9
          end
          object DBEdit2: TDBEdit
            Left = 352
            Top = 237
            Width = 245
            Height = 21
            DataField = 'COMPOSTO_QUIMICO'
            DataSource = DsCadastro
            TabOrder = 10
          end
          object DBEdit3: TDBEdit
            Left = 15
            Top = 280
            Width = 250
            Height = 21
            CharCase = ecUpperCase
            DataField = 'EXPLOSIVO_COD_REFERENCIA'
            DataSource = DsCadastro
            TabOrder = 11
          end
          object DBLookupComboBoxPostoTrabalho: TDBLookupComboBox
            Left = 385
            Top = 29
            Width = 214
            Height = 21
            DataField = 'IDPOSTO_TRABALHO'
            DataSource = DsCadastro
            KeyField = 'IDPOSTO_TRABALHO'
            ListField = 'POSTO_TRABALHO'
            ListSource = DM.DsPostoTrabalho
            TabOrder = 2
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 16
            Top = 68
            Width = 585
            Height = 21
            DataField = 'ID_UP'
            DataSource = DsCadastro
            KeyField = 'ID_UP'
            ListField = 'NOME_UP'
            ListSource = DM.DsUP
            TabOrder = 3
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelConsulta: TPanel
          Height = 346
          inherited DBGridConsulta: TDBGrid
            Height = 344
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
  inherited StatusBar1: TStatusBar
    Top = 440
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM PATRIMONIO'
      'WHERE TIPO_BASE='#39'ESPARGIDORES'#39
      '')
  end
  inherited CdsCadastro: TClientDataSet
    BeforePost = CdsCadastroBeforePost
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
end
