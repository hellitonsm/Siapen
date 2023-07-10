inherited FrmComutacao: TFrmComutacao
  Left = 223
  Top = 143
  Caption = 'Comuta'#231#227'o'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    inherited PageControlModeloCadastro: TPageControl
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          object Label2: TLabel
            Left = 16
            Top = 11
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditCODIGO
          end
          object Label7: TLabel
            Left = 106
            Top = 11
            Width = 33
            Height = 13
            Caption = 'Interno'
          end
          object Label3: TLabel
            Left = 16
            Top = 55
            Width = 100
            Height = 13
            Caption = 'Data do Lan'#231'amento'
          end
          object Label4: TLabel
            Left = 16
            Top = 99
            Width = 21
            Height = 13
            Caption = 'Tipo'
          end
          object Label5: TLabel
            Left = 256
            Top = 189
            Width = 88
            Height = 13
            Caption = 'Descri'#231#227'o da Vara'
            FocusControl = DBEdit1
          end
          object Label6: TLabel
            Left = 160
            Top = 54
            Width = 88
            Height = 13
            Caption = 'Data da Libera'#231#227'o'
          end
          object Label78: TLabel
            Left = 47
            Top = 190
            Width = 30
            Height = 13
            Caption = 'Ano(s)'
          end
          object Label81: TLabel
            Left = 18
            Top = 190
            Width = 25
            Height = 13
            Caption = 'Pena'
          end
          object Label79: TLabel
            Left = 114
            Top = 190
            Width = 37
            Height = 13
            Caption = 'M'#234's(es)'
          end
          object Label80: TLabel
            Left = 181
            Top = 190
            Width = 27
            Height = 13
            Caption = 'Dia(s)'
          end
          object Label8: TLabel
            Left = 18
            Top = 235
            Width = 58
            Height = 13
            Caption = 'Observa'#231#227'o'
            FocusControl = DBEdit2
          end
          object Label139: TLabel
            Left = 16
            Top = 140
            Width = 42
            Height = 13
            Caption = 'Comarca'
          end
          object Label37: TLabel
            Left = 332
            Top = 140
            Width = 22
            Height = 13
            Caption = 'Vara'
          end
          object SpeedButton1: TSpeedButton
            Left = 599
            Top = 154
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton1Click
          end
          object DBEditCODIGO: TDBEdit
            Left = 16
            Top = 27
            Width = 81
            Height = 21
            DataField = 'ID_COMUTACAO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBLookupComboBoxNomeInterno: TDBLookupComboBox
            Left = 106
            Top = 27
            Width = 457
            Height = 21
            DataField = 'ID_INTERNO'
            DataSource = DsCadastro
            Enabled = False
            KeyField = 'ID_INTERNO'
            ListField = 'NOME_INTERNO'
            ListSource = DM.DsInterno
            TabOrder = 1
          end
          object adpDBDateTimePicker1: TadpDBDateTimePicker
            Left = 16
            Top = 71
            Width = 129
            Height = 21
            Date = 41073.216900474540000000
            Time = 41073.216900474540000000
            Enabled = False
            TabOrder = 3
            DataField = 'DATA'
            DataSource = DsCadastro
            ReadOnly = False
          end
          object DBComboBox1: TDBComboBox
            Left = 16
            Top = 115
            Width = 409
            Height = 21
            DataField = 'TIPO_COMUTACAO'
            DataSource = DsCadastro
            ItemHeight = 13
            Items.Strings = (
              'Comuta'#231#227'o'
              'Unifica'#231#227'o'
              'Redu'#231#227'o de Pena')
            TabOrder = 4
          end
          object DBEdit1: TDBEdit
            Left = 256
            Top = 205
            Width = 337
            Height = 21
            DataField = 'VARA'
            DataSource = DsCadastro
            TabOrder = 10
          end
          object adpDBDateTimePicker2: TadpDBDateTimePicker
            Left = 160
            Top = 70
            Width = 129
            Height = 21
            Date = 41073.216900474540000000
            Time = 41073.216900474540000000
            TabOrder = 2
            DataField = 'DATA_LIBERACAO'
            DataSource = DsCadastro
            ReadOnly = False
          end
          object DBEdit28: TDBEdit
            Left = 47
            Top = 205
            Width = 65
            Height = 21
            DataField = 'ANO'
            DataSource = DsCadastro
            TabOrder = 7
          end
          object DBEdit31: TDBEdit
            Left = 114
            Top = 205
            Width = 65
            Height = 21
            DataField = 'MES'
            DataSource = DsCadastro
            TabOrder = 8
          end
          object DBEdit33: TDBEdit
            Left = 181
            Top = 205
            Width = 65
            Height = 21
            DataField = 'DIA'
            DataSource = DsCadastro
            TabOrder = 9
          end
          object DBEdit2: TDBEdit
            Left = 18
            Top = 251
            Width = 600
            Height = 21
            DataField = 'OBSERVACAO'
            DataSource = DsCadastro
            TabOrder = 11
          end
          object DBGrid1: TDBGrid
            Left = 17
            Top = 304
            Width = 592
            Height = 104
            DataSource = DsProcesso
            ReadOnly = True
            TabOrder = 14
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'NPROCESSO'
                Title.Caption = 'Processo'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VARA'
                Title.Caption = 'Sigla da Vara'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_INICIO_CONDENACAO'
                Title.Caption = 'Inicio da Condena'#231#227'o'
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SITUACAOJURIDICA'
                Title.Caption = 'Situa'#231#227'o'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TOTAL_PENA_ANO'
                Title.Caption = 'Ano'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TOTAL_PENA_MES'
                Title.Caption = 'M'#234's'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TOTAL_PENA_DIA'
                Title.Caption = 'Dia'
                Width = 40
                Visible = True
              end>
          end
          object Button1: TButton
            Left = 20
            Top = 277
            Width = 189
            Height = 25
            Caption = 'Inserir Processos'
            TabOrder = 12
            OnClick = Button1Click
          end
          object Button2: TButton
            Left = 420
            Top = 277
            Width = 189
            Height = 25
            Caption = 'Deletar Processos'
            TabOrder = 13
            OnClick = Button2Click
          end
          object DBLookupComboBoxCOMARCA: TDBLookupComboBox
            Left = 16
            Top = 156
            Width = 308
            Height = 21
            DataField = 'IDCOMARCA'
            DataSource = DsCadastro
            KeyField = 'ID_CIDADE'
            ListField = 'CIDADE'
            ListSource = DsCidadeVara
            TabOrder = 5
          end
          object DBLookupComboBoxVara: TDBLookupComboBox
            Left = 332
            Top = 156
            Width = 266
            Height = 21
            DataField = 'ID_DESTINO_VARA'
            DataSource = DsCadastro
            KeyField = 'ID_DESTINO'
            ListField = 'DESTINO'
            ListSource = DsVara
            TabOrder = 6
            OnClick = DBLookupComboBoxVaraClick
          end
        end
      end
    end
  end
  inherited SqlCadastro: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_INTERNO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM COMUTACAO'
      'WHERE ID_INTERNO=:ID_INTERNO')
  end
  object SqlProcesso: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_COMUTACAO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT'
      'V.ID_VINC_COMUTACAO,'
      'V.ID_COMUTACAO,'
      'P.IDPROCESSO CODIGO,'
      'P.NPROCESSO,'
      'P.VARA,'
      'P.DATA_INICIO_CONDENACAO,'
      'UPPER(P.SITUACAOJURIDICA) SITUACAOJURIDICA,'
      'P.TOTAL_PENA_ANO,'
      'P.TOTAL_PENA_MES,'
      'P.TOTAL_PENA_DIA'
      'FROM PROCESSO P'
      'JOIN VINC_COMUTACAO V ON (V.IDPROCESSO=P.IDPROCESSO)'
      'WHERE COALESCE(P.SITUACAOJURIDICA,'#39'INQ'#39') NOT LIKE '#39'INQ%'#39
      'AND V.ID_COMUTACAO=:ID_COMUTACAO')
    SQLConnection = DM.SQLConnect
    Left = 551
    Top = 336
  end
  object DspProcesso: TDataSetProvider
    DataSet = SqlProcesso
    Left = 579
    Top = 336
  end
  object CdsProcesso: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_COMUTACAO'
    MasterFields = 'ID_COMUTACAO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspProcesso'
    Left = 607
    Top = 336
  end
  object DsProcesso: TDataSource
    DataSet = CdsProcesso
    OnDataChange = DsCadastroDataChange
    Left = 635
    Top = 336
  end
  object SqlCidadeVara: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ID_CIDADE, CIDADE ||'#39'-'#39'|| UF AS CIDADE'
      'FROM CIDADE'
      'where trim(coalesce(CIDADE ||'#39'-'#39'|| UF,'#39#39'))<>'#39#39
      'ORDER BY CIDADE ||'#39'-'#39'|| UF')
    Left = 584
    Top = 8
  end
  object DspCidadeVara: TDataSetProvider
    DataSet = SqlCidadeVara
    Left = 612
    Top = 8
  end
  object CdsCidadeVara: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspCidadeVara'
    Left = 640
    Top = 8
  end
  object DsCidadeVara: TDataSource
    DataSet = CdsCidadeVara
    Left = 668
    Top = 8
  end
  object DsVara: TDataSource
    DataSet = CdsVara
    Left = 668
    Top = 56
  end
  object CdsVara: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDCIDADE'
    MasterFields = 'ID_CIDADE'
    MasterSource = DsCidadeVara
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspVara'
    Left = 640
    Top = 56
  end
  object DspVara: TDataSetProvider
    DataSet = SqlVara
    Left = 612
    Top = 56
  end
  object SqlVara: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDCIDADE'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM DESTINO'
      'where TIPO_DESTINO='#39'VARA'#39
      'AND IDCIDADE=:IDCIDADE')
    SQLConnection = DM.SQLConnect
    Left = 584
    Top = 56
  end
end
