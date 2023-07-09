inherited FrmTipoEventoProcesso: TFrmTipoEventoProcesso
  Height = 385
  Caption = 'Tipo de Eventos do Processo'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 296
    inherited ToolBarModeloCadastro: TToolBar
      Height = 278
    end
    inherited DBNavigator1: TDBNavigator
      Top = 278
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Height = 296
    inherited PageControlModeloCadastro: TPageControl
      Height = 296
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Height = 268
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
            Top = 64
            Width = 48
            Height = 13
            Caption = 'Descri'#231#227'o'
            FocusControl = DBEdit2
          end
          object DBEditCODIGO: TDBEdit
            Left = 24
            Top = 40
            Width = 105
            Height = 21
            DataField = 'IDTIPO_EVENTO_PROCESSO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 24
            Top = 80
            Width = 600
            Height = 21
            DataField = 'DESCRICAO'
            DataSource = DsCadastro
            TabOrder = 1
          end
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 328
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM TIPO_EVENTO_PROCESSO')
  end
  inherited CdsCadastro: TClientDataSet
    object CdsCadastroIDTIPO_EVENTO_PROCESSO: TIntegerField
      FieldName = 'IDTIPO_EVENTO_PROCESSO'
      Required = True
    end
    object CdsCadastroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
end
