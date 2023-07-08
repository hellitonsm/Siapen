inherited FrmCadastroFornecedor: TFrmCadastroFornecedor
  Left = 376
  Top = 144
  Width = 811
  Caption = 'Cadastro Fornecedor'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 680
    inherited PageControlModeloCadastro: TPageControl
      Width = 680
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 672
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
            Width = 54
            Height = 13
            Caption = 'Fornecedor'
            FocusControl = DBEdit2
          end
          object Label4: TLabel
            Left = 16
            Top = 100
            Width = 46
            Height = 13
            Caption = 'Endere'#231'o'
            FocusControl = DBEdit3
          end
          object Label5: TLabel
            Left = 408
            Top = 100
            Width = 27
            Height = 13
            Caption = 'Bairro'
            FocusControl = DBEdit4
          end
          object Label6: TLabel
            Left = 16
            Top = 148
            Width = 64
            Height = 13
            Caption = 'Complemento'
            FocusControl = DBEdit5
          end
          object Label7: TLabel
            Left = 224
            Top = 148
            Width = 21
            Height = 13
            Caption = 'CEP'
            FocusControl = DBEditcep
          end
          object Label8: TLabel
            Left = 344
            Top = 148
            Width = 33
            Height = 13
            Caption = 'Cidade'
          end
          object Label9: TLabel
            Left = 16
            Top = 56
            Width = 27
            Height = 13
            Caption = 'CNPJ'
            FocusControl = DBEditCNPJ
          end
          object Label10: TLabel
            Left = 224
            Top = 56
            Width = 56
            Height = 13
            Caption = 'TELEFONE'
            FocusControl = DBEdittelefone
          end
          object Label11: TLabel
            Left = 424
            Top = 56
            Width = 52
            Height = 13
            Caption = 'CONTATO'
            FocusControl = DBEdit10
          end
          object SpeedButton5: TSpeedButton
            Left = 616
            Top = 161
            Width = 23
            Height = 22
            Hint = 'Cadastrar Cidade'
            Caption = '...'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton5Click
          end
          object DBEditcodigo: TDBEdit
            Left = 16
            Top = 32
            Width = 57
            Height = 21
            DataField = 'ID_FORNECEDOR'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 80
            Top = 32
            Width = 561
            Height = 21
            DataField = 'FORNECEDOR'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 16
            Top = 116
            Width = 377
            Height = 21
            DataField = 'ENDERECO'
            DataSource = DsCadastro
            TabOrder = 5
          end
          object DBEdit4: TDBEdit
            Left = 408
            Top = 116
            Width = 233
            Height = 21
            DataField = 'BAIRRO'
            DataSource = DsCadastro
            TabOrder = 6
          end
          object DBEdit5: TDBEdit
            Left = 16
            Top = 164
            Width = 200
            Height = 21
            DataField = 'COMPLEMENTO'
            DataSource = DsCadastro
            TabOrder = 7
          end
          object DBEditcep: TDBEdit
            Left = 224
            Top = 164
            Width = 108
            Height = 21
            DataField = 'CEP'
            DataSource = DsCadastro
            TabOrder = 8
          end
          object DBEditCNPJ: TDBEdit
            Left = 16
            Top = 72
            Width = 201
            Height = 21
            DataField = 'CNPJ'
            DataSource = DsCadastro
            TabOrder = 2
            OnExit = DBEditCNPJExit
          end
          object DBEdittelefone: TDBEdit
            Left = 224
            Top = 72
            Width = 193
            Height = 21
            DataField = 'TELEFONE'
            DataSource = DsCadastro
            TabOrder = 3
          end
          object DBEdit10: TDBEdit
            Left = 424
            Top = 72
            Width = 217
            Height = 21
            DataField = 'CONTATO'
            DataSource = DsCadastro
            TabOrder = 4
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 344
            Top = 163
            Width = 265
            Height = 21
            DataField = 'ID_CIDADE'
            DataSource = DsCadastro
            KeyField = 'ID_CIDADE'
            ListField = 'CIDADE'
            ListSource = DM.DSCIDADE
            TabOrder = 9
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 672
        end
        inherited PanelConsulta: TPanel
          Width = 672
          inherited DBGridConsulta: TDBGrid
            Width = 670
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 795
    inherited Image2: TImage
      Width = 795
    end
  end
  inherited StatusBar1: TStatusBar
    Width = 795
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM fornecedor')
  end
end
