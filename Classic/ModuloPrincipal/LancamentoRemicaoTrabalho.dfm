inherited FrmLancamentoRemicaoTrabalho: TFrmLancamentoRemicaoTrabalho
  Left = 257
  Top = 131
  Height = 582
  Caption = 'Lan'#231'amento Remi'#231#227'o Trabalho'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 493
    inherited ToolBarModeloCadastro: TToolBar
      Height = 475
    end
    inherited DBNavigator1: TDBNavigator
      Top = 475
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Height = 493
    inherited PageControlModeloCadastro: TPageControl
      Height = 493
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Height = 465
          object Label2: TLabel
            Left = 24
            Top = 16
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditcodigo
          end
          object Label3: TLabel
            Left = 104
            Top = 16
            Width = 23
            Height = 13
            Caption = 'Data'
          end
          object Label4: TLabel
            Left = 211
            Top = 15
            Width = 70
            Height = 13
            Caption = 'Unidade Penal'
          end
          object Label5: TLabel
            Left = 24
            Top = 64
            Width = 55
            Height = 13
            Caption = 'Funcion'#225'rio'
          end
          object DBEditcodigo: TDBEdit
            Left = 24
            Top = 32
            Width = 73
            Height = 21
            DataField = 'ID_LANCAMENTO_REMICAO_TRABALHO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object adpDBDateTimePickerdata: TadpDBDateTimePicker
            Left = 104
            Top = 32
            Width = 97
            Height = 21
            Date = 41106.299291168980000000
            Time = 41106.299291168980000000
            TabOrder = 1
            ReadOnly = False
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 208
            Top = 32
            Width = 425
            Height = 21
            DataField = 'ID_UP'
            DataSource = DsCadastro
            Enabled = False
            KeyField = 'ID_UP'
            ListField = 'NOME_UP'
            ListSource = DM.DsUP
            TabOrder = 2
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 24
            Top = 80
            Width = 353
            Height = 21
            DataField = 'ID_FUNCIONARIO'
            DataSource = DsCadastro
            Enabled = False
            KeyField = 'ID_FUNCIONARIO'
            ListField = 'NOME_FUNCIONARIO'
            ListSource = DM.DsFuncionario
            TabOrder = 3
          end
          object PageControl1: TPageControl
            Left = 24
            Top = 128
            Width = 609
            Height = 313
            ActivePage = TabSheet1
            TabOrder = 4
            object TabSheet1: TTabSheet
              Caption = 'Remi'#231#227'o'
              object Label16: TLabel
                Left = 8
                Top = 71
                Width = 53
                Height = 13
                Caption = 'Data Inicial'
              end
              object Label17: TLabel
                Left = 112
                Top = 71
                Width = 48
                Height = 13
                Caption = 'Data Final'
              end
              object Label26: TLabel
                Left = 216
                Top = 70
                Width = 66
                Height = 13
                Caption = 'Dias Trabalho'
              end
              object Label6: TLabel
                Left = 136
                Top = 24
                Width = 33
                Height = 13
                Caption = 'Interno'
              end
              object Label9: TLabel
                Left = 8
                Top = 24
                Width = 48
                Height = 13
                Caption = 'Prontu'#225'rio'
              end
              object DateTimePickerdatainicial: TDateTimePicker
                Left = 8
                Top = 88
                Width = 97
                Height = 21
                Date = 41058.395588993060000000
                Time = 41058.395588993060000000
                TabOrder = 2
              end
              object DateTimePickerdatafinal: TDateTimePicker
                Left = 112
                Top = 88
                Width = 97
                Height = 21
                Date = 41058.395606736110000000
                Time = 41058.395606736110000000
                TabOrder = 3
              end
              object Editdiastrabalhado: TEdit
                Left = 217
                Top = 88
                Width = 102
                Height = 21
                TabOrder = 4
              end
              object DBGrid2: TDBGrid
                Left = 8
                Top = 144
                Width = 577
                Height = 120
                DataSource = dscalc_trabalho
                TabOrder = 6
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'Interno'
                    Width = 300
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DATA_INICIAL'
                    Title.Caption = 'Data Inicial'
                    Width = 79
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DATA_FINAL'
                    Title.Caption = 'Data Final'
                    Width = 78
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'QTDEDIASTRABALHADO'
                    Title.Caption = 'Dias Trabalhado'
                    Width = 84
                    Visible = True
                  end>
              end
              object BitBtn1: TBitBtn
                Left = 340
                Top = 77
                Width = 105
                Height = 33
                Caption = 'Inserir'
                Default = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 5
                OnClick = BitBtn1Click
                Glyph.Data = {
                  DE010000424DDE01000000000000760000002800000024000000120000000100
                  0400000000006801000000000000000000001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  3333333333333333333333330000333333333333333333333333F33333333333
                  00003333344333333333333333388F3333333333000033334224333333333333
                  338338F3333333330000333422224333333333333833338F3333333300003342
                  222224333333333383333338F3333333000034222A22224333333338F338F333
                  8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
                  33333338F83338F338F33333000033A33333A222433333338333338F338F3333
                  0000333333333A222433333333333338F338F33300003333333333A222433333
                  333333338F338F33000033333333333A222433333333333338F338F300003333
                  33333333A222433333333333338F338F00003333333333333A22433333333333
                  3338F38F000033333333333333A223333333333333338F830000333333333333
                  333A333333333333333338330000333333333333333333333333333333333333
                  0000}
                NumGlyphs = 2
              end
              object DBLookupComboBoxinterno: TDBLookupComboBox
                Left = 136
                Top = 40
                Width = 409
                Height = 21
                KeyField = 'ID_INTERNO'
                ListField = 'NOME_INTERNO'
                ListSource = DM.DsInterno
                TabOrder = 1
              end
              object Editprontuario: TEdit
                Left = 8
                Top = 40
                Width = 120
                Height = 21
                TabOrder = 0
                OnExit = EditprontuarioExit
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelConsulta: TPanel
          Height = 431
          inherited DBGridConsulta: TDBGrid
            Height = 429
          end
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 525
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM lancamento_remicao_trabalho'
      '')
    Left = 520
    Top = 8
  end
  inherited DspCadastro: TDataSetProvider
    Left = 548
    Top = 8
  end
  inherited CdsCadastro: TClientDataSet
    Left = 576
    Top = 8
  end
  inherited DsCadastro: TDataSource
    Left = 604
    Top = 8
  end
  object SQLcalc_trabalho: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_LANCAMENTO_REMICAO_TRABALHO'
        ParamType = ptUnknown
        Value = -1
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM calc_setor_trabalho'
      
        'where ID_LANCAMENTO_REMICAO_TRABALHO = :ID_LANCAMENTO_REMICAO_TR' +
        'ABALHO'
      'order by data_inicial desc')
    SQLConnection = DM.SQLConnect
    Left = 636
    Top = 121
  end
  object dspcalc_trabalho: TDataSetProvider
    DataSet = SQLcalc_trabalho
    Left = 660
    Top = 121
  end
  object cdscalc_trabalho: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_LANCAMENTO_REMICAO_TRABALHO'
    MasterFields = 'ID_LANCAMENTO_REMICAO_TRABALHO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspcalc_trabalho'
    Left = 689
    Top = 121
    object cdscalc_trabalhoIDCALC_SETOR_TRABALHO: TIntegerField
      FieldName = 'IDCALC_SETOR_TRABALHO'
      Required = True
    end
    object cdscalc_trabalhoID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object cdscalc_trabalhoDATA_INICIAL: TSQLTimeStampField
      FieldName = 'DATA_INICIAL'
    end
    object cdscalc_trabalhoDATA_FINAL: TSQLTimeStampField
      FieldName = 'DATA_FINAL'
    end
    object cdscalc_trabalhoQTDEDIASTRABALHADO: TFloatField
      FieldName = 'QTDEDIASTRABALHADO'
    end
    object cdscalc_trabalhoDIANAOREMIDO: TIntegerField
      FieldName = 'DIANAOREMIDO'
    end
    object cdscalc_trabalhoQTDEDIASREMIDO: TFloatField
      FieldName = 'QTDEDIASREMIDO'
    end
    object cdscalc_trabalhoDIASTRABALHADOEXTENSO: TStringField
      FieldName = 'DIASTRABALHADOEXTENSO'
      Size = 100
    end
    object cdscalc_trabalhoDIASREMIDOEXTENSO: TStringField
      FieldName = 'DIASREMIDOEXTENSO'
      Size = 100
    end
    object cdscalc_trabalhoTOTALDIASTRABALHO: TIntegerField
      FieldName = 'TOTALDIASTRABALHO'
    end
    object cdscalc_trabalhoTOTALDIASREMIDO: TIntegerField
      FieldName = 'TOTALDIASREMIDO'
    end
    object cdscalc_trabalhoID_SETOR_TRABALHO: TIntegerField
      FieldName = 'ID_SETOR_TRABALHO'
    end
    object cdscalc_trabalhoID_LANCAMENTO_REMICAO_TRABALHO: TIntegerField
      FieldName = 'ID_LANCAMENTO_REMICAO_TRABALHO'
    end
    object cdscalc_trabalhoInterno: TStringField
      FieldKind = fkLookup
      FieldName = 'Interno'
      LookupDataSet = DM.CdsInterno
      LookupKeyFields = 'ID_INTERNO'
      LookupResultField = 'NOME_INTERNO'
      KeyFields = 'ID_INTERNO'
      Size = 50
      Lookup = True
    end
  end
  object dscalc_trabalho: TDataSource
    DataSet = cdscalc_trabalho
    Left = 716
    Top = 121
  end
end
