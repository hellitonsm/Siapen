inherited FrmMensagemViaFastReport: TFrmMensagemViaFastReport
  Left = 1017
  Top = 18
  VertScrollBar.Range = 0
  BorderStyle = bsNone
  Caption = 'Mensagem'
  ClientHeight = 331
  ClientWidth = 325
  FormStyle = fsStayOnTop
  Position = poDefaultPosOnly
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelGeral: TPanel
    Top = 18
    Width = 325
    Height = 313
    object Panel1: TPanel
      Left = 1
      Top = 60
      Width = 323
      Height = 252
      Align = alClient
      TabOrder = 0
      object frxPreview1: TfrxPreview
        Left = 1
        Top = 1
        Width = 321
        Height = 250
        Align = alClient
        BorderStyle = bsNone
        OutlineVisible = True
        OutlineWidth = 121
        ThumbnailVisible = False
      end
    end
    object RadioGroupTipo: TRadioGroup
      Left = 1
      Top = 1
      Width = 323
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
    end
    object BitBtn1: TBitBtn
      Left = 176
      Top = 24
      Width = 93
      Height = 25
      Caption = 'Atualizar'
      TabOrder = 2
      OnClick = BitBtn1Click
      Kind = bkRetry
    end
  end
  inherited PanelTitulo: TPanel
    Width = 325
    Height = 18
    inherited Image2: TImage
      Width = 323
      Height = 16
    end
    inherited LabelTitulo: TLabel
      Left = 13
      Top = 1
      Width = 3
      Height = 15
      Caption = ''
      Font.Height = -13
    end
    inherited Image3: TImage
      Left = 276
      Width = 29
      Height = 28
      Proportional = True
      Stretch = True
      Visible = False
    end
    object ToolBar1: TToolBar
      Left = 203
      Top = -6
      Width = 29
      Height = 22
      Align = alNone
      Anchors = [akTop, akRight]
      ButtonHeight = 29
      ButtonWidth = 35
      Caption = 'ToolBar1'
      Flat = True
      Images = DM.ImageListCorel2
      TabOrder = 0
      Transparent = True
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
    Restrictions = []
    RTLLanguage = False
    Left = 136
    Top = 160
  end
  object frxReport1: TfrxReport
    Version = '4.3.6'
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
      object ReportTitle1: TfrxReportTitle
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        RowCount = 0
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
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
    Left = 480
    Top = 112
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    Left = 424
    Top = 248
  end
  object frxIBXComponents1: TfrxIBXComponents
    Left = 336
    Top = 296
  end
  object frxChartObject1: TfrxChartObject
    Left = 392
    Top = 320
  end
  object frxODTExport1: TfrxODTExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 344
    Top = 248
  end
  object frxODSExport1: TfrxODSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 312
    Top = 248
  end
  object frxPDFExport1: TfrxPDFExport
    FileName = 'H:\SIAP\ENTREVISTA PSICOSSOCIAL - ESPELHO.pdf'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    PrintOptimized = False
    Outline = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Background = False
    Creator = 'FastReport (http://www.fast-report.com)'
    HTMLTags = True
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    Left = 280
    Top = 248
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 248
    Top = 248
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
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
    FixedWidth = True
    Background = False
    Centered = False
    EmptyLines = True
    Left = 184
    Top = 248
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    Left = 152
    Top = 248
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    Left = 120
    Top = 248
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Left = 56
    Top = 248
  end
  object frxBMPExport1: TfrxBMPExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Left = 24
    Top = 248
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Separator = ';'
    OEMCodepage = False
    Left = 16
    Top = 92
  end
  object frxGIFExport1: TfrxGIFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Left = 48
    Top = 92
  end
  object frxMailExport1: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    ShowExportDialog = True
    SmtpPort = 25
    UseIniFile = True
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
  object SqlExecute: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    Left = 32
    Top = 136
  end
end
