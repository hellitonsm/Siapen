inherited FrmCadastroSerieEstudo: TFrmCadastroSerieEstudo
  Left = 339
  Top = 172
  Caption = 'Cadastro Serie Estudo'
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
            Left = 16
            Top = 24
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditCODIGO
          end
          object Label3: TLabel
            Left = 80
            Top = 24
            Width = 64
            Height = 13
            Caption = 'S'#201'RIE/FASE'
            FocusControl = DBEdit2
          end
          object DBEditCODIGO: TDBEdit
            Left = 16
            Top = 40
            Width = 57
            Height = 21
            DataField = 'ID_SERIE_ESTUDO'
            DataSource = DsCadastro
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 80
            Top = 40
            Width = 569
            Height = 21
            DataField = 'SERIE_ESTUDO'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 16
            Top = 80
            Width = 185
            Height = 41
            Caption = 'Sala Ativa?'
            Columns = 2
            DataField = 'ATIVO'
            DataSource = DsCadastro
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 2
            Values.Strings = (
              'S'
              'N')
          end
        end
      end
    end
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM SERIE_ESTUDO')
  end
  inherited CdsCadastro: TClientDataSet
    object CdsCadastroID_SERIE_ESTUDO: TIntegerField
      FieldName = 'ID_SERIE_ESTUDO'
      Required = True
    end
    object CdsCadastroSERIE_ESTUDO: TStringField
      FieldName = 'SERIE_ESTUDO'
      Size = 100
    end
    object CdsCadastroATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
  end
end
