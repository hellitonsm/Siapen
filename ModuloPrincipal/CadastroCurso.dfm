inherited FrmCadastroCurso: TFrmCadastroCurso
  Left = 235
  Top = 154
  Caption = 'Cadastro de Cursos'
  ClientHeight = 585
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 534
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Height = 534
    inherited PageControlModeloCadastro: TPageControl
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          object Label2: TLabel
            Left = 15
            Top = 20
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditcodigo
          end
          object Label3: TLabel
            Left = 90
            Top = 20
            Width = 27
            Height = 13
            Caption = 'Curso'
            FocusControl = DBEdit2
          end
          object DBEditcodigo: TDBEdit
            Left = 15
            Top = 36
            Width = 66
            Height = 21
            DataField = 'ID_curso'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 88
            Top = 36
            Width = 521
            Height = 21
            DataField = 'curso'
            DataSource = DsCadastro
            TabOrder = 1
          end
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 566
  end
  inherited ImageListCadastro: TImageList
    Left = 608
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM curso')
  end
end
