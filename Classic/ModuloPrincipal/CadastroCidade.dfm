inherited FrmCadastroCidade: TFrmCadastroCidade
  Left = 200
  Top = 179
  Width = 820
  Caption = 'Cadastro Cidade'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 689
    inherited PageControlModeloCadastro: TPageControl
      Width = 689
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 681
          object Label2: TLabel
            Left = 8
            Top = 8
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditCODIGO
          end
          object Label3: TLabel
            Left = 56
            Top = 8
            Width = 40
            Height = 13
            Caption = 'CIDADE'
            FocusControl = DBEdit2
          end
          object Label4: TLabel
            Left = 616
            Top = 8
            Width = 14
            Height = 13
            Caption = 'UF'
            FocusControl = DBEdit3
          end
          object DBEditCODIGO: TDBEdit
            Left = 8
            Top = 24
            Width = 41
            Height = 21
            DataField = 'ID_CIDADE'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 56
            Top = 24
            Width = 553
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CIDADE'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 616
            Top = 24
            Width = 57
            Height = 21
            CharCase = ecUpperCase
            DataField = 'UF'
            DataSource = DsCadastro
            TabOrder = 2
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 681
        end
        inherited PanelConsulta: TPanel
          Width = 681
          inherited DBGridConsulta: TDBGrid
            Width = 679
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 804
    inherited Image2: TImage
      Width = 804
    end
  end
  inherited StatusBar1: TStatusBar
    Width = 804
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM CIDADE')
  end
end
