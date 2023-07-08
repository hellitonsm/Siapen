object FrmReplicacaoViaWindows: TFrmReplicacaoViaWindows
  Left = 239
  Top = 280
  Width = 795
  Height = 171
  HorzScrollBar.Visible = False
  VertScrollBar.Tracking = True
  BorderIcons = []
  Caption = 'Replica'#231#227'o Via Windows'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 72
    object Ativar1: TMenuItem
      Caption = 'Ativar'
      OnClick = Ativar1Click
    end
    object Parar1: TMenuItem
      Caption = 'Parar'
      OnClick = Parar1Click
    end
    object Minimizar1: TMenuItem
      Caption = 'Minimizar'
      OnClick = Minimizar1Click
    end
    object Fechar2: TMenuItem
      Caption = 'Fechar'
      OnClick = Fechar2Click
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 240
    Top = 24
    object TelaPrincipal1: TMenuItem
      Caption = 'Tela Principal'
      OnClick = TelaPrincipal1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      OnClick = Fechar1Click
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 320
    Top = 24
  end
  object Timer2: TTimer
    Enabled = False
    Left = 376
    Top = 24
  end
  object IdHTTP1: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 568
    Top = 40
  end
end
