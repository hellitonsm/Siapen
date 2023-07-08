inherited FrmCadastroFaccao: TFrmCadastroFaccao
  Left = 272
  Top = 245
  Width = 676
  Height = 361
  Caption = 'Cadastro de Fac'#231#227'o'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 272
    inherited ToolBarModeloCadastro: TToolBar
      Height = 254
    end
    inherited DBNavigator1: TDBNavigator
      Top = 254
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 545
    Height = 272
    inherited PageControlModeloCadastro: TPageControl
      Width = 545
      Height = 272
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 537
          Height = 244
          object Label2: TLabel
            Left = 24
            Top = 24
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditCODIGO
          end
          object Label3: TLabel
            Left = 120
            Top = 24
            Width = 36
            Height = 13
            Caption = 'Fac'#231#227'o'
            FocusControl = DBEditFaccao
          end
          object Label4: TLabel
            Left = 264
            Top = 74
            Width = 144
            Height = 13
            Caption = 'Cor da Fac'#231#227'o para Relat'#243'rios'
            FocusControl = DBEditFaccao
          end
          object LbSigla: TLabel
            Left = 24
            Top = 74
            Width = 23
            Height = 13
            Caption = 'Sigla'
            FocusControl = DBEditFaccao
          end
          object DBEditCODIGO: TDBEdit
            Left = 24
            Top = 40
            Width = 85
            Height = 21
            DataField = 'ID_FACCAO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEditFaccao: TDBEdit
            Left = 120
            Top = 40
            Width = 369
            Height = 21
            DataField = 'FACCAO'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object DBEditSigla: TDBEdit
            Left = 24
            Top = 90
            Width = 225
            Height = 21
            DataField = 'SIGLA'
            DataSource = DsCadastro
            TabOrder = 2
          end
          object CBCorFaccao: TComboBox
            Left = 264
            Top = 90
            Width = 225
            Height = 22
            Style = csOwnerDrawFixed
            ItemHeight = 16
            TabOrder = 3
            OnDrawItem = CBCorFaccaoDrawItem
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 537
        end
        inherited PanelConsulta: TPanel
          Width = 537
          Height = 210
          inherited DBGridConsulta: TDBGrid
            Width = 535
            Height = 208
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 660
    inherited Image2: TImage
      Width = 660
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 304
    Width = 660
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM FACCAO')
    Left = 496
    Top = 232
  end
  inherited DspCadastro: TDataSetProvider
    Left = 524
    Top = 232
  end
  inherited CdsCadastro: TClientDataSet
    Left = 552
    Top = 232
  end
  inherited DsCadastro: TDataSource
    Left = 580
    Top = 232
  end
end
