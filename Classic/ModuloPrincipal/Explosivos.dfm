inherited FrmExplosivos: TFrmExplosivos
  Left = 323
  Top = 201
  Height = 458
  Caption = 'Cadastro de Explosivos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 369
    inherited ToolBarModeloCadastro: TToolBar
      Height = 351
    end
    inherited DBNavigator1: TDBNavigator
      Top = 351
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Height = 369
    inherited PageControlModeloCadastro: TPageControl
      Height = 369
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Height = 341
          object Label2: TLabel
            Left = 128
            Top = 93
            Width = 69
            Height = 13
            Caption = 'Peso (Gramas)'
            FocusControl = DBEdit1
          end
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
          object Label4: TLabel
            Left = 264
            Top = 93
            Width = 90
            Height = 13
            Caption = 'Composto Qu'#237'mico'
            FocusControl = DBEdit2
          end
          object Label5: TLabel
            Left = 16
            Top = 136
            Width = 79
            Height = 13
            Caption = 'Data Fabrica'#231#227'o'
            FocusControl = DBEditdatafabricacao
          end
          object Label6: TLabel
            Left = 143
            Top = 136
            Width = 82
            Height = 13
            Caption = 'Data de Validade'
            FocusControl = DBEditdatavalidade
          end
          object Label7: TLabel
            Left = 270
            Top = 136
            Width = 61
            Height = 13
            Caption = 'Estado Geral'
            FocusControl = DBEdit5
          end
          object Label13: TLabel
            Left = 16
            Top = 181
            Width = 30
            Height = 13
            Caption = 'Marca'
          end
          object Bevel2: TBevel
            Left = 13
            Top = 193
            Width = 186
            Height = 26
            Style = bsRaised
          end
          object LabelQuantidade: TLabel
            Left = 16
            Top = 232
            Width = 144
            Height = 13
            Caption = 'Quantidade atual  (Obrigat'#243'rio)'
            FocusControl = DBEditQuantidade
          end
          object Label8: TLabel
            Left = 129
            Top = 56
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
          object DBRadioGroup2: TDBRadioGroup
            Left = 16
            Top = 56
            Width = 105
            Height = 74
            Caption = 'Tipo'
            DataField = 'TIPO_EXPLOSIVO'
            DataSource = DsCadastro
            Items.Strings = (
              'Petardos'
              'Granadas')
            TabOrder = 3
            Values.Strings = (
              'Petardos'
              'Granadas')
          end
          object DBEdit1: TDBEdit
            Left = 128
            Top = 109
            Width = 134
            Height = 21
            DataField = 'PESO'
            DataSource = DsCadastro
            TabOrder = 5
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
          object DBEdit2: TDBEdit
            Left = 264
            Top = 109
            Width = 337
            Height = 21
            DataField = 'COMPOSTO_QUIMICO'
            DataSource = DsCadastro
            TabOrder = 6
          end
          object DBEditdatafabricacao: TDBEdit
            Left = 16
            Top = 152
            Width = 120
            Height = 21
            DataField = 'DATA_FABRICACAO'
            DataSource = DsCadastro
            TabOrder = 7
          end
          object DBEditdatavalidade: TDBEdit
            Left = 143
            Top = 152
            Width = 120
            Height = 21
            DataField = 'DATA_VALIDADE'
            DataSource = DsCadastro
            TabOrder = 8
          end
          object DBEdit5: TDBEdit
            Left = 270
            Top = 152
            Width = 330
            Height = 21
            DataField = 'ESTADO_GERAL'
            DataSource = DsCadastro
            TabOrder = 9
          end
          object frxComboBoxMarca: TfrxComboBox
            Left = 16
            Top = 196
            Width = 180
            Height = 19
            ItemHeight = 13
            ListWidth = 0
            Sorted = True
            TabOrder = 10
            ItemIndex = -1
          end
          object DBEditQuantidade: TDBEdit
            Left = 16
            Top = 248
            Width = 134
            Height = 21
            DataField = 'QUANTIDADE'
            DataSource = DsCadastro
            TabOrder = 12
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 216
            Top = 175
            Width = 385
            Height = 46
            Caption = 'Emprego'
            Columns = 3
            DataField = 'EXPLOSIVO_TIPO_EMPREGO'
            DataSource = DsCadastro
            Items.Strings = (
              'Indoor'
              'Outdoor'
              'Destrui'#231#227'o'
              'Defensiva'
              'Ofensiva')
            TabOrder = 11
            Values.Strings = (
              'Indoor'
              'Outdoor'
              'Destrui'#231#227'o'
              'Defensiva'
              'Ofensiva')
          end
          object DBEdit3: TDBEdit
            Left = 129
            Top = 72
            Width = 472
            Height = 21
            CharCase = ecUpperCase
            DataField = 'EXPLOSIVO_COD_REFERENCIA'
            DataSource = DsCadastro
            TabOrder = 4
          end
          object DBLookupComboBoxPostoTrabalho: TDBLookupComboBox
            Left = 385
            Top = 29
            Width = 224
            Height = 21
            DataField = 'IDPOSTO_TRABALHO'
            DataSource = DsCadastro
            KeyField = 'IDPOSTO_TRABALHO'
            ListField = 'POSTO_TRABALHO'
            ListSource = DM.DsPostoTrabalho
            TabOrder = 2
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelConsulta: TPanel
          Height = 307
          inherited DBGridConsulta: TDBGrid
            Height = 305
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
    Top = 401
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
      'WHERE TIPO_BASE='#39'EXPLOSIVOS'#39
      'AND  ID_UP = :ID_UP')
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
