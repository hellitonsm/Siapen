inherited FrmCadastroCondicaoInterno: TFrmCadastroCondicaoInterno
  Caption = 'Condi'#231#227'o Interno'
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
            DataField = 'DESCRICAO'
            DataSource = DsCadastro
            TabOrder = 1
          end
        end
      end
    end
  end
  inherited ImageListCadastro: TImageList
    Left = 680
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM CONDICAO_INTERNO')
  end
end
