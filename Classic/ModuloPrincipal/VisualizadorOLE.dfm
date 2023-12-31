object FrmVisualizadorOLE: TFrmVisualizadorOLE
  Left = 231
  Top = 121
  AutoScroll = False
  Caption = 'Visualizador '
  ClientHeight = 488
  ClientWidth = 772
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = True
  Position = poScreenCenter
  Scaled = False
  ShowHint = True
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Toolbar: TPanel
    Left = 0
    Top = 0
    Width = 772
    Height = 40
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object LinkButton: TSpeedButton
      Left = 201
      Top = 5
      Width = 30
      Height = 30
      Hint = 'Link com arquivo'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300033300000
        00003777FF377777777707070330FFFFFFF077777F37F3FF3FF707370330F00F
        00F077F77F37F773773707370330FFFFFFF077F77F37F3FFFF3707070330F000
        0FF077777337F777733730003330FFFFFFF037773337F3FF3FF733033330F00F
        0000337FFF37F773777733000330FFFF0FF033777FF7F3FF7F3733007030F08F
        0F03337777F7F7737F7330703700FFFF003337773777FFFF7733307333700000
        0333377FF37777777FFF33073070333000033377F777FF37777F333077000307
        7770333777777F7777773333003300003300333377337777FF77333333333307
        7770333333333377777733333333333000033333333333377773}
      NumGlyphs = 2
      OnClick = LinkButtonClick
    end
    object CopyButton: TSpeedButton
      Left = 123
      Top = 5
      Width = 30
      Height = 30
      Hint = 'Copiar'
      Enabled = False
      Glyph.Data = {
        06020000424D0602000000000000760000002800000028000000140000000100
        0400000000009001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333FFFFFFFFFF33333333300000000003333333333888888888
        8F3333333330FFFFFFFF033333333338F33333338F3333333330BFBFBFBF0333
        33333338F3FFFFFF8F3333333330F888888F033333333338F88888838F333333
        3330BFBFBFBF0333333FFFF8F3FFFFFF8F3333000000F888888F033333888888
        F88888838F33330FFFF0BFBFBFBF0333338F3338F3FFFFFF8F33330FFFF0F888
        888F0333338F3338F88888838F33330F7770BFBFBFBF0333338F3338F333333F
        8F33330FFFF0FFFFFF000333338F3338F33333888333330F7770BFBFBF003333
        338F3338FFFFFF883333330FFFF0000000033333338F3338888888833333330F
        777777F033333333338F33333338F3333333330FFFFFFFF033333333338F3333
        33F8F3333333330FFFFFF00033333333338F3333388833333333330FFFFFF003
        33333333338FFFFFF88333333333330000000033333333333388888888333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333333333333333333}
      NumGlyphs = 2
      OnClick = Copy1Click
    end
    object CutButton: TSpeedButton
      Left = 93
      Top = 5
      Width = 30
      Height = 30
      Hint = 'Recortar'
      Enabled = False
      Glyph.Data = {
        06020000424D0602000000000000760000002800000028000000140000000100
        0400000000009001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333FFFF333333FF
        FF33333844833333384483333338888FF33338888FF333843348333384334833
        3388F388F333883388F3338433343333433348333388F338F3338F3388F33384
        33343333433348333388FF38FF338F3388333338433483384334833333388FF8
        8FF88FF883333333844448844448333333338888888888883333333333444444
        4433333333333388888888333333333333346FF6433333333333333883F88F33
        333333333330F00F0333333333333338388383F333333333330FFFF0F0333333
        3333338333F8383F3333333330FFF00FFF033333333338333883F383F3333333
        0FFF0330FFF033333333833383383F383F333330FFF033330FFF033333383338
        333383F383F3330FFF03333330FFF033338F33833333383F38F3330FF0333333
        330FF033338F383333333383F8F3330F033333333330F033338F833333333338
        38F3330033333333333300333388333333333333883333333333333333333333
        33333333333333333333}
      NumGlyphs = 2
      OnClick = CutButtonClick
    end
    object PasteButton: TSpeedButton
      Left = 153
      Top = 5
      Width = 30
      Height = 30
      Hint = 'Colar'
      Enabled = False
      Glyph.Data = {
        06020000424D0602000000000000760000002800000028000000140000000100
        0400000000009001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333FFFFFFFFF333333333300000000033333333333888888
        888F33333333330BFBFBFB03333FFFFFFF8F3FFFFF8F33000000000F88888F03
        33888888888F8888838F307F7F7F7F0BFBFBFB0338F33333338F333FFF8F30F7
        F7F7F70F77888F0338F33333338FFF88838F307F7F7F74444BFBFB0338F33333
        38888F3FFF8F30F7F7F7F7C447888F0338F3333333888F88838F307F7F7F744C
        4BFBFB0338F3333338888F333F8F30F7F7F7444F4FFF880338F33333888F8333
        8883307F7F74440BFBFB803338F33338888FFFFF883330F7F744470000000333
        38F33388838888888333307F7F747F7F0333333338F3333833338F33333330F7
        F7F7F7F70333333338F3333333338F333333307F7F7F7F7F0333333338F33FFF
        FFF38F33333330F7444444F703333333383F888888FF833333333300ECCCC400
        33333333338838888888333333333333ECCCC433333333333333388888333333
        333333333EEEE333333333333333333333333333333333333333333333333333
        33333333333333333333}
      NumGlyphs = 2
      OnClick = Paste1Click
    end
    object OpenButton: TSpeedButton
      Left = 12
      Top = 5
      Width = 30
      Height = 30
      Hint = 'Abrir Arquivo'
      Glyph.Data = {
        06020000424D0602000000000000760000002800000028000000140000000100
        0400000000009001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        333FFFFFFFFFFFFFF3333380000000000000333333888888888888883F333300
        7B7B7B7B7B7B033333883F33333333338F33330F07B7B7B7B7B70333338F8F33
        3333333383F3330B0B7B7B7B7B7B7033338F83F33333333338F3330FB0B7B7B7
        B7B7B033338F38F333333333383F330BF07B7B7B7B7B7B03338F383FFFFF3333
        338F330FBF000007B7B7B703338F33888883FFFFFF83330BFBFBFBF000000033
        338F3333333888888833330FBFBFBFBFBFB03333338F333333333338F333330B
        FBFBFBFBFBF03333338F33333FFFFFF83333330FBFBF0000000333333387FFFF
        8888888333333330000033333333333333388888333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333333333333333333}
      NumGlyphs = 2
      OnClick = Open1Click
    end
    object SaveButton: TSpeedButton
      Left = 42
      Top = 5
      Width = 30
      Height = 30
      Hint = 'Salvar Arquivo'
      Glyph.Data = {
        06020000424D0602000000000000760000002800000028000000140000000100
        0400000000009001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333FFFFFFFFFFFFFF3333380000000000008333
        333888F8FF888F888F333330CC08CCF770CC0333333888F8FF888F888F333330
        CC08CCF770CC0333333888F888888F888F333330CC07887770CC03333338888F
        FFFFF8888F333330CC60000006CC033333388888888888888F333330CCCCCCCC
        CCCC033333388888888888888F333330C6000000006C03333338888888888888
        8F333330C0FFFFFFFF0C0333333888FFFFFFFF888F333330C0FFFFFFFF0C0333
        333888FFFFFFFF888F333330C0FFFFFFFF0C0333333888FFFFFFFF888F333330
        C0FFFFFFFF0C0333333888FFFFFFFF888F33333000FFFFFFFF000333333888FF
        FFFFFF888F333330C0FFFFFFFF0C0333333888FFFFFFFF888F33333800000000
        0000833333388888888888888333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333333333333333333}
      NumGlyphs = 2
      OnClick = Save1Click
    end
    object LabelAguarde: TLabel
      Left = 248
      Top = 8
      Width = 85
      Height = 23
      Caption = 'Aguarde...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
  end
  object StatusPanel: TPanel
    Left = 0
    Top = 471
    Width = 772
    Height = 17
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'StatusPanel'
    Locked = True
    TabOrder = 1
    object StatusBar: TStatusBar
      Left = 0
      Top = 0
      Width = 772
      Height = 17
      Align = alClient
      Panels = <
        item
          Width = 50
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 40
    Width = 772
    Height = 431
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 10
    Caption = 'Panel1'
    TabOrder = 2
    object OleContainer1: TOleContainer
      Left = 10
      Top = 10
      Width = 752
      Height = 411
      Align = alClient
      Caption = 'OleContainer1'
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
    end
  end
  object MainMenu1: TMainMenu
    Left = 453
    Top = 6
    object File1: TMenuItem
      Caption = '&Arquivo'
      OnClick = File1Click
      object New1: TMenuItem
        Caption = '&Novo'
        OnClick = New1Click
      end
      object Open1: TMenuItem
        Caption = '&Abrir...'
        OnClick = Open1Click
      end
      object Save1: TMenuItem
        Caption = '&Salvar'
        OnClick = Save1Click
      end
      object SaveAs1: TMenuItem
        Caption = 'Save &Como...'
        OnClick = Save1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = '&Sair'
        OnClick = Exit1Click
      end
    end
    object Edit1: TMenuItem
      Caption = '&Editar'
      GroupIndex = 1
      OnClick = Edit1Click
      object Cut1: TMenuItem
        Caption = '&Recortar'
        OnClick = Cut1Click
      end
      object Copy1: TMenuItem
        Caption = '&Copiar'
        OnClick = Copy1Click
      end
      object Paste1: TMenuItem
        Caption = 'Co&lar'
        OnClick = Paste1Click
      end
      object PasteSpecial1: TMenuItem
        Caption = 'Colar &Especial...'
        OnClick = PasteSpecial1Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Object1: TMenuItem
        Caption = 'Inserir &Objeto'
        OnClick = Object1Click
      end
    end
    object Help1: TMenuItem
      Caption = '&Ajuda'
      GroupIndex = 5
      object About1: TMenuItem
        Caption = '&Sobre'
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Options = [ofHideReadOnly, ofFileMustExist]
    Left = 391
    Top = 6
  end
  object SaveDialog1: TSaveDialog
    Options = [ofOverwritePrompt, ofHideReadOnly]
    Left = 359
    Top = 6
  end
  object Timer1: TTimer
    Interval = 500
    Left = 272
    Top = 8
  end
end
