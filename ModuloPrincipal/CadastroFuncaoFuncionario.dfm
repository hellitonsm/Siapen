inherited FrmCadastroFuncaoFuncionario: TFrmCadastroFuncaoFuncionario
  Left = 196
  Top = 87
  Caption = 'Cadastro Fun'#231#227'o Funcion'#225'rio'
  TextHeight = 13
  inherited PanelBotoes: TPanel
    ExplicitHeight = 372
    inherited ToolBarModeloCadastro: TToolBar
      ExplicitHeight = 348
    end
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
      ExplicitTop = 348
    end
  end
  inherited PanelModeloCadastro: TPanel
    ExplicitHeight = 372
    inherited PageControlModeloCadastro: TPageControl
      ExplicitHeight = 366
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Height = 253
          ExplicitHeight = 253
          object Label2: TLabel
            Left = 8
            Top = 16
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = dbeditcodigo
          end
          object Label3: TLabel
            Left = 8
            Top = 64
            Width = 103
            Height = 13
            Caption = 'FUN'#199#195'O SERVIDOR'
            FocusControl = dbedtFUNCAO_FUNCIONARIO
          end
          object dbeditcodigo: TDBEdit
            Left = 8
            Top = 32
            Width = 57
            Height = 21
            DataField = 'ID_FUNCAO_FUNCIONARIO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object dbedtFUNCAO_FUNCIONARIO: TDBEdit
            Left = 8
            Top = 80
            Width = 582
            Height = 21
            DataField = 'FUNCAO_FUNCIONARIO'
            DataSource = DsCadastro
            TabOrder = 1
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelConsulta: TPanel
          ExplicitHeight = 304
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    ExplicitTop = 404
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM FUNCAO_FUNCIONARIO')
  end
  inherited CdsCadastro: TClientDataSet
    object intgrfldCdsCadastroID_FUNCAO_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCAO_FUNCIONARIO'
      Required = True
    end
    object strngfldCdsCadastroFUNCAO_FUNCIONARIO: TStringField
      FieldName = 'FUNCAO_FUNCIONARIO'
      Size = 50
    end
  end
end
