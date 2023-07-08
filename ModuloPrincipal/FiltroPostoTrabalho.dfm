inherited FrmFiltroPostoTrabalho: TFrmFiltroPostoTrabalho
  Height = 179
  Caption = 'Filtro do Posto de Trabalho'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelGeral: TPanel
    Height = 100
    object Label5: TLabel
      Left = 17
      Top = 9
      Width = 118
      Height = 13
      Caption = 'Posto/Local de Trabalho'
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 17
      Top = 25
      Width = 384
      Height = 21
      DataField = 'IDPOSTO_TRABALHO'
      KeyField = 'IDPOSTO_TRABALHO'
      ListField = 'POSTO_TRABALHO'
      ListSource = DM.DsPostoTrabalho
      TabOrder = 0
      OnClick = DBLookupComboBox3Click
    end
    object btn1: TBitBtn
      Left = 155
      Top = 56
      Width = 97
      Height = 25
      Enabled = False
      TabOrder = 1
      Kind = bkOK
    end
  end
end
