object FormProgresso: TFormProgresso
  Left = 0
  Top = 0
  Caption = 'Aguarde'
  ClientHeight = 83
  ClientWidth = 290
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Pitch = fpVariable
  Font.Style = []
  Position = poOwnerFormCenter
  Visible = True
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 158
    Height = 37
    Caption = 'Carregando...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Pitch = fpVariable
    Font.Style = []
    ParentFont = False
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 46
    Width = 265
    Height = 25
    TabOrder = 0
  end
end
