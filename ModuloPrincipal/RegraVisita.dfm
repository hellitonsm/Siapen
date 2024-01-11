inherited FrmRegraVisita: TFrmRegraVisita
  Left = 205
  Top = 129
  Caption = 'Regras de Visita'#231#227'o'
  ExplicitWidth = 948
  ExplicitHeight = 620
  TextHeight = 13
  inherited PanelBotoes: TPanel
    ExplicitHeight = 530
    inherited ToolBarModeloCadastro: TToolBar
      Height = 513
      ExplicitHeight = 512
    end
    inherited DBNavigator1: TDBNavigator
      Top = 513
      Hints.Strings = ()
      ExplicitTop = 512
    end
  end
  inherited PanelModeloCadastro: TPanel
    ExplicitWidth = 817
    ExplicitHeight = 530
    inherited Image2: TImage
      Width = 911
      ExplicitWidth = 911
    end
    inherited PageControlModeloCadastro: TPageControl
      Width = 821
      Height = 531
      ActivePage = TabSheetCadastro
      ExplicitWidth = 817
      ExplicitHeight = 530
      inherited TabSheetCadastro: TTabSheet
        ExplicitWidth = 813
        ExplicitHeight = 503
        inherited PanelCadastro: TPanel
          Width = 813
          Height = 503
          ExplicitWidth = 809
          ExplicitHeight = 502
          object Label2: TLabel
            Left = 32
            Top = 24
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditCODIGO
          end
          object Label3: TLabel
            Left = 32
            Top = 80
            Width = 48
            Height = 13
            Caption = 'Descri'#231#227'o'
            FocusControl = DBEdit2
          end
          object Label4: TLabel
            Left = 32
            Top = 128
            Width = 73
            Height = 13
            Caption = 'Regra em SQL:'
          end
          object Label11: TLabel
            Left = 33
            Top = 244
            Width = 66
            Height = 13
            Caption = 'Lota'#231#227'o Atual'
          end
          object Label5: TLabel
            Left = 336
            Top = 128
            Width = 226
            Height = 13
            Caption = '* Utilize a letra: i, como alias da tabela "interno".'
          end
          object DBEditCODIGO: TDBEdit
            Left = 32
            Top = 40
            Width = 65
            Height = 21
            DataField = 'ID_REGRA_VISITA'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 32
            Top = 96
            Width = 600
            Height = 21
            DataField = 'DESCRICAO'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object DBMemo1: TDBMemo
            Left = 32
            Top = 144
            Width = 601
            Height = 89
            DataField = 'REGRA_SQL'
            DataSource = DsCadastro
            TabOrder = 2
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 32
            Top = 260
            Width = 601
            Height = 21
            DataField = 'ID_UP'
            DataSource = DsCadastro
            KeyField = 'ID_UP'
            ListField = 'NOME_UP'
            ListSource = DM.DsUP
            TabOrder = 3
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 33
            Top = 296
            Width = 600
            Height = 105
            Caption = 'Dia da semana no filtro'
            Columns = 7
            DataField = 'DIA_SEMANA'
            DataSource = DsCadastro
            Items.Strings = (
              'Domingo'
              'Segunda'
              'Ter'#231'a'
              'Quarta'
              'Quinta'
              'Sexta'
              'S'#225'bado')
            TabOrder = 4
            Values.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4'
              '5'
              '6')
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        ExplicitWidth = 813
        ExplicitHeight = 503
        inherited PanelLocalizaConsulta: TPanel
          Width = 788
          ExplicitWidth = 788
        end
        inherited PanelConsulta: TPanel
          Width = 788
          Height = 406
          ExplicitWidth = 788
          ExplicitHeight = 406
          inherited DBGridConsulta: TDBGrid
            Width = 786
            Height = 404
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    ExplicitWidth = 932
  end
  inherited StatusBar1: TStatusBar
    ExplicitTop = 562
    ExplicitWidth = 932
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM REGRA_VISITA'
      'WHERE ID_UP=:ID_UP')
    Left = 584
    Top = 96
    ParamData = <
      item
        Name = 'ID_UP'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
  end
  inherited DspCadastro: TDataSetProvider
    Left = 612
    Top = 96
  end
  inherited CdsCadastro: TClientDataSet
    Left = 640
    Top = 96
    object CdsCadastroID_REGRA_VISITA: TIntegerField
      FieldName = 'ID_REGRA_VISITA'
      Required = True
    end
    object CdsCadastroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object CdsCadastroREGRA_SQL: TStringField
      FieldName = 'REGRA_SQL'
      Size = 8192
    end
    object CdsCadastroID_UP: TIntegerField
      FieldName = 'ID_UP'
    end
    object CdsCadastroDIA_SEMANA: TIntegerField
      FieldName = 'DIA_SEMANA'
    end
  end
  inherited DsCadastro: TDataSource
    Left = 668
    Top = 96
  end
end
