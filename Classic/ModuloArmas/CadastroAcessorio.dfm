inherited FrmCadastroAcessorio: TFrmCadastroAcessorio
  Left = 288
  Top = 139
  Caption = 'Cadastro Acess'#243'rios'
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
            Left = 16
            Top = 16
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditcodigo
          end
          object Label3: TLabel
            Left = 72
            Top = 16
            Width = 62
            Height = 13
            Caption = 'ACESS'#211'RIO'
            FocusControl = DBEdit2
          end
          object DBEditcodigo: TDBEdit
            Left = 16
            Top = 32
            Width = 49
            Height = 21
            DataField = 'ID_ACESSORIO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 72
            Top = 32
            Width = 569
            Height = 21
            DataField = 'DESCRICAO_ACESSORIO'
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
      'FROM acessorios')
  end
  inherited CdsCadastro: TClientDataSet
    object CdsCadastroID_ACESSORIO: TIntegerField
      FieldName = 'ID_ACESSORIO'
      Required = True
    end
    object CdsCadastroDESCRICAO_ACESSORIO: TStringField
      FieldName = 'DESCRICAO_ACESSORIO'
      Size = 100
    end
  end
end
