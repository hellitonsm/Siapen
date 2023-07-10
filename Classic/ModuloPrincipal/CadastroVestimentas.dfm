inherited FrmCadastroVestimentas: TFrmCadastroVestimentas
  Caption = 'Cadastro Vestimentas'
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
      ActivePage = TabSheetCadastro
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          object Label2: TLabel
            Left = 16
            Top = 24
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditcodigo
          end
          object Label3: TLabel
            Left = 104
            Top = 24
            Width = 57
            Height = 13
            Caption = 'Vestimentas'
            FocusControl = DBEdit2
          end
          object DBEditcodigo: TDBEdit
            Left = 16
            Top = 40
            Width = 81
            Height = 21
            DataField = 'ID_VESTIMENTAS'
            DataSource = DsCadastro
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 104
            Top = 40
            Width = 505
            Height = 21
            DataField = 'VESTIMENTAS'
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
      'FROM vestimentas')
  end
end
