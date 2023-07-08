inherited FrmAgendaAssuntos: TFrmAgendaAssuntos
  Left = 160
  Top = 168
  Height = 489
  Caption = 'Assuntos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 400
    inherited ToolBarModeloCadastro: TToolBar
      Height = 382
    end
    inherited DBNavigator1: TDBNavigator
      Top = 382
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Height = 400
    inherited PageControlModeloCadastro: TPageControl
      Height = 400
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Height = 372
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
            DataField = 'IDAGENDA_ASSUNTOS'
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
          Height = 338
          inherited DBGridConsulta: TDBGrid
            Height = 336
          end
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 432
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM AGENDA_ASSUNTOS')
  end
end
