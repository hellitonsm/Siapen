inherited FrmCadastroGrauParentesco: TFrmCadastroGrauParentesco
  Caption = 'Cadastro Grau Parentesco'
  ClientHeight = 583
  ExplicitWidth = 948
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 532
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Height = 532
    inherited PageControlModeloCadastro: TPageControl
      Width = 821
      Height = 531
      inherited TabSheetCadastro: TTabSheet
        ExplicitWidth = 813
        ExplicitHeight = 503
        inherited PanelCadastro: TPanel
          object Label2: TLabel
            Left = 16
            Top = 8
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditCODIGO
          end
          object Label3: TLabel
            Left = 88
            Top = 8
            Width = 107
            Height = 13
            Caption = 'GRAU PARENTESCO'
            FocusControl = DBEdit2
          end
          object DBEditCODIGO: TDBEdit
            Left = 16
            Top = 24
            Width = 65
            Height = 21
            DataField = 'ID_GRAU_PARENTESCO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 88
            Top = 24
            Width = 569
            Height = 21
            DataField = 'GRAU_PARENTESCO'
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
  inherited StatusBar1: TStatusBar
    Top = 564
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM GRAU_PARENTESCO')
  end
  inherited CdsCadastro: TClientDataSet
    object CdsCadastroID_GRAU_PARENTESCO: TIntegerField
      FieldName = 'ID_GRAU_PARENTESCO'
      Required = True
    end
    object CdsCadastroGRAU_PARENTESCO: TStringField
      FieldName = 'GRAU_PARENTESCO'
      Size = 50
    end
  end
end
