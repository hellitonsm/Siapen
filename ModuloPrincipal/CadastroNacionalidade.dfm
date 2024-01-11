inherited FrmCadastroNacionalidade: TFrmCadastroNacionalidade
  Caption = 'Cadastro Nacionalidade'
  ExplicitWidth = 956
  ExplicitHeight = 622
  TextHeight = 13
  inherited PanelBotoes: TPanel
    ExplicitHeight = 533
    inherited ToolBarModeloCadastro: TToolBar
      Height = 514
      ExplicitHeight = 513
    end
    inherited DBNavigator1: TDBNavigator
      Top = 514
      Hints.Strings = ()
      ExplicitTop = 513
    end
  end
  inherited PanelModeloCadastro: TPanel
    ExplicitWidth = 829
    ExplicitHeight = 533
    inherited PageControlModeloCadastro: TPageControl
      ExplicitWidth = 821
      ExplicitHeight = 531
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 817
          Height = 504
          ExplicitWidth = 817
          ExplicitHeight = 504
          object Label2: TLabel
            Left = 8
            Top = 8
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEDITCODIGO
          end
          object Label3: TLabel
            Left = 72
            Top = 8
            Width = 87
            Height = 13
            Caption = 'NACIONALIDADE'
            FocusControl = dbedtNACIONALIDADE
          end
          object DBEDITCODIGO: TDBEdit
            Left = 8
            Top = 24
            Width = 57
            Height = 21
            DataField = 'ID_NACIONALIDADE'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object dbedtNACIONALIDADE: TDBEdit
            Left = 72
            Top = 24
            Width = 590
            Height = 21
            DataField = 'NACIONALIDADE'
            DataSource = DsCadastro
            TabOrder = 1
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 817
          ExplicitWidth = 813
        end
        inherited PanelConsulta: TPanel
          Width = 817
          Height = 470
          ExplicitWidth = 813
          ExplicitHeight = 469
          inherited DBGridConsulta: TDBGrid
            Width = 815
            Height = 468
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    ExplicitWidth = 936
  end
  inherited StatusBar1: TStatusBar
    ExplicitTop = 565
    ExplicitWidth = 944
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM NACIONALIDADE')
  end
  inherited CdsCadastro: TClientDataSet
    object intgrfldCdsCadastroID_NACIONALIDADE: TIntegerField
      FieldName = 'ID_NACIONALIDADE'
      Required = True
    end
    object strngfldCdsCadastroNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 50
    end
  end
end
