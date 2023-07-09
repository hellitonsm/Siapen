inherited FrmVincFaltaDisiciplinar: TFrmVincFaltaDisiciplinar
  Left = 342
  Top = 170
  Width = 1024
  Height = 576
  Caption = 'Faltas do Interno'
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label27: TLabel [0]
    Left = 868
    Top = 372
    Width = 87
    Height = 13
    Caption = 'Data Condena'#231#227'o'
  end
  inherited PanelBotoes: TPanel
    Height = 488
    inherited ToolBarModeloCadastro: TToolBar
      Height = 470
    end
    inherited DBNavigator1: TDBNavigator
      Top = 470
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 893
    Height = 488
    inherited PageControlModeloCadastro: TPageControl
      Width = 893
      Height = 488
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 885
          Height = 460
          object Label15: TLabel
            Left = 24
            Top = 56
            Width = 74
            Height = 13
            Caption = 'Falta Disciplinar'
          end
          object Label2: TLabel
            Left = 24
            Top = 16
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditId
          end
          object Label8: TLabel
            Left = 193
            Top = 16
            Width = 63
            Height = 13
            Caption = 'N'#250'mero Doc.'
            FocusControl = DBEditNumeroPdi
          end
          object Label4: TLabel
            Left = 431
            Top = 16
            Width = 33
            Height = 13
            Caption = 'Interno'
          end
          object Label20: TLabel
            Left = 108
            Top = 176
            Width = 81
            Height = 13
            Caption = 'Data Inst portaria'
          end
          object Label21: TLabel
            Left = 200
            Top = 176
            Width = 43
            Height = 13
            Caption = 'Natureza'
          end
          object Label3: TLabel
            Left = 25
            Top = 232
            Width = 42
            Height = 13
            Caption = 'Situa'#231#227'o'
          end
          object Label5: TLabel
            Left = 160
            Top = 232
            Width = 74
            Height = 13
            Caption = 'Data Resultado'
          end
          object Label6: TLabel
            Left = 248
            Top = 232
            Width = 48
            Height = 13
            Caption = 'Resultado'
          end
          object Label9: TLabel
            Left = 382
            Top = 232
            Width = 123
            Height = 13
            Caption = 'Tipo de san'#231#227'o disciplinar'
          end
          object Label10: TLabel
            Left = 547
            Top = 232
            Width = 79
            Height = 13
            Caption = 'Inicio Isolamento'
          end
          object Label16: TLabel
            Left = 774
            Top = 232
            Width = 84
            Height = 13
            Caption = 'Qtde Dias Isolado'
          end
          object Label17: TLabel
            Left = 442
            Top = 280
            Width = 120
            Height = 13
            Caption = 'Classifica'#231#227'o da Conduta'
          end
          object Label19: TLabel
            Left = 624
            Top = 280
            Width = 85
            Height = 13
            Caption = 'Data Reabilita'#231#227'o'
          end
          object Label22: TLabel
            Left = 442
            Top = 322
            Width = 88
            Height = 13
            Caption = 'Tipo procedimento'
          end
          object Label29: TLabel
            Left = 264
            Top = 340
            Width = 50
            Height = 13
            Caption = 'Conclus'#227'o'
          end
          object Label23: TLabel
            Left = 716
            Top = 322
            Width = 106
            Height = 13
            Hint = 'Data em que foi instaurado o procedimento'
            Caption = 'Data do Procedimento'
          end
          object Label18: TLabel
            Left = 612
            Top = 322
            Width = 65
            Height = 13
            Caption = 'N'#250'mero Proc.'
            FocusControl = DBEditDataReabilitacao
          end
          object Label30: TLabel
            Left = 734
            Top = 280
            Width = 102
            Height = 13
            Caption = 'Data da Condena'#231#227'o'
          end
          object Label7: TLabel
            Left = 24
            Top = 348
            Width = 22
            Height = 13
            Caption = 'OBS'
          end
          object Label25: TLabel
            Left = 24
            Top = 176
            Width = 75
            Height = 13
            Caption = 'Data Incid'#234'ncia'
          end
          object Label26: TLabel
            Left = 663
            Top = 232
            Width = 85
            Height = 13
            Caption = 'Fim do Isolamento'
          end
          object DBEditId: TDBEdit
            Left = 24
            Top = 32
            Width = 157
            Height = 21
            DataField = 'ID_VINC_FALTA_DISCIPLINAR'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEditNumeroPdi: TDBEdit
            Left = 193
            Top = 32
            Width = 208
            Height = 21
            DataField = 'NUMERO_PDI'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 1
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 428
            Top = 32
            Width = 425
            Height = 21
            DataField = 'ID_INTERNO'
            DataSource = DsCadastro
            Enabled = False
            KeyField = 'ID_INTERNO'
            ListField = 'NOME_INTERNO'
            ListSource = DM.DsInterno
            TabOrder = 2
          end
          object DBLookupComboBoxFaltaDisciplinar: TDBLookupComboBox
            Left = 24
            Top = 72
            Width = 829
            Height = 21
            DataField = 'id_falta_disciplinar'
            DataSource = DsCadastro
            KeyField = 'id_falta_disciplinar'
            ListField = 'falta_disciplinar'
            ListSource = Dsfaltadisciplinar
            TabOrder = 3
          end
          object Memo1: TMemo
            Left = 24
            Top = 97
            Width = 826
            Height = 72
            Enabled = False
            Lines.Strings = (
              '')
            TabOrder = 4
          end
          object GroupBox1: TGroupBox
            Left = 540
            Top = 172
            Width = 337
            Height = 53
            TabOrder = 5
            object Label12: TLabel
              Left = 4
              Top = 8
              Width = 54
              Height = 13
              Caption = 'Data Inicio '
            end
            object Label14: TLabel
              Left = 118
              Top = 8
              Width = 47
              Height = 13
              Caption = 'Qtde Dias'
              FocusControl = DBEditQtddias
            end
            object Label13: TLabel
              Left = 207
              Top = 8
              Width = 42
              Height = 13
              Caption = 'Data Fim'
            end
            object DBEditQtddias: TDBEdit
              Left = 118
              Top = 23
              Width = 81
              Height = 21
              Hint = 'Quantidade de dias de isolamento preventivo'
              DataField = 'QTDE_DIAS_ISOLAMENTO'
              DataSource = DsCadastro
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnExit = DBEditQtddiasExit
            end
            object DBEditDataFimIsolPrev: TDBEdit
              Left = 208
              Top = 24
              Width = 101
              Height = 21
              Hint = 'Data final do isolamento preventivo do interno'
              DataField = 'dt_fim_isolamento'
              DataSource = DsCadastro
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnExit = DBEditDataIncidenciaExit
              OnKeyPress = DBEditDataIncidenciaKeyPress
            end
            object DBEditDataInicioIsolPrev: TDBEdit
              Left = 4
              Top = 24
              Width = 105
              Height = 21
              Hint = 'Data inicial do isolamento preventivo do interno'
              DataField = 'dt_inicio_isolamento'
              DataSource = DsCadastro
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              OnExit = DBEditDataIncidenciaExit
              OnKeyPress = DBEditDataIncidenciaKeyPress
            end
          end
          object DBRadioGroupPreventivo: TDBRadioGroup
            Left = 432
            Top = 172
            Width = 109
            Height = 53
            Hint = 'Selecionar se houve isolamento preventio ou n'#227'o'
            Caption = 'Preventivo'
            Columns = 2
            DataField = 'Preventivo'
            DataSource = DsCadastro
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentShowHint = False
            ShowHint = True
            TabOrder = 6
            Values.Strings = (
              'S'
              'N')
            OnClick = DBRadioGroupPreventivoClick
          end
          object DBComboBoxResultado: TDBComboBox
            Left = 247
            Top = 248
            Width = 130
            Height = 21
            Hint = 'Resultado do PDI'
            DataField = 'RESULTADO'
            DataSource = DsCadastro
            ItemHeight = 13
            Items.Strings = (
              ''
              'ARQUIVADO'
              'ABSOLVIDO'
              'CONDENADO'
              'EXTINTO')
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
          end
          object DBComboBoxTipoSancao: TDBComboBox
            Left = 383
            Top = 248
            Width = 158
            Height = 21
            Hint = 'Tipo de san'#231#227'o disciplinar a ser aplicada ao interno'
            DataField = 'TIPO_SANCAO'
            DataSource = DsCadastro
            ItemHeight = 13
            Items.Strings = (
              ''
              'ADVERT'#202'NCIA VERBAL'
              'REPREENS'#195'O'
              'SUSPENS'#195'O OU RESTRI'#199#195'O DE DIREITOS'
              'ISOLAMENTO CELULAR')
            ParentShowHint = False
            ShowHint = True
            TabOrder = 8
          end
          object DBComboBoxClassificacaoConduta: TDBComboBox
            Left = 442
            Top = 296
            Width = 174
            Height = 21
            DataField = 'classificacao_conduta'
            DataSource = DsCadastro
            ItemHeight = 13
            Items.Strings = (
              ''
              #211'TIMA'
              'BOA'
              'REGULAR'
              'M'#193)
            TabOrder = 9
          end
          object DBRadioGroupHomologado: TDBRadioGroup
            Left = 336
            Top = 280
            Width = 101
            Height = 53
            Caption = 'Homologacao'
            Columns = 2
            DataField = 'homologacao'
            DataSource = DsCadastro
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 10
            Values.Strings = (
              'S'
              'N')
          end
          object GroupBoxRecurso: TGroupBox
            Left = 132
            Top = 280
            Width = 197
            Height = 53
            TabOrder = 11
            object Label24: TLabel
              Left = 12
              Top = 24
              Width = 92
              Height = 13
              Caption = 'Decis'#227'o do recurso'
            end
            object Label11: TLabel
              Left = 3
              Top = 8
              Width = 92
              Height = 13
              Caption = 'Decis'#227'o do recurso'
            end
            object DBComboBoxDecisaoRecurso: TDBComboBox
              Left = 3
              Top = 24
              Width = 179
              Height = 21
              DataField = 'DECISAO_RECURSO'
              DataSource = DsCadastro
              ItemHeight = 13
              Items.Strings = (
                ''
                'IMPROCEDENTE'
                'PARCIALMENTE PROCEDENTE'
                'PRECEDENTE')
              TabOrder = 0
            end
          end
          object DBRadioGroupRecurso: TDBRadioGroup
            Left = 24
            Top = 280
            Width = 109
            Height = 53
            Caption = 'Recurso'
            Columns = 2
            DataField = 'recurso'
            DataSource = DsCadastro
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 12
            Values.Strings = (
              'S'
              'N')
            OnClick = DBRadioGroupRecursoClick
          end
          object DBComboBoxSituacao: TDBComboBox
            Left = 24
            Top = 248
            Width = 129
            Height = 21
            Hint = 'Situa'#231#227'o ao qual se encontra o PDI'
            Style = csDropDownList
            DataField = 'CONCLUSAOCD'
            DataSource = DsCadastro
            ItemHeight = 13
            Items.Strings = (
              'ANDAMENTO'
              'CONCLUIDO/ARQUIVADO'
              'CONCLUIDO'
              'RECURSO')
            TabOrder = 13
          end
          object DBEditDataReabilitacao: TDBEdit
            Left = 624
            Top = 296
            Width = 101
            Height = 21
            Hint = 'Dia em que come'#231'ou o isolamento'
            DataField = 'data_reabilitacao'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 14
          end
          object DBMemo1: TDBMemo
            Left = 20
            Top = 364
            Width = 841
            Height = 89
            DataField = 'OBS'
            DataSource = DsCadastro
            TabOrder = 15
          end
          object DBEditDataIncidencia: TDBEdit
            Left = 24
            Top = 192
            Width = 77
            Height = 21
            Hint = 'Dia em que ocorreu o fato'
            DataField = 'Data_Incidencia'
            DataSource = DsCadastro
            ParentShowHint = False
            ShowHint = True
            TabOrder = 16
            OnExit = DBEditDataIncidenciaExit
            OnKeyPress = DBEditDataIncidenciaKeyPress
          end
          object DBEditDataInstPortaria: TDBEdit
            Left = 108
            Top = 192
            Width = 85
            Height = 21
            Hint = 'Data ao qual foi instaurada a portaria'
            DataField = 'data_Inst_Portaria'
            DataSource = DsCadastro
            ParentShowHint = False
            ShowHint = True
            TabOrder = 17
            OnExit = DBEditDataIncidenciaExit
            OnKeyPress = DBEditDataIncidenciaKeyPress
          end
          object DBEditDataInicio: TDBEdit
            Left = 548
            Top = 248
            Width = 101
            Height = 21
            Hint = 'Data Inicial do isolamento do interno'
            DataField = 'Data_Inicio_Isolamento'
            DataSource = DsCadastro
            ParentShowHint = False
            ShowHint = True
            TabOrder = 18
            OnExit = DBEditDataIncidenciaExit
            OnKeyPress = DBEditDataIncidenciaKeyPress
          end
          object DBEditDataResultado: TDBEdit
            Left = 160
            Top = 248
            Width = 85
            Height = 21
            Hint = 'Data do resultado do PDI'
            DataField = 'Data_resultado'
            DataSource = DsCadastro
            ParentShowHint = False
            ShowHint = True
            TabOrder = 19
            OnExit = DBEditDataIncidenciaExit
            OnKeyPress = DBEditDataIncidenciaKeyPress
          end
          object DBEditDataFimIsol: TDBEdit
            Left = 660
            Top = 248
            Width = 101
            Height = 21
            Hint = 'Data final do isolamento do interno'
            DataField = 'Data_fim_Isolamento'
            DataSource = DsCadastro
            ParentShowHint = False
            ShowHint = True
            TabOrder = 20
            OnExit = DBEditDataIncidenciaExit
            OnKeyPress = DBEditDataIncidenciaKeyPress
          end
          object DBEditQuantidadeDias: TDBEdit
            Left = 772
            Top = 248
            Width = 81
            Height = 21
            Hint = 'Quantidades de dias em que o interno ficar'#225' isolado'
            DataField = 'quantidade_dias_isolamento'
            DataSource = DsCadastro
            ParentShowHint = False
            ShowHint = True
            TabOrder = 21
          end
          object DBEditDataCondenacao: TDBEdit
            Left = 734
            Top = 296
            Width = 101
            Height = 21
            Hint = 'Data da Condena'#231#227'o do interno'
            DataField = 'data_condenacao'
            DataSource = DsCadastro
            ParentShowHint = False
            ShowHint = True
            TabOrder = 22
            OnExit = DBEditDataIncidenciaExit
            OnKeyPress = DBEditDataIncidenciaKeyPress
          end
          object DBEditNumProcesso: TDBEdit
            Left = 612
            Top = 338
            Width = 85
            Height = 21
            Hint = 'N'#250'mero do processo'
            DataField = 'numero'
            DataSource = DsCadastro
            ParentShowHint = False
            ShowHint = True
            TabOrder = 23
            OnExit = DBEditDataIncidenciaExit
            OnKeyPress = DBEditDataIncidenciaKeyPress
          end
          object DBComboBoxTipo: TDBComboBox
            Left = 442
            Top = 338
            Width = 158
            Height = 21
            DataField = 'tipo'
            DataSource = DsCadastro
            ItemHeight = 13
            Items.Strings = (
              ''
              #211'TIMA'
              'BOA'
              'REGULAR'
              'M'#193)
            TabOrder = 24
          end
          object DBEditDataProcedimento: TDBEdit
            Left = 716
            Top = 338
            Width = 101
            Height = 21
            Hint = 'Data em que foi instaurado o procedimento'
            DataField = 'data_instauracao'
            DataSource = DsCadastro
            ParentShowHint = False
            ShowHint = True
            TabOrder = 25
            OnExit = DBEditDataIncidenciaExit
            OnKeyPress = DBEditDataIncidenciaKeyPress
          end
          object DBEditConclusao: TDBEdit
            Left = 316
            Top = 337
            Width = 121
            Height = 21
            DataField = 'status'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 26
          end
          object DBEditNatureza: TDBEdit
            Left = 200
            Top = 192
            Width = 213
            Height = 21
            DataField = 'tipoFalta'
            DataSource = Dsfaltadisciplinar
            Enabled = False
            TabOrder = 27
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 926
        end
        inherited PanelConsulta: TPanel
          Width = 926
          Height = 426
          inherited DBGridConsulta: TDBGrid
            Width = 924
            Height = 424
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 1008
    inherited Image2: TImage
      Width = 1008
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 520
    Width = 1008
    Height = 18
  end
  inherited SqlCadastro: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'falta'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM vinc_falta_disciplinar'
      'where id_vinc_falta_disciplinar = :falta')
    SQLConnection = DM.SQLConnect
    Left = 496
    Top = 16
  end
  inherited DspCadastro: TDataSetProvider
    Left = 524
    Top = 16
  end
  inherited CdsCadastro: TClientDataSet
    Left = 552
    Top = 16
  end
  inherited DsCadastro: TDataSource
    Left = 580
    Top = 16
  end
  object Sqlfaltadisciplinar: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT  first 44 f.falta_disciplinar, f.id_falta_disciplinar, f.' +
        'tipofalta'
      'FROM falta_disciplinar f'
      'order by f.id_falta_disciplinar')
    SQLConnection = DM.SQLConnect
    Left = 336
    Top = 24
  end
  object Dspfaltadisciplinar: TDataSetProvider
    DataSet = Sqlfaltadisciplinar
    Left = 364
    Top = 24
  end
  object Cdsfaltadisciplinar: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'Dspfaltadisciplinar'
    Left = 392
    Top = 24
  end
  object Dsfaltadisciplinar: TDataSource
    DataSet = Cdsfaltadisciplinar
    Left = 420
    Top = 24
  end
end
