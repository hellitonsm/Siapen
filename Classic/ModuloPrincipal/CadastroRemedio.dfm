inherited FrmCadastroRemedio: TFrmCadastroRemedio
  Left = 208
  Top = 196
  Height = 553
  Caption = 'Cadastro Rem'#233'dio'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 464
    inherited ToolBarModeloCadastro: TToolBar
      Height = 446
    end
    inherited DBNavigator1: TDBNavigator
      Top = 446
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Height = 464
    inherited PageControlModeloCadastro: TPageControl
      Height = 464
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Height = 436
          object Label2: TLabel
            Left = 16
            Top = 16
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditcodigo
          end
          object Label3: TLabel
            Left = 80
            Top = 16
            Width = 42
            Height = 13
            Caption = 'Rem'#233'dio'
            FocusControl = DBEdit2
          end
          object Label4: TLabel
            Left = 16
            Top = 64
            Width = 30
            Height = 13
            Caption = 'QTDE'
            FocusControl = DBEdit3
          end
          object Label5: TLabel
            Left = 88
            Top = 64
            Width = 93
            Height = 13
            Caption = 'Unidade de Medida'
            FocusControl = DBEdit4
          end
          object Label6: TLabel
            Left = 280
            Top = 64
            Width = 54
            Height = 13
            Caption = 'Fornecedor'
          end
          object SpeedButton5: TSpeedButton
            Left = 608
            Top = 77
            Width = 23
            Height = 22
            Hint = 'Cadastrar Fornecedor'
            Caption = '...'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton5Click
          end
          object Label7: TLabel
            Left = 17
            Top = 109
            Width = 66
            Height = 13
            Caption = 'Tipo Rem'#233'dio'
          end
          object DBEditcodigo: TDBEdit
            Left = 16
            Top = 32
            Width = 57
            Height = 21
            DataField = 'ID_REMEDIO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 80
            Top = 32
            Width = 553
            Height = 21
            DataField = 'NOME_REMEDIO'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 16
            Top = 80
            Width = 65
            Height = 21
            DataField = 'QTDE'
            DataSource = DsCadastro
            TabOrder = 2
          end
          object DBEdit4: TDBEdit
            Left = 88
            Top = 80
            Width = 185
            Height = 21
            DataField = 'UNIDADEMEDIDA'
            DataSource = DsCadastro
            TabOrder = 3
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 280
            Top = 79
            Width = 321
            Height = 21
            DataField = 'ID_FORNECEDOR'
            DataSource = DsCadastro
            KeyField = 'ID_FORNECEDOR'
            ListField = 'FORNECEDOR'
            ListSource = DM.Dsfornecedor
            TabOrder = 4
          end
          object DBComboBox1: TDBComboBox
            Left = 17
            Top = 128
            Width = 209
            Height = 21
            DataField = 'tipo_remedio'
            DataSource = DsCadastro
            ItemHeight = 13
            Items.Strings = (
              ''
              'Controlado')
            TabOrder = 5
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelConsulta: TPanel
          Height = 402
          inherited DBGridConsulta: TDBGrid
            Height = 400
          end
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 496
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM remedio')
  end
end
