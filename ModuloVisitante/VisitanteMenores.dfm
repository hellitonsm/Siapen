inherited FrmVisitanteMenores: TFrmVisitanteMenores
  Height = 204
  Caption = 'Menor do Visitante'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelGeral: TPanel
    Height = 125
    object Label33: TLabel
      Left = 8
      Top = 10
      Width = 40
      Height = 13
      Caption = 'MENOR'
    end
    object BitBtnConfirma: TBitBtn
      Left = 32
      Top = 72
      Width = 150
      Height = 25
      Caption = 'Confirma'
      Enabled = False
      TabOrder = 1
      Kind = bkOK
    end
    object BitBtnCancela: TBitBtn
      Left = 232
      Top = 72
      Width = 150
      Height = 25
      Caption = 'Cancela'
      TabOrder = 2
      Kind = bkAbort
    end
    object EditMenor: TEdit
      Left = 8
      Top = 27
      Width = 409
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = EditMenorChange
    end
  end
end
