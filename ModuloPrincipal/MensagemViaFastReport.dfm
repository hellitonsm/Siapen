inherited FrmMensagemViaFastReport: TFrmMensagemViaFastReport
  Left = 1017
  Top = 18
  BorderStyle = bsNone
  Caption = 'Mensagem'
  ClientHeight = 602
  ClientWidth = 714
  FormStyle = fsStayOnTop
  Position = poDefaultPosOnly
  OnClose = FormClose
  ExplicitWidth = 714
  ExplicitHeight = 602
  TextHeight = 13
  inherited PanelGeral: TPanel
    Top = 18
    Width = 714
    Height = 584
    ExplicitTop = 18
    ExplicitWidth = 325
    ExplicitHeight = 313
    object Panel1: TPanel
      Left = 1
      Top = 60
      Width = 712
      Height = 523
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 323
      ExplicitHeight = 252
      object frxPreview1: TfrxPreview
        Left = 1
        Top = 1
        Width = 710
        Height = 521
        Align = alClient
        BorderStyle = bsNone
        OutlineVisible = True
        OutlineWidth = 121
        ThumbnailVisible = False
        FindFmVisible = False
        UseReportHints = True
        OutlineTreeSortType = dtsUnsorted
        HideScrolls = False
        ExplicitWidth = 321
        ExplicitHeight = 250
      end
    end
    object RadioGroupTipo: TRadioGroup
      Left = 1
      Top = 1
      Width = 712
      Height = 59
      Align = alTop
      Caption = 'Mensagens para:'
      ItemIndex = 1
      Items.Strings = (
        'Funcion'#225'rio em Login'
        'Posto de Trabalho'
        'Unidade de Lota'#231#227'o')
      TabOrder = 1
      OnClick = RadioGroupTipoClick
      ExplicitWidth = 323
    end
    object BitBtn1: TBitBtn
      Left = 176
      Top = 24
      Width = 93
      Height = 25
      Caption = 'Atualizar'
      Kind = bkRetry
      NumGlyphs = 2
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  inherited PanelTitulo: TPanel
    Width = 714
    Height = 18
    ExplicitWidth = 325
    ExplicitHeight = 18
    DesignSize = (
      714
      18)
    inherited Image2: TImage
      Width = 712
      Height = 16
      ExplicitWidth = 323
      ExplicitHeight = 16
    end
    inherited LabelTitulo: TLabel
      Left = 13
      Top = 1
      Width = 3
      Height = 15
      Caption = ''
      Font.Height = -13
      ExplicitLeft = 13
      ExplicitTop = 1
      ExplicitWidth = 3
      ExplicitHeight = 15
    end
    inherited Image3: TImage
      Left = 276
      Width = 29
      Height = 28
      Proportional = True
      Stretch = True
      Visible = False
      ExplicitLeft = 276
      ExplicitWidth = 29
      ExplicitHeight = 28
    end
    object ToolBar1: TToolBar
      Left = 592
      Top = -6
      Width = 29
      Height = 22
      Align = alNone
      Anchors = [akTop, akRight]
      ButtonHeight = 29
      ButtonWidth = 35
      Caption = 'ToolBar1'
      Images = DM.ImageListCorel2
      TabOrder = 0
      Transparent = True
      ExplicitLeft = 203
      object ToolButtonAlerta: TToolButton
        Left = 0
        Top = 0
        Down = True
        ImageIndex = 0
        Visible = False
      end
    end
    object BtnOcultar: TButton
      Left = 38
      Top = 2
      Width = 75
      Height = 16
      Caption = 'Ocultar'
      TabOrder = 1
      OnClick = BtnOcultarClick
    end
    object btnExpandir: TButton
      Left = 121
      Top = 2
      Width = 75
      Height = 16
      Caption = 'Mensagem'
      TabOrder = 2
      OnClick = btnExpandirClick
    end
    object Button1: TButton
      Left = 233
      Top = 1
      Width = 75
      Height = 16
      Caption = '[ESC] Fechar'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 248
    Top = 57
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 136
    Top = 160
  end
  object frxReport1: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41078.375900856480000000
    ReportOptions.LastChange = 41078.375900856480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    Left = 128
    Top = 32
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        RowCount = 0
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
    end
  end
  object frxDBXComponents1: TfrxDBXComponents
    Left = 336
    Top = 136
  end
  object frxTIFFExport1: TfrxTIFFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 480
    Top = 112
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    DataSetOptions = []
    Left = 424
    Top = 248
  end
  object frxChartObject1: TfrxChartObject
    Left = 392
    Top = 320
  end
  object frxODTExport1: TfrxODTExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 0.000000000000000000
    DataOnly = False
    PictureType = gpPNG
    OpenAfterExport = False
    Background = True
    Creator = 'FastReport'
    Language = 'en'
    SuppressPageHeadersFooters = False
    Left = 344
    Top = 248
  end
  object frxODSExport1: TfrxODSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 0.000000000000000000
    DataOnly = False
    PictureType = gpPNG
    OpenAfterExport = False
    Background = True
    Creator = 'FastReport'
    Language = 'en'
    SuppressPageHeadersFooters = False
    Left = 312
    Top = 248
  end
  object frxPDFExport1: TfrxPDFExport
    FileName = 'H:\SIAP\ENTREVISTA PSICOSSOCIAL - ESPELHO.pdf'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 280
    Top = 248
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    RowsCount = 0
    Split = ssNotSplit
    Left = 248
    Top = 248
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 216
    Top = 248
  end
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    FixedWidth = True
    Background = False
    Centered = False
    EmptyLines = True
    Print = False
    PictureType = gpPNG
    Outline = False
    Left = 184
    Top = 248
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    UTF8 = False
    OpenAfterExport = False
    DeleteEmptyColumns = True
    Left = 152
    Top = 248
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    OpenAfterExport = False
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 120
    Top = 248
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 56
    Top = 248
  end
  object frxBMPExport1: TfrxBMPExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 24
    Top = 248
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ';'
    OEMCodepage = False
    UTF8 = False
    OpenAfterExport = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 16
    Top = 92
  end
  object frxGIFExport1: TfrxGIFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 48
    Top = 92
  end
  object frxMailExport1: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ShowExportDialog = True
    SmtpPort = 25
    UseIniFile = True
    TimeOut = 60
    ConfurmReading = False
    UseMAPI = SMTP
    MAPISendFlag = 0
    Left = 80
    Top = 92
  end
  object frxGZipCompressor1: TfrxGZipCompressor
    Left = 120
    Top = 92
  end
  object frxCrypt1: TfrxCrypt
    Left = 152
    Top = 92
  end
  object frxRichObject1: TfrxRichObject
    Left = 24
    Top = 328
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 56
    Top = 328
  end
  object frxCrossObject1: TfrxCrossObject
    Left = 120
    Top = 328
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 152
    Top = 328
  end
  object frxDialogControls1: TfrxDialogControls
    Left = 184
    Top = 328
  end
  object frxOLEObject1: TfrxOLEObject
    Left = 216
    Top = 328
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 248
    Top = 328
  end
  object DsExecute: TDataSource
    DataSet = CdsExecute
    Left = 116
    Top = 136
  end
  object CdsExecute: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPExecute'
    Left = 88
    Top = 136
  end
  object DspExecute: TDataSetProvider
    DataSet = SqlExecute
    Left = 60
    Top = 136
  end
  object SqlExecute: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    Left = 32
    Top = 136
  end
end
