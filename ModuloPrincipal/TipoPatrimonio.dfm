inherited FrmTipoPatrimonio: TFrmTipoPatrimonio
  Left = 228
  Top = 172
  Height = 375
  Caption = 'Tipo de Patrim'#244'nio'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 268
    inherited ToolBarModeloCadastro: TToolBar
      Height = 249
    end
    inherited DBNavigator1: TDBNavigator
      Top = 249
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Height = 268
    inherited PageControlModeloCadastro: TPageControl
      Height = 268
      ActivePage = TabSheetCadastro
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Height = 240
          object Label2: TLabel
            Left = 24
            Top = 24
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditCODIGO
          end
          object Label3: TLabel
            Left = 24
            Top = 80
            Width = 62
            Height = 13
            Caption = 'DESCRICAO'
            FocusControl = DBEdit1
          end
          object DBEditCODIGO: TDBEdit
            Left = 24
            Top = 40
            Width = 134
            Height = 21
            DataField = 'IDTIPO_PATRIMONIO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit1: TDBEdit
            Left = 24
            Top = 96
            Width = 600
            Height = 21
            DataField = 'DESCRICAO'
            DataSource = DsCadastro
            TabOrder = 1
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelConsulta: TPanel
          Height = 206
          inherited DBGridConsulta: TDBGrid
            Height = 204
          end
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 318
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM TIPO_PATRIMONIO')
  end
  inherited CdsCadastro: TClientDataSet
    object CdsCadastroIDTIPO_PATRIMONIO: TIntegerField
      FieldName = 'IDTIPO_PATRIMONIO'
      Required = True
    end
    object CdsCadastroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
end
