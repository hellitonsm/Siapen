inherited FrmEscolhendoSkin: TFrmEscolhendoSkin
  Top = 74
  Caption = 'Escolhendo Skin'
  ExplicitWidth = 434
  ExplicitHeight = 244
  TextHeight = 13
  inherited PanelGeral: TPanel
    ExplicitHeight = 165
    object Label1: TLabel
      Left = 8
      Top = 13
      Width = 101
      Height = 13
      Caption = 'c:\...\studio\22.0\bin'
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
      Width = 379
      Height = 317
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clWhite
      Ctl3D = False
      FileEdit = FileEdit
      ItemHeight = 13
      Mask = '*.skn'
      ParentCtl3D = False
      TabOrder = 1
      ExplicitWidth = 383
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
      ParentCtl3D = False
      TabOrder = 2
    end
    object FileEdit: TEdit
      Left = 161
      Top = 13
      Width = 379
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
      ExplicitWidth = 383
    end
    object Button1: TButton
      Left = 216
      Top = 363
      Width = 97
      Height = 25
      Anchors = [akBottom]
      Caption = 'Visualizar'
      TabOrder = 4
      OnClick = Button1Click
      ExplicitLeft = 218
    end
  end
  inherited PanelTitulo: TPanel
    ExplicitWidth = 551
  end
end
