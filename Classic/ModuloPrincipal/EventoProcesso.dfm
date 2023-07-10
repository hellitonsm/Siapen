inherited FrmEventoProcesso: TFrmEventoProcesso
  Height = 439
  Caption = 'Evento do Processo'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 350
    inherited ToolBarModeloCadastro: TToolBar
      Height = 332
    end
    inherited DBNavigator1: TDBNavigator
      Top = 332
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Height = 350
    inherited PageControlModeloCadastro: TPageControl
      Height = 350
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Height = 322
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
            Date = 41072.463762789350000000
            Time = 41072.463762789350000000
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
        inherited PanelConsulta: TPanel
          Height = 288
          inherited DBGridConsulta: TDBGrid
            Height = 286
          end
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 382
  end
  inherited SqlCadastro: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'IDPROCESSO'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM EVENTO_PROCESSO'
      'WHERE IDPROCESSO=:IDPROCESSO')
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
  object SqlTipoEventoProcesso: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * '
      'FROM TIPO_EVENTO_PROCESSO')
    SQLConnection = DM.SQLConnect
    Left = 592
    Top = 200
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
end
