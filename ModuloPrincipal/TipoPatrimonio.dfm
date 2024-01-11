inherited FrmTipoPatrimonio: TFrmTipoPatrimonio
  Left = 228
  Top = 172
  Caption = 'Tipo de Patrim'#244'nio'
  ExplicitWidth = 948
  ExplicitHeight = 620
  TextHeight = 13
  inherited PanelBotoes: TPanel
    ExplicitHeight = 530
    inherited ToolBarModeloCadastro: TToolBar
      Height = 513
      ExplicitHeight = 512
    end
    inherited DBNavigator1: TDBNavigator
      Top = 513
      Hints.Strings = ()
      ExplicitTop = 512
    end
  end
  inherited PanelModeloCadastro: TPanel
    ExplicitHeight = 530
    inherited PageControlModeloCadastro: TPageControl
      Width = 821
      Height = 531
      ActivePage = TabSheetCadastro
      ExplicitHeight = 530
      inherited TabSheetCadastro: TTabSheet
        ExplicitWidth = 813
        ExplicitHeight = 503
        inherited PanelCadastro: TPanel
          Width = 813
          Height = 503
          ExplicitHeight = 503
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
        ExplicitWidth = 813
        ExplicitHeight = 503
        inherited PanelConsulta: TPanel
          Height = 206
          ExplicitHeight = 206
          inherited DBGridConsulta: TDBGrid
            Height = 204
          end
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    ExplicitTop = 562
  end
  inherited SqlCadastro: TFDQuery
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
