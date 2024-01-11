inherited FrmEventoProcesso: TFrmEventoProcesso
  Caption = 'Evento do Processo'
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
            Left = 24
            Top = 16
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditCODIGO
          end
          object Label4: TLabel
            Left = 24
            Top = 56
            Width = 23
            Height = 13
            Caption = 'Data'
          end
          object Label6: TLabel
            Left = 24
            Top = 176
            Width = 62
            Height = 13
            Caption = 'Expedido por'
            FocusControl = DBEdit5
          end
          object Label8: TLabel
            Left = 24
            Top = 136
            Width = 95
            Height = 13
            Caption = 'Motivo/Observa'#231#227'o'
            FocusControl = DBEdit7
          end
          object Label5: TLabel
            Left = 24
            Top = 96
            Width = 73
            Height = 13
            Caption = 'Tipo de Evento'
          end
          object SpeedButton1: TSpeedButton
            Left = 368
            Top = 112
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton1Click
          end
          object DBEditCODIGO: TDBEdit
            Left = 24
            Top = 32
            Width = 97
            Height = 21
            DataField = 'IDEVENTO_PROCESSO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 2
          end
          object DBEdit5: TDBEdit
            Left = 24
            Top = 192
            Width = 500
            Height = 21
            DataField = 'EXPEDIDO_POR'
            DataSource = DsCadastro
            TabOrder = 6
          end
          object DBEdit7: TDBEdit
            Left = 24
            Top = 152
            Width = 500
            Height = 21
            DataField = 'MOTIVO'
            DataSource = DsCadastro
            TabOrder = 5
          end
          object adpDBDateTimePicker1: TadpDBDateTimePicker
            Left = 24
            Top = 72
            Width = 97
            Height = 21
            Date = 41072.000000000000000000
            Time = 0.463762789353495500
            TabOrder = 3
            DataField = 'DATA'
            DataSource = DsCadastro
            ReadOnly = False
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 24
            Top = 112
            Width = 337
            Height = 21
            DataField = 'IDTIPO_EVENTO_PROCESO'
            DataSource = DsCadastro
            KeyField = 'IDTIPO_EVENTO_PROCESSO'
            ListField = 'DESCRICAO'
            ListSource = DsTipoEventoProcesso
            TabOrder = 4
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 136
            Top = 16
            Width = 185
            Height = 35
            Caption = 'Cumprido'
            Columns = 2
            DataField = 'CUMPRIDO'
            DataSource = DsCadastro
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 0
            Values.Strings = (
              'S'
              'N')
          end
          object DBRadioGroup2: TDBRadioGroup
            Left = 328
            Top = 16
            Width = 185
            Height = 35
            Caption = 'Arquivado'
            Columns = 2
            DataField = 'ARQUIVADO'
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
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT * '
      'FROM EVENTO_PROCESSO'
      'WHERE IDPROCESSO=:IDPROCESSO')
    ParamData = <
      item
        Name = 'IDPROCESSO'
        DataType = ftInteger
        ParamType = ptInput
        Value = -1
      end>
  end
  inherited CdsCadastro: TClientDataSet
    object CdsCadastroIDEVENTO_PROCESSO: TIntegerField
      FieldName = 'IDEVENTO_PROCESSO'
      Required = True
    end
    object CdsCadastroIDPROCESSO: TIntegerField
      FieldName = 'IDPROCESSO'
      Required = True
    end
    object CdsCadastroDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object CdsCadastroIDTIPO_EVENTO_PROCESO: TIntegerField
      FieldName = 'IDTIPO_EVENTO_PROCESO'
    end
    object CdsCadastroEXPEDIDO_POR: TStringField
      FieldName = 'EXPEDIDO_POR'
      Size = 100
    end
    object CdsCadastroCUMPRIDO: TStringField
      FieldName = 'CUMPRIDO'
      Size = 1
    end
    object CdsCadastroMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 100
    end
    object CdsCadastroARQUIVADO: TStringField
      FieldName = 'ARQUIVADO'
      Size = 1
    end
  end
  object DspTipoEventoProcesso: TDataSetProvider
    DataSet = SqlTipoEventoProcesso
    Left = 620
    Top = 200
  end
  object CdsTipoEventoProcesso: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspTipoEventoProcesso'
    Left = 648
    Top = 200
    object CdsCadastroIDTIPO_EVENTO_PROCESSO: TIntegerField
      FieldName = 'IDTIPO_EVENTO_PROCESSO'
      Required = True
    end
    object CdsCadastroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object DsTipoEventoProcesso: TDataSource
    DataSet = CdsTipoEventoProcesso
    OnDataChange = DsCadastroDataChange
    Left = 676
    Top = 200
  end
  object SqlTipoEventoProcesso: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT * '
      'FROM TIPO_EVENTO_PROCESSO')
    Left = 592
    Top = 200
  end
end
