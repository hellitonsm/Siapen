inherited FrmHorarioFuncionario: TFrmHorarioFuncionario
  Left = 362
  Top = 150
  Caption = 'Hor'#225'rio do Funcion'#225'rio'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    inherited PageControlModeloCadastro: TPageControl
      ActivePage = TabSheetCadastro
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
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
            Top = 64
            Width = 98
            Height = 13
            Caption = 'Descri'#231#227'o do hor'#225'rio'
          end
          object Label6: TLabel
            Left = 25
            Top = 276
            Width = 75
            Height = 13
            Caption = 'Inicio de manh'#227
          end
          object Label7: TLabel
            Left = 145
            Top = 276
            Width = 66
            Height = 13
            Caption = 'Fim da manh'#227
          end
          object Label8: TLabel
            Left = 265
            Top = 276
            Width = 67
            Height = 13
            Caption = 'Inicio da tarde'
          end
          object Label9: TLabel
            Left = 385
            Top = 276
            Width = 58
            Height = 13
            Caption = 'Fim de tarde'
          end
          object DBEditCODIGO: TDBEdit
            Left = 24
            Top = 40
            Width = 85
            Height = 21
            DataField = 'IDHORARIO_FUNCIONARIO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEditHORARIO_FUNCIONARIO: TDBEdit
            Left = 24
            Top = 80
            Width = 449
            Height = 21
            DataField = 'HORARIO_FUNCIONARIO'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 24
            Top = 120
            Width = 185
            Height = 57
            Caption = 'Plant'#227'o ?'
            Columns = 2
            DataField = 'PLANTAO'
            DataSource = DsCadastro
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 2
            Values.Strings = (
              'S'
              'N')
            OnChange = DBRadioGroup1Change
          end
          object GroupBoxPlantonista: TGroupBox
            Left = 24
            Top = 192
            Width = 385
            Height = 73
            Caption = 'Plantonista:'
            TabOrder = 3
            object Label4: TLabel
              Left = 10
              Top = 20
              Width = 88
              Height = 13
              Caption = 'Horas de Trabalho'
            end
            object Label5: TLabel
              Left = 138
              Top = 20
              Width = 72
              Height = 13
              Caption = 'Horas de Folga'
            end
            object DBEditHORAS_TRABALHO: TDBEdit
              Left = 8
              Top = 36
              Width = 105
              Height = 21
              DataField = 'HORAS_TRABALHO'
              DataSource = DsCadastro
              TabOrder = 0
            end
            object DBEditHORAS_FOLGA: TDBEdit
              Left = 136
              Top = 36
              Width = 105
              Height = 21
              DataField = 'HORAS_FOLGA'
              DataSource = DsCadastro
              TabOrder = 1
            end
          end
          object DBEditHORA_INICIO_MANHA: TDBEdit
            Left = 24
            Top = 292
            Width = 105
            Height = 21
            DataField = 'HORA_INICIO_MANHA'
            DataSource = DsCadastro
            TabOrder = 4
          end
          object DBEditHORA_FIM_MANHA: TDBEdit
            Left = 144
            Top = 292
            Width = 105
            Height = 21
            DataField = 'HORA_FIM_MANHA'
            DataSource = DsCadastro
            TabOrder = 5
          end
          object DBEditHORA_INICIO_TARDE: TDBEdit
            Left = 264
            Top = 292
            Width = 105
            Height = 21
            DataField = 'HORA_INICIO_TARDE'
            DataSource = DsCadastro
            TabOrder = 6
          end
          object DBEditHORA_FIM_TARDE: TDBEdit
            Left = 384
            Top = 292
            Width = 105
            Height = 21
            DataField = 'HORA_FIM_TARDE'
            DataSource = DsCadastro
            TabOrder = 7
          end
        end
      end
    end
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM HORARIO_FUNCIONARIO')
  end
end
