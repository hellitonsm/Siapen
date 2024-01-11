inherited FrmInventarioPatrimonio: TFrmInventarioPatrimonio
  Left = 208
  Top = 138
  Caption = 'FrmInventarioPatrimonio'
  ClientHeight = 466
  ClientWidth = 803
  ExplicitWidth = 815
  ExplicitHeight = 504
  TextHeight = 13
  inherited PanelGeral: TPanel
    Width = 803
    Height = 425
    ExplicitLeft = -1
    ExplicitTop = 38
    ExplicitWidth = 803
    ExplicitHeight = 425
    object Label1: TLabel
      Left = 56
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object DBGrid1: TDBGrid
      Left = 56
      Top = 96
      Width = 681
      Height = 193
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object Edit1: TEdit
      Left = 56
      Top = 32
      Width = 145
      Height = 21
      TabOrder = 1
      Text = 'Edit1'
    end
    object BtnConfirma: TButton
      Left = 660
      Top = 320
      Width = 75
      Height = 25
      Caption = 'Confirma'
      TabOrder = 2
    end
    object RadioGroup1: TRadioGroup
      Left = 56
      Top = 58
      Width = 513
      Height = 33
      Caption = 'Tipo Base'
      Columns = 4
      Items.Strings = (
        'ARMAMENTO'
        'EXPLOSIVOS'
        'MUNI'#199#213'ES'
        'ESPARGIDORES')
      TabOrder = 3
    end
  end
  inherited PanelTitulo: TPanel
    Width = 803
    ExplicitWidth = 412
    inherited Image2: TImage
      Width = 801
    end
  end
end
