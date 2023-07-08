inherited frmCadastroInterno: TfrmCadastroInterno
  Left = 247
  Top = 191
  Width = 515
  Height = 375
  Caption = 'Cadastro de Interno'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 297
    inherited ToolBarModeloCadastro: TToolBar
      Height = 279
    end
    inherited DBNavigator1: TDBNavigator
      Top = 279
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 392
    Height = 297
    inherited PageControlModeloCadastro: TPageControl
      Width = 392
      Height = 297
      ActivePage = TabSheetConsulta
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 384
          Height = 269
          object Label2: TLabel
            Left = 4
            Top = 20
            Width = 59
            Height = 13
            Caption = 'Id do interno'
            FocusControl = edtIdInterno
          end
          object Label4: TLabel
            Left = 124
            Top = 20
            Width = 14
            Height = 13
            Caption = 'UF'
          end
          object Label5: TLabel
            Left = 4
            Top = 100
            Width = 39
            Height = 13
            Caption = 'Alcunha'
            FocusControl = DBEdit4
          end
          object Label6: TLabel
            Left = 222
            Top = 19
            Width = 97
            Height = 13
            Caption = 'Data de Nascimento'
          end
          object Label3: TLabel
            Left = 4
            Top = 64
            Width = 28
            Height = 13
            Caption = 'Nome'
            FocusControl = edtNomeInterno
          end
          object Label7: TLabel
            Left = 4
            Top = 140
            Width = 72
            Height = 13
            Caption = 'Mae do Interno'
            FocusControl = DBEdit4
          end
          object edtIdInterno: TDBEdit
            Left = 4
            Top = 36
            Width = 85
            Height = 21
            DataField = 'ID_INTERNO_INCLUSAO'
            DataSource = DsCadastro
            TabOrder = 0
          end
          object DBEdit4: TDBEdit
            Left = 4
            Top = 116
            Width = 315
            Height = 21
            DataField = 'ALCUNHA'
            DataSource = DsCadastro
            TabOrder = 4
          end
          object DBEdit3: TDBEdit
            Left = 222
            Top = 35
            Width = 97
            Height = 21
            DataField = 'DATA_NASCIMENTO'
            DataSource = DsCadastro
            TabOrder = 2
          end
          object edtNomeInterno: TDBEdit
            Left = 4
            Top = 76
            Width = 315
            Height = 21
            DataField = 'NOME_INTERNO'
            DataSource = DsCadastro
            TabOrder = 3
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 124
            Top = 36
            Width = 73
            Height = 21
            DataField = 'ID_ESTADO'
            DataSource = DsCadastro
            KeyField = 'ID_ESTADO'
            ListField = 'UF'
            ListSource = DM.dsestado
            TabOrder = 1
          end
          object DBEdit1: TDBEdit
            Left = 4
            Top = 152
            Width = 315
            Height = 21
            DataField = 'MAE_INTERNO'
            DataSource = DsCadastro
            TabOrder = 5
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 384
        end
        inherited PanelConsulta: TPanel
          Width = 384
          Height = 235
          inherited DBGridConsulta: TDBGrid
            Width = 382
            Height = 233
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_INTERNO_INCLUSAO'
                Title.Caption = 'Id Interno'
                Width = 51
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_INTERNO'
                Title.Caption = 'Nome Interno'
                Width = 213
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ALCUNHA'
                Title.Caption = 'Alcunha'
                Width = 132
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_NASCIMENTO'
                Title.Caption = 'Data Nasc'
                Width = 61
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MAE_INTERNO'
                Title.Caption = 'Mae Interno'
                Width = 230
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Estado'
                Width = 37
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_ESTADO'
                Title.Caption = 'Id Estado'
                Width = 47
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 507
    inherited Image2: TImage
      Width = 507
    end
    inherited LabelTitulo: TLabel
      Width = 197
      Caption = 'Cadastro de Internos'
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 329
    Width = 507
  end
  inherited ImageListCadastro: TImageList
    Left = 364
    Top = 16
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM INTERNO_INCLUSAO')
    Left = 344
    Top = 220
    object SqlCadastroID_INTERNO_INCLUSAO: TIntegerField
      FieldName = 'ID_INTERNO_INCLUSAO'
      Required = True
    end
    object SqlCadastroALCUNHA: TStringField
      FieldName = 'ALCUNHA'
      Size = 50
    end
    object SqlCadastroDATA_NASCIMENTO: TSQLTimeStampField
      FieldName = 'DATA_NASCIMENTO'
    end
    object SqlCadastroNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 50
    end
    object SqlCadastroID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
    end
    object SqlCadastroMAE_INTERNO: TStringField
      FieldName = 'MAE_INTERNO'
      Size = 100
    end
  end
  inherited DspCadastro: TDataSetProvider
    Left = 372
    Top = 220
  end
  inherited CdsCadastro: TClientDataSet
    Left = 400
    Top = 220
    object CdsCadastroID_INTERNO_INCLUSAO: TIntegerField
      FieldName = 'ID_INTERNO_INCLUSAO'
      Required = True
    end
    object CdsCadastroALCUNHA: TStringField
      FieldName = 'ALCUNHA'
      Size = 50
    end
    object CdsCadastroDATA_NASCIMENTO: TSQLTimeStampField
      FieldName = 'DATA_NASCIMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object CdsCadastroNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 50
    end
    object CdsCadastroID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
    end
    object CdsCadastroMAE_INTERNO: TStringField
      FieldName = 'MAE_INTERNO'
      Size = 100
    end
    object CdsCadastroEstado: TStringField
      FieldKind = fkLookup
      FieldName = 'Estado'
      LookupDataSet = DM.cdsestado
      LookupKeyFields = 'ID_ESTADO'
      LookupResultField = 'UF'
      KeyFields = 'ID_ESTADO'
      Lookup = True
    end
  end
  inherited DsCadastro: TDataSource
    Left = 428
    Top = 220
  end
end
