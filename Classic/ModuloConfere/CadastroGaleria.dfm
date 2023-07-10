inherited FrmCadastroGaleria: TFrmCadastroGaleria
  Caption = 'Cadastro de Galeria'
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
            Top = 16
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            FocusControl = DBEditcodigo
          end
          object LabelGaleria: TLabel
            Left = 8
            Top = 56
            Width = 46
            Height = 13
            Caption = 'GALERIA'
            FocusControl = DBEdit2
          end
          object Label7: TLabel
            Left = 9
            Top = 101
            Width = 89
            Height = 13
            Caption = '(F7 - PESQUISAR)'
            Color = clActiveBorder
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object LabelPavilhao: TLabel
            Left = 100
            Top = 101
            Width = 53
            Height = 13
            Caption = 'PAVILH'#195'O'
          end
          object DBEditcodigo: TDBEdit
            Left = 8
            Top = 32
            Width = 134
            Height = 21
            DataField = 'ID_GALERIA'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 8
            Top = 72
            Width = 654
            Height = 21
            DataField = 'GALERIA'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object DBLookupComboBoxIDPAVILHAO: TDBLookupComboBox
            Left = 100
            Top = 117
            Width = 297
            Height = 21
            DataField = 'IDPAVILHAO'
            DataSource = DsCadastro
            KeyField = 'ID_PAVILHAO'
            ListField = 'PAVILHAO'
            ListSource = DM.DsPavilhao
            TabOrder = 3
          end
          object DBEditIDPAVILHAO: TDBEdit
            Left = 9
            Top = 118
            Width = 80
            Height = 21
            DataField = 'IDPAVILHAO'
            DataSource = DsCadastro
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
                FieldName = 'ID_GALERIA'
                Title.Caption = 'C'#243'digo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'GALERIA'
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
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM GALERIA'
      'WHERE EXISTS (SELECT NULL'
      'FROM PAVILHAO'
      'WHERE PAVILHAO.ID_PAVILHAO=GALERIA.IDPAVILHAO'
      'AND PAVILHAO.ID_UP = :ID_UP)'
      'ORDER BY GALERIA')
  end
end
