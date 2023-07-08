object FrmImagemParaWEB: TFrmImagemParaWEB
  Left = 382
  Top = 165
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'FrmImagemParaWEB'
  ClientHeight = 219
  ClientWidth = 327
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 192
    Top = 0
    Width = 135
    Height = 127
  end
  object Button1: TButton
    Left = 184
    Top = 168
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBImageFOTOInterno: TDBImage
    Left = 0
    Top = 0
    Width = 135
    Height = 127
    BorderStyle = bsNone
    DataField = 'FOTO'
    Stretch = True
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 48
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 152
    Top = 24
  end
end
