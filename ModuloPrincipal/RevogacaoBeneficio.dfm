object FrmRevogacaoBeneficio: TFrmRevogacaoBeneficio
  Left = 243
  Top = 164
  Caption = 'Revoga'#231#227'o Beneficio'
  ClientHeight = 308
  ClientWidth = 424
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 82
    Height = 13
    Caption = 'Data Revoga'#231#227'o'
  end
  object Label2: TLabel
    Left = 16
    Top = 64
    Width = 91
    Height = 13
    Caption = 'Motivo Revoga'#231#227'o'
  end
  object Memo1: TMemo
    Left = 16
    Top = 80
    Width = 305
    Height = 89
    TabOrder = 0
  end
  object DateTimePicker1: TDateTimePicker
    Left = 16
    Top = 32
    Width = 153
    Height = 21
    Date = 41072.000000000000000000
    Time = 0.649860752317181300
    TabOrder = 1
  end
  object Button1: TButton
    Left = 144
    Top = 208
    Width = 75
    Height = 25
    Caption = 'OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
end
