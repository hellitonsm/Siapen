inherited FrmCadastroSolario: TFrmCadastroSolario
  Left = 401
  Top = 274
  Caption = 'Cadastro de Solario'
  TextHeight = 13
  inherited PanelBotoes: TPanel
    ExplicitHeight = 355
    inherited ToolBarModeloCadastro: TToolBar
      Height = 337
      ExplicitHeight = 337
    end
    inherited DBNavigator1: TDBNavigator
      Top = 337
      Hints.Strings = ()
      ExplicitTop = 337
    end
  end
  inherited PanelModeloCadastro: TPanel
    ExplicitWidth = 772
    ExplicitHeight = 355
    inherited Image2: TImage
      Width = 887
      ExplicitWidth = 887
    end
    inherited PageControlModeloCadastro: TPageControl
      ActivePage = TabSheetCadastro
      ExplicitWidth = 772
      ExplicitHeight = 355
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          ExplicitWidth = 764
          ExplicitHeight = 327
          object PageControl1: TPageControl
            Left = 0
            Top = 0
            Width = 753
            Height = 321
            ActivePage = TabSheet1
            TabOrder = 0
            TabWidth = 100
            object TabSheet1: TTabSheet
              Caption = 'Cadastro'
              object Label2: TLabel
                Left = 16
                Top = 16
                Width = 33
                Height = 13
                Caption = 'C'#243'digo'
              end
              object LabelPavilhao: TLabel
                Left = 16
                Top = 58
                Width = 45
                Height = 13
                Caption = 'Nivel - 01'
              end
              object LabelGaleria: TLabel
                Left = 16
                Top = 98
                Width = 45
                Height = 13
                Caption = 'Nivel - 02'
              end
              object LabelSolario: TLabel
                Left = 15
                Top = 141
                Width = 47
                Height = 13
                Caption = 'SOLARIO'
              end
              object DBEditcodigo: TDBEdit
                Left = 16
                Top = 32
                Width = 134
                Height = 21
                DataField = 'ID_SOLARIO'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 0
              end
              object DBLookupComboBoxPavilhao: TDBLookupComboBox
                Left = 16
                Top = 74
                Width = 300
                Height = 21
                DataField = 'IDPAVILHAO'
                DataSource = DsCadastro
                KeyField = 'id_pavilhao'
                ListField = 'pavilhao'
                ListSource = DsPavilhao
                TabOrder = 1
                OnClick = DBLookupComboBoxPavilhaoClick
              end
              object DBLookupComboBoxGaleria: TDBLookupComboBox
                Left = 16
                Top = 114
                Width = 300
                Height = 21
                DataField = 'IDGALERIA'
                DataSource = DsCadastro
                KeyField = 'ID_GALERIA'
                ListField = 'GALERIA'
                ListSource = DsGaleria
                TabOrder = 2
              end
              object DBEdit2: TDBEdit
                Left = 15
                Top = 157
                Width = 624
                Height = 21
                DataField = 'SOLARIO'
                DataSource = DsCadastro
                TabOrder = 3
              end
              object DBRadioGroup1: TDBRadioGroup
                Left = 15
                Top = 189
                Width = 624
                Height = 41
                Caption = 'Dia da  Visita'
                Columns = 8
                DataField = 'DIA_VISITA'
                DataSource = DsCadastro
                Items.Strings = (
                  'Domingo'
                  'Segunda'
                  'Ter'#231'a'
                  'Quarta'
                  'Quinta'
                  'Sexta'
                  'Sabado'
                  'N'#227'o Tem')
                TabOrder = 4
                Values.Strings = (
                  '1'
                  '2'
                  '3'
                  '4'
                  '5'
                  '6'
                  '7'
                  '8')
              end
              object DBRadioGroup2: TDBRadioGroup
                Left = 15
                Top = 237
                Width = 624
                Height = 41
                Caption = 'Periodo da  Visita'
                Columns = 2
                DataField = 'PERIODO_VISITA'
                DataSource = DsCadastro
                Items.Strings = (
                  'Manh'#227
                  'Tarde')
                TabOrder = 5
                Values.Strings = (
                  'M'
                  'T')
              end
              object DBRadioGroup3: TDBRadioGroup
                Left = 328
                Top = 96
                Width = 185
                Height = 41
                Caption = 'Sala de Estudo'
                Columns = 2
                DataField = 'ALA_DE_ESTUDO'
                DataSource = DsCadastro
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 6
                Values.Strings = (
                  'S'
                  'N')
              end
            end
            object TabSheet2: TTabSheet
              Caption = 'Recursos'
              ImageIndex = 1
              object Label3: TLabel
                Left = 16
                Top = 16
                Width = 48
                Height = 13
                Caption = 'Descri'#231#227'o'
              end
              object Label4: TLabel
                Left = 160
                Top = 16
                Width = 21
                Height = 13
                Caption = 'Tipo'
              end
              object Label5: TLabel
                Left = 312
                Top = 16
                Width = 58
                Height = 13
                Caption = 'Observa'#231#227'o'
              end
              object DBGrid1: TDBGrid
                Left = 16
                Top = 96
                Width = 577
                Height = 185
                DataSource = DSRecursos
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'DESCRICAO'
                    Width = 168
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DATA'
                    Width = 91
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'OBSERVACAO'
                    Width = 293
                    Visible = True
                  end>
              end
              object BitBtn1: TBitBtn
                Left = 248
                Top = 64
                Width = 75
                Height = 25
                Caption = 'Inserir'
                TabOrder = 1
                OnClick = BitBtn1Click
              end
              object Edit1: TEdit
                Left = 16
                Top = 32
                Width = 129
                Height = 21
                TabOrder = 2
              end
              object ComboBox1: TComboBox
                Left = 160
                Top = 32
                Width = 145
                Height = 21
                TabOrder = 3
              end
              object Edit2: TEdit
                Left = 312
                Top = 32
                Width = 289
                Height = 21
                TabOrder = 4
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 764
          ExplicitWidth = 764
        end
        inherited PanelConsulta: TPanel
          Width = 764
          Height = 293
          ExplicitWidth = 764
          ExplicitHeight = 293
          inherited DBGridConsulta: TDBGrid
            Width = 762
            Height = 291
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_SOLARIO'
                Title.Caption = 'C'#243'digo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SOLARIO'
                Title.Caption = 'Descri'#231#227'o'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IDPAVILHAO'
                Title.Caption = 'IdMestre'
                Visible = False
              end>
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    ExplicitWidth = 887
  end
  inherited StatusBar1: TStatusBar
    ExplicitTop = 387
    ExplicitWidth = 887
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM SOLARIO'
      'WHERE EXISTS (SELECT NULL'
      'FROM PAVILHAO'
      'WHERE PAVILHAO.id_pavilhao=SOLARIO.idpavilhao'
      'AND PAVILHAO.ID_UP = :ID_UP)'
      'ORDER BY SOLARIO')
    ParamData = <
      item
        Name = 'ID_UP'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
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
  object SqlRecursos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID_SOLARIO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM RECURSOS_ALA'
      'WHERE ID_SOLARIO = :ID_SOLARIO')
    SQLConnection = DM.SQLConnect
    Left = 587
    Top = 280
  end
  object DSPRecursos: TDataSetProvider
    DataSet = SqlRecursos
    Left = 619
    Top = 280
  end
  object CDSRecursos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRecursos'
    Left = 651
    Top = 280
  end
  object DSRecursos: TDataSource
    DataSet = CDSRecursos
    Left = 683
    Top = 280
  end
end
