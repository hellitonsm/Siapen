inherited FrmCadastroDeficiencia: TFrmCadastroDeficiencia
  Left = 300
  Top = 147
  Caption = 'FrmCadastroDeficiencia'
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
            Left = 16
            Top = 16
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditcodigo
          end
          object Label3: TLabel
            Left = 104
            Top = 16
            Width = 53
            Height = 13
            Caption = 'Defici'#234'ncia'
            FocusControl = DBEdit2
          end
          object DBEditcodigo: TDBEdit
            Left = 16
            Top = 32
            Width = 81
            Height = 21
            DataField = 'ID_DEFICIENCIA'
            DataSource = DsCadastro
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 104
            Top = 32
            Width = 513
            Height = 21
            DataField = 'DEFICIENCIA'
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
      'FROM deficiencia')
  end
  inherited CdsCadastro: TClientDataSet
    object CdsCadastroID_DEFICIENCIA: TIntegerField
      FieldName = 'ID_DEFICIENCIA'
      Required = True
    end
    object CdsCadastroDEFICIENCIA: TStringField
      FieldName = 'DEFICIENCIA'
      Size = 50
    end
  end
end
