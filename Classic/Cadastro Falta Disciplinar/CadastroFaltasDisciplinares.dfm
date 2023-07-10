inherited FrmCadastroFaltasDisciplinares: TFrmCadastroFaltasDisciplinares
  Left = 376
  Top = 77
  Height = 357
  Caption = 'Cadastro Faltas Disciplinares'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 268
    inherited ToolBarModeloCadastro: TToolBar
      Height = 250
    end
    inherited DBNavigator1: TDBNavigator
      Top = 250
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Height = 268
    inherited PageControlModeloCadastro: TPageControl
      Height = 268
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Height = 240
          object Label2: TLabel
            Left = 16
            Top = 16
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditcodigo
          end
          object Label3: TLabel
            Left = 72
            Top = 16
            Width = 74
            Height = 13
            Caption = 'Falta Disciplinar'
            FocusControl = DBEdit2
          end
          object Label4: TLabel
            Left = 16
            Top = 64
            Width = 125
            Height = 13
            Caption = 'Tempo Reabilita'#231#227'o (Dias)'
            FocusControl = DBEdit3
          end
          object Label5: TLabel
            Left = 192
            Top = 64
            Width = 47
            Height = 13
            Caption = 'Tipo Falta'
          end
          object DBEditcodigo: TDBEdit
            Left = 16
            Top = 32
            Width = 49
            Height = 21
            DataField = 'ID_FALTA_DISCIPLINAR'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 72
            Top = 32
            Width = 545
            Height = 21
            CharCase = ecUpperCase
            DataField = 'FALTA_DISCIPLINAR'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 16
            Top = 80
            Width = 169
            Height = 21
            DataField = 'TEMPOREABILITACAO'
            DataSource = DsCadastro
            TabOrder = 2
          end
          object DBComboBox1: TDBComboBox
            Left = 192
            Top = 80
            Width = 265
            Height = 21
            DataField = 'TIPOFALTA'
            DataSource = DsCadastro
            ItemHeight = 13
            Items.Strings = (
              'LEVE'
              'M'#201'DIA'
              'GRAVE')
            TabOrder = 3
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelConsulta: TPanel
          Height = 121
          inherited DBGridConsulta: TDBGrid
            Height = 119
          end
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 300
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM falta_disciplinar')
  end
end
