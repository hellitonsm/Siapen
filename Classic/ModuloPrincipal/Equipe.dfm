inherited FrmEquipe: TFrmEquipe
  Left = 509
  Top = 318
  Caption = 'Equipe'
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
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Caption = '...'
          object Label2: TLabel
            Left = 24
            Top = 24
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditcodigo
          end
          object Label3: TLabel
            Left = 24
            Top = 72
            Width = 33
            Height = 13
            Caption = 'Equipe'
            FocusControl = DBEdit1
          end
          object Label5: TLabel
            Left = 25
            Top = 117
            Width = 177
            Height = 13
            Caption = 'Horario de Trabalho dos Funcion'#225'rios'
          end
          object SpeedButton3: TSpeedButton
            Left = 376
            Top = 133
            Width = 23
            Height = 20
            Caption = '...'
            OnClick = SpeedButton3Click
          end
          object Label4: TLabel
            Left = 240
            Top = 168
            Width = 104
            Height = 13
            Caption = 'Data Base do Plant'#227'o'
            FocusControl = DBEditcodigo
          end
          object DBEditcodigo: TDBEdit
            Left = 24
            Top = 40
            Width = 73
            Height = 21
            DataField = 'IDEQUIPE'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit1: TDBEdit
            Left = 24
            Top = 88
            Width = 607
            Height = 21
            DataField = 'EQUIPE'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 24
            Top = 168
            Width = 185
            Height = 105
            Caption = 'Tipo de Equipe'
            DataField = 'TIPO'
            DataSource = DsCadastro
            Items.Strings = (
              'Plant'#227'o'
              'Expediente')
            TabOrder = 3
            Values.Strings = (
              'P'
              'E')
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 25
            Top = 133
            Width = 345
            Height = 21
            DataField = 'IDHORARIO_FUNCIONARIO'
            DataSource = DsCadastro
            KeyField = 'IDHORARIO_FUNCIONARIO'
            ListField = 'HORARIO_FUNCIONARIO'
            ListSource = DM.DsHorarioFuncionario
            TabOrder = 2
            OnClick = DBLookupComboBox3Click
          end
          object adpDBDateTimePicker1: TadpDBDateTimePicker
            Left = 240
            Top = 192
            Width = 121
            Height = 21
            Date = 44438.562768275460000000
            Time = 44438.562768275460000000
            TabOrder = 4
            DataField = 'DATABASE_PLANTAO'
            DataSource = DsCadastro
            ReadOnly = False
          end
        end
      end
    end
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM EQUIPE')
  end
  inherited CdsCadastro: TClientDataSet
    object CdsCadastroDATABASE_PLANTAO: TSQLTimeStampField
      FieldName = 'DATABASE_PLANTAO'
      EditMask = '!99/99/0000;1;_'
    end
    object CdsCadastroIDEQUIPE: TIntegerField
      FieldName = 'IDEQUIPE'
    end
    object CdsCadastroEQUIPE: TStringField
      FieldName = 'EQUIPE'
      Size = 100
    end
    object CdsCadastroIDHORARIO_FUNCIONARIO: TIntegerField
      FieldName = 'IDHORARIO_FUNCIONARIO'
    end
    object CdsCadastroTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
  end
end
