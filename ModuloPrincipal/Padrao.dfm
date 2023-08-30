inherited FrmPadrao: TFrmPadrao
  Left = 168
  Top = 59
  Caption = 'Padr'#227'o do Sistema'
  ClientHeight = 581
  ClientWidth = 932
  ExplicitWidth = 944
  ExplicitHeight = 619
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 530
    ExplicitHeight = 529
    inherited ToolBarModeloCadastro: TToolBar
      Height = 512
      ExplicitHeight = 511
    end
    inherited DBNavigator1: TDBNavigator
      Top = 512
      Hints.Strings = ()
      ExplicitTop = 511
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 817
    Height = 530
    ExplicitWidth = 813
    ExplicitHeight = 529
    inherited PageControlModeloCadastro: TPageControl
      Width = 817
      Height = 530
      ActivePage = TabSheetCadastro
      ExplicitWidth = 813
      ExplicitHeight = 529
      inherited TabSheetCadastro: TTabSheet
        ExplicitWidth = 809
        ExplicitHeight = 502
        inherited PanelCadastro: TPanel
          Width = 809
          Height = 502
          ExplicitWidth = 805
          ExplicitHeight = 501
          object Label2: TLabel
            Left = 8
            Top = 16
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditcodigo
          end
          object Label4: TLabel
            Left = 8
            Top = 119
            Width = 89
            Height = 13
            Caption = 'Padr'#227'o de Sistema'
            FocusControl = DBEdit3
          end
          object Label5: TLabel
            Left = 8
            Top = 159
            Width = 136
            Height = 13
            Caption = 'Nome para nivel de Pavilh'#227'o'
            FocusControl = DBEdit4
          end
          object Label6: TLabel
            Left = 8
            Top = 199
            Width = 128
            Height = 13
            Caption = 'Nome para nivel de Galeria'
            FocusControl = DBEdit5
          end
          object Label7: TLabel
            Left = 8
            Top = 239
            Width = 127
            Height = 13
            Caption = 'Nome para nivel de Solario'
            FocusControl = DBEdit6
          end
          object Label8: TLabel
            Left = 8
            Top = 279
            Width = 116
            Height = 13
            Caption = 'Nome para nivel de Cela'
            FocusControl = DBEdit7
          end
          object Label14: TLabel
            Left = 8
            Top = 328
            Width = 3
            Height = 13
          end
          object LabelCela: TLabel
            Left = 324
            Top = 416
            Width = 21
            Height = 13
            Caption = 'Cela'
          end
          object LabelSolario: TLabel
            Left = 10
            Top = 416
            Width = 45
            Height = 13
            Caption = 'Nivel - 03'
          end
          object LabelGaleria: TLabel
            Left = 10
            Top = 376
            Width = 45
            Height = 13
            Caption = 'Nivel - 02'
          end
          object LabelPavilhao: TLabel
            Left = 10
            Top = 336
            Width = 45
            Height = 13
            Caption = 'Nivel - 01'
          end
          object Label11: TLabel
            Left = 11
            Top = 318
            Width = 237
            Height = 13
            Caption = 'Localiza'#231#227'o padr'#227'o para entrada em transfer'#234'ncia'
          end
          object DBEditcodigo: TDBEdit
            Left = 8
            Top = 32
            Width = 57
            Height = 21
            DataField = 'IDPADRAO'
            DataSource = DsCadastro
            TabOrder = 0
          end
          object DBEdit3: TDBEdit
            Left = 8
            Top = 135
            Width = 601
            Height = 21
            DataField = 'SISTEMA'
            DataSource = DsCadastro
            TabOrder = 3
          end
          object DBEdit4: TDBEdit
            Tag = 1
            Left = 8
            Top = 178
            Width = 601
            Height = 21
            DataField = 'NOME_PAVILHAO'
            DataSource = DsCadastro
            TabOrder = 4
          end
          object DBEdit5: TDBEdit
            Tag = 1
            Left = 8
            Top = 215
            Width = 601
            Height = 21
            DataField = 'NOME_GALERIA'
            DataSource = DsCadastro
            TabOrder = 5
          end
          object DBEdit6: TDBEdit
            Tag = 1
            Left = 8
            Top = 255
            Width = 601
            Height = 21
            DataField = 'NOME_SOLARIO'
            DataSource = DsCadastro
            TabOrder = 6
          end
          object DBEdit7: TDBEdit
            Tag = 1
            Left = 8
            Top = 295
            Width = 601
            Height = 21
            DataField = 'NOME_CELA'
            DataSource = DsCadastro
            TabOrder = 7
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 323
            Top = 328
            Width = 286
            Height = 41
            Caption = 'Enviar mensagem de aviso ao setor de Intelig'#234'ncia?'
            Columns = 2
            DataField = 'ENVIA_MENSAGEM_INTELIGENCIA'
            DataSource = DsCadastro
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 9
            Values.Strings = (
              'S'
              'N')
          end
          object GroupBox1: TGroupBox
            Left = 8
            Top = 58
            Width = 409
            Height = 58
            Caption = 'Na entrada de Visitantes'
            TabOrder = 1
            object Label3: TLabel
              Left = 32
              Top = 16
              Width = 90
              Height = 13
              Caption = 'Limite de Visitantes'
              FocusControl = DBEdit1
            end
            object Label9: TLabel
              Left = 152
              Top = 16
              Width = 83
              Height = 13
              Caption = 'Limite de Sacolas'
              FocusControl = DBEdit2
            end
            object Label10: TLabel
              Left = 272
              Top = 16
              Width = 84
              Height = 13
              Caption = 'Limite de Dinheiro'
              FocusControl = DBEdit8
            end
            object DBEdit1: TDBEdit
              Left = 32
              Top = 32
              Width = 113
              Height = 21
              DataField = 'NUMERO_VISITANTES'
              DataSource = DsCadastro
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 152
              Top = 32
              Width = 113
              Height = 21
              DataField = 'LIMITE_SACOLA'
              DataSource = DsCadastro
              TabOrder = 1
            end
            object DBEdit8: TDBEdit
              Left = 272
              Top = 32
              Width = 113
              Height = 21
              DataField = 'LIMITE_DINHEIRO'
              DataSource = DsCadastro
              TabOrder = 2
            end
          end
          object DBLookupComboBoxCela: TDBLookupComboBox
            Left = 325
            Top = 430
            Width = 284
            Height = 21
            DataField = 'ID_CELA'
            DataSource = DsCadastro
            KeyField = 'ID_CELA'
            ListField = 'CELA'
            ListSource = DsCela
            TabOrder = 13
          end
          object DBLookupComboBoxSolario: TDBLookupComboBox
            Left = 10
            Top = 430
            Width = 300
            Height = 21
            DataField = 'ID_SOLARIO'
            DataSource = DsCadastro
            KeyField = 'ID_SOLARIO'
            ListField = 'SOLARIO'
            ListSource = DsSolario
            TabOrder = 12
          end
          object DBLookupComboBoxGaleria: TDBLookupComboBox
            Left = 10
            Top = 392
            Width = 300
            Height = 21
            DataField = 'ID_GALERIA'
            DataSource = DsCadastro
            KeyField = 'ID_GALERIA'
            ListField = 'GALERIA'
            ListSource = DsGaleria
            TabOrder = 10
          end
          object DBLookupComboBoxPavilhao: TDBLookupComboBox
            Left = 10
            Top = 352
            Width = 300
            Height = 21
            DataField = 'ID_PAVILHAO'
            DataSource = DsCadastro
            KeyField = 'id_pavilhao'
            ListField = 'pavilhao'
            ListSource = DsPavilhao
            TabOrder = 8
          end
          object DBRadioGroup2: TDBRadioGroup
            Left = 323
            Top = 373
            Width = 286
            Height = 41
            Caption = 'Numero da carteira de visitante ser c'#243'digo "ID" do sistema?'
            Columns = 2
            DataField = 'NUMERO_CARTEIRA_ID_SISTEMA'
            DataSource = DsCadastro
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 11
            Values.Strings = (
              'S'
              'N')
          end
          object DBRadioGroup3: TDBRadioGroup
            Left = 426
            Top = 66
            Width = 183
            Height = 49
            Caption = 'RGI Autom'#225'tico'
            Columns = 2
            DataField = 'rgi_automatico'
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
      inherited TabSheetConsulta: TTabSheet
        ExplicitWidth = 809
        ExplicitHeight = 502
        inherited PanelLocalizaConsulta: TPanel
          Width = 809
          ExplicitWidth = 809
        end
        inherited PanelConsulta: TPanel
          Width = 809
          Height = 468
          ExplicitWidth = 809
          ExplicitHeight = 468
          inherited DBGridConsulta: TDBGrid
            Width = 807
            Height = 466
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 932
    ExplicitWidth = 928
  end
  inherited StatusBar1: TStatusBar
    Top = 562
    Width = 932
    ExplicitTop = 561
    ExplicitWidth = 928
  end
  inherited SqlCadastro: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT * '
      'FROM PADRAO'
      'where'
      'cod_up = :id_up')
    Left = 240
    Top = 48
    ParamData = <
      item
        Name = 'id_up'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  inherited DspCadastro: TDataSetProvider
    Left = 268
    Top = 48
  end
  inherited CdsCadastro: TClientDataSet
    Left = 296
    Top = 48
  end
  inherited DsCadastro: TDataSource
    Left = 324
    Top = 48
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
  object DsGaleria: TDataSource
    DataSet = CdsGaleria
    Left = 536
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
  object DspGaleria: TDataSetProvider
    DataSet = SqlGaleria
    Left = 472
    Top = 48
  end
  object DspSolario: TDataSetProvider
    DataSet = SqlSolario
    Left = 472
    Top = 96
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
  object DsSolario: TDataSource
    DataSet = CdsSolario
    Left = 536
    Top = 96
  end
  object DsCela: TDataSource
    DataSet = CdsCela
    Left = 336
    Top = 72
  end
  object CdsCela: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'idsolario'
    MasterFields = 'id_solario'
    MasterSource = DsSolario
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspCela'
    Left = 304
    Top = 72
  end
  object DspCela: TDataSetProvider
    DataSet = SqlCela
    Left = 272
    Top = 72
  end
  object SqlPavilhao: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from pavilhao'
      'where id_up = :id_up'
      'order by pavilhao')
    Left = 440
    Top = 5
    ParamData = <
      item
        Name = 'ID_UP'
        ParamType = ptInput
      end>
  end
  object SqlGaleria: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from galeria'
      'where idpavilhao=:id_pavilhao'
      'order by galeria')
    Left = 440
    Top = 48
    ParamData = <
      item
        Name = 'ID_PAVILHAO'
        ParamType = ptInput
      end>
  end
  object SqlSolario: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from solario'
      'where idgaleria=:id_galeria'
      'order by solario')
    Left = 440
    Top = 96
    ParamData = <
      item
        Name = 'ID_GALERIA'
        ParamType = ptInput
      end>
  end
  object SqlCela: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from cela'
      'where idsolario=:id_solario'
      'order by cela')
    Left = 240
    Top = 72
    ParamData = <
      item
        Name = 'ID_SOLARIO'
        ParamType = ptInput
      end>
  end
end
