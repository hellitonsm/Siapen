object FrmSalvarProgressbar: TFrmSalvarProgressbar
  Left = 440
  Top = 265
  Caption = 'FrmSalvarProgressbar'
  ClientHeight = 151
  ClientWidth = 425
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
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
