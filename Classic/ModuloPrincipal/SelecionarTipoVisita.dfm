object FrmSelecionarTipoVisita: TFrmSelecionarTipoVisita
  Left = 655
  Top = 450
  Width = 583
  Height = 269
  Caption = 'Tipo Visita'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 27
    Width = 39
    Height = 20
    Caption = 'Data'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 136
    Top = 27
    Width = 39
    Height = 20
    Caption = 'Hora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 137
    Width = 62
    Height = 20
    Caption = 'Destino'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 392
    Top = 26
    Width = 58
    Height = 20
    Caption = 'Gaveta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label5: TLabel
    Left = 240
    Top = 28
    Width = 115
    Height = 20
    Caption = 'Entrada/Sa'#237'da'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label6: TLabel
    Left = 16
    Top = 89
    Width = 72
    Height = 20
    Caption = 'Individuo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edithora: TEdit
    Left = 136
    Top = 48
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
    Text = 'EDITHORA'
  end
  object Editlocal: TEdit
    Left = 16
    Top = 160
    Width = 497
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
  end
  object Editcontato: TEdit
    Left = 392
    Top = 48
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    Visible = False
  end
  object DateTimePickerdata: TDateTimePicker
    Left = 16
    Top = 48
    Width = 113
    Height = 21
    Date = 40945.739165891200000000
    Time = 40945.739165891200000000
    TabOrder = 0
  end
  object BitBtnConfirma: TBitBtn
    Left = 88
    Top = 196
    Width = 150
    Height = 25
    Caption = 'Confirma'
    TabOrder = 4
    Kind = bkOK
  end
  object BitBtnCancela: TBitBtn
    Left = 288
    Top = 196
    Width = 150
    Height = 25
    Caption = 'Cancela'
    TabOrder = 5
    Kind = bkAbort
  end
  object EditIndividuo: TEdit
    Left = 16
    Top = 112
    Width = 497
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
  end
  object EditEntradaSaida: TEdit
    Left = 240
    Top = 48
    Width = 141
    Height = 21
    CharCase = ecUpperCase
    Enabled = False
    TabOrder = 7
    Text = 'EDIT1'
    Visible = False
  end
end
