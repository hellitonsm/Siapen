inherited FrmNovaEscala: TFrmNovaEscala
  Caption = 'Nova Escala'
  ClientHeight = 208
  ClientWidth = 412
  OnShow = FormShow
  ExplicitWidth = 428
  ExplicitHeight = 247
  TextHeight = 13
  inherited PanelGeral: TPanel
    Width = 412
    Height = 167
    ExplicitWidth = 412
    ExplicitHeight = 167
    object Label3: TLabel
      Left = 25
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Equipe'
    end
    object SpeedButton1: TSpeedButton
      Left = 376
      Top = 24
      Width = 23
      Height = 20
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object Label1: TLabel
      Left = 24
      Top = 56
      Width = 66
      Height = 13
      Caption = 'Dia da Escala'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 25
      Top = 24
      Width = 345
      Height = 21
      KeyField = 'IDEQUIPE'
      ListField = 'EQUIPE'
      ListSource = DM.DsEquipe
      TabOrder = 0
    end
    object DateTimePickerEscala: TDateTimePicker
      Left = 96
      Top = 52
      Width = 89
      Height = 21
      Date = 40934.000000000000000000
      Time = 0.485215416672872400
      TabOrder = 1
    end
    object Button1: TButton
      Left = 144
      Top = 80
      Width = 105
      Height = 25
      Caption = 'Gerar Escala'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  inherited PanelTitulo: TPanel
    Width = 412
    Caption = 'Nova Escala'
    ExplicitWidth = 412
    inherited Image2: TImage
      Width = 410
    end
  end
  object SqlExecuteold: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnect
    Left = 32
    Top = 129
  end
  object SqlExecute: TFDQuery
    Connection = DM.SQLConnect
    Left = 112
    Top = 129
  end
end
