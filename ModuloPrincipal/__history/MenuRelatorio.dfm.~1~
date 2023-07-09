object FrmMenuRelatorio: TFrmMenuRelatorio
  Left = 529
  Top = 294
  Width = 655
  Height = 442
  Caption = 'Menu de Relat'#243'rios'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    647
    415)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 13
    Width = 178
    Height = 13
    Caption = 'C:\...\Siapen\siapen\ModuloPrincipal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 241
    Top = 366
    Width = 97
    Height = 25
    Anchors = [akBottom]
    Caption = 'Visualizar'
    TabOrder = 5
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 568
    Top = 368
    Width = 49
    Height = 25
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ItemHeight = 21
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 6
    Visible = False
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 8
    Top = 36
    Width = 193
    Height = 290
    Ctl3D = False
    DirLabel = Label1
    FileList = FileListBox2
    IntegralHeight = True
    ItemHeight = 16
    ParentCtl3D = False
    TabOrder = 2
    OnChange = DirectoryListBox1Change
    OnDblClick = DirectoryListBox1DblClick
  end
  object FilterComboBox1: TFilterComboBox
    Left = 8
    Top = 331
    Width = 193
    Height = 21
    Ctl3D = False
    FileList = FileListBox2
    Filter = 'Relat'#243'rios SIAP (*.fr3)|*.fr3'
    ParentCtl3D = False
    TabOrder = 4
  end
  object FileListBox2: TFileListBox
    Left = 216
    Top = 28
    Width = 417
    Height = 323
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clWhite
    Ctl3D = False
    FileEdit = FileEdit
    ItemHeight = 13
    Mask = '*.fr3'
    ParentCtl3D = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    OnDblClick = Button1Click
  end
  object FileEdit: TEdit
    Left = 216
    Top = 5
    Width = 417
    Height = 19
    Anchors = [akLeft, akTop, akRight]
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    Text = '*.fr3'
  end
  object DirectoryListBoxTeste: TDirectoryListBox
    Left = 16
    Top = 227
    Width = 95
    Height = 98
    Ctl3D = False
    IntegralHeight = True
    ItemHeight = 16
    ParentCtl3D = False
    TabOrder = 3
    Visible = False
  end
  object frxBMPExport1: TfrxBMPExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 96
    Top = 192
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 128
    Top = 192
  end
  object frxTIFFExport1: TfrxTIFFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 552
    Top = 56
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
    Left = 192
    Top = 192
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
    Left = 224
    Top = 192
  end
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    FixedWidth = True
    Navigator = True
    Multipage = True
    Background = False
    Centered = False
    EmptyLines = True
    Print = False
    PictureType = gpPNG
    Outline = False
    Left = 256
    Top = 192
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    ExportStyles = False
    ExportPictures = False
    Wysiwyg = False
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = False
    EmptyLines = False
    SuppressPageHeadersFooters = False
    Left = 288
    Top = 192
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportPageBreaks = False
    Wysiwyg = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = False
    SuppressPageHeadersFooters = False
    RowsCount = 0
    Split = ssNotSplit
    Left = 320
    Top = 192
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = True
    Background = True
    HTMLTags = True
    Quality = 95
    Transparency = False
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
    Left = 352
    Top = 192
  end
  object frxODSExport1: TfrxODSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    OpenAfterExport = False
    Background = True
    Creator = 'FastReport'
    Language = 'en'
    SuppressPageHeadersFooters = False
    Left = 384
    Top = 192
  end
  object frxODTExport1: TfrxODTExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    OpenAfterExport = False
    Background = True
    Creator = 'FastReport'
    Language = 'en'
    SuppressPageHeadersFooters = False
    Left = 416
    Top = 192
  end
  object frxCrypt1: TfrxCrypt
    Left = 232
    Top = 228
  end
  object frxGZipCompressor1: TfrxGZipCompressor
    Left = 200
    Top = 228
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
    Left = 160
    Top = 228
  end
  object frxGIFExport1: TfrxGIFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 128
    Top = 228
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
    Left = 96
    Top = 228
  end
  object frxReport1: TfrxReport
    Version = '6.9.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41165.520179305550000000
    ReportOptions.LastChange = 41165.520179305550000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnBeforeConnect = frxReport1BeforeConnect
    Left = 248
    Top = 72
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
          Memo.UTF8 = (
            '[Page#]')
        end
      end
    end
  end
  object frxRichObject1: TfrxRichObject
    Left = 96
    Top = 272
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 128
    Top = 272
  end
  object frxCrossObject1: TfrxCrossObject
    Left = 192
    Top = 272
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
    Left = 224
    Top = 272
  end
  object frxDialogControls1: TfrxDialogControls
    Left = 256
    Top = 272
  end
  object frxOLEObject1: TfrxOLEObject
    Left = 288
    Top = 272
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 320
    Top = 272
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
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 208
    Top = 104
  end
  object frxIBXComponents1: TfrxIBXComponents
    Left = 408
    Top = 240
  end
  object frxChartObject1: TfrxChartObject
    Left = 464
    Top = 264
  end
  object DsCadastro: TDataSource
    DataSet = CdsCadastro
    Left = 604
    Top = 152
  end
  object CdsCadastro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCadastro'
    Left = 576
    Top = 152
  end
  object DspCadastro: TDataSetProvider
    DataSet = SqlCadastro
    Left = 548
    Top = 152
  end
  object SqlCadastro: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * '
      'FROM rdb$database')
    SQLConnection = DM.SQLConnect
    Left = 520
    Top = 152
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = SqlCadastro
    BCDToCurrency = False
    Left = 496
    Top = 192
  end
  object PopupMenu1: TPopupMenu
    Left = 328
    Top = 80
    object Configurar1: TMenuItem
      Caption = 'Configurar'
      object Designer1: TMenuItem
        Caption = 'Designer'
        OnClick = Designer1Click
      end
    end
  end
  object frxDBXComponents1: TfrxDBXComponents
    Left = 408
    Top = 80
  end
  object frxDOCXExport1: TfrxDOCXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 320
    Top = 152
  end
  object frxXLSXExport1: TfrxXLSXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ChunkSize = 0
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 352
    Top = 152
  end
end
