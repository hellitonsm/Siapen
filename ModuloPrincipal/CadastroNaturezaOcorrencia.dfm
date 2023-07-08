inherited FrmCadastroNaturezaOcorrencia: TFrmCadastroNaturezaOcorrencia
  Left = 328
  Top = 283
  Caption = 'Cadastro de Natureza da Ocorr'#234'ncia'
  ClientHeight = 583
  ClientWidth = 940
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 532
    ExplicitHeight = 531
    inherited ToolBarModeloCadastro: TToolBar
      Height = 514
      ExplicitHeight = 513
    end
    inherited DBNavigator1: TDBNavigator
      Top = 514
      Hints.Strings = ()
      ExplicitTop = 513
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 825
    Height = 532
    ExplicitWidth = 821
    ExplicitHeight = 531
    inherited Image2: TImage
      Width = 607
      ExplicitWidth = 607
    end
    inherited PageControlModeloCadastro: TPageControl
      ExplicitWidth = 821
      ExplicitHeight = 531
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 817
          Height = 504
          ExplicitWidth = 817
          ExplicitHeight = 504
          inherited Label3: TLabel
            Width = 113
            Caption = 'Natureza da Ocorr'#234'ncia'
            ExplicitWidth = 113
          end
          inherited DBEditCODIGO: TDBEdit
            DataField = 'ID_NATUREZA_OCORRENCIA'
          end
          inherited DBEdit2: TDBEdit
            Width = 417
            DataField = 'NATUREZA_OCORRENCIA'
            ExplicitWidth = 417
          end
          inherited DBEdit3: TDBEdit
            DataField = ''
            DataSource = nil
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 817
          ExplicitWidth = 813
        end
        inherited PanelConsulta: TPanel
          Width = 817
          Height = 470
          ExplicitWidth = 813
          ExplicitHeight = 469
          inherited DBGridConsulta: TDBGrid
            Width = 815
            Height = 468
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 940
    ExplicitWidth = 936
  end
  inherited StatusBar1: TStatusBar
    Top = 564
    Width = 940
    ExplicitTop = 563
    ExplicitWidth = 936
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
