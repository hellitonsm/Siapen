inherited FrmCalculoTrabalho: TFrmCalculoTrabalho
  Left = 122
  Top = 128
  Caption = 'C'#225'lculo Dias Trabalhado'
  ClientHeight = 553
  ClientWidth = 808
  ExplicitWidth = 820
  ExplicitHeight = 591
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 502
    ExplicitHeight = 501
    inherited ToolBarModeloCadastro: TToolBar
      Height = 484
      ExplicitHeight = 483
    end
    inherited DBNavigator1: TDBNavigator
      Top = 484
      Hints.Strings = ()
      ExplicitTop = 483
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 693
    Height = 502
    ExplicitWidth = 689
    ExplicitHeight = 501
    inherited Image2: TImage
      Width = 812
      ExplicitWidth = 812
    end
    inherited PageControlModeloCadastro: TPageControl
      Width = 693
      Height = 502
      ActivePage = TabSheetCadastro
      ExplicitWidth = 689
      ExplicitHeight = 501
      inherited TabSheetCadastro: TTabSheet
        ExplicitWidth = 685
        ExplicitHeight = 474
        inherited PanelCadastro: TPanel
          Width = 685
          Height = 474
          ExplicitWidth = 681
          ExplicitHeight = 473
          object Label2: TLabel
            Left = 16
            Top = 16
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditid
          end
          object Label3: TLabel
            Left = 72
            Top = 16
            Width = 63
            Height = 13
            Caption = 'ID INTERNO'
            FocusControl = DBEdit2
          end
          object Label4: TLabel
            Left = 16
            Top = 103
            Width = 69
            Height = 13
            Caption = 'DATA INICIAL'
            FocusControl = DBEdit3
          end
          object Label5: TLabel
            Left = 96
            Top = 103
            Width = 62
            Height = 13
            Caption = 'DATA FINAL'
            FocusControl = DBEdit4
          end
          object Label7: TLabel
            Left = 96
            Top = -80
            Width = 49
            Height = 13
            Caption = 'INTERNO'
          end
          object Label6: TLabel
            Left = 424
            Top = 102
            Width = 101
            Height = 13
            Caption = 'DIAS TRABALHADO'
            FocusControl = DBEdit1
          end
          object Label9: TLabel
            Left = 536
            Top = 102
            Width = 71
            Height = 13
            Caption = 'DIAS REMIDO'
            FocusControl = DBEdit6
          end
          object Label8: TLabel
            Left = 355
            Top = 58
            Width = 124
            Height = 13
            Caption = 'TOTAL DIAS TRABALHO'
            FocusControl = DBEdit5
          end
          object Label12: TLabel
            Left = 499
            Top = 58
            Width = 109
            Height = 13
            Caption = 'TOTAL DIAS REMIDO'
            FocusControl = DBEdit9
          end
          object Label13: TLabel
            Left = 16
            Top = 58
            Width = 98
            Height = 13
            Caption = 'SETOR TRABALHO'
          end
          object Label10: TLabel
            Left = 144
            Top = 16
            Width = 49
            Height = 13
            Caption = 'INTERNO'
          end
          object DBEditid: TDBEdit
            Left = 16
            Top = 32
            Width = 49
            Height = 21
            DataField = 'IDCALC_SETOR_TRABALHO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 72
            Top = 32
            Width = 65
            Height = 21
            DataField = 'ID_INTERNO'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 16
            Top = 119
            Width = 73
            Height = 21
            DataField = 'DATA_INICIAL'
            DataSource = DsCadastro
            TabOrder = 6
          end
          object DBEdit4: TDBEdit
            Left = 96
            Top = 119
            Width = 73
            Height = 21
            DataField = 'DATA_FINAL'
            DataSource = DsCadastro
            TabOrder = 7
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 144
            Top = 32
            Width = 489
            Height = 21
            DataField = 'ID_INTERNO'
            DataSource = DsCadastro
            KeyField = 'ID_INTERNO'
            ListField = 'NOME_INTERNO'
            ListSource = DM.DsInterno
            TabOrder = 2
          end
          object DBEdit1: TDBEdit
            Left = 424
            Top = 118
            Width = 105
            Height = 21
            DataField = 'QTDEDIASTRABALHADO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 10
          end
          object DBEdit6: TDBEdit
            Left = 536
            Top = 118
            Width = 97
            Height = 21
            DataField = 'QTDEDIASREMIDO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 11
          end
          object Button1: TButton
            Left = 334
            Top = 113
            Width = 75
            Height = 25
            Caption = 'Calcular'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            OnClick = Button1Click
          end
          object GroupBox1: TGroupBox
            Left = 173
            Top = 103
            Width = 156
            Height = 37
            Caption = 'N'#195'O REMIR'
            TabOrder = 8
            object CHDomingo: TCheckBox
              Left = 82
              Top = 15
              Width = 63
              Height = 17
              Caption = 'Domingo'
              TabOrder = 1
            end
            object CHsabado: TCheckBox
              Left = 13
              Top = 16
              Width = 60
              Height = 17
              Caption = 'S'#225'bado'
              TabOrder = 0
            end
          end
          object DBEdit5: TDBEdit
            Left = 355
            Top = 74
            Width = 134
            Height = 21
            DataField = 'TOTALDIASTRABALHO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 4
          end
          object DBEdit9: TDBEdit
            Left = 499
            Top = 74
            Width = 134
            Height = 21
            DataField = 'TOTALDIASREMIDO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 5
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 16
            Top = 74
            Width = 329
            Height = 21
            DataField = 'ID_SETOR_TRABALHO'
            DataSource = DsCadastro
            KeyField = 'ID_SETOR_TRABALHO'
            ListField = 'SETOR_TRABALHO'
            ListSource = DM.DsSetorTrabalho
            TabOrder = 3
          end
          object PageControl1: TPageControl
            Left = 8
            Top = 192
            Width = 625
            Height = 193
            ActivePage = TabSheet1
            TabOrder = 13
            object TabSheet1: TTabSheet
              Caption = 'Remiss'#245'es'
              object DBGrid1: TDBGrid
                Left = 16
                Top = 24
                Width = 585
                Height = 120
                DataSource = DScalc_trabalho_itens
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'DATA_INICIAL'
                    Width = 70
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DATA_FINAL'
                    Width = 63
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Setor Trabalho'
                    Width = 243
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DiasTrabalhado'
                    Width = 93
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DiasRemido'
                    Width = 81
                    Visible = True
                  end>
              end
            end
          end
          object Button2: TButton
            Left = 256
            Top = 160
            Width = 137
            Height = 25
            Caption = 'Inserir Calculo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
            OnClick = Button2Click
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        ExplicitWidth = 685
        ExplicitHeight = 474
        inherited PanelLocalizaConsulta: TPanel
          Width = 685
          ExplicitWidth = 685
        end
        inherited PanelConsulta: TPanel
          Width = 685
          Height = 440
          ExplicitWidth = 685
          ExplicitHeight = 440
          inherited DBGridConsulta: TDBGrid
            Width = 683
            Height = 438
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 808
    ExplicitWidth = 804
  end
  inherited StatusBar1: TStatusBar
    Top = 534
    Width = 808
    ExplicitTop = 534
    ExplicitWidth = 808
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM calc_setor_trabalho')
    Left = 584
    Top = 64
  end
  inherited DspCadastro: TDataSetProvider
    Left = 612
    Top = 64
  end
  inherited CdsCadastro: TClientDataSet
    Left = 640
    Top = 64
  end
  inherited DsCadastro: TDataSource
    Left = 668
    Top = 64
  end
  object SQLcalc_trabalho_itensold: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * '
      'FROM calc_trabalho_itens')
    SQLConnection = DM.SQLConnect
    Left = 456
    Top = 16
  end
  object DSPcalc_trabalho_itens: TDataSetProvider
    DataSet = SQLcalc_trabalho_itens
    Left = 484
    Top = 16
  end
  object CDScalc_trabalho_itens: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CALC_TRABALHO'
    MasterFields = 'IDCALC_SETOR_TRABALHO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPcalc_trabalho_itens'
    Left = 512
    Top = 16
    object CDScalc_trabalho_itensID_CALC_TRABALHO_ITENS: TIntegerField
      FieldName = 'ID_CALC_TRABALHO_ITENS'
      Required = True
    end
    object CDScalc_trabalho_itensID_CALC_TRABALHO: TIntegerField
      FieldName = 'ID_CALC_TRABALHO'
    end
    object CDScalc_trabalho_itensDATA_INICIAL: TSQLTimeStampField
      DisplayLabel = 'Data Inicial'
      FieldName = 'DATA_INICIAL'
    end
    object CDScalc_trabalho_itensDATA_FINAL: TSQLTimeStampField
      DisplayLabel = 'Data Final'
      FieldName = 'DATA_FINAL'
    end
    object CDScalc_trabalho_itensID_SETOR_TRABALHO: TIntegerField
      FieldName = 'ID_SETOR_TRABALHO'
    end
    object CDScalc_trabalho_itensDIASTRABALHADO: TIntegerField
      FieldName = 'DiasTrabalhado'
    end
    object CDScalc_trabalho_itensDIASREMIDO: TIntegerField
      FieldName = 'DiasRemido'
    end
    object CDScalc_trabalho_itensSetorTrabalho: TStringField
      FieldKind = fkLookup
      FieldName = 'Setor Trabalho'
      LookupDataSet = DM.SqlSetorTrabalho
      LookupKeyFields = 'ID_SETOR_TRABALHO'
      LookupResultField = 'SETOR_TRABALHO'
      KeyFields = 'ID_SETOR_TRABALHO'
      Size = 50
      Lookup = True
    end
  end
  object DScalc_trabalho_itens: TDataSource
    DataSet = CDScalc_trabalho_itens
    OnDataChange = DsCadastroDataChange
    Left = 540
    Top = 16
  end
  object SQLcalc_trabalho_itens: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT * '
      'FROM CALC_TRABALHO_ITENS'
      'WHERE CALC_TRABALHO_ITENS.ID_SETOR_TRABALHO <> NULL')
    Left = 351
    Top = 130
  end
end
