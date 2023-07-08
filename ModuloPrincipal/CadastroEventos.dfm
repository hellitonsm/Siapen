inherited FrmCadastroEventos: TFrmCadastroEventos
  Left = 364
  Top = 285
  Caption = 'Cadastrar Eventos'
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
            Left = 16
            Top = 24
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditcodigo
          end
          object Label3: TLabel
            Left = 16
            Top = 80
            Width = 100
            Height = 13
            Caption = 'Descri'#231#227'o do Evento'
            FocusControl = DBEdtDescricao
          end
          object Label4: TLabel
            Left = 80
            Top = 24
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            FocusControl = DBEdtCodigoEvento
          end
          object Label5: TLabel
            Left = 16
            Top = 136
            Width = 73
            Height = 13
            Caption = 'Tipo de Evento'
          end
          object DBEditcodigo: TDBEdit
            Left = 16
            Top = 40
            Width = 49
            Height = 21
            DataField = 'ID_EVENTOS'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdtDescricao: TDBEdit
            Left = 16
            Top = 96
            Width = 529
            Height = 21
            DataField = 'DESCRICAO_EVENTO'
            DataSource = DsCadastro
            MaxLength = 200
            TabOrder = 3
          end
          object DBEdtCodigoEvento: TDBEdit
            Left = 80
            Top = 40
            Width = 73
            Height = 21
            DataField = 'CODIGO'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object DBRgSubEvento: TDBRadioGroup
            Left = 172
            Top = 22
            Width = 116
            Height = 39
            Caption = 'Possui Sub-Eventos?'
            Columns = 2
            DataField = 'SUB_EVENTOS'
            DataSource = DsCadastro
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 2
            Values.Strings = (
              'S'
              'N')
          end
          object DBCbTipoEvento: TDBComboBox
            Left = 16
            Top = 152
            Width = 297
            Height = 21
            Style = csDropDownList
            DataField = 'TIPO_EVENTO'
            DataSource = DsCadastro
            ItemHeight = 13
            Items.Strings = (
              '1 - Relat'#243'rio Bimestral'
              '2 - Relat'#243'rio de C'#226'meras')
            TabOrder = 4
          end
        end
      end
    end
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      
        'SELECT  TIPO_EVENTO, CODIGO, DESCRICAO_EVENTO, SUB_EVENTOS, ID_E' +
        'VENTOS'
      'FROM EVENTOS'
      'ORDER BY TIPO_EVENTO, CODIGO')
    Left = 608
    Top = 80
  end
  inherited DspCadastro: TDataSetProvider
    Left = 636
    Top = 80
  end
  inherited CdsCadastro: TClientDataSet
    Left = 664
    Top = 80
  end
  inherited DsCadastro: TDataSource
    Left = 692
    Top = 80
  end
end
