inherited FrmCondicaoInterno: TFrmCondicaoInterno
  Caption = 'Condi'#231#227'o Interno'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelModeloCadastro: TPanel
    inherited PageControlModeloCadastro: TPageControl
      ActivePage = TabSheetConsulta
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
            Left = 8
            Top = 48
            Width = 48
            Height = 13
            Caption = 'Descri'#231#227'o'
          end
          object DBEDITCODIGO: TDBEdit
            Left = 8
            Top = 24
            Width = 49
            Height = 21
            DataField = 'IDCONDICAO_INTERNO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit1: TDBEdit
            Left = 8
            Top = 64
            Width = 577
            Height = 21
            TabOrder = 1
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 678
        end
        inherited PanelConsulta: TPanel
          Width = 678
          Height = 317
          inherited DBGridConsulta: TDBGrid
            Width = 676
            Height = 315
          end
        end
      end
    end
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM CONDICAO_INTERNO')
  end
end
