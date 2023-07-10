inherited FrmInternoInclusao: TFrmInternoInclusao
  Left = 311
  Top = 206
  Width = 685
  Height = 360
  Caption = 'Interno para Inclus'#227'o'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 271
    TabOrder = 1
    inherited ToolBarModeloCadastro: TToolBar
      Height = 253
    end
    inherited DBNavigator1: TDBNavigator
      Top = 253
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 554
    Height = 271
    TabOrder = 2
    inherited PageControlModeloCadastro: TPageControl
      Width = 554
      Height = 271
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 546
          Height = 243
          object Label2: TLabel
            Left = 24
            Top = 24
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditCodigo
          end
          object Label3: TLabel
            Left = 24
            Top = 64
            Width = 39
            Height = 13
            Caption = 'Alcunha'
            FocusControl = DBEdit2
          end
          object Label4: TLabel
            Left = 360
            Top = 64
            Width = 56
            Height = 13
            Caption = 'Nascimento'
          end
          object Label5: TLabel
            Left = 24
            Top = 104
            Width = 79
            Height = 13
            Caption = 'Nome do Interno'
            FocusControl = DBEdit4
          end
          object Label7: TLabel
            Left = 24
            Top = 144
            Width = 67
            Height = 13
            Caption = 'Nome da M'#227'e'
            FocusControl = DBEdit6
          end
          object DBEditCodigo: TDBEdit
            Left = 24
            Top = 40
            Width = 89
            Height = 21
            DataField = 'ID_INTERNO_INCLUSAO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 24
            Top = 80
            Width = 300
            Height = 21
            DataField = 'ALCUNHA'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object DBEdit4: TDBEdit
            Left = 24
            Top = 120
            Width = 500
            Height = 21
            DataField = 'NOME_INTERNO'
            DataSource = DsCadastro
            TabOrder = 3
          end
          object DBEdit6: TDBEdit
            Left = 24
            Top = 160
            Width = 500
            Height = 21
            DataField = 'MAE_INTERNO'
            DataSource = DsCadastro
            TabOrder = 4
          end
          object adpDBDateTimePicker1: TadpDBDateTimePicker
            Left = 360
            Top = 80
            Width = 121
            Height = 21
            Date = 41086.699200370370000000
            Time = 41086.699200370370000000
            TabOrder = 2
            DataField = 'DATA_NASCIMENTO'
            DataSource = DsCadastro
            ReadOnly = False
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 669
    TabOrder = 0
    inherited Image2: TImage
      Width = 669
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 303
    Width = 669
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM INTERNO_INCLUSAO')
  end
  inherited CdsCadastro: TClientDataSet
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
  end
end
