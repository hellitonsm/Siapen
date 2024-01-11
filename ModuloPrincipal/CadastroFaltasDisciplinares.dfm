inherited FrmCadastroFaltasDisciplinares: TFrmCadastroFaltasDisciplinares
  Left = 310
  Top = 250
  Caption = 'Cadastro Faltas Disciplinares'
  OnClose = FormClose
  TextHeight = 13
  inherited PanelBotoes: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    inherited Image2: TImage
      Width = 819
      ExplicitWidth = 819
    end
    inherited PageControlModeloCadastro: TPageControl
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          object Label2: TLabel
            Left = 16
            Top = 16
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditcodigo
          end
          object Label3: TLabel
            Left = 72
            Top = 16
            Width = 74
            Height = 13
            Caption = 'Falta Disciplinar'
            FocusControl = DBEdit2
          end
          object Label4: TLabel
            Left = 16
            Top = 64
            Width = 125
            Height = 13
            Caption = 'Tempo Reabilita'#231#227'o (Dias)'
            FocusControl = DBEdit3
          end
          object Label5: TLabel
            Left = 192
            Top = 64
            Width = 47
            Height = 13
            Caption = 'Tipo Falta'
          end
          object DBEditcodigo: TDBEdit
            Left = 16
            Top = 32
            Width = 49
            Height = 21
            DataField = 'ID_FALTA_DISCIPLINAR'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 72
            Top = 32
            Width = 545
            Height = 21
            CharCase = ecUpperCase
            DataField = 'FALTA_DISCIPLINAR'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 16
            Top = 80
            Width = 169
            Height = 21
            DataField = 'TEMPOREABILITACAO'
            DataSource = DsCadastro
            TabOrder = 2
          end
          object DBComboBox1: TDBComboBox
            Left = 192
            Top = 80
            Width = 265
            Height = 21
            DataField = 'TIPOFALTA'
            DataSource = DsCadastro
            Items.Strings = (
              'LEVE'
              'M'#201'DIA'
              'GRAVE')
            TabOrder = 3
          end
        end
      end
    end
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM FALTA_DISCIPLINAR')
    object SqlCadastroID_FALTA_DISCIPLINAR: TIntegerField
      FieldName = 'ID_FALTA_DISCIPLINAR'
      Origin = 'ID_FALTA_DISCIPLINAR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlCadastroFALTA_DISCIPLINAR: TStringField
      FieldName = 'FALTA_DISCIPLINAR'
      Origin = 'FALTA_DISCIPLINAR'
      Size = 8192
    end
    object SqlCadastroTEMPOREABILITACAO: TIntegerField
      FieldName = 'TEMPOREABILITACAO'
      Origin = 'TEMPOREABILITACAO'
    end
    object SqlCadastroTIPOFALTA: TStringField
      FieldName = 'TIPOFALTA'
      Origin = 'TIPOFALTA'
      Size = 50
    end
  end
end
