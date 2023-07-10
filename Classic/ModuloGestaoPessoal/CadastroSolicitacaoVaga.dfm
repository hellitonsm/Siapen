inherited frmSolicitacaoVaga: TfrmSolicitacaoVaga
  Left = 343
  Top = 128
  Width = 674
  Height = 549
  Caption = 'Solicita'#231#227'o de Vaga'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 460
    inherited ToolBarModeloCadastro: TToolBar
      Height = 442
    end
    inherited DBNavigator1: TDBNavigator
      Top = 442
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 543
    Height = 460
    inherited PageControlModeloCadastro: TPageControl
      Width = 543
      Height = 460
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 535
          Height = 432
          object Label2: TLabel
            Left = 8
            Top = 12
            Width = 119
            Height = 13
            Caption = 'Id da solicita'#231#227'o da vaga'
            FocusControl = EdtIdSolicitacaoVaga
          end
          object Label4: TLabel
            Left = 160
            Top = 12
            Width = 29
            Height = 13
            Caption = 'Org'#227'o'
          end
          object Label5: TLabel
            Left = 8
            Top = 104
            Width = 61
            Height = 13
            Caption = 'Penitenciaria'
            ParentShowHint = False
            ShowHint = True
          end
          object Label9: TLabel
            Left = 371
            Top = 56
            Width = 144
            Height = 13
            Caption = 'Data do documento solicitante'
          end
          object Label10: TLabel
            Left = 8
            Top = 56
            Width = 110
            Height = 13
            Caption = 'N'#250'mero do Documento'
            FocusControl = EdtNumDocumento
          end
          object Label3: TLabel
            Left = 8
            Top = 145
            Width = 89
            Height = 13
            Caption = 'Selecionar Interno:'
          end
          object SpeedButton1: TSpeedButton
            Left = 392
            Top = 163
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton1Click
          end
          object EdtIdSolicitacaoVaga: TDBEdit
            Left = 8
            Top = 28
            Width = 134
            Height = 21
            DataField = 'ID_SOLICITACAO_VAGA'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object EdtNumDocumento: TDBEdit
            Left = 8
            Top = 72
            Width = 353
            Height = 21
            DataField = 'OFICIO_DESC'
            DataSource = DsCadastro
            TabOrder = 3
          end
          object cmdOrgao: TDBLookupComboBox
            Left = 160
            Top = 28
            Width = 313
            Height = 21
            Hint = 'Lista de org'#227'os cadastrados'
            DataField = 'ID_ORGAO'
            DataSource = DsCadastro
            KeyField = 'ID_ORGAO'
            ListField = 'ORGAO_DESC'
            ListSource = DM.dsOrgao
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
          object cmdPenitenciario: TDBLookupComboBox
            Left = 8
            Top = 120
            Width = 509
            Height = 21
            DataField = 'ID_UP'
            DataSource = DsCadastro
            KeyField = 'ID_UP'
            ListField = 'NOME_UP'
            ListSource = DM.DsUP
            TabOrder = 5
          end
          object cmdDataDocSolicitante: TadpDBDateTimePicker
            Left = 371
            Top = 72
            Width = 144
            Height = 21
            Date = 41059.713744722220000000
            Time = 41059.713744722220000000
            TabOrder = 4
            DataField = 'DATA_AUTORIZA_VAGAS'
            DataSource = DsCadastro
            ReadOnly = False
          end
          object GroupBox1: TGroupBox
            Left = 8
            Top = 356
            Width = 508
            Height = 69
            Caption = 'Quantidade de vagas'
            Enabled = False
            TabOrder = 9
            object Label6: TLabel
              Left = 6
              Top = 20
              Width = 51
              Height = 13
              Caption = 'Solicitadas'
            end
            object Label8: TLabel
              Left = 196
              Top = 24
              Width = 45
              Height = 13
              Caption = 'Utilizadas'
              FocusControl = edtQtdVagasUtilizadas
            end
            object Label11: TLabel
              Left = 288
              Top = 24
              Width = 50
              Height = 13
              Caption = 'Sem efeito'
              FocusControl = edtQtdSemEfeito
            end
            object Label7: TLabel
              Left = 96
              Top = 24
              Width = 55
              Height = 13
              Caption = 'Autorizadas'
              FocusControl = edtQtdVagasAutorizadas
            end
            object edtQtdVagasUtilizadas: TDBEdit
              Left = 196
              Top = 36
              Width = 33
              Height = 21
              DataField = 'QTD_VAGAS_UTILIZADAS'
              DataSource = DsCadastro
              TabOrder = 2
            end
            object edtQtdSemEfeito: TDBEdit
              Left = 287
              Top = 36
              Width = 30
              Height = 21
              DataField = 'QTD_VAGAS_SEM_EFEITO'
              DataSource = DsCadastro
              TabOrder = 3
            end
            object edtQtdVagasAutorizadas: TDBEdit
              Left = 96
              Top = 36
              Width = 33
              Height = 21
              DataField = 'QTD_VAGAS_AUTORIZADAS'
              DataSource = DsCadastro
              TabOrder = 1
            end
            object edtQtdVagasSolicitadas: TDBEdit
              Left = 8
              Top = 36
              Width = 33
              Height = 21
              DataField = 'QTD_VAGAS_SOLICITADAS'
              DataSource = DsCadastro
              TabOrder = 0
            end
          end
          object Button1: TButton
            Left = 424
            Top = 163
            Width = 60
            Height = 25
            Caption = 'Incluir '
            TabOrder = 7
            OnClick = Button1Click
          end
          object cmdPesquisaInterno: TDBLookupComboBox
            Left = 8
            Top = 163
            Width = 385
            Height = 21
            KeyField = 'ID_INTERNO_INCLUSAO'
            ListField = 'NOME_INTERNO'
            ListSource = dsPesquisa
            TabOrder = 6
          end
          object DBGrid1: TDBGrid
            Left = 8
            Top = 196
            Width = 502
            Height = 157
            DataSource = dsGrid
            TabOrder = 8
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'NOME'
                Title.Caption = 'Nome do Interno'
                Width = 400
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATUS'
                Title.Caption = 'Status'
                Visible = True
              end>
          end
          object Button2: TButton
            Left = 485
            Top = 28
            Width = 28
            Height = 19
            Caption = '...'
            TabOrder = 2
            OnClick = Button2Click
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 535
        end
        inherited PanelConsulta: TPanel
          Width = 535
          Height = 477
          inherited DBGridConsulta: TDBGrid
            Width = 533
            Height = 475
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 658
    inherited Image2: TImage
      Width = 658
    end
    inherited LabelTitulo: TLabel
      Width = 160
      Caption = 'Solicita'#231#227'o de vaga'
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 492
    Width = 658
  end
  inherited ImageListCadastro: TImageList
    Left = 644
    Top = 16
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM solicitacao_vaga')
    Left = 476
    Top = 52
    object SqlCadastroID_SOLICITACAO_VAGA: TIntegerField
      FieldName = 'ID_SOLICITACAO_VAGA'
      Required = True
    end
    object SqlCadastroID_ORGAO: TIntegerField
      FieldName = 'ID_ORGAO'
      Required = True
    end
    object SqlCadastroID_UP: TIntegerField
      FieldName = 'ID_UP'
      Required = True
    end
    object SqlCadastroQTD_VAGAS_SOLICITADAS: TIntegerField
      FieldName = 'QTD_VAGAS_SOLICITADAS'
    end
    object SqlCadastroQTD_VAGAS_AUTORIZADAS: TIntegerField
      FieldName = 'QTD_VAGAS_AUTORIZADAS'
    end
    object SqlCadastroQTD_VAGAS_UTILIZADAS: TIntegerField
      FieldName = 'QTD_VAGAS_UTILIZADAS'
    end
    object SqlCadastroDATA_AUTORIZA_VAGAS: TSQLTimeStampField
      FieldName = 'DATA_AUTORIZA_VAGAS'
    end
    object SqlCadastroOFICIO_DESC: TStringField
      FieldName = 'OFICIO_DESC'
      Size = 100
    end
    object SqlCadastroQTD_VAGAS_SEM_EFEITO: TIntegerField
      FieldName = 'QTD_VAGAS_SEM_EFEITO'
    end
  end
  inherited DspCadastro: TDataSetProvider
    Left = 504
    Top = 52
  end
  inherited CdsCadastro: TClientDataSet
    Left = 532
    Top = 52
    object CdsCadastroID_SOLICITACAO_VAGA: TIntegerField
      FieldName = 'ID_SOLICITACAO_VAGA'
      Required = True
    end
    object CdsCadastroID_ORGAO: TIntegerField
      FieldName = 'ID_ORGAO'
      Required = True
    end
    object CdsCadastroID_UP: TIntegerField
      FieldName = 'ID_UP'
      Required = True
    end
    object CdsCadastroQTD_VAGAS_SOLICITADAS: TIntegerField
      FieldName = 'QTD_VAGAS_SOLICITADAS'
    end
    object CdsCadastroQTD_VAGAS_AUTORIZADAS: TIntegerField
      FieldName = 'QTD_VAGAS_AUTORIZADAS'
    end
    object CdsCadastroQTD_VAGAS_UTILIZADAS: TIntegerField
      FieldName = 'QTD_VAGAS_UTILIZADAS'
    end
    object CdsCadastroDATA_AUTORIZA_VAGAS: TSQLTimeStampField
      FieldName = 'DATA_AUTORIZA_VAGAS'
    end
    object CdsCadastroOFICIO_DESC: TStringField
      FieldName = 'OFICIO_DESC'
      Size = 100
    end
    object CdsCadastroQTD_VAGAS_SEM_EFEITO: TIntegerField
      FieldName = 'QTD_VAGAS_SEM_EFEITO'
    end
  end
  inherited DsCadastro: TDataSource
    Left = 560
    Top = 52
  end
  object SQLPesquisa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from interno_inclusao')
    SQLConnection = DM.SQLConnect
    Left = 339
    Top = 304
  end
  object DspPesquisa: TDataSetProvider
    DataSet = SQLPesquisa
    Left = 387
    Top = 304
  end
  object cdsPesquisa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPesquisa'
    Left = 435
    Top = 304
  end
  object dsPesquisa: TDataSource
    DataSet = cdsPesquisa
    Left = 483
    Top = 304
  end
  object SQLGrid: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_solicitacao_vaga'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'select * from interno_vaga'
      'where id_solicitacao_vaga = :id_solicitacao_vaga ')
    SQLConnection = DM.SQLConnect
    Left = 269
    Top = 472
  end
  object dspGrid: TDataSetProvider
    DataSet = SQLGrid
    Left = 297
    Top = 472
  end
  object cdsGrid: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_SOLICITACAO_VAGA'
    MasterFields = 'ID_SOLICITACAO_VAGA'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspGrid'
    OnCalcFields = cdsGridCalcFields
    Left = 325
    Top = 472
    object cdsGridID_INTERNO_VAGA: TIntegerField
      FieldName = 'ID_INTERNO_VAGA'
      Required = True
    end
    object cdsGridID_INTERNO_INCLUSAO: TIntegerField
      FieldName = 'ID_INTERNO_INCLUSAO'
      Required = True
    end
    object cdsGridID_SOLICITACAO_VAGA: TIntegerField
      FieldName = 'ID_SOLICITACAO_VAGA'
      Required = True
    end
    object cdsGridSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsGridNOME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'NOME'
    end
  end
  object dsGrid: TDataSource
    DataSet = cdsGrid
    OnDataChange = DsCadastroDataChange
    Left = 353
    Top = 472
  end
end
