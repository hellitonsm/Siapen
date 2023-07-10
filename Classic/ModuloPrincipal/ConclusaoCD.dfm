object FrmConclusaoCD: TFrmConclusaoCD
  Left = 494
  Top = 217
  Width = 407
  Height = 212
  Caption = 'Conclus'#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label17: TLabel
    Left = 8
    Top = 19
    Width = 63
    Height = 13
    Caption = 'Situa'#231#227'o PDI'
  end
  object Label15: TLabel
    Left = 163
    Top = 19
    Width = 102
    Height = 13
    Caption = 'Data da Condena'#231#227'o'
  end
  object Label26: TLabel
    Left = 276
    Top = 19
    Width = 85
    Height = 13
    Caption = 'Data Reabilita'#231#227'o'
  end
  object Label29: TLabel
    Left = 10
    Top = 68
    Width = 74
    Height = 13
    Caption = 'Data Resultado'
  end
  object Label41: TLabel
    Left = 107
    Top = 68
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object Button1: TButton
    Left = 132
    Top = 124
    Width = 117
    Height = 25
    Caption = 'Confirmar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ModalResult = 1
    ParentFont = False
    TabOrder = 0
  end
  object ComboBoxsituacaopdi: TComboBox
    Left = 8
    Top = 34
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Items.Strings = (
      'Andamento'
      'Concluido/Arquivado'
      'Recurso')
  end
  object Editdtcondenacao: TEdit
    Left = 164
    Top = 34
    Width = 101
    Height = 21
    TabOrder = 2
  end
  object Editdtreabilitacao: TEdit
    Left = 276
    Top = 34
    Width = 101
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 11
    Top = 84
    Width = 86
    Height = 21
    TabOrder = 4
  end
  object ComboBox2: TComboBox
    Left = 108
    Top = 84
    Width = 269
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'Absolvido'
      'Condenado'
      'Extinto')
  end
end
