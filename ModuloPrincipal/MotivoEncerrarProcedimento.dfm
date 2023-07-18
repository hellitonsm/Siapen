inherited FrmMotivoEncerrarProcedimento: TFrmMotivoEncerrarProcedimento
  Caption = 'Motivo para Encerrar o Procedimento'
  TextHeight = 13
  inherited PanelGeral: TPanel
    ExplicitWidth = 574
    ExplicitHeight = 85
    object Button1: TButton
      Left = 176
      Top = 48
      Width = 75
      Height = 25
      Caption = 'OK'
      Enabled = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 16
      Top = 16
      Width = 545
      Height = 21
      TabOrder = 1
      OnChange = Edit1Change
    end
    object Button2: TButton
      Left = 312
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  inherited PanelTitulo: TPanel
    ExplicitWidth = 574
  end
end
