inherited FrmFrmMedico: TFrmFrmMedico
  Left = 390
  Top = 227
  Caption = 'M'#233'dico'
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
            Left = 24
            Top = 16
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditcodigo
          end
          object Label3: TLabel
            Left = 104
            Top = 16
            Width = 35
            Height = 13
            Caption = 'M'#233'dico'
            FocusControl = DBEdit2
          end
          object Label4: TLabel
            Left = 24
            Top = 56
            Width = 24
            Height = 13
            Caption = 'CRM'
            FocusControl = DBEdit3
          end
          object Label5: TLabel
            Left = 160
            Top = 56
            Width = 46
            Height = 13
            Caption = 'Endere'#231'o'
            FocusControl = DBEdit4
          end
          object Label6: TLabel
            Left = 24
            Top = 104
            Width = 64
            Height = 13
            Caption = 'Complemento'
            FocusControl = DBEdit5
          end
          object Label7: TLabel
            Left = 320
            Top = 104
            Width = 27
            Height = 13
            Caption = 'Bairro'
            FocusControl = DBEdit6
          end
          object Label8: TLabel
            Left = 168
            Top = 144
            Width = 33
            Height = 13
            Caption = 'Cidade'
          end
          object Label9: TLabel
            Left = 24
            Top = 191
            Width = 25
            Height = 13
            Caption = 'Email'
            FocusControl = DBEdit8
          end
          object Label10: TLabel
            Left = 24
            Top = 147
            Width = 21
            Height = 13
            Caption = 'CEP'
            FocusControl = DBEdit1
          end
          object SpeedButton7: TSpeedButton
            Left = 576
            Top = 157
            Width = 23
            Height = 22
            Hint = 'Cadastrar Cidade'
            Caption = '...'
            Enabled = False
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton7Click
          end
          object DBEditcodigo: TDBEdit
            Left = 24
            Top = 32
            Width = 73
            Height = 21
            DataField = 'ID_MEDICO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 104
            Top = 32
            Width = 500
            Height = 21
            DataField = 'MEDICO'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 24
            Top = 72
            Width = 129
            Height = 21
            DataField = 'CRM'
            DataSource = DsCadastro
            TabOrder = 2
          end
          object DBEdit4: TDBEdit
            Left = 160
            Top = 72
            Width = 441
            Height = 21
            DataField = 'ENDERECO'
            DataSource = DsCadastro
            TabOrder = 3
          end
          object DBEdit5: TDBEdit
            Left = 24
            Top = 120
            Width = 289
            Height = 21
            DataField = 'COMPLEMENTO'
            DataSource = DsCadastro
            TabOrder = 4
          end
          object DBEdit6: TDBEdit
            Left = 320
            Top = 120
            Width = 281
            Height = 21
            DataField = 'BAIRRO'
            DataSource = DsCadastro
            TabOrder = 5
          end
          object DBEdit8: TDBEdit
            Left = 24
            Top = 207
            Width = 577
            Height = 21
            DataField = 'EMAIL'
            DataSource = DsCadastro
            TabOrder = 6
          end
          object DBEdit1: TDBEdit
            Left = 24
            Top = 163
            Width = 137
            Height = 21
            DataField = 'CEP'
            DataSource = DsCadastro
            TabOrder = 7
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 168
            Top = 160
            Width = 401
            Height = 21
            DataField = 'ID_CIDADE'
            DataSource = DsCadastro
            KeyField = 'ID_CIDADE'
            ListField = 'CIDADE'
            ListSource = DM.DSCIDADE
            TabOrder = 8
          end
        end
      end
    end
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM medico')
    Left = 544
    Top = 16
  end
  inherited DspCadastro: TDataSetProvider
    Left = 572
    Top = 16
  end
  inherited CdsCadastro: TClientDataSet
    Left = 600
    Top = 16
  end
  inherited DsCadastro: TDataSource
    Left = 628
    Top = 16
  end
end
