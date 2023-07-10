inherited FrmEscolhendoSkin: TFrmEscolhendoSkin
  Top = 74
  Width = 567
  Height = 480
  Caption = 'Escolhendo Skin'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelGeral: TPanel
    Width = 559
    Height = 412
    object Label1: TLabel
      Left = 8
      Top = 13
      Width = 140
      Height = 13
      Caption = 'C:\...\siapen\ModuloPrincipal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object FilterComboBox1: TFilterComboBox
      Left = 8
      Top = 331
      Width = 148
      Height = 21
      Ctl3D = False
      FileList = FileListBox2
      Filter = 'Skin do SIAP (*.skn)|*.skn'
      ParentCtl3D = False
      TabOrder = 0
    end
    object FileListBox2: TFileListBox
      Left = 161
      Top = 36
      Width = 383
      Height = 317
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clWhite
      Ctl3D = False
      FileEdit = FileEdit
      ItemHeight = 13
      Mask = '*.skn'
      ParentCtl3D = False
      TabOrder = 1
    end
    object DirectoryListBox1: TDirectoryListBox
      Left = 8
      Top = 36
      Width = 148
      Height = 290
      Ctl3D = False
      DirLabel = Label1
      FileList = FileListBox2
      IntegralHeight = True
      ItemHeight = 16
      ParentCtl3D = False
      TabOrder = 2
    end
    object FileEdit: TEdit
      Left = 161
      Top = 13
      Width = 383
      Height = 19
      Anchors = [akLeft, akTop, akRight]
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      Text = '*.skn'
    end
    object Button1: TButton
      Left = 218
      Top = 363
      Width = 97
      Height = 25
      Anchors = [akBottom]
      Caption = 'Visualizar'
      TabOrder = 4
      OnClick = Button1Click
    end
  end
  inherited PanelTitulo: TPanel
    Width = 559
    inherited Image2: TImage
      Width = 557
    end
  end
end
