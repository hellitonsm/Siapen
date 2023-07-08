object FrmCancelarTransferencia: TFrmCancelarTransferencia
  Left = 594
  Top = 199
  Width = 452
  Height = 283
  Caption = 'Cancelar Interno na Transfer'#234'ncia'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LabelData: TLabel
    Left = 27
    Top = 19
    Width = 94
    Height = 13
    Caption = 'Data Cancelamento'
  end
  object LabelMotivo: TLabel
    Left = 28
    Top = 71
    Width = 103
    Height = 13
    Caption = 'Motivo Cancelamento'
  end
  object Label41: TLabel
    Left = 134
    Top = 20
    Width = 55
    Height = 13
    Caption = 'Funcion'#225'rio'
  end
  object Button1: TButton
    Left = 159
    Top = 196
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
  object DBLookupComboBoxfuncionario: TDBLookupComboBox
    Left = 133
    Top = 36
    Width = 279
    Height = 21
    Enabled = False
    KeyField = 'ID_FUNCIONARIO'
    ListField = 'NOME_FUNCIONARIO'
    ListSource = DM.DsFuncionarioLista
    TabOrder = 1
  end
  object Memomotivocancelamento: TMemo
    Left = 28
    Top = 86
    Width = 384
    Height = 89
    TabOrder = 2
  end
  object DateTimePickerDTCANCELAMENTO: TDateTimePicker
    Left = 28
    Top = 37
    Width = 96
    Height = 21
    Date = 40942.555919768520000000
    Time = 40942.555919768520000000
    TabOrder = 3
  end
end
