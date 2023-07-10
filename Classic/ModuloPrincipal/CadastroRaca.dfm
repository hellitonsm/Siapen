inherited FrmCadastroRaca: TFrmCadastroRaca
  Caption = 'Cadastro Ra'#231'a'
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
            Left = 64
            Top = 8
            Width = 29
            Height = 13
            Caption = 'RA'#199'A'
            FocusControl = dbedtRACA
          end
          object DBEDITCODIGO: TDBEdit
            Left = 8
            Top = 24
            Width = 49
            Height = 21
            DataField = 'ID_RACA'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object dbedtRACA: TDBEdit
            Left = 64
            Top = 24
            Width = 598
            Height = 21
            DataField = 'RACA'
            DataSource = DsCadastro
            TabOrder = 1
          end
        end
      end
    end
  end
  inherited ImageListCadastro: TImageList
    Left = 624
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM RACA')
  end
  inherited CdsCadastro: TClientDataSet
    object intgrfldCdsCadastroID_RACA: TIntegerField
      FieldName = 'ID_RACA'
      Required = True
    end
    object strngfldCdsCadastroRACA: TStringField
      FieldName = 'RACA'
      Size = 50
    end
  end
end
