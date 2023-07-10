inherited FrmMonitoramentoEventos: TFrmMonitoramentoEventos
  Left = 163
  Top = 122
  Width = 1102
  Height = 533
  Caption = 'Monitoramento de Eventos'
  OldCreateOrder = True
  WindowState = wsMaximized
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelGeral: TPanel
    Top = 42
    Width = 1086
    Height = 453
    object DBGridEventos: TDBGrid
      Left = 1
      Top = 97
      Width = 1084
      Height = 355
      Align = alClient
      DataSource = DsMovEventos
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Visible = False
      OnDrawColumnCell = DBGridEventosDrawColumnCell
      OnEditButtonClick = DBGridEventosEditButtonClick
      Columns = <
        item
          Expanded = False
          FieldName = 'HORA_EVENTO'
          Title.Caption = 'Hora'
          Width = 31
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EVENTOS'
          Title.Caption = 'Eventos'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'POSTO_TRABALHO'
          Title.Caption = 'Posto de Trabalho'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OBSERVACAO'
          Title.Caption = 'Observa'#231#227'o'
          Width = 300
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'ARQUIVO_RELACIONADO'
          Title.Caption = 'Arquivo'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_FUNCIONARIO'
          Title.Caption = 'Funcionario do Evento'
          Width = 200
          Visible = True
        end>
    end
    object PnlGeral: TPanel
      Left = 1
      Top = 1
      Width = 1084
      Height = 96
      Align = alTop
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 1
        Width = 68
        Height = 13
        Caption = 'Dia do Evento'
        Transparent = True
      end
      object Label3: TLabel
        Left = 353
        Top = 51
        Width = 33
        Height = 13
        Caption = 'Equipe'
      end
      object Label46: TLabel
        Left = 10
        Top = 51
        Width = 108
        Height = 13
        Caption = 'Estabelecimento Penal'
      end
      object lbl7: TLabel
        Left = 352
        Top = 4
        Width = 143
        Height = 13
        Caption = 'Funcion'#225'rio do Monitoramento'
      end
      object DateTimePickerEvento: TDateTimePicker
        Left = 9
        Top = 15
        Width = 128
        Height = 22
        Date = 40934.485215416670000000
        Time = 40934.485215416670000000
        TabOrder = 0
        OnChange = DateTimePickerEventoChange
      end
      object BtnAtualizarEscalaDia: TBitBtn
        Left = 139
        Top = 11
        Width = 75
        Height = 25
        Caption = '&Atualizar '
        TabOrder = 1
        OnClick = BtnAtualizarEscalaDiaClick
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
      object DBNavigator1: TDBNavigator
        Left = 709
        Top = 67
        Width = 234
        Height = 25
        DataSource = DsMovEventos
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        TabOrder = 5
      end
      object DBLookupComboBoxEquipe: TDBLookupComboBox
        Left = 353
        Top = 67
        Width = 345
        Height = 21
        DataField = 'IDEQUIPE'
        KeyField = 'IDEQUIPE'
        ListField = 'EQUIPE'
        ListSource = DM.DsEquipe
        TabOrder = 4
        OnClick = DBLookupComboBoxEquipeClick
      end
      object DBLookupComboBoxUP: TDBLookupComboBox
        Left = 10
        Top = 67
        Width = 319
        Height = 21
        KeyField = 'ID_UP'
        ListField = 'SIGLA'
        ListSource = DM.DsUP
        TabOrder = 2
      end
      object DBLookupComboBoxFuncionario: TDBLookupComboBox
        Left = 352
        Top = 20
        Width = 345
        Height = 21
        DataField = 'ID_FUNCIONARIO'
        Enabled = False
        KeyField = 'ID_FUNCIONARIO'
        ListField = 'NOME_FUNCIONARIO'
        ListSource = DM.DsFuncionario
        TabOrder = 3
      end
    end
  end
  inherited PanelTitulo: TPanel
    Width = 1086
    Height = 42
    inherited Image2: TImage
      Width = 1084
      Height = 40
    end
  end
  object DspMovEventos: TDataSetProvider
    DataSet = SqlMovEventos
    Left = 568
    Top = 193
  end
  object CdsMovEventos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspMovEventos'
    AfterInsert = CdsMovEventosAfterInsert
    AfterPost = CdsMovEventosAfterPost
    Left = 600
    Top = 193
    object CdsMovEventosIDMOV_EVENTOS: TIntegerField
      FieldName = 'IDMOV_EVENTOS'
      Required = True
    end
    object CdsMovEventosIDFUNCIONARIO: TIntegerField
      FieldName = 'IDFUNCIONARIO'
    end
    object CdsMovEventosIDPOSTO_TRABALHO: TIntegerField
      FieldName = 'IDPOSTO_TRABALHO'
    end
    object CdsMovEventosID_UP: TIntegerField
      FieldName = 'ID_UP'
    end
    object CdsMovEventosID_EVENTOS: TIntegerField
      FieldName = 'ID_EVENTOS'
    end
    object CdsMovEventosID_SUB_EVENTOS: TIntegerField
      FieldName = 'ID_SUB_EVENTOS'
    end
    object CdsMovEventosOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 1000
    end
    object CdsMovEventosIDFUNCIONARIO_MONITOR: TIntegerField
      FieldName = 'IDFUNCIONARIO_MONITOR'
    end
    object CdsMovEventosDATA_EVENTO: TSQLTimeStampField
      FieldName = 'DATA_EVENTO'
    end
    object CdsMovEventosHORA_EVENTO: TTimeField
      FieldName = 'HORA_EVENTO'
      EditMask = '!90:00;1;_'
    end
    object CdsMovEventosSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object CdsMovEventosARQUIVO_RELACIONADO: TStringField
      FieldName = 'ARQUIVO_RELACIONADO'
      Size = 200
    end
    object CdsMovEventosIDEQUIPE: TIntegerField
      FieldName = 'IDEQUIPE'
    end
    object CdsMovEventosEQUIPE: TStringField
      FieldKind = fkLookup
      FieldName = 'EQUIPE'
      LookupDataSet = DM.CdsEquipe
      LookupKeyFields = 'IDEQUIPE'
      LookupResultField = 'EQUIPE'
      KeyFields = 'IDEQUIPE'
      Size = 100
      Lookup = True
    end
    object CdsMovEventosNOME_FUNCIONARIO: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME_FUNCIONARIO'
      LookupDataSet = DM.cdsfuncionario
      LookupKeyFields = 'ID_FUNCIONARIO'
      LookupResultField = 'NOME_FUNCIONARIO'
      KeyFields = 'IDFUNCIONARIO'
      Size = 100
      Lookup = True
    end
    object CdsMovEventosPOSTO_TRABALHO: TStringField
      FieldKind = fkLookup
      FieldName = 'POSTO_TRABALHO'
      LookupDataSet = DM.CdsPostoTrabalho
      LookupKeyFields = 'IDPOSTO_TRABALHO'
      LookupResultField = 'POSTO_TRABALHO'
      KeyFields = 'IDPOSTO_TRABALHO'
      Size = 100
      Lookup = True
    end
    object CdsMovEventosEVENTOS: TStringField
      FieldKind = fkLookup
      FieldName = 'EVENTOS'
      LookupDataSet = CdsEventos
      LookupKeyFields = 'ID_EVENTOS'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_EVENTOS'
      Size = 100
      Lookup = True
    end
    object CdsMovEventosSUB_EVENTOS: TStringField
      FieldKind = fkLookup
      FieldName = 'SUB_EVENTOS'
      LookupDataSet = CdsSubEventos
      LookupKeyFields = 'ID_SUB_EVENTOS'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_SUB_EVENTOS'
      Size = 100
      Lookup = True
    end
  end
  object DsMovEventos: TDataSource
    DataSet = CdsMovEventos
    Left = 632
    Top = 193
  end
  object SqlMovEventos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM MOV_EVENTOS')
    SQLConnection = DM.SQLConnect
    Left = 536
    Top = 193
  end
  object SqlEventos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select id_eventos, '
      '       codigo||'#39'-'#39'||descricao_evento descricao,'
      '       sub_eventos'
      'from eventos'
      'order by codigo')
    SQLConnection = DM.SQLConnect
    Left = 536
    Top = 241
  end
  object DspEventos: TDataSetProvider
    DataSet = SqlEventos
    Left = 568
    Top = 241
  end
  object CdsEventos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspEventos'
    Left = 600
    Top = 241
  end
  object DsEventos: TDataSource
    DataSet = CdsEventos
    Left = 632
    Top = 241
  end
  object DsSubEventos: TDataSource
    DataSet = CdsSubEventos
    Left = 632
    Top = 289
  end
  object CdsSubEventos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspSubEventos'
    Left = 600
    Top = 289
  end
  object DspSubEventos: TDataSetProvider
    DataSet = SqlSubEventos
    Left = 568
    Top = 289
  end
  object SqlSubEventos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select id_sub_eventos, '
      '       codigo_sub_evento||'#39'-'#39'||descricao_eventos descricao'
      'from sub_eventos'
      'order by codigo_sub_evento')
    SQLConnection = DM.SQLConnect
    Left = 536
    Top = 289
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.*'
    Filter = 'Qualquer tipo de arquivo.|*.*'
    InitialDir = 'C:\'
    Left = 793
    Top = 59
  end
end
