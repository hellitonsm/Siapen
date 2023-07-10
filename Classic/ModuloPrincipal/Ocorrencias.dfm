inherited FrmOcorrencias: TFrmOcorrencias
  Left = 194
  Top = 118
  Height = 543
  Caption = 'Ocorrencias'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 454
    inherited ToolBarModeloCadastro: TToolBar
      Height = 436
    end
    inherited DBNavigator1: TDBNavigator
      Top = 436
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Height = 454
    inherited PageControlModeloCadastro: TPageControl
      Height = 454
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Height = 426
          object Label2: TLabel
            Left = 22
            Top = 16
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditCODIGO
          end
          object Label3: TLabel
            Left = 102
            Top = 16
            Width = 48
            Height = 13
            Caption = 'Descri'#231#227'o'
            FocusControl = DBEdit1
          end
          object Label7: TLabel
            Left = 22
            Top = 54
            Width = 289
            Height = 13
            Caption = 'Procedimento novo que ser'#225' gerado apartir desta ocorrencia.'
          end
          object SpeedButton2: TSpeedButton
            Left = 320
            Top = 68
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton2Click
          end
          object DBEditCODIGO: TDBEdit
            Left = 22
            Top = 32
            Width = 73
            Height = 21
            DataField = 'IDOCORRENCIA'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit1: TDBEdit
            Left = 102
            Top = 32
            Width = 329
            Height = 21
            DataField = 'DESCRICAO'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object DBLookupComboBoxOCORRENCIAS: TDBLookupComboBox
            Left = 22
            Top = 69
            Width = 295
            Height = 21
            DataField = 'IDPROCEDIMENTO_NOVO'
            DataSource = DsCadastro
            KeyField = 'IDPROCEDIMENTOS'
            ListField = 'DESCRICAO'
            ListSource = DM.DsProcedimentos
            TabOrder = 2
            OnClick = DBLookupComboBoxOCORRENCIASClick
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 350
            Top = 52
            Width = 289
            Height = 41
            Caption = 'O procedimento novo podera ser em outra data:'
            Columns = 2
            DataField = 'PROCEDIMENTO_TEM_DATA'
            DataSource = DsCadastro
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 3
            Values.Strings = (
              'S'
              'N')
          end
          object PageControl1: TPageControl
            Left = 21
            Top = 96
            Width = 619
            Height = 305
            ActivePage = TabSheet2
            TabOrder = 4
            object TabSheet1: TTabSheet
              Caption = 'Dados necess'#225'rios para registrar a ocorrencia:'
              object label89: TLabel
                Left = 11
                Top = 8
                Width = 152
                Height = 13
                Caption = 'Parametro dentro da ocorrencia:'
              end
              object Label4: TLabel
                Left = 377
                Top = 8
                Width = 82
                Height = 13
                Caption = 'Tipo da resposta:'
              end
              object Label5: TLabel
                Left = 11
                Top = 48
                Width = 99
                Height = 13
                Caption = 'Respostas possiveis:'
              end
              object EditPergunta: TEdit
                Left = 11
                Top = 24
                Width = 361
                Height = 21
                TabOrder = 0
              end
              object ComboBoxTipo: TComboBox
                Left = 377
                Top = 24
                Width = 145
                Height = 21
                ItemHeight = 13
                TabOrder = 1
                OnChange = ComboBoxTipoChange
                OnKeyPress = ComboBoxTipoKeyPress
                Items.Strings = (
                  'Pr'#233' Definido'
                  'Texto Curto'
                  'Texto Longo'
                  'Nome do Interno'
                  'Nome do Advogado'
                  'Nome do Visitante'
                  'Nome do Funcion'#225'rio')
              end
              object Button1: TButton
                Left = 529
                Top = 18
                Width = 75
                Height = 25
                Caption = 'Incluir'
                TabOrder = 2
                OnClick = Button1Click
              end
              object MemoResposta: TMemo
                Left = 11
                Top = 64
                Width = 593
                Height = 50
                TabOrder = 3
              end
              object DBGrid1: TDBGrid
                Left = 11
                Top = 116
                Width = 593
                Height = 125
                DataSource = DsQuestionamento
                TabOrder = 4
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'PERGUNTA'
                    Title.Caption = 'Parametro dentro da ocorrencia'
                    Width = 200
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TIPO_RESPOSTA'
                    Title.Caption = 'Tipo da Resposta'
                    Width = 90
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'RESPOSTA'
                    Title.Caption = 'Respostas possiveis'
                    Width = 250
                    Visible = True
                  end>
              end
              object Button2: TButton
                Left = 529
                Top = 244
                Width = 75
                Height = 25
                Caption = 'Deletar'
                TabOrder = 5
                OnClick = Button2Click
              end
              object DBNavigator2: TDBNavigator
                Left = 11
                Top = 244
                Width = 39
                Height = 19
                DataSource = DsQuestionamento
                VisibleButtons = [nbPost]
                Hints.Strings = (
                  'First record'
                  'Prior record'
                  'Next record'
                  'Last record'
                  'Insert record'
                  'Delete record'
                  'Edit record'
                  'Salvar'
                  'Cancel edit'
                  'Refresh data')
                TabOrder = 6
              end
            end
            object TabSheet2: TTabSheet
              Caption = 'Status de Ocorrencia'
              ImageIndex = 1
              object Status: TDBRadioGroup
                Left = 14
                Top = 12
                Width = 219
                Height = 41
                Caption = 'Status'
                Columns = 2
                DataField = 'ST'
                DataSource = DsCadastro
                Items.Strings = (
                  'Ativo'
                  'Inativo')
                TabOrder = 0
                Values.Strings = (
                  'A'
                  'I')
              end
              object DBRadioGroup2: TDBRadioGroup
                Left = 14
                Top = 68
                Width = 219
                Height = 41
                Caption = 'Multiplos registros'
                Columns = 2
                DataField = 'MULTIPLOS_REGISTROS'
                DataSource = DsCadastro
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 1
                Values.Strings = (
                  'S'
                  'N')
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelConsulta: TPanel
          Height = 392
          inherited DBGridConsulta: TDBGrid
            Height = 390
          end
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 486
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM OCORRENCIA')
  end
  object SqlQuestionamento: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDOCORRENCIA'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM QUESTIONAMENTO'
      'WHERE IDOCORRENCIA = :IDOCORRENCIA')
    SQLConnection = DM.SQLConnect
    Left = 488
  end
  object DSpQuestionamento: TDataSetProvider
    DataSet = SqlQuestionamento
    Left = 516
  end
  object CdsQuestionamento: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDOCORRENCIA'
    MasterFields = 'IDOCORRENCIA'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspQuestionamento'
    Left = 544
    object CdsQuestionamentoIDQUESTIONAMENTO: TIntegerField
      FieldName = 'IDQUESTIONAMENTO'
      Required = True
    end
    object CdsQuestionamentoIDOCORRENCIA: TIntegerField
      FieldName = 'IDOCORRENCIA'
      Required = True
    end
    object CdsQuestionamentoPERGUNTA: TStringField
      FieldName = 'PERGUNTA'
      Size = 100
    end
    object CdsQuestionamentoTIPO_RESPOSTA: TStringField
      FieldName = 'TIPO_RESPOSTA'
      Size = 30
    end
    object CdsQuestionamentoRESPOSTA: TStringField
      FieldName = 'RESPOSTA'
      Size = 16386
    end
  end
  object DsQuestionamento: TDataSource
    DataSet = CdsQuestionamento
    OnDataChange = DsCadastroDataChange
    Left = 572
  end
end
