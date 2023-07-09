inherited FrmTipoSaidao: TFrmTipoSaidao
  Height = 316
  Caption = 'Tipo Said'#227'o'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 227
    inherited ToolBarModeloCadastro: TToolBar
      Height = 209
    end
    inherited DBNavigator1: TDBNavigator
      Top = 209
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Height = 227
    inherited PageControlModeloCadastro: TPageControl
      Height = 227
      ActivePage = TabSheetCadastro
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Height = 199
          object Label2: TLabel
            Left = 16
            Top = 16
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditCODIGO
          end
          object Label3: TLabel
            Left = 112
            Top = 16
            Width = 57
            Height = 13
            Caption = 'Tipo Said'#227'o'
            FocusControl = DBEdit2
          end
          object DBEditCODIGO: TDBEdit
            Left = 16
            Top = 32
            Width = 89
            Height = 21
            DataField = 'ID_TIPO_SAIDAO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 112
            Top = 32
            Width = 497
            Height = 21
            DataField = 'TIPO_SAIDAO'
            DataSource = DsCadastro
            TabOrder = 1
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelConsulta: TPanel
          Height = 165
          inherited DBGridConsulta: TDBGrid
            Height = 163
          end
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 259
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM TIPO_SAIDAO')
  end
  inherited CdsCadastro: TClientDataSet
    object CdsCadastroID_TIPO_SAIDAO: TIntegerField
      FieldName = 'ID_TIPO_SAIDAO'
      Required = True
    end
    object CdsCadastroTIPO_SAIDAO: TStringField
      FieldName = 'TIPO_SAIDAO'
      Size = 100
    end
  end
end
