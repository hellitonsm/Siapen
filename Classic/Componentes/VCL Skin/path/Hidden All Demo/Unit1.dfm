object Form_U: TForm_U
  Left = 192
  Top = 107
  Width = 714
  Height = 499
  Caption = ' VCLSKIN '#31383#21475
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 296
    Top = 168
    Width = 75
    Height = 25
    Caption = 'TestCaption'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 392
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Dialogs'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 16
    Width = 249
    Height = 425
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object ComboBox1: TComboBox
    Left = 504
    Top = 88
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = 'ComboBox1'
  end
  object ListBox1: TListBox
    Left = 504
    Top = 168
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 4
  end
  object RadioGroup1: TRadioGroup
    Left = 328
    Top = 296
    Width = 185
    Height = 105
    Caption = 'RadioGroup1'
    Items.Strings = (
      'asdfasd'
      'bcvx'
      'df'
      'asdf'
      'asdfasdf')
    TabOrder = 5
  end
  object Button3: TButton
    Left = 296
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Active'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 392
    Top = 216
    Width = 75
    Height = 25
    Caption = 'ChangeSkin'
    TabOrder = 7
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 392
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Show Form'
    TabOrder = 8
    OnClick = Button5Click
  end
  object MainMenu1: TMainMenu
    Left = 328
    Top = 96
    object VCLSKINA1: TMenuItem
      Caption = 'VCLSKIN '#31383#21475'A'
      object VCLSKINA3: TMenuItem
        Caption = 'VCLSKIN '#31383#21475'A'
      end
      object VCLSKINA4: TMenuItem
        Caption = 'VCLSKIN '#31383#21475'A'
      end
      object VCLSKINA5: TMenuItem
        Caption = 'VCLSKIN '#31383#21475'A'
      end
    end
    object VCLSKINA2: TMenuItem
      Caption = 'VCLSKIN '#31383#21475'B'
    end
  end
end
