inherited FrmCadastroVacina: TFrmCadastroVacina
  Left = 211
  Top = 142
  Caption = 'Cadastro Vacina'
  ClientHeight = 584
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 533
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Height = 533
    inherited PageControlModeloCadastro: TPageControl
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          object Label2: TLabel
            Left = 24
            Top = 16
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditcodigo
          end
          object Label3: TLabel
            Left = 112
            Top = 16
            Width = 33
            Height = 13
            Caption = 'Vacina'
            FocusControl = DBEdit2
          end
          object DBEditcodigo: TDBEdit
            Left = 24
            Top = 32
            Width = 81
            Height = 21
            DataField = 'ID_VACINA'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 112
            Top = 32
            Width = 497
            Height = 21
            DataField = 'VACINA'
            DataSource = DsCadastro
            TabOrder = 1
          end
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 565
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM vacina')
  end
end
