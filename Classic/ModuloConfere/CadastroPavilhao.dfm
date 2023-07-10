inherited FrmCadastroPavilhao: TFrmCadastroPavilhao
  Caption = 'Cadastro de Pavilh'#227'o'
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
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            FocusControl = DBEditcodigo
          end
          object LabelPavilhao: TLabel
            Left = 8
            Top = 48
            Width = 53
            Height = 13
            Caption = 'PAVILHAO'
            FocusControl = DBEdit2
          end
          object Label4: TLabel
            Left = 8
            Top = 88
            Width = 70
            Height = 13
            Caption = 'Unidade Penal'
          end
          object DBEditcodigo: TDBEdit
            Left = 8
            Top = 24
            Width = 134
            Height = 21
            DataField = 'ID_PAVILHAO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 8
            Top = 64
            Width = 654
            Height = 21
            DataField = 'PAVILHAO'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 8
            Top = 104
            Width = 425
            Height = 21
            DataField = 'ID_UP'
            DataSource = DsCadastro
            KeyField = 'ID_UP'
            ListField = 'NOME_UP'
            ListSource = DM.DsUP
            TabOrder = 2
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelConsulta: TPanel
          inherited DBGridConsulta: TDBGrid
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_PAVILHAO'
                Title.Caption = 'C'#243'digo'
                Width = 82
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PAVILHAO'
                Title.Caption = 'Descri'#231#227'o'
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited SqlCadastro: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_UP'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM PAVILHAO'
      'WHERE ID_UP=:ID_UP'
      'ORDER BY PAVILHAO')
  end
end
