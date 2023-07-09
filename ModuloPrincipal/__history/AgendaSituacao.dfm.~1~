inherited FrmAgendaSituacao: TFrmAgendaSituacao
  Left = 316
  Top = 175
  Height = 488
  Caption = 'Situa'#231#227'o'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 399
    inherited ToolBarModeloCadastro: TToolBar
      Height = 381
    end
    inherited DBNavigator1: TDBNavigator
      Top = 381
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Height = 399
    inherited PageControlModeloCadastro: TPageControl
      Height = 399
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Height = 371
          object Label2: TLabel
            Left = 20
            Top = 18
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = dbeditcodigo
          end
          object Label3: TLabel
            Left = 20
            Top = 58
            Width = 62
            Height = 13
            Caption = 'DESCRI'#199#195'O'
            FocusControl = dbedtDESCRICAO
          end
          object dbeditcodigo: TDBEdit
            Left = 20
            Top = 34
            Width = 57
            Height = 21
            DataField = 'IDAGENDA_SITUACAO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object dbedtDESCRICAO: TDBEdit
            Left = 20
            Top = 74
            Width = 582
            Height = 21
            DataField = 'DESCRICAO'
            DataSource = DsCadastro
            TabOrder = 1
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelConsulta: TPanel
          Height = 337
          inherited DBGridConsulta: TDBGrid
            Height = 335
          end
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 431
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM AGENDA_SITUACAO')
  end
end
