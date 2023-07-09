inherited FrmTipoHora: TFrmTipoHora
  Left = 392
  Top = 230
  Width = 576
  Height = 349
  Caption = 'FrmTipoHora'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 260
    inherited ToolBarModeloCadastro: TToolBar
      Height = 242
    end
    inherited DBNavigator1: TDBNavigator
      Top = 242
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 445
    Height = 260
    inherited PageControlModeloCadastro: TPageControl
      Width = 445
      Height = 260
      ActivePage = TabSheetCadastro
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 437
          Height = 232
          object Label2: TLabel
            Left = 24
            Top = 32
            Width = 11
            Height = 13
            Caption = 'ID'
            Enabled = False
            FocusControl = DBEditCODIGO
          end
          object Label3: TLabel
            Left = 24
            Top = 72
            Width = 48
            Height = 13
            Caption = 'Descri'#231#227'o'
            FocusControl = DBEdit2
          end
          object DBEditCODIGO: TDBEdit
            Left = 24
            Top = 48
            Width = 134
            Height = 21
            DataField = 'IDTIPO_HORA'
            DataSource = DsCadastro
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 24
            Top = 88
            Width = 369
            Height = 21
            DataField = 'DESCRICAO'
            DataSource = DsCadastro
            TabOrder = 1
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 437
        end
        inherited PanelConsulta: TPanel
          Width = 437
          Height = 198
          inherited DBGridConsulta: TDBGrid
            Width = 435
            Height = 196
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 560
    inherited Image2: TImage
      Width = 560
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 292
    Width = 560
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM TIPO_HORA')
  end
  inherited CdsCadastro: TClientDataSet
    object CdsCadastroIDTIPO_HORA: TIntegerField
      FieldName = 'IDTIPO_HORA'
      Required = True
    end
    object CdsCadastroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
end
