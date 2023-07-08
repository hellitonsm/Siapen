inherited FrmCadastroFuncionarioAutorizador: TFrmCadastroFuncionarioAutorizador
  Left = 102
  Top = 138
  Caption = 'Cadastro da Autoridade Autorizadora'
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
          object Label2: TLabel
            Left = 8
            Top = 16
            Width = 65
            Height = 13
            Caption = 'Id Autorizador'
            FocusControl = DBEdit1
          end
          object Label3: TLabel
            Left = 110
            Top = 16
            Width = 55
            Height = 13
            Caption = 'Funcion'#225'rio'
          end
          object Label4: TLabel
            Left = 8
            Top = 73
            Width = 48
            Height = 13
            Caption = 'Descri'#231#227'o'
          end
          object DBEdit1: TDBEdit
            Left = 8
            Top = 32
            Width = 83
            Height = 21
            DataField = 'ID_FUNCIONARIO_AUTORIZADOR'
            DataSource = DsCadastro
            TabOrder = 0
          end
          object DBComboBox1: TDBComboBox
            Left = 8
            Top = 89
            Width = 105
            Height = 21
            DataField = 'DESCRICAO_AUTORIZADOR'
            DataSource = DsCadastro
            ItemHeight = 13
            Items.Strings = (
              'AUTORIZADOR')
            TabOrder = 2
          end
          object DBLookupComboBoxfuncionario: TDBLookupComboBox
            Left = 109
            Top = 32
            Width = 256
            Height = 21
            DataField = 'ID_FUNCIONARIO'
            DataSource = DsCadastro
            KeyField = 'ID_FUNCIONARIO'
            ListField = 'NOME_FUNCIONARIO'
            ListSource = DM.DsFuncionarioLista
            TabOrder = 1
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelConsulta: TPanel
          inherited DBGridConsulta: TDBGrid
            Columns = <
              item
                Expanded = False
                FieldName = 'Funcionario'
                Title.Caption = 'Autoridade'
                Width = 351
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_FUNCIONARIO_AUTORIZADOR'
                Title.Caption = 'Id Autoridade'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_FUNCIONARIO'
                Title.Caption = 'Id Funcionario'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO_AUTORIZADOR'
                Title.Caption = 'Descricao'
                Width = 94
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM funcionario_autorizador')
  end
  inherited CdsCadastro: TClientDataSet
    object CdsCadastroFuncionario: TStringField
      FieldKind = fkLookup
      FieldName = 'Funcionario'
      LookupDataSet = DM.CdsFuncionarioLista
      LookupKeyFields = 'ID_FUNCIONARIO'
      LookupResultField = 'NOME_FUNCIONARIO'
      KeyFields = 'ID_FUNCIONARIO'
      Size = 100
      Lookup = True
    end
    object CdsCadastroID_FUNCIONARIO_AUTORIZADOR: TIntegerField
      FieldName = 'ID_FUNCIONARIO_AUTORIZADOR'
      Required = True
    end
    object CdsCadastroID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      Required = True
    end
    object CdsCadastroDESCRICAO_AUTORIZADOR: TStringField
      FieldName = 'DESCRICAO_AUTORIZADOR'
      Size = 50
    end
  end
end
