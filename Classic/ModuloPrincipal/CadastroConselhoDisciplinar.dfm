inherited frmConselhoDisciplinar: TfrmConselhoDisciplinar
  Left = 251
  Top = 51
  Width = 951
  Height = 710
  Caption = 'Conselho Disciplinar'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 594
    inherited ToolBarModeloCadastro: TToolBar
      Height = 576
    end
    inherited DBNavigator1: TDBNavigator
      Top = 576
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 820
    Height = 594
    inherited PageControlModeloCadastro: TPageControl
      Width = 820
      Height = 594
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 812
          Height = 566
          inherited PageControlPrincipal: TPageControl
            Width = 810
            Height = 564
            ActivePage = TabSheet1
            object TabSheet1: TTabSheet
              Caption = 'Conselho Disciplinar'
              ImageIndex = 2
              object Label120: TLabel
                Left = 8
                Top = 4
                Width = 74
                Height = 13
                Caption = 'Falta Disciplinar'
              end
              object SpeedButton12: TSpeedButton
                Left = 626
                Top = 18
                Width = 23
                Height = 22
                Hint = 'Cadastrar Falta Disciplinar'
                Caption = '...'
                Flat = True
                ParentShowHint = False
                ShowHint = True
              end
              object Label16: TLabel
                Left = 10
                Top = 117
                Width = 73
                Height = 13
                Caption = 'N'#186'  Documento'
              end
              object Label121: TLabel
                Left = 97
                Top = 117
                Width = 90
                Height = 13
                Caption = 'Data da Incid'#234'ncia'
              end
              object Label61: TLabel
                Left = 198
                Top = 116
                Width = 81
                Height = 13
                Caption = 'Data Inst portaria'
              end
              object Label62: TLabel
                Left = 290
                Top = 117
                Width = 43
                Height = 13
                Hint = 'Natureza da falta aplicada (leve, media, grave)'
                Caption = 'Natureza'
                ParentShowHint = False
                ShowHint = True
              end
              object Label26: TLabel
                Left = 562
                Top = 204
                Width = 85
                Height = 13
                Caption = 'Data Reabilita'#231#227'o'
              end
              object Label15: TLabel
                Left = 660
                Top = 204
                Width = 102
                Height = 13
                Caption = 'Data da Condena'#231#227'o'
              end
              object Label17: TLabel
                Left = 9
                Top = 160
                Width = 42
                Height = 13
                Caption = 'Situa'#231#227'o'
              end
              object Label29: TLabel
                Left = 151
                Top = 161
                Width = 74
                Height = 13
                Caption = 'Data Resultado'
              end
              object Label41: TLabel
                Left = 245
                Top = 160
                Width = 48
                Height = 13
                Caption = 'Resultado'
              end
              object Label14: TLabel
                Left = 407
                Top = 250
                Width = 89
                Height = 13
                Caption = 'Tipo Procedimento'
              end
              object Label58: TLabel
                Left = 562
                Top = 249
                Width = 83
                Height = 13
                Caption = 'N'#186'  Procedimento'
              end
              object Label57: TLabel
                Left = 662
                Top = 249
                Width = 91
                Height = 13
                Caption = 'Data Procedimento'
              end
              object Label122: TLabel
                Left = 9
                Top = 274
                Width = 58
                Height = 13
                Caption = 'Observa'#231#227'o'
              end
              object Label8: TLabel
                Left = 356
                Top = 160
                Width = 123
                Height = 13
                Caption = 'Tipo de san'#231#227'o disciplinar'
              end
              object Label51: TLabel
                Left = 530
                Top = 160
                Width = 80
                Height = 13
                Caption = 'In'#237'cio isolamento'
                ParentShowHint = False
                ShowHint = True
              end
              object Label53: TLabel
                Left = 678
                Top = 160
                Width = 69
                Height = 13
                Caption = 'Fim isolamento'
                ParentShowHint = False
                ShowHint = True
              end
              object Label56: TLabel
                Left = 618
                Top = 160
                Width = 47
                Height = 13
                Caption = 'Qtde Dias'
                ParentShowHint = False
                ShowHint = True
              end
              object Label60: TLabel
                Left = 408
                Top = 204
                Width = 120
                Height = 13
                Caption = 'Classifica'#231#227'o da Conduta'
              end
              object DBLookupComboBoxfaltadisciplinar: TDBLookupComboBox
                Left = 8
                Top = 20
                Width = 785
                Height = 21
                DropDownRows = 10
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                KeyField = 'ID_FALTA_DISCIPLINAR'
                ListField = 'FALTA_DISCIPLINAR'
                ListSource = Dsfaltadisciplinar
                ParentFont = False
                TabOrder = 0
                OnClick = DBLookupComboBoxfaltadisciplinarClick
                OnEnter = DBLookupComboBoxfaltadisciplinarEnter
                OnExit = DBLookupComboBoxfaltadisciplinarExit
              end
              object btnBuscar: TButton
                Left = 808
                Top = 19
                Width = 49
                Height = 20
                Caption = 'Busca'
                TabOrder = 1
                Visible = False
                OnClick = btnBuscarClick
              end
              object Editpdi: TEdit
                Left = 9
                Top = 133
                Width = 80
                Height = 21
                Hint = 'N'#250'mero do PDI / Documento'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 2
              end
              object EditDataInstPortaria: TEdit
                Left = 197
                Top = 132
                Width = 84
                Height = 21
                Hint = 'Data de instaura'#231#227'o da portaria'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 4
                OnExit = EditDataInstPortariaExit
                OnKeyPress = EditDataInstPortariaKeyPress
              end
              object Editreabilitacao: TEdit
                Left = 560
                Top = 220
                Width = 96
                Height = 21
                ParentShowHint = False
                ShowHint = True
                TabOrder = 17
                OnExit = EditDataInstPortariaExit
                OnKeyPress = EditDataInstPortariaKeyPress
              end
              object Editcondenacao: TEdit
                Left = 661
                Top = 220
                Width = 108
                Height = 21
                TabOrder = 18
                OnExit = EditDataInstPortariaExit
                OnKeyPress = EditDataInstPortariaKeyPress
              end
              object ComboBoxconclusao: TComboBox
                Left = 9
                Top = 176
                Width = 136
                Height = 21
                Hint = 
                  'Situa'#231#227'o do PDI (Andamento, Concluido/Arquivado, Conclu'#237'do, Recu' +
                  'rso)'
                Style = csDropDownList
                ItemHeight = 13
                ParentShowHint = False
                ShowHint = True
                TabOrder = 7
                Items.Strings = (
                  ''
                  'ANDAMENTO'
                  'CONCLUIDO/ARQUIVADO'
                  'CONCLUIDO'
                  'RECURSO')
              end
              object Editresultado: TEdit
                Left = 152
                Top = 176
                Width = 85
                Height = 21
                Hint = 'Data do resultado do pdi'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 8
                OnExit = EditDataInstPortariaExit
                OnKeyPress = EditDataInstPortariaKeyPress
              end
              object ComboBoxresultado: TComboBox
                Left = 244
                Top = 176
                Width = 105
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 9
                Items.Strings = (
                  ''
                  'ARQUIVADO'
                  'ABSOLVIDO'
                  'CONDENADO'
                  'EXTINTO')
              end
              object ComboBoxtipoprocedimento: TComboBox
                Left = 408
                Top = 266
                Width = 149
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 19
                Items.Strings = (
                  ''
                  'RELAT'#211'RIO DE REPREENS'#195'O'
                  'INQU'#201'RITO DISCIPLINAR')
              end
              object Editnprocedimento: TEdit
                Left = 563
                Top = 265
                Width = 90
                Height = 21
                TabOrder = 20
              end
              object Editprocedimento: TEdit
                Left = 662
                Top = 265
                Width = 108
                Height = 21
                TabOrder = 21
                OnExit = EditDataInstPortariaExit
                OnKeyPress = EditDataInstPortariaKeyPress
              end
              object Memoobs: TMemo
                Left = 8
                Top = 296
                Width = 765
                Height = 61
                TabOrder = 22
              end
              object BitBtnIncluir: TBitBtn
                Left = 305
                Top = 358
                Width = 97
                Height = 25
                Caption = '&Incluir'
                Default = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 23
                OnClick = BitBtnIncluirClick
                Glyph.Data = {
                  DE010000424DDE01000000000000760000002800000024000000120000000100
                  0400000000006801000000000000000000001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  3333333333333333333333330000333333333333333333333333F33333333333
                  00003333344333333333333333388F3333333333000033334224333333333333
                  338338F3333333330000333422224333333333333833338F3333333300003342
                  222224333333333383333338F3333333000034222A22224333333338F338F333
                  8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
                  33333338F83338F338F33333000033A33333A222433333338333338F338F3333
                  0000333333333A222433333333333338F338F33300003333333333A222433333
                  333333338F338F33000033333333333A222433333333333338F338F300003333
                  33333333A222433333333333338F338F00003333333333333A22433333333333
                  3338F38F000033333333333333A223333333333333338F830000333333333333
                  333A333333333333333338330000333333333333333333333333333333333333
                  0000}
                NumGlyphs = 2
              end
              object DBGrid6: TDBGrid
                Left = 9
                Top = 388
                Width = 765
                Height = 133
                DataSource = Dsvincfaltadisciplinar
                Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                PopupMenu = PopupMenuIsolamento
                TabOrder = 24
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'NUMERO_PDI'
                    Title.Caption = 'N'#186' PDI'
                    Width = 73
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FALTA_DISCIPLINAR'
                    Title.Caption = 'Falta Disciplinar'
                    Width = 243
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TIPOFALTA'
                    Title.Caption = 'Natureza'
                    Width = 63
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DATA_INCIDENCIA'
                    Title.Caption = 'Dt. Incid'#234'ncia'
                    Width = 85
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DT_INICIO_ISOLAMENTO'
                    Title.Caption = 'Dt. Inicio Isolamento'
                    Width = 101
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'STATUS'
                    Title.Caption = 'Status'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DT_FIM_ISOLAMENTO'
                    Title.Caption = 'Dt. Fim Isolamento'
                    Width = 103
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'RESULTADO'
                    Title.Caption = 'Resultado'
                    Width = 112
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PREVENTIVO'
                    Title.Caption = 'Preventivo'
                    Width = 156
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DATA_RESULTADO'
                    Title.Caption = 'Dt. Resultado'
                    Width = 91
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'OBS'
                    Title.Caption = 'Observa'#231#227'o'
                    Width = 276
                    Visible = True
                  end>
              end
              object GroupBox1: TGroupBox
                Left = 400
                Top = 104
                Width = 393
                Height = 49
                TabOrder = 6
                object Label42: TLabel
                  Left = 130
                  Top = 9
                  Width = 53
                  Height = 13
                  Caption = 'Data In'#237'cio'
                  ParentShowHint = False
                  ShowHint = True
                end
                object Label50: TLabel
                  Left = 220
                  Top = 9
                  Width = 47
                  Height = 13
                  Caption = 'Qtde Dias'
                end
                object Label48: TLabel
                  Left = 284
                  Top = 9
                  Width = 42
                  Height = 13
                  Caption = 'Data Fim'
                end
                object EditinicioisolamentoPrev: TEdit
                  Left = 130
                  Top = 24
                  Width = 83
                  Height = 21
                  Hint = 'Data de inicio do isolamento preventivo'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 1
                  OnExit = EditDataInstPortariaExit
                  OnKeyPress = EditDataInstPortariaKeyPress
                end
                object EditqtdediasPrev: TEdit
                  Left = 220
                  Top = 24
                  Width = 51
                  Height = 21
                  Hint = 'Quantidade de dias de isolamento preventivo'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 2
                  OnClick = EditqtdediasPrevClick
                  OnExit = EditqtdediasPrevExit
                  OnKeyPress = EditqtdediasPrevKeyPress
                end
                object EditfimisolamentoPrev: TEdit
                  Left = 282
                  Top = 24
                  Width = 84
                  Height = 21
                  Hint = 'Data fim do isolamento preventivo'
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 3
                  OnExit = EditDataInstPortariaExit
                  OnKeyPress = EditDataInstPortariaKeyPress
                end
                object RadioGroupPreventivo: TRadioGroup
                  Left = 0
                  Top = 11
                  Width = 125
                  Height = 37
                  Hint = 'Selecionar se '#233' isolamento preventivo ou n'#227'o'
                  Caption = 'Preventivo'
                  Columns = 2
                  Items.Strings = (
                    'Sim'
                    'N'#227'o')
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                  OnClick = RadioGroupPreventivoClick
                end
              end
              object ComboBoxTipoSancao: TComboBox
                Left = 356
                Top = 176
                Width = 165
                Height = 21
                Style = csDropDownList
                ItemHeight = 13
                TabOrder = 10
                Items.Strings = (
                  ''
                  'ADVERT'#202'NCIA VERBAL'
                  'REPREENS'#195'O'
                  'SUSPENS'#195'O OU RESTRI'#199#195'O DE DIREITOS'
                  'ISOLAMENTO CELULAR')
              end
              object EditInicioIsolamento: TEdit
                Left = 530
                Top = 176
                Width = 85
                Height = 21
                Hint = 'Data do In'#237'cio do isolamento do interno'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 11
                OnExit = EditDataInstPortariaExit
                OnKeyPress = EditDataInstPortariaKeyPress
              end
              object EditFimIsolamento: TEdit
                Left = 678
                Top = 176
                Width = 85
                Height = 21
                Hint = 'Data fim do isolamento do interno'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 13
                OnExit = EditDataInstPortariaExit
                OnKeyPress = EditDataInstPortariaKeyPress
              end
              object EditQtdeDiasIsolamento: TEdit
                Left = 618
                Top = 176
                Width = 55
                Height = 21
                Hint = 'Quantidade de dias de isolamento do interno'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 12
                OnClick = EditQtdeDiasIsolamentoClick
                OnExit = EditQtdeDiasIsolamentoExit
                OnKeyPress = EditQtdeDiasIsolamentoKeyPress
              end
              object GroupBox2: TGroupBox
                Left = 8
                Top = 204
                Width = 285
                Height = 53
                TabOrder = 14
                object Label59: TLabel
                  Left = 98
                  Top = 8
                  Width = 92
                  Height = 13
                  Caption = 'Decis'#227'o do recurso'
                  ParentShowHint = False
                  ShowHint = True
                end
                object RadioGroupRecurso: TRadioGroup
                  Left = 0
                  Top = 0
                  Width = 89
                  Height = 53
                  Hint = 'Selecionar se '#233' isolamento preventivo ou n'#227'o'
                  Caption = 'Recurso'
                  Columns = 2
                  Items.Strings = (
                    'Sim'
                    'N'#227'o')
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 1
                  OnClick = RadioGroupRecursoClick
                end
                object ComboBoxDecisaoRecurso: TComboBox
                  Left = 96
                  Top = 24
                  Width = 177
                  Height = 21
                  Hint = 'Decis'#227'o do recurso'
                  Style = csDropDownList
                  ItemHeight = 13
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                  Items.Strings = (
                    ''
                    'IMPROCEDENTE'
                    'PARCIALMENTE PROCEDENTE'
                    'PROCEDENTE')
                end
              end
              object ComboBoxClasConduta: TComboBox
                Left = 408
                Top = 220
                Width = 145
                Height = 21
                Hint = 'Classifica'#231#227'o da conduta efetuada pelo interno'
                Style = csDropDownList
                ItemHeight = 13
                ParentShowHint = False
                ShowHint = True
                TabOrder = 16
                Items.Strings = (
                  ''
                  #211'TIMA'
                  'BOA'
                  'REGULAR'
                  'M'#193
                  '')
              end
              object RadioGroupHomologado: TRadioGroup
                Left = 296
                Top = 204
                Width = 97
                Height = 53
                Caption = 'Homologado'
                Columns = 2
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 15
              end
              object EditNatureza: TEdit
                Left = 288
                Top = 132
                Width = 105
                Height = 21
                Enabled = False
                TabOrder = 5
              end
              object Editdtincidencia: TEdit
                Left = 97
                Top = 132
                Width = 96
                Height = 21
                TabOrder = 3
              end
              object Memo1: TMemo
                Left = 8
                Top = 51
                Width = 785
                Height = 57
                TabOrder = 25
              end
            end
            object TabSheet2: TTabSheet
              Caption = 'Hist'#243'rico'
              ImageIndex = 3
              object Label67: TLabel
                Left = 7
                Top = 32
                Width = 62
                Height = 13
                Caption = 'Data do Fato'
              end
              object DateTimePickerHistorico: TDateTimePicker
                Left = 7
                Top = 49
                Width = 91
                Height = 21
                Date = 0.302563541663403200
                Time = 0.302563541663403200
                TabOrder = 0
              end
              object MemoDescricao: TMemo
                Left = 108
                Top = 49
                Width = 506
                Height = 97
                TabOrder = 1
              end
              object Button1: TButton
                Left = 6
                Top = 122
                Width = 98
                Height = 25
                Caption = 'Incluir'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                OnClick = Button1Click
              end
              object DBGrid1: TDBGrid
                Left = 8
                Top = 165
                Width = 610
                Height = 129
                DataSource = dshistorico_interno
                TabOrder = 3
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'DATA_HORA'
                    Title.Caption = 'Data'
                    Width = 75
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'SETOR'
                    Title.Caption = 'Setor'
                    Width = 128
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DESCRICAO'
                    Title.Caption = 'Descri'#231#227'o'
                    Width = 388
                    Visible = True
                  end>
              end
              object DBMemo1: TDBMemo
                Left = 8
                Top = 303
                Width = 610
                Height = 121
                DataField = 'DESCRICAO'
                DataSource = dshistorico_interno
                TabOrder = 4
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 812
          inherited RadioGroupStatus: TRadioGroup
            Left = 683
          end
        end
        inherited PanelConsulta: TPanel
          Width = 812
          Height = 524
          inherited DBGridConsulta: TDBGrid
            Width = 810
            Height = 522
          end
          inherited DBCtrlGridConsulta: TDBCtrlGrid
            Width = 810
            Height = 522
            PanelHeight = 104
            PanelWidth = 793
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 935
    inherited Image2: TImage
      Width = 935
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 626
    Width = 935
  end
  inherited ImageListCadastro: TImageList
    Left = 608
    Top = 0
  end
  inherited SqlCadastro: TSQLQuery
    SQLConnection = DM.SQLConnect
    Left = 476
    Top = 80
  end
  inherited DspCadastro: TDataSetProvider
    Left = 504
    Top = 80
  end
  inherited CdsCadastro: TClientDataSet
    Left = 532
    Top = 80
  end
  inherited DsCadastro: TDataSource
    Left = 560
    Top = 80
  end
  inherited DsConsulta: TDataSource
    Left = 381
    Top = 71
  end
  inherited CdsConsulta: TClientDataSet
    Left = 353
    Top = 71
  end
  inherited DspConsulta: TDataSetProvider
    Left = 325
    Top = 71
  end
  inherited SqlConsulta: TSQLQuery
    Left = 297
    Top = 71
  end
  inherited OpenDialogCapturarFoto: TOpenDialog
    Left = 564
    Top = 42
  end
  object PopupMenuIsolamento: TPopupMenu
    Left = 736
    Top = 61
    object Liberar1: TMenuItem
      Caption = 'Pena Cumprida/Liberada'
      OnClick = Liberar1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object EditarFalta1: TMenuItem
      Caption = 'Editar Falta'
      OnClick = EditarFalta1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      OnClick = Excluir1Click
    end
  end
  object Dsvincfaltadisciplinar: TDataSource
    DataSet = Cdsvincfaltadisciplinar
    Left = 897
    Top = 41
  end
  object Cdsvincfaltadisciplinar: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'Dspvincfaltadisciplinar'
    Left = 857
    Top = 28
  end
  object Dspvincfaltadisciplinar: TDataSetProvider
    DataSet = Sqlvincfaltadisciplinar
    Left = 792
    Top = 16
  end
  object Sqlfaltadisciplinar: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT  first 44 f.falta_disciplinar, f.id_falta_disciplinar, f.' +
        'tipofalta'
      'FROM falta_disciplinar f'
      'order by f.id_falta_disciplinar')
    Left = 480
  end
  object Dspfaltadisciplinar: TDataSetProvider
    DataSet = Sqlfaltadisciplinar
    Left = 508
  end
  object Cdsfaltadisciplinar: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'Dspfaltadisciplinar'
    Left = 536
  end
  object Dsfaltadisciplinar: TDataSource
    DataSet = Cdsfaltadisciplinar
    Left = 564
  end
  object SQLhistorico_interno: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'select *'
      'from historico_interno'
      
        'where idinterno=:id_interno and coalesce(tipo_historico,'#39#39')='#39#39' a' +
        'nd setor like '#39'Conselho Disciplinar'#39
      'order by data_hora desc')
    SQLConnection = DM.SQLConnect
    Left = 416
    Top = 136
  end
  object dsphistorico_interno: TDataSetProvider
    DataSet = SQLhistorico_interno
    Left = 448
    Top = 136
  end
  object cdshistorico_interno: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDINTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dsphistorico_interno'
    Left = 480
    Top = 136
    object cdshistorico_internoIDHISTORICO_INTERNO: TIntegerField
      FieldName = 'IDHISTORICO_INTERNO'
      Required = True
    end
    object cdshistorico_internoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 16386
    end
    object cdshistorico_internoDATA_HORA: TSQLTimeStampField
      FieldName = 'DATA_HORA'
      Required = True
    end
    object cdshistorico_internoIDINTERNO: TIntegerField
      FieldName = 'IDINTERNO'
      Required = True
    end
    object cdshistorico_internoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdshistorico_internoMOTIVO_SAIDA: TStringField
      FieldName = 'MOTIVO_SAIDA'
      Size = 50
    end
    object cdshistorico_internoIDPROCEDENCIA: TIntegerField
      FieldName = 'IDPROCEDENCIA'
    end
    object cdshistorico_internoIDUP: TIntegerField
      FieldName = 'IDUP'
    end
    object cdshistorico_internoSETOR: TStringField
      FieldName = 'SETOR'
      Size = 50
    end
    object cdshistorico_internoID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdshistorico_internoTIPO_HISTORICO: TStringField
      FieldName = 'TIPO_HISTORICO'
      Size = 30
    end
  end
  object dshistorico_interno: TDataSource
    DataSet = cdshistorico_interno
    Left = 512
    Top = 136
  end
  object SqlFaltaDelete: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT vf.*'
      'FROM vinc_falta_disciplinar vf'
      'where vf.id_interno = :id_interno'
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    SQLConnection = DM.SQLConnect
    Left = 796
    Top = 136
  end
  object DspFaltaDelete: TDataSetProvider
    DataSet = SqlFaltaDelete
    Left = 824
    Top = 136
  end
  object CdsFaltaDelete: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspFaltaDelete'
    Left = 852
    Top = 136
  end
  object DsFaltaDelete: TDataSource
    DataSet = CdsFaltaDelete
    Left = 880
    Top = 136
  end
  object Sqlvincfaltadisciplinar: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT vf.ID_VINC_FALTA_DISCIPLINAR,  vf.data_incidencia, vf.num' +
        'ero_pdi, vf.data_inicio_isolamento, '
      'vf.data_fim_isolamento, vf.preventivo, vf.status,'
      
        'vf.data_resultado, vf.data_condenacao, vf.numero, vf.obs, vf.dt_' +
        'inicio_isolamento, vf.dt_fim_isolamento,'
      
        'vf.id_interno, vf.id_up, vf.id_falta_disciplinar, vf.data_reabil' +
        'itacao, vf.conclusaocd, vf.resultado, vf.qtde_dias_isolamento, v' +
        'f.data_instauracao,'
      
        'vf.tipo, vf.data_inst_portaria, vf.tipo_sancao, vf.recurso, vf.d' +
        'ecisao_recurso, vf.classificacao_conduta, vf.homologacao, '
      'vf.quantidade_dias_isolamento, f.falta_disciplinar'
      
        'FROM vinc_falta_disciplinar vf inner join falta_disciplinar f on' +
        ' (vf.id_falta_disciplinar = f.id_falta_disciplinar)'
      'where vf.id_interno = :id_interno'
      'order by data_incidencia desc')
    SQLConnection = DM.SQLConnect
    Left = 727
  end
end
