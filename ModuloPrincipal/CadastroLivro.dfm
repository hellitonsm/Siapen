inherited FrmCadastroLivro: TFrmCadastroLivro
  Left = 261
  Top = 162
  Caption = 'Cadastro Livro/Revista'
  ClientHeight = 584
  ExplicitHeight = 622
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 533
    ExplicitHeight = 532
    inherited ToolBarModeloCadastro: TToolBar
      Height = 515
      ExplicitHeight = 514
    end
    inherited DBNavigator1: TDBNavigator
      Top = 515
      Hints.Strings = ()
      ExplicitTop = 514
    end
  end
  inherited PanelModeloCadastro: TPanel
    Height = 533
    ExplicitHeight = 532
    inherited PageControlModeloCadastro: TPageControl
      Height = 533
      ExplicitHeight = 532
      inherited TabSheetCadastro: TTabSheet
        ExplicitHeight = 505
        inherited PanelCadastro: TPanel
          Height = 505
          ExplicitHeight = 505
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
            Width = 64
            Height = 13
            Caption = 'Livro/Revista'
            FocusControl = DBEdit2
          end
          object Label4: TLabel
            Left = 344
            Top = 156
            Width = 54
            Height = 13
            Caption = 'Fornecedor'
          end
          object SpeedButton5: TSpeedButton
            Left = 612
            Top = 169
            Width = 23
            Height = 22
            Hint = 'Cadastrar Fornecedor'
            Caption = '...'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton5Click
          end
          object Label5: TLabel
            Left = 12
            Top = 68
            Width = 25
            Height = 13
            Caption = 'Autor'
            FocusControl = DBEdit1
          end
          object Label6: TLabel
            Left = 344
            Top = 64
            Width = 23
            Height = 13
            Caption = 'CDD'
            FocusControl = DBEdit3
          end
          object Label7: TLabel
            Left = 12
            Top = 116
            Width = 35
            Height = 13
            Caption = 'Genero'
            FocusControl = DBEdit4
          end
          object Label8: TLabel
            Left = 12
            Top = 156
            Width = 94
            Height = 13
            Caption = 'N'#250'mero de volumes'
            FocusControl = edtNumVolumes
          end
          object Label9: TLabel
            Left = 160
            Top = 156
            Width = 108
            Height = 13
            Caption = 'N'#250'mero de exemplares'
            FocusControl = EdtNumExemplares
          end
          object Label11: TLabel
            Left = 344
            Top = 112
            Width = 70
            Height = 13
            Caption = 'C'#243'digo do livro'
            FocusControl = DBEdit8
          end
          object DBEditcodigo: TDBEdit
            Left = 16
            Top = 32
            Width = 57
            Height = 21
            DataField = 'ID_LIVRO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 80
            Top = 32
            Width = 377
            Height = 21
            DataField = 'LIVRO'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 344
            Top = 171
            Width = 269
            Height = 21
            DataField = 'ID_FORNECEDOR'
            DataSource = DsCadastro
            KeyField = 'ID_FORNECEDOR'
            ListField = 'FORNECEDOR'
            ListSource = DM.Dsfornecedor
            TabOrder = 9
          end
          object DBEdit1: TDBEdit
            Left = 12
            Top = 80
            Width = 313
            Height = 21
            DataField = 'AUTOR'
            DataSource = DsCadastro
            TabOrder = 3
          end
          object DBEdit3: TDBEdit
            Left = 344
            Top = 80
            Width = 288
            Height = 21
            DataField = 'CDD'
            DataSource = DsCadastro
            TabOrder = 4
          end
          object DBEdit4: TDBEdit
            Left = 12
            Top = 128
            Width = 313
            Height = 21
            DataField = 'GENERO'
            DataSource = DsCadastro
            TabOrder = 5
          end
          object edtNumVolumes: TDBEdit
            Left = 12
            Top = 172
            Width = 134
            Height = 21
            DataField = 'NUMERO_VOLUMES'
            DataSource = DsCadastro
            TabOrder = 7
          end
          object EdtNumExemplares: TDBEdit
            Left = 160
            Top = 172
            Width = 134
            Height = 21
            DataField = 'NUMERO_EXEMPLARES'
            DataSource = DsCadastro
            TabOrder = 8
          end
          object DBEdit8: TDBEdit
            Left = 344
            Top = 128
            Width = 100
            Height = 21
            DataField = 'CODIGO_LIVRO'
            DataSource = DsCadastro
            TabOrder = 6
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 468
            Top = 4
            Width = 157
            Height = 49
            Caption = 'Selecionar'
            DataField = 'LIVRO_REVISTA'
            DataSource = DsCadastro
            Items.Strings = (
              'Livro'
              'Revista')
            TabOrder = 2
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        ExplicitHeight = 505
        inherited PanelConsulta: TPanel
          Height = 471
          ExplicitHeight = 470
          inherited DBGridConsulta: TDBGrid
            Height = 469
          end
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 565
    ExplicitTop = 564
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM LIVRO where id_up = :id_up')
    Left = 600
    Top = 200
    ParamData = <
      item
        Name = 'id_up'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object SqlCadastroID_LIVRO: TIntegerField
      FieldName = 'ID_LIVRO'
      Required = True
    end
    object SqlCadastroLIVRO: TStringField
      FieldName = 'LIVRO'
      Size = 200
    end
    object SqlCadastroAUTOR: TStringField
      FieldName = 'AUTOR'
      Size = 200
    end
    object SqlCadastroCDD: TStringField
      FieldName = 'CDD'
      Size = 100
    end
    object SqlCadastroGENERO: TStringField
      FieldName = 'GENERO'
      Size = 200
    end
    object SqlCadastroNUMERO_VOLUMES: TIntegerField
      FieldName = 'NUMERO_VOLUMES'
    end
    object SqlCadastroNUMERO_EXEMPLARES: TIntegerField
      FieldName = 'NUMERO_EXEMPLARES'
    end
    object SqlCadastroLIVRO_REVISTA: TStringField
      FieldName = 'LIVRO_REVISTA'
      Size = 100
    end
    object SqlCadastroCODIGO_LIVRO: TStringField
      FieldName = 'CODIGO_LIVRO'
      Size = 100
    end
    object SqlCadastroID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object SqlCadastroUTILIZADO: TIntegerField
      FieldName = 'UTILIZADO'
    end
    object SqlCadastroID_UP: TIntegerField
      FieldName = 'ID_UP'
    end
  end
  inherited DspCadastro: TDataSetProvider
    Left = 624
    Top = 200
  end
  inherited CdsCadastro: TClientDataSet
    Left = 652
    Top = 200
    object CdsCadastroID_LIVRO: TIntegerField
      FieldName = 'ID_LIVRO'
      Required = True
    end
    object CdsCadastroLIVRO: TStringField
      FieldName = 'LIVRO'
      Size = 200
    end
    object CdsCadastroAUTOR: TStringField
      FieldName = 'AUTOR'
      Size = 200
    end
    object CdsCadastroCDD: TStringField
      FieldName = 'CDD'
      Size = 100
    end
    object CdsCadastroGENERO: TStringField
      FieldName = 'GENERO'
      Size = 200
    end
    object CdsCadastroNUMERO_VOLUMES: TIntegerField
      FieldName = 'NUMERO_VOLUMES'
    end
    object CdsCadastroNUMERO_EXEMPLARES: TIntegerField
      FieldName = 'NUMERO_EXEMPLARES'
    end
    object CdsCadastroLIVRO_REVISTA: TStringField
      FieldName = 'LIVRO_REVISTA'
      Size = 100
    end
    object CdsCadastroCODIGO_LIVRO: TStringField
      FieldName = 'CODIGO_LIVRO'
      Size = 100
    end
    object CdsCadastroID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object CdsCadastroUTILIZADO: TIntegerField
      FieldName = 'UTILIZADO'
    end
    object CdsCadastroID_UP: TIntegerField
      FieldName = 'ID_UP'
    end
  end
  inherited DsCadastro: TDataSource
    Left = 680
    Top = 200
  end
end
