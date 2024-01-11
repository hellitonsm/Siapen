inherited FrmCadastroUnidadePenal: TFrmCadastroUnidadePenal
  Left = 204
  Top = 187
  Caption = 'Cadastro Unidade Penal'
  ClientHeight = 583
  ExplicitWidth = 948
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 532
    inherited ToolBarModeloCadastro: TToolBar
      Height = 391
      ExplicitHeight = 391
    end
    inherited DBNavigator1: TDBNavigator
      Top = 391
      Hints.Strings = ()
      ExplicitTop = 391
    end
  end
  inherited PanelModeloCadastro: TPanel
    Height = 532
    inherited Image2: TImage
      Width = 813
      ExplicitWidth = 813
    end
    inherited PageControlModeloCadastro: TPageControl
      Width = 821
      Height = 531
      ExplicitWidth = 698
      ExplicitHeight = 409
      inherited TabSheetCadastro: TTabSheet
        ExplicitWidth = 813
        ExplicitHeight = 503
        inherited PanelCadastro: TPanel
          Width = 813
          Height = 503
          ExplicitWidth = 690
          ExplicitHeight = 381
          object Label2: TLabel
            Left = 8
            Top = 8
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditcodigo
          end
          object Label3: TLabel
            Left = 56
            Top = 8
            Width = 70
            Height = 13
            Caption = 'Unidade Penal'
            FocusControl = DBEdit2
          end
          object Label4: TLabel
            Left = 160
            Top = 56
            Width = 46
            Height = 13
            Caption = 'Endere'#231'o'
            FocusControl = DBEdit3
          end
          object Label5: TLabel
            Left = 573
            Top = 56
            Width = 12
            Height = 13
            Caption = 'N'#186
            FocusControl = DBEdit4
          end
          object Label6: TLabel
            Left = 288
            Top = 104
            Width = 27
            Height = 13
            Caption = 'Bairro'
            FocusControl = DBEdit5
          end
          object Label7: TLabel
            Left = 8
            Top = 104
            Width = 64
            Height = 13
            Caption = 'Complemento'
            FocusControl = DBEdit6
          end
          object Label8: TLabel
            Left = 8
            Top = 152
            Width = 21
            Height = 13
            Caption = 'CEP'
            FocusControl = DBEditcep
          end
          object Label10: TLabel
            Left = 440
            Top = 152
            Width = 24
            Height = 13
            Caption = 'Fone'
            FocusControl = DBEditfone
          end
          object Label11: TLabel
            Left = 552
            Top = 152
            Width = 17
            Height = 13
            Caption = 'Fax'
            FocusControl = DBEditfax
          end
          object Label12: TLabel
            Left = 8
            Top = 200
            Width = 37
            Height = 13
            Caption = 'Contato'
            FocusControl = DBEdit11
          end
          object Label15: TLabel
            Left = 352
            Top = 200
            Width = 34
            Height = 13
            Caption = 'Regi'#227'o'
            FocusControl = DBEdit14
          end
          object Label14: TLabel
            Left = 123
            Top = 152
            Width = 33
            Height = 13
            Caption = 'Cidade'
          end
          object Label16: TLabel
            Left = 536
            Top = 8
            Width = 23
            Height = 13
            Caption = 'Sigla'
            FocusControl = dbedtSIGLA
          end
          object Label9: TLabel
            Left = 8
            Top = 248
            Width = 25
            Height = 13
            Caption = 'Email'
          end
          object Label13: TLabel
            Left = 8
            Top = 56
            Width = 27
            Height = 13
            Caption = 'CNPJ'
            FocusControl = DBEditCNPJ
          end
          object DBEditcodigo: TDBEdit
            Left = 8
            Top = 24
            Width = 41
            Height = 21
            DataField = 'ID_UP'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 56
            Top = 24
            Width = 473
            Height = 21
            DataField = 'NOME_UP'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 160
            Top = 72
            Width = 401
            Height = 21
            DataField = 'ENDERECO'
            DataSource = DsCadastro
            TabOrder = 4
          end
          object DBEdit4: TDBEdit
            Left = 573
            Top = 72
            Width = 84
            Height = 21
            DataField = 'NUMERO'
            DataSource = DsCadastro
            TabOrder = 5
          end
          object DBEdit5: TDBEdit
            Left = 288
            Top = 120
            Width = 374
            Height = 21
            DataField = 'BAIRRO'
            DataSource = DsCadastro
            TabOrder = 7
          end
          object DBEdit6: TDBEdit
            Left = 8
            Top = 120
            Width = 270
            Height = 21
            DataField = 'COMPLEMENTO'
            DataSource = DsCadastro
            TabOrder = 6
          end
          object DBEditcep: TDBEdit
            Left = 8
            Top = 168
            Width = 108
            Height = 21
            DataField = 'CEP'
            DataSource = DsCadastro
            TabOrder = 8
          end
          object DBEditfone: TDBEdit
            Left = 440
            Top = 168
            Width = 105
            Height = 21
            DataField = 'FONE'
            DataSource = DsCadastro
            TabOrder = 10
          end
          object DBEditfax: TDBEdit
            Left = 552
            Top = 168
            Width = 113
            Height = 21
            DataField = 'FAX'
            DataSource = DsCadastro
            TabOrder = 11
          end
          object DBEdit11: TDBEdit
            Left = 8
            Top = 216
            Width = 169
            Height = 21
            DataField = 'CONTATO'
            DataSource = DsCadastro
            TabOrder = 12
          end
          object DBEdit14: TDBEdit
            Left = 352
            Top = 216
            Width = 313
            Height = 21
            DataField = 'REGIAO'
            DataSource = DsCadastro
            TabOrder = 14
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 120
            Top = 168
            Width = 313
            Height = 21
            DataField = 'ID_CIDADE'
            DataSource = DsCadastro
            KeyField = 'ID_CIDADE'
            ListField = 'CIDADE'
            ListSource = DM.DSCIDADE
            TabOrder = 9
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 184
            Top = 196
            Width = 162
            Height = 41
            Caption = 'Capital'
            Columns = 2
            DataField = 'CAPITAL'
            DataSource = DsCadastro
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 13
            Values.Strings = (
              'S'
              'N')
          end
          object dbedtSIGLA: TDBEdit
            Left = 536
            Top = 24
            Width = 121
            Height = 21
            DataField = 'SIGLA'
            DataSource = DsCadastro
            TabOrder = 2
          end
          object DBRadioGroup2: TDBRadioGroup
            Left = 312
            Top = 247
            Width = 241
            Height = 40
            Caption = 'Gen'#234'ro'
            Columns = 3
            DataField = 'GENERO'
            DataSource = DsCadastro
            Items.Strings = (
              'Masculino'
              'Feminino'
              'Misto')
            TabOrder = 16
            Values.Strings = (
              'M'
              'F')
          end
          object DBRadioGroup3: TDBRadioGroup
            Left = 8
            Top = 295
            Width = 281
            Height = 40
            Caption = 'Regime'
            Columns = 3
            DataField = 'REGIME'
            DataSource = DsCadastro
            Items.Strings = (
              'ABERTO'
              'FECHADO'
              'SEMIABERTO')
            TabOrder = 17
            Values.Strings = (
              'M'
              'F')
          end
          object DBEditemail: TDBEdit
            Left = 8
            Top = 264
            Width = 297
            Height = 21
            CharCase = ecUpperCase
            DataField = 'email'
            DataSource = DsCadastro
            TabOrder = 15
          end
          object DBEditCNPJ: TDBEdit
            Left = 8
            Top = 72
            Width = 145
            Height = 21
            DataField = 'CNPJ'
            DataSource = DsCadastro
            TabOrder = 3
            OnExit = DBEditCNPJExit
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        ExplicitWidth = 813
        ExplicitHeight = 503
        inherited PanelLocalizaConsulta: TPanel
          Width = 690
          ExplicitWidth = 690
        end
        inherited PanelConsulta: TPanel
          Width = 690
          Height = 347
          ExplicitWidth = 690
          ExplicitHeight = 347
          inherited DBGridConsulta: TDBGrid
            Width = 688
            Height = 345
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    ExplicitWidth = 813
  end
  inherited StatusBar1: TStatusBar
    Top = 564
    ExplicitTop = 563
    ExplicitWidth = 936
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM UNIDADE_PENAL')
  end
end
