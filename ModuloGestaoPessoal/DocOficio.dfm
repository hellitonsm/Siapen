inherited frmDocOficio: TfrmDocOficio
  Left = 267
  Top = 96
  Width = 869
  Height = 546
  Caption = 'Cadastro de Oficios'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 457
    inherited ToolBarModeloCadastro: TToolBar
      Height = 439
    end
    inherited DBNavigator1: TDBNavigator
      Top = 439
      Hints.Strings = ()
      OnClick = DBNavigator1Click
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 738
    Height = 457
    inherited PageControlModeloCadastro: TPageControl
      Width = 738
      Height = 457
      ActivePage = TabSheetCadastro
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 730
          Height = 429
          object Label2: TLabel
            Left = 28
            Top = 24
            Width = 42
            Height = 13
            Caption = 'Id oficios'
            FocusControl = edtIdoficios
          end
          object Label3: TLabel
            Left = 116
            Top = 24
            Width = 29
            Height = 13
            Caption = 'Org'#227'o'
          end
          object Label4: TLabel
            Left = 410
            Top = 24
            Width = 53
            Height = 13
            Caption = 'Autorizador'
          end
          object Label5: TLabel
            Left = 268
            Top = 64
            Width = 282
            Height = 13
            Caption = 'Tipo e n'#250'mero de documenta'#231#227'o e movimenta'#231#227'o de preso'
            FocusControl = EdtNumDocMov
          end
          object Label6: TLabel
            Left = 28
            Top = 112
            Width = 94
            Height = 13
            Caption = 'Data do documento'
          end
          object Label7: TLabel
            Left = 210
            Top = 112
            Width = 164
            Height = 13
            Caption = 'Data da entrada do doc na CGICR'
          end
          object Label8: TLabel
            Left = 28
            Top = 160
            Width = 322
            Height = 13
            Caption = 'Tipo e n'#250'mero de documento autorizando a movimenta'#231#227'o do preso'
            FocusControl = edtDocAutorizando
          end
          object Label9: TLabel
            Left = 401
            Top = 112
            Width = 149
            Height = 13
            Caption = 'Data do documento autorizador'
          end
          object Label10: TLabel
            Left = 593
            Top = 112
            Width = 100
            Height = 13
            Caption = 'Dias de permanencia'
            FocusControl = edtDiaspermanencia
          end
          object Label11: TLabel
            Left = 28
            Top = 64
            Width = 152
            Height = 13
            Caption = 'Documento solicitador de vagas'
          end
          object edtIdoficios: TDBEdit
            Left = 28
            Top = 40
            Width = 74
            Height = 21
            DataField = 'ID_DOC_OFICIO'
            DataSource = DsCadastro
            TabOrder = 0
          end
          object EdtNumDocMov: TDBEdit
            Left = 268
            Top = 80
            Width = 426
            Height = 21
            DataField = 'DOC_DESCRICAO'
            DataSource = DsCadastro
            TabOrder = 6
          end
          object edtDocAutorizando: TDBEdit
            Left = 28
            Top = 176
            Width = 397
            Height = 21
            DataField = 'DOC_AUTORIZADOR_DOC_NUMERO'
            DataSource = DsCadastro
            TabOrder = 11
          end
          object edtDiaspermanencia: TDBEdit
            Left = 593
            Top = 128
            Width = 100
            Height = 21
            DataField = 'DOC_DIAS_PERMANENCIA'
            DataSource = DsCadastro
            TabOrder = 10
          end
          object cmdOrgao: TDBLookupComboBox
            Left = 116
            Top = 40
            Width = 237
            Height = 21
            DataField = 'ID_ORGAO'
            DataSource = DsCadastro
            KeyField = 'ID_ORGAO'
            ListField = 'ORGAO_DESC'
            ListSource = DM.dsOrgao
            TabOrder = 1
          end
          object cmdDataDocumento: TadpDBDateTimePicker
            Left = 28
            Top = 128
            Width = 145
            Height = 21
            Date = 41059.664939444450000000
            Time = 41059.664939444450000000
            TabOrder = 7
            DataField = 'DOC_DATA'
            DataSource = DsCadastro
            ReadOnly = False
          end
          object cmdDatachegadaDoc: TadpDBDateTimePicker
            Left = 210
            Top = 128
            Width = 153
            Height = 21
            Date = 41060.665054814820000000
            Time = 41060.665054814820000000
            TabOrder = 8
            DataField = 'DOC_DATA_CGICR'
            DataSource = DsCadastro
            ReadOnly = False
          end
          object cmdIdFuncionario: TDBLookupComboBox
            Left = 410
            Top = 40
            Width = 250
            Height = 21
            Hint = 'Funcionario respons'#225'vel por autorizar as vagas'
            DataField = 'ID_FUNC_AUTORIZADOR'
            DataSource = DsCadastro
            KeyField = 'ID_FUNCIONARIO'
            ListField = 'Funcionario'
            ListSource = DSflagautorizador
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
          end
          object cmdSolicitacaoVaga: TDBLookupComboBox
            Left = 28
            Top = 80
            Width = 229
            Height = 21
            DataField = 'ID_SOLICITACAO_VAGA'
            DataSource = DsCadastro
            KeyField = 'ID_SOLICITACAO_VAGA'
            ListField = 'OFICIO_DESC'
            ListSource = dsSolicitacaoVaga
            TabOrder = 5
            OnClick = cmdSolicitacaoVagaClick
          end
          object cmdDataDocAutorizador: TadpDBDateTimePicker
            Left = 401
            Top = 128
            Width = 145
            Height = 21
            Date = 41062.473274340280000000
            Time = 41062.473274340280000000
            TabOrder = 9
            DataField = 'DOC_AUTORIZADOR_DOC_DATA'
            DataSource = DsCadastro
            ReadOnly = False
          end
          object DBGrid1: TDBGrid
            Left = 28
            Top = 212
            Width = 665
            Height = 209
            DataSource = dsGridInterno
            TabOrder = 13
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = DBGrid1DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'NOME_INTERNO'
                Title.Caption = 'Nome Interno'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STATUS'
                Title.Caption = 'Status'
                Visible = True
              end>
          end
          object DBRvalidacao: TDBRadioGroup
            Left = 448
            Top = 160
            Width = 81
            Height = 49
            Caption = 'Validacao?'
            Items.Strings = (
              'Sim'
              'Nao')
            TabOrder = 12
            Values.Strings = (
              'S'
              'N')
          end
          object Button1: TButton
            Left = 358
            Top = 40
            Width = 25
            Height = 19
            Caption = '...'
            TabOrder = 2
            OnClick = Button1Click
          end
          object Button2: TButton
            Left = 666
            Top = 40
            Width = 25
            Height = 19
            Caption = '...'
            TabOrder = 4
            OnClick = Button2Click
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 730
        end
        inherited PanelConsulta: TPanel
          Width = 730
          Height = 395
          inherited DBGridConsulta: TDBGrid
            Width = 728
            Height = 393
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_DOC_OFICIO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RESPONSAVEL'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_ORGAO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_FUNC_AUTORIZADOR'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DOC_DESCRICAO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DOC_DATA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DOC_DATA_CGICR'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DOC_AUTORIZADOR_DOC_NUMERO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DOC_AUTORIZADOR_DOC_DATA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DOC_DIAS_PERMANENCIA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_ORGAO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_FUNC_AUTORIZADOR'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_DOC_OFICIO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DOC_DESCRICAO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DOC_DATA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DOC_DATA_CGICR'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DOC_AUTORIZADOR_DOC_NUMERO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DOC_AUTORIZADOR_DOC_DATA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DOC_DIAS_PERMANENCIA'
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 853
    inherited Image2: TImage
      Width = 853
    end
    inherited LabelTitulo: TLabel
      Width = 165
      Caption = 'Cadastro de Oficios'
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 489
    Width = 853
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM doc_oficio')
    Left = 456
    Top = 40
    object SqlCadastroID_DOC_OFICIO: TIntegerField
      FieldName = 'ID_DOC_OFICIO'
      Required = True
    end
    object SqlCadastroID_ORGAO: TIntegerField
      FieldName = 'ID_ORGAO'
      Required = True
    end
    object SqlCadastroID_FUNC_AUTORIZADOR: TIntegerField
      FieldName = 'ID_FUNC_AUTORIZADOR'
      Required = True
    end
    object SqlCadastroDOC_DESCRICAO: TStringField
      FieldName = 'DOC_DESCRICAO'
      Size = 100
    end
    object SqlCadastroDOC_DATA: TSQLTimeStampField
      FieldName = 'DOC_DATA'
    end
    object SqlCadastroDOC_DATA_CGICR: TSQLTimeStampField
      FieldName = 'DOC_DATA_CGICR'
    end
    object SqlCadastroDOC_AUTORIZADOR_DOC_NUMERO: TStringField
      FieldName = 'DOC_AUTORIZADOR_DOC_NUMERO'
      Size = 100
    end
    object SqlCadastroDOC_AUTORIZADOR_DOC_DATA: TSQLTimeStampField
      FieldName = 'DOC_AUTORIZADOR_DOC_DATA'
    end
    object SqlCadastroDOC_DIAS_PERMANENCIA: TIntegerField
      FieldName = 'DOC_DIAS_PERMANENCIA'
    end
    object SqlCadastroID_SOLICITACAO_VAGA: TIntegerField
      FieldName = 'ID_SOLICITACAO_VAGA'
      Required = True
    end
  end
  inherited DspCadastro: TDataSetProvider
    Left = 484
    Top = 40
  end
  inherited CdsCadastro: TClientDataSet
    Left = 512
    Top = 40
    object CdsCadastroID_DOC_OFICIO: TIntegerField
      FieldName = 'ID_DOC_OFICIO'
      Required = True
    end
    object CdsCadastroID_ORGAO: TIntegerField
      FieldName = 'ID_ORGAO'
      Required = True
    end
    object CdsCadastroID_FUNC_AUTORIZADOR: TIntegerField
      FieldName = 'ID_FUNC_AUTORIZADOR'
      Required = True
    end
    object CdsCadastroDOC_DESCRICAO: TStringField
      FieldName = 'DOC_DESCRICAO'
      Size = 100
    end
    object CdsCadastroDOC_DATA: TSQLTimeStampField
      FieldName = 'DOC_DATA'
    end
    object CdsCadastroDOC_DATA_CGICR: TSQLTimeStampField
      FieldName = 'DOC_DATA_CGICR'
    end
    object CdsCadastroDOC_AUTORIZADOR_DOC_NUMERO: TStringField
      FieldName = 'DOC_AUTORIZADOR_DOC_NUMERO'
      Size = 100
    end
    object CdsCadastroDOC_AUTORIZADOR_DOC_DATA: TSQLTimeStampField
      FieldName = 'DOC_AUTORIZADOR_DOC_DATA'
    end
    object CdsCadastroDOC_DIAS_PERMANENCIA: TIntegerField
      FieldName = 'DOC_DIAS_PERMANENCIA'
    end
    object CdsCadastroID_SOLICITACAO_VAGA: TIntegerField
      FieldName = 'ID_SOLICITACAO_VAGA'
      Required = True
    end
    object CdsCadastroRESPONSAVEL: TStringField
      FieldKind = fkLookup
      FieldName = 'RESPONSAVEL'
      LookupDataSet = DM.CdsFuncionarioLista
      LookupKeyFields = 'ID_FUNCIONARIO'
      LookupResultField = 'NOME_FUNCIONARIO'
      KeyFields = 'ID_FUNC_AUTORIZADOR'
      Lookup = True
    end
  end
  inherited DsCadastro: TDataSource
    Left = 540
    Top = 40
  end
  object SQLflagautorizador: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * '
      'FROM funcionario_autorizador'
      'where descricao_autorizador = '#39'AUTORIZADOR'#39)
    SQLConnection = DM.SQLConnect
    Left = 628
    Top = 36
  end
  object DSPflagautorizador: TDataSetProvider
    DataSet = SQLflagautorizador
    Left = 656
    Top = 36
  end
  object CDSflagautorizador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPflagautorizador'
    Left = 684
    Top = 36
    object CDSflagautorizadorFuncionario: TStringField
      FieldKind = fkLookup
      FieldName = 'Funcionario'
      LookupDataSet = DM.CdsFuncionarioLista
      LookupKeyFields = 'ID_FUNCIONARIO'
      LookupResultField = 'NOME_FUNCIONARIO'
      KeyFields = 'ID_FUNCIONARIO'
      Size = 100
      Lookup = True
    end
    object CDSflagautorizadorID_FUNCIONARIO_AUTORIZADOR: TIntegerField
      FieldName = 'ID_FUNCIONARIO_AUTORIZADOR'
      Required = True
    end
    object CDSflagautorizadorID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      Required = True
    end
    object CDSflagautorizadorDESCRICAO_AUTORIZADOR: TStringField
      FieldName = 'DESCRICAO_AUTORIZADOR'
      Size = 50
    end
  end
  object DSflagautorizador: TDataSource
    DataSet = CDSflagautorizador
    OnDataChange = DsCadastroDataChange
    Left = 712
    Top = 36
  end
  object SQLGridInterno: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_solicitacao_vaga'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'select * from INTERNO_VAGA i'
      'where id_solicitacao_vaga = :id_solicitacao_vaga')
    SQLConnection = DM.SQLConnect
    Left = 251
    Top = 300
  end
  object DSPGridInterno: TDataSetProvider
    DataSet = SQLGridInterno
    Left = 299
    Top = 300
  end
  object cdsGridInterno: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_SOLICITACAO_VAGA'
    MasterFields = 'ID_SOLICITACAO_VAGA'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPGridInterno'
    OnCalcFields = cdsGridInternoCalcFields
    Left = 327
    Top = 300
    object cdsGridInternoID_INTERNO_VAGA: TIntegerField
      FieldName = 'ID_INTERNO_VAGA'
      Required = True
    end
    object cdsGridInternoID_INTERNO_INCLUSAO: TIntegerField
      FieldName = 'ID_INTERNO_INCLUSAO'
      Required = True
    end
    object cdsGridInternoID_SOLICITACAO_VAGA: TIntegerField
      FieldName = 'ID_SOLICITACAO_VAGA'
      Required = True
    end
    object cdsGridInternoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsGridInternoNOME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'NOME'
    end
  end
  object dsGridInterno: TDataSource
    DataSet = cdsGridInterno
    Left = 355
    Top = 300
  end
  object DSinterno: TDataSource
    DataSet = CDSinterno
    Left = 647
    Top = 280
  end
  object CDSinterno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPinterno'
    Left = 591
    Top = 284
  end
  object DSPinterno: TDataSetProvider
    DataSet = SQLinterno
    Left = 543
    Top = 284
  end
  object SQLinterno: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select id_interno, nome_interno from interno'
      'where id_interno=-1')
    SQLConnection = DM.SQLConnect
    Left = 491
    Top = 284
  end
  object SQLinternoinclusao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from interno_inclusao')
    SQLConnection = DM.SQLConnect
    Left = 211
    Top = 384
  end
  object dspinternoinclusao: TDataSetProvider
    DataSet = SQLinternoinclusao
    Left = 255
    Top = 380
  end
  object dsinternoinclusao: TDataSource
    DataSet = cdsinternoinclusao
    Left = 347
    Top = 380
  end
  object cdsinternoinclusao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspinternoinclusao'
    Left = 303
    Top = 380
  end
  object DSoficiointerno: TDataSource
    DataSet = CDSoficiointerno
    Left = 643
    Top = 336
  end
  object CDSoficiointerno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPoficiointerno'
    Left = 591
    Top = 332
  end
  object DSPoficiointerno: TDataSetProvider
    DataSet = SQloficiointerno
    Left = 539
    Top = 336
  end
  object SQloficiointerno: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from oficio_interno')
    SQLConnection = DM.SQLConnect
    Left = 491
    Top = 332
  end
  object SQLSolicitacaoVaga: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from solicitacao_vaga')
    SQLConnection = DM.SQLConnect
    Left = 208
    Top = 36
    object SQLSolicitacaoVagaID_SOLICITACAO_VAGA: TIntegerField
      FieldName = 'ID_SOLICITACAO_VAGA'
      Required = True
    end
    object SQLSolicitacaoVagaID_ORGAO: TIntegerField
      FieldName = 'ID_ORGAO'
      Required = True
    end
    object SQLSolicitacaoVagaID_UP: TIntegerField
      FieldName = 'ID_UP'
      Required = True
    end
    object SQLSolicitacaoVagaQTD_VAGAS_SOLICITADAS: TIntegerField
      FieldName = 'QTD_VAGAS_SOLICITADAS'
    end
    object SQLSolicitacaoVagaQTD_VAGAS_AUTORIZADAS: TIntegerField
      FieldName = 'QTD_VAGAS_AUTORIZADAS'
    end
    object SQLSolicitacaoVagaQTD_VAGAS_UTILIZADAS: TIntegerField
      FieldName = 'QTD_VAGAS_UTILIZADAS'
    end
    object SQLSolicitacaoVagaDATA_AUTORIZA_VAGAS: TSQLTimeStampField
      FieldName = 'DATA_AUTORIZA_VAGAS'
    end
    object SQLSolicitacaoVagaOFICIO_DESC: TStringField
      FieldName = 'OFICIO_DESC'
      Size = 100
    end
    object SQLSolicitacaoVagaQTD_VAGAS_SEM_EFEITO: TIntegerField
      FieldName = 'QTD_VAGAS_SEM_EFEITO'
    end
  end
  object dspSolicitacaoVaga: TDataSetProvider
    DataSet = SQLSolicitacaoVaga
    Left = 264
    Top = 36
  end
  object cdsSolicitacaoVaga: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSolicitacaoVaga'
    Left = 308
    Top = 36
    object cdsSolicitacaoVagaID_SOLICITACAO_VAGA: TIntegerField
      FieldName = 'ID_SOLICITACAO_VAGA'
      Required = True
    end
    object cdsSolicitacaoVagaID_ORGAO: TIntegerField
      FieldName = 'ID_ORGAO'
      Required = True
    end
    object cdsSolicitacaoVagaID_UP: TIntegerField
      FieldName = 'ID_UP'
      Required = True
    end
    object cdsSolicitacaoVagaQTD_VAGAS_SOLICITADAS: TIntegerField
      FieldName = 'QTD_VAGAS_SOLICITADAS'
    end
    object cdsSolicitacaoVagaQTD_VAGAS_AUTORIZADAS: TIntegerField
      FieldName = 'QTD_VAGAS_AUTORIZADAS'
    end
    object cdsSolicitacaoVagaQTD_VAGAS_UTILIZADAS: TIntegerField
      FieldName = 'QTD_VAGAS_UTILIZADAS'
    end
    object cdsSolicitacaoVagaDATA_AUTORIZA_VAGAS: TSQLTimeStampField
      FieldName = 'DATA_AUTORIZA_VAGAS'
    end
    object cdsSolicitacaoVagaOFICIO_DESC: TStringField
      FieldName = 'OFICIO_DESC'
      Size = 100
    end
    object cdsSolicitacaoVagaQTD_VAGAS_SEM_EFEITO: TIntegerField
      FieldName = 'QTD_VAGAS_SEM_EFEITO'
    end
  end
  object dsSolicitacaoVaga: TDataSource
    DataSet = cdsSolicitacaoVaga
    Left = 360
    Top = 36
  end
end
