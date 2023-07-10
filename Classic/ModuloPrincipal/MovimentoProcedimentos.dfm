inherited FrmMovimentoProcedimentos: TFrmMovimentoProcedimentos
  Left = 236
  Top = 133
  Height = 480
  Caption = 'Programa'#231#227'o dos Procedimentos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 391
    inherited ToolBarModeloCadastro: TToolBar
      Height = 373
    end
    inherited DBNavigator1: TDBNavigator
      Top = 373
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Height = 391
    inherited PageControlModeloCadastro: TPageControl
      Height = 391
      ActivePage = TabSheetCadastro
      MultiLine = True
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Height = 363
          object Label8: TLabel
            Left = 6
            Top = 52
            Width = 61
            Height = 13
            Caption = 'Observa'#231#227'o:'
          end
          object Label2: TLabel
            Left = 160
            Top = 16
            Width = 52
            Height = 13
            Caption = 'Hora inicial'
            FocusControl = DBEdit1
          end
          object Label3: TLabel
            Left = 296
            Top = 16
            Width = 45
            Height = 13
            Caption = 'Hora final'
            FocusControl = DBEdit2
          end
          object DBMemo1: TDBMemo
            Left = 4
            Top = 67
            Width = 641
            Height = 64
            DataField = 'OBSERVACAO'
            DataSource = DsCadastro
            TabOrder = 4
          end
          object DateTimePicker1: TDateTimePicker
            Left = 5
            Top = 32
            Width = 89
            Height = 21
            Date = 40872.449145567130000000
            Time = 40872.449145567130000000
            TabOrder = 0
          end
          object PageControlPrincipal: TPageControl
            Left = 1
            Top = 137
            Width = 654
            Height = 181
            ActivePage = TabSheetAdvogado
            Style = tsButtons
            TabOrder = 1
            TabWidth = 100
            object TabSheetInterno: TTabSheet
              Caption = 'Interno(a)'
              object DBGridInterno: TDBGrid
                Left = 0
                Top = 65
                Width = 646
                Height = 85
                Align = alClient
                DataSource = DsMovInt
                ReadOnly = True
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'INTERNO'
                    Title.Caption = 'Interno(a)'
                    Width = 500
                    Visible = True
                  end>
              end
              object Panel1: TPanel
                Left = 0
                Top = 0
                Width = 646
                Height = 65
                Align = alTop
                TabOrder = 1
                object Label33: TLabel
                  Left = 8
                  Top = 10
                  Width = 45
                  Height = 13
                  Caption = 'Interno(a)'
                end
                object DBLookupComboBoxInterno: TDBLookupComboBox
                  Left = 8
                  Top = 27
                  Width = 409
                  Height = 21
                  KeyField = 'ID_INTERNO'
                  ListField = 'NOME_INTERNO'
                  ListSource = DM.DsInterno
                  TabOrder = 0
                end
                object BtnInserirInterno: TButton
                  Left = 432
                  Top = 25
                  Width = 75
                  Height = 25
                  Caption = 'Inserir'
                  TabOrder = 1
                  OnClick = BtnInserirInternoClick
                end
                object BtnDeletarInterno: TButton
                  Left = 536
                  Top = 25
                  Width = 75
                  Height = 25
                  Caption = 'Deletar'
                  TabOrder = 2
                  OnClick = BtnDeletarInternoClick
                end
              end
            end
            object TabSheetAdvogado: TTabSheet
              Caption = 'Advogado'
              ImageIndex = 1
              object DBGrid2: TDBGrid
                Left = 0
                Top = 65
                Width = 646
                Height = 85
                Align = alClient
                DataSource = DsMovAdv
                ReadOnly = True
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'ADVOGADO'
                    Title.Caption = 'Advogado'
                    Width = 500
                    Visible = True
                  end>
              end
              object Panel2: TPanel
                Left = 0
                Top = 0
                Width = 646
                Height = 65
                Align = alTop
                TabOrder = 1
                object Label5: TLabel
                  Left = 8
                  Top = 10
                  Width = 49
                  Height = 13
                  Caption = 'Advogado'
                end
                object DBLookupComboBoxAdvogado: TDBLookupComboBox
                  Left = 8
                  Top = 27
                  Width = 409
                  Height = 21
                  KeyField = 'ID_ADVOGADO'
                  ListField = 'ADVOGADO'
                  ListSource = DM.DsAdvogado
                  TabOrder = 0
                end
                object BtnInserirAdvogado: TButton
                  Left = 432
                  Top = 25
                  Width = 75
                  Height = 25
                  Caption = 'Inserir'
                  TabOrder = 1
                  OnClick = BtnInserirAdvogadoClick
                end
                object BtnDeletarAdvogado: TButton
                  Left = 536
                  Top = 25
                  Width = 75
                  Height = 25
                  Caption = 'Deletar'
                  TabOrder = 2
                  OnClick = BtnDeletarAdvogadoClick
                end
              end
            end
            object TabSheetFuncionario: TTabSheet
              Caption = 'Funcion'#225'rio'
              ImageIndex = 2
              object DBGrid3: TDBGrid
                Left = 0
                Top = 65
                Width = 646
                Height = 85
                Align = alClient
                DataSource = DsMovFunc
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'FUNCIONARIO'
                    Title.Caption = 'Funcion'#225'rio'
                    Width = 500
                    Visible = True
                  end>
              end
              object Panel3: TPanel
                Left = 0
                Top = 0
                Width = 646
                Height = 65
                Align = alTop
                TabOrder = 1
                object Label6: TLabel
                  Left = 8
                  Top = 10
                  Width = 55
                  Height = 13
                  Caption = 'Funcion'#225'rio'
                end
                object DBLookupComboBoxFuncionario: TDBLookupComboBox
                  Left = 8
                  Top = 27
                  Width = 409
                  Height = 21
                  KeyField = 'ID_FUNCIONARIO'
                  ListField = 'NOME_FUNCIONARIO'
                  ListSource = DM.DsFuncionario
                  TabOrder = 0
                end
                object BtnInserirFuncionario: TButton
                  Left = 432
                  Top = 25
                  Width = 75
                  Height = 25
                  Caption = 'Inserir'
                  TabOrder = 1
                  OnClick = BtnInserirFuncionarioClick
                end
                object BtnDeletarFuncionario: TButton
                  Left = 536
                  Top = 25
                  Width = 75
                  Height = 25
                  Caption = 'Deletar'
                  TabOrder = 2
                  OnClick = BtnDeletarFuncionarioClick
                end
              end
            end
            object TabSheetVisitante: TTabSheet
              Caption = 'Visitante'
              ImageIndex = 3
              object DBGrid4: TDBGrid
                Left = 0
                Top = 65
                Width = 646
                Height = 85
                Align = alClient
                DataSource = DsMovVis
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'VISITANTE'
                    Title.Caption = 'Visitante'
                    Width = 500
                    Visible = True
                  end>
              end
              object Panel4: TPanel
                Left = 0
                Top = 0
                Width = 646
                Height = 65
                Align = alTop
                TabOrder = 1
                object Label7: TLabel
                  Left = 8
                  Top = 10
                  Width = 40
                  Height = 13
                  Caption = 'Visitante'
                end
                object DBLookupComboBoxVisitante: TDBLookupComboBox
                  Left = 8
                  Top = 27
                  Width = 409
                  Height = 21
                  KeyField = 'ID_VISITANTE'
                  ListField = 'VISITANTE'
                  ListSource = DM.DsVisitante
                  TabOrder = 0
                end
                object BtnInserirVisitante: TButton
                  Left = 432
                  Top = 25
                  Width = 75
                  Height = 25
                  Caption = 'Inserir'
                  TabOrder = 1
                  OnClick = BtnInserirVisitanteClick
                end
                object BtnDeletarVisitante: TButton
                  Left = 536
                  Top = 25
                  Width = 75
                  Height = 25
                  Caption = 'Deletar'
                  TabOrder = 2
                  OnClick = BtnDeletarVisitanteClick
                end
              end
            end
          end
          object DBEdit1: TDBEdit
            Left = 160
            Top = 32
            Width = 96
            Height = 21
            DataField = 'HORA_INICIAL'
            DataSource = DsCadastro
            TabOrder = 2
          end
          object DBEdit2: TDBEdit
            Left = 296
            Top = 32
            Width = 96
            Height = 21
            DataField = 'HORA_FINAL'
            DataSource = DsCadastro
            TabOrder = 3
          end
          object CheckBoxData: TCheckBox
            Left = 6
            Top = 13
            Width = 139
            Height = 17
            Caption = 'Informar data e horario:'
            Checked = True
            State = cbChecked
            TabOrder = 5
            OnClick = CheckBoxDataClick
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelConsulta: TPanel
          Height = 329
          inherited DBGridConsulta: TDBGrid
            Height = 327
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Font.Height = -21
  end
  inherited StatusBar1: TStatusBar
    Top = 423
  end
  inherited SqlCadastro: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'IDPROCEDIMENTOS'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'IDMOV_PROCEDIMENTOS'
        ParamType = ptInput
        Value = '-1'
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM MOV_PROCEDIMENTOS'
      'WHERE IDPROCEDIMENTOS=:IDPROCEDIMENTOS'
      'AND IDMOV_PROCEDIMENTOS=:IDMOV_PROCEDIMENTOS')
  end
  object DsMovAdv: TDataSource
    DataSet = CdsMovAdv
    Left = 740
    Top = 8
  end
  object CdsMovAdv: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDMOV_PROCEDIMENTOS'
    MasterFields = 'IDMOV_PROCEDIMENTOS'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspMovAdv'
    AfterInsert = CdsMovAdvAfterInsert
    Left = 712
    Top = 8
    object CdsMovAdvIDMOV_PROCEDIMENTOS_ADV: TIntegerField
      FieldName = 'IDMOV_PROCEDIMENTOS_ADV'
      Required = True
    end
    object CdsMovAdvIDMOV_PROCEDIMENTOS: TIntegerField
      FieldName = 'IDMOV_PROCEDIMENTOS'
      Required = True
    end
    object CdsMovAdvIDADVOGADO: TIntegerField
      FieldName = 'IDADVOGADO'
      Required = True
    end
    object CdsMovAdvADVOGADO: TStringField
      FieldKind = fkLookup
      FieldName = 'ADVOGADO'
      LookupDataSet = DM.CDSADVOGADO
      LookupKeyFields = 'ID_ADVOGADO'
      LookupResultField = 'ADVOGADO'
      KeyFields = 'IDADVOGADO'
      Size = 100
      Lookup = True
    end
  end
  object DspMovAdv: TDataSetProvider
    DataSet = SqlMovAdv
    Left = 684
    Top = 8
  end
  object SqlMovAdv: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDMOV_PROCEDIMENTOS'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM MOV_PROCEDIMENTOS_ADV'
      'WHERE IDMOV_PROCEDIMENTOS=:IDMOV_PROCEDIMENTOS')
    SQLConnection = DM.SQLConnect
    Left = 656
    Top = 8
  end
  object SqlMovFunc: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDMOV_PROCEDIMENTOS'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM MOV_PROCEDIMENTOS_FUNC'
      'WHERE IDMOV_PROCEDIMENTOS=:IDMOV_PROCEDIMENTOS')
    SQLConnection = DM.SQLConnect
    Left = 656
    Top = 48
  end
  object DspMovFunc: TDataSetProvider
    DataSet = SqlMovFunc
    Left = 684
    Top = 48
  end
  object CdsMovFunc: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDMOV_PROCEDIMENTOS'
    MasterFields = 'IDMOV_PROCEDIMENTOS'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspMovFunc'
    AfterInsert = CdsMovFuncAfterInsert
    Left = 712
    Top = 48
    object CdsMovFuncIDMOV_PROCEDIMENTOS_FUNC: TIntegerField
      FieldName = 'IDMOV_PROCEDIMENTOS_FUNC'
      Required = True
    end
    object CdsMovFuncIDMOV_PROCEDIMENTOS: TIntegerField
      FieldName = 'IDMOV_PROCEDIMENTOS'
      Required = True
    end
    object CdsMovFuncIDFUNCIONARIO: TIntegerField
      FieldName = 'IDFUNCIONARIO'
      Required = True
    end
    object CdsMovFuncFUNCIONARIO: TStringField
      FieldKind = fkLookup
      FieldName = 'FUNCIONARIO'
      LookupDataSet = DM.cdsfuncionario
      LookupKeyFields = 'ID_FUNCIONARIO'
      LookupResultField = 'NOME_FUNCIONARIO'
      KeyFields = 'IDFUNCIONARIO'
      Size = 100
      Lookup = True
    end
  end
  object DsMovFunc: TDataSource
    DataSet = CdsMovFunc
    Left = 740
    Top = 48
  end
  object SqlMovInt: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDMOV_PROCEDIMENTOS'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM MOV_PROCEDIMENTOS_INT'
      'WHERE IDMOV_PROCEDIMENTOS=:IDMOV_PROCEDIMENTOS')
    SQLConnection = DM.SQLConnect
    Left = 656
    Top = 96
  end
  object DspMovInt: TDataSetProvider
    DataSet = SqlMovInt
    Left = 684
    Top = 96
  end
  object CdsMovInt: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDMOV_PROCEDIMENTOS'
    MasterFields = 'IDMOV_PROCEDIMENTOS'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspMovInt'
    AfterInsert = CdsMovIntAfterInsert
    Left = 712
    Top = 96
    object CdsMovIntIDMOV_PROCEDIMENTOS_INT: TIntegerField
      FieldName = 'IDMOV_PROCEDIMENTOS_INT'
      Required = True
    end
    object CdsMovIntIDMOV_PROCEDIMENTOS: TIntegerField
      FieldName = 'IDMOV_PROCEDIMENTOS'
      Required = True
    end
    object CdsMovIntIDINTERNO: TIntegerField
      FieldName = 'IDINTERNO'
      Required = True
    end
    object CdsMovIntINTERNO: TStringField
      FieldKind = fkLookup
      FieldName = 'INTERNO'
      LookupDataSet = DM.CdsInterno
      LookupKeyFields = 'ID_INTERNO'
      LookupResultField = 'NOME_INTERNO'
      KeyFields = 'IDINTERNO'
      Size = 100
      Lookup = True
    end
  end
  object DsMovInt: TDataSource
    DataSet = CdsMovInt
    Left = 740
    Top = 96
  end
  object SqlMovVis: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDMOV_PROCEDIMENTOS'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM MOV_PROCEDIMENTOS_VIS'
      'WHERE IDMOV_PROCEDIMENTOS=:IDMOV_PROCEDIMENTOS')
    SQLConnection = DM.SQLConnect
    Left = 656
    Top = 144
  end
  object DspMovVis: TDataSetProvider
    DataSet = SqlMovVis
    Left = 684
    Top = 144
  end
  object CdsMovVis: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDMOV_PROCEDIMENTOS'
    MasterFields = 'IDMOV_PROCEDIMENTOS'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspMovVis'
    AfterInsert = CdsMovVisAfterInsert
    Left = 712
    Top = 144
    object CdsMovVisIDMOV_PROCEDIMENTOS_VIS: TIntegerField
      FieldName = 'IDMOV_PROCEDIMENTOS_VIS'
      Required = True
    end
    object CdsMovVisIDMOV_PROCEDIMENTOS: TIntegerField
      FieldName = 'IDMOV_PROCEDIMENTOS'
      Required = True
    end
    object CdsMovVisIDVISITANTE: TIntegerField
      FieldName = 'IDVISITANTE'
      Required = True
    end
    object CdsMovVisVISITANTE: TStringField
      FieldKind = fkLookup
      FieldName = 'VISITANTE'
      LookupDataSet = DM.CdsVisitante
      LookupKeyFields = 'ID_VISITANTE'
      LookupResultField = 'VISITANTE'
      KeyFields = 'IDVISITANTE'
      Size = 100
      Lookup = True
    end
  end
  object DsMovVis: TDataSource
    DataSet = CdsMovVis
    Left = 740
    Top = 144
  end
end
