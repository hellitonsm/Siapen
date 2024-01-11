inherited FrmCadastroServicoSocial: TFrmCadastroServicoSocial
  Left = 225
  Top = 123
  Caption = 'Cadastro Servi'#231'o Social'
  ClientHeight = 581
  ClientWidth = 932
  ExplicitWidth = 944
  ExplicitHeight = 639
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 523
    ExplicitHeight = 522
    inherited ToolBarModeloCadastro: TToolBar
      Height = 505
      ExplicitHeight = 504
    end
    inherited DBNavigator1: TDBNavigator
      Top = 505
      Hints.Strings = ()
      ExplicitTop = 504
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 817
    Height = 523
    ExplicitWidth = 813
    ExplicitHeight = 522
    inherited Image2: TImage
      Width = 836
      ExplicitWidth = 836
    end
    inherited PageControlModeloCadastro: TPageControl
      Width = 817
      Height = 523
      ActivePage = TabSheetCadastro
      ExplicitWidth = 813
      ExplicitHeight = 522
      inherited TabSheetCadastro: TTabSheet
        ExplicitWidth = 809
        ExplicitHeight = 495
        inherited PanelCadastro: TPanel
          Width = 809
          Height = 495
          ExplicitWidth = 809
          ExplicitHeight = 495
          inherited PageControlPrincipal: TPageControl
            Width = 807
            Height = 493
            ActivePage = TabSheet1
            ExplicitWidth = 807
            ExplicitHeight = 493
            inherited TabSheetPrincipal: TTabSheet
              ExplicitWidth = 799
              ExplicitHeight = 465
            end
            inherited TabSheetDadosGerais: TTabSheet
              ExplicitWidth = 799
              ExplicitHeight = 465
              inherited Label37: TLabel
                Enabled = True
              end
              inherited Label13: TLabel
                Enabled = True
              end
              inherited SpeedButton9: TSpeedButton
                Enabled = True
              end
              inherited Label28: TLabel
                Enabled = True
              end
              inherited Label30: TLabel
                Enabled = True
              end
              inherited Label31: TLabel
                Enabled = True
              end
              inherited Label32: TLabel
                Enabled = True
              end
              inherited Label33: TLabel
                Enabled = True
              end
              inherited Label34: TLabel
                Enabled = True
              end
              inherited Label35: TLabel
                Enabled = True
              end
              inherited SpeedButton11: TSpeedButton
                Enabled = True
              end
              inherited lbl2: TLabel
                Enabled = True
              end
              inherited btn1: TSpeedButton
                Enabled = True
              end
              inherited Label6: TLabel
                Enabled = True
              end
              inherited DBLookupComboBoxIDPROFISSAO: TDBLookupComboBox
                Enabled = True
              end
              inherited DBEdit10: TDBEdit
                Enabled = True
              end
              inherited DBEdit11: TDBEdit
                Enabled = True
              end
              inherited DBEdit12: TDBEdit
                Enabled = True
              end
              inherited DBEdit13: TDBEdit
                Enabled = True
              end
              inherited DBEdit14: TDBEdit
                Enabled = True
              end
              inherited DBEdit16: TDBEdit
                Enabled = True
              end
              inherited DBEdit17: TDBEdit
                Enabled = True
              end
              inherited DBLookupComboBoxIDCIDADE: TDBLookupComboBox
                Enabled = True
              end
              inherited DBLookupComboBoxIDNACIONALIDADE1: TDBLookupComboBox
                Enabled = True
              end
              inherited DBComboBoxReligiao1: TDBComboBox
                Enabled = True
              end
            end
            object TabSheet1: TTabSheet
              Caption = 'Servi'#231'o Social'
              ImageIndex = 2
              object Label53: TLabel
                Left = 7
                Top = 16
                Width = 62
                Height = 13
                Caption = 'Data do Fato'
              end
              object DateTimePickerHistorico: TDateTimePicker
                Left = 11
                Top = 35
                Width = 91
                Height = 21
                Date = 45258.000000000000000000
                Time = 0.302563541663403200
                TabOrder = 0
              end
              object MemoDescricao: TMemo
                Left = 108
                Top = 33
                Width = 565
                Height = 97
                TabOrder = 1
              end
              object Button1: TButton
                Left = 6
                Top = 106
                Width = 98
                Height = 25
                Caption = 'Incluir'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                OnClick = Button1Click
              end
              object DBGrid1: TDBGrid
                Left = 8
                Top = 181
                Width = 673
                Height = 129
                DataSource = DSServicoSocial
                TabOrder = 3
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'DATA'
                    Width = 69
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DESCRICAO'
                    Width = 478
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Funcion'#225'rio'
                    Visible = True
                  end>
              end
              object DBMemo1: TDBMemo
                Left = 8
                Top = 317
                Width = 673
                Height = 121
                DataField = 'DESCRICAO'
                DataSource = DSServicoSocial
                TabOrder = 4
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        ExplicitWidth = 809
        ExplicitHeight = 495
        inherited PanelLocalizaConsulta: TPanel
          Width = 809
          ExplicitWidth = 805
          inherited EditLocalizar: TEdit
            TabOrder = 1
          end
          inherited RadioGroupStatus: TRadioGroup
            Left = 698
            Width = 110
            TabOrder = 3
            ExplicitLeft = 694
            ExplicitWidth = 110
          end
          inherited chkSoundex: TCheckBox
            Width = 60
            TabOrder = 2
            ExplicitWidth = 60
          end
        end
        inherited PanelConsulta: TPanel
          Width = 809
          Height = 453
          ExplicitWidth = 805
          ExplicitHeight = 452
          inherited DBGridConsulta: TDBGrid
            Width = 807
            Height = 451
          end
          inherited DBCtrlGridConsulta: TDBCtrlGrid
            Width = 807
            Height = 451
            PanelWidth = 790
            ExplicitWidth = 803
            ExplicitHeight = 450
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 932
    ExplicitWidth = 928
  end
  inherited StatusBar1: TStatusBar
    Top = 555
    Width = 932
    ExplicitTop = 555
    ExplicitWidth = 932
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'select *'
      'from INTERNO'
      'where id_interno=:id_interno')
  end
  inherited SqlConsulta: TFDQuery
    SQL.Strings = (
      'select'
      '    interno.nome_interno,'
      '    interno.rgi,'
      '    INTERNO.VULGO,'
      '    FACCAO.FACCAO,'
      '    '#39#39' as  nome_interno_soundex,'
      '    unidade_penal.sigla,'
      '    pavilhao.pavilhao,'
      '    galeria.galeria,'
      '    solario.solario,'
      '    cela.cela,'
      '    interno.id_interno,'
      '    interno.id_up,'
      '    interno.idpavilhao,'
      '    interno.idgaleria,'
      '    interno.idsolario,'
      '    coalesce(interno.st,'#39#39') as st,'
      '    interno.numero_roupa,'
      '    iif(interno.st='#39'A'#39','#39'ATIVO'#39', '#39'INATIVO'#39') status,'
      '    interno.em_transito,'
      
        '    PROCEDENCIA.PROEDENCIA||'#39'/'#39'||coalesce(PROCEDENCIA.UF,'#39'UF'#39') A' +
        'S PROCEDENCIA,'
      
        '   IIF(TRIM(COALESCE(estado.estado,'#39#39'))='#39#39','#39'N'#195'O INFORMADO'#39',estad' +
        'o.estado) as ESTADO_SOLICITANTE'
      'from INTERNO'
      '   left join cela on (cela.id_cela = interno.idcela)'
      
        '   left join pavilhao on (interno.idpavilhao = pavilhao.id_pavil' +
        'hao)'
      
        '   left join unidade_penal on (pavilhao.id_up = unidade_penal.id' +
        '_up)'
      '   left join galeria on (interno.idgaleria = galeria.id_galeria)'
      '   left join solario on (interno.idsolario = solario.id_solario)'
      '   left join faccao on (interno.id_faccao = faccao.id_faccao)'
      
        '   LEFT JOIN PROCEDENCIA ON (INTERNO.ID_PROCEDENCIA = PROCEDENCI' +
        'A.ID_PROCEDENCIA)'
      
        '   LEFT JOIN  CIDADE ON (INTERNO.ID_SOLICITANTE_VAGA = CIDADE.ID' +
        '_CIDADE)'
      '   LEFT JOIN ESTADO ON (CIDADE.UF = ESTADO.UF)'
      'where coalesce(interno.nome_interno,'#39#39')<>'#39#39
      'ORDER BY INTERNO.NOME_INTERNO collate win_ptbr')
  end
  inherited SqlConsultaBackup: TFDQuery
    SQL.Strings = (
      'select '
      '    interno.nome_interno,'
      '    interno.rgi,'
      '    INTERNO.VULGO,'
      '    FACCAO.FACCAO,'
      '    '#39#39' as  nome_interno_soundex,'
      '    unidade_penal.sigla,'
      '    pavilhao.pavilhao,'
      '    galeria.galeria,'
      '    solario.solario,'
      '    cela.cela,'
      '    interno.id_interno,'
      '    interno.id_up,'
      '    interno.idpavilhao,'
      '    interno.idgaleria,'
      '    interno.idsolario,'
      '    coalesce(interno.st,'#39#39') as st,'
      '    interno.numero_roupa,'
      '    iif(interno.st='#39'A'#39','#39'ATIVO'#39', '#39'INATIVO'#39') status,'
      '    interno.em_transito,'
      
        '    PROCEDENCIA.PROEDENCIA||'#39'/'#39'||coalesce(PROCEDENCIA.UF,'#39'UF'#39') A' +
        'S PROCEDENCIA,'
      
        '   IIF(TRIM(COALESCE(estado.estado,'#39#39'))='#39#39','#39'N'#195'O INFORMADO'#39',estad' +
        'o.estado) as ESTADO_SOLICITANTE'
      'from INTERNO'
      '   left join cela on (cela.id_cela = interno.idcela)'
      
        '   left join pavilhao on (interno.idpavilhao = pavilhao.id_pavil' +
        'hao)'
      
        '   left join unidade_penal on (pavilhao.id_up = unidade_penal.id' +
        '_up)'
      '   left join galeria on (interno.idgaleria = galeria.id_galeria)'
      '   left join solario on (interno.idsolario = solario.id_solario)'
      '   left join faccao on (interno.id_faccao = faccao.id_faccao)'
      
        '   LEFT JOIN PROCEDENCIA ON (INTERNO.ID_PROCEDENCIA = PROCEDENCI' +
        'A.ID_PROCEDENCIA)'
      
        '   LEFT JOIN  CIDADE ON (INTERNO.ID_SOLICITANTE_VAGA = CIDADE.ID' +
        '_CIDADE)'
      '   LEFT JOIN ESTADO ON (CIDADE.UF = ESTADO.UF)'
      'where coalesce(interno.nome_interno,'#39#39')<>'#39#39)
  end
  inherited OpenDialogCapturarFoto: TOpenDialog
    Left = 711
  end
  object SQLServicoSocialold: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_INTERNO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM historico_servico_social'
      'WHERE ID_INTERNO = :ID_INTERNO'
      'order by data desc')
    SQLConnection = DM.SQLConnect
    Left = 576
    Top = 64
  end
  object DSPServicoSocial: TDataSetProvider
    DataSet = SQLServicoSocial
    Left = 612
    Top = 8
  end
  object CDSServicoSocial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPServicoSocial'
    Left = 640
    Top = 8
    object CDSServicoSocialID_HISTORICO_SERVICO_SOCIAL: TIntegerField
      FieldName = 'ID_HISTORICO_SERVICO_SOCIAL'
      Required = True
    end
    object CDSServicoSocialDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 8192
    end
    object CDSServicoSocialDATA: TSQLTimeStampField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object CDSServicoSocialID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object CDSServicoSocialID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object CDSServicoSocialFuncionrio: TStringField
      FieldKind = fkLookup
      FieldName = 'Funcion'#225'rio'
      LookupDataSet = DM.cdsfuncionario
      LookupKeyFields = 'ID_FUNCIONARIO'
      LookupResultField = 'NOME_FUNCIONARIO'
      KeyFields = 'ID_FUNCIONARIO'
      Size = 50
      Lookup = True
    end
  end
  object DSServicoSocial: TDataSource
    DataSet = CDSServicoSocial
    OnDataChange = DsCadastroDataChange
    Left = 668
    Top = 8
  end
  object SQLServicoSocial: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT * '
      'FROM HISTORICO_SERVICO_SOCIAL'
      'WHERE ID_INTERNO = :ID_INTERNO'
      'order by data desc'
      '')
    Left = 576
    Top = 8
    ParamData = <
      item
        Name = 'ID_INTERNO'
        ParamType = ptInput
      end>
  end
end
