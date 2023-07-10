inherited FrmCadastroLocalTrabalho: TFrmCadastroLocalTrabalho
  Caption = 'Local Trabalho'
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
            Left = 16
            Top = 16
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditcodigo
          end
          object Label3: TLabel
            Left = 104
            Top = 16
            Width = 71
            Height = 13
            Caption = 'Local Trabalho'
            FocusControl = DBEdit2
          end
          object Label4: TLabel
            Left = 16
            Top = 64
            Width = 46
            Height = 13
            Caption = 'Endere'#231'o'
            FocusControl = DBEdit3
          end
          object Label6: TLabel
            Left = 200
            Top = 112
            Width = 21
            Height = 13
            Caption = 'CEP'
            FocusControl = DBEdit5
          end
          object Label7: TLabel
            Left = 416
            Top = 64
            Width = 27
            Height = 13
            Caption = 'Bairro'
            FocusControl = DBEdit6
          end
          object Label8: TLabel
            Left = 16
            Top = 112
            Width = 64
            Height = 13
            Caption = 'Complemento'
            FocusControl = DBEdit7
          end
          object Label9: TLabel
            Left = 421
            Top = 160
            Width = 62
            Height = 13
            Caption = 'Respons'#225'vel'
            FocusControl = DBEdit8
          end
          object Label10: TLabel
            Left = 456
            Top = 16
            Width = 27
            Height = 13
            Caption = 'CNPJ'
            FocusControl = DBEdit9
          end
          object Label11: TLabel
            Left = 312
            Top = 114
            Width = 33
            Height = 13
            Caption = 'Cidade'
          end
          object SpeedButton5: TSpeedButton
            Left = 608
            Top = 126
            Width = 23
            Height = 22
            Hint = 'Cadastrar Cidade'
            Caption = '...'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton5Click
          end
          object Label5: TLabel
            Left = 16
            Top = 160
            Width = 42
            Height = 13
            Caption = 'Telefone'
            FocusControl = DBEdit1
          end
          object Label12: TLabel
            Left = 144
            Top = 160
            Width = 82
            Height = 13
            Caption = 'Telefone (Outros)'
            FocusControl = DBEdit4
          end
          object Label13: TLabel
            Left = 288
            Top = 160
            Width = 32
            Height = 13
            Caption = 'Celular'
            FocusControl = DBEdit10
          end
          object DBEditcodigo: TDBEdit
            Left = 16
            Top = 32
            Width = 81
            Height = 21
            DataField = 'ID_LOCAL_TRABALHO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 104
            Top = 32
            Width = 345
            Height = 21
            DataField = 'LOCAL_TRABALHO'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 16
            Top = 80
            Width = 393
            Height = 21
            DataField = 'ENDERECO'
            DataSource = DsCadastro
            TabOrder = 3
          end
          object DBEdit5: TDBEdit
            Left = 200
            Top = 128
            Width = 108
            Height = 21
            DataField = 'CEP'
            DataSource = DsCadastro
            TabOrder = 6
          end
          object DBEdit6: TDBEdit
            Left = 416
            Top = 80
            Width = 217
            Height = 21
            DataField = 'BAIRRO'
            DataSource = DsCadastro
            TabOrder = 4
          end
          object DBEdit7: TDBEdit
            Left = 16
            Top = 128
            Width = 177
            Height = 21
            DataField = 'COMPLEMENTO'
            DataSource = DsCadastro
            TabOrder = 5
          end
          object DBEdit8: TDBEdit
            Left = 422
            Top = 175
            Width = 211
            Height = 21
            DataField = 'RESPONSAVEL'
            DataSource = DsCadastro
            TabOrder = 11
          end
          object DBEdit9: TDBEdit
            Left = 456
            Top = 32
            Width = 177
            Height = 21
            DataField = 'CNPJ'
            DataSource = DsCadastro
            TabOrder = 2
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 312
            Top = 128
            Width = 289
            Height = 21
            DataField = 'ID_CIDADE'
            DataSource = DsCadastro
            KeyField = 'ID_CIDADE'
            ListField = 'CIDADE'
            ListSource = DM.DSCIDADE
            TabOrder = 7
          end
          object DBEdit1: TDBEdit
            Left = 16
            Top = 176
            Width = 121
            Height = 21
            DataField = 'TELEFONE'
            DataSource = DsCadastro
            TabOrder = 8
          end
          object DBEdit4: TDBEdit
            Left = 144
            Top = 176
            Width = 137
            Height = 21
            DataField = 'TELEFONE1'
            DataSource = DsCadastro
            TabOrder = 9
          end
          object DBEdit10: TDBEdit
            Left = 288
            Top = 176
            Width = 129
            Height = 21
            DataField = 'CELULAR'
            DataSource = DsCadastro
            TabOrder = 10
          end
        end
      end
    end
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM local_trabalho')
  end
end
