inherited FrmCadastroEscolaridade: TFrmCadastroEscolaridade
  Left = 331
  Top = 137
  Caption = 'Cadastro Escolaridade'
  ExplicitWidth = 956
  ExplicitHeight = 622
  TextHeight = 13
  inherited PanelBotoes: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    inherited PageControlModeloCadastro: TPageControl
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          object Label2: TLabel
            Left = 8
            Top = 8
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEDITCODIGO
          end
          object Label3: TLabel
            Left = 64
            Top = 8
            Width = 83
            Height = 13
            Caption = 'ESCOLARIDADE'
            FocusControl = dbedtESCOLARIDADE
          end
          object DBEDITCODIGO: TDBEdit
            Left = 8
            Top = 24
            Width = 49
            Height = 21
            DataField = 'ID_ESCOLARIDADE'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object dbedtESCOLARIDADE: TDBEdit
            Left = 64
            Top = 24
            Width = 598
            Height = 21
            DataField = 'ESCOLARIDADE'
            DataSource = DsCadastro
            TabOrder = 1
          end
        end
      end
    end
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM escolaridade')
  end
  inherited CdsCadastro: TClientDataSet
    object intgrfldCdsCadastroID_ESCOLARIDADE: TIntegerField
      FieldName = 'ID_ESCOLARIDADE'
      Required = True
    end
    object strngfldCdsCadastroESCOLARIDADE: TStringField
      FieldName = 'ESCOLARIDADE'
      Size = 50
    end
  end
end
