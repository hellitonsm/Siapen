inherited FrmCadastroSetorTrabalho: TFrmCadastroSetorTrabalho
  Caption = 'Cadastro Setor Trabalho'
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
            Left = 96
            Top = 16
            Width = 70
            Height = 13
            Caption = 'Setor Trabalho'
            FocusControl = DBEdit2
          end
          object Label4: TLabel
            Left = 16
            Top = 56
            Width = 46
            Height = 13
            Caption = 'Endere'#231'o'
            FocusControl = DBEdit1
          end
          object Label5: TLabel
            Left = 16
            Top = 144
            Width = 33
            Height = 13
            Caption = 'Cidade'
          end
          object Label6: TLabel
            Left = 520
            Top = 96
            Width = 21
            Height = 13
            Caption = 'CEP'
            FocusControl = DBEdit4
          end
          object Label7: TLabel
            Left = 416
            Top = 55
            Width = 27
            Height = 13
            Caption = 'Bairro'
            FocusControl = DBEdit5
          end
          object Label8: TLabel
            Left = 16
            Top = 97
            Width = 64
            Height = 13
            Caption = 'Complemento'
            FocusControl = DBEdit6
          end
          object Label9: TLabel
            Left = 342
            Top = 142
            Width = 62
            Height = 13
            Caption = 'Respons'#225'vel'
            FocusControl = DBEdit7
          end
          object Label10: TLabel
            Left = 440
            Top = 16
            Width = 27
            Height = 13
            Caption = 'CNPJ'
            FocusControl = DBEditCNPJ
          end
          object SpeedButton5: TSpeedButton
            Left = 312
            Top = 156
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
            Width = 73
            Height = 21
            DataField = 'ID_SETOR_TRABALHO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 96
            Top = 32
            Width = 337
            Height = 21
            DataField = 'SETOR_TRABALHO'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object DBEdit1: TDBEdit
            Left = 16
            Top = 72
            Width = 393
            Height = 21
            DataField = 'ENDERECO'
            DataSource = DsCadastro
            TabOrder = 3
          end
          object DBEdit4: TDBEdit
            Left = 520
            Top = 112
            Width = 121
            Height = 21
            DataField = 'CEP'
            DataSource = DsCadastro
            TabOrder = 6
          end
          object DBEdit5: TDBEdit
            Left = 416
            Top = 71
            Width = 225
            Height = 21
            DataField = 'BAIRRO'
            DataSource = DsCadastro
            TabOrder = 4
          end
          object DBEdit6: TDBEdit
            Left = 16
            Top = 113
            Width = 489
            Height = 21
            DataField = 'COMPLEMENTO'
            DataSource = DsCadastro
            TabOrder = 5
          end
          object DBEdit7: TDBEdit
            Left = 342
            Top = 158
            Width = 300
            Height = 21
            DataField = 'RESPONSAVEL'
            DataSource = DsCadastro
            TabOrder = 8
          end
          object DBEditCNPJ: TDBEdit
            Left = 440
            Top = 32
            Width = 201
            Height = 21
            DataField = 'CNPJ'
            DataSource = DsCadastro
            TabOrder = 2
            OnExit = DBEditCNPJExit
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 16
            Top = 158
            Width = 289
            Height = 21
            DataField = 'ID_CIDADE'
            DataSource = DsCadastro
            KeyField = 'ID_CIDADE'
            ListField = 'CIDADE'
            ListSource = DM.DSCIDADE
            TabOrder = 7
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 669
        end
        inherited PanelConsulta: TPanel
          Width = 669
          Height = 322
          inherited DBGridConsulta: TDBGrid
            Width = 667
            Height = 320
          end
        end
      end
    end
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM Setor_trabalho')
    Left = 544
    Top = 8
  end
  inherited DspCadastro: TDataSetProvider
    Left = 572
    Top = 8
  end
  inherited CdsCadastro: TClientDataSet
    Left = 600
    Top = 8
    object CdsCadastroID_SETOR_TRABALHO: TIntegerField
      FieldName = 'ID_SETOR_TRABALHO'
      Required = True
    end
    object CdsCadastroSETOR_TRABALHO: TStringField
      FieldName = 'SETOR_TRABALHO'
      Size = 50
    end
    object CdsCadastroENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object CdsCadastroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object CdsCadastroCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object CdsCadastroBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object CdsCadastroCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
    object CdsCadastroRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 50
    end
    object CdsCadastroCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 30
    end
  end
  inherited DsCadastro: TDataSource
    Left = 628
    Top = 8
  end
end
