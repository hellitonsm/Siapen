inherited FrmCadastroAreaServidor: TFrmCadastroAreaServidor
  Caption = 'Cadastro '#193'rea Servidor'
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
            Top = 8
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = dbedtID_AREA
          end
          object Label3: TLabel
            Left = 72
            Top = 8
            Width = 32
            Height = 13
            Caption = #193'REA '
            FocusControl = dbedtAREA_SERVIDOR
          end
          object dbedtID_AREA: TDBEdit
            Left = 16
            Top = 24
            Width = 49
            Height = 21
            DataField = 'ID_AREA'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object dbedtAREA_SERVIDOR: TDBEdit
            Left = 72
            Top = 24
            Width = 590
            Height = 21
            DataField = 'AREA_SERVIDOR'
            DataSource = DsCadastro
            TabOrder = 1
          end
        end
      end
    end
  end
  inherited ImageListCadastro: TImageList
    Left = 600
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM AREA_SERVIDOR')
  end
  inherited CdsCadastro: TClientDataSet
    object intgrfldCdsCadastroID_AREA: TIntegerField
      FieldName = 'ID_AREA'
      Required = True
    end
    object strngfldCdsCadastroAREA_SERVIDOR: TStringField
      FieldName = 'AREA_SERVIDOR'
      Size = 50
    end
  end
end
