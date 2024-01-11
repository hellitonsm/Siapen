inherited FrmTipoSaidao: TFrmTipoSaidao
  Caption = 'Tipo Said'#227'o'
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
      ExplicitHeight = 530
      inherited TabSheetCadastro: TTabSheet
        ExplicitWidth = 813
        ExplicitHeight = 503
        inherited PanelCadastro: TPanel
          Width = 813
          Height = 503
          ExplicitHeight = 503
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
        ExplicitWidth = 813
        ExplicitHeight = 503
        inherited PanelLocalizaConsulta: TPanel
          Width = 813
          ExplicitWidth = 813
        end
        inherited PanelConsulta: TPanel
          Width = 813
          Height = 469
          ExplicitWidth = 813
          ExplicitHeight = 469
          inherited DBGridConsulta: TDBGrid
            Width = 811
            Height = 467
          end
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    ExplicitTop = 563
  end
  inherited SqlCadastro: TFDQuery
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
