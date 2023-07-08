inherited FrmCadastroPadrao: TFrmCadastroPadrao
  Left = 290
  Top = 145
  Caption = 'Cadastro Padrao'
  ExplicitWidth = 952
  ExplicitHeight = 621
  TextHeight = 13
  inherited PanelBotoes: TPanel
    ExplicitHeight = 531
    inherited ToolBarModeloCadastro: TToolBar
      Height = 514
      ExplicitHeight = 513
    end
    inherited DBNavigator1: TDBNavigator
      Top = 514
      Hints.Strings = ()
      ExplicitTop = 513
    end
  end
  inherited PanelModeloCadastro: TPanel
    ExplicitWidth = 821
    ExplicitHeight = 531
    inherited PageControlModeloCadastro: TPageControl
      Width = 825
      Height = 532
      ActivePage = TabSheetCadastro
      ExplicitWidth = 821
      ExplicitHeight = 531
      inherited TabSheetCadastro: TTabSheet
        ExplicitWidth = 817
        ExplicitHeight = 504
        inherited PanelCadastro: TPanel
          Width = 817
          Height = 504
          ExplicitWidth = 813
          ExplicitHeight = 503
          object Label2: TLabel
            Left = 8
            Top = 8
            Width = 56
            Height = 13
            Caption = 'IDPADRAO'
            FocusControl = DBEdit1
          end
          object Label3: TLabel
            Left = 72
            Top = 8
            Width = 32
            Height = 13
            Caption = 'ID_UP'
            FocusControl = DBEdit2
          end
          object Label4: TLabel
            Left = 8
            Top = 56
            Width = 47
            Height = 13
            Caption = 'SISTEMA'
            FocusControl = DBEdit3
          end
          object Label5: TLabel
            Left = 8
            Top = 96
            Width = 88
            Height = 13
            Caption = 'NOME PAVILHAO'
            FocusControl = DBEdit4
          end
          object Label6: TLabel
            Left = 8
            Top = 136
            Width = 81
            Height = 13
            Caption = 'NOME GALERIA'
            FocusControl = DBEdit5
          end
          object Label7: TLabel
            Left = 8
            Top = 176
            Width = 82
            Height = 13
            Caption = 'NOME SOLARIO'
            FocusControl = DBEdit6
          end
          object Label8: TLabel
            Left = 8
            Top = 216
            Width = 62
            Height = 13
            Caption = 'NOME CELA'
            FocusControl = DBEdit7
          end
          object Label9: TLabel
            Left = 131
            Top = 8
            Width = 87
            Height = 13
            Caption = 'UNIDADE PENAL'
          end
          object LabelPavilhao: TLabel
            Left = 10
            Top = 259
            Width = 45
            Height = 13
            Caption = 'Nivel - 01'
          end
          object LabelGaleria: TLabel
            Left = 10
            Top = 299
            Width = 45
            Height = 13
            Caption = 'Nivel - 02'
          end
          object LabelSolario: TLabel
            Left = 322
            Top = 259
            Width = 45
            Height = 13
            Caption = 'Nivel - 03'
          end
          object LabelCela: TLabel
            Left = 323
            Top = 299
            Width = 21
            Height = 13
            Caption = 'Cela'
          end
          object DBEdit1: TDBEdit
            Left = 8
            Top = 24
            Width = 57
            Height = 21
            DataField = 'IDPADRAO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 72
            Top = 24
            Width = 49
            Height = 21
            DataField = 'COD_UP'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 8
            Top = 72
            Width = 551
            Height = 21
            DataField = 'SISTEMA'
            DataSource = DsCadastro
            TabOrder = 3
          end
          object DBEdit4: TDBEdit
            Left = 8
            Top = 112
            Width = 551
            Height = 21
            DataField = 'NOME_PAVILHAO'
            DataSource = DsCadastro
            TabOrder = 4
          end
          object DBEdit5: TDBEdit
            Left = 8
            Top = 152
            Width = 551
            Height = 21
            DataField = 'NOME_GALERIA'
            DataSource = DsCadastro
            TabOrder = 5
          end
          object DBEdit6: TDBEdit
            Left = 8
            Top = 192
            Width = 551
            Height = 21
            DataField = 'NOME_SOLARIO'
            DataSource = DsCadastro
            TabOrder = 6
          end
          object DBEdit7: TDBEdit
            Left = 8
            Top = 232
            Width = 551
            Height = 21
            DataField = 'NOME_CELA'
            DataSource = DsCadastro
            TabOrder = 7
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 128
            Top = 24
            Width = 426
            Height = 21
            TabOrder = 2
          end
          object DBLookupComboBoxPavilhao: TDBLookupComboBox
            Left = 10
            Top = 275
            Width = 300
            Height = 21
            DataField = 'ID_PAVILHAO'
            DataSource = DsCadastro
            KeyField = 'id_pavilhao'
            ListField = 'pavilhao'
            ListSource = DsPavilhao
            TabOrder = 8
          end
          object DBLookupComboBoxGaleria: TDBLookupComboBox
            Left = 10
            Top = 315
            Width = 300
            Height = 21
            DataField = 'ID_GALERIA'
            DataSource = DsCadastro
            KeyField = 'ID_GALERIA'
            ListField = 'GALERIA'
            ListSource = DsGaleria
            TabOrder = 9
          end
          object DBLookupComboBoxSolario: TDBLookupComboBox
            Left = 322
            Top = 273
            Width = 300
            Height = 21
            DataField = 'ID_SOLARIO'
            DataSource = DsCadastro
            KeyField = 'ID_SOLARIO'
            ListField = 'SOLARIO'
            ListSource = DsSolario
            TabOrder = 10
          end
          object DBLookupComboBoxCela: TDBLookupComboBox
            Left = 324
            Top = 313
            Width = 300
            Height = 21
            DataField = 'ID_CELA'
            DataSource = DsCadastro
            KeyField = 'ID_CELA'
            ListField = 'CELA'
            ListSource = DsCela
            TabOrder = 11
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        ExplicitWidth = 817
        ExplicitHeight = 504
        inherited PanelLocalizaConsulta: TPanel
          Width = 817
        end
        inherited PanelConsulta: TPanel
          Width = 817
          Height = 470
          inherited DBGridConsulta: TDBGrid
            Width = 815
            Height = 468
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    ExplicitWidth = 936
  end
  inherited StatusBar1: TStatusBar
    ExplicitTop = 563
    ExplicitWidth = 936
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM padrao')
  end
  object SqlPavilhao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_up'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'select * from pavilhao'
      'where id_up = :id_up'
      'order by pavilhao')
    SQLConnection = DM.SQLConnect
    Left = 440
    Top = 5
  end
  object DspPavilhao: TDataSetProvider
    DataSet = SqlPavilhao
    Left = 472
    Top = 5
  end
  object CdsPavilhao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPavilhao'
    Left = 504
    Top = 5
  end
  object DsPavilhao: TDataSource
    DataSet = CdsPavilhao
    Left = 536
    Top = 5
  end
  object SqlGaleria: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_pavilhao'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'select * from galeria'
      'where idpavilhao=:id_pavilhao'
      'order by galeria')
    SQLConnection = DM.SQLConnect
    Left = 440
    Top = 48
  end
  object DspGaleria: TDataSetProvider
    DataSet = SqlGaleria
    Left = 472
    Top = 48
  end
  object CdsGaleria: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'idpavilhao'
    MasterFields = 'id_pavilhao'
    MasterSource = DsPavilhao
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspGaleria'
    Left = 504
    Top = 48
  end
  object DsGaleria: TDataSource
    DataSet = CdsGaleria
    Left = 536
    Top = 48
  end
  object DsSolario: TDataSource
    DataSet = CdsSolario
    Left = 536
    Top = 96
  end
  object DsCela: TDataSource
    DataSet = CdsCela
    Left = 536
    Top = 144
  end
  object CdsCela: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'idsolario'
    MasterFields = 'id_solario'
    MasterSource = DsSolario
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspCela'
    Left = 504
    Top = 144
  end
  object CdsSolario: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'idgaleria'
    MasterFields = 'id_galeria'
    MasterSource = DsGaleria
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspSolario'
    Left = 504
    Top = 96
  end
  object DspSolario: TDataSetProvider
    DataSet = SqlSolario
    Left = 472
    Top = 96
  end
  object SqlSolario: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_galeria'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'select * from solario'
      'where idgaleria=:id_galeria'
      'order by solario')
    SQLConnection = DM.SQLConnect
    Left = 440
    Top = 96
  end
  object SqlCela: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_solario'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'select * from cela'
      'where idsolario=:id_solario'
      'order by cela')
    SQLConnection = DM.SQLConnect
    Left = 440
    Top = 144
  end
  object DspCela: TDataSetProvider
    DataSet = SqlCela
    Left = 472
    Top = 144
  end
end
