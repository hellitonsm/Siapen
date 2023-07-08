inherited FrmCadastroNacionalidade: TFrmCadastroNacionalidade
  Caption = 'Cadastro Nacionalidade'
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
    end
  end
  inherited SqlCadastro: TSQLQuery
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
