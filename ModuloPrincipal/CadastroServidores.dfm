inherited FrmCadastroServidores: TFrmCadastroServidores
  Caption = 'Cadastro Servidores'
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
            Width = 49
            Height = 13
            Caption = 'ID_FUNC.'
            FocusControl = dbedtID_FUNCIONARIO
          end
          object Label3: TLabel
            Left = 72
            Top = 16
            Width = 32
            Height = 13
            Caption = 'NOME'
            FocusControl = dbedtNOME_FUNCIONARIO
          end
          object Label4: TLabel
            Left = 8
            Top = 64
            Width = 62
            Height = 13
            Caption = 'MATR'#205'CULA'
            FocusControl = dbedtMATRICULA
          end
          object Label5: TLabel
            Left = 168
            Top = 112
            Width = 37
            Height = 13
            Caption = 'SENHA'
            FocusControl = dbedtSENHA
          end
          object Label6: TLabel
            Left = 168
            Top = 64
            Width = 20
            Height = 13
            Caption = 'CPF'
            FocusControl = DBEditCPF
          end
          object Label7: TLabel
            Left = 320
            Top = 64
            Width = 42
            Height = 13
            Caption = 'ID_FUN.'
            FocusControl = dbedtID_FUNCAO
          end
          object Label8: TLabel
            Left = 376
            Top = 64
            Width = 44
            Height = 13
            Caption = 'FUN'#199#195'O'
          end
          object Label9: TLabel
            Left = 8
            Top = 112
            Width = 33
            Height = 13
            Caption = 'LOGIN'
            FocusControl = DBEdit1
          end
          object dbedtID_FUNCIONARIO: TDBEdit
            Left = 8
            Top = 32
            Width = 57
            Height = 21
            DataField = 'ID_FUNCIONARIO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object dbedtNOME_FUNCIONARIO: TDBEdit
            Left = 72
            Top = 32
            Width = 577
            Height = 21
            DataField = 'NOME_FUNCIONARIO'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object dbedtMATRICULA: TDBEdit
            Left = 8
            Top = 80
            Width = 153
            Height = 21
            DataField = 'MATRICULA'
            DataSource = DsCadastro
            TabOrder = 2
          end
          object dbedtSENHA: TDBEdit
            Left = 168
            Top = 128
            Width = 153
            Height = 21
            DataField = 'SENHA'
            DataSource = DsCadastro
            PasswordChar = '@'
            TabOrder = 7
          end
          object DBEditCPF: TDBEdit
            Left = 168
            Top = 80
            Width = 147
            Height = 21
            DataField = 'CPF'
            DataSource = DsCadastro
            TabOrder = 3
            OnExit = DBEditCPFExit
          end
          object dbedtID_FUNCAO: TDBEdit
            Left = 320
            Top = 80
            Width = 49
            Height = 21
            DataField = 'ID_FUNCAO'
            DataSource = DsCadastro
            TabOrder = 4
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 376
            Top = 80
            Width = 273
            Height = 21
            TabOrder = 5
          end
          object DBEdit1: TDBEdit
            Left = 8
            Top = 128
            Width = 153
            Height = 21
            DataField = 'LOGIN'
            DataSource = DsCadastro
            TabOrder = 6
          end
        end
      end
    end
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM FUNCIONARIO')
  end
  inherited CdsCadastro: TClientDataSet
    object intgrfldCdsCadastroID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      Required = True
    end
    object strngfldCdsCadastroNOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      Size = 50
    end
    object strngfldCdsCadastroMATRICULA: TStringField
      FieldName = 'MATRICULA'
      Size = 30
    end
    object strngfldCdsCadastroSENHA: TStringField
      FieldName = 'SENHA'
      Size = 30
    end
    object strngfldCdsCadastroCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object intgrfldCdsCadastroID_FUNCAO: TIntegerField
      FieldName = 'ID_FUNCAO'
    end
    object CdsCadastroLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 30
    end
  end
end
