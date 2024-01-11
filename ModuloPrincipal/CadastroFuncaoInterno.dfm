inherited FrmCadastroFuncaoInterno: TFrmCadastroFuncaoInterno
  Caption = 'Cadastro Fun'#231#227'o Interno'
  ExplicitWidth = 948
  ExplicitHeight = 620
  TextHeight = 13
  inherited PanelBotoes: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    inherited PageControlModeloCadastro: TPageControl
      Width = 821
      Height = 531
      inherited TabSheetCadastro: TTabSheet
        ExplicitWidth = 813
        ExplicitHeight = 503
        inherited PanelCadastro: TPanel
          object Label2: TLabel
            Left = 16
            Top = 16
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditcodigo
          end
          object Label3: TLabel
            Left = 88
            Top = 16
            Width = 96
            Height = 13
            Caption = 'FUNC'#195'O INTERNO'
            FocusControl = DBEdit2
          end
          object DBEditcodigo: TDBEdit
            Left = 16
            Top = 32
            Width = 65
            Height = 21
            DataField = 'ID_FUNCAO_INTERNO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 88
            Top = 32
            Width = 513
            Height = 21
            DataField = 'FUNCAO_INTERNO'
            DataSource = DsCadastro
            TabOrder = 1
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        ExplicitWidth = 813
        ExplicitHeight = 503
      end
    end
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM funcao_interno')
  end
  inherited CdsCadastro: TClientDataSet
    object CdsCadastroID_FUNCAO_INTERNO: TIntegerField
      FieldName = 'ID_FUNCAO_INTERNO'
      Required = True
    end
    object CdsCadastroFUNCAO_INTERNO: TStringField
      FieldName = 'FUNCAO_INTERNO'
      Size = 50
    end
  end
end
