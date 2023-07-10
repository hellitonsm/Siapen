inherited FrmCadastroProcedencia: TFrmCadastroProcedencia
  Left = 250
  Top = 132
  Caption = 'Cadastro Proced'#234'ncia'
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
            Left = 8
            Top = 16
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditcodigo
          end
          object Label3: TLabel
            Left = 72
            Top = 16
            Width = 77
            Height = 13
            Caption = 'PROCED'#202'NCIA'
            FocusControl = dbedtPROEDENCIA
          end
          object Label33: TLabel
            Left = 16
            Top = 110
            Width = 14
            Height = 13
            Caption = 'UF'
          end
          object DBEditcodigo: TDBEdit
            Left = 8
            Top = 32
            Width = 57
            Height = 21
            DataField = 'ID_PROCEDENCIA'
            DataSource = DsCadastro
            TabOrder = 0
          end
          object dbedtPROEDENCIA: TDBEdit
            Left = 72
            Top = 32
            Width = 505
            Height = 21
            DataField = 'PROEDENCIA'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object dbrgrpCAPITAL: TDBRadioGroup
            Left = 8
            Top = 63
            Width = 162
            Height = 41
            Caption = 'CAPITAL'
            Columns = 2
            DataField = 'CAPITAL'
            DataSource = DsCadastro
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 2
            Values.Strings = (
              'S'
              'N')
          end
          object DBEdit1: TDBEdit
            Left = 16
            Top = 128
            Width = 41
            Height = 21
            DataField = 'UF'
            DataSource = DsCadastro
            TabOrder = 3
          end
        end
      end
    end
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM PROCEDENCIA')
  end
end
