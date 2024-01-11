inherited FrmCadastroCorrespondencia: TFrmCadastroCorrespondencia
  Left = 254
  Top = 121
  Caption = 'Cadastro de Correspond'#234'ncia'
  TextHeight = 13
  inherited PanelBotoes: TPanel
    ExplicitHeight = 532
    inherited ToolBarModeloCadastro: TToolBar
      Height = 515
      ExplicitHeight = 514
    end
    inherited DBNavigator1: TDBNavigator
      Top = 515
      DataSource = dsGrid
      Hints.Strings = ()
      ExplicitTop = 514
    end
  end
  inherited PanelModeloCadastro: TPanel
    ExplicitWidth = 825
    ExplicitHeight = 532
    inherited Image2: TImage
      Width = 710
      ExplicitWidth = 710
    end
    inherited PageControlModeloCadastro: TPageControl
      ExplicitWidth = 825
      ExplicitHeight = 532
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 821
          Height = 505
          ExplicitWidth = 821
          ExplicitHeight = 505
          object Label2: TLabel
            Left = 20
            Top = 104
            Width = 33
            Height = 13
            Caption = 'Interno'
          end
          object Label3: TLabel
            Left = 304
            Top = 104
            Width = 69
            Height = 13
            Caption = 'Correspondete'
          end
          object Label4: TLabel
            Left = 20
            Top = 148
            Width = 54
            Height = 13
            Caption = 'Logradouro'
          end
          object Label5: TLabel
            Left = 436
            Top = 148
            Width = 21
            Height = 13
            Caption = 'CEP'
          end
          object Label6: TLabel
            Left = 304
            Top = 148
            Width = 27
            Height = 13
            Caption = 'Bairro'
          end
          object Label7: TLabel
            Left = 20
            Top = 188
            Width = 64
            Height = 13
            Caption = 'Complemento'
          end
          object Label8: TLabel
            Left = 152
            Top = 188
            Width = 33
            Height = 13
            Caption = 'Estado'
          end
          object Label9: TLabel
            Left = 20
            Top = 84
            Width = 36
            Height = 13
            Caption = 'Buscar:'
          end
          object DBGridBusca: TDBGrid
            Left = 20
            Top = 308
            Width = 549
            Height = 149
            DataSource = dsBusca
            TabOrder = 11
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnCellClick = DBGridBuscaCellClick
            Columns = <
              item
                Expanded = False
                FieldName = 'nome_interno'
                Title.Caption = 'Interno'
                Width = 147
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'correspondente'
                Title.Caption = 'Correspondente'
                Width = 194
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'obs'
                Title.Caption = 'Observa'#231#227'o'
                Width = 188
                Visible = True
              end>
          end
          object ButtonBuscar: TButton
            Left = 388
            Top = 78
            Width = 61
            Height = 25
            Caption = 'Buscar'
            TabOrder = 2
            OnClick = ButtonBuscarClick
          end
          object RadioGroupBusca: TRadioGroup
            Left = 20
            Top = 36
            Width = 297
            Height = 37
            Caption = 'Selecionar '
            Columns = 3
            Items.Strings = (
              'Interno'
              'Correspondente'
              'Endere'#231'o')
            TabOrder = 0
          end
          object DBEditCorrespondente: TDBEdit
            Left = 304
            Top = 120
            Width = 253
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CORRESPONDENTE'
            DataSource = dsCorrespondente
            TabOrder = 4
          end
          object DBEditLogradouro: TDBEdit
            Left = 20
            Top = 164
            Width = 277
            Height = 21
            CharCase = ecUpperCase
            DataField = 'LOGRADOURO'
            DataSource = dsCorrespondente
            TabOrder = 5
          end
          object DBEditBairro: TDBEdit
            Left = 304
            Top = 164
            Width = 121
            Height = 21
            CharCase = ecUpperCase
            DataField = 'BAIRRO'
            DataSource = dsCorrespondente
            TabOrder = 6
          end
          object DBEditCEP: TDBEdit
            Left = 436
            Top = 164
            Width = 125
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CEP'
            DataSource = dsCorrespondente
            TabOrder = 7
          end
          object DBEditComplemento: TDBEdit
            Left = 20
            Top = 204
            Width = 121
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COMPLEMENTO'
            DataSource = dsCorrespondente
            TabOrder = 8
          end
          object DBEditEstado: TDBEdit
            Left = 152
            Top = 204
            Width = 121
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ESTADO'
            DataSource = dsCorrespondente
            TabOrder = 9
          end
          object EditBuscar: TEdit
            Left = 56
            Top = 80
            Width = 325
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
          end
          object DBLookupComboBoxInterno: TDBLookupComboBox
            Left = 20
            Top = 120
            Width = 277
            Height = 21
            KeyField = 'id_interno'
            ListField = 'nome_interno'
            ListSource = DM.DsInterno
            TabOrder = 3
          end
          object DBMemoObs: TDBMemo
            Left = 20
            Top = 236
            Width = 545
            Height = 65
            DataField = 'OBS'
            DataSource = DsCadastro
            TabOrder = 10
          end
          object RadioGroupEnviarReceber: TRadioGroup
            Left = 332
            Top = 36
            Width = 169
            Height = 37
            Caption = 'Enviar/Receber'
            Columns = 2
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 12
          end
          object ButtonAdicionarDocumento: TButton
            Left = 284
            Top = 201
            Width = 109
            Height = 25
            Caption = 'Adicionar documento'
            TabOrder = 13
            OnClick = ButtonAdicionarDocumentoClick
          end
          object ButtonVisualizarDocumento: TButton
            Left = 412
            Top = 200
            Width = 109
            Height = 25
            Caption = 'Visualizar Documento'
            TabOrder = 14
            OnClick = ButtonVisualizarDocumentoClick
          end
          object EditInterno: TEdit
            Left = 20
            Top = 120
            Width = 269
            Height = 21
            Enabled = False
            TabOrder = 15
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 821
          ExplicitWidth = 817
        end
        inherited PanelConsulta: TPanel
          Width = 821
          Height = 471
          ExplicitWidth = 821
          ExplicitHeight = 471
          inherited DBGridConsulta: TDBGrid
            Width = 819
            Height = 469
            DataSource = dsGrid
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    ExplicitWidth = 940
  end
  inherited StatusBar1: TStatusBar
    ExplicitTop = 565
    ExplicitWidth = 944
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'select * from interno_correspondente')
    Left = 596
    Top = 148
  end
  inherited DspCadastro: TDataSetProvider
    Left = 624
    Top = 148
  end
  inherited CdsCadastro: TClientDataSet
    Left = 652
    Top = 148
  end
  inherited DsCadastro: TDataSource
    Left = 680
    Top = 148
  end
  object dspCorrespondente: TDataSetProvider
    DataSet = SQLCorrespondente
    Left = 627
    Top = 104
  end
  object cdsCorrespondente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCorrespondente'
    Left = 655
    Top = 104
  end
  object dsCorrespondente: TDataSource
    DataSet = cdsCorrespondente
    Left = 683
    Top = 104
  end
  object dspBusca: TDataSetProvider
    DataSet = SQLBusca
    Left = 623
    Top = 184
  end
  object cdsBusca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBusca'
    Left = 651
    Top = 184
  end
  object dsBusca: TDataSource
    DataSet = cdsBusca
    Left = 679
    Top = 184
  end
  object OpenDialogDoc: TOpenDialog
    Left = 127
    Top = 60
  end
  object dspGrid: TDataSetProvider
    DataSet = SQLGrid
    Left = 623
    Top = 244
  end
  object cdsGrid: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGrid'
    Left = 651
    Top = 244
  end
  object dsGrid: TDataSource
    DataSet = cdsGrid
    Left = 679
    Top = 244
  end
  object SQLCorrespondente: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from CORRESPONDENTE')
    Left = 599
    Top = 104
  end
  object SQLBusca: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      
        'select i.nome_interno, i.id_interno, c.id_correspondente, c.corr' +
        'espondente,'
      'c.logradouro, c.bairro, c.cep,'
      
        'c.complemento, c.estado, ic.obs  from interno i, interno_corresp' +
        'ondente ic, correspondente c'
      'where c.id_correspondente = ic.id_correspondente and'
      
        'i.id_interno = ic.id_interno and nome_interno like :nome_interno' +
        ' ')
    Left = 595
    Top = 184
    ParamData = <
      item
        Name = 'NOME_INTERNO'
        ParamType = ptInput
      end>
  end
  object SQLGrid: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      
        'select i.nome_interno, i.id_interno, c.id_correspondente, c.corr' +
        'espondente,'
      'c.logradouro, c.bairro, c.cep, ic.id_interno_correspondente,'
      
        'c.complemento, c.estado, ic.obs  from interno i, interno_corresp' +
        'ondente ic, correspondente c'
      'where c.id_correspondente = ic.id_correspondente and'
      'i.id_interno = ic.id_interno'
      'order by  data desc')
    Left = 595
    Top = 244
  end
end
