object FrmConsGridSetup: TFrmConsGridSetup
  Left = 627
  Top = 185
  Caption = 'Colunas'
  ClientHeight = 332
  ClientWidth = 571
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 13
  object IncludeBtn: TSpeedButton
    Left = 269
    Top = 40
    Width = 23
    Height = 22
    Caption = '>'
    OnClick = IncludeBtnClick
  end
  object IncAllBtn: TSpeedButton
    Left = 269
    Top = 72
    Width = 23
    Height = 22
    Caption = '>>'
    OnClick = IncAllBtnClick
  end
  object ExcludeBtn: TSpeedButton
    Left = 269
    Top = 104
    Width = 23
    Height = 22
    Caption = '<'
    OnClick = ExcludeBtnClick
  end
  object ExcAllBtn: TSpeedButton
    Left = 269
    Top = 136
    Width = 23
    Height = 22
    Caption = '<<'
    OnClick = ExcAllBtnClick
  end
  object Label1: TLabel
    Left = 13
    Top = 8
    Width = 78
    Height = 13
    Caption = 'Colunas Vis'#237'veis'
  end
  object DstLabel: TLabel
    Left = 301
    Top = 7
    Width = 129
    Height = 16
    AutoSize = False
    Caption = 'Colunas N'#227'o-Vis'#237'veis'
  end
  object SrcList: TListBox
    Left = 13
    Top = 24
    Width = 250
    Height = 209
    DragMode = dmAutomatic
    ItemHeight = 13
    TabOrder = 0
    OnDragDrop = SrcListDragDrop
    OnDragOver = SrcListDragOver
  end
  object DstList: TListBox
    Left = 301
    Top = 24
    Width = 250
    Height = 209
    DragMode = dmAutomatic
    ItemHeight = 13
    TabOrder = 1
    OnDragDrop = DstListDragDrop
    OnDragOver = DstListDragOver
  end
  object OKBtn: TBitBtn
    Left = 152
    Top = 272
    Width = 105
    Height = 25
    Caption = 'Aplicar'
    Default = True
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
    TabOrder = 2
    OnClick = OKBtnClick
  end
  object CancelBtn: TBitBtn
    Left = 320
    Top = 272
    Width = 105
    Height = 25
    Caption = 'Fechar'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 3
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 240
  end
end
