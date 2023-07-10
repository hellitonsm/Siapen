inherited FrmCadastroMonitoramentoEventos: TFrmCadastroMonitoramentoEventos
  Left = 295
  Top = 121
  Width = 1020
  Height = 650
  Caption = 'Cadastro de Eventos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 561
    inherited ToolBarModeloCadastro: TToolBar
      Height = 543
    end
    inherited DBNavigator1: TDBNavigator
      Top = 543
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 889
    Height = 561
    inherited PageControlModeloCadastro: TPageControl
      Width = 889
      Height = 561
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 881
          Height = 533
          object Label4: TLabel
            Left = 136
            Top = 16
            Width = 161
            Height = 13
            Caption = 'Unidade Cadastradrora do Evento'
          end
          object Label5: TLabel
            Left = 8
            Top = 104
            Width = 162
            Height = 13
            Caption = 'Unidade de Ocorr'#234'ncia do Evento'
          end
          object Label6: TLabel
            Left = 8
            Top = 56
            Width = 124
            Height = 13
            Caption = 'Usu'#225'rio do Monitoramento'
          end
          object Label7: TLabel
            Left = 8
            Top = 152
            Width = 77
            Height = 13
            Caption = 'Evento Principal'
          end
          object Label8: TLabel
            Left = 8
            Top = 200
            Width = 56
            Height = 13
            Caption = 'Sub-Evento'
          end
          object Label9: TLabel
            Left = 8
            Top = 248
            Width = 75
            Height = 13
            Caption = 'Data do Evento'
          end
          object Label10: TLabel
            Left = 144
            Top = 248
            Width = 75
            Height = 13
            Caption = 'Hora do Evento'
          end
          object Label11: TLabel
            Left = 8
            Top = 296
            Width = 261
            Height = 13
            Caption = 'Caminho do Arquivo, no Servidor, referente ao Evento. '
          end
          object Label12: TLabel
            Left = 8
            Top = 344
            Width = 155
            Height = 13
            Caption = 'Oberva'#231#227'o Referente ao Evento'
          end
          object Label13: TLabel
            Left = 272
            Top = 296
            Width = 347
            Height = 13
            Caption = 
              '(O endere'#231'o deve ser o caminho de rede, ex: \\davies\teste\arqui' +
              'vo.pdf)'
          end
          object Label14: TLabel
            Left = 8
            Top = 16
            Width = 11
            Height = 13
            Caption = 'ID'
          end
          object Label15: TLabel
            Left = 192
            Top = 104
            Width = 158
            Height = 13
            Caption = 'Plant'#227'o de Ocorr'#234'ncia do Evento'
          end
          object DBLkpUpCadastroEvento: TDBLookupComboBox
            Left = 136
            Top = 32
            Width = 225
            Height = 21
            DataField = 'ID_UP_LANCAMENTO'
            DataSource = DsCadastro
            Enabled = False
            KeyField = 'ID_UP'
            ListField = 'SIGLA'
            ListSource = DM.DsUP
            TabOrder = 1
          end
          object DBLkpUpOcorrenciaEvento: TDBLookupComboBox
            Left = 8
            Top = 120
            Width = 169
            Height = 21
            DataField = 'ID_UP_OCORRENCIA'
            DataSource = DsCadastro
            Enabled = False
            KeyField = 'ID_UP'
            ListField = 'SIGLA'
            ListSource = DM.DsUP
            TabOrder = 3
          end
          object DblkpFuncionarioMonitor: TDBLookupComboBox
            Left = 8
            Top = 72
            Width = 353
            Height = 21
            DataField = 'ID_FUNCIONARIO_MONITOR'
            DataSource = DsCadastro
            Enabled = False
            KeyField = 'ID_FUNCIONARIO'
            ListField = 'NOME_FUNCIONARIO'
            ListSource = DM.DsFuncionario
            TabOrder = 2
          end
          object DBLkpEventoPrincipal: TDBLookupComboBox
            Left = 8
            Top = 168
            Width = 625
            Height = 21
            DataField = 'ID_EVENTOS'
            DataSource = DsCadastro
            KeyField = 'ID_EVENTOS'
            ListField = 'DESCRICAO_EVENTO'
            ListSource = DsEventos
            TabOrder = 5
            OnCloseUp = DBLkpEventoPrincipalCloseUp
            OnKeyUp = DBLkpEventoPrincipalKeyUp
          end
          object DBEdtDataEvento: TDBEdit
            Left = 8
            Top = 264
            Width = 121
            Height = 21
            DataField = 'DATA_EVENTO'
            DataSource = DsCadastro
            TabOrder = 7
            OnExit = DBEdtDataEventoExit
            OnKeyPress = DBEdtDataEventoKeyPress
          end
          object DBEdtHoraEvento: TDBEdit
            Left = 144
            Top = 264
            Width = 121
            Height = 21
            DataField = 'HORA_EVENTO'
            DataSource = DsCadastro
            MaxLength = 5
            TabOrder = 8
            OnKeyPress = DBEdtHoraEventoKeyPress
          end
          object DBMemoObservacao: TDBMemo
            Left = 8
            Top = 360
            Width = 737
            Height = 161
            DataField = 'OBSERVACAO'
            DataSource = DsCadastro
            MaxLength = 1000
            TabOrder = 11
          end
          object DBEdtArquivoRelacionado: TDBEdit
            Left = 8
            Top = 312
            Width = 625
            Height = 21
            DataField = 'ARQUIVO_RELACIONADO'
            DataSource = DsCadastro
            MaxLength = 300
            TabOrder = 9
          end
          object Button1: TButton
            Left = 640
            Top = 309
            Width = 105
            Height = 25
            Caption = 'Escolher Arquivo'
            TabOrder = 10
            OnClick = Button1Click
          end
          object DBEditCodigo: TDBEdit
            Left = 8
            Top = 32
            Width = 65
            Height = 21
            DataField = 'ID_MONITORAMENTO_EVENTOS'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBCbPlantaoOcorrencia: TDBComboBox
            Left = 192
            Top = 120
            Width = 169
            Height = 21
            Style = csDropDownList
            DataField = 'PLANTAO_OCORRENCIA'
            DataSource = DsCadastro
            ItemHeight = 13
            Items.Strings = (
              'ALFA'
              'BRAVO'
              'CHARLIE'
              'DELTA')
            TabOrder = 4
          end
          object DBLkpSubEvento: TDBLookupComboBox
            Left = 8
            Top = 216
            Width = 625
            Height = 21
            DataField = 'ID_SUB_EVENTOS'
            DataSource = DsCadastro
            KeyField = 'ID_SUB_EVENTOS'
            ListField = 'DESCRICAO_EVENTOS'
            ListSource = DsSubEventos
            TabOrder = 6
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 881
          Height = 70
          inherited Label1: TLabel
            Top = 48
          end
          object Label2: TLabel [1]
            Left = 8
            Top = 21
            Width = 53
            Height = 13
            Caption = 'Data Inicial'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel [2]
            Left = 160
            Top = 21
            Width = 48
            Height = 13
            Caption = 'Data Final'
          end
          object Label16: TLabel [3]
            Left = 8
            Top = 0
            Width = 238
            Height = 13
            Caption = 'Escolha o per'#237'odo para exibir os eventos.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          inherited EditLocalizar: TEdit
            Top = 44
            Width = 478
            TabOrder = 4
          end
          object DtpDataInicial: TDateTimePicker
            Left = 64
            Top = 17
            Width = 89
            Height = 21
            Date = 41646.722573449070000000
            Time = 41646.722573449070000000
            TabOrder = 0
          end
          object DtpDataFinal: TDateTimePicker
            Left = 212
            Top = 17
            Width = 89
            Height = 21
            Date = 41646.722715011570000000
            Time = 41646.722715011570000000
            TabOrder = 1
          end
          object BtnAtualizarBusca: TBitBtn
            Left = 459
            Top = 13
            Width = 75
            Height = 25
            Caption = 'Atualizar '
            TabOrder = 3
            OnClick = BtnAtualizarBuscaClick
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
              33333333333F8888883F33330000324334222222443333388F3833333388F333
              000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
              F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
              223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
              3338888300003AAAAAAA33333333333888888833333333330000333333333333
              333333333333333333FFFFFF000033333333333344444433FFFF333333888888
              00003A444333333A22222438888F333338F3333800003A2243333333A2222438
              F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
              22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
              33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
              3333333333338888883333330000333333333333333333333333333333333333
              0000}
            NumGlyphs = 2
          end
          object CkTodasUnidades: TCheckBox
            Left = 312
            Top = 8
            Width = 137
            Height = 30
            Caption = 'Buscar Lan'#231'amentos de Todas as Unidades'
            Enabled = False
            TabOrder = 2
            WordWrap = True
          end
        end
        inherited PanelConsulta: TPanel
          Top = 70
          Width = 881
          Height = 463
          inherited DBGridConsulta: TDBGrid
            Width = 879
            Height = 461
            DataSource = DsConsulta
            Columns = <
              item
                Expanded = False
                FieldName = 'UP_OCORRENCIA'
                Title.Caption = 'OCORR'#202'NCIA'
                Width = 76
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PLANTAO_OCORRENCIA'
                Title.Caption = 'PLANT'#195'O'
                Width = 56
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EVENTO'
                Width = 282
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SUB_EVENTO'
                Title.Caption = 'SUB EVENTO'
                Width = 305
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_EVENTO'
                Title.Caption = 'DATA'
                Width = 73
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'HORA_EVENTO'
                Title.Caption = 'HORA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ARQUIVO_RELACIONADO'
                Title.Caption = 'ARQUIVO RELACIONADO'
                Width = 308
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OBSERVACAO'
                Title.Caption = 'OBSERVA'#199#195'O'
                Width = 687
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UP_LANCAMENTO'
                Title.Caption = 'LAN'#199'AMENTO POR'
                Width = 108
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FUNCIONARIO_MONITOR'
                Title.Caption = 'FUNCION'#193'RIO MONITOR'
                Width = 307
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_MONITORAMENTO_EVENTOS'
                Visible = False
              end>
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 1004
    inherited Image2: TImage
      Width = 1004
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 593
    Width = 1004
  end
  inherited ImageListCadastro: TImageList
    Left = 688
    Top = 32
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'select * from monitoramento_eventos')
    Left = 760
    Top = 8
  end
  inherited DspCadastro: TDataSetProvider
    Left = 788
    Top = 8
  end
  inherited CdsCadastro: TClientDataSet
    IndexFieldNames = 'id_monitoramento_eventos'
    MasterFields = 'id_monitoramento_eventos'
    MasterSource = DsConsulta
    Left = 816
    Top = 8
  end
  inherited DsCadastro: TDataSource
    Left = 844
    Top = 8
  end
  object DsConsulta: TDataSource
    DataSet = CdsConsulta
    OnDataChange = DsConsultaDataChange
    Left = 84
    Top = 328
  end
  object CdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dspconsulta'
    OnFilterRecord = CdsConsultaFilterRecord
    Left = 56
    Top = 328
  end
  object Dspconsulta: TDataSetProvider
    DataSet = SqlConsulta
    Left = 28
    Top = 328
  end
  object SqlConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA2'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select me.id_monitoramento_eventos, up_lan.sigla as up_lancament' +
        'o, up_oco.sigla as up_ocorrencia, f.nome_funcionario as funciona' +
        'rio_monitor,'
      
        'e.codigo || '#39' - '#39' || e.descricao_evento as evento, sb.codigo_sub' +
        '_evento || '#39' - '#39' || sb.descricao_eventos as sub_evento,'
      
        'me.plantao_ocorrencia, me.data_evento, me.hora_evento, me.arquiv' +
        'o_relacionado, me.observacao, me.id_up_lancamento'
      'from monitoramento_eventos me'
      
        'left join unidade_penal up_lan on (up_lan.id_up = me.id_up_lanca' +
        'mento)'
      
        'left join unidade_penal up_oco on (up_oco.id_up = me.id_up_ocorr' +
        'encia)'
      
        'left join funcionario f on (f.id_funcionario = me.id_funcionario' +
        '_monitor)'
      'left join eventos e on (e.id_eventos = me.id_eventos)'
      
        'left join sub_eventos sb on (sb.id_sub_eventos = me.id_sub_event' +
        'os)'
      'where me.data_evento between :data1 and :data2'
      ''
      
        'order by me.data_evento, me.hora_evento, e.codigo || '#39' - '#39' || e.' +
        'descricao_evento')
    SQLConnection = DM.SQLConnect
    Top = 328
  end
  object DsEventos: TDataSource
    DataSet = CdsEventos
    Left = 639
    Top = 16
  end
  object CdsEventos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspEventos'
    Left = 612
    Top = 16
  end
  object DspEventos: TDataSetProvider
    DataSet = SqlEventos
    Left = 581
    Top = 16
  end
  object SqlEventos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT ID_EVENTOS, CODIGO || '#39' - '#39' || DESCRICAO_EVENTO AS DESCRI' +
        'CAO_EVENTO, CODIGO, SUB_EVENTOS FROM EVENTOS'
      'WHERE TIPO_EVENTO = '#39'1'#39
      'ORDER BY CODIGO || '#39' - '#39' || DESCRICAO_EVENTO')
    SQLConnection = DM.SQLConnect
    Left = 551
    Top = 16
  end
  object OpenDialogArquivo: TOpenDialog
    DefaultExt = '*.*'
    Filter = 'Qualquer tipo de arquivo.|*.*'
    InitialDir = 'C:\'
    Title = 'Escolha o arquivo referente ao evento'
    Left = 721
    Top = 35
  end
  object SqlSubEventos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT ID_SUB_EVENTOS, CODIGO_SUB_EVENTO || '#39' - '#39' || DESCRICAO_E' +
        'VENTOS AS DESCRICAO_EVENTOS, '
      'CODIGO_SUB_EVENTO, ID_EVENTOS FROM SUB_EVENTOS'
      'ORDER BY CODIGO_SUB_EVENTO || '#39' - '#39' || DESCRICAO_EVENTOS')
    SQLConnection = DM.SQLConnect
    Left = 887
    Top = 8
  end
  object DspSubEventos: TDataSetProvider
    DataSet = SqlSubEventos
    Left = 917
    Top = 8
  end
  object CdsSubEventos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspSubEventos'
    Left = 948
    Top = 8
  end
  object DsSubEventos: TDataSource
    DataSet = CdsSubEventos
    Left = 975
    Top = 8
  end
  object SqlConsultaUnidade: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_UP_LANCAMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_up_lancamento'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select me.id_monitoramento_eventos, up_lan.sigla as up_lancament' +
        'o, up_oco.sigla as up_ocorrencia, f.nome_funcionario as funciona' +
        'rio_monitor,'
      
        'e.codigo || '#39' - '#39' || e.descricao_evento as evento, sb.codigo_sub' +
        '_evento || '#39' - '#39' || sb.descricao_eventos as sub_evento,'
      
        'me.plantao_ocorrencia, me.data_evento, me.hora_evento, me.arquiv' +
        'o_relacionado, me.observacao, me.id_up_lancamento'
      'from monitoramento_eventos me'
      
        'left join unidade_penal up_lan on (up_lan.id_up = me.id_up_lanca' +
        'mento)'
      
        'left join unidade_penal up_oco on (up_oco.id_up = me.id_up_ocorr' +
        'encia)'
      
        'left join funcionario f on (f.id_funcionario = me.id_funcionario' +
        '_monitor)'
      'left join eventos e on (e.id_eventos = me.id_eventos)'
      
        'left join sub_eventos sb on (sb.id_sub_eventos = me.id_sub_event' +
        'os)'
      'where me.data_evento between :data1 and :data2'
      
        'and ( (id_up_lancamento = :id_up_lancamento) and (id_up_ocorrenc' +
        'ia = :id_up_lancamento) )'
      
        'order by me.data_evento, me.hora_evento, e.codigo || '#39' - '#39' || e.' +
        'descricao_evento')
    SQLConnection = DM.SQLConnect
    Top = 360
  end
  object SQLConsultaUnidadeTodas: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_UP_LANCAMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_up_lancamento'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select me.id_monitoramento_eventos, up_lan.sigla as up_lancament' +
        'o, up_oco.sigla as up_ocorrencia, f.nome_funcionario as funciona' +
        'rio_monitor,'
      
        'e.codigo || '#39' - '#39' || e.descricao_evento as evento, sb.codigo_sub' +
        '_evento || '#39' - '#39' || sb.descricao_eventos as sub_evento,'
      
        'me.plantao_ocorrencia, me.data_evento, me.hora_evento, me.arquiv' +
        'o_relacionado, me.observacao, me.id_up_lancamento'
      'from monitoramento_eventos me'
      
        'left join unidade_penal up_lan on (up_lan.id_up = me.id_up_lanca' +
        'mento)'
      
        'left join unidade_penal up_oco on (up_oco.id_up = me.id_up_ocorr' +
        'encia)'
      
        'left join funcionario f on (f.id_funcionario = me.id_funcionario' +
        '_monitor)'
      'left join eventos e on (e.id_eventos = me.id_eventos)'
      
        'left join sub_eventos sb on (sb.id_sub_eventos = me.id_sub_event' +
        'os)'
      'where me.data_evento between :data1 and :data2'
      
        'and ( (id_up_lancamento = :id_up_lancamento) or (id_up_ocorrenci' +
        'a = :id_up_lancamento) )'
      
        'order by me.data_evento, me.hora_evento, e.codigo || '#39' - '#39' || e.' +
        'descricao_evento')
    SQLConnection = DM.SQLConnect
    Top = 392
  end
end
