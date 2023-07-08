inherited FrmInformandoOcorrencia: TFrmInformandoOcorrencia
  Left = 263
  Top = 174
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Informa'#231#245'es da Ocorrencia'
  ClientHeight = 325
  ClientWidth = 684
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelGeral: TPanel
    Width = 684
    Height = 284
    object DBGrid1: TDBGrid
      Left = 26
      Top = 1
      Width = 657
      Height = 47
      Cursor = crHandPoint
      Align = alClient
      Color = clWhite
      DataSource = DsMovOcorrenciaQuest
      FixedColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Color = clBtnFace
          Expanded = False
          FieldName = 'VISIVEL'
          ReadOnly = True
          Title.Caption = 'Preencha todos os dados.'
          Width = 700
          Visible = True
        end>
    end
    object PageControlResposta: TPageControl
      Left = 1
      Top = 48
      Width = 682
      Height = 194
      ActivePage = TabSheetPreDefinido
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MultiLine = True
      ParentFont = False
      TabOrder = 1
      TabPosition = tpLeft
      object TabSheetPreDefinido: TTabSheet
        Caption = 'Pr'#233' Definido'
        object DBText1: TDBText
          Left = 0
          Top = 0
          Width = 636
          Height = 17
          Align = alTop
          Alignment = taCenter
          DataField = 'PERGUNTA'
          DataSource = DsMovOcorrenciaQuest
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBRadioGroupPreDefinido: TDBRadioGroup
          Left = 0
          Top = 17
          Width = 636
          Height = 169
          Align = alClient
          Columns = 5
          DataField = 'RESPOSTA'
          DataSource = DsMovOcorrenciaQuest
          TabOrder = 0
        end
      end
      object TabSheetTextoCurto: TTabSheet
        Caption = 'Texto Curto'
        ImageIndex = 1
        object DBText2: TDBText
          Left = 0
          Top = 0
          Width = 636
          Height = 17
          Align = alTop
          Alignment = taCenter
          DataField = 'PERGUNTA'
          DataSource = DsMovOcorrenciaQuest
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object GroupBox1: TGroupBox
          Left = 0
          Top = 17
          Width = 636
          Height = 169
          Align = alClient
          TabOrder = 0
          object DBEdit1: TDBEdit
            Left = 8
            Top = 16
            Width = 521
            Height = 21
            DataField = 'RESPOSTA'
            DataSource = DsMovOcorrenciaQuest
            TabOrder = 0
          end
        end
      end
      object TabSheetTextoLongo: TTabSheet
        Caption = 'Texto Longo'
        ImageIndex = 2
        object DBText3: TDBText
          Left = 0
          Top = 0
          Width = 636
          Height = 17
          Align = alTop
          Alignment = taCenter
          DataField = 'PERGUNTA'
          DataSource = DsMovOcorrenciaQuest
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBMemo1: TDBMemo
          Left = 0
          Top = 17
          Width = 636
          Height = 169
          Align = alClient
          DataField = 'RESPOSTA'
          DataSource = DsMovOcorrenciaQuest
          TabOrder = 0
        end
      end
      object TabSheetPessoas: TTabSheet
        Caption = 'Pessoas'
        ImageIndex = 3
        object PageControlPrincipal: TPageControl
          Left = 0
          Top = 0
          Width = 636
          Height = 186
          ActivePage = TabSheetInterno
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Style = tsButtons
          TabOrder = 0
          TabWidth = 100
          object TabSheetInterno: TTabSheet
            Caption = 'Interno(a)'
            object DBGridInterno: TDBGrid
              Left = 0
              Top = 25
              Width = 628
              Height = 127
              Align = alClient
              DataSource = DsMovInt
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'INTERNO'
                  Title.Caption = 'Interno(a)'
                  Width = 500
                  Visible = True
                end>
            end
            object Panel2: TPanel
              Left = 0
              Top = 0
              Width = 628
              Height = 25
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              object DBLookupComboBoxInterno: TDBLookupComboBox
                Left = 8
                Top = 0
                Width = 409
                Height = 24
                KeyField = 'ID_INTERNO'
                ListField = 'NOME_INTERNO'
                ListSource = DM.DsInterno
                TabOrder = 0
              end
              object BtnInserirInterno: TButton
                Left = 432
                Top = 0
                Width = 75
                Height = 25
                Caption = 'Inserir'
                TabOrder = 1
                OnClick = BtnInserirInternoClick
              end
              object BtnDeletarInterno: TButton
                Left = 536
                Top = 0
                Width = 75
                Height = 25
                Caption = 'Deletar'
                TabOrder = 2
                OnClick = BtnDeletarInternoClick
              end
            end
          end
          object TabSheetAdvogado: TTabSheet
            Caption = 'Advogado'
            ImageIndex = 1
            object DBGrid2: TDBGrid
              Left = 0
              Top = 25
              Width = 628
              Height = 127
              Align = alClient
              DataSource = DsMovAdv
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'ADVOGADO'
                  Title.Caption = 'Advogado'
                  Width = 500
                  Visible = True
                end>
            end
            object Panel3: TPanel
              Left = 0
              Top = 0
              Width = 628
              Height = 25
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              object DBLookupComboBoxAdvogado: TDBLookupComboBox
                Left = 8
                Top = 0
                Width = 409
                Height = 24
                KeyField = 'ID_ADVOGADO'
                ListField = 'ADVOGADO'
                ListSource = DM.DsAdvogado
                TabOrder = 0
              end
              object BtnInserirAdvogado: TButton
                Left = 432
                Top = 0
                Width = 75
                Height = 25
                Caption = 'Inserir'
                TabOrder = 1
                OnClick = BtnInserirAdvogadoClick
              end
              object BtnDeletarAdvogado: TButton
                Left = 536
                Top = 0
                Width = 75
                Height = 25
                Caption = 'Deletar'
                TabOrder = 2
                OnClick = BtnDeletarAdvogadoClick
              end
            end
          end
          object TabSheetFuncionario: TTabSheet
            Caption = 'Funcion'#225'rio'
            ImageIndex = 2
            object DBGrid3: TDBGrid
              Left = 0
              Top = 25
              Width = 628
              Height = 127
              Align = alClient
              DataSource = DsMovFunc
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'FUNCIONARIO'
                  Title.Caption = 'Funcion'#225'rio'
                  Width = 500
                  Visible = True
                end>
            end
            object Panel4: TPanel
              Left = 0
              Top = 0
              Width = 628
              Height = 25
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              object DBLookupComboBoxFuncionario: TDBLookupComboBox
                Left = 8
                Top = 0
                Width = 409
                Height = 24
                KeyField = 'ID_FUNCIONARIO'
                ListField = 'NOME_FUNCIONARIO'
                ListSource = DM.DsFuncionario
                TabOrder = 0
              end
              object BtnInserirFuncionario: TButton
                Left = 432
                Top = 0
                Width = 75
                Height = 25
                Caption = 'Inserir'
                TabOrder = 1
                OnClick = BtnInserirFuncionarioClick
              end
              object BtnDeletarFuncionario: TButton
                Left = 536
                Top = 0
                Width = 75
                Height = 25
                Caption = 'Deletar'
                TabOrder = 2
                OnClick = BtnDeletarFuncionarioClick
              end
            end
          end
          object TabSheetVisitante: TTabSheet
            Caption = 'Visitante'
            ImageIndex = 3
            object DBGrid4: TDBGrid
              Left = 0
              Top = 25
              Width = 628
              Height = 127
              Align = alClient
              DataSource = DsMovVis
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'VISITANTE'
                  Title.Caption = 'Visitante'
                  Width = 500
                  Visible = True
                end>
            end
            object Panel5: TPanel
              Left = 0
              Top = 0
              Width = 628
              Height = 25
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              object DBLookupComboBoxVisitante: TDBLookupComboBox
                Left = 8
                Top = 0
                Width = 409
                Height = 24
                KeyField = 'ID_VISITANTE'
                ListField = 'VISITANTE'
                ListSource = DM.DsVisitante
                TabOrder = 0
              end
              object BtnInserirVisitante: TButton
                Left = 432
                Top = 0
                Width = 75
                Height = 25
                Caption = 'Inserir'
                TabOrder = 1
                OnClick = BtnInserirVisitanteClick
              end
              object BtnDeletarVisitante: TButton
                Left = 536
                Top = 0
                Width = 75
                Height = 25
                Caption = 'Deletar'
                TabOrder = 2
                OnClick = BtnDeletarVisitanteClick
              end
            end
          end
        end
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 242
      Width = 682
      Height = 41
      Align = alBottom
      TabOrder = 2
      object BitBtnConfirma: TBitBtn
        Left = 273
        Top = 9
        Width = 150
        Height = 25
        Caption = 'Conf&irma'
        Default = True
        TabOrder = 0
        OnClick = BitBtnConfirmaClick
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
      object BitBtnCancela: TBitBtn
        Left = 25
        Top = 9
        Width = 150
        Height = 25
        Caption = 'Ca&ncela'
        ModalResult = 3
        TabOrder = 1
        OnClick = BitBtnCancelaClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
    end
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 25
      Height = 47
      DataSource = DsMovOcorrenciaQuest
      VisibleButtons = [nbPost]
      Align = alLeft
      Hints.Strings = (
        'First record'
        'Prior record'
        'Next record'
        'Last record'
        'Insert record'
        'Delete record'
        'Edit record'
        'Salvar'
        'Cancel edit'
        'Refresh data')
      TabOrder = 3
    end
  end
  inherited PanelTitulo: TPanel
    Width = 684
    inherited Image2: TImage
      Width = 682
    end
  end
  object DspMovOcorrenciaQuest: TDataSetProvider
    DataSet = SqlMovOcorrenciaQuest
    Left = 96
    Top = 9
  end
  object CdsMovOcorrenciaQuest: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspMovOcorrenciaQuest'
    OnCalcFields = CdsMovOcorrenciaQuestCalcFields
    Left = 152
    Top = 9
    object CdsMovOcorrenciaQuestIDMOV_OCORRENCIA_QUEST: TIntegerField
      FieldName = 'IDMOV_OCORRENCIA_QUEST'
      Required = True
    end
    object CdsMovOcorrenciaQuestIDMOV_OCORRENCIA: TIntegerField
      FieldName = 'IDMOV_OCORRENCIA'
      Required = True
    end
    object CdsMovOcorrenciaQuestIDQUESTIONAMENTO: TIntegerField
      FieldName = 'IDQUESTIONAMENTO'
      Required = True
    end
    object CdsMovOcorrenciaQuestPERGUNTA: TStringField
      FieldName = 'PERGUNTA'
      Size = 100
    end
    object CdsMovOcorrenciaQuestTIPO_RESPOSTA: TStringField
      FieldName = 'TIPO_RESPOSTA'
      Size = 30
    end
    object CdsMovOcorrenciaQuestRESPOSTA: TStringField
      FieldName = 'RESPOSTA'
      Size = 16386
    end
    object CdsMovOcorrenciaQuestRESPOSTA_DEFAULT: TStringField
      FieldName = 'RESPOSTA_DEFAULT'
      Size = 16386
    end
    object CdsMovOcorrenciaQuestVISIVEL: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'VISIVEL'
      Size = 16000
    end
  end
  object DsMovOcorrenciaQuest: TDataSource
    DataSet = CdsMovOcorrenciaQuest
    OnDataChange = DsMovOcorrenciaQuestDataChange
    Left = 216
    Top = 9
  end
  object SqlMovOcorrenciaQuest: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDMOV_OCORRENCIA'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM MOV_OCORRENCIA_QUEST'
      'WHERE IDMOV_OCORRENCIA = :IDMOV_OCORRENCIA')
    SQLConnection = DM.SQLConnect
    Left = 40
    Top = 9
  end
  object SqlMovVis: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDMOV_OCORRENCIA'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM MOV_OCORRENCIA_VIS'
      'WHERE IDMOV_OCORRENCIA=:IDMOV_OCORRENCIA')
    SQLConnection = DM.SQLConnect
    Left = 656
    Top = 144
  end
  object DspMovVis: TDataSetProvider
    DataSet = SqlMovVis
    Left = 684
    Top = 144
  end
  object CdsMovVis: TClientDataSet
    Aggregates = <>
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspMovVis'
    Left = 712
    Top = 144
    object CdsMovVisIDMOV_PROCEDIMENTOS_VIS: TIntegerField
      FieldName = 'IDMOV_OCORRENCIA_VIS'
      Required = True
    end
    object CdsMovVisIDMOV_PROCEDIMENTOS: TIntegerField
      FieldName = 'IDMOV_OCORRENCIA'
      Required = True
    end
    object CdsMovVisIDVISITANTE: TIntegerField
      FieldName = 'IDVISITANTE'
      Required = True
    end
    object CdsMovVisVISITANTE: TStringField
      FieldKind = fkLookup
      FieldName = 'VISITANTE'
      LookupDataSet = DM.CdsVisitante
      LookupKeyFields = 'ID_VISITANTE'
      LookupResultField = 'VISITANTE'
      KeyFields = 'IDVISITANTE'
      Size = 100
      Lookup = True
    end
  end
  object DsMovVis: TDataSource
    DataSet = CdsMovVis
    Left = 740
    Top = 144
  end
  object DsMovInt: TDataSource
    DataSet = CdsMovInt
    Left = 740
    Top = 96
  end
  object CdsMovInt: TClientDataSet
    Aggregates = <>
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspMovInt'
    Left = 712
    Top = 96
    object CdsMovIntIDMOV_PROCEDIMENTOS_INT: TIntegerField
      FieldName = 'IDMOV_OCORRENCIA_INT'
      Required = True
    end
    object CdsMovIntIDMOV_PROCEDIMENTOS: TIntegerField
      FieldName = 'IDMOV_OCORRENCIA'
      Required = True
    end
    object CdsMovIntIDINTERNO: TIntegerField
      FieldName = 'IDINTERNO'
      Required = True
    end
    object CdsMovIntINTERNO: TStringField
      FieldKind = fkLookup
      FieldName = 'INTERNO'
      LookupDataSet = DM.CdsInterno
      LookupKeyFields = 'ID_INTERNO'
      LookupResultField = 'NOME_INTERNO'
      KeyFields = 'IDINTERNO'
      Size = 100
      Lookup = True
    end
  end
  object DspMovInt: TDataSetProvider
    DataSet = SqlMovInt
    Left = 684
    Top = 96
  end
  object SqlMovInt: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDMOV_OCORRENCIA'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM MOV_OCORRENCIA_INT'
      'WHERE IDMOV_OCORRENCIA=:IDMOV_OCORRENCIA')
    SQLConnection = DM.SQLConnect
    Left = 656
    Top = 96
  end
  object SqlMovFunc: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDMOV_OCORRENCIA'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM MOV_OCORRENCIA_FUNC'
      'WHERE IDMOV_OCORRENCIA=:IDMOV_OCORRENCIA')
    SQLConnection = DM.SQLConnect
    Left = 656
    Top = 48
  end
  object DspMovFunc: TDataSetProvider
    DataSet = SqlMovFunc
    Left = 684
    Top = 48
  end
  object CdsMovFunc: TClientDataSet
    Aggregates = <>
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspMovFunc'
    Left = 712
    Top = 48
    object CdsMovFuncIDMOV_PROCEDIMENTOS_FUNC: TIntegerField
      FieldName = 'IDMOV_OCORRENCIA_FUNC'
      Required = True
    end
    object CdsMovFuncIDMOV_PROCEDIMENTOS: TIntegerField
      FieldName = 'IDMOV_OCORRENCIA'
      Required = True
    end
    object CdsMovFuncIDFUNCIONARIO: TIntegerField
      FieldName = 'IDFUNCIONARIO'
      Required = True
    end
    object CdsMovFuncFUNCIONARIO: TStringField
      FieldKind = fkLookup
      FieldName = 'FUNCIONARIO'
      LookupDataSet = DM.cdsfuncionario
      LookupKeyFields = 'ID_FUNCIONARIO'
      LookupResultField = 'NOME_FUNCIONARIO'
      KeyFields = 'IDFUNCIONARIO'
      Size = 100
      Lookup = True
    end
  end
  object DsMovFunc: TDataSource
    DataSet = CdsMovFunc
    Left = 740
    Top = 48
  end
  object DsMovAdv: TDataSource
    DataSet = CdsMovAdv
    Left = 740
    Top = 8
  end
  object CdsMovAdv: TClientDataSet
    Aggregates = <>
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspMovAdv'
    Left = 712
    Top = 8
    object CdsMovAdvIDMOV_PROCEDIMENTOS_ADV: TIntegerField
      FieldName = 'IDMOV_OCORRENCIA_ADV'
      Required = True
    end
    object CdsMovAdvIDMOV_PROCEDIMENTOS: TIntegerField
      FieldName = 'IDMOV_OCORRENCIA'
      Required = True
    end
    object CdsMovAdvIDADVOGADO: TIntegerField
      FieldName = 'IDADVOGADO'
      Required = True
    end
    object CdsMovAdvADVOGADO: TStringField
      FieldKind = fkLookup
      FieldName = 'ADVOGADO'
      LookupDataSet = DM.CDSADVOGADO
      LookupKeyFields = 'ID_ADVOGADO'
      LookupResultField = 'ADVOGADO'
      KeyFields = 'IDADVOGADO'
      Size = 100
      Lookup = True
    end
  end
  object DspMovAdv: TDataSetProvider
    DataSet = SqlMovAdv
    Left = 684
    Top = 8
  end
  object SqlMovAdv: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDMOV_OCORRENCIA'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM MOV_OCORRENCIA_ADV'
      'WHERE IDMOV_OCORRENCIA=:IDMOV_OCORRENCIA')
    SQLConnection = DM.SQLConnect
    Left = 656
    Top = 8
  end
  object SqlQuestionamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM questionamento')
    SQLConnection = DM.SQLConnect
    Left = 392
    Top = 1
  end
  object DspQuestionamento: TDataSetProvider
    DataSet = SqlQuestionamento
    Left = 424
    Top = 1
  end
  object CdsQuestionamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspQuestionamento'
    Left = 456
    Top = 1
  end
  object DsQuestionamento: TDataSource
    DataSet = CdsQuestionamento
    Left = 488
    Top = 1
  end
end
