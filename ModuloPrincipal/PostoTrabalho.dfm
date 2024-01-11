inherited FrmPostoTrabalho: TFrmPostoTrabalho
  Left = 218
  Top = 153
  Caption = 'Posto de Trabalho'
  ClientHeight = 583
  ExplicitWidth = 948
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 532
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Height = 532
    inherited Image2: TImage
      Width = 605
      ExplicitWidth = 605
    end
    inherited PageControlModeloCadastro: TPageControl
      Width = 821
      ExplicitWidth = 817
      inherited TabSheetCadastro: TTabSheet
        ExplicitWidth = 813
        inherited PanelCadastro: TPanel
          Width = 482
          Height = 340
          ExplicitWidth = 482
          ExplicitHeight = 340
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
        ExplicitWidth = 813
        inherited PanelLocalizaConsulta: TPanel
          Width = 813
          ExplicitWidth = 809
        end
        inherited PanelConsulta: TPanel
          Width = 813
          ExplicitWidth = 809
          inherited DBGridConsulta: TDBGrid
            Width = 811
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    ExplicitWidth = 932
  end
  inherited StatusBar1: TStatusBar
    Top = 564
    ExplicitTop = 563
    ExplicitWidth = 932
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM POSTO_TRABALHO')
  end
end
