object frmRecDig: TfrmRecDig
  Left = 290
  Top = 175
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 330
  ClientWidth = 740
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
    Width = 740
    Height = 330
    Align = alClient
    BevelInner = bvLowered
    BevelWidth = 3
    BorderWidth = 3
    TabOrder = 0
    object Panel2: TPanel
      Left = 9
      Top = 9
      Width = 722
      Height = 25
      Align = alTop
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = 'Busca Biom'#233'trica'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object pnBot: TPanel
      Left = 9
      Top = 280
      Width = 722
      Height = 41
      Align = alBottom
      BevelInner = bvLowered
      BevelOuter = bvNone
      TabOrder = 1
      object Label1: TLabel
        Left = 398
        Top = 10
        Width = 85
        Height = 20
        Caption = 'Pesquisar '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btRet: TBitBtn
        Left = 15
        Top = 12
        Width = 75
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
      object BtnIniciar: TButton
        Left = 125
        Top = 10
        Width = 75
        Height = 25
        Caption = 'Iniciar'
        TabOrder = 1
        OnClick = BtnIniciarClick
      end
      object BtnParar: TButton
        Left = 213
        Top = 10
        Width = 75
        Height = 25
        Caption = 'Parar'
        Enabled = False
        TabOrder = 2
        OnClick = BtnPararClick
      end
      object ComboBoxdigital: TComboBox
        Left = 483
        Top = 10
        Width = 223
        Height = 21
        ItemHeight = 13
        TabOrder = 3
        OnClick = ComboBoxdigitalClick
        Items.Strings = (
          'Polegar Esquerdo'
          'Indicador Esquerdo'
          'M'#233'dio Esquerdo'
          'Anelar Esquerdo'
          'M'#237'nimo Esquerdo'
          'Polegar Direito'
          'Indicador Direito'
          'M'#233'dio Direito'
          'Anelar Direito'
          'M'#237'nimo Direito')
      end
    end
    object Panel4: TPanel
      Left = 15
      Top = 41
      Width = 196
      Height = 232
      BevelInner = bvLowered
      BevelWidth = 3
      BorderWidth = 3
      Color = clWhite
      TabOrder = 2
      object imgDig: TImage
        Left = 9
        Top = 9
        Width = 178
        Height = 214
        Align = alClient
        Stretch = True
      end
    end
    object GroupBox1: TGroupBox
      Left = 216
      Top = 37
      Width = 505
      Height = 233
      TabOrder = 3
      object Label8: TLabel
        Left = 19
        Top = 13
        Width = 55
        Height = 24
        Caption = 'Status:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object mmLog: TMemo
        Left = 19
        Top = 72
        Width = 477
        Height = 153
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object pnSts: TPanel
        Left = 80
        Top = 11
        Width = 415
        Height = 27
        BevelOuter = bvLowered
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object pnQual: TPanel
        Left = 19
        Top = 42
        Width = 477
        Height = 25
        BevelInner = bvLowered
        BevelOuter = bvLowered
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
  end
end
