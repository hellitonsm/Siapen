inherited FrmAgendaSituacao: TFrmAgendaSituacao
  Left = 316
  Top = 175
  Caption = 'Situa'#231#227'o'
  ExplicitWidth = 952
  ExplicitHeight = 621
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
    end
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM AGENDA_SITUACAO')
  end
end
