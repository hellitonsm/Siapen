inherited FrmCadastroSubEvento: TFrmCadastroSubEvento
  Left = 332
  Top = 213
  Caption = 'Cadastro de Sub-Eventos'
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
            FocusControl = DBEditcodigo
          end
          object Label3: TLabel
            Left = 96
            Top = 136
            Width = 122
            Height = 13
            Caption = 'Descri'#231#227'o do Sub Evento'
            FocusControl = DBEdtDescricao
          end
          object Label4: TLabel
            Left = 24
            Top = 136
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            FocusControl = DBEdtCodigoEvento
          end
          object Label5: TLabel
            Left = 208
            Top = 80
            Width = 77
            Height = 13
            Caption = 'Evento Principal'
          end
          object Label6: TLabel
            Left = 24
            Top = 80
            Width = 116
            Height = 13
            Caption = 'Tipo do Evento Principal'
          end
          object DBEditcodigo: TDBEdit
            Left = 24
            Top = 40
            Width = 41
            Height = 21
            DataField = 'ID_SUB_EVENTOS'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdtDescricao: TDBEdit
            Left = 96
            Top = 152
            Width = 481
            Height = 21
            DataField = 'DESCRICAO_EVENTOS'
            DataSource = DsCadastro
            TabOrder = 4
          end
          object DBEdtCodigoEvento: TDBEdit
            Left = 24
            Top = 152
            Width = 65
            Height = 21
            DataField = 'CODIGO_SUB_EVENTO'
            DataSource = DsCadastro
            TabOrder = 3
          end
          object DBLkpEventoPrincipal: TDBLookupComboBox
            Left = 208
            Top = 96
            Width = 369
            Height = 21
            DataField = 'ID_EVENTOS'
            DataSource = DsCadastro
            KeyField = 'ID_EVENTOS'
            ListField = 'DESCRICAO_EVENTO'
            ListSource = DsEventos
            TabOrder = 2
          end
          object CbTipoEvento: TComboBox
            Left = 24
            Top = 96
            Width = 169
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            TabOrder = 1
            OnChange = CbTipoEventoChange
            Items.Strings = (
              '1 - Relat'#243'rio Bimestral'
              '2 - Relat'#243'rio de C'#226'meras')
          end
        end
      end
    end
  end
  inherited ImageListCadastro: TImageList
    Left = 576
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT *'
      'FROM SUB_EVENTOS'
      'ORDER BY DESCRICAO_EVENTOS')
    SQLConnection = DM.SQLConnect
    Top = 200
  end
  inherited DspCadastro: TDataSetProvider
    Top = 200
  end
  inherited CdsCadastro: TClientDataSet
    Top = 200
    object CdsCadastroCODIGO_SUB_EVENTO: TIntegerField
      DisplayLabel = 'C'#211'DIGO'
      FieldName = 'CODIGO_SUB_EVENTO'
    end
    object CdsCadastroDESCRICAO_EVENTOS: TStringField
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'DESCRICAO_EVENTOS'
      Size = 200
    end
    object CdsCadastroID_EVENTOS: TIntegerField
      FieldName = 'ID_EVENTOS'
    end
    object CdsCadastroID_SUB_EVENTOS: TIntegerField
      FieldName = 'ID_SUB_EVENTOS'
      Required = True
    end
  end
  inherited DsCadastro: TDataSource
    Top = 200
  end
  object DsEventos: TDataSource
    DataSet = CdsEventos
    Left = 679
    Top = 240
  end
  object CdsEventos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspEventos'
    Left = 652
    Top = 240
  end
  object DspEventos: TDataSetProvider
    DataSet = SqlEventos
    Left = 621
    Top = 240
  end
  object SqlEventos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT ID_EVENTOS, CODIGO || '#39' - '#39' || DESCRICAO_EVENTO AS DESCRI' +
        'CAO_EVENTO, CODIGO, TIPO_EVENTO FROM EVENTOS'
      'WHERE SUB_EVENTOS = '#39'S'#39
      'ORDER BY CODIGO || '#39' - '#39' || DESCRICAO_EVENTO')
    SQLConnection = DM.SQLConnect
    Left = 591
    Top = 240
  end
end
