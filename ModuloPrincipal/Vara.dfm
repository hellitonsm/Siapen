inherited FrmVara: TFrmVara
  Left = 212
  Top = 173
  Caption = 'Vara de Execu'#231#227'o'
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
            Top = 24
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditCODIGO
          end
          object Label3: TLabel
            Left = 24
            Top = 72
            Width = 48
            Height = 13
            Caption = 'Descri'#231#227'o'
            FocusControl = DBEditPOSTO_TRABALHO
          end
          object Label14: TLabel
            Left = 24
            Top = 118
            Width = 33
            Height = 13
            Caption = 'Cidade'
          end
          object SpeedButton11: TSpeedButton
            Left = 470
            Top = 132
            Width = 23
            Height = 22
            Hint = 'Cadastrar Cidade'
            Caption = '...'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton11Click
          end
          object DBEditCODIGO: TDBEdit
            Left = 24
            Top = 40
            Width = 85
            Height = 21
            DataField = 'IDVARA'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEditPOSTO_TRABALHO: TDBEdit
            Left = 24
            Top = 88
            Width = 369
            Height = 21
            DataField = 'DESCRICAO'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object DBLookupComboBoxIDCIDADE: TDBLookupComboBox
            Left = 24
            Top = 134
            Width = 441
            Height = 21
            DataField = 'IDCIDADE'
            DataSource = DsCadastro
            KeyField = 'ID_CIDADE'
            ListField = 'CIDADE'
            ListSource = DM.DSCIDADE
            TabOrder = 2
          end
        end
      end
    end
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM VARA')
  end
end
