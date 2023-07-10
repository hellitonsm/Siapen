inherited FrmVisitanteInterno: TFrmVisitanteInterno
  Width = 693
  Height = 242
  Caption = 'Associar Interno ao Visitante'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelGeral: TPanel
    Width = 677
    Height = 163
    object Label33: TLabel
      Left = 200
      Top = 10
      Width = 45
      Height = 13
      Caption = 'Interno(a)'
    end
    object Label1: TLabel
      Left = 202
      Top = 56
      Width = 54
      Height = 13
      Caption = 'Parentesco'
    end
    object SpeedButton1: TSpeedButton
      Left = 584
      Top = 72
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object Label9: TLabel
      Left = 72
      Top = 8
      Width = 48
      Height = 13
      Caption = 'Prontu'#225'rio'
    end
    object DBLookupComboBoxInterno: TDBLookupComboBox
      Left = 200
      Top = 27
      Width = 353
      Height = 21
      KeyField = 'ID_INTERNO'
      ListField = 'NOME_INTERNO'
      ListSource = DsInterno
      TabOrder = 0
      OnClick = DBLookupComboBoxInternoClick
    end
    object BitBtnConfirma: TBitBtn
      Left = 136
      Top = 112
      Width = 150
      Height = 25
      Caption = 'Conf&irma'
      Enabled = False
      TabOrder = 2
      Kind = bkOK
    end
    object BitBtnCancela: TBitBtn
      Left = 336
      Top = 112
      Width = 150
      Height = 25
      Caption = 'Ca&ncela'
      TabOrder = 3
      Kind = bkAbort
    end
    object DBLookupComboBoxParentesco: TDBLookupComboBox
      Left = 200
      Top = 73
      Width = 384
      Height = 21
      KeyField = 'ID_GRAU_PARENTESCO'
      ListField = 'GRAU_PARENTESCO'
      ListSource = DM.DSGrauParentesco
      TabOrder = 1
      OnClick = DBLookupComboBoxParentescoClick
    end
    object Button1: TButton
      Left = 560
      Top = 26
      Width = 45
      Height = 25
      Caption = 'Busca'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Editprontuario: TEdit
      Left = 72
      Top = 27
      Width = 120
      Height = 21
      TabOrder = 5
      OnExit = EditprontuarioExit
    end
  end
  inherited PanelTitulo: TPanel
    Width = 677
    inherited Image2: TImage
      Width = 675
    end
  end
  object SqlInterno: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_UP'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'SELECT id_interno, nome_interno, rgi'
      'FROM INTERNO'
      'WHERE ID_UP = :ID_UP'
      'and coalesce(nome_interno,'#39#39')<>'#39#39
      'AND ST = '#39'A'#39
      'ORDER BY NOME_INTERNO')
    Left = 56
    Top = 96
  end
  object DspInterno: TDataSetProvider
    DataSet = SqlInterno
    Left = 84
    Top = 96
  end
  object CdsInterno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspInterno'
    Left = 112
    Top = 96
  end
  object DsInterno: TDataSource
    DataSet = CdsInterno
    Left = 140
    Top = 96
  end
end
