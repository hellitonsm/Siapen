inherited FrmFiltroProcedimentos: TFrmFiltroProcedimentos
  Left = 355
  Top = 151
  Height = 179
  Caption = 'Informe o Procedimento'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelGeral: TPanel
    Height = 100
    object Label33: TLabel
      Left = 8
      Top = 10
      Width = 70
      Height = 13
      Caption = 'Procedimentos'
    end
    object BitBtnConfirma: TBitBtn
      Left = 32
      Top = 62
      Width = 150
      Height = 25
      Caption = 'Conf&irma'
      Enabled = False
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtnCancela: TBitBtn
      Left = 232
      Top = 62
      Width = 150
      Height = 25
      Caption = 'Ca&ncela'
      TabOrder = 1
      Kind = bkAbort
    end
    object DBLookupComboBoxProcedimentos: TDBLookupComboBox
      Left = 8
      Top = 27
      Width = 409
      Height = 21
      KeyField = 'IDPROCEDIMENTOS'
      ListField = 'DESCRICAO'
      ListSource = DM.DsProcedimentos
      TabOrder = 2
      OnClick = DBLookupComboBoxProcedimentosClick
    end
  end
end
