inherited FrmAgendaTipoContatos: TFrmAgendaTipoContatos
  Left = 338
  Top = 173
  Caption = 'Tipos de Contatos'
  ClientHeight = 583
  ExplicitWidth = 948
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 532
    inherited ToolBarModeloCadastro: TToolBar
      Height = 377
      ExplicitHeight = 377
    end
    inherited DBNavigator1: TDBNavigator
      Top = 377
      Hints.Strings = ()
      ExplicitTop = 377
    end
  end
  inherited PanelModeloCadastro: TPanel
    Height = 532
    inherited PageControlModeloCadastro: TPageControl
      Width = 821
      Height = 531
      ExplicitHeight = 395
      inherited TabSheetCadastro: TTabSheet
        ExplicitWidth = 813
        ExplicitHeight = 503
        inherited PanelCadastro: TPanel
          Height = 367
          ExplicitHeight = 367
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
            DataField = 'IDAGENDA_TIPO_CONTATOS'
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
        ExplicitWidth = 813
        ExplicitHeight = 503
        inherited PanelConsulta: TPanel
          Height = 333
          ExplicitHeight = 333
          inherited DBGridConsulta: TDBGrid
            Height = 331
          end
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 564
    ExplicitTop = 563
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM AGENDA_TIPO_CONTATOS')
  end
end
