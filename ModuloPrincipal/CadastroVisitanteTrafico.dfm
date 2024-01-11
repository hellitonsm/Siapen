inherited FrmVisitanteTrafico: TFrmVisitanteTrafico
  Left = 203
  Top = 138
  Caption = 'Cadastro de Visitantes envolvidos com Tr'#225'fico'
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
      Width = 779
      ExplicitWidth = 779
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
            Left = 8
            Top = 8
            Width = 48
            Height = 13
            Caption = 'C'#243'digo: '
            FocusControl = DBEditcodigo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 10
            Top = 128
            Width = 123
            Height = 13
            Caption = 'Ocorr'#234'ncia Prisional: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 112
            Top = 8
            Width = 36
            Height = 13
            Caption = 'Data: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 250
            Top = 8
            Width = 56
            Height = 13
            Caption = 'Servidor: '
            FocusControl = DBEditcodigo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 9
            Top = 167
            Width = 69
            Height = 13
            Caption = 'Observa'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 9
            Top = 91
            Width = 112
            Height = 13
            Caption = 'Selecione o Interno'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 9
            Top = 54
            Width = 218
            Height = 13
            Caption = 'Fa'#231'a a busca pela nome do visitante: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEditcodigo: TDBEdit
            Left = 8
            Top = 24
            Width = 97
            Height = 21
            DataField = 'ID_VISITANTE_TRAFICO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object adpDBDateTimePicker1: TadpDBDateTimePicker
            Left = 112
            Top = 24
            Width = 137
            Height = 21
            Date = 41220.000000000000000000
            Time = 0.644300439817016000
            TabOrder = 1
            DataField = 'DATA'
            DataSource = DsCadastro
            ReadOnly = False
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 251
            Top = 23
            Width = 373
            Height = 21
            DataField = 'ID_FUNCIONARIO'
            DataSource = DsCadastro
            KeyField = 'ID_FUNCIONARIO'
            ListField = 'NOME_FUNCIONARIO'
            ListSource = DM.DsFuncionarioLista
            TabOrder = 2
          end
          object DBMemo1: TDBMemo
            Left = 10
            Top = 182
            Width = 633
            Height = 123
            DataField = 'OBS'
            DataSource = DsCadastro
            TabOrder = 3
          end
          object dblookupcomboboxvisitante: TDBLookupComboBox
            Left = 8
            Top = 68
            Width = 600
            Height = 21
            DataField = 'ID_VISITANTE'
            DataSource = DsCadastro
            KeyField = 'ID_VISITANTE'
            ListField = 'VISITANTE'
            ListSource = DsVisitante
            TabOrder = 4
          end
          object Button7: TButton
            Left = 609
            Top = 67
            Width = 45
            Height = 20
            Caption = 'Busca'
            TabOrder = 5
            OnClick = Button7Click
          end
          object DBLookupComboBoxInterno: TDBLookupComboBox
            Left = 8
            Top = 106
            Width = 600
            Height = 21
            DataField = 'ID_INTERNO'
            DataSource = DsCadastro
            KeyField = 'ID_INTERNO'
            ListField = 'NOME_INTERNO'
            ListSource = DsInterno
            TabOrder = 6
          end
          object Button1: TButton
            Left = 609
            Top = 105
            Width = 45
            Height = 20
            Caption = 'Busca'
            TabOrder = 7
            OnClick = Button1Click
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 9
            Top = 143
            Width = 599
            Height = 21
            DataField = 'ID_OCORRENCIA_PLANTAO'
            DataSource = DsCadastro
            KeyField = 'ID_OCORRENCIA_PLANTAO'
            ListField = 'Ocorrencia'
            ListSource = DsOcorrencia
            TabOrder = 8
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
    SQL.Strings = (
      'select * from visitante_trafico'
      'order by ID_VISITANTE_TRAFICO desc ')
    Left = 520
  end
  inherited DspCadastro: TDataSetProvider
    Left = 588
    Top = 64
  end
  inherited CdsCadastro: TClientDataSet
    Left = 656
    Top = 64
    object CdsCadastroID_VISITANTE_TRAFICO: TIntegerField
      FieldName = 'ID_VISITANTE_TRAFICO'
      Required = True
    end
    object CdsCadastroID_VISITANTE: TIntegerField
      FieldName = 'ID_VISITANTE'
    end
    object CdsCadastroID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object CdsCadastroID_OCORRENCIA_PLANTAO: TIntegerField
      FieldName = 'ID_OCORRENCIA_PLANTAO'
    end
    object CdsCadastroDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object CdsCadastroID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object CdsCadastroID_UP: TIntegerField
      FieldName = 'ID_UP'
    end
    object CdsCadastroOBS: TStringField
      FieldName = 'OBS'
      Size = 2000
    end
  end
  inherited DsCadastro: TDataSource
    Top = 64
  end
  object DspOcorrencia: TDataSetProvider
    DataSet = SqlOcorrencia
    Left = 663
    Top = 200
  end
  object CdsOcorrencia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspOcorrencia'
    Left = 695
    Top = 200
  end
  object DsOcorrencia: TDataSource
    DataSet = CdsOcorrencia
    Left = 727
    Top = 200
  end
  object DspInterno: TDataSetProvider
    DataSet = SqlInterno
    Left = 813
    Top = 152
  end
  object CdsInterno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspInterno'
    Left = 841
    Top = 152
  end
  object DsInterno: TDataSource
    DataSet = CdsInterno
    Left = 869
    Top = 152
  end
  object DspVisitanteInterno: TDataSetProvider
    DataSet = SqlVisitanteInterno
    Left = 895
    Top = 224
  end
  object CdsVisitanteInterno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspVisitanteInterno'
    Left = 803
    Top = 280
    object CdsVisitanteInternoID_VISITANTE_INTERNO: TIntegerField
      FieldName = 'ID_VISITANTE_INTERNO'
      Required = True
    end
    object CdsVisitanteInternoID_VISITANTE: TIntegerField
      FieldName = 'ID_VISITANTE'
      Required = True
    end
    object CdsVisitanteInternoID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
      Required = True
    end
    object CdsVisitanteInternoID_GRAU_PARENTESCO: TIntegerField
      FieldName = 'ID_GRAU_PARENTESCO'
      Required = True
    end
  end
  object DsVisitanteInterno: TDataSource
    DataSet = CdsVisitanteInterno
    Left = 897
    Top = 279
  end
  object DspVisitante: TDataSetProvider
    DataSet = SqlVisitante
    Left = 815
    Top = 104
  end
  object CdsVisitante: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspVisitante'
    Left = 855
    Top = 104
  end
  object DsVisitante: TDataSource
    DataSet = CdsVisitante
    Left = 895
    Top = 104
  end
  object SqlOcorrencia: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      
        'SELECT o.id_ocorrencia_plantao, o.id_ocorrencia_plantao||'#39': Natu' +
        'reza:'#39'||n.natureza_ocorrencia as "Ocorrencia"'
      'FROM ocorrencia_plantao o'
      
        'inner join natureza_ocorrencia n on (o.id_natureza_ocorrencia = ' +
        'n.id_natureza_ocorrencia)'
      'WHERE ID_UP = :ID_UP'
      'and coalesce(assunto,'#39#39')<>'#39#39
      'order by o.id_ocorrencia_plantao desc'
      '')
    Left = 631
    Top = 200
    ParamData = <
      item
        Name = 'ID_UP'
        ParamType = ptInput
      end>
  end
  object SqlInterno: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT id_interno, nome_interno||'#39': MAE:'#39'||MAE as "nome_interno"'
      'FROM INTERNO'
      'WHERE ID_UP = :ID_UP'
      'and coalesce(nome_interno,'#39#39')<>'#39#39
      'AND ST = '#39'A'#39
      'ORDER BY NOME_INTERNO')
    Left = 786
    Top = 153
    ParamData = <
      item
        Name = 'ID_UP'
        ParamType = ptInput
      end>
  end
  object SqlVisitanteInterno: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from visitante_interno')
    Left = 799
    Top = 224
  end
  object SqlVisitante: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select '
      'v.id_visitante, v.visitante, v.status, v.motivo_inativo'
      'from visitante v'
      'where id_visitante=:id_visitante')
    Left = 775
    Top = 104
    ParamData = <
      item
        Name = 'ID_VISITANTE'
        ParamType = ptInput
      end>
  end
end
