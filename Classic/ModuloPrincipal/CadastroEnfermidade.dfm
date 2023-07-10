inherited FrmCadastroEnfermidade: TFrmCadastroEnfermidade
  Caption = 'FrmCadastroEnfermidade'
  OldCreateOrder = True
  PixelsPerInch = 96
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
            Left = 16
            Top = 16
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditcodigo
          end
          object Label3: TLabel
            Left = 96
            Top = 16
            Width = 78
            Height = 13
            Caption = 'ENFERMIDADE'
            FocusControl = DBEdit2
          end
          object DBEditcodigo: TDBEdit
            Left = 16
            Top = 32
            Width = 73
            Height = 21
            DataField = 'ID_ENFERMIDADE'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 96
            Top = 32
            Width = 529
            Height = 21
            DataField = 'ENFERMIDADE'
            DataSource = DsCadastro
            TabOrder = 1
          end
        end
      end
    end
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM enfermidade')
  end
  inherited CdsCadastro: TClientDataSet
    object CdsCadastroID_ENFERMIDADE: TIntegerField
      FieldName = 'ID_ENFERMIDADE'
      Required = True
    end
    object CdsCadastroENFERMIDADE: TStringField
      FieldName = 'ENFERMIDADE'
      Size = 100
    end
  end
end
