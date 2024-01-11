inherited FrmCadastroSubEvento: TFrmCadastroSubEvento
  Left = 332
  Top = 213
  Caption = 'Cadastro de Sub-Eventos'
  ClientHeight = 582
  ClientWidth = 936
  ExplicitWidth = 952
  ExplicitHeight = 621
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 531
    ExplicitHeight = 531
    inherited ToolBarModeloCadastro: TToolBar
      Height = 513
      ExplicitHeight = 513
    end
    inherited DBNavigator1: TDBNavigator
      Top = 513
      Hints.Strings = ()
      ExplicitTop = 513
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 821
    Height = 531
    ExplicitWidth = 821
    ExplicitHeight = 531
    inherited PageControlModeloCadastro: TPageControl
      Width = 821
      Height = 531
      ActivePage = TabSheetCadastro
      ExplicitWidth = 821
      ExplicitHeight = 531
      inherited TabSheetCadastro: TTabSheet
        ExplicitWidth = 813
        ExplicitHeight = 503
        inherited PanelCadastro: TPanel
          Width = 813
          Height = 503
          ExplicitWidth = 813
          ExplicitHeight = 503
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
            TabOrder = 1
            OnChange = CbTipoEventoChange
            Items.Strings = (
              '1 - Relat'#243'rio Bimestral'
              '2 - Relat'#243'rio de C'#226'meras')
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        ExplicitWidth = 813
        ExplicitHeight = 503
        inherited PanelLocalizaConsulta: TPanel
          Width = 813
          ExplicitWidth = 813
        end
        inherited PanelConsulta: TPanel
          Width = 813
          Height = 469
          ExplicitWidth = 813
          ExplicitHeight = 469
          inherited DBGridConsulta: TDBGrid
            Width = 811
            Height = 467
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 936
    ExplicitWidth = 936
  end
  inherited StatusBar1: TStatusBar
    Top = 563
    Width = 936
    ExplicitTop = 563
    ExplicitWidth = 936
  end
  inherited ImageListCadastro: TImageList
    Left = 576
  end
  inherited SqlCadastro: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT *'
      'FROM SUB_EVENTOS'
      'ORDER BY DESCRICAO_EVENTOS')
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
  object SqlEventos: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      
        'SELECT ID_EVENTOS, CODIGO || '#39' - '#39' || DESCRICAO_EVENTO AS DESCRI' +
        'CAO_EVENTO, CODIGO, TIPO_EVENTO FROM EVENTOS'
      'WHERE SUB_EVENTOS = '#39'S'#39
      'ORDER BY CODIGO || '#39' - '#39' || DESCRICAO_EVENTO')
    Left = 591
    Top = 240
  end
end
