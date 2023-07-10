object FrmSituacaoDisciplinar: TFrmSituacaoDisciplinar
  Left = 463
  Top = 231
  BorderStyle = bsDialog
  Caption = 'Situa'#231#227'o da Disciplinar'
  ClientHeight = 126
  ClientWidth = 315
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 0
    Width = 315
    Height = 126
    Align = alClient
    Caption = 'Qual motivo do isolamento?'
    ItemIndex = 0
    Items.Strings = (
      '1 - Sancionado'
      '2 - Seguro'
      '3 - Em Observa'#231#227'o')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 204
    Top = 44
    Width = 75
    Height = 25
    Caption = 'Confirma'
    ModalResult = 1
    TabOrder = 2
  end
  object MaskEdit1: TMaskEdit
    Left = 158
    Top = 16
    Width = 120
    Height = 21
    EditMask = '!99/99/00;1;_'
    MaxLength = 8
    TabOrder = 1
    Text = '  /  /  '
  end
end
