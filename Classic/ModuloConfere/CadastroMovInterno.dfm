inherited FrmCadastroMovInterno: TFrmCadastroMovInterno
  Height = 561
  Caption = 'Cadastro Movimenta'#231#227'o do Interno(a)'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 472
    inherited ToolBarModeloCadastro: TToolBar
      Height = 454
    end
    inherited DBNavigator1: TDBNavigator
      Top = 454
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Height = 472
    inherited PageControlModeloCadastro: TPageControl
      Height = 472
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Height = 444
          object Label2: TLabel
            Left = 16
            Top = 16
            Width = 96
            Height = 13
            Caption = 'ID_MOV_INTERNO'
            FocusControl = dbedtID_MOV_INTERNO
          end
          object Label3: TLabel
            Left = 120
            Top = 16
            Width = 66
            Height = 13
            Caption = 'ID_INTERNO'
            FocusControl = dbedtID_INTERNO
          end
          object Label4: TLabel
            Left = 16
            Top = 61
            Width = 107
            Height = 13
            Caption = 'ID_UNIDADE_PENAL'
            FocusControl = dbedtID_UNIDADE_PENAL
          end
          object Label5: TLabel
            Left = 288
            Top = 104
            Width = 118
            Height = 13
            Caption = 'TIPO_MOVIMENTACAO'
            FocusControl = dbedtTIPO_MOVIMENTACAO
          end
          object Label6: TLabel
            Left = 16
            Top = 104
            Width = 122
            Height = 13
            Caption = 'DATA_MOVIMENTACAO'
            FocusControl = dbedtDATA_MOVIMENTACAO
          end
          object Label7: TLabel
            Left = 152
            Top = 104
            Width = 124
            Height = 13
            Caption = 'HORA_MOVIMENTACAO'
            FocusControl = dbedtHORA_MOVIMENTACAO
          end
          object Label8: TLabel
            Left = 16
            Top = 144
            Width = 91
            Height = 13
            Caption = 'ID_FUNCIONARIO'
            FocusControl = dbedtID_FUNCIONARIO
          end
          object Label9: TLabel
            Left = 16
            Top = 185
            Width = 94
            Height = 13
            Caption = 'ID_PROCEDENCIA'
            FocusControl = dbedtID_PROCEDENCIA
          end
          object Label10: TLabel
            Left = 16
            Top = 227
            Width = 65
            Height = 13
            Caption = 'ID_DESTINO'
            FocusControl = dbedtID_DESTINO
          end
          object Label11: TLabel
            Left = 200
            Top = 16
            Width = 49
            Height = 13
            Caption = 'INTERNO'
          end
          object Label12: TLabel
            Left = 136
            Top = 64
            Width = 87
            Height = 13
            Caption = 'UNIDADE PENAL'
          end
          object Label13: TLabel
            Left = 120
            Top = 144
            Width = 56
            Height = 13
            Caption = 'SERVIDOR'
          end
          object Label14: TLabel
            Left = 121
            Top = 185
            Width = 77
            Height = 13
            Caption = 'PROCED'#202'NCIA'
          end
          object Label15: TLabel
            Left = 97
            Top = 227
            Width = 48
            Height = 13
            Caption = 'DESTINO'
          end
          object dbedtID_MOV_INTERNO: TDBEdit
            Left = 16
            Top = 32
            Width = 97
            Height = 21
            DataField = 'ID_MOV_INTERNO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object dbedtID_INTERNO: TDBEdit
            Left = 120
            Top = 32
            Width = 73
            Height = 21
            DataField = 'ID_INTERNO'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object dbedtID_UNIDADE_PENAL: TDBEdit
            Left = 16
            Top = 77
            Width = 113
            Height = 21
            DataField = 'ID_UNIDADE_PENAL'
            DataSource = DsCadastro
            TabOrder = 3
          end
          object dbedtTIPO_MOVIMENTACAO: TDBEdit
            Left = 288
            Top = 120
            Width = 394
            Height = 21
            DataField = 'TIPO_MOVIMENTACAO'
            DataSource = DsCadastro
            TabOrder = 7
          end
          object dbedtDATA_MOVIMENTACAO: TDBEdit
            Left = 16
            Top = 120
            Width = 129
            Height = 21
            DataField = 'DATA_MOVIMENTACAO'
            DataSource = DsCadastro
            TabOrder = 5
          end
          object dbedtHORA_MOVIMENTACAO: TDBEdit
            Left = 152
            Top = 120
            Width = 129
            Height = 21
            DataField = 'HORA_MOVIMENTACAO'
            DataSource = DsCadastro
            TabOrder = 6
          end
          object dbedtID_FUNCIONARIO: TDBEdit
            Left = 16
            Top = 160
            Width = 97
            Height = 21
            DataField = 'ID_FUNCIONARIO'
            DataSource = DsCadastro
            TabOrder = 8
          end
          object dbedtID_PROCEDENCIA: TDBEdit
            Left = 16
            Top = 201
            Width = 97
            Height = 21
            DataField = 'ID_PROCEDENCIA'
            DataSource = DsCadastro
            TabOrder = 10
          end
          object dbedtID_DESTINO: TDBEdit
            Left = 16
            Top = 243
            Width = 73
            Height = 21
            DataField = 'ID_DESTINO'
            DataSource = DsCadastro
            TabOrder = 12
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 200
            Top = 32
            Width = 457
            Height = 21
            TabOrder = 2
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 136
            Top = 77
            Width = 521
            Height = 21
            TabOrder = 4
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 120
            Top = 160
            Width = 537
            Height = 21
            TabOrder = 9
          end
          object DBLookupComboBox4: TDBLookupComboBox
            Left = 120
            Top = 201
            Width = 505
            Height = 21
            TabOrder = 11
          end
          object DBLookupComboBox5: TDBLookupComboBox
            Left = 96
            Top = 243
            Width = 529
            Height = 21
            TabOrder = 13
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelConsulta: TPanel
          Height = 376
          inherited DBGridConsulta: TDBGrid
            Height = 374
          end
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 504
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM MOV_INTERNO')
  end
  inherited CdsCadastro: TClientDataSet
    object intgrfldCdsCadastroID_MOV_INTERNO: TIntegerField
      FieldName = 'ID_MOV_INTERNO'
      Required = True
    end
    object intgrfldCdsCadastroID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
      Required = True
    end
    object intgrfldCdsCadastroID_UNIDADE_PENAL: TIntegerField
      FieldName = 'ID_UNIDADE_PENAL'
      Required = True
    end
    object strngfldCdsCadastroTIPO_MOVIMENTACAO: TStringField
      FieldName = 'TIPO_MOVIMENTACAO'
      Size = 30
    end
    object CdsCadastroDATA_MOVIMENTACAO: TSQLTimeStampField
      FieldName = 'DATA_MOVIMENTACAO'
    end
    object CdsCadastroHORA_MOVIMENTACAO: TSQLTimeStampField
      FieldName = 'HORA_MOVIMENTACAO'
    end
    object intgrfldCdsCadastroID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object intgrfldCdsCadastroID_PROCEDENCIA: TIntegerField
      FieldName = 'ID_PROCEDENCIA'
    end
    object intgrfldCdsCadastroID_DESTINO: TIntegerField
      FieldName = 'ID_DESTINO'
    end
  end
end
