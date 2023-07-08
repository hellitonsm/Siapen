inherited FrmCadastroNaturalidade: TFrmCadastroNaturalidade
  Caption = 'Naturalidade'
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
      ActivePage = TabSheetCadastro
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
    end
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM naturalidade')
    SQLConnection = DM.SQLConnect
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
