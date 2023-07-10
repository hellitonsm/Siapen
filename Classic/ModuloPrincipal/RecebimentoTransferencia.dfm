inherited FrmRecebimentoTransferencia: TFrmRecebimentoTransferencia
  Top = 134
  Width = 891
  Height = 643
  Caption = 'Conferir Transfer'#234'ncia Recebida'
  Menu = MainMenu1
  OldCreateOrder = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Width = 875
    Height = 40
    Align = alTop
    inherited ToolBarModeloCadastro: TToolBar
      Width = 795
      Height = 40
      inherited Novo: TToolButton
        Wrap = False
        Visible = False
      end
      inherited Editar: TToolButton
        Left = 113
        Top = 0
        Caption = '&RECEBER'
        ImageIndex = 36
        Wrap = False
        Visible = False
      end
      inherited Cancelar: TToolButton
        Left = 220
        Top = 0
        Wrap = False
        Visible = False
      end
      inherited Salvar: TToolButton
        Left = 327
        Top = 0
        Wrap = False
        Visible = False
      end
      inherited Excluir: TToolButton
        Left = 434
        Top = 0
        Wrap = False
      end
      inherited Fechar: TToolButton
        Left = 541
        Top = 0
      end
    end
    inherited DBNavigator1: TDBNavigator
      Left = 795
      Top = 0
      Width = 80
      Height = 40
      Align = alRight
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Left = 0
    Top = 72
    Width = 875
    Height = 494
    inherited PageControlModeloCadastro: TPageControl
      Width = 875
      Height = 494
      ActivePage = TabSheetCadastro
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 867
          Height = 466
          object PageControlTransferencia: TPageControl
            Left = 1
            Top = 1
            Width = 865
            Height = 464
            ActivePage = TabSheetTransferencia
            Align = alClient
            TabOrder = 0
            TabWidth = 200
            object TabSheetTransferencia: TTabSheet
              Caption = 'Dados do Recebimento'
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
                Left = 232
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
                Left = 368
                Top = 16
                Width = 79
                Height = 13
                Caption = 'Tipo Documento'
              end
              object Label7: TLabel
                Left = 16
                Top = 179
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
              object Label14: TLabel
                Left = 159
                Top = 416
                Width = 566
                Height = 20
                Caption = 'DUPLO CLIQUE PARA MARCAR QUE FALTOU NA TRANSFER'#202'NCIA'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEditcodigo: TDBEdit
                Left = 16
                Top = 32
                Width = 97
                Height = 21
                DataField = 'ID_TRANSFERENCIA_INTERNO'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 0
              end
              object DBEditDoc: TDBEdit
                Left = 232
                Top = 32
                Width = 129
                Height = 21
                DataField = 'NUMERO_DOCUMENTO'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 2
              end
              object DBEditdata: TDBEdit
                Left = 119
                Top = 32
                Width = 97
                Height = 21
                DataField = 'DATA'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 1
              end
              object DBLookupComboBoxorigem: TDBLookupComboBox
                Left = 16
                Top = 77
                Width = 515
                Height = 21
                DataField = 'ID_ORIGEM'
                DataSource = DsCadastro
                Enabled = False
                KeyField = 'ID_UP'
                ListField = 'NOME_UP'
                ListSource = DM.DsUP
                TabOrder = 5
              end
              object DBComboBoxTipoDoc: TDBComboBox
                Left = 369
                Top = 32
                Width = 162
                Height = 21
                DataField = 'TIPO_DOCUMENTO'
                DataSource = DsCadastro
                Enabled = False
                ItemHeight = 13
                Items.Strings = (
                  'N'#227'o Informado'
                  'Alvar'#225
                  'Carta Livramento'
                  'Memorando'
                  'Ocorr'#234'ncia'
                  'Oficio')
                TabOrder = 3
              end
              object DBMemo1: TDBMemo
                Left = 16
                Top = 197
                Width = 729
                Height = 60
                DataField = 'MOTIVO_MOVIMENTACAO'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 8
              end
              object DBRadioGroupTIPO_DESTINO: TDBRadioGroup
                Left = 16
                Top = 112
                Width = 200
                Height = 65
                Caption = 'Destino'
                DataField = 'TIPO_DESTINO'
                DataSource = DsCadastro
                Enabled = False
                Items.Strings = (
                  'Unidade Prisional no Sistema'
                  'Outros - Sa'#237'da do Sistema')
                TabOrder = 6
                Values.Strings = (
                  'U'
                  'O')
                OnChange = DBRadioGroupTIPO_DESTINOChange
              end
              object PageControlDestino: TPageControl
                Left = 224
                Top = 106
                Width = 521
                Height = 73
                ActivePage = TabSheetDestino
                TabOrder = 7
                object TabSheetDestino: TTabSheet
                  Caption = 'Outros Destinos'
                  object SpeedButton1: TSpeedButton
                    Left = 485
                    Top = 12
                    Width = 23
                    Height = 22
                    Hint = 'Cadastrar Destino'
                    Caption = '...'
                    Enabled = False
                    Flat = True
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton1Click
                  end
                  object DBLookupComboBoxdestino: TDBLookupComboBox
                    Left = 10
                    Top = 14
                    Width = 472
                    Height = 21
                    DataField = 'ID_DESTINO'
                    DataSource = DsCadastro
                    Enabled = False
                    KeyField = 'ID_DESTINO'
                    ListField = 'DESTINO'
                    ListSource = DM.DsDestino
                    TabOrder = 0
                  end
                end
                object TabSheetUnidade: TTabSheet
                  Caption = 'Destino: Unidade Prisional'
                  ImageIndex = 1
                  object DBLookupComboBoxUPDestino: TDBLookupComboBox
                    Left = 10
                    Top = 13
                    Width = 495
                    Height = 21
                    DataField = 'ID_UP_DESTINO'
                    DataSource = DsCadastro
                    Enabled = False
                    KeyField = 'ID_UP'
                    ListField = 'NOME_UP'
                    ListSource = DM.DsUP
                    TabOrder = 0
                    OnExit = DBLookupComboBoxUPDestinoExit
                  end
                end
              end
              object RadioGroupAcao: TRadioGroup
                Left = 544
                Top = 8
                Width = 239
                Height = 92
                Caption = 'A'#231#227'o ao salvar.'
                Color = clWhite
                Items.Strings = (
                  'Recebimento realizado no destino.'
                  'Cancelar e reativar os internos na origem.')
                ParentColor = False
                TabOrder = 4
                Visible = False
                OnClick = RadioGroupAcaoClick
              end
              object GroupBox1: TGroupBox
                Left = 16
                Top = 258
                Width = 731
                Height = 65
                Caption = 'Localiza'#231#227'o padr'#227'o para todos desta transfer'#234'ncia:'
                TabOrder = 9
                object LabelPavilhao: TLabel
                  Left = 30
                  Top = 18
                  Width = 45
                  Height = 13
                  Caption = 'Nivel - 01'
                end
                object LabelGaleria: TLabel
                  Left = 142
                  Top = 18
                  Width = 45
                  Height = 13
                  Caption = 'Nivel - 02'
                end
                object LabelCela: TLabel
                  Left = 363
                  Top = 18
                  Width = 21
                  Height = 13
                  Caption = 'Cela'
                end
                object LabelSolario: TLabel
                  Left = 254
                  Top = 18
                  Width = 45
                  Height = 13
                  Caption = 'Nivel - 03'
                end
                object DBLookupComboBoxPavilhao: TDBLookupComboBox
                  Left = 30
                  Top = 34
                  Width = 100
                  Height = 21
                  KeyField = 'id_pavilhao'
                  ListField = 'pavilhao'
                  ListSource = DsPavilhao
                  TabOrder = 0
                  OnClick = DBLookupComboBoxPavilhaoClick
                end
                object DBLookupComboBoxGaleria: TDBLookupComboBox
                  Left = 142
                  Top = 34
                  Width = 100
                  Height = 21
                  KeyField = 'ID_GALERIA'
                  ListField = 'GALERIA'
                  ListSource = DsGaleria
                  TabOrder = 1
                  OnClick = DBLookupComboBoxGaleriaClick
                end
                object DBLookupComboBoxCela: TDBLookupComboBox
                  Left = 363
                  Top = 34
                  Width = 100
                  Height = 21
                  KeyField = 'ID_CELA'
                  ListField = 'CELA'
                  ListSource = DsCela
                  TabOrder = 3
                end
                object DBLookupComboBoxSolario: TDBLookupComboBox
                  Left = 254
                  Top = 34
                  Width = 100
                  Height = 21
                  KeyField = 'ID_SOLARIO'
                  ListField = 'SOLARIO'
                  ListSource = DsSolario
                  TabOrder = 2
                  OnClick = DBLookupComboBoxSolarioClick
                end
              end
              object DBGrid1: TDBGrid
                Left = 0
                Top = 328
                Width = 857
                Height = 89
                DataSource = Dsvinc_transferencia_interno
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                TabOrder = 10
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                OnDrawColumnCell = DBGrid1DrawColumnCell
                OnDblClick = DBGrid1DblClick
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'Interno'
                    Visible = True
                  end
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
                    Width = 82
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DATA_FALTA'
                    Title.Caption = 'Data da Falta'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Funcion'#225'rio'
                    Title.Caption = 'Funcion'#225'rio Cancelamento'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MOTIVO_FALTA'
                    Title.Caption = 'Motivo da Falta'
                    Visible = True
                  end>
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 867
          Height = 73
          object Label5: TLabel [1]
            Left = 8
            Top = 40
            Width = 23
            Height = 13
            Caption = 'Data'
          end
          object DateTimePicker1: TDateTimePicker
            Left = 56
            Top = 40
            Width = 113
            Height = 21
            Date = 41070.024699270830000000
            Time = 41070.024699270830000000
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
          Width = 867
          Height = 393
          inherited DBGridConsulta: TDBGrid
            Width = 865
            Height = 198
            DataSource = DsConsulta
            PopupMenu = PopupMenuLiberar
            Columns = <
              item
                Expanded = False
                FieldName = 'DATA'
                Title.Caption = 'Data'
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESTINO'
                Title.Caption = 'Origem'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LIBERADA'
                Title.Caption = 'Liberada'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RECEBIDA'
                Title.Caption = 'Recebida'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CANCELADA'
                Title.Caption = 'Cancelada'
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
                FieldName = 'MOTIVO_MOVIMENTACAO'
                Title.Caption = 'Motivo'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_TRANSFERENCIA_INTERNO'
                Title.Caption = 'ID'
                Width = 50
                Visible = True
              end>
          end
          object DBGrid2: TDBGrid
            Left = 1
            Top = 199
            Width = 865
            Height = 193
            Align = alBottom
            DataSource = Dsvinc_transferencia_interno
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDrawColumnCell = DBGrid1DrawColumnCell
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
                Width = 82
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Interno'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_CANCELAMENTO'
                Title.Caption = 'Data Cancelamento'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Funcion'#225'rio'
                Title.Caption = 'Funcion'#225'rio Cancelamento'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MOTIVO_CANCELAMENTO'
                Title.Caption = 'Motivo Cancelamento'
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 875
    inherited Image2: TImage
      Width = 875
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 566
    Width = 875
  end
  inherited SqlCadastro: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'id_transferencia_interno'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM transferencia_interno'
      'where id_transferencia_interno= :id_transferencia_interno')
    Left = 672
    Top = 88
  end
  inherited DspCadastro: TDataSetProvider
    Left = 700
    Top = 88
  end
  inherited CdsCadastro: TClientDataSet
    IndexFieldNames = 'id_transferencia_interno'
    MasterFields = 'id_transferencia_interno'
    MasterSource = DsConsulta
    PacketRecords = 0
    Left = 728
    Top = 88
  end
  inherited DsCadastro: TDataSource
    Left = 756
    Top = 88
  end
  object Sqlvinc_transferencia_interno: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_transferencia_interno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from vinc_transferencia_interno'
      'where id_transferencia_interno = :id_transferencia_interno')
    SQLConnection = DM.SQLConnect
    Left = 673
    Top = 231
  end
  object Dspvinc_transferencia_interno: TDataSetProvider
    DataSet = Sqlvinc_transferencia_interno
    Left = 701
    Top = 231
  end
  object Cdsvinc_transferencia_interno: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_TRANSFERENCIA_INTERNO'
    MasterFields = 'ID_TRANSFERENCIA_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'Dspvinc_transferencia_interno'
    OnCalcFields = Cdsvinc_transferencia_internoCalcFields
    Left = 729
    Top = 231
    object Cdsvinc_transferencia_internoID_VINC_TRANSFERENCIA_INTERNO: TIntegerField
      FieldName = 'ID_VINC_TRANSFERENCIA_INTERNO'
      Required = True
    end
    object Cdsvinc_transferencia_internoID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object Cdsvinc_transferencia_internoID_TRANSFERENCIA_INTERNO: TIntegerField
      FieldName = 'ID_TRANSFERENCIA_INTERNO'
    end
    object Cdsvinc_transferencia_internoInterno: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'Interno'
      Size = 50
    end
    object Cdsvinc_transferencia_internoRGI: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'RGI'
    end
    object Cdsvinc_transferencia_internoID_FUNCIONARIO_CANCELAMENTO: TIntegerField
      FieldName = 'ID_FUNCIONARIO_FALTA'
    end
    object Cdsvinc_transferencia_internoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 10
    end
    object Cdsvinc_transferencia_internoDATA_CANCELAMENTO: TSQLTimeStampField
      FieldName = 'DATA_FALTA'
    end
    object Cdsvinc_transferencia_internoMOTIVO_CANCELAMENTO: TStringField
      FieldName = 'MOTIVO_FALTA'
      Size = 8192
    end
    object Cdsvinc_transferencia_internoFuncionrio: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'Funcion'#225'rio'
      Size = 50
    end
  end
  object Dsvinc_transferencia_interno: TDataSource
    DataSet = Cdsvinc_transferencia_interno
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
  object dsinterno: TDataSource
    DataSet = cdsinterno
    Left = 759
    Top = 184
  end
  object cdsinterno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspinterno'
    Left = 732
    Top = 184
  end
  object dspinterno: TDataSetProvider
    DataSet = SQLinterno
    Left = 703
    Top = 184
  end
  object SQLinterno: TSQLQuery
    MaxBlobSize = -1
    Params = <>
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
    Top = 344
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
  object SQLconspadrao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnect
    Left = 248
  end
  object Dspconspadrao: TDataSetProvider
    DataSet = SQLconspadrao
    Left = 276
  end
  object Cdsconspadrao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dspconspadrao'
    Left = 304
  end
  object Dsconspadrao: TDataSource
    DataSet = Cdsconspadrao
    OnDataChange = DsCadastroDataChange
    Left = 332
  end
  object DsConsulta: TDataSource
    DataSet = CdsConsulta
    OnDataChange = DsCadastroDataChange
    Left = 756
    Top = 32
  end
  object CdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspConsulta'
    Left = 728
    Top = 32
  end
  object DspConsulta: TDataSetProvider
    DataSet = SqlConsulta
    Left = 700
    Top = 32
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
      '    T.LIBERADA,'
      '    T.RECEBIDA,'
      '    T.CANCELADA,'
      
        '    IIF(T.TIPO_DESTINO<>'#39'U'#39', '#39'LOCAL: '#39'||D.DESTINO, U2.NOME_UP) D' +
        'ESTINO,'
      '    T.DATA,'
      '    T.TIPO_DOCUMENTO,'
      '    T.NUMERO_DOCUMENTO,'
      '    T.MOTIVO_MOVIMENTACAO,'
      '    T.ID_TRANSFERENCIA_INTERNO'
      'FROM TRANSFERENCIA_INTERNO T'
      '   LEFT OUTER JOIN DESTINO D ON (D.ID_DESTINO = T.ID_DESTINO)'
      '   LEFT OUTER JOIN UNIDADE_PENAL U2 ON (T.ID_ORIGEM = U2.ID_UP)'
      'WHERE T.ID_UP_DESTINO= :ID_UP'
      'AND T.DATA>= :DATA - 1'
      'ORDER BY T.DATA DESC')
    SQLConnection = DM.SQLConnect
    Left = 672
    Top = 32
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
  object DsGaleria: TDataSource
    DataSet = CdsGaleria
    Left = 832
    Top = 384
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
  object PopupMenuLiberar: TPopupMenu
    Left = 604
    Top = 9
    object Liberar1: TMenuItem
      Caption = 'Receber'
      OnClick = Liberar1Click
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 548
    Top = 136
  end
end
