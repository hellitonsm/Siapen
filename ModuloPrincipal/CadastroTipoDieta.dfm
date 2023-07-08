inherited FrmCadastroTipoDieta: TFrmCadastroTipoDieta
  Caption = 'Cadastro Tipo Dieta'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    inherited PageControlModeloCadastro: TPageControl
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          object Label2: TLabel
            Left = 24
            Top = 16
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditcodigo
          end
          object Label3: TLabel
            Left = 112
            Top = 16
            Width = 49
            Height = 13
            Caption = 'Tipo Dieta'
            FocusControl = DBEdit2
          end
          object DBEditcodigo: TDBEdit
            Left = 24
            Top = 32
            Width = 81
            Height = 21
            DataField = 'ID_TIPO_DIETA'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 112
            Top = 32
            Width = 481
            Height = 21
            DataField = 'TIPO_DIETA'
            DataSource = DsCadastro
            TabOrder = 1
          end
        end
      end
    end
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM tipo_dieta')
  end
  inherited CdsCadastro: TClientDataSet
    object CdsCadastroID_TIPO_DIETA: TIntegerField
      FieldName = 'ID_TIPO_DIETA'
      Required = True
    end
    object CdsCadastroTIPO_DIETA: TStringField
      FieldName = 'TIPO_DIETA'
      Size = 100
    end
  end
end
