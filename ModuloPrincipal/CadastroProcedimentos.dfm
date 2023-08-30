inherited FrmCadastroProcedimentos: TFrmCadastroProcedimentos
  Left = 289
  Top = 115
  Caption = 'Cadastro de Procedimentos'
  ClientHeight = 584
  ExplicitWidth = 952
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 533
    ExplicitHeight = 533
    inherited ToolBarModeloCadastro: TToolBar
      Height = 514
      ExplicitHeight = 513
    end
    inherited DBNavigator1: TDBNavigator
      Top = 514
      Hints.Strings = ()
      ExplicitTop = 513
    end
  end
  inherited PanelModeloCadastro: TPanel
    Height = 533
    ExplicitHeight = 533
    inherited PageControlModeloCadastro: TPageControl
      Width = 825
      Height = 532
      ActivePage = TabSheetCadastro
      ExplicitHeight = 531
      inherited TabSheetCadastro: TTabSheet
        ExplicitWidth = 817
        ExplicitHeight = 504
        inherited PanelCadastro: TPanel
          Width = 817
          Height = 504
          ExplicitHeight = 503
          object Label2: TLabel
            Left = 20
            Top = 8
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditCODIGO
          end
          object Label3: TLabel
            Left = 20
            Top = 112
            Width = 48
            Height = 13
            Caption = 'Descri'#231#227'o'
            FocusControl = DBEdit1
          end
          object Label8: TLabel
            Left = 20
            Top = 155
            Width = 61
            Height = 13
            Caption = 'Observa'#231#227'o:'
          end
          object SpeedButton4: TSpeedButton
            Left = 410
            Top = 23
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton4Click
          end
          object Label9: TLabel
            Left = 112
            Top = 9
            Width = 99
            Height = 13
            Caption = 'Procedimento mestre'
          end
          object DBEditCODIGO: TDBEdit
            Left = 20
            Top = 24
            Width = 78
            Height = 21
            DataField = 'IDPROCEDIMENTOS'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit1: TDBEdit
            Left = 20
            Top = 128
            Width = 305
            Height = 21
            DataField = 'DESCRICAO'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object DBRadioGroup5: TDBRadioGroup
            Left = 336
            Top = 114
            Width = 145
            Height = 38
            Caption = 'Aprova'#231#227'o direta:'
            Columns = 2
            DataField = 'APROVACAO_DIRETA'
            DataSource = DsCadastro
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 2
            Values.Strings = (
              'S'
              'N')
          end
          object GroupBox1: TGroupBox
            Left = 20
            Top = 51
            Width = 308
            Height = 54
            Caption = 'Periodo que ser'#225' sugerido para execu'#231#227'o do procedimento:'
            TabOrder = 3
            object Label4: TLabel
              Left = 8
              Top = 15
              Width = 53
              Height = 13
              Caption = 'Hora Inicial'
              FocusControl = DBEdit2
            end
            object Label5: TLabel
              Left = 160
              Top = 15
              Width = 48
              Height = 13
              Caption = 'Hora Final'
              FocusControl = DBEdit3
            end
            object DBEdit2: TDBEdit
              Left = 8
              Top = 29
              Width = 134
              Height = 21
              DataField = 'HORA_INICIAL'
              DataSource = DsCadastro
              TabOrder = 0
            end
            object DBEdit3: TDBEdit
              Left = 160
              Top = 29
              Width = 134
              Height = 21
              DataField = 'HORA_FINAL'
              DataSource = DsCadastro
              TabOrder = 1
            end
          end
          object DBMemo1: TDBMemo
            Left = 20
            Top = 170
            Width = 618
            Height = 37
            DataField = 'OBSERVACAO'
            DataSource = DsCadastro
            TabOrder = 4
          end
          object PageControlPrincipal: TPageControl
            Left = 22
            Top = 213
            Width = 618
            Height = 205
            ActivePage = TabSheetPosto
            Style = tsButtons
            TabOrder = 5
            TabWidth = 90
            object TabSheetPosto: TTabSheet
              Caption = 'Posto/Local'
              ImageIndex = 4
              object Label6: TLabel
                Left = 14
                Top = 0
                Width = 118
                Height = 13
                Caption = 'Posto/Local de Trabalho'
              end
              object SpeedButton3: TSpeedButton
                Left = 365
                Top = 14
                Width = 23
                Height = 22
                Caption = '...'
                OnClick = SpeedButton3Click
              end
              object DBLookupComboBoxPostoTrabalho: TDBLookupComboBox
                Left = 14
                Top = 15
                Width = 345
                Height = 21
                KeyField = 'IDPOSTO_TRABALHO'
                ListField = 'POSTO_TRABALHO'
                ListSource = DM.DsPostoTrabalho
                TabOrder = 0
              end
              object Button3: TButton
                Left = 395
                Top = 12
                Width = 75
                Height = 25
                Caption = 'Incluir'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                OnClick = Button3Click
              end
              object DBGrid1: TDBGrid
                Left = 13
                Top = 45
                Width = 556
                Height = 100
                DataSource = DsProcedimentoPosto
                TabOrder = 2
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'POSTO_TRABALHO'
                    Title.Caption = 'Posto/Local de Trabalho'
                    Width = 500
                    Visible = True
                  end>
              end
              object Button1: TButton
                Left = 491
                Top = 148
                Width = 75
                Height = 25
                Caption = 'Deletar'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
                OnClick = Button1Click
              end
            end
            object TabSheetOcorrencias: TTabSheet
              Caption = 'Ocorrencias'
              ImageIndex = 5
              object Label7: TLabel
                Left = 14
                Top = 0
                Width = 203
                Height = 13
                Caption = 'Ocorrencias permitidas neste procedimento'
              end
              object SpeedButton2: TSpeedButton
                Left = 365
                Top = 14
                Width = 23
                Height = 22
                Caption = '...'
                OnClick = SpeedButton2Click
              end
              object DBLookupComboBoxOCORRENCIAS: TDBLookupComboBox
                Left = 14
                Top = 15
                Width = 345
                Height = 21
                KeyField = 'IDOCORRENCIA'
                ListField = 'DESCRICAO'
                ListSource = DM.DsOcorrencias
                TabOrder = 0
              end
              object Button2: TButton
                Left = 395
                Top = 12
                Width = 75
                Height = 25
                Caption = 'Incluir'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                OnClick = Button2Click
              end
              object DBGridOcorrenciasProcedimentos: TDBGrid
                Left = 13
                Top = 45
                Width = 556
                Height = 100
                DataSource = DsOcorrenciaProcedimento
                TabOrder = 2
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'OCORRENCIA'
                    Title.Caption = 'Ocorrencias permitidas neste procedimento'
                    Width = 500
                    Visible = True
                  end>
              end
              object Button4: TButton
                Left = 491
                Top = 148
                Width = 75
                Height = 25
                Caption = 'Deletar'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
                OnClick = Button1Click
              end
            end
            object TabSheetInterno: TTabSheet
              Caption = 'Interno(a)'
              object DBRadioGroup3: TDBRadioGroup
                Left = 0
                Top = 0
                Width = 250
                Height = 49
                Caption = 'Obriga informar Interno:'
                Columns = 2
                DataField = 'ENVOLVE_INTERNO'
                DataSource = DsCadastro
                Items.Strings = (
                  'Sim (Apenas um)'
                  'Sim (Um ou v'#225'rios)'
                  'N'#227'o')
                TabOrder = 0
                Values.Strings = (
                  'S'
                  'V'
                  'N')
              end
            end
            object TabSheetAdvogado: TTabSheet
              Caption = 'Advogado'
              ImageIndex = 1
              object DBRadioGroup1: TDBRadioGroup
                Left = 0
                Top = 0
                Width = 250
                Height = 49
                Caption = 'Obriga informar Advogado:'
                Columns = 2
                DataField = 'ENVOLVE_ADVOGADO'
                DataSource = DsCadastro
                Items.Strings = (
                  'Sim (Apenas um)'
                  'Sim (Um ou v'#225'rios)'
                  'N'#227'o')
                TabOrder = 0
                Values.Strings = (
                  'S'
                  'V'
                  'N')
              end
            end
            object TabSheetFuncionario: TTabSheet
              Caption = 'Funcion'#225'rio'
              ImageIndex = 2
              object Label10: TLabel
                Left = 0
                Top = 54
                Width = 67
                Height = 13
                Caption = 'Desta fun'#231#227'o:'
              end
              object SpeedButton1: TSpeedButton
                Left = 325
                Top = 70
                Width = 23
                Height = 22
                Caption = '...'
                OnClick = SpeedButton1Click
              end
              object DBRadioGroup2: TDBRadioGroup
                Left = 0
                Top = 0
                Width = 250
                Height = 49
                Caption = 'Obriga informar Funcion'#225'rio:'
                Columns = 2
                DataField = 'ENVOLVE_FUNCIONARIO'
                DataSource = DsCadastro
                Items.Strings = (
                  'Sim (Apenas um)'
                  'Sim (Um ou v'#225'rios)'
                  'N'#227'o')
                TabOrder = 0
                Values.Strings = (
                  'S'
                  'V'
                  'N')
              end
              object DBComboBox1: TDBComboBox
                Left = 0
                Top = 70
                Width = 321
                Height = 21
                DataField = 'FUNCAO_FUNCIONARIO'
                DataSource = DsCadastro
                Items.Strings = (
                  'ADMINISTRATIVO'
                  'AGENTE PENITENCI'#193'RIO'
                  'CHEFE DE PLANT'#195'O'
                  'CLINICA M'#201'DICA'
                  'DIRETOR'
                  'DISCIPLINA'
                  'EDUCA'#199#195'O'
                  'ENFERMAGEM'
                  'FARMACIA'
                  'GESTOR PENITENCI'#193'RIO'
                  'JUR'#205'DICO'
                  'ODONTOLOGIA'
                  'OFICIAL PENITENCI'#193'RIO'
                  'OUTRAS FUN'#199#213'ES'
                  'PEDAGOGIA'
                  'PSICOLOGIA'
                  'PSICOSSOCIAL'
                  'PSIQUIATRIA'
                  'SA'#218'DE'
                  'SERVI'#199'O SOCIAL'
                  'TERAPIA OCUPACIONAL'
                  'TRABALHO')
                Sorted = True
                TabOrder = 1
              end
            end
            object TabSheetVisitante: TTabSheet
              Caption = 'Visitante'
              ImageIndex = 3
              object DBRadioGroup4: TDBRadioGroup
                Left = 0
                Top = 0
                Width = 250
                Height = 49
                Caption = 'Obriga informar Visitante:'
                Columns = 2
                DataField = 'ENVOLVE_VISITANTE'
                DataSource = DsCadastro
                Items.Strings = (
                  'Sim (Apenas um)'
                  'Sim (Um ou v'#225'rios)'
                  'N'#227'o')
                TabOrder = 0
                Values.Strings = (
                  'S'
                  'V'
                  'N')
              end
            end
          end
          object Status: TDBRadioGroup
            Left = 488
            Top = 113
            Width = 153
            Height = 38
            Caption = 'Status'
            Columns = 2
            DataField = 'ST'
            DataSource = DsCadastro
            Items.Strings = (
              'Ativo'
              'Inativo')
            TabOrder = 6
            Values.Strings = (
              'A'
              'I')
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 112
            Top = 24
            Width = 295
            Height = 21
            DataField = 'IDPROCEDIMENTOS_MESTRE'
            DataSource = DsCadastro
            KeyField = 'IDPROCEDIMENTOS'
            ListField = 'DESCRICAO'
            ListSource = DM.DsProcedimentos
            TabOrder = 7
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        ExplicitWidth = 817
        ExplicitHeight = 504
        inherited PanelLocalizaConsulta: TPanel
          Width = 817
        end
        inherited PanelConsulta: TPanel
          Width = 817
          Height = 470
          inherited DBGridConsulta: TDBGrid
            Width = 815
            Height = 468
            Columns = <
              item
                Expanded = False
                FieldName = 'IDPROCEDIMENTOS'
                Title.Caption = 'ID'
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Title.Caption = 'Descri'#231#227'o'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ENVOLVE_ADVOGADO'
                Title.Caption = 'Advogado'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ENVOLVE_FUNCIONARIO'
                Title.Caption = 'Funcion'#225'rio'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ENVOLVE_INTERNO'
                Title.Caption = 'Interno'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ENVOLVE_VISITANTE'
                Title.Caption = 'Visitante'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'APROVACAO_DIRETA'
                Title.Caption = 'Aprovado'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'HORA_INICIAL'
                Title.Caption = 'Inicio'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'HORA_FINAL'
                Title.Caption = 'Final'
                Width = 50
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 565
    ExplicitTop = 565
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM PROCEDIMENTOS')
  end
  object DsProcedimentoPosto: TDataSource
    DataSet = CdsProcedimentoPosto
    OnDataChange = DsCadastroDataChange
    Left = 268
  end
  object CdsProcedimentoPosto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDPROCEDIMENTO'
    MasterFields = 'IDPROCEDIMENTOS'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspProcedimentoPosto'
    Left = 240
    object CdsProcedimentoPostoIDPROCEDIMENTO_POSTO: TIntegerField
      FieldName = 'IDPROCEDIMENTO_POSTO'
      Required = True
    end
    object CdsProcedimentoPostoIDPOSTO_TRABALHO: TIntegerField
      FieldName = 'IDPOSTO_TRABALHO'
      Required = True
    end
    object CdsProcedimentoPostoIDPROCEDIMENTO: TIntegerField
      FieldName = 'IDPROCEDIMENTO'
      Required = True
    end
    object CdsProcedimentoPostoPOSTO_TRABALHO: TStringField
      FieldKind = fkLookup
      FieldName = 'POSTO_TRABALHO'
      LookupDataSet = DM.CdsPostoTrabalho
      LookupKeyFields = 'IDPOSTO_TRABALHO'
      LookupResultField = 'POSTO_TRABALHO'
      KeyFields = 'IDPOSTO_TRABALHO'
      Size = 100
      Lookup = True
    end
  end
  object DspProcedimentoPosto: TDataSetProvider
    DataSet = SqlProcedimentoPosto
    Left = 212
  end
  object SqlProcedimentoPostoold: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDPROCEDIMENTOS'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM PROCEDIMENTO_POSTO'
      'WHERE IDPROCEDIMENTO =:IDPROCEDIMENTOS')
    SQLConnection = DM.SQLConnect
    Left = 224
    Top = 344
  end
  object DsOcorrenciaProcedimento: TDataSource
    DataSet = CdsOcorrenciaProcedimento
    OnDataChange = DsCadastroDataChange
    Left = 444
  end
  object CdsOcorrenciaProcedimento: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDPROCEDIMENTOS'
    MasterFields = 'IDPROCEDIMENTOS'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspOcorrenciaProcedimento'
    Left = 416
    object CdsOcorrenciaProcedimentoIDOCORRENCIA_PROCEDIMENTOS: TIntegerField
      FieldName = 'IDOCORRENCIA_PROCEDIMENTOS'
      Required = True
    end
    object CdsOcorrenciaProcedimentoIDOCORRENCIA: TIntegerField
      FieldName = 'IDOCORRENCIA'
      Required = True
    end
    object CdsOcorrenciaProcedimentoIDPROCEDIMENTOS: TIntegerField
      FieldName = 'IDPROCEDIMENTOS'
      Required = True
    end
    object CdsOcorrenciaProcedimentoOCORRENCIA: TStringField
      FieldKind = fkLookup
      FieldName = 'OCORRENCIA'
      LookupDataSet = DM.CdsOcorrencias
      LookupKeyFields = 'IDOCORRENCIA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'IDOCORRENCIA'
      Size = 100
      Lookup = True
    end
  end
  object DspOcorrenciaProcedimento: TDataSetProvider
    DataSet = SqlOcorrenciaProcedimento
    Left = 388
  end
  object SqlOcorrenciaProcedimentoold: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDPROCEDIMENTOS'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM OCORRENCIA_PROCEDIMENTOS'
      'WHERE IDPROCEDIMENTOS =:IDPROCEDIMENTOS')
    SQLConnection = DM.SQLConnect
    Left = 360
  end
  object SqlOcorrenciaProcedimento: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT * '
      'FROM OCORRENCIA_PROCEDIMENTOS'
      'WHERE IDPROCEDIMENTOS =:IDPROCEDIMENTOS'
      '')
    Left = 367
    Top = 64
    ParamData = <
      item
        Name = 'IDPROCEDIMENTOS'
        ParamType = ptInput
      end>
  end
  object SqlProcedimentoPosto: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT * '
      'FROM PROCEDIMENTO_POSTO'
      'WHERE IDPROCEDIMENTO =:IDPROCEDIMENTOS'
      '')
    Left = 191
    Top = 64
    ParamData = <
      item
        Name = 'IDPROCEDIMENTOS'
        ParamType = ptInput
      end>
  end
end
