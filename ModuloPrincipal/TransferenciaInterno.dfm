inherited FrmTransferenciaInterno: TFrmTransferenciaInterno
  Left = 261
  Top = 76
  Caption = 'Transfer'#234'ncia de Internos'
  Menu = MainMenu1
  WindowState = wsMaximized
  OnClose = FormClose
  ExplicitHeight = 642
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Width = 944
    Height = 40
    Align = alTop
    ExplicitWidth = 940
    ExplicitHeight = 40
    inherited ToolBarModeloCadastro: TToolBar
      Width = 864
      Height = 40
      ExplicitWidth = 860
      ExplicitHeight = 40
      inherited Novo: TToolButton
        Wrap = False
      end
      inherited Editar: TToolButton
        Left = 113
        Top = 0
        Wrap = False
        ExplicitLeft = 113
        ExplicitTop = 0
      end
      inherited Cancelar: TToolButton
        Left = 220
        Top = 0
        Wrap = False
        ExplicitLeft = 220
        ExplicitTop = 0
      end
      inherited Salvar: TToolButton
        Left = 327
        Top = 0
        Wrap = False
        ExplicitLeft = 327
        ExplicitTop = 0
      end
      inherited Excluir: TToolButton
        Left = 434
        Top = 0
        Wrap = False
        ExplicitLeft = 434
        ExplicitTop = 0
      end
      inherited Fechar: TToolButton
        Left = 541
        Top = 0
        ExplicitLeft = 541
        ExplicitTop = 0
      end
    end
    inherited DBNavigator1: TDBNavigator
      Left = 864
      Top = 0
      Width = 80
      Height = 40
      DataSource = DsConsulta
      Align = alRight
      Hints.Strings = ()
      ExplicitLeft = 860
      ExplicitTop = 0
      ExplicitWidth = 80
      ExplicitHeight = 40
    end
  end
  inherited PanelModeloCadastro: TPanel
    Left = 0
    Top = 72
    Width = 944
    Height = 493
    ExplicitLeft = 0
    ExplicitTop = 72
    ExplicitWidth = 940
    ExplicitHeight = 492
    inherited Image2: TImage
      Width = 912
      ExplicitWidth = 912
    end
    inherited PageControlModeloCadastro: TPageControl
      Width = 944
      Height = 493
      ExplicitWidth = 940
      ExplicitHeight = 492
      inherited TabSheetCadastro: TTabSheet
        ExplicitWidth = 936
        ExplicitHeight = 465
        inherited PanelCadastro: TPanel
          Width = 936
          Height = 465
          ExplicitWidth = 932
          ExplicitHeight = 464
          object PageControlTransferencia: TPageControl
            Left = 1
            Top = 1
            Width = 934
            Height = 463
            ActivePage = TabSheetTransferencia
            Align = alClient
            TabOrder = 0
            TabWidth = 200
            ExplicitWidth = 930
            ExplicitHeight = 462
            object TabSheetTransferencia: TTabSheet
              Caption = 'Dados da Transfer'#234'ncia'
              ImageIndex = 1
              DesignSize = (
                926
                435)
              object Label2: TLabel
                Left = 16
                Top = 16
                Width = 11
                Height = 13
                Caption = 'ID'
                FocusControl = DBEditcodigo
              end
              object Label3: TLabel
                Left = 392
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
                Left = 216
                Top = 16
                Width = 79
                Height = 13
                Caption = 'Tipo Documento'
              end
              object Label7: TLabel
                Left = 16
                Top = 170
                Width = 120
                Height = 13
                Caption = 'Motivo da Movimenta'#231#227'o'
              end
              object Label8: TLabel
                Left = 120
                Top = 16
                Width = 91
                Height = 13
                Caption = 'Data Transfer'#234'ncia'
                FocusControl = DBEditdata
              end
              object Label9: TLabel
                Left = 16
                Top = 254
                Width = 222
                Height = 13
                Caption = 'Prontu'#225'rio (Aperte TAB ou ENTER para Inserir)'
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
                Left = 392
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
                OnExit = DBEditdataExit
                OnKeyPress = DBEditdataKeyPress
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
                ListSource = DsUP
                TabOrder = 5
              end
              object DBComboBoxTipoDoc: TDBComboBox
                Left = 217
                Top = 32
                Width = 162
                Height = 21
                DataField = 'TIPO_DOCUMENTO'
                DataSource = DsCadastro
                Items.Strings = (
                  'N'#227'o Informado'
                  'Alvar'#225
                  'Carta Livramento'
                  'Determina'#231#227'o Judicial'
                  'Memorando'
                  'Ocorr'#234'ncia'
                  'Of'#237'cio'
                  'CI')
                TabOrder = 2
              end
              object DBMemo1: TDBMemo
                Left = 16
                Top = 189
                Width = 729
                Height = 59
                DataField = 'MOTIVO_MOVIMENTACAO'
                DataSource = DsCadastro
                TabOrder = 8
              end
              object DBRadioGroupTIPO_DESTINO: TDBRadioGroup
                Left = 16
                Top = 104
                Width = 201
                Height = 62
                Caption = 'Destino:'
                DataField = 'TIPO_DESTINO'
                DataSource = DsCadastro
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
                Top = 98
                Width = 521
                Height = 73
                ActivePage = TabSheetDestino
                TabOrder = 7
                object TabSheetDestino: TTabSheet
                  Caption = 'Outros Destinos'
                  object SpeedButton1: TSpeedButton
                    Left = 487
                    Top = 3
                    Width = 23
                    Height = 22
                    Hint = 'Cadastrar Destino'
                    Caption = '...'
                    Flat = True
                    ParentShowHint = False
                    ShowHint = True
                    Visible = False
                    OnClick = SpeedButton1Click
                  end
                  object DBLookupComboBoxdestino: TDBLookupComboBox
                    Left = 4
                    Top = 13
                    Width = 487
                    Height = 21
                    DataField = 'ID_DESTINO'
                    DataSource = DsCadastro
                    KeyField = 'ID_DESTINO'
                    ListField = 'DESTINO'
                    ListSource = DsDestino
                    TabOrder = 0
                  end
                end
                object TabSheetUnidade: TTabSheet
                  Caption = 'Destino: Unidade Prisional'
                  ImageIndex = 1
                  object DBLookupComboBoxUPDestino: TDBLookupComboBox
                    Left = 10
                    Top = 13
                    Width = 488
                    Height = 21
                    DataField = 'ID_UP_DESTINO'
                    DataSource = DsCadastro
                    KeyField = 'ID_UP'
                    ListField = 'NOME_UP'
                    ListSource = DsUP
                    TabOrder = 0
                    OnExit = DBLookupComboBoxUPDestinoExit
                  end
                end
              end
              object RadioGroupAcao: TRadioGroup
                Left = 544
                Top = 8
                Width = 328
                Height = 105
                Caption = 'A'#231#227'o ao salvar.'
                Color = clWhite
                Items.Strings = (
                  'Confirma: Sa'#237'da na Origem / Entrada no Destino.'
                  'Cancelar e reativar internos.')
                ParentColor = False
                TabOrder = 4
                Visible = False
                OnClick = RadioGroupAcaoClick
              end
              object Editprontuario: TEdit
                Left = 16
                Top = 270
                Width = 120
                Height = 21
                TabOrder = 9
                OnExit = EditprontuarioExit
              end
              object DBLookupComboBoxinterno: TDBLookupComboBox
                Left = 137
                Top = 270
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
                ListSource = DM.DsInterno
                ParentFont = False
                TabOrder = 10
              end
              object Button1: TButton
                Left = 483
                Top = 270
                Width = 50
                Height = 25
                Caption = 'Busca'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 11
                TabStop = False
                OnClick = Button1Click
              end
              object BtnTodosCela: TButton
                Left = 625
                Top = 270
                Width = 220
                Height = 25
                Caption = 'Incluir Todos de uma Cela'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 12
                Visible = False
                OnClick = BtnTodosCelaClick
              end
              object DBGrid1: TDBGrid
                Left = 16
                Top = 293
                Width = 840
                Height = 131
                Anchors = [akLeft, akTop, akRight, akBottom]
                DataSource = Dsvinc_transferencia_interno
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                ReadOnly = True
                TabOrder = 13
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
      inherited TabSheetConsulta: TTabSheet
        Caption = 'Transfer'#234'ncias Gravadas'
        ExplicitWidth = 936
        ExplicitHeight = 465
        inherited PanelLocalizaConsulta: TPanel
          Width = 936
          Height = 49
          ExplicitWidth = 936
          ExplicitHeight = 49
          inherited Label1: TLabel
            Left = 736
            Top = 24
            Visible = False
            ExplicitLeft = 736
            ExplicitTop = 24
          end
          object Label5: TLabel [1]
            Left = 12
            Top = 16
            Width = 92
            Height = 20
            Caption = 'Data Inicial'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel [2]
            Left = 224
            Top = 16
            Width = 84
            Height = 20
            Caption = 'Data Final'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          inherited EditLocalizar: TEdit
            Left = 792
            Top = 24
            Width = 600
            TabOrder = 1
            Visible = False
            ExplicitLeft = 792
            ExplicitTop = 24
            ExplicitWidth = 600
          end
          object DateTimePicker1: TDateTimePicker
            Left = 112
            Top = 16
            Width = 105
            Height = 21
            Date = 41070.000000000000000000
            Time = 0.024699270827113650
            TabOrder = 0
          end
          object Button2: TButton
            Left = 431
            Top = 14
            Width = 74
            Height = 25
            Caption = 'Filtrar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            OnClick = Button2Click
          end
          object DateTimePicker2: TDateTimePicker
            Left = 312
            Top = 16
            Width = 105
            Height = 21
            Date = 41234.000000000000000000
            Time = 0.624808402782946400
            TabOrder = 2
          end
        end
        inherited PanelConsulta: TPanel
          Top = 49
          Width = 936
          Height = 416
          ExplicitTop = 49
          ExplicitWidth = 936
          ExplicitHeight = 416
          inherited DBGridConsulta: TDBGrid
            Width = 934
            Height = 221
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
                Title.Caption = 'Destino'
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
            Top = 222
            Width = 934
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
  inherited ImageListCadastro: TImageList
    Left = 832
    Top = 0
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM transferencia_interno'
      'where id_transferencia_interno= :id_transferencia_interno')
    Left = 672
    Top = 88
    ParamData = <
      item
        Name = 'id_transferencia_interno'
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
  object Sqlvinc_transferencia_internoold: TSQLQuery
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
    Left = 737
    Top = 503
  end
  object Dspvinc_transferencia_interno: TDataSetProvider
    DataSet = Sqlvinc_transferencia_interno
    Left = 805
    Top = 239
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
    Left = 833
    Top = 239
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
      FieldName = 'ID_FUNCIONARIO_CANCELAMENTO'
    end
    object Cdsvinc_transferencia_internoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 10
    end
    object Cdsvinc_transferencia_internoDATA_CANCELAMENTO: TSQLTimeStampField
      FieldName = 'DATA_CANCELAMENTO'
    end
    object Cdsvinc_transferencia_internoMOTIVO_CANCELAMENTO: TStringField
      FieldName = 'MOTIVO_CANCELAMENTO'
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
    Left = 861
    Top = 239
  end
  object SQLHISTORICO_internoold: TSQLQuery
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
    Left = 680
    Top = 504
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
    Left = 807
    Top = 288
  end
  object CdsInterno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspInterno'
    Left = 780
    Top = 288
  end
  object DspInterno: TDataSetProvider
    DataSet = SqlInterno
    Left = 751
    Top = 288
  end
  object SqlInternoold: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnect
    Left = 628
    Top = 504
  end
  object SqlExecuteold: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT id_interno, nome_interno, rgi'
      'FROM INTERNO'
      'ORDER BY NOME_INTERNO')
    SQLConnection = DM.SQLConnect
    Left = 600
    Top = 504
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
  object SqlConsultaold: TSQLQuery
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
      
        '   LEFT OUTER JOIN UNIDADE_PENAL U2 ON (T.ID_UP_DESTINO = U2.ID_' +
        'UP)'
      'WHERE T.ID_ORIGEM= :ID_UP'
      'AND T.DATA>= :DATA - 20'
      'ORDER BY T.data DESC')
    SQLConnection = DM.SQLConnect
    Left = 704
    Top = 504
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
    DataSet = CdsConsulta
    OnDataChange = DsCadastroDataChange
    Left = 756
    Top = 32
  end
  object PopupMenuLiberar: TPopupMenu
    Left = 604
    Top = 9
    object Liberar1: TMenuItem
      Caption = 'Confirma: Sa'#237'da na Origem / Entrada no Destino'
      OnClick = Liberar1Click
    end
  end
  object DsUP: TDataSource
    DataSet = CdsUP
    Left = 164
    Top = 8
  end
  object CdsUP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspUP'
    Left = 136
    Top = 8
  end
  object DspUP: TDataSetProvider
    DataSet = SqlUP
    Left = 108
    Top = 8
  end
  object SqlUPold: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM UNIDADE_PENAL'
      'order by nome_up')
    Left = 792
    Top = 504
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
  object SQLconspadraoold: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnect
    Left = 768
    Top = 504
  end
  object SQLhistorico_trabalhoold: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from historico_trabalho'
      'where id_historico_trabalho = -1')
    SQLConnection = DM.SQLConnect
    Left = 392
    Top = 216
  end
  object dsphistorico_trabalho: TDataSetProvider
    DataSet = SQLhistorico_trabalho
    Left = 768
    Top = 336
  end
  object cdshistorico_trabalho: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsphistorico_trabalho'
    Left = 800
    Top = 336
  end
  object dshistorico_trabalho: TDataSource
    DataSet = cdshistorico_trabalho
    Left = 832
    Top = 336
  end
  object SQLhistorico_estudoold: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *'
      'from historico_estudo h'
      'where id_historico_estudo = -1'
      '')
    SQLConnection = DM.SQLConnect
    Left = 656
    Top = 504
  end
  object dsphistorico_estudo: TDataSetProvider
    DataSet = SQLhistorico_estudo
    Left = 744
    Top = 368
  end
  object cdshistorico_estudo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsphistorico_estudo'
    Left = 800
    Top = 368
  end
  object dshistorico_estudo: TDataSource
    DataSet = cdshistorico_estudo
    Left = 840
    Top = 368
  end
  object DsDestino: TDataSource
    DataSet = CdsDestino
    Left = 441
    Top = 281
  end
  object DspDestino: TDataSetProvider
    DataSet = SqlDestino
    Left = 393
    Top = 281
  end
  object CdsDestino: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspDestino'
    Left = 345
    Top = 281
  end
  object SqlDestinoold: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select ID_DESTINO, DESTINO from DESTINO'
      
        'WHERE ID_DESTINO NOT IN (6069,6092,6074,6078,6077,6076,2017,2016' +
        ',2014,2015,50175)'
      'AND DESTINO <> '#39#39
      'ORDER BY DESTINO'
      '')
    SQLConnection = DM.SQLConnect
    Left = 817
    Top = 503
  end
  object SqlUP: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT * FROM UNIDADE_PENAL'
      'order by nome_up')
    Left = 76
    Top = 9
  end
  object SqlDestino: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'Select ID_DESTINO, DESTINO from DESTINO'
      
        'WHERE ID_DESTINO NOT IN (6069,6092,6074,6078,6077,6076,2017,2016' +
        ',2014,2015,50175)'
      'AND DESTINO <> '#39#39
      'ORDER BY DESTINO'
      '')
    Left = 292
    Top = 281
  end
  object SqlExecute: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT ID_INTERNO, NOME_INTERNO, RGI'
      'FROM INTERNO'
      'ORDER BY NOME_INTERNO')
    Left = 188
    Top = 193
  end
  object SQLhistorico_trabalho: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from historico_trabalho'
      'where id_historico_trabalho = -1')
    Left = 724
    Top = 337
  end
  object SqlInterno: TFDQuery
    Connection = DM.SQLConnect
    Left = 716
    Top = 289
  end
  object SQLhistorico_estudo: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select *'
      'from historico_estudo h'
      'where id_historico_estudo = -1'
      '')
    Left = 676
    Top = 353
  end
  object SQLHISTORICO_interno: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select *'
      'from historico_interno'
      'where idinterno=:id_interno')
    Left = 660
    Top = 137
    ParamData = <
      item
        Name = 'ID_INTERNO'
        ParamType = ptInput
      end>
  end
  object SqlConsulta: TFDQuery
    Connection = DM.SQLConnect
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
      
        '   LEFT OUTER JOIN UNIDADE_PENAL U2 ON (T.ID_UP_DESTINO = U2.ID_' +
        'UP)'
      'WHERE T.ID_ORIGEM= :ID_UP'
      'AND T.DATA>= :DATA - 20'
      'ORDER BY T.data DESC')
    Left = 660
    Top = 33
    ParamData = <
      item
        Name = 'ID_UP'
        ParamType = ptInput
      end
      item
        Name = 'DATA'
        ParamType = ptInput
      end>
  end
  object SQLconspadrao: TFDQuery
    Connection = DM.SQLConnect
    Left = 244
    Top = 1
  end
  object Sqlvinc_transferencia_interno: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from vinc_transferencia_interno'
      'where id_transferencia_interno = :id_transferencia_interno')
    Left = 764
    Top = 241
    ParamData = <
      item
        Name = 'ID_TRANSFERENCIA_INTERNO'
        ParamType = ptInput
      end>
  end
end
