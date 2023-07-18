inherited FrmMudancaCela: TFrmMudancaCela
  Left = 189
  Top = 30
  Caption = 'Mudan'#231'a de Cela'
  ClientWidth = 909
  Menu = MainMenu1
  WindowState = wsMaximized
  ExplicitWidth = 921
  ExplicitHeight = 642
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Width = 909
    Height = 40
    Align = alTop
    ExplicitWidth = 905
    ExplicitHeight = 40
    inherited ToolBarModeloCadastro: TToolBar
      Width = 829
      Height = 40
      ButtonWidth = 115
      ExplicitWidth = 825
      ExplicitHeight = 40
      inherited Novo: TToolButton
        Wrap = False
        ExplicitWidth = 115
      end
      inherited Editar: TToolButton
        Left = 121
        Top = 0
        Wrap = False
        ExplicitLeft = 121
        ExplicitTop = 0
        ExplicitWidth = 115
      end
      inherited Cancelar: TToolButton
        Left = 236
        Top = 0
        Wrap = False
        ExplicitLeft = 236
        ExplicitTop = 0
        ExplicitWidth = 115
      end
      inherited Salvar: TToolButton
        Left = 351
        Top = 0
        Wrap = False
        ExplicitLeft = 351
        ExplicitTop = 0
        ExplicitWidth = 115
      end
      inherited Excluir: TToolButton
        Left = 466
        Top = 0
        Wrap = False
        ExplicitLeft = 466
        ExplicitTop = 0
        ExplicitWidth = 115
      end
      inherited Fechar: TToolButton
        Left = 581
        Top = 0
        ExplicitLeft = 581
        ExplicitTop = 0
        ExplicitWidth = 115
      end
      object ConfirmaMudanca: TToolButton
        Left = 696
        Top = 0
        Caption = 'Confirmar'
        ImageIndex = 39
        OnClick = ConfirmaMudancaClick
      end
    end
    inherited DBNavigator1: TDBNavigator
      Left = 829
      Top = 0
      Width = 80
      Height = 40
      DataSource = DsConsulta
      Align = alRight
      Hints.Strings = ()
      ExplicitLeft = 825
      ExplicitTop = 0
      ExplicitWidth = 80
      ExplicitHeight = 40
    end
  end
  inherited PanelModeloCadastro: TPanel
    Left = 0
    Top = 72
    Width = 909
    Height = 493
    ExplicitLeft = 0
    ExplicitTop = 72
    ExplicitWidth = 909
    ExplicitHeight = 494
    inherited Image2: TImage
      Width = 894
      ExplicitWidth = 894
    end
    inherited PageControlModeloCadastro: TPageControl
      Width = 909
      Height = 493
      ActivePage = TabSheetCadastro
      ExplicitWidth = 909
      ExplicitHeight = 494
      inherited TabSheetCadastro: TTabSheet
        ExplicitWidth = 901
        ExplicitHeight = 465
        inherited PanelCadastro: TPanel
          Width = 901
          Height = 465
          ExplicitWidth = 901
          ExplicitHeight = 466
          object PageControlTransferencia: TPageControl
            Left = 1
            Top = 1
            Width = 899
            Height = 463
            ActivePage = TabSheetTransferencia
            Align = alClient
            TabOrder = 0
            TabWidth = 200
            ExplicitHeight = 464
            object TabSheetTransferencia: TTabSheet
              Caption = 'Dados da Mudan'#231'a'
              ImageIndex = 1
              object Label2: TLabel
                Left = 16
                Top = 16
                Width = 11
                Height = 13
                Caption = 'ID'
                FocusControl = DBEditcodigo
              end
              object Label3: TLabel
                Left = 400
                Top = 16
                Width = 70
                Height = 13
                Caption = 'N'#186' Documento'
                FocusControl = DBEditDoc
              end
              object Label4: TLabel
                Left = 16
                Top = 60
                Width = 33
                Height = 13
                Caption = 'Origem'
              end
              object Label6: TLabel
                Left = 224
                Top = 16
                Width = 79
                Height = 13
                Caption = 'Tipo Documento'
              end
              object Label7: TLabel
                Left = 16
                Top = 108
                Width = 120
                Height = 13
                Caption = 'Motivo da Movimenta'#231#227'o'
              end
              object Label8: TLabel
                Left = 120
                Top = 16
                Width = 23
                Height = 13
                Caption = 'Data'
                FocusControl = DBEditdata
              end
              object Label9: TLabel
                Left = 17
                Top = 277
                Width = 222
                Height = 13
                Caption = 'Prontu'#225'rio (Aperte TAB ou ENTER para Inserir)'
              end
              object LabelAguardando: TLabel
                Left = 632
                Top = 13
                Width = 228
                Height = 23
                Caption = 'Aguardando confirma'#231#227'o!!!'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -21
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
              end
              object DBEditcodigo: TDBEdit
                Left = 16
                Top = 32
                Width = 97
                Height = 21
                DataField = 'ID_MUDANCA_CELA'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 0
              end
              object DBEditDoc: TDBEdit
                Left = 400
                Top = 32
                Width = 129
                Height = 21
                DataField = 'NUMERO_DOCUMENTO'
                DataSource = DsCadastro
                TabOrder = 3
              end
              object DBEditdata: TDBEdit
                Left = 119
                Top = 32
                Width = 97
                Height = 21
                DataField = 'DATA'
                DataSource = DsCadastro
                TabOrder = 1
              end
              object DBLookupComboBoxorigem: TDBLookupComboBox
                Left = 16
                Top = 77
                Width = 515
                Height = 21
                DataField = 'ID_UP'
                DataSource = DsCadastro
                Enabled = False
                KeyField = 'ID_UP'
                ListField = 'NOME_UP'
                ListSource = DM.DsUP
                TabOrder = 4
              end
              object DBComboBoxTipoDoc: TDBComboBox
                Left = 225
                Top = 32
                Width = 162
                Height = 21
                DataField = 'TIPO_DOCUMENTO'
                DataSource = DsCadastro
                Items.Strings = (
                  'N'#227'o Informado'
                  'CI'
                  'Alvar'#225
                  'Carta Livramento'
                  'Memorando'
                  'Ocorr'#234'ncia'
                  'Oficio')
                TabOrder = 2
              end
              object DBMemo1: TDBMemo
                Left = 16
                Top = 128
                Width = 514
                Height = 41
                DataField = 'MOTIVO_MOVIMENTACAO'
                DataSource = DsCadastro
                TabOrder = 5
              end
              object GroupBox1: TGroupBox
                Left = 16
                Top = 174
                Width = 641
                Height = 102
                Caption = 'Nova Localiza'#231#227'o'
                TabOrder = 6
                object LabelPavilhao: TLabel
                  Left = 9
                  Top = 19
                  Width = 45
                  Height = 13
                  Caption = 'Nivel - 01'
                end
                object LabelGaleria: TLabel
                  Left = 9
                  Top = 59
                  Width = 45
                  Height = 13
                  Caption = 'Nivel - 02'
                end
                object LabelCela: TLabel
                  Left = 321
                  Top = 59
                  Width = 21
                  Height = 13
                  Caption = 'Cela'
                end
                object LabelSolario: TLabel
                  Left = 321
                  Top = 19
                  Width = 45
                  Height = 13
                  Caption = 'Nivel - 03'
                end
                object DBLookupComboBoxPavilhao: TDBLookupComboBox
                  Left = 9
                  Top = 35
                  Width = 300
                  Height = 21
                  KeyField = 'id_pavilhao'
                  ListField = 'pavilhao'
                  ListSource = DsPavilhao
                  TabOrder = 0
                end
                object DBLookupComboBoxGaleria: TDBLookupComboBox
                  Left = 9
                  Top = 75
                  Width = 300
                  Height = 21
                  KeyField = 'ID_GALERIA'
                  ListField = 'GALERIA'
                  ListSource = DsGaleria
                  TabOrder = 1
                end
                object DBLookupComboBoxCela: TDBLookupComboBox
                  Left = 321
                  Top = 75
                  Width = 300
                  Height = 21
                  KeyField = 'ID_CELA'
                  ListField = 'CELA'
                  ListSource = DsCela
                  TabOrder = 3
                end
                object DBLookupComboBoxSolario: TDBLookupComboBox
                  Left = 321
                  Top = 35
                  Width = 300
                  Height = 21
                  KeyField = 'ID_SOLARIO'
                  ListField = 'SOLARIO'
                  ListSource = DsSolario
                  TabOrder = 2
                end
              end
              object DBGridMudanca: TDBGrid
                Left = 0
                Top = 320
                Width = 876
                Height = 97
                DataSource = DsVinc_Mudanca_Cela
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                ReadOnly = True
                TabOrder = 11
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                OnDrawColumnCell = DBGridMudancaDrawColumnCell
                OnDblClick = DBGridMudancaDblClick
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'STATUS'
                    Title.Caption = 'Status'
                    Width = 40
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'RGI'
                    Title.Caption = 'Prontu'#225'rio'
                    Width = 60
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'INTERNO'
                    Title.Caption = 'Interno'
                    Width = 180
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PAVILHAO_ANTES'
                    Width = 65
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'GALERIA_ANTES'
                    Width = 65
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SOLARIO_ANTES'
                    Width = 65
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CELA_ANTES'
                    Width = 65
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PAVILHAO_NOVO'
                    Width = 65
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'GALERIA_NOVO'
                    Width = 65
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SOLARIO_NOVO'
                    Width = 65
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CELA_NOVO'
                    Width = 65
                    Visible = True
                  end>
              end
              object Editprontuario: TEdit
                Left = 16
                Top = 293
                Width = 127
                Height = 21
                TabOrder = 7
                OnExit = EditprontuarioExit
              end
              object DBLookupComboBoxinterno: TDBLookupComboBox
                Left = 145
                Top = 293
                Width = 345
                Height = 21
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                KeyField = 'ID_INTERNO'
                ListField = 'NOME_INTERNO'
                ListSource = DsInterno
                ParentFont = False
                TabOrder = 8
              end
              object Button1: TButton
                Left = 492
                Top = 288
                Width = 80
                Height = 25
                Caption = 'Busca'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 9
                OnClick = Button1Click
              end
              object BtnTodosCela: TButton
                Left = 599
                Top = 288
                Width = 108
                Height = 25
                Caption = 'Inserir Cela'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 10
                OnClick = BtnTodosCelaClick
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        ExplicitWidth = 901
        ExplicitHeight = 465
        inherited PanelLocalizaConsulta: TPanel
          Width = 901
          Height = 73
          ExplicitWidth = 897
          ExplicitHeight = 73
          inherited Label1: TLabel
            Visible = False
          end
          object Label5: TLabel [1]
            Left = 8
            Top = 40
            Width = 23
            Height = 13
            Caption = 'Data'
          end
          object LabelAguardando2: TLabel [2]
            Left = 632
            Top = 37
            Width = 228
            Height = 23
            Caption = 'Aguardando confirma'#231#227'o!!!'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -21
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
          end
          inherited EditLocalizar: TEdit
            Visible = False
          end
          object DateTimePicker1: TDateTimePicker
            Left = 56
            Top = 40
            Width = 113
            Height = 21
            Date = 41070.000000000000000000
            Time = 0.024699270827113650
            TabOrder = 1
          end
          object Button2: TButton
            Left = 200
            Top = 41
            Width = 75
            Height = 25
            Caption = 'Filtrar'
            TabOrder = 2
            OnClick = Button2Click
          end
        end
        inherited PanelConsulta: TPanel
          Top = 73
          Width = 901
          Height = 392
          ExplicitTop = 73
          ExplicitWidth = 897
          ExplicitHeight = 391
          inherited DBGridConsulta: TDBGrid
            Width = 899
            Height = 214
            DataSource = DsConsulta
            PopupMenu = PopupMenuLiberar
            Columns = <
              item
                Expanded = False
                FieldName = 'DATA'
                Title.Caption = 'Data'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_UP'
                Title.Caption = 'Unidade Prisional'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CONFIRMADA'
                Title.Caption = 'Confirmada'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_DOCUMENTO'
                Title.Caption = 'Tipo de Doc.'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMERO_DOCUMENTO'
                Title.Caption = 'Documento'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_FUNCIONARIO'
                Title.Caption = 'Funcion'#225'rio'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MOTIVO_MOVIMENTACAO'
                Title.Caption = 'Motivo'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_MUDANCA_CELA'
                Title.Caption = 'ID'
                Width = 50
                Visible = True
              end>
          end
          object DBGridMudancaConsulta: TDBGrid
            Left = 1
            Top = 215
            Width = 899
            Height = 176
            Align = alBottom
            DataSource = DsVinc_Mudanca_Cela
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDrawColumnCell = DBGridMudancaDrawColumnCell
            OnDblClick = DBGridMudancaDblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'STATUS'
                Title.Caption = 'Status'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RGI'
                Title.Caption = 'Prontu'#225'rio'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'INTERNO'
                Title.Caption = 'Interno'
                Width = 180
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PAVILHAO_ANTES'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'GALERIA_ANTES'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SOLARIO_ANTES'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CELA_ANTES'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PAVILHAO_NOVO'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'GALERIA_NOVO'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SOLARIO_NOVO'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CELA_NOVO'
                Width = 65
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 909
    ExplicitWidth = 905
  end
  inherited StatusBar1: TStatusBar
    Width = 909
    ExplicitWidth = 909
  end
  inherited ImageListCadastro: TImageList
    Left = 832
    Top = 0
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM MUDANCA_CELA'
      'WHERE ID_MUDANCA_CELA= :ID_MUDANCA_CELA')
    Left = 672
    Top = 88
    ParamData = <
      item
        Name = 'ID_MUDANCA_CELA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
  end
  inherited DspCadastro: TDataSetProvider
    Left = 700
    Top = 88
  end
  inherited CdsCadastro: TClientDataSet
    IndexFieldNames = 'ID_MUDANCA_CELA'
    MasterFields = 'ID_MUDANCA_CELA'
    MasterSource = DsConsulta
    PacketRecords = 0
    Left = 728
    Top = 88
  end
  inherited DsCadastro: TDataSource
    Left = 756
    Top = 88
  end
  object SqlVinc_Mudanca_Cela: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_mudanca_cela'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'select * from vinc_mudanca_cela'
      'where id_mudanca_cela = :id_mudanca_cela'
      'order by id_mudanca_cela')
    SQLConnection = DM.SQLConnect
    Left = 673
    Top = 231
  end
  object DspVinc_Mudanca_Cela: TDataSetProvider
    DataSet = SqlVinc_Mudanca_Cela
    Left = 701
    Top = 231
  end
  object CdsVinc_Mudanca_Cela: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_MUDANCA_CELA'
    MasterFields = 'ID_MUDANCA_CELA'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspVinc_Mudanca_Cela'
    OnCalcFields = CdsVinc_Mudanca_CelaCalcFields
    Left = 729
    Top = 231
    object CdsVinc_Mudanca_CelaSTATUS: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'STATUS'
      Size = 100
    end
    object CdsVinc_Mudanca_CelaID_VINC_MUDANCA_CELA: TIntegerField
      FieldName = 'ID_VINC_MUDANCA_CELA'
      Required = True
    end
    object CdsVinc_Mudanca_CelaID_MUDANCA_CELA: TIntegerField
      FieldName = 'ID_MUDANCA_CELA'
      Required = True
    end
    object CdsVinc_Mudanca_CelaID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
      Required = True
    end
    object CdsVinc_Mudanca_CelaID_PAVILHAO_ANTES: TIntegerField
      FieldName = 'ID_PAVILHAO_ANTES'
    end
    object CdsVinc_Mudanca_CelaID_GALERIA_ANTES: TIntegerField
      FieldName = 'ID_GALERIA_ANTES'
    end
    object CdsVinc_Mudanca_CelaID_SOLARIO_ANTES: TIntegerField
      FieldName = 'ID_SOLARIO_ANTES'
    end
    object CdsVinc_Mudanca_CelaPAVILHAO_ANTES: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'PAVILHAO_ANTES'
    end
    object CdsVinc_Mudanca_CelaGALERIA_ANTES: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'GALERIA_ANTES'
    end
    object CdsVinc_Mudanca_CelaSOLARIO_ANTES: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'SOLARIO_ANTES'
    end
    object CdsVinc_Mudanca_CelaCELA_ANTES: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CELA_ANTES'
    end
    object CdsVinc_Mudanca_CelaPAVILHAO_NOVO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'PAVILHAO_NOVO'
    end
    object CdsVinc_Mudanca_CelaGALERIA_NOVO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'GALERIA_NOVO'
    end
    object CdsVinc_Mudanca_CelaSOLARIO_NOVO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'SOLARIO_NOVO'
    end
    object CdsVinc_Mudanca_CelaCELA_NOVO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CELA_NOVO'
    end
    object CdsVinc_Mudanca_CelaID_CELA_ANTES: TIntegerField
      FieldName = 'ID_CELA_ANTES'
    end
    object CdsVinc_Mudanca_CelaID_PAVILHAO_NOVO: TIntegerField
      FieldName = 'ID_PAVILHAO_NOVO'
    end
    object CdsVinc_Mudanca_CelaID_GALERIA_NOVO: TIntegerField
      FieldName = 'ID_GALERIA_NOVO'
    end
    object CdsVinc_Mudanca_CelaID_SOLARIO_NOVO: TIntegerField
      FieldName = 'ID_SOLARIO_NOVO'
    end
    object CdsVinc_Mudanca_CelaID_CELA_NOVO: TIntegerField
      FieldName = 'ID_CELA_NOVO'
    end
    object CdsVinc_Mudanca_CelaINTERNO: TStringField
      FieldKind = fkLookup
      FieldName = 'INTERNO'
      LookupDataSet = DM.CdsInterno
      LookupKeyFields = 'ID_INTERNO'
      LookupResultField = 'NOME_INTERNO'
      KeyFields = 'ID_INTERNO'
      Lookup = True
    end
    object CdsVinc_Mudanca_CelaRGI: TStringField
      FieldKind = fkLookup
      FieldName = 'RGI'
      LookupDataSet = DM.CdsInterno
      LookupKeyFields = 'ID_INTERNO'
      LookupResultField = 'RGI'
      KeyFields = 'ID_INTERNO'
      Lookup = True
    end
  end
  object DsVinc_Mudanca_Cela: TDataSource
    DataSet = CdsVinc_Mudanca_Cela
    Left = 757
    Top = 231
  end
  object SQLHISTORICO_interno: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from historico_interno'
      'where idinterno=:id_interno')
    SQLConnection = DM.SQLConnect
    Left = 672
    Top = 136
  end
  object DSPHISTORICO_interno: TDataSetProvider
    DataSet = SQLHISTORICO_interno
    Left = 700
    Top = 136
  end
  object CDSHISTORICO_interno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPHISTORICO_interno'
    Left = 728
    Top = 136
  end
  object DSHISTORICO_interno: TDataSource
    DataSet = CDSHISTORICO_interno
    Left = 756
    Top = 136
  end
  object DsInterno: TDataSource
    DataSet = CdsInterno
    Left = 759
    Top = 184
  end
  object CdsInterno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspInterno'
    Left = 732
    Top = 184
  end
  object DspInterno: TDataSetProvider
    DataSet = SqlInterno
    Left = 703
    Top = 184
  end
  object SqlInterno: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_UP'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'SELECT ID_INTERNO,'
      'NOME_INTERNO,'
      'IDPAVILHAO,'
      'IDGALERIA,'
      'IDSOLARIO,'
      'IDCELA,'
      'RGI'
      'FROM INTERNO'
      'WHERE ID_UP=:ID_UP')
    SQLConnection = DM.SQLConnect
    Left = 676
    Top = 184
  end
  object SqlExecute: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT id_interno, nome_interno, rgi'
      'FROM INTERNO'
      'ORDER BY NOME_INTERNO')
    SQLConnection = DM.SQLConnect
    Left = 672
    Top = 288
  end
  object MainMenu1: TMainMenu
    Left = 203
    object Relatorios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object Especifico1: TMenuItem
        Caption = 'Espec'#237'ficos'
        OnClick = Especifico1Click
      end
    end
  end
  object SqlConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_up'
        ParamType = ptInput
        Value = -1
      end
      item
        DataType = ftDateTime
        Name = 'DATA'
        ParamType = ptInput
        Value = 0d
      end>
    SQL.Strings = (
      'SELECT '
      '    M.CONFIRMADA,'
      '    U.NOME_UP,'
      '    M.DATA,'
      '    M.TIPO_DOCUMENTO,'
      '    M.NUMERO_DOCUMENTO,'
      '    M.MOTIVO_MOVIMENTACAO,'
      '    M.ID_MUDANCA_CELA,'
      '    F.NOME_FUNCIONARIO'
      'FROM mudanca_cela m'
      '   INNER JOIN UNIDADE_PENAL U ON (M.ID_UP = U.ID_UP)'
      
        '   INNER JOIN FUNCIONARIO F ON (M.ID_FUNCIONARIO = F.ID_FUNCIONA' +
        'RIO)'
      'WHERE M.ID_UP= :ID_UP'
      'AND M.DATA>= :DATA - 1'
      'order by m.id_mudanca_cela desc')
    SQLConnection = DM.SQLConnect
    Left = 672
    Top = 32
  end
  object DspConsulta: TDataSetProvider
    DataSet = SqlConsulta
    Left = 700
    Top = 32
  end
  object CdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspConsulta'
    Left = 728
    Top = 32
  end
  object DsConsulta: TDataSource
    AutoEdit = False
    DataSet = CdsConsulta
    OnDataChange = DsCadastroDataChange
    Left = 756
    Top = 32
  end
  object PopupMenuLiberar: TPopupMenu
    Left = 604
    Top = 9
    object Liberar1: TMenuItem
      Caption = 'Confirmar Mudan'#231'a'
      OnClick = Liberar1Click
    end
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
    Left = 736
    Top = 341
  end
  object DspPavilhao: TDataSetProvider
    DataSet = SqlPavilhao
    Left = 768
    Top = 341
  end
  object CdsPavilhao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPavilhao'
    Left = 800
    Top = 341
  end
  object DsPavilhao: TDataSource
    DataSet = CdsPavilhao
    Left = 832
    Top = 341
  end
  object DsGaleria: TDataSource
    DataSet = CdsGaleria
    Left = 848
    Top = 376
  end
  object CdsGaleria: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'idpavilhao'
    MasterFields = 'id_pavilhao'
    MasterSource = DsPavilhao
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspGaleria'
    Left = 800
    Top = 384
  end
  object DspGaleria: TDataSetProvider
    DataSet = SqlGaleria
    Left = 768
    Top = 384
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
    Left = 736
    Top = 384
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
    Left = 736
    Top = 432
  end
  object DspSolario: TDataSetProvider
    DataSet = SqlSolario
    Left = 768
    Top = 432
  end
  object CdsSolario: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'idgaleria'
    MasterFields = 'id_galeria'
    MasterSource = DsGaleria
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspSolario'
    Left = 800
    Top = 432
  end
  object DsSolario: TDataSource
    DataSet = CdsSolario
    Left = 832
    Top = 432
  end
  object DsCela: TDataSource
    DataSet = CdsCela
    Left = 832
    Top = 480
  end
  object CdsCela: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'idsolario'
    MasterFields = 'id_solario'
    MasterSource = DsSolario
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspCela'
    Left = 800
    Top = 480
  end
  object DspCela: TDataSetProvider
    DataSet = SqlCela
    Left = 768
    Top = 480
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
    Left = 736
    Top = 480
  end
  object Dsconspadrao: TDataSource
    DataSet = Cdsconspadrao
    OnDataChange = DsCadastroDataChange
    Left = 332
  end
  object Cdsconspadrao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dspconspadrao'
    Left = 304
  end
  object Dspconspadrao: TDataSetProvider
    DataSet = SQLconspadrao
    Left = 276
  end
  object SQLconspadrao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnect
    Left = 248
  end
  object SqlPavAntes: TSQLQuery
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
    Left = 597
    Top = 341
  end
  object SqlGalAntes: TSQLQuery
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
    Left = 597
    Top = 384
  end
  object SqlSolAntes: TSQLQuery
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
    Left = 597
    Top = 432
  end
  object SqlCelaAntes: TSQLQuery
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
    Left = 597
    Top = 480
  end
  object DspCelaAntes: TDataSetProvider
    DataSet = SqlCelaAntes
    Left = 629
    Top = 480
  end
  object DspSolAntes: TDataSetProvider
    DataSet = SqlSolAntes
    Left = 629
    Top = 432
  end
  object DspGalAntes: TDataSetProvider
    DataSet = SqlGalAntes
    Left = 629
    Top = 384
  end
  object DspPavAntes: TDataSetProvider
    DataSet = SqlPavAntes
    Left = 629
    Top = 341
  end
  object CdsPavAntes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPavAntes'
    Left = 661
    Top = 341
  end
  object DsPavAntes: TDataSource
    DataSet = CdsPavAntes
    Left = 693
    Top = 341
  end
  object DsGalAntes: TDataSource
    DataSet = CdsGalAntes
    Left = 717
    Top = 352
  end
  object CdsGalAntes: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'idpavilhao'
    MasterFields = 'id_pavilhao'
    MasterSource = DsPavAntes
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspGalAntes'
    Left = 661
    Top = 384
  end
  object CdsSolAntes: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'idgaleria'
    MasterFields = 'id_galeria'
    MasterSource = DsGalAntes
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspSolario'
    Left = 661
    Top = 432
  end
  object DsSolAntes: TDataSource
    DataSet = CdsSolAntes
    Left = 693
    Top = 432
  end
  object DsCelaAntes: TDataSource
    DataSet = CdsCelaAntes
    Left = 693
    Top = 480
  end
  object CdsCelaAntes: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'idsolario'
    MasterFields = 'id_solario'
    MasterSource = DsSolAntes
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspCelaAntes'
    Left = 661
    Top = 480
  end
  object SqlCelaInterno: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID_UP'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT ID_INTERNO,'
      'NOME_INTERNO,'
      'IDPAVILHAO,'
      'IDGALERIA,'
      'IDSOLARIO,'
      'IDCELA,'
      'RGI'
      'FROM INTERNO'
      'WHERE ID_UP=:ID_UP')
    SQLConnection = DM.SQLConnect
    Left = 548
    Top = 192
  end
  object DspCelaInterno: TDataSetProvider
    DataSet = SqlCelaInterno
    Left = 575
    Top = 192
  end
  object CdsCelaInterno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCelaInterno'
    Left = 604
    Top = 192
  end
  object DSCelaInterno: TDataSource
    DataSet = CdsCelaInterno
    Left = 631
    Top = 192
  end
  object Timer1: TTimer
    Interval = 300
    OnTimer = Timer1Timer
    Left = 596
    Top = 104
  end
end
