inherited FrmMedicacaoInterno: TFrmMedicacaoInterno
  Left = 173
  Top = 188
  Height = 512
  Caption = 'Medica'#231#227'o Interno'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 423
    inherited ToolBarModeloCadastro: TToolBar
      Height = 405
    end
    inherited DBNavigator1: TDBNavigator
      Top = 405
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Height = 423
    inherited PageControlModeloCadastro: TPageControl
      Height = 423
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Height = 395
          object Label2: TLabel
            Left = 16
            Top = 8
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditcodigo
          end
          object Label3: TLabel
            Left = 72
            Top = 8
            Width = 23
            Height = 13
            Caption = 'Data'
            FocusControl = DBEditdata
          end
          object Label4: TLabel
            Left = 16
            Top = 104
            Width = 41
            Height = 13
            Caption = 'Hist'#243'rico'
          end
          object Label5: TLabel
            Left = 168
            Top = 8
            Width = 33
            Height = 13
            Caption = 'Interno'
          end
          object Label6: TLabel
            Left = 16
            Top = 56
            Width = 42
            Height = 13
            Caption = 'Rem'#233'dio'
          end
          object SpeedButton5: TSpeedButton
            Left = 605
            Top = 70
            Width = 23
            Height = 22
            Hint = 'Cadastrar Rem'#233'dio'
            Caption = '...'
            Flat = True
            ParentShowHint = False
            ShowHint = True
          end
          object DBEditcodigo: TDBEdit
            Left = 16
            Top = 24
            Width = 49
            Height = 21
            DataField = 'ID_REMEDIO_INTERNO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEditdata: TDBEdit
            Left = 72
            Top = 24
            Width = 89
            Height = 21
            DataField = 'DATA'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 168
            Top = 24
            Width = 465
            Height = 21
            DataField = 'ID_INTERNO'
            DataSource = DsCadastro
            KeyField = 'ID_INTERNO'
            ListField = 'NOME_INTERNO'
            ListSource = DM.DsInterno
            TabOrder = 2
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 16
            Top = 72
            Width = 585
            Height = 21
            DataField = 'ID_REMEDIO'
            DataSource = DsCadastro
            KeyField = 'ID_REMEDIO'
            ListField = 'NOME_REMEDIO'
            ListSource = DM.DSRemedio
            TabOrder = 3
          end
          object DBMemo1: TDBMemo
            Left = 16
            Top = 120
            Width = 609
            Height = 89
            DataField = 'OBS'
            DataSource = DsCadastro
            TabOrder = 4
          end
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 455
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM remedio_interno')
  end
  inherited CdsCadastro: TClientDataSet
    object CdsCadastroID_REMEDIO_INTERNO: TIntegerField
      FieldName = 'ID_REMEDIO_INTERNO'
      Required = True
    end
    object CdsCadastroID_REMEDIO: TIntegerField
      FieldName = 'ID_REMEDIO'
    end
    object CdsCadastroID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object CdsCadastroDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object CdsCadastroOBS: TStringField
      FieldName = 'OBS'
      Size = 8192
    end
  end
end
