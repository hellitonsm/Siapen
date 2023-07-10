inherited FrmCadastroCela: TFrmCadastroCela
  Left = 261
  Width = 778
  Height = 409
  Caption = 'Cadastro de Cela'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 331
    inherited ToolBarModeloCadastro: TToolBar
      Height = 313
    end
    inherited DBNavigator1: TDBNavigator
      Top = 313
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 655
    Height = 331
    inherited PageControlModeloCadastro: TPageControl
      Width = 655
      Height = 331
      ActivePage = TabSheetCadastro
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 647
          Height = 303
          object Label2: TLabel
            Left = 24
            Top = 16
            Width = 44
            Height = 13
            Caption = 'ID_CELA'
            FocusControl = DBEditcodigo
          end
          object LabelCela: TLabel
            Left = 24
            Top = 183
            Width = 27
            Height = 13
            Caption = 'CELA'
            FocusControl = DBEdit2
          end
          object Label4: TLabel
            Left = 144
            Top = 233
            Width = 112
            Height = 13
            Caption = 'Motivo da manuten'#231#227'o:'
            FocusControl = DBEdit2
          end
          object Label5: TLabel
            Left = 304
            Top = 16
            Width = 122
            Height = 13
            Caption = 'Limite de Interno por cela:'
          end
          object LabelPavilhao: TLabel
            Left = 24
            Top = 58
            Width = 45
            Height = 13
            Caption = 'Nivel - 01'
          end
          object LabelGaleria: TLabel
            Left = 24
            Top = 98
            Width = 45
            Height = 13
            Caption = 'Nivel - 02'
          end
          object LabelSolario: TLabel
            Left = 24
            Top = 142
            Width = 45
            Height = 13
            Caption = 'Nivel - 03'
          end
          object DBEditcodigo: TDBEdit
            Left = 24
            Top = 32
            Width = 134
            Height = 21
            DataField = 'ID_CELA'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 24
            Top = 199
            Width = 489
            Height = 21
            DataField = 'CELA'
            DataSource = DsCadastro
            TabOrder = 6
          end
          object DBRadioGroup2: TDBRadioGroup
            Left = 172
            Top = 14
            Width = 116
            Height = 39
            Caption = 'Isolamento?'
            Columns = 2
            DataField = 'ISOLAMENTO'
            DataSource = DsCadastro
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 1
            Values.Strings = (
              'S'
              'N')
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 25
            Top = 231
            Width = 116
            Height = 39
            Caption = 'Em manuten'#231#227'o:'
            Columns = 2
            DataField = 'EM_MANUTENCAO'
            DataSource = DsCadastro
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 7
            Values.Strings = (
              'S'
              'N')
          end
          object DBEdit1: TDBEdit
            Left = 144
            Top = 247
            Width = 369
            Height = 21
            DataField = 'MOTIVO_MANUTENCAO'
            DataSource = DsCadastro
            TabOrder = 8
          end
          object DBEdit3: TDBEdit
            Left = 304
            Top = 32
            Width = 127
            Height = 21
            DataField = 'LIMITE_POR_CELA'
            DataSource = DsCadastro
            TabOrder = 2
          end
          object DBLookupComboBoxPavilhao: TDBLookupComboBox
            Left = 24
            Top = 74
            Width = 300
            Height = 21
            DataField = 'IDPAVILHAO'
            DataSource = DsCadastro
            KeyField = 'id_pavilhao'
            ListField = 'pavilhao'
            ListSource = DsPavilhao
            TabOrder = 3
            OnClick = DBLookupComboBoxPavilhaoClick
          end
          object DBLookupComboBoxGaleria: TDBLookupComboBox
            Left = 24
            Top = 114
            Width = 300
            Height = 21
            DataField = 'IDGALERIA'
            DataSource = DsCadastro
            KeyField = 'ID_GALERIA'
            ListField = 'GALERIA'
            ListSource = DsGaleria
            TabOrder = 4
            OnClick = DBLookupComboBoxGaleriaClick
          end
          object DBLookupComboBoxSolario: TDBLookupComboBox
            Left = 24
            Top = 156
            Width = 300
            Height = 21
            DataField = 'IDSOLARIO'
            DataSource = DsCadastro
            KeyField = 'ID_SOLARIO'
            ListField = 'SOLARIO'
            ListSource = DsSolario
            TabOrder = 5
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 647
        end
        inherited PanelConsulta: TPanel
          Width = 647
          Height = 269
          inherited DBGridConsulta: TDBGrid
            Width = 645
            Height = 267
            Columns = <
              item
                Expanded = False
                FieldName = 'PAVILHAO'
                Width = 116
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'GALERIA'
                Width = 115
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SOLARIO'
                Width = 118
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CELA'
                Width = 123
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 770
    inherited Image2: TImage
      Width = 770
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 363
    Width = 770
  end
  inherited SqlCadastro: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_UP'
        ParamType = ptInput
        Value = 11
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM CELA'
      'WHERE EXISTS (SELECT NULL'
      'FROM PAVILHAO'
      'WHERE PAVILHAO.ID_PAVILHAO=CELA.IDPAVILHAO'
      'AND PAVILHAO.ID_UP = :ID_UP)'
      'ORDER BY id_cela')
  end
  inherited CdsCadastro: TClientDataSet
    object CdsCadastroID_CELA: TIntegerField
      FieldName = 'ID_CELA'
      Required = True
    end
    object CdsCadastroCELA: TStringField
      FieldName = 'CELA'
      Size = 50
    end
    object CdsCadastroIDSOLARIO: TIntegerField
      FieldName = 'IDSOLARIO'
    end
    object CdsCadastroIDPAVILHAO: TIntegerField
      FieldName = 'IDPAVILHAO'
      LookupDataSet = DM.CdsPavilhao
      LookupKeyFields = 'ID_PAVILHAO'
      LookupResultField = 'PAVILHAO'
      LookupCache = True
    end
    object CdsCadastroIDGALERIA: TIntegerField
      FieldName = 'IDGALERIA'
      LookupDataSet = DM.CdsGaleria
      LookupKeyFields = 'ID_GALERIA'
      LookupResultField = 'GALERIA'
      LookupCache = True
    end
    object CdsCadastroSOLARIO: TStringField
      FieldKind = fkLookup
      FieldName = 'SOLARIO'
      LookupDataSet = DM.CdsSolario
      LookupKeyFields = 'ID_SOLARIO'
      LookupResultField = 'SOLARIO'
      KeyFields = 'IDSOLARIO'
      Size = 50
      Lookup = True
    end
    object CdsCadastroPAVILHAO: TStringField
      FieldKind = fkLookup
      FieldName = 'PAVILHAO'
      LookupDataSet = DM.CdsPavilhao
      LookupKeyFields = 'ID_PAVILHAO'
      LookupResultField = 'PAVILHAO'
      KeyFields = 'IDPAVILHAO'
      Size = 50
      Lookup = True
    end
    object CdsCadastroISOLAMENTO: TStringField
      FieldName = 'ISOLAMENTO'
      Size = 1
    end
    object CdsCadastroGALERIA: TStringField
      FieldKind = fkLookup
      FieldName = 'GALERIA'
      LookupDataSet = DM.CdsGaleria
      LookupKeyFields = 'ID_GALERIA'
      LookupResultField = 'GALERIA'
      KeyFields = 'IDGALERIA'
      Lookup = True
    end
    object CdsCadastroLIMITE_POR_CELA: TIntegerField
      FieldName = 'LIMITE_POR_CELA'
    end
    object CdsCadastroEM_MANUTENCAO: TStringField
      FieldName = 'EM_MANUTENCAO'
      Size = 1
    end
    object CdsCadastroMOTIVO_MANUTENCAO: TStringField
      FieldName = 'MOTIVO_MANUTENCAO'
      Size = 100
    end
  end
  object SqlConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cela'
      'where id_cela = -1')
    SQLConnection = DM.SQLConnect
    Top = 312
  end
  object Dspconsulta: TDataSetProvider
    DataSet = SqlConsulta
    Left = 28
    Top = 312
  end
  object CdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dspconsulta'
    Left = 56
    Top = 312
    object CdsConsultaID_CELA: TIntegerField
      FieldName = 'ID_CELA'
      Required = True
    end
    object CdsConsultaCELA: TStringField
      FieldName = 'CELA'
      Size = 50
    end
    object CdsConsultaIDSOLARIO: TIntegerField
      FieldName = 'IDSOLARIO'
    end
    object CdsConsultaIDPAVILHAO: TIntegerField
      FieldName = 'IDPAVILHAO'
    end
    object CdsConsultaIDGALERIA: TIntegerField
      FieldName = 'IDGALERIA'
    end
    object CdsConsultaISOLAMENTO: TStringField
      FieldName = 'ISOLAMENTO'
      Size = 1
    end
    object CdsConsultaLIMITE_POR_CELA: TIntegerField
      FieldName = 'LIMITE_POR_CELA'
    end
    object CdsConsultaEM_MANUTENCAO: TStringField
      FieldName = 'EM_MANUTENCAO'
      Size = 1
    end
    object CdsConsultaMOTIVO_MANUTENCAO: TStringField
      FieldName = 'MOTIVO_MANUTENCAO'
      Size = 100
    end
    object CdsConsultaPAVILHO: TStringField
      FieldKind = fkLookup
      FieldName = 'PAVILH'#195'O'
      LookupDataSet = DM.CdsPavilhao
      LookupKeyFields = 'ID_PAVILHAO'
      LookupResultField = 'PAVILHAO'
      KeyFields = 'IDPAVILHAO'
      Lookup = True
    end
    object CdsConsultaGALERIA: TStringField
      FieldKind = fkLookup
      FieldName = 'GALERIA'
      LookupDataSet = DM.CdsGaleria
      LookupKeyFields = 'ID_GALERIA'
      LookupResultField = 'GALERIA'
      KeyFields = 'IDGALERIA'
      Lookup = True
    end
    object CdsConsultaSOLRIO: TStringField
      FieldKind = fkLookup
      FieldName = 'SOL'#193'RIO'
      LookupDataSet = DM.CdsSolario
      LookupKeyFields = 'ID_SOLARIO'
      LookupResultField = 'SOLARIO'
      KeyFields = 'IDSOLARIO'
      Lookup = True
    end
  end
  object DsConsulta: TDataSource
    DataSet = CdsConsulta
    Left = 84
    Top = 312
  end
  object SqlSelectcela: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_UP'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM CELA c'
      'inner join pavilhao p on (p.id_pavilhao = c.idpavilhao)'
      'inner join unidade_penal u on (p.id_up = u.id_up)'
      'WHERE p.id_up = :ID_UP'
      'ORDER BY id_cela')
    SQLConnection = DM.SQLConnect
    Left = 40
    Top = 372
  end
  object SqlPavilhao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from pavilhao order by pavilhao')
    SQLConnection = DM.SQLConnect
    Left = 584
    Top = 197
  end
  object DspPavilhao: TDataSetProvider
    DataSet = SqlPavilhao
    Left = 616
    Top = 197
  end
  object CdsPavilhao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPavilhao'
    Left = 648
    Top = 197
  end
  object DsPavilhao: TDataSource
    DataSet = CdsPavilhao
    Left = 680
    Top = 197
  end
  object DsGaleria: TDataSource
    DataSet = CdsGaleria
    Left = 680
    Top = 240
  end
  object CdsGaleria: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'idpavilhao'
    MasterFields = 'id_pavilhao'
    MasterSource = DsPavilhao
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspGaleria'
    Left = 648
    Top = 240
  end
  object DspGaleria: TDataSetProvider
    DataSet = SqlGaleria
    Left = 616
    Top = 240
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
    Left = 584
    Top = 240
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
    Left = 584
    Top = 288
  end
  object DspSolario: TDataSetProvider
    DataSet = SqlSolario
    Left = 616
    Top = 288
  end
  object CdsSolario: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'idgaleria'
    MasterFields = 'id_galeria'
    MasterSource = DsGaleria
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspSolario'
    Left = 648
    Top = 288
  end
  object DsSolario: TDataSource
    DataSet = CdsSolario
    Left = 680
    Top = 288
  end
end
