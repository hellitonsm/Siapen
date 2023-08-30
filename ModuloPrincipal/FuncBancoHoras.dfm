inherited FrmFuncBancoHoras: TFrmFuncBancoHoras
  Left = 485
  Top = 317
  Caption = 'Banco de Horas de Funcion'#225'rios'
  ClientHeight = 583
  ClientWidth = 940
  ExplicitWidth = 956
  ExplicitHeight = 622
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 532
    inherited ToolBarModeloCadastro: TToolBar
      Height = 514
    end
    inherited DBNavigator1: TDBNavigator
      Top = 514
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 825
    Height = 532
    inherited Image2: TImage
      Width = 755
      ExplicitWidth = 755
    end
    inherited PageControlModeloCadastro: TPageControl
      Width = 825
      Height = 532
      inherited TabSheetCadastro: TTabSheet
        ExplicitWidth = 817
        ExplicitHeight = 504
        inherited PanelCadastro: TPanel
          Width = 817
          Height = 504
          ExplicitWidth = 817
          ExplicitHeight = 504
          object Label2: TLabel
            Left = 32
            Top = 24
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditCODIGO
          end
          object Label3: TLabel
            Left = 32
            Top = 112
            Width = 55
            Height = 13
            Caption = 'Quantidade'
            FocusControl = DBEdit1
          end
          object lbl12: TLabel
            Left = 32
            Top = 71
            Width = 55
            Height = 13
            Caption = 'Funcion'#225'rio'
          end
          object lbl1: TLabel
            Left = 32
            Top = 156
            Width = 62
            Height = 13
            Caption = 'Tipo de Hora'
          end
          object btn1: TSpeedButton
            Left = 291
            Top = 171
            Width = 23
            Height = 22
            Caption = '...'
            Flat = True
            OnClick = btn1Click
          end
          object Label4: TLabel
            Left = 32
            Top = 200
            Width = 62
            Height = 13
            Caption = 'Data do Fato'
          end
          object Label5: TLabel
            Left = 32
            Top = 248
            Width = 58
            Height = 13
            Caption = 'Observa'#231#227'o'
          end
          object Label6: TLabel
            Left = 380
            Top = 72
            Width = 33
            Height = 13
            Caption = 'Credito'
          end
          object Label7: TLabel
            Left = 380
            Top = 112
            Width = 31
            Height = 13
            Caption = 'Debito'
          end
          object Label8: TLabel
            Left = 380
            Top = 148
            Width = 27
            Height = 13
            Caption = 'Saldo'
          end
          object DBEditCODIGO: TDBEdit
            Left = 32
            Top = 40
            Width = 81
            Height = 21
            DataField = 'IDFUNC_BANCO_HORA'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 176
            Top = 114
            Width = 185
            Height = 33
            Caption = 'Contabiliza'#231#227'o:'
            Columns = 2
            DataField = 'CONTABILIZA'
            DataSource = DsCadastro
            Items.Strings = (
              'Cr'#233'dito'
              'D'#233'bito')
            TabOrder = 4
            Values.Strings = (
              'C'
              'D')
          end
          object DBEdit1: TDBEdit
            Left = 32
            Top = 128
            Width = 134
            Height = 21
            DataField = 'QUANTIDADE'
            DataSource = DsCadastro
            TabOrder = 3
          end
          object DBLookupComboBoxID_FUNCIONARIO: TDBLookupComboBox
            Left = 32
            Top = 87
            Width = 286
            Height = 21
            DataField = 'ID_FUNCIONARIO'
            DataSource = DsCadastro
            KeyField = 'ID_FUNCIONARIO'
            ListField = 'NOME_FUNCIONARIO'
            ListSource = DM.DsFuncionarioLista
            TabOrder = 1
          end
          object DBLookupComboBoxTipoHora: TDBLookupComboBox
            Left = 32
            Top = 172
            Width = 257
            Height = 21
            DataField = 'IDTIPO_HORA'
            DataSource = DsCadastro
            KeyField = 'IDTIPO_HORA'
            ListField = 'DESCRICAO'
            ListSource = DsTipoHora
            TabOrder = 5
          end
          object adpDBDateTimePicker1: TadpDBDateTimePicker
            Left = 32
            Top = 216
            Width = 105
            Height = 21
            Date = 41220.000000000000000000
            Time = 41220.000000000000000000
            TabOrder = 6
            DataField = 'DATA_FATO'
            DataSource = DsCadastro
            ReadOnly = False
          end
          object DBMemo1: TDBMemo
            Left = 32
            Top = 264
            Width = 593
            Height = 89
            DataField = 'OBSERVACAO'
            DataSource = DsCadastro
            TabOrder = 7
          end
          object Button1: TButton
            Left = 320
            Top = 88
            Width = 45
            Height = 20
            Caption = 'Busca'
            TabOrder = 2
            OnClick = Button1Click
          end
          object edtCredito: TDBEdit
            Left = 380
            Top = 88
            Width = 105
            Height = 21
            DataField = 'soma'
            DataSource = dsSomaCredito
            TabOrder = 8
          end
          object edtDebito: TDBEdit
            Left = 380
            Top = 125
            Width = 105
            Height = 21
            DataField = 'somaDedito'
            DataSource = dsSomadebito
            TabOrder = 9
          end
          object edtSoma: TEdit
            Left = 380
            Top = 164
            Width = 105
            Height = 21
            Enabled = False
            TabOrder = 10
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        ExplicitWidth = 817
        ExplicitHeight = 504
        inherited PanelLocalizaConsulta: TPanel
          Width = 817
          inherited Label1: TLabel
            Top = 12
            Visible = False
            ExplicitTop = 12
          end
          inherited EditLocalizar: TEdit
            Visible = False
          end
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
                FieldName = 'func'
                Title.Caption = 'Funcion'#225'rio'
                Width = 205
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANTIDADE'
                Title.Caption = 'Quantidade'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_FATO'
                Title.Caption = 'Data do Fato'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OBSERVACAO'
                Title.Caption = 'Observa'#231#227'o'
                Width = 254
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 940
  end
  inherited StatusBar1: TStatusBar
    Top = 564
    Width = 940
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM FUNC_BANCO_HORA'
      'order by idfunc_banco_hora'
      'desc')
    Top = 156
    object SqlCadastroIDFUNC_BANCO_HORA: TIntegerField
      FieldName = 'IDFUNC_BANCO_HORA'
      Required = True
    end
    object SqlCadastroID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object SqlCadastroCONTABILIZA: TStringField
      FieldName = 'CONTABILIZA'
      Size = 1
    end
    object SqlCadastroQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object SqlCadastroIDTIPO_HORA: TIntegerField
      FieldName = 'IDTIPO_HORA'
    end
    object SqlCadastroDATA_FATO: TSQLTimeStampField
      FieldName = 'DATA_FATO'
    end
    object SqlCadastroDATA_LANCAMENTO: TSQLTimeStampField
      FieldName = 'DATA_LANCAMENTO'
    end
    object SqlCadastroID_FUNCIONARIO_LANCAMENTO: TIntegerField
      FieldName = 'ID_FUNCIONARIO_LANCAMENTO'
    end
    object SqlCadastroOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 8192
    end
    object SqlCadastroFuncionario: TStringField
      FieldKind = fkLookup
      FieldName = 'Funcionario'
      LookupDataSet = DM.SqlFuncionarioLista
      LookupKeyFields = 'ID_FUNCIONARIO'
      LookupResultField = 'NOME_FUNCIONARIO'
      KeyFields = 'ID_FUNCIONARIO'
      Size = 50
      Lookup = True
    end
  end
  inherited CdsCadastro: TClientDataSet
    object CdsCadastroIDFUNC_BANCO_HORA: TIntegerField
      FieldName = 'IDFUNC_BANCO_HORA'
      Required = True
    end
    object CdsCadastroID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object CdsCadastroCONTABILIZA: TStringField
      FieldName = 'CONTABILIZA'
      Size = 1
    end
    object CdsCadastroQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object CdsCadastroIDTIPO_HORA: TIntegerField
      FieldName = 'IDTIPO_HORA'
    end
    object CdsCadastroDATA_FATO: TSQLTimeStampField
      FieldName = 'DATA_FATO'
    end
    object CdsCadastroDATA_LANCAMENTO: TSQLTimeStampField
      FieldName = 'DATA_LANCAMENTO'
    end
    object CdsCadastroID_FUNCIONARIO_LANCAMENTO: TIntegerField
      FieldName = 'ID_FUNCIONARIO_LANCAMENTO'
    end
    object CdsCadastroOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 8192
    end
    object CdsCadastrofunc: TStringField
      FieldKind = fkLookup
      FieldName = 'func'
      LookupDataSet = DM.CdsFuncionarioLista
      LookupKeyFields = 'ID_FUNCIONARIO'
      LookupResultField = 'NOME_FUNCIONARIO'
      KeyFields = 'ID_FUNCIONARIO'
      Size = 50
      Lookup = True
    end
    object CdsCadastroSOMA: TAggregateField
      FieldName = 'SOMA'
      DisplayName = ''
      Expression = 'SUM(quantidade)'
    end
  end
  object SqlTipoHora: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * '
      'FROM TIPO_HORA')
    SQLConnection = DM.SQLConnect
    Left = 596
    Top = 200
  end
  object DspTipoHora: TDataSetProvider
    DataSet = SqlTipoHora
    Left = 620
    Top = 200
  end
  object CdsTipoHora: TClientDataSet
    Aggregates = <>
    PacketRecords = 100
    Params = <>
    ProviderName = 'DspTipoHora'
    Left = 648
    Top = 200
    object CdsTipoHoraIDTIPO_HORA: TIntegerField
      FieldName = 'IDTIPO_HORA'
      Required = True
    end
    object CdsTipoHoraDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object DsTipoHora: TDataSource
    DataSet = CdsTipoHora
    OnDataChange = DsCadastroDataChange
    Left = 676
    Top = 200
  end
  object dspSomaCredito: TDataSetProvider
    DataSet = SQLSomaCredito
    Left = 611
    Top = 352
  end
  object cdsSomaCredito: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_FUNCIONARIO'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'dspSomaCredito'
    Left = 639
    Top = 352
    object cdsSomaCreditoIDFUNC_BANCO_HORA: TIntegerField
      FieldName = 'IDFUNC_BANCO_HORA'
      Required = True
    end
    object cdsSomaCreditoID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsSomaCreditoCONTABILIZA: TStringField
      FieldName = 'CONTABILIZA'
      Size = 1
    end
    object cdsSomaCreditoQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object cdsSomaCreditoIDTIPO_HORA: TIntegerField
      FieldName = 'IDTIPO_HORA'
    end
    object cdsSomaCreditoDATA_FATO: TSQLTimeStampField
      FieldName = 'DATA_FATO'
    end
    object cdsSomaCreditoDATA_LANCAMENTO: TSQLTimeStampField
      FieldName = 'DATA_LANCAMENTO'
    end
    object cdsSomaCreditoID_FUNCIONARIO_LANCAMENTO: TIntegerField
      FieldName = 'ID_FUNCIONARIO_LANCAMENTO'
    end
    object cdsSomaCreditoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 8192
    end
    object cdsSomaCreditosoma: TAggregateField
      FieldName = 'soma'
      Active = True
      DisplayName = ''
      Expression = 'sum(quantidade)'
    end
  end
  object dsSomaCredito: TDataSource
    DataSet = cdsSomaCredito
    Left = 667
    Top = 352
  end
  object dspSomaDebito: TDataSetProvider
    DataSet = SQLSomaDebito
    Left = 611
    Top = 380
  end
  object cdsSomaDebito: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'idfuncionario'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'dspSomaDebito'
    Left = 643
    Top = 380
    object cdsSomaDebitoIDFUNC_BANCO_HORA: TIntegerField
      FieldName = 'IDFUNC_BANCO_HORA'
      Required = True
    end
    object cdsSomaDebitoID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsSomaDebitoCONTABILIZA: TStringField
      FieldName = 'CONTABILIZA'
      Size = 1
    end
    object cdsSomaDebitoQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object cdsSomaDebitoIDTIPO_HORA: TIntegerField
      FieldName = 'IDTIPO_HORA'
    end
    object cdsSomaDebitoDATA_FATO: TSQLTimeStampField
      FieldName = 'DATA_FATO'
    end
    object cdsSomaDebitoDATA_LANCAMENTO: TSQLTimeStampField
      FieldName = 'DATA_LANCAMENTO'
    end
    object cdsSomaDebitoID_FUNCIONARIO_LANCAMENTO: TIntegerField
      FieldName = 'ID_FUNCIONARIO_LANCAMENTO'
    end
    object cdsSomaDebitoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 8192
    end
    object cdsSomaDebitosomaDedito: TAggregateField
      FieldName = 'somaDedito'
      Active = True
      DisplayName = ''
      Expression = 'sum (quantidade) '
    end
  end
  object dsSomadebito: TDataSource
    DataSet = cdsSomaDebito
    Left = 667
    Top = 380
  end
  object SQLSomaCredito: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT * FROM FUNC_BANCO_HORA'
      'WHERE CONTABILIZA = '#39'C'#39' AND ID_FUNCIONARIO = :ID_FUNCIONARIO'
      'order by idfunc_banco_hora desc')
    Left = 583
    Top = 352
    ParamData = <
      item
        Name = 'ID_FUNCIONARIO'
        ParamType = ptInput
      end>
  end
  object SQLSomaDebito: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT * FROM FUNC_BANCO_HORA'
      'WHERE CONTABILIZA = '#39'D'#39' AND ID_FUNCIONARIO = :idfuncionario'
      'order by idfunc_banco_hora desc')
    Left = 583
    Top = 380
    ParamData = <
      item
        Name = 'IDFUNCIONARIO'
        ParamType = ptInput
      end>
  end
end
