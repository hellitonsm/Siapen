inherited FrmCadastroNaturalidade: TFrmCadastroNaturalidade
  Caption = 'Naturalidade'
  ClientHeight = 582
  ClientWidth = 936
  ExplicitWidth = 952
  ExplicitHeight = 621
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 531
    ExplicitHeight = 531
    inherited ToolBarModeloCadastro: TToolBar
      Height = 513
      ExplicitHeight = 513
    end
    inherited DBNavigator1: TDBNavigator
      Top = 513
      Hints.Strings = ()
      ExplicitTop = 513
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 821
    Height = 531
    ExplicitWidth = 821
    ExplicitHeight = 531
    inherited PageControlModeloCadastro: TPageControl
      Width = 821
      Height = 531
      ActivePage = TabSheetCadastro
      ExplicitWidth = 821
      ExplicitHeight = 531
      inherited TabSheetCadastro: TTabSheet
        ExplicitWidth = 813
        ExplicitHeight = 503
        inherited PanelCadastro: TPanel
          Width = 813
          Height = 503
          ExplicitWidth = 813
          ExplicitHeight = 503
          object Label2: TLabel
            Left = 24
            Top = 16
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditcodigo
          end
          object Label3: TLabel
            Left = 72
            Top = 16
            Width = 84
            Height = 13
            Caption = 'NATURALIDADE'
            FocusControl = DBEdit2
          end
          object Label4: TLabel
            Left = 552
            Top = 16
            Width = 14
            Height = 13
            Caption = 'UF'
            FocusControl = DBEdit3
          end
          object DBEditcodigo: TDBEdit
            Left = 24
            Top = 32
            Width = 41
            Height = 21
            DataField = 'ID_NATURALIDADE'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 72
            Top = 32
            Width = 473
            Height = 21
            DataField = 'NATURALIDADE'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 552
            Top = 32
            Width = 41
            Height = 21
            DataField = 'UF'
            DataSource = DsCadastro
            TabOrder = 2
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
  inherited PanelTituloModeloCadastro: TPanel
    Width = 936
    ExplicitWidth = 936
  end
  inherited StatusBar1: TStatusBar
    Top = 563
    Width = 936
    ExplicitTop = 563
    ExplicitWidth = 936
  end
  inherited SqlCadastro: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT * '
      'FROM naturalidade')
  end
  inherited CdsCadastro: TClientDataSet
    object CdsCadastroID_NATURALIDADE: TIntegerField
      FieldName = 'ID_NATURALIDADE'
      Required = True
    end
    object CdsCadastroNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 50
    end
    object CdsCadastroUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
end
