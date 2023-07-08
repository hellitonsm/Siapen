inherited frmMemorando: TfrmMemorando
  Left = 210
  Top = 50
  Width = 822
  Height = 718
  Caption = 'Memorando'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 629
    inherited ToolBarModeloCadastro: TToolBar
      Height = 611
    end
    inherited DBNavigator1: TDBNavigator
      Top = 611
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 691
    Height = 629
    inherited PageControlModeloCadastro: TPageControl
      Width = 691
      Height = 629
      ActivePage = TabSheetCadastro
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 683
          Height = 601
          object Label2: TLabel
            Left = 25
            Top = 5
            Width = 68
            Height = 13
            Caption = 'Id Memorando'
            FocusControl = dbeditcodigo
          end
          object Label3: TLabel
            Left = 372
            Top = 5
            Width = 38
            Height = 13
            Caption = 'Assunto'
            FocusControl = edtAssunto
          end
          object Label4: TLabel
            Left = 25
            Top = 55
            Width = 48
            Height = 13
            Caption = 'Descri'#231#227'o'
          end
          object Label5: TLabel
            Left = 25
            Top = 115
            Width = 56
            Height = 13
            Caption = 'Destinat'#225'rio'
            FocusControl = edtDestinatario
          end
          object Label6: TLabel
            Left = 109
            Top = 5
            Width = 62
            Height = 13
            Caption = 'Respons'#225'vel'
          end
          object Label7: TLabel
            Left = 342
            Top = 115
            Width = 51
            Height = 13
            Caption = 'Data Inicio'
          end
          object Label8: TLabel
            Left = 517
            Top = 115
            Width = 39
            Height = 13
            Caption = 'Data fim'
          end
          object Label9: TLabel
            Left = 25
            Top = 165
            Width = 159
            Height = 13
            Caption = 'Miss'#227'o Cancelada? Qual Motivo?'
            FocusControl = EdtMissaoCancelada
          end
          object SpeedButton1: TSpeedButton
            Left = 616
            Top = 216
            Width = 23
            Height = 22
            Hint = 'Cadastrar Curso'
            Caption = '...'
            Flat = True
            ParentShowHint = False
            ShowHint = True
          end
          object SpeedButton2: TSpeedButton
            Left = 624
            Top = 224
            Width = 23
            Height = 22
            Hint = 'Cadastrar Curso'
            Caption = '...'
            Flat = True
            ParentShowHint = False
            ShowHint = True
          end
          object dbeditcodigo: TDBEdit
            Left = 25
            Top = 20
            Width = 68
            Height = 21
            DataField = 'ID_MEMORANDO'
            DataSource = DsCadastro
            TabOrder = 0
          end
          object edtAssunto: TDBEdit
            Left = 372
            Top = 20
            Width = 295
            Height = 21
            DataField = 'ASSUNTO'
            DataSource = DsCadastro
            TabOrder = 3
          end
          object edtDestinatario: TDBEdit
            Left = 25
            Top = 130
            Width = 288
            Height = 21
            DataField = 'DESTINATARIO'
            DataSource = DsCadastro
            TabOrder = 5
          end
          object EdtMissaoCancelada: TDBEdit
            Left = 25
            Top = 180
            Width = 288
            Height = 21
            DataField = 'MISSAO_CANCELADA'
            DataSource = DsCadastro
            TabOrder = 8
          end
          object EdtDescricao: TDBMemo
            Left = 25
            Top = 70
            Width = 640
            Height = 39
            DataField = 'DESCRICAO'
            DataSource = DsCadastro
            TabOrder = 4
          end
          object edtDataInicio: TadpDBDateTimePicker
            Left = 340
            Top = 130
            Width = 150
            Height = 21
            Date = 41057.561576099540000000
            Time = 41057.561576099540000000
            TabOrder = 6
            DataField = 'DATA_INICIO'
            DataSource = DsCadastro
            ReadOnly = False
          end
          object edtDataFim: TadpDBDateTimePicker
            Left = 516
            Top = 130
            Width = 150
            Height = 21
            Date = 41057.563374074070000000
            Time = 41057.563374074070000000
            TabOrder = 7
            DataField = 'DATA_FIM'
            DataSource = DsCadastro
            ReadOnly = False
          end
          object PageControl1: TPageControl
            Left = 26
            Top = 226
            Width = 639
            Height = 249
            ActivePage = TabSheet1
            TabOrder = 9
            object TabSheet1: TTabSheet
              Caption = 'Funcion'#225'rio'
              object Label11: TLabel
                Left = 46
                Top = 12
                Width = 34
                Height = 13
                Caption = 'Agente'
              end
              object Label10: TLabel
                Left = 84
                Top = 96
                Width = 112
                Height = 13
                Caption = 'NOME_FUNCIONARIO'
              end
              object DBGrid1: TDBGrid
                Left = 8
                Top = 56
                Width = 617
                Height = 181
                DataSource = dsFuncionario_Memo
                TabOrder = 2
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'ID_FUNCIONARIO'
                    Title.Caption = 'Id Funcion'#225'rio'
                    Width = 74
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'nomefuncionario'
                    Title.Caption = 'Nome Funcion'#225'rio'
                    Width = 218
                    Visible = True
                  end>
              end
              object btnIncluir: TButton
                Left = 561
                Top = 10
                Width = 49
                Height = 25
                Caption = 'Incluir'
                TabOrder = 1
                OnClick = btnIncluirClick
              end
              object DBLookupComboBox1: TDBLookupComboBox
                Left = 88
                Top = 12
                Width = 373
                Height = 21
                KeyField = 'ID_FUNCIONARIO'
                ListField = 'NOME_FUNCIONARIO'
                ListSource = DM.DsFuncionarioLista
                TabOrder = 0
              end
            end
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 110
            Top = 20
            Width = 211
            Height = 21
            DataField = 'ID_FUNCIONARIO_AUTORIZADOR'
            DataSource = DsCadastro
            KeyField = 'ID_FUNCIONARIO_AUTORIZADOR'
            ListField = 'Funcionario'
            ListSource = DSflagautorizador
            TabOrder = 1
          end
          object Button1: TButton
            Left = 325
            Top = 20
            Width = 22
            Height = 20
            Caption = '...'
            TabOrder = 2
            OnClick = Button1Click
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 683
        end
        inherited PanelConsulta: TPanel
          Width = 683
          Height = 567
          inherited DBGridConsulta: TDBGrid
            Width = 681
            Height = 565
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 806
    inherited Image2: TImage
      Width = 806
    end
    inherited LabelTitulo: TLabel
      Width = 268
      Caption = 'Gest'#227'o de Pessoal - Memorando'
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 661
    Width = 806
  end
  inherited ImageListCadastro: TImageList
    Left = 640
    Top = 0
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'select * from memorando')
    Left = 720
    Top = 288
    object SqlCadastroID_MEMORANDO: TIntegerField
      FieldName = 'ID_MEMORANDO'
      Required = True
    end
    object SqlCadastroASSUNTO: TStringField
      FieldName = 'ASSUNTO'
      Size = 100
    end
    object SqlCadastroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 1000
    end
    object SqlCadastroDESTINATARIO: TStringField
      FieldName = 'DESTINATARIO'
      Size = 100
    end
    object SqlCadastroDATA_INICIO: TSQLTimeStampField
      FieldName = 'DATA_INICIO'
    end
    object SqlCadastroDATA_FIM: TSQLTimeStampField
      FieldName = 'DATA_FIM'
    end
    object SqlCadastroMISSAO_CANCELADA: TStringField
      FieldName = 'MISSAO_CANCELADA'
      Size = 100
    end
    object SqlCadastroID_FUNCIONARIO_AUTORIZADOR: TIntegerField
      FieldName = 'ID_FUNCIONARIO_AUTORIZADOR'
    end
  end
  inherited DspCadastro: TDataSetProvider
    Left = 748
    Top = 288
  end
  inherited CdsCadastro: TClientDataSet
    Left = 784
    Top = 288
    object CdsCadastroID_MEMORANDO: TIntegerField
      FieldName = 'ID_MEMORANDO'
      Required = True
    end
    object CdsCadastroASSUNTO: TStringField
      FieldName = 'ASSUNTO'
      Size = 100
    end
    object CdsCadastroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 1000
    end
    object CdsCadastroDESTINATARIO: TStringField
      FieldName = 'DESTINATARIO'
      Size = 100
    end
    object CdsCadastroDATA_INICIO: TSQLTimeStampField
      FieldName = 'DATA_INICIO'
    end
    object CdsCadastroDATA_FIM: TSQLTimeStampField
      FieldName = 'DATA_FIM'
    end
    object CdsCadastroMISSAO_CANCELADA: TStringField
      FieldName = 'MISSAO_CANCELADA'
      Size = 100
    end
    object CdsCadastroID_FUNCIONARIO_AUTORIZADOR: TIntegerField
      FieldName = 'ID_FUNCIONARIO_AUTORIZADOR'
    end
  end
  inherited DsCadastro: TDataSource
    Left = 812
    Top = 288
  end
  object SQLFuncionario_Memo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from funcionario_memo'
      '')
    SQLConnection = DM.SQLConnect
    Left = 355
    Top = 436
  end
  object dspFuncionario_Memo: TDataSetProvider
    DataSet = SQLFuncionario_Memo
    Left = 503
    Top = 432
  end
  object cdsFuncionario_Memo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFuncionario_Memo'
    Left = 447
    Top = 436
    object cdsFuncionario_MemoID_FUNCIONARIO_MEMO: TIntegerField
      FieldName = 'ID_FUNCIONARIO_MEMO'
      Required = True
    end
    object cdsFuncionario_MemoDATA_EVENTO: TSQLTimeStampField
      FieldName = 'DATA_EVENTO'
    end
    object cdsFuncionario_MemoSTATUS_APROVACAO: TStringField
      FieldName = 'STATUS_APROVACAO'
      Size = 100
    end
    object cdsFuncionario_MemoJUSTIFICATIVA: TStringField
      FieldName = 'JUSTIFICATIVA'
      Size = 100
    end
    object cdsFuncionario_MemoCHEFE_MISSAO: TStringField
      FieldName = 'CHEFE_MISSAO'
      Size = 100
    end
    object cdsFuncionario_MemoID_MEMORANDO: TIntegerField
      FieldName = 'ID_MEMORANDO'
      Required = True
    end
    object cdsFuncionario_MemoID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      Required = True
    end
    object cdsFuncionario_Memonomefuncionario: TStringField
      FieldKind = fkLookup
      FieldName = 'nomefuncionario'
      LookupDataSet = DM.CdsFuncionarioLista
      LookupKeyFields = 'ID_FUNCIONARIO'
      LookupResultField = 'NOME_FUNCIONARIO'
      KeyFields = 'ID_FUNCIONARIO'
      Lookup = True
    end
  end
  object dsFuncionario_Memo: TDataSource
    DataSet = cdsFuncionario_Memo
    Left = 567
    Top = 432
  end
  object SQLresp: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select id_funcionario, nome_funcionario from funcionario'
      'order by nome_funcionario')
    SQLConnection = DM.SQLConnect
    Left = 720
    Top = 248
    object SQLrespID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      Required = True
    end
    object SQLrespNOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      Size = 100
    end
  end
  object dspresp: TDataSetProvider
    DataSet = SQLresp
    Left = 748
    Top = 248
  end
  object cdsresp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspresp'
    Left = 776
    Top = 248
    object cdsrespID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      Required = True
    end
    object cdsrespNOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      Size = 100
    end
  end
  object dsresp: TDataSource
    DataSet = cdsresp
    OnDataChange = DsCadastroDataChange
    Left = 804
    Top = 248
  end
  object SQLflagautorizador: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * '
      'FROM funcionario_autorizador'
      'where descricao_autorizador = '#39'AUTORIZADOR'#39)
    SQLConnection = DM.SQLConnect
    Left = 612
    Top = 36
  end
  object DSPflagautorizador: TDataSetProvider
    DataSet = SQLflagautorizador
    Left = 640
    Top = 36
  end
  object CDSflagautorizador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPflagautorizador'
    Left = 668
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
end
