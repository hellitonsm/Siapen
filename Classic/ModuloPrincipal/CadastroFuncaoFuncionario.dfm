inherited FrmCadastroFuncaoFuncionario: TFrmCadastroFuncaoFuncionario
  Left = 196
  Top = 87
  Height = 370
  Caption = 'Cadastro Fun'#231#227'o Funcion'#225'rio'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 281
    inherited ToolBarModeloCadastro: TToolBar
      Height = 263
    end
    inherited DBNavigator1: TDBNavigator
      Top = 263
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Height = 281
    inherited PageControlModeloCadastro: TPageControl
      Height = 281
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Height = 253
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
          Height = 219
          inherited DBGridConsulta: TDBGrid
            Height = 217
          end
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 313
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
