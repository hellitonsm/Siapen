inherited FrmMensagemTexto: TFrmMensagemTexto
  Width = 751
  Height = 320
  Caption = 'Mensagem'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelGeral: TPanel
    Width = 735
    Height = 241
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 733
      Height = 198
      Align = alClient
      Lines.Strings = (
        'Memo1')
      TabOrder = 0
    end
    object Panel1: TPanel
      Left = 1
      Top = 199
      Width = 733
      Height = 41
      Align = alBottom
      TabOrder = 1
      object BitBtn1: TBitBtn
        Left = 312
        Top = 8
        Width = 105
        Height = 25
        TabOrder = 0
        Kind = bkOK
      end
    end
  end
  inherited PanelTitulo: TPanel
    Width = 735
    inherited Image2: TImage
      Width = 733
    end
  end
end
