inherited FrmMensagem: TFrmMensagem
  Left = 260
  Top = 221
  VertScrollBar.Range = 0
  BorderStyle = bsNone
  Caption = 'Mensagem'
  ClientWidth = 294
  FormStyle = fsStayOnTop
  Position = poDefaultPosOnly
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelGeral: TPanel
    Width = 294
    object MemoMensagem: TMemo
      Left = 1
      Top = 1
      Width = 292
      Height = 120
      Align = alTop
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Lucida Console'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 96
      Top = 128
      Width = 89
      Height = 25
      TabOrder = 1
      OnClick = BitBtn1Click
      Kind = bkOK
    end
  end
  inherited PanelTitulo: TPanel
    Width = 294
    inherited Image2: TImage
      Width = 292
    end
    inherited LabelTitulo: TLabel
      Left = 53
      Top = 11
    end
    object ToolBar1: TToolBar
      Left = 243
      Top = 2
      Width = 37
      Height = 35
      Align = alNone
      Anchors = [akTop, akRight]
      ButtonHeight = 29
      ButtonWidth = 35
      Caption = 'ToolBar1'
      Flat = True
      Images = DM.ImageListCorel2
      TabOrder = 0
      object ToolButtonAlerta: TToolButton
        Left = 0
        Top = 0
        Caption = 'OK'
        Down = True
        ImageIndex = 0
      end
    end
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 248
    Top = 57
  end
end
