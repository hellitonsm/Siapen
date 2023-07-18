object FRMTrocarSenha: TFRMTrocarSenha
  Left = 192
  Top = 114
  Caption = 'Trocar Senha'
  ClientHeight = 167
  ClientWidth = 335
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 100
    Height = 20
    Caption = 'Senha Atual'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 98
    Height = 20
    Caption = 'Nova Senha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 88
    Width = 130
    Height = 20
    Caption = 'Confirma Senha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 168
    Top = 24
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    PasswordChar = '@'
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 168
    Top = 56
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    PasswordChar = '@'
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 168
    Top = 88
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    PasswordChar = '@'
    TabOrder = 2
  end
  object Button1: TButton
    Left = 80
    Top = 136
    Width = 97
    Height = 25
    Caption = 'Trocar Senha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object BitBtn1: TBitBtn
    Left = 192
    Top = 135
    Width = 75
    Height = 25
    Caption = '&Sair'
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 4
  end
end
