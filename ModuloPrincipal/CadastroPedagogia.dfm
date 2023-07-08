inherited FrmCadastroPedagogia: TFrmCadastroPedagogia
  Left = 338
  Top = 102
  Width = 918
  Height = 626
  Caption = 'Cadastro Pedagogia'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 510
    inherited ToolBarModeloCadastro: TToolBar
      Height = 492
    end
    inherited DBNavigator1: TDBNavigator
      Top = 492
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 787
    Height = 510
    inherited PageControlModeloCadastro: TPageControl
      Width = 787
      Height = 510
      ActivePage = TabSheetCadastro
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 779
          Height = 482
          inherited PageControlPrincipal: TPageControl
            Width = 777
            Height = 480
            inherited TabSheetDadosGerais: TTabSheet
              inherited Label23: TLabel
                Enabled = True
              end
              inherited Label13: TLabel
                Enabled = True
              end
              inherited DBLookupComboBoxIDESCOLARIDADE: TDBLookupComboBox
                Enabled = True
              end
              inherited DBLookupComboBoxIDPROFISSAO: TDBLookupComboBox
                Enabled = True
              end
            end
            object TabSheet1: TTabSheet
              Caption = 'Pedagogia'
              ImageIndex = 2
              object Label53: TLabel
                Left = 7
                Top = 16
                Width = 62
                Height = 13
                Caption = 'Data do Fato'
              end
              object DateTimePickerHistorico: TDateTimePicker
                Left = 7
                Top = 33
                Width = 91
                Height = 21
                Date = 0.302563541663403200
                Time = 0.302563541663403200
                TabOrder = 0
              end
              object MemoDescricao: TMemo
                Left = 108
                Top = 33
                Width = 565
                Height = 97
                TabOrder = 1
              end
              object Button1: TButton
                Left = 6
                Top = 106
                Width = 98
                Height = 25
                Caption = 'Incluir'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                OnClick = Button1Click
              end
              object DBGrid1: TDBGrid
                Left = 8
                Top = 165
                Width = 673
                Height = 129
                DataSource = DSpedagogia
                TabOrder = 3
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'DATA'
                    Width = 77
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DESCRICAO'
                    Width = 412
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Funcion'#225'rio(a)'
                    Width = 176
                    Visible = True
                  end>
              end
              object DBMemo1: TDBMemo
                Left = 8
                Top = 307
                Width = 673
                Height = 121
                DataField = 'DESCRICAO'
                DataSource = DSpedagogia
                TabOrder = 4
              end
            end
            object TabSheet2: TTabSheet
              Caption = 'Livro/Revista'
              ImageIndex = 3
              object Label8: TLabel
                Left = 16
                Top = 16
                Width = 129
                Height = 13
                Caption = 'Data da Entrega ao Interno'
              end
              object Label14: TLabel
                Left = 184
                Top = 16
                Width = 64
                Height = 13
                Caption = 'Livro/Revista'
              end
              object Label15: TLabel
                Left = 13
                Top = 68
                Width = 58
                Height = 13
                Caption = 'Observa'#231#227'o'
              end
              object SpeedButton3: TSpeedButton
                Left = 671
                Top = 30
                Width = 23
                Height = 22
                Hint = 'Cadastrar Rem'#233'dio'
                Caption = '...'
                Flat = True
                ParentShowHint = False
                ShowHint = True
              end
              object btnLivro: TSpeedButton
                Left = 694
                Top = 29
                Width = 23
                Height = 22
                Hint = 'Cadastrar Novo Livro'
                Caption = '...'
                Flat = True
                ParentShowHint = False
                ShowHint = True
                OnClick = btnLivroClick
              end
              object Label16: TLabel
                Left = 112
                Top = 188
                Width = 485
                Height = 24
                Caption = 'Efetuar duplo click no livro para que seja feita a devolucao'
                Color = clMenu
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -19
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object Label17: TLabel
                Left = 13
                Top = 347
                Width = 177
                Height = 13
                Caption = 'Observa'#231#227'o do Registro Selecionado'
              end
              object dtpDataEntrega: TDateTimePicker
                Left = 15
                Top = 33
                Width = 154
                Height = 21
                Date = 0.302563541663403200
                Time = 0.302563541663403200
                TabOrder = 0
              end
              object Memolivro: TMemo
                Left = 13
                Top = 84
                Width = 705
                Height = 65
                TabOrder = 1
              end
              object dbgridIncluir: TDBGrid
                Left = 13
                Top = 212
                Width = 705
                Height = 129
                DataSource = DSlivrointerno
                TabOrder = 3
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                OnDblClick = dbgridIncluirDblClick
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'Livro'
                    ReadOnly = True
                    Width = 385
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DATA_ENTREGA'
                    ReadOnly = True
                    Title.Caption = 'Data da Entrega ao Interno'
                    Width = 139
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DATA'
                    Title.Caption = 'Data de Devolu'#231#227'o do Livro'
                    Width = 141
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'OBS'
                    Title.Caption = 'Observa'#231#227'o'
                    Width = 240
                    Visible = True
                  end>
              end
              object DBMemo2: TDBMemo
                Left = 13
                Top = 364
                Width = 705
                Height = 80
                DataField = 'OBS'
                DataSource = DSlivrointerno
                TabOrder = 4
              end
              object BtnIncluir: TButton
                Left = 280
                Top = 156
                Width = 81
                Height = 25
                Caption = 'Incluir'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                OnClick = BtnIncluirClick
              end
              object cmbLivro: TDBLookupComboBox
                Left = 184
                Top = 32
                Width = 509
                Height = 21
                KeyField = 'ID_LIVRO'
                ListField = 'LIVRO'
                ListSource = dsLivro
                TabOrder = 5
                OnClick = cmbLivroClick
                OnDropDown = cmbLivroDropDown
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 779
          inherited EditLocalizar: TEdit
            TabOrder = 1
          end
          inherited RadioGroupStatus: TRadioGroup
            Left = 650
            TabOrder = 3
          end
          inherited chkSoundex: TCheckBox
            TabOrder = 2
          end
        end
        inherited PanelConsulta: TPanel
          Width = 779
          Height = 440
          inherited DBGridConsulta: TDBGrid
            Width = 777
            Height = 438
          end
          inherited DBCtrlGridConsulta: TDBCtrlGrid
            Width = 777
            Height = 438
            PanelHeight = 87
            PanelWidth = 760
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 902
    inherited Image2: TImage
      Width = 902
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 542
    Width = 902
  end
  inherited SqlCadastro: TSQLQuery
    Left = 636
    Top = 192
  end
  inherited DspCadastro: TDataSetProvider
    Left = 664
    Top = 192
  end
  inherited CdsCadastro: TClientDataSet
    Left = 692
    Top = 192
  end
  inherited DsCadastro: TDataSource
    Left = 720
    Top = 192
  end
  inherited MainMenu1: TMainMenu
    Left = 203
  end
  object SQLPedagogia: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_INTERNO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM historico_pedagogia'
      'WHERE ID_INTERNO = :ID_INTERNO'
      'order by data desc')
    SQLConnection = DM.SQLConnect
    Left = 648
    Top = 8
  end
  object DSPpedagogia: TDataSetProvider
    DataSet = SQLPedagogia
    Left = 676
    Top = 8
  end
  object CDSpedagogia: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPpedagogia'
    Left = 704
    Top = 8
    object CDSpedagogiaID_HISTORICO_PEDAGOGIA: TIntegerField
      FieldName = 'ID_HISTORICO_PEDAGOGIA'
      Required = True
    end
    object CDSpedagogiaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 8192
    end
    object CDSpedagogiaDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object CDSpedagogiaID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object CDSpedagogiaID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object CDSpedagogiaFuncionrioa: TStringField
      FieldKind = fkLookup
      FieldName = 'Funcion'#225'rio(a)'
      LookupDataSet = DM.CdsFuncionarioLista
      LookupKeyFields = 'ID_FUNCIONARIO'
      LookupResultField = 'NOME_FUNCIONARIO'
      KeyFields = 'ID_FUNCIONARIO'
      Size = 50
      Lookup = True
    end
  end
  object DSpedagogia: TDataSource
    DataSet = CDSpedagogia
    OnDataChange = DsCadastroDataChange
    Left = 732
    Top = 8
  end
  object SQLlivrointerno: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM livro_interno'
      'where id_interno = :id_interno'
      'order by data')
    SQLConnection = DM.SQLConnect
    Left = 408
    Top = 8
    object SQLlivrointernoID_LIVRO_INTERNO: TIntegerField
      FieldName = 'ID_LIVRO_INTERNO'
      Required = True
    end
    object SQLlivrointernoID_LIVRO: TIntegerField
      FieldName = 'ID_LIVRO'
    end
    object SQLlivrointernoID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object SQLlivrointernoDATA_ENTREGA: TSQLTimeStampField
      FieldName = 'DATA_ENTREGA'
    end
    object SQLlivrointernoDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object SQLlivrointernoOBS: TStringField
      FieldName = 'OBS'
      Size = 8192
    end
  end
  object DSPlivrointerno: TDataSetProvider
    DataSet = SQLlivrointerno
    Left = 436
    Top = 8
  end
  object CDSLIvrointerno: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPlivrointerno'
    Left = 464
    Top = 8
    object CDSLIvrointernoID_LIVRO_INTERNO: TIntegerField
      FieldName = 'ID_LIVRO_INTERNO'
      Required = True
    end
    object CDSLIvrointernoID_LIVRO: TIntegerField
      FieldName = 'ID_LIVRO'
    end
    object CDSLIvrointernoID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object CDSLIvrointernoDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object CDSLIvrointernoOBS: TStringField
      FieldName = 'OBS'
      Size = 8192
    end
    object CDSLIvrointernoDATA_ENTREGA: TSQLTimeStampField
      FieldName = 'DATA_ENTREGA'
    end
    object CDSLIvrointernoLivro: TStringField
      FieldKind = fkLookup
      FieldName = 'Livro'
      LookupDataSet = DM.SQLlivro
      LookupKeyFields = 'ID_LIVRO'
      LookupResultField = 'LIVRO'
      KeyFields = 'ID_LIVRO'
      Size = 50
      Lookup = True
    end
    object CDSLIvrointernoquant: TIntegerField
      FieldKind = fkLookup
      FieldName = 'quant'
      LookupDataSet = DM.SQLlivro
      LookupKeyFields = 'ID_LIVRO'
      LookupResultField = 'UTILIZADO'
      KeyFields = 'ID_LIVRO'
      Lookup = True
    end
  end
  object DSlivrointerno: TDataSource
    DataSet = CDSLIvrointerno
    OnDataChange = DsCadastroDataChange
    Left = 492
    Top = 8
  end
  object SQLLivro: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_up'
        ParamType = ptUnknown
        Value = 0
      end>
    SQL.Strings = (
      'select * from livro '
      'where utilizado < numero_exemplares and id_up = :id_up'
      'order by livro')
    SQLConnection = DM.SQLConnect
    Left = 555
    Top = 104
  end
  object dspLivro: TDataSetProvider
    DataSet = SQLLivro
    Left = 583
    Top = 104
  end
  object cdsLivro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLivro'
    Left = 611
    Top = 104
  end
  object dsLivro: TDataSource
    DataSet = cdsLivro
    Left = 636
    Top = 105
  end
end
