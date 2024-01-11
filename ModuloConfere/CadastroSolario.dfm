inherited FrmCadastroSolario: TFrmCadastroSolario
  Left = 401
  Top = 274
  Caption = 'Cadastro de Solario'
  TextHeight = 13
  inherited PanelBotoes: TPanel
    ExplicitHeight = 532
    inherited ToolBarModeloCadastro: TToolBar
      Height = 515
      ExplicitHeight = 514
    end
    inherited DBNavigator1: TDBNavigator
      Top = 515
      Hints.Strings = ()
      ExplicitTop = 514
    end
  end
  inherited PanelModeloCadastro: TPanel
    ExplicitWidth = 825
    ExplicitHeight = 532
    inherited Image2: TImage
      Width = 887
      ExplicitWidth = 887
    end
    inherited PageControlModeloCadastro: TPageControl
      ExplicitWidth = 825
      ExplicitHeight = 532
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 821
          Height = 505
          Caption = 'DM.CdsPavilhao'
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
                Left = 15
                Top = 71
                Width = 300
                Height = 21
                DataField = 'IDPAVILHAO'
                DataSource = DsCadastro
                KeyField = 'ID_PAVILHAO'
                ListField = 'PAVILHAO'
                ListSource = dsPavilhao
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
                ListSource = dsGaleria
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
          Width = 821
          ExplicitWidth = 821
        end
        inherited PanelConsulta: TPanel
          Width = 821
          Height = 471
          ExplicitWidth = 821
          ExplicitHeight = 471
          inherited DBGridConsulta: TDBGrid
            Width = 819
            Height = 469
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_SOLARIO'
                Title.Caption = 'C'#243'digo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PAVILHAO'
                Width = 113
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IDPAVILHAO'
                Title.Caption = 'IdMestre'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'GALERIA'
                Width = 139
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SOLARIO'
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    ExplicitWidth = 940
  end
  inherited StatusBar1: TStatusBar
    ExplicitTop = 565
    ExplicitWidth = 944
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
  inherited CdsCadastro: TClientDataSet
    object CdsCadastroID_SOLARIO: TIntegerField
      FieldName = 'ID_SOLARIO'
      Required = True
    end
    object CdsCadastroSOLARIO: TStringField
      FieldName = 'SOLARIO'
      Size = 50
    end
    object CdsCadastroIDGALERIA: TIntegerField
      FieldName = 'IDGALERIA'
    end
    object CdsCadastroIDPAVILHAO: TIntegerField
      FieldName = 'IDPAVILHAO'
    end
    object CdsCadastroDIA_VISITA: TStringField
      FieldName = 'DIA_VISITA'
      Size = 1
    end
    object CdsCadastroPERIODO_VISITA: TStringField
      FieldName = 'PERIODO_VISITA'
      Size = 1
    end
    object CdsCadastroCHAVE_MIGRACAO: TStringField
      FieldName = 'CHAVE_MIGRACAO'
      Size = 100
    end
    object CdsCadastroALA_DE_ESTUDO: TStringField
      FieldName = 'ALA_DE_ESTUDO'
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
    object CdsCadastroPAVILHAO: TStringField
      FieldKind = fkLookup
      FieldName = 'PAVILHAO'
      LookupDataSet = DM.CdsPavilhao
      LookupKeyFields = 'ID_PAVILHAO'
      LookupResultField = 'PAVILHAO'
      KeyFields = 'IDPAVILHAO'
      Lookup = True
    end
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
  object SqlRecursos: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT * FROM RECURSOS_ALA'
      'WHERE ID_SOLARIO = :ID_SOLARIO')
    Left = 591
    Top = 280
    ParamData = <
      item
        Name = 'ID_SOLARIO'
        ParamType = ptInput
      end>
  end
  object SqlPavilhao: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from pavilhao order by pavilhao')
    Left = 595
    Top = 200
  end
  object dsPavilhao: TDataSource
    DataSet = SqlPavilhao
    Left = 635
    Top = 200
  end
  object SqlGaleria: TFDQuery
    MasterSource = dsPavilhao
    MasterFields = 'ID_PAVILHAO'
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from galeria'
      'where idpavilhao=:ID_PAVILHAO'
      'order by galeria')
    Left = 595
    Top = 240
    ParamData = <
      item
        Name = 'ID_PAVILHAO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object dsGaleria: TDataSource
    DataSet = SqlGaleria
    Left = 635
    Top = 240
  end
end
