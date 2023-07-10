object FrmSalvarProgressbar: TFrmSalvarProgressbar
  Left = 440
  Top = 265
  Width = 441
  Height = 190
  Caption = 'FrmSalvarProgressbar'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 101
    Height = 13
    Caption = 'Copiando o arquivo...'
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 33
    Height = 13
    Caption = 'Origem'
  end
  object Label3: TLabel
    Left = 26
    Top = 93
    Width = 36
    Height = 13
    Caption = 'Destino'
  end
  object ProgressBar1: TProgressBar
    Left = 16
    Top = 32
    Width = 393
    Height = 17
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 24
    Top = 69
    Width = 257
    Height = 21
    TabOrder = 1
    OnClick = Edit1Click
  end
  object Edit2: TEdit
    Left = 24
    Top = 106
    Width = 257
    Height = 21
    TabOrder = 2
    OnClick = Edit2Click
  end
  object Button1: TButton
    Left = 304
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Copiar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object IBBackupService1: TIBBackupService
    TraceFlags = []
    BlockingFactor = 0
    Options = []
    Left = 208
    Top = 352
  end
  object IBClientDataSet1: TIBClientDataSet
    Aggregates = <>
    Options = [poAllowCommandText]
    Params = <>
    Left = 408
    Top = 80
  end
  object IBConfigService1: TIBConfigService
    TraceFlags = []
    Left = 448
    Top = 128
  end
  object IBDatabase1: TIBDatabase
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 464
    Top = 64
  end
  object IBDatabaseInfo1: TIBDatabaseInfo
    Left = 488
    Top = 88
  end
  object IBDataSet1: TIBDataSet
    BufferChunks = 1000
    CachedUpdates = False
    Left = 560
    Top = 88
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.*'
    Left = 136
    Top = 16
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.*'
    Left = 200
    Top = 16
  end
end
