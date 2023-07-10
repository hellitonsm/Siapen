inherited FrmFiltroAgendaAtendimento: TFrmFiltroAgendaAtendimento
  Left = 360
  Top = 242
  VertScrollBar.Range = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Filtrar o Posto/Local de Trabalho'
  ClientHeight = 138
  ClientWidth = 438
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelGeral: TPanel
    Width = 438
    Height = 97
    object Label8: TLabel
      Left = 40
      Top = 6
      Width = 142
      Height = 13
      Caption = 'Posto/Local de Trabalho'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BtnAgenda: TButton
      Left = 40
      Top = 56
      Width = 170
      Height = 25
      Caption = 'Agenda de Atendimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BtnAgendaClick
    end
    object BtnRequerimento: TButton
      Left = 53
      Top = 56
      Width = 170
      Height = 25
      Caption = 'Registro de Requerimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BtnRequerimentoClick
    end
    object DBLookupComboBoxPostoTrabalho: TDBLookupComboBox
      Left = 40
      Top = 20
      Width = 376
      Height = 21
      DataField = 'IDPOSTO_TRABALHO'
      KeyField = 'IDPOSTO_TRABALHO'
      ListField = 'POSTO_TRABALHO'
      ListSource = DM.DsPostoTrabalho
      TabOrder = 2
    end
    object ButtonSairAgenda: TButton
      Left = 296
      Top = 57
      Width = 85
      Height = 25
      Caption = 'Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = ButtonSairAgendaClick
    end
  end
  inherited PanelTitulo: TPanel
    Width = 438
    Caption = 'Filtro da Agenda Atendimento'
    inherited Image2: TImage
      Width = 436
    end
  end
end
