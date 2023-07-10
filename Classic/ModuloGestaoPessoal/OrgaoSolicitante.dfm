inherited frmOrgaoSolicitante: TfrmOrgaoSolicitante
  Left = 292
  Top = 234
  Width = 701
  Height = 360
  Caption = 'Org'#227'o Solicitante'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 271
    inherited ToolBarModeloCadastro: TToolBar
      Height = 253
    end
    inherited DBNavigator1: TDBNavigator
      Top = 253
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 570
    Height = 271
    inherited PageControlModeloCadastro: TPageControl
      Width = 570
      Height = 271
      ActivePage = TabSheetCadastro
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 562
          Height = 243
          object Label2: TLabel
            Left = 12
            Top = 20
            Width = 41
            Height = 13
            Caption = 'Id Org'#227'o'
            FocusControl = DBEdit1
          end
          object Label3: TLabel
            Left = 184
            Top = 16
            Width = 14
            Height = 13
            Caption = 'UF'
          end
          object Label4: TLabel
            Left = 12
            Top = 68
            Width = 80
            Height = 13
            Caption = 'Org'#227'o Descri'#231#227'o'
            FocusControl = DBEdit3
          end
          object DBEdit1: TDBEdit
            Left = 12
            Top = 36
            Width = 134
            Height = 21
            DataField = 'ID_ORGAO'
            DataSource = DsCadastro
            TabOrder = 0
          end
          object DBEdit3: TDBEdit
            Left = 12
            Top = 84
            Width = 501
            Height = 21
            DataField = 'ORGAO_DESC'
            DataSource = DsCadastro
            TabOrder = 2
          end
          object frmOrgaoSolicitante: TDBComboBox
            Left = 180
            Top = 36
            Width = 145
            Height = 21
            DataField = 'UF'
            DataSource = DsCadastro
            ItemHeight = 13
            Items.Strings = (
              'AC'
              'AL'
              'AP'
              'AM'
              'BA'
              'CE'
              'DF'
              'GO'
              'ES'
              'MA'
              'MT'
              'MS'
              'MG'
              'PA'
              'PB'
              'PR'
              'PE'
              'PI'
              'RJ'
              'RN'
              'RS'
              'RO'
              'RR'
              'SP'
              'SC'
              'SE'
              'TO')
            TabOrder = 1
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 562
        end
        inherited PanelConsulta: TPanel
          Width = 562
          Height = 209
          inherited DBGridConsulta: TDBGrid
            Width = 560
            Height = 207
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 685
    inherited Image2: TImage
      Width = 685
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 303
    Width = 685
  end
  inherited ImageListCadastro: TImageList
    Left = 588
    Top = 24
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM orgao')
    Left = 456
    Top = 92
    object SqlCadastroID_ORGAO: TIntegerField
      FieldName = 'ID_ORGAO'
      Required = True
    end
    object SqlCadastroUF: TStringField
      FieldName = 'UF'
      Size = 10
    end
    object SqlCadastroORGAO_DESC: TStringField
      FieldName = 'ORGAO_DESC'
      Size = 100
    end
  end
  inherited DspCadastro: TDataSetProvider
    Left = 508
    Top = 92
  end
  inherited CdsCadastro: TClientDataSet
    Left = 556
    Top = 92
    object CdsCadastroID_ORGAO: TIntegerField
      FieldName = 'ID_ORGAO'
      Required = True
    end
    object CdsCadastroUF: TStringField
      FieldName = 'UF'
      Size = 10
    end
    object CdsCadastroORGAO_DESC: TStringField
      FieldName = 'ORGAO_DESC'
      Size = 100
    end
  end
  inherited DsCadastro: TDataSource
    Left = 604
    Top = 92
  end
end
