inherited FrmQualOcorrencia: TFrmQualOcorrencia
  Left = 274
  Top = 247
  VertScrollBar.Range = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Qual Ocorrencia:'
  ClientHeight = 121
  ClientWidth = 684
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelGeral: TPanel
    Top = 40
    Width = 684
    Height = 81
    object DBGridOcorrencia: TDBGrid
      Left = 1
      Top = 1
      Width = 682
      Height = 38
      Cursor = crHandPoint
      Align = alClient
      BorderStyle = bsNone
      Color = clWhite
      DataSource = DsOcorrencia
      DragCursor = crHandPoint
      Options = [dgColumnResize, dgTabs, dgRowSelect, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGridOcorrenciaDblClick
      Columns = <
        item
          Alignment = taCenter
          Color = clBtnFace
          Expanded = False
          FieldName = 'DESCRICAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Lucida Console'
          Font.Style = [fsBold]
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Lucida Console'
          Title.Font.Style = [fsBold]
          Width = 650
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 1
      Top = 39
      Width = 682
      Height = 41
      Align = alBottom
      TabOrder = 1
      object BitBtnConfirma: TBitBtn
        Left = 313
        Top = 9
        Width = 150
        Height = 25
        Caption = 'Conf&irma'
        Default = True
        TabOrder = 0
        OnClick = BitBtnConfirmaClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
      object BitBtnCancela: TBitBtn
        Left = 25
        Top = 9
        Width = 150
        Height = 25
        Caption = 'Ca&ncela'
        ModalResult = 3
        TabOrder = 1
        OnClick = BitBtnCancelaClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
    end
  end
  inherited PanelTitulo: TPanel
    Width = 684
    Height = 40
    inherited Image2: TImage
      Width = 682
      Height = 38
    end
    inherited LabelTitulo: TLabel
      Top = 8
    end
  end
  object DsOcorrencia: TDataSource
    DataSet = CdsOcorrencia
    Left = 248
    Top = 1
  end
  object CdsOcorrencia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspOcorrencia'
    Left = 216
    Top = 1
  end
  object DspOcorrencia: TDataSetProvider
    DataSet = SqlOcorrencia
    Left = 184
    Top = 1
  end
  object SqlOcorrencia: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'IDPROCEDIMENTOS'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT O.*'
      'FROM OCORRENCIA_PROCEDIMENTOS OP'
      'JOIN OCORRENCIA O ON OP.IDOCORRENCIA=O.IDOCORRENCIA'
      'WHERE IDPROCEDIMENTOS = :IDPROCEDIMENTOS')
    SQLConnection = DM.SQLConnect
    Left = 152
    Top = 1
  end
  object SqlQuestionamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM questionamento')
    SQLConnection = DM.SQLConnect
    Left = 392
    Top = 1
  end
  object DspQuestionamento: TDataSetProvider
    DataSet = SqlQuestionamento
    Left = 424
    Top = 1
  end
  object CdsQuestionamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspQuestionamento'
    Left = 456
    Top = 1
  end
  object DsQuestionamento: TDataSource
    DataSet = CdsQuestionamento
    Left = 488
    Top = 1
  end
end
