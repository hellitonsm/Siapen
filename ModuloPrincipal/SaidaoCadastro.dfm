inherited FrmSaidaoCadastro: TFrmSaidaoCadastro
  Left = 261
  Top = 247
  Width = 882
  Height = 348
  Caption = 'Cadastro de Portaria do Said'#227'o'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 259
    inherited ToolBarModeloCadastro: TToolBar
      Height = 241
    end
    inherited DBNavigator1: TDBNavigator
      Top = 241
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 751
    Height = 259
    inherited PageControlModeloCadastro: TPageControl
      Width = 751
      Height = 259
      ActivePage = TabSheetCadastro
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 743
          Height = 231
          object Label2: TLabel
            Left = 10
            Top = 8
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditcodigo
          end
          object Label3: TLabel
            Left = 98
            Top = 8
            Width = 51
            Height = 13
            Caption = 'N'#186' Portaria'
            FocusControl = DBEdit2
          end
          object Label4: TLabel
            Left = 208
            Top = 8
            Width = 62
            Height = 13
            Caption = 'Data Portaria'
          end
          object Label5: TLabel
            Left = 502
            Top = 54
            Width = 55
            Height = 13
            Caption = 'Funcion'#225'rio'
          end
          object Label6: TLabel
            Left = 10
            Top = 56
            Width = 57
            Height = 13
            Caption = 'Tipo Said'#227'o'
          end
          object Label7: TLabel
            Left = 418
            Top = 8
            Width = 55
            Height = 13
            Caption = 'Data Sa'#237'da'
          end
          object Label8: TLabel
            Left = 529
            Top = 8
            Width = 64
            Height = 13
            Caption = 'Data Retorno'
          end
          object Label13: TLabel
            Left = 247
            Top = 55
            Width = 70
            Height = 13
            Caption = 'Unidade Penal'
          end
          object SpeedButton1: TSpeedButton
            Left = 222
            Top = 69
            Width = 23
            Height = 22
            Hint = 'Cadastrar Tipo Said'#227'o'
            Caption = '...'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton1Click
          end
          object lbl9: TLabel
            Left = 321
            Top = 10
            Width = 55
            Height = 13
            Caption = 'Hora Sa'#237'da'
          end
          object Label11: TLabel
            Left = 633
            Top = 8
            Width = 64
            Height = 13
            Caption = 'Hora Retorno'
          end
          object DBEditcodigo: TDBEdit
            Left = 10
            Top = 24
            Width = 81
            Height = 21
            DataField = 'ID_SAIDAO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 98
            Top = 24
            Width = 100
            Height = 21
            DataField = 'NUMERO_PORTARIA'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 245
            Top = 70
            Width = 252
            Height = 21
            DataField = 'ID_UP'
            DataSource = DsCadastro
            Enabled = False
            KeyField = 'ID_UP'
            ListField = 'NOME_UP'
            ListSource = DM.DsUP
            TabOrder = 8
          end
          object adpDBDateTimePicker1: TadpDBDateTimePicker
            Left = 418
            Top = 24
            Width = 103
            Height = 21
            Date = 41047.554883923610000000
            Time = 41047.554883923610000000
            TabOrder = 4
            DataField = 'DATA_SAIDA'
            DataSource = DsCadastro
            ReadOnly = False
          end
          object adpDBDateTimePicker2: TadpDBDateTimePicker
            Left = 208
            Top = 24
            Width = 105
            Height = 21
            Date = 41047.555191782410000000
            Time = 41047.555191782410000000
            TabOrder = 2
            DataField = 'DATA_PORTARIA'
            DataSource = DsCadastro
            ReadOnly = False
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 502
            Top = 70
            Width = 230
            Height = 21
            DataField = 'ID_FUNCIONARIO'
            DataSource = DsCadastro
            KeyField = 'ID_FUNCIONARIO'
            ListField = 'NOME_FUNCIONARIO'
            ListSource = DM.DsFuncionarioLista
            TabOrder = 9
          end
          object adpDBDateTimePicker3: TadpDBDateTimePicker
            Left = 527
            Top = 24
            Width = 98
            Height = 21
            Date = 41047.555759120370000000
            Time = 41047.555759120370000000
            TabOrder = 5
            DataField = 'DATA_RETORNO'
            DataSource = DsCadastro
            ReadOnly = False
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 10
            Top = 71
            Width = 215
            Height = 21
            DataField = 'ID_TIPO_SAIDAO'
            DataSource = DsCadastro
            KeyField = 'ID_TIPO_SAIDAO'
            ListField = 'TIPO_SAIDAO'
            ListSource = DM.Dstiposaidao
            TabOrder = 7
          end
          object DBEditHORA: TDBEdit
            Left = 321
            Top = 24
            Width = 88
            Height = 21
            DataField = 'HORA_SAIDA'
            DataSource = DsCadastro
            TabOrder = 3
          end
          object adpDBDateTimePicker4: TadpDBDateTimePicker
            Left = 631
            Top = 24
            Width = 98
            Height = 21
            Date = 41047.555759120370000000
            Time = 41047.555759120370000000
            Kind = dtkTime
            TabOrder = 6
            DataField = 'DATA_RETORNO'
            DataSource = DsCadastro
            ReadOnly = False
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 743
        end
        inherited PanelConsulta: TPanel
          Width = 743
          Height = 197
          inherited DBGridConsulta: TDBGrid
            Width = 741
            Height = 195
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 866
    inherited Image2: TImage
      Width = 866
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 291
    Width = 866
  end
  inherited SqlCadastro: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'id_up'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM Saidao'
      'where id_up = :id_up'
      'order by data_portaria desc')
    Left = 664
    Top = 16
  end
  inherited DspCadastro: TDataSetProvider
    Left = 692
    Top = 16
  end
  inherited CdsCadastro: TClientDataSet
    Left = 720
    Top = 16
  end
  inherited DsCadastro: TDataSource
    Left = 748
    Top = 16
  end
  object DSPvinc_saidao: TDataSetProvider
    DataSet = SQLvinc_saidao
    Left = 547
    Top = 16
  end
  object cdsvinc_saidao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'id_saidao'
    MasterFields = 'id_saidao'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPvinc_saidao'
    Left = 575
    Top = 16
    object cdsvinc_saidaoID_VINC_SAIDAO: TIntegerField
      FieldName = 'ID_VINC_SAIDAO'
      Required = True
    end
    object cdsvinc_saidaoID_SAIDAO: TIntegerField
      FieldName = 'ID_SAIDAO'
    end
    object cdsvinc_saidaoID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object cdsvinc_saidaoID_FUNCIONARIO_CANCELAMENTO: TIntegerField
      FieldName = 'ID_FUNCIONARIO_CANCELAMENTO'
    end
    object cdsvinc_saidaoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 50
    end
    object cdsvinc_saidaoDATA_CANCELAMENTO: TSQLTimeStampField
      DisplayLabel = 'Data Cancelamento'
      FieldName = 'DATA_CANCELAMENTO'
    end
    object cdsvinc_saidaoMOTIVO_CANCELAMENTO: TStringField
      DisplayLabel = 'Motivo Cancelamento'
      FieldName = 'MOTIVO_CANCELAMENTO'
      Size = 50
    end
    object cdsvinc_saidaoInterno: TStringField
      FieldKind = fkLookup
      FieldName = 'Interno'
      LookupDataSet = DM.CdsInterno
      LookupKeyFields = 'ID_INTERNO'
      LookupResultField = 'NOME_INTERNO'
      KeyFields = 'ID_INTERNO'
      Size = 50
      Lookup = True
    end
    object cdsvinc_saidaoPronturio: TStringField
      FieldKind = fkLookup
      FieldName = 'Prontu'#225'rio'
      LookupDataSet = DM.CdsInterno
      LookupKeyFields = 'ID_INTERNO'
      LookupResultField = 'RGI'
      KeyFields = 'ID_INTERNO'
      Size = 50
      Lookup = True
    end
    object cdsvinc_saidaoFuncionario: TStringField
      FieldKind = fkLookup
      FieldName = 'Funcionario'
      LookupDataSet = DM.cdsfuncionario
      LookupKeyFields = 'ID_FUNCIONARIO'
      LookupResultField = 'NOME_FUNCIONARIO'
      KeyFields = 'ID_FUNCIONARIO_CANCELAMENTO'
      Size = 50
      Lookup = True
    end
  end
  object dsvinc_saidao: TDataSource
    DataSet = cdsvinc_saidao
    Left = 603
    Top = 16
  end
  object SQLvinc_saidao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_saidao'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'select v.*'
      'from vinc_saidao v'
      'inner join interno i on (v.id_interno=i.id_interno)'
      'where v.id_saidao = :id_saidao'
      'order by  i.nome_interno')
    SQLConnection = DM.SQLConnect
    Left = 519
    Top = 16
  end
end
