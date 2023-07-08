object frmDigital: TfrmDigital
  Left = 490
  Top = 71
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'frmCapDig'
  ClientHeight = 549
  ClientWidth = 470
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 470
    Height = 549
    Align = alClient
    BevelInner = bvLowered
    BevelWidth = 3
    BorderWidth = 3
    TabOrder = 0
    object Panel2: TPanel
      Left = 9
      Top = 9
      Width = 452
      Height = 25
      Align = alTop
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = 'Capturar impress'#227'o digital'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object pnBot: TPanel
      Left = 9
      Top = 512
      Width = 452
      Height = 28
      Align = alBottom
      BevelInner = bvLowered
      BevelOuter = bvNone
      TabOrder = 1
      object btRet: TBitBtn
        Left = 9
        Top = 3
        Width = 192
        Height = 25
        Caption = '&Retornar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btRetClick
      end
      object btSalv: TBitBtn
        Left = 207
        Top = 3
        Width = 234
        Height = 25
        Caption = '&Confirmar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btSalvClick
      end
    end
    object Panel4: TPanel
      Left = 24
      Top = 66
      Width = 417
      Height = 409
      BevelOuter = bvLowered
      BevelWidth = 3
      BorderWidth = 3
      Color = clWhite
      TabOrder = 2
      object imgDig: TImage
        Left = 6
        Top = 6
        Width = 405
        Height = 397
        Align = alClient
        Stretch = True
      end
    end
    object pnLog: TPanel
      Left = 24
      Top = 481
      Width = 417
      Height = 25
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object pnQual: TPanel
      Left = 24
      Top = 38
      Width = 417
      Height = 25
      BevelInner = bvLowered
      BevelOuter = bvLowered
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
  end
end
