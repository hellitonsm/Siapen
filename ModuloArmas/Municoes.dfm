inherited FrmMunicoes: TFrmMunicoes
  Top = 237
  Caption = 'Cadastro de Muni'#231#245'es'
  ClientHeight = 582
  ClientWidth = 936
  ExplicitWidth = 952
  ExplicitHeight = 621
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 531
    ExplicitHeight = 531
    inherited ToolBarModeloCadastro: TToolBar
      Height = 513
      ExplicitHeight = 513
    end
    inherited DBNavigator1: TDBNavigator
      Top = 513
      Hints.Strings = ()
      ExplicitTop = 513
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 821
    Height = 531
    ExplicitWidth = 821
    ExplicitHeight = 531
    inherited PageControlModeloCadastro: TPageControl
      Width = 821
      Height = 531
      ExplicitWidth = 821
      ExplicitHeight = 531
      inherited TabSheetCadastro: TTabSheet
        ExplicitWidth = 813
        ExplicitHeight = 503
        inherited PanelCadastro: TPanel
          Width = 813
          Height = 503
          ExplicitWidth = 813
          ExplicitHeight = 503
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
            Top = 229
            Width = 186
            Height = 26
            Style = bsRaised
          end
          object Label4: TLabel
            Left = 208
            Top = 216
            Width = 31
            Height = 13
            Caption = 'Projetil'
          end
          object Bevel3: TBevel
            Left = 208
            Top = 229
            Width = 186
            Height = 26
            Style = bsRaised
          end
          object LabelQuantidade: TLabel
            Left = 16
            Top = 264
            Width = 144
            Height = 13
            Caption = 'Quantidade atual  (Obrigat'#243'rio)'
            FocusControl = DBEditQuantidade
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
            Top = 232
            Width = 180
            Height = 19
            ListWidth = 0
            Sorted = True
            TabOrder = 8
            ItemIndex = -1
          end
          object DBRadioGroup2: TDBRadioGroup
            Left = 16
            Top = 95
            Width = 585
            Height = 77
            Caption = 'Calibre'
            Columns = 3
            DataField = 'CALIBRE'
            DataSource = DsCadastro
            Items.Strings = (
              '.38'
              '.380'
              '9mm'
              '.40'
              '12'
              '5,56mm'
              '7,62mm'
              '37mm'
              '40mm')
            TabOrder = 4
            Values.Strings = (
              'Raiada'
              'Lisa')
          end
          object frxComboBoxProjetil: TfrxComboBox
            Left = 210
            Top = 232
            Width = 180
            Height = 19
            ListWidth = 0
            Sorted = True
            TabOrder = 9
            ItemIndex = -1
          end
          object DBEditQuantidade: TDBEdit
            Left = 16
            Top = 280
            Width = 134
            Height = 21
            DataField = 'QUANTIDADE'
            DataSource = DsCadastro
            TabOrder = 11
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 408
            Top = 215
            Width = 193
            Height = 41
            Caption = 'Emprego'
            Columns = 2
            DataField = 'MUNICAO_EMPREGO'
            DataSource = DsCadastro
            Items.Strings = (
              'Letal'
              'N'#227'o Letal')
            TabOrder = 10
            Values.Strings = (
              'Letal'
              'N'#227'o Letal')
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
            Enabled = False
            KeyField = 'ID_UP'
            ListField = 'NOME_UP'
            ListSource = DM.DsUP
            TabOrder = 3
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        ExplicitWidth = 813
        ExplicitHeight = 503
        inherited PanelLocalizaConsulta: TPanel
          Width = 813
          ExplicitWidth = 813
        end
        inherited PanelConsulta: TPanel
          Width = 813
          Height = 469
          ExplicitWidth = 813
          ExplicitHeight = 469
          inherited DBGridConsulta: TDBGrid
            Width = 811
            Height = 467
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
    Width = 936
    ExplicitWidth = 936
  end
  inherited StatusBar1: TStatusBar
    Top = 563
    Width = 936
    ExplicitTop = 563
    ExplicitWidth = 936
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM PATRIMONIO'
      'WHERE TIPO_BASE='#39'MUNI'#199#213'ES'#39
      'AND  ID_UP = :ID_UP')
    ParamData = <
      item
        Name = 'ID_UP'
      end>
  end
  inherited CdsCadastro: TClientDataSet
    BeforePost = CdsCadastroBeforePost
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
  object SqlLista: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT MARCAS '
      'FROM PATRIMONIO')
    Left = 304
  end
end
