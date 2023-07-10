inherited FrmPostoTrabalho: TFrmPostoTrabalho
  Left = 218
  Top = 153
  Width = 621
  Height = 457
  Caption = 'Posto de Trabalho'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 368
    inherited ToolBarModeloCadastro: TToolBar
      Height = 350
    end
    inherited DBNavigator1: TDBNavigator
      Top = 350
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 490
    Height = 368
    inherited PageControlModeloCadastro: TPageControl
      Width = 490
      Height = 368
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 482
          Height = 340
          object Label2: TLabel
            Left = 24
            Top = 24
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditCODIGO
          end
          object Label3: TLabel
            Left = 24
            Top = 72
            Width = 87
            Height = 13
            Caption = 'Posto de Trabalho'
            FocusControl = DBEditPOSTO_TRABALHO
          end
          object Label4: TLabel
            Left = 24
            Top = 196
            Width = 84
            Height = 13
            Caption = 'Horas de trabalho'
          end
          object DBEditCODIGO: TDBEdit
            Left = 24
            Top = 40
            Width = 85
            Height = 21
            DataField = 'IDPOSTO_TRABALHO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEditPOSTO_TRABALHO: TDBEdit
            Left = 24
            Top = 88
            Width = 369
            Height = 21
            DataField = 'POSTO_TRABALHO'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 24
            Top = 128
            Width = 185
            Height = 57
            Caption = 'Posto rotativo por hora?'
            Columns = 2
            DataField = 'POSTO_ROTATIVO'
            DataSource = DsCadastro
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 2
            Values.Strings = (
              'S'
              'N')
          end
          object DBEditHORAS_POSTO: TDBEdit
            Left = 24
            Top = 212
            Width = 121
            Height = 21
            DataField = 'HORAS_TRABALHO'
            DataSource = DsCadastro
            TabOrder = 3
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 482
        end
        inherited PanelConsulta: TPanel
          Width = 482
          Height = 306
          inherited DBGridConsulta: TDBGrid
            Width = 480
            Height = 304
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 605
    inherited Image2: TImage
      Width = 605
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 400
    Width = 605
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM POSTO_TRABALHO')
  end
end
