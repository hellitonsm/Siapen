inherited FrmQualProcedimento: TFrmQualProcedimento
  Left = 231
  Top = 155
  VertScrollBar.Range = 0
  ActiveControl = EditLocalizar
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Qual Procedimento'
  ClientHeight = 331
  ClientWidth = 784
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelGeral: TPanel
    Width = 784
    Height = 290
    object DBGridOcorrencia: TDBGrid
      Left = 1
      Top = 35
      Width = 782
      Height = 103
      Cursor = crHandPoint
      Align = alClient
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Color = clWhite
      DataSource = DsMovProcDetalhado
      DragCursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridOcorrenciaDrawColumnCell
      OnDblClick = DBGridOcorrenciaDblClick
      Columns = <
        item
          Color = clBtnFace
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'PROCEDIMENTO'
          Width = 200
          Visible = True
        end
        item
          Color = clBtnFace
          Expanded = False
          FieldName = 'PESSOAS'
          Title.Caption = 'REFERENCIAS'
          Width = 730
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 1
      Top = 248
      Width = 782
      Height = 41
      Align = alBottom
      TabOrder = 1
      object BitBtnConfirma: TBitBtn
        Left = 313
        Top = 9
        Width = 150
        Height = 25
        Caption = 'Conf&irma'
        Default = True
        TabOrder = 0
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
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 782
      Height = 34
      Align = alTop
      Caption = 'Panel2'
      TabOrder = 2
      DesignSize = (
        782
        34)
      object Label1: TLabel
        Left = 24
        Top = 8
        Width = 45
        Height = 13
        Caption = 'Localizar:'
      end
      object EditLocalizar: TEdit
        Left = 95
        Top = 0
        Width = 685
        Height = 32
        Anchors = [akLeft, akTop, akRight]
        CharCase = ecUpperCase
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = EditLocalizarChange
      end
    end
    object DBRichEdit1: TDBRichEdit
      Left = 1
      Top = 138
      Width = 782
      Height = 110
      Align = alBottom
      DataField = 'PESSOAS'
      DataSource = DsMovProcDetalhado
      TabOrder = 3
    end
  end
  inherited PanelTitulo: TPanel
    Width = 784
    inherited Image2: TImage
      Width = 782
    end
  end
  object SqlMovProcDetalhado: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      ''
      'SELECT'
      ''
      'TRIM((SELECT LIST(MIX.DESC_HORA,'#39'; '#39')'
      'FROM'
      '(SELECT MOV_OCORRENCIA.IDMOV_PROCEDIMENTOS,'
      
        '  OCORRENCIA.DESCRICAO||'#39' AS '#39'||SUBSTR(MOV_OCORRENCIA.HORA,1,8)|' +
        '|'#39'H'#39' DESC_HORA'
      'FROM MOV_OCORRENCIA'
      
        'JOIN OCORRENCIA ON OCORRENCIA.IDOCORRENCIA=MOV_OCORRENCIA.IDOCOR' +
        'RENCIA'
      ') MIX'
      
        'WHERE MIX.IDMOV_PROCEDIMENTOS = M.IDMOV_PROCEDIMENTOS))||'#39';'#39' OCO' +
        'RRENCIA_HORA,'
      ''
      'P.DESCRICAO, M.* , TRIM((SELECT LIST(NOME,'#39';'#39')'
      'FROM SP_LISTA_MV_PESSOA_PROC(M.IDMOV_PROCEDIMENTOS))) DETALHE'
      
        'FROM MOV_PROCEDIMENTOS M JOIN PROCEDIMENTOS P ON (M.IDPROCEDIMEN' +
        'TOS=P.IDPROCEDIMENTOS)'
      'WHERE'
      
        'COALESCE(CAST(M.DATA AS DATE),CURRENT_DATE) BETWEEN '#39'27.07.1984'#39 +
        ' AND '#39'28.04.2039'#39' AND'
      'COALESCE(M.ST,'#39'A'#39')='#39'A'#39
      'AND COALESCE(M.ID_UP,101)= 101'
      'AND M.IDMOV_PROCEDIMENTOS_PRINCIPAL = 10159'
      'ORDER BY P.DESCRICAO'
      '')
    SQLConnection = DM.SQLConnect
    Left = 24
  end
  object DspMovProcDetalhado: TDataSetProvider
    DataSet = SqlMovProcDetalhado
    Left = 52
  end
  object CdsMovProcDetalhado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMovProcDetalhado'
    OnCalcFields = CdsMovProcDetalhadoCalcFields
    Left = 80
    object CdsMovProcDetalhadoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object CdsMovProcDetalhadoIDMOV_PROCEDIMENTOS: TIntegerField
      FieldName = 'IDMOV_PROCEDIMENTOS'
      Required = True
    end
    object CdsMovProcDetalhadoIDPROCEDIMENTOS: TIntegerField
      FieldName = 'IDPROCEDIMENTOS'
      Required = True
    end
    object CdsMovProcDetalhadoDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object CdsMovProcDetalhadoHORA_INICIAL: TTimeField
      FieldName = 'HORA_INICIAL'
    end
    object CdsMovProcDetalhadoHORA_FINAL: TTimeField
      FieldName = 'HORA_FINAL'
    end
    object CdsMovProcDetalhadoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 1000
    end
    object CdsMovProcDetalhadoST: TStringField
      FieldName = 'ST'
      Size = 1
    end
    object CdsMovProcDetalhadoDATA_ENCERRAMENTO: TSQLTimeStampField
      FieldName = 'DATA_ENCERRAMENTO'
    end
    object CdsMovProcDetalhadoMOTIVO_ENCERRAMENTO: TStringField
      FieldName = 'MOTIVO_ENCERRAMENTO'
      Size = 100
    end
    object CdsMovProcDetalhadoID_UP: TIntegerField
      FieldName = 'ID_UP'
    end
    object CdsMovProcDetalhadoIDMOV_OCORRENCIA_ORIGEM: TIntegerField
      FieldName = 'IDMOV_OCORRENCIA_ORIGEM'
    end
    object CdsMovProcDetalhadoIDMOV_PROCEDIMENTOS_PRINCIPAL: TIntegerField
      FieldName = 'IDMOV_PROCEDIMENTOS_PRINCIPAL'
    end
    object CdsMovProcDetalhadoDETALHE: TMemoField
      FieldName = 'DETALHE'
      BlobType = ftMemo
      GraphicHeader = False
      Size = 1
    end
    object CdsMovProcDetalhadoPESSOAS: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'PESSOAS'
      Size = 32000
    end
    object CdsMovProcDetalhadoOCORRENCIA_HORA: TMemoField
      FieldName = 'OCORRENCIA_HORA'
      BlobType = ftMemo
      GraphicHeader = False
      Size = 1
    end
  end
  object DsMovProcDetalhado: TDataSource
    DataSet = CdsMovProcDetalhado
    Left = 108
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 144
  end
end
