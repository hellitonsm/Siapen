inherited FrmCadastroArtigo: TFrmCadastroArtigo
  Left = 277
  Top = 124
  Width = 741
  Height = 367
  Caption = 'Artigos do C'#243'digo Penal Brasileiro'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 289
    inherited ToolBarModeloCadastro: TToolBar
      Height = 271
    end
    inherited DBNavigator1: TDBNavigator
      Top = 271
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 618
    Height = 289
    inherited PageControlModeloCadastro: TPageControl
      Width = 618
      Height = 289
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 610
          Height = 261
          object Label2: TLabel
            Left = 8
            Top = 8
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = dbeditcodigo
          end
          object Label3: TLabel
            Left = 8
            Top = 56
            Width = 27
            Height = 13
            Caption = 'Artigo'
          end
          object dbeditcodigo: TDBEdit
            Left = 8
            Top = 24
            Width = 49
            Height = 21
            DataField = 'ID_ARTIGO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBMemo1: TDBMemo
            Left = 8
            Top = 72
            Width = 577
            Height = 153
            DataField = 'ARTIGO'
            DataSource = DsCadastro
            TabOrder = 1
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 610
        end
        inherited PanelConsulta: TPanel
          Width = 610
          Height = 227
          inherited DBGridConsulta: TDBGrid
            Width = 608
            Height = 225
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 733
    inherited Image2: TImage
      Width = 733
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 321
    Width = 733
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM artigo')
  end
end
