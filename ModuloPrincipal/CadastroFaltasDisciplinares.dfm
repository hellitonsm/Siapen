inherited FrmCadastroFaltasDisciplinares: TFrmCadastroFaltasDisciplinares
  Left = 310
  Top = 250
  Width = 835
  Height = 472
  Caption = 'Cadastro Faltas Disciplinares'
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 383
    inherited ToolBarModeloCadastro: TToolBar
      Height = 365
    end
    inherited DBNavigator1: TDBNavigator
      Top = 365
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 704
    Height = 383
    inherited PageControlModeloCadastro: TPageControl
      Width = 704
      Height = 383
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 696
          Height = 355
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
          Height = 426
          inherited DBGridConsulta: TDBGrid
            Height = 424
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 819
    inherited Image2: TImage
      Width = 819
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 415
    Width = 819
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM falta_disciplinar')
  end
end
