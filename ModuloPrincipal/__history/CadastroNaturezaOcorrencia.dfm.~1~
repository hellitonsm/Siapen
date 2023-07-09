inherited FrmCadastroNaturezaOcorrencia: TFrmCadastroNaturezaOcorrencia
  Left = 328
  Top = 283
  Width = 623
  Height = 351
  Caption = 'Cadastro de Natureza da Ocorr'#234'ncia'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 262
    inherited ToolBarModeloCadastro: TToolBar
      Height = 244
    end
    inherited DBNavigator1: TDBNavigator
      Top = 244
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 492
    Height = 262
    inherited PageControlModeloCadastro: TPageControl
      Width = 492
      Height = 262
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 484
          Height = 234
          inherited Label3: TLabel
            Width = 113
            Caption = 'Natureza da Ocorr'#234'ncia'
          end
          inherited DBEditCODIGO: TDBEdit
            DataField = 'ID_NATUREZA_OCORRENCIA'
          end
          inherited DBEdit2: TDBEdit
            Width = 417
            DataField = 'NATUREZA_OCORRENCIA'
          end
          inherited DBEdit3: TDBEdit
            DataField = ''
            DataSource = nil
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 607
    inherited Image2: TImage
      Width = 607
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 294
    Width = 607
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM natureza_ocorrencia'
      'ORDER BY NATUREZA_OCORRENCIA')
    SQLConnection = DM.SQLConnect
    Left = 448
    Top = 40
  end
  inherited DspCadastro: TDataSetProvider
    Left = 476
    Top = 40
  end
  inherited CdsCadastro: TClientDataSet
    Left = 504
    Top = 40
    object CdsCadastroNATUREZA_OCORRENCIA: TStringField
      FieldName = 'NATUREZA_OCORRENCIA'
      Size = 200
    end
    object CdsCadastroID_NATUREZA_OCORRENCIA: TIntegerField
      FieldName = 'ID_NATUREZA_OCORRENCIA'
      Required = True
    end
  end
  inherited DsCadastro: TDataSource
    Left = 532
    Top = 40
  end
end
