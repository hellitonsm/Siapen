inherited FrmCadastroOcorrenciaPlantao: TFrmCadastroOcorrenciaPlantao
  Left = 329
  Top = 56
  Width = 744
  Height = 726
  Caption = 'Cadastro de Ocorr'#234'ncias Plant'#227'o (Vers. 2013.1)'
  Menu = MainMenu1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 615
    inherited ToolBarModeloCadastro: TToolBar
      Height = 597
      inherited Fechar: TToolButton
        Wrap = True
      end
      object Imprimir: TToolButton
        Left = 6
        Top = 228
        Caption = 'Imprimir'
        ImageIndex = 44
        Wrap = True
        OnClick = ImprimirClick
      end
    end
    inherited DBNavigator1: TDBNavigator
      Top = 597
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 613
    Height = 615
    inherited PageControlModeloCadastro: TPageControl
      Width = 613
      Height = 615
      ActivePage = TabSheetCadastro
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 605
          Height = 587
          object Label9: TLabel
            Left = 7
            Top = 101
            Width = 115
            Height = 13
            Caption = 'Auxiliar de Adjunto: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 8
            Top = 480
            Width = 73
            Height = 13
            Caption = 'Observa'#231#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 9
            Top = 525
            Width = 62
            Height = 13
            Caption = 'Despacho:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 10
            Top = 32
            Width = 128
            Height = 13
            Caption = 'N'#250'mero da Ocorr'#234'ncia'
            FocusControl = DBEditcodigo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 8
            Top = 151
            Width = 50
            Height = 13
            Caption = 'Assunto:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 6
            Top = 311
            Width = 67
            Height = 16
            Caption = 'Hist'#243'rico:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 163
            Top = 32
            Width = 83
            Height = 13
            Caption = 'Data do In'#237'cio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 359
            Top = 32
            Width = 77
            Height = 13
            Caption = 'Data do Final'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LabelLOGIN: TLabel
            Left = 7
            Top = -2
            Width = 372
            Height = 31
            Alignment = taCenter
            AutoSize = False
            Caption = '-----------------------------'
            Color = clBlack
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clLime
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object LabelUP: TLabel
            Left = 381
            Top = 1
            Width = 161
            Height = 28
            Alignment = taCenter
            AutoSize = False
            Caption = '-----------------------------'
            Color = clBlack
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clLime
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object Label4: TLabel
            Left = 9
            Top = 170
            Width = 105
            Height = 13
            Caption = 'Pront. do Interno: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 7
            Top = 124
            Width = 140
            Height = 13
            Caption = 'Natureza da Ocorr'#234'ncia:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 8
            Top = 77
            Width = 52
            Height = 13
            Caption = 'Adjunto: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEditcodigo: TDBEdit
            Left = 10
            Top = 48
            Width = 134
            Height = 21
            DataField = 'ID_OCORRENCIA_PLANTAO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit1: TDBEdit
            Left = 58
            Top = 145
            Width = 487
            Height = 21
            DataField = 'ASSUNTO'
            DataSource = DsCadastro
            TabOrder = 5
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 118
            Top = 97
            Width = 427
            Height = 21
            DataField = 'ID_FUNC_AUX'
            DataSource = DsCadastro
            KeyField = 'ID_FUNCIONARIO'
            ListField = 'NOME_FUNCIONARIO'
            ListSource = DM.DsFuncionarioLista
            TabOrder = 3
          end
          object adpDBDateTimePicker1: TadpDBDateTimePicker
            Left = 162
            Top = 48
            Width = 186
            Height = 21
            Date = 41144.617721956020000000
            Time = 41144.617721956020000000
            TabOrder = 1
            DataField = 'DATA_INICIO'
            DataSource = DsCadastro
            ReadOnly = False
          end
          object adpDBDateTimePicker2: TadpDBDateTimePicker
            Left = 358
            Top = 48
            Width = 186
            Height = 21
            Date = 41144.617844247690000000
            Time = 41144.617844247690000000
            TabOrder = 2
            DataField = 'DATA_FINAL'
            DataSource = DsCadastro
            ReadOnly = False
          end
          object DBMemo1: TDBMemo
            Left = 5
            Top = 327
            Width = 564
            Height = 153
            DataField = 'OCORRENCIA'
            DataSource = DsCadastro
            TabOrder = 10
          end
          object DBMemo3: TDBMemo
            Left = 8
            Top = 538
            Width = 561
            Height = 47
            DataField = 'DESPACHO'
            DataSource = DsCadastro
            TabOrder = 12
          end
          object DBMemo2: TDBMemo
            Left = 8
            Top = 494
            Width = 561
            Height = 30
            DataField = 'OBS'
            DataSource = DsCadastro
            TabOrder = 11
          end
          object DBGrid1: TDBGrid
            Left = 6
            Top = 208
            Width = 401
            Height = 103
            DataSource = DSHistOcoInt
            TabOrder = 9
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'Pront'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Nome_Interno'
                Width = 319
                Visible = True
              end>
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 109
            Top = 184
            Width = 435
            Height = 21
            KeyField = 'ID_INTERNO'
            ListField = 'NOME_INTERNO'
            ListSource = DsInterno
            TabOrder = 7
          end
          object EditProntuario: TEdit
            Left = 8
            Top = 184
            Width = 97
            Height = 21
            TabOrder = 6
            OnExit = EditprontuarioExit
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 147
            Top = 120
            Width = 398
            Height = 21
            DataField = 'ID_NATUREZA_OCORRENCIA'
            DataSource = DsCadastro
            KeyField = 'ID_NATUREZA_OCORRENCIA'
            ListField = 'NATUREZA_OCORRENCIA'
            ListSource = DSNaturezaOcorrencia
            TabOrder = 4
          end
          object Button1: TButton
            Left = 550
            Top = 121
            Width = 21
            Height = 19
            Caption = '...'
            TabOrder = 13
            OnClick = Button1Click
          end
          object DBLookupComboBox4: TDBLookupComboBox
            Left = 62
            Top = 73
            Width = 483
            Height = 21
            DataField = 'ID_FUNCIONARIO'
            DataSource = DsCadastro
            KeyField = 'ID_FUNCIONARIO'
            ListField = 'NOME_FUNCIONARIO'
            ListSource = DM.DsFuncionarioLista
            TabOrder = 14
          end
          object ButtonInserir: TButton
            Left = 409
            Top = 208
            Width = 133
            Height = 47
            Caption = 'Inserir Interno(s)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
            OnClick = ButtonInserirClick
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 605
          Height = 57
          inherited Label1: TLabel
            Left = 43
            Top = 37
            Width = 513
            Caption = 
              'Ap'#243's localizar o registro desejado d'#234' um duplo clique para o ace' +
              'ssar na tela de cadastro!!'
            Font.Color = clRed
            Font.Style = [fsBold]
            ParentFont = False
          end
          inherited EditLocalizar: TEdit
            Left = 199
            Top = 5
            Width = 318
          end
          object RadioGroupTipoLocalizar: TRadioGroup
            Left = 4
            Top = -4
            Width = 195
            Height = 34
            Columns = 2
            ItemIndex = 0
            Items.Strings = (
              'N'#186' Ocorr'#234'ncia'
              'Assunto')
            TabOrder = 1
          end
          object Button2: TButton
            Left = 522
            Top = 4
            Width = 75
            Height = 25
            Caption = 'Localizar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = Button2Click
          end
        end
        inherited PanelConsulta: TPanel
          Top = 57
          Width = 605
          Height = 530
          inherited DBGridConsulta: TDBGrid
            Left = 0
            Width = 601
            Height = 528
            Hint = 'D'#234' um duplo clique no registro desejado para ir ao cadastro!'
            Align = alCustom
            DataSource = DsConsulta
            ParentShowHint = False
            ShowHint = True
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 728
    inherited Image2: TImage
      Width = 728
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 647
    Width = 728
    Height = 21
  end
  inherited ImageListCadastro: TImageList
    Left = 776
    Top = 0
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      
        'SELECT ID_OCORRENCIA_PLANTAO, ASSUNTO, OCORRENCIA, DATA_INICIO, ' +
        'DATA_FINAL, ID_FUNCIONARIO,'
      'ID_UP, DESPACHO, OBS, ID_FUNC_AUX, ID_NATUREZA_OCORRENCIA'
      'FROM OCORRENCIA_PLANTAO'
      'ORDER BY ID_OCORRENCIA_PLANTAO')
    Left = 576
    Top = 0
  end
  inherited DspCadastro: TDataSetProvider
    Top = 0
  end
  inherited CdsCadastro: TClientDataSet
    Left = 664
    Top = 0
    object CdsCadastroID_OCORRENCIA_PLANTAO: TIntegerField
      FieldName = 'ID_OCORRENCIA_PLANTAO'
      Required = True
    end
    object CdsCadastroASSUNTO: TStringField
      FieldName = 'ASSUNTO'
      Size = 1000
    end
    object CdsCadastroOCORRENCIA: TStringField
      FieldName = 'OCORRENCIA'
      Size = 16386
    end
    object CdsCadastroDATA_INICIO: TSQLTimeStampField
      FieldName = 'DATA_INICIO'
    end
    object CdsCadastroDATA_FINAL: TSQLTimeStampField
      FieldName = 'DATA_FINAL'
    end
    object CdsCadastroID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      Required = True
    end
    object CdsCadastroID_UP: TIntegerField
      FieldName = 'ID_UP'
      Required = True
    end
    object CdsCadastroDESPACHO: TStringField
      FieldName = 'DESPACHO'
      Size = 5000
    end
    object CdsCadastroOBS: TStringField
      FieldName = 'OBS'
      Size = 1000
    end
    object CdsCadastroID_FUNC_AUX: TIntegerField
      FieldName = 'ID_FUNC_AUX'
    end
    object CdsCadastroID_NATUREZA_OCORRENCIA: TIntegerField
      FieldName = 'ID_NATUREZA_OCORRENCIA'
      Required = True
    end
  end
  inherited DsCadastro: TDataSource
    Left = 708
    Top = 0
  end
  object SqlHistOcoInt: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_ocorrencia'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT ho.id_hist_oc, ho.id_interno, ho.id_ocorrencia_plantao, h' +
        'o.data, i.rgi'
      'FROM HISTORICO_OCORRENCIA_INTERNO ho'
      'INNER JOIN INTERNO I ON (ho.id_interno = i.id_interno)'
      'where id_ocorrencia_plantao = :id_ocorrencia')
    Left = 478
    Top = 388
  end
  object CdsHistOcoInt: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'id_ocorrencia_plantao'
    MasterFields = 'id_ocorrencia_plantao'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspHistOcoInt'
    Left = 591
    Top = 384
    object CdsHistOcoIntPront: TStringField
      FieldKind = fkLookup
      FieldName = 'Pront'
      LookupDataSet = CdsInterno
      LookupKeyFields = 'ID_INTERNO'
      LookupResultField = 'RGI'
      KeyFields = 'ID_INTERNO'
      Size = 30
      Lookup = True
    end
    object CdsHistOcoIntNome_Interno: TStringField
      FieldKind = fkLookup
      FieldName = 'Nome_Interno'
      LookupDataSet = CdsInterno
      LookupKeyFields = 'ID_INTERNO'
      LookupResultField = 'NOME_INTERNO'
      KeyFields = 'ID_INTERNO'
      Size = 50
      Lookup = True
    end
    object CdsHistOcoIntID_HIST_OC: TIntegerField
      FieldName = 'ID_HIST_OC'
      Required = True
    end
    object CdsHistOcoIntID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
      Required = True
    end
    object CdsHistOcoIntID_OCORRENCIA_PLANTAO: TIntegerField
      FieldName = 'ID_OCORRENCIA_PLANTAO'
      Required = True
    end
    object CdsHistOcoIntDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object CdsHistOcoIntRGI: TStringField
      FieldName = 'RGI'
      Size = 30
    end
  end
  object DspHistOcoInt: TDataSetProvider
    DataSet = SqlHistOcoInt
    Left = 536
    Top = 402
  end
  object DSHistOcoInt: TDataSource
    DataSet = CdsHistOcoInt
    Left = 647
    Top = 403
  end
  object SqlNaturezaOcorrencia: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select *'
      'from NATUREZA_OCORRENCIA'
      'order by natureza_ocorrencia')
    SQLConnection = DM.SQLConnect
    Left = 160
    Top = 397
  end
  object CdsNaturezaOcorrencia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspNaturezaOcorrencia'
    Left = 241
    Top = 415
    object CdsNaturezaOcorrenciaNATUREZA_OCORRENCIA: TStringField
      FieldName = 'NATUREZA_OCORRENCIA'
      Size = 200
    end
    object CdsNaturezaOcorrenciaID_NATUREZA_OCORRENCIA: TIntegerField
      FieldName = 'ID_NATUREZA_OCORRENCIA'
      Required = True
    end
  end
  object DspNaturezaOcorrencia: TDataSetProvider
    DataSet = SqlNaturezaOcorrencia
    Left = 243
    Top = 464
  end
  object DSNaturezaOcorrencia: TDataSource
    DataSet = CdsNaturezaOcorrencia
    Left = 159
    Top = 448
  end
  object MainMenu1: TMainMenu
    Left = 407
    Top = 120
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object Especficos1: TMenuItem
        Caption = 'Espec'#237'ficos'
        OnClick = Especficos1Click
      end
    end
  end
  object SqlConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select id_ocorrencia_plantao, assunto, ocorrencia, data_inicio, ' +
        'data_final'
      'from ocorrencia_plantao'
      ' ')
    SQLConnection = DM.SQLConnect
    Left = 521
    Top = 175
  end
  object DspConsulta: TDataSetProvider
    DataSet = SqlConsulta
    Left = 552
    Top = 175
  end
  object CdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspConsulta'
    Left = 593
    Top = 175
  end
  object DsConsulta: TDataSource
    DataSet = CdsConsulta
    Left = 629
    Top = 175
  end
  object FrxOcorrrenciaPlantao: TfrxReport
    Version = '4.3.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39864.392612476900000000
    ReportOptions.LastChange = 41381.478912986100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                                                            '
      
        '// memo11.text :='#39'RELA'#199#195'O DE MUDAN'#199'AS DE CELA - PER'#205'ODO   '#39'+ dat' +
        'etostr(dateedit2.date)+'#39#39'+'#39'   a   '#39'+'#39#39'+datetostr(dateedit1.date)' +
        ';'
      '// memo3.text := '#39'Bras'#237'lia-DF, '#39'+ datetostr(dateedit1.date);'
      'end;'
      '  '
      'procedure DialogPage1OnShow(Sender: TfrxComponent);'
      'begin'
      '  Database.Params.LoadFromFile('#39'..\config\dbxconnections.ini'#39');'
      '  SqlOcorrencia.Open;'
      '  while not SqlOcorrencia.EOF do'
      '  begin'
      
        '    ComboBox1.Items.Add(SqlOcorrencia.FieldByName('#39'ID_OCORRENCIA' +
        '_PLANTAO'#39').AsString'
      '    +'#39' ('#39'+SqlOcorrencia.FieldByName('#39'ASSUNTO'#39').AsString+'#39')'#39');  '
      '    SqlOcorrencia.Next;'
      '  end;'
      '    ComboBox1.setFocus;          '
      'end;'
      ''
      'procedure ComboBox1OnClick(Sender: TfrxComponent);'
      'begin'
      '                                               '
      'end;'
      ''
      'procedure ComboBox2OnClick(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Button1OnClick(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure DateEdit2OnClick(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnStartReport = 'frxReport1OnStartReport'
    Left = 639
    Top = 320
    Datasets = <
      item
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrxOcorrrenciaPlantao.Sqlup
        DataSetName = 'Sqlup'
      end
      item
        DataSet = FrxOcorrrenciaPlantao.sqlListaOcorrencia
        DataSetName = 'sqlListaOcorrencia'
      end
      item
        DataSet = FrxOcorrrenciaPlantao.sqlUnidadePenal
        DataSetName = 'sqlUnidadePenal'
      end
      item
        DataSet = FrxOcorrrenciaPlantao.SQLDIRETOR
        DataSetName = 'SQLDIRETOR'
      end
      item
        DataSet = FrxOcorrrenciaPlantao.SqlOcorrencia
        DataSetName = 'SqlOcorrencia'
      end>
    Variables = <
      item
        Name = ' SIAP'
        Value = Null
      end
      item
        Name = 'DATA_AGENDA'
        Value = Null
      end
      item
        Name = 'GLOBAL_JURIDICA'
        Value = Null
      end
      item
        Name = 'GLOBAL_DISCIPLINA'
        Value = Null
      end
      item
        Name = 'DATA_INICIO'
        Value = Null
      end
      item
        Name = 'ID_UP'
        Value = '107'
      end
      item
        Name = 'GLOBAL_ORGAO'
        Value = #39'MINIST'#201'RIO DA JUSTI'#199'A'#39
      end
      item
        Name = 'GLOBAL_DEPARTAMENTO'
        Value = #39'DEPARTAMENTO PENITENCI'#193'RIO NACIONAL'#39
      end
      item
        Name = 'GLOBAL_DIRETORIA'
        Value = #39'DIRETORIA DO SISTEMA PENITENCI'#193'RIO FEDERAL'#39
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object Database: TfrxDBXDatabase
        ConnectionName = 'IBLocal'
        DriverName = 'DevartInterBase'
        GetDriverFunc = 'getSQLDriverInterBase'
        LibraryName = 'dbexpida.dll'
        LoginPrompt = False
        VendorLib = 'fbclient.DLL'
        pLeft = 156
        pTop = 28
      end
      object Sqlup: TfrxDBXQuery
        UserName = 'Sqlup'
        CloseDataSource = True
        Params = <
          item
            Name = 'ID_UP'
            DataType = ftInteger
            Expression = '<ID_UP>'
          end>
        SQL.Strings = (
          
            'SELECT u.nome_up, u.endereco, u.bairro, u.numero, u.complemento,' +
            ' u.cep,'
          
            'c.cidade||'#39' - '#39'||c.uf as cidade, u.fone, u.fax, u.email         ' +
            '            '
          'from unidade_penal u'
          
            'inner join cidade c on(c.id_cidade=u.id_cidade)                 ' +
            '                                      '
          'WHERE ID_UP = :ID_UP  ')
        Database = FrxOcorrrenciaPlantao.Database
        pLeft = 212
        pTop = 28
        Parameters = <
          item
            Name = 'ID_UP'
            DataType = ftInteger
            Expression = '<ID_UP>'
          end>
      end
      object sqlListaOcorrencia: TfrxDBXQuery
        UserName = 'sqlListaOcorrencia'
        CloseDataSource = True
        Params = <
          item
            Name = 'ID_UP'
            DataType = ftInteger
            Expression = '<ID_UP>'
          end
          item
            Name = 'ocorrencia'
            DataType = ftString
            Expression = 'ComboBox1.text;'
          end>
        SQL.Strings = (
          
            'select distinct op.id_ocorrencia_plantao, op.assunto, op.data_in' +
            'icio, op.data_final, op.ocorrencia, op.despacho, n.natureza_ocor' +
            'rencia,                                                  '
          
            'op.obs, up.nome_up, f.nome_funcionario as adjunto, f.matricula a' +
            's mat, faux.nome_funcionario as auxiliar, faux.matricula, i.nome' +
            '_interno, i.rgi                                                 ' +
            '                                                                ' +
            '                                       '
          'from ocorrencia_plantao op  '
          'inner join unidade_penal up on (up.id_up = op.id_up)'
          
            'inner join funcionario f on (f.id_funcionario = op.id_funcionari' +
            'o)'
          
            'inner join funcionario faux on (faux.id_funcionario = op.id_func' +
            '_aux)'
          
            'inner join historico_ocorrencia_interno ho on (op.id_ocorrencia_' +
            'plantao = ho.id_ocorrencia_plantao)'
          
            'inner join natureza_ocorrencia n on (op.id_natureza_ocorrencia =' +
            ' n.id_natureza_ocorrencia)                                      ' +
            '                                                                ' +
            '                                                            '
          'inner join interno i on (i.id_interno = ho.id_interno) '
          'where op.ID_UP = :ID_UP'
          
            'and ( (op.id_ocorrencia_plantao||'#39' ('#39'||op.assunto||'#39')'#39' LIKE '#39'%'#39'|' +
            '| :ocorrencia || '#39'%'#39' ) )   '
          '                                              '
          '    '
          ''
          ''
          ''
          ''
          '                                                   ')
        Database = FrxOcorrrenciaPlantao.Database
        pLeft = 296
        pTop = 28
        Parameters = <
          item
            Name = 'ID_UP'
            DataType = ftInteger
            Expression = '<ID_UP>'
          end
          item
            Name = 'ocorrencia'
            DataType = ftString
            Expression = 'ComboBox1.text;'
          end>
      end
      object sqlUnidadePenal: TfrxDBXQuery
        UserName = 'sqlUnidadePenal'
        CloseDataSource = True
        Params = <
          item
            Name = 'id_up'
            DataType = ftInteger
            Expression = '<ID_UP>'
          end>
        SQL.Strings = (
          'select nome_up from unidade_penal'
          'where id_up = :id_up  ')
        Database = FrxOcorrrenciaPlantao.Database
        pLeft = 376
        pTop = 112
        Parameters = <
          item
            Name = 'id_up'
            DataType = ftInteger
            Expression = '<ID_UP>'
          end>
      end
      object SQLDIRETOR: TfrxDBXQuery
        UserName = 'SQLDIRETOR'
        CloseDataSource = True
        Params = <
          item
            Name = 'id_up'
            DataType = ftInteger
            Expression = '<ID_UP>'
          end>
        SQL.Strings = (
          
            'select f.nome_funcionario, u.nome_up, f.funcao, u.sigla from fun' +
            'cionario f'
          'inner join unidade_penal u on (u.id_up=f.id_up)'
          'where f.id_up = :id_up and f.funcao = '#39'DIRETOR'#39'  ')
        Database = FrxOcorrrenciaPlantao.Database
        pLeft = 160
        pTop = 116
        Parameters = <
          item
            Name = 'id_up'
            DataType = ftInteger
            Expression = '<ID_UP>'
          end>
      end
      object SqlOcorrencia: TfrxDBXQuery
        UserName = 'SqlOcorrencia'
        CloseDataSource = True
        Params = <
          item
            Name = 'ID_UP'
            DataType = ftInteger
            Expression = '<ID_UP>'
          end>
        SQL.Strings = (
          
            'select op.id_ocorrencia_plantao, op.assunto, op.data_inicio, op.' +
            'data_final                                                      ' +
            '                                                                ' +
            '                                  '
          'from ocorrencia_plantao op  '
          'where op.ID_UP = :ID_UP'
          
            'order by op.id_ocorrencia_plantao desc                          ' +
            '                '
          ''
          ''
          ''
          ''
          '                                                   ')
        Database = FrxOcorrrenciaPlantao.Database
        pLeft = 280
        pTop = 140
        Parameters = <
          item
            Name = 'ID_UP'
            DataType = ftInteger
            Expression = '<ID_UP>'
          end>
      end
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Courier'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 15.000000000000000000
      RightMargin = 7.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 10.000000000000000000
      Columns = 1
      ColumnWidth = 211.900000000000000000
      ColumnPositions.Strings = (
        '0')
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier'
        Font.Style = []
        Height = 151.858380000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 710.551640000000000000
        object Memo2: TfrxMemoView
          Left = -11.338590000000000000
          Top = 70.929190000000000000
          Width = 718.110700000000000000
          Height = 45.354360000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[Sqlup."ENDERECO"]  [Sqlup."NUMERO"]  [Sqlup."BAIRRO"]  [Sqlup."' +
              'COMPLEMENTO"]'
            
              'CEP: [Formatmasktext('#39'00.000-000;0'#39',<Sqlup."CEP">)] - [Sqlup."CI' +
              'DADE"]'
            'Fone: [Sqlup."FONE"] - Fax: [Sqlup."FAX"] -  [Sqlup."EMAIL"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 3.779530000000000000
          Top = 124.724490000000000000
          Width = 997.795920000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 149.708720000000000000
          Top = 113.842610000000000000
          Width = 377.953000000000000000
          Height = 34.015770000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Ocorr'#195#170'ncia Administrativa')
          ParentFont = False
        end
      end
      object Picture4: TfrxPictureView
        Left = 10.559060000000000000
        Top = 8.677175120000000000
        Width = 109.606299210000000000
        Height = 105.826771650000000000
        FileLink = '..\logo\esquerda.jpg'
      end
      object Memo1: TfrxMemoView
        Left = -3.779530000000000000
        Top = 10.118120000000000000
        Width = 718.110700000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = ','
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8 = (
          '[GLOBAL_ORGAO]'
          '[GLOBAL_DEPARTAMENTO]'
          '[GLOBAL_DIRETORIA]'
          '[Sqlup."NOME_UP"]')
        ParentFont = False
      end
      object Picture3: TfrxPictureView
        Left = 569.149979760000000000
        Top = 8.897650000000000000
        Width = 109.606299210000000000
        Height = 105.826771650000000000
        FileLink = '..\logo\direita.jpg'
      end
      object MasterData1: TfrxMasterData
        Height = 19.236240000000000000
        Top = 748.346940000000000000
        Width = 710.551640000000000000
        DataSet = FrxOcorrrenciaPlantao.sqlListaOcorrencia
        DataSetName = 'sqlListaOcorrencia'
        RowCount = 0
        Stretched = True
        object Memo4: TfrxMemoView
          Left = 8.338590000000000000
          Top = 3.118119999999976000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataSet = FrxOcorrrenciaPlantao.sqlListaOcorrencia
          DataSetName = 'sqlListaOcorrencia'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[sqlListaOcorrencia."RGI"] -[sqlListaOcorrencia."NOME_INTERNO"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 827.717070000000000000
        Width = 710.551640000000000000
        object Memo19: TfrxMemoView
          Left = 172.078850000000000000
          Top = 7.133889999999951000
          Width = 502.677490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              'Projeto SIAPEN, Impresso em [Date] - [time], Pag. [Page#]/[Total' +
              'Pages#]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 494.764070000000000000
        Top = 230.551330000000000000
        Width = 710.551640000000000000
        AllowSplit = True
        Condition = 'sqlListaOcorrencia."ID_OCORRENCIA_PLANTAO"'
        StartNewPage = True
        Stretched = True
        object Memo6: TfrxMemoView
          Left = 8.338590000000000000
          Top = 475.866419999999900000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Internos envolvidos na ocorr'#195#170'ncia:')
          ParentFont = False
        end
        object SQLDIRETORNOME_FUNCIONARIO: TfrxMemoView
          Left = 9.677180000000000000
          Top = 416.260050000000000000
          Width = 627.401980000000000000
          Height = 18.897650000000000000
          DataField = 'NOME_FUNCIONARIO'
          DataSet = FrxOcorrrenciaPlantao.SQLDIRETOR
          DataSetName = 'SQLDIRETOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[SQLDIRETOR."NOME_FUNCIONARIO"]')
          ParentFont = False
        end
        object SQLDIRETORFUNCAO: TfrxMemoView
          Left = 9.574830000000000000
          Top = 435.937230000000000000
          Width = 627.401980000000000000
          Height = 18.897650000000000000
          DataSet = FrxOcorrrenciaPlantao.SQLDIRETOR
          DataSetName = 'SQLDIRETOR'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[SQLDIRETOR."FUNCAO"] - [SQLDIRETOR."SIGLA"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 271.992270000000000000
          Top = 342.826839999999900000
          Width = 404.409710000000000000
          Height = 18.897650000000000000
          DataSet = FrxOcorrrenciaPlantao.SQLDIRETOR
          DataSetName = 'SQLDIRETOR'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'#39'.'#39
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[Sqlup."CIDADE"], [Date]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 192.756030000000000000
          Top = 393.582869999999900000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '__________________________________________')
          ParentFont = False
        end
        object sqlListaOcorrenciaID_OCORRENCIA_PLANTAO: TfrxMemoView
          Left = 5.338590000000000000
          Top = 32.456709999999990000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataSet = FrxOcorrrenciaPlantao.sqlListaOcorrencia
          DataSetName = 'sqlListaOcorrencia'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              'N'#195#186'mero Ocorr'#195#170'ncia: [sqlListaOcorrencia."ID_OCORRENCIA_PLANTAO"' +
              ']')
          ParentFont = False
        end
        object sqlListaOcorrenciaDATA_INICIO: TfrxMemoView
          Left = 250.433210000000000000
          Top = 33.015769999999970000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataSet = FrxOcorrrenciaPlantao.sqlListaOcorrencia
          DataSetName = 'sqlListaOcorrencia'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Data In'#195#173'cio: [sqlListaOcorrencia."DATA_INICIO"]')
          ParentFont = False
        end
        object sqlListaOcorrenciaDATA_FINAL: TfrxMemoView
          Left = 402.291590000000000000
          Top = 33.236240000000010000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataSet = FrxOcorrrenciaPlantao.sqlListaOcorrencia
          DataSetName = 'sqlListaOcorrencia'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Data Final: [sqlListaOcorrencia."DATA_FINAL"]')
          ParentFont = False
        end
        object sqlListaOcorrenciaASSUNTO: TfrxMemoView
          Left = 6.118120000000000000
          Top = 131.929190000000000000
          Width = 801.260360000000000000
          Height = 30.236240000000000000
          StretchMode = smActualHeight
          DataSet = FrxOcorrrenciaPlantao.sqlListaOcorrencia
          DataSetName = 'sqlListaOcorrencia'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Assunto: [sqlListaOcorrencia."ASSUNTO"]')
          ParentFont = False
        end
        object sqlListaOcorrenciaOCORRENCIA: TfrxMemoView
          Left = 8.338590000000000000
          Top = 188.842610000000000000
          Width = 695.433520000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataSet = FrxOcorrrenciaPlantao.sqlListaOcorrencia
          DataSetName = 'sqlListaOcorrencia'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '[sqlListaOcorrencia."OCORRENCIA"]')
          ParentFont = False
        end
        object sqlListaOcorrenciaOBS: TfrxMemoView
          Left = 14.338590000000000000
          Top = 271.535560000000000000
          Width = 661.417750000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataSet = FrxOcorrrenciaPlantao.sqlListaOcorrencia
          DataSetName = 'sqlListaOcorrencia'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            'Observa'#195#167#195#163'o: [sqlListaOcorrencia."OBS"]')
          ParentFont = False
        end
        object sqlListaOcorrenciaADJUNTO: TfrxMemoView
          Left = 5.338590000000000000
          Top = 61.913419999999970000
          Width = 548.031850000000000000
          Height = 18.897650000000000000
          DataSet = FrxOcorrrenciaPlantao.sqlListaOcorrencia
          DataSetName = 'sqlListaOcorrencia'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Adjunto: [sqlListaOcorrencia."ADJUNTO"] - [sqlListaOcorrencia."M' +
              'AT"]')
          ParentFont = False
        end
        object sqlListaOcorrenciaAUXILIAR: TfrxMemoView
          Left = 4.574830000000000000
          Top = 85.692950000000000000
          Width = 548.031850000000000000
          Height = 18.897650000000000000
          DataSet = FrxOcorrrenciaPlantao.sqlListaOcorrencia
          DataSetName = 'sqlListaOcorrencia'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Auxiliar de Adjunto: [sqlListaOcorrencia."AUXILIAR"] - [sqlLista' +
              'Ocorrencia."MATRICULA"]')
          ParentFont = False
        end
        object Rich1: TfrxRichView
          Left = 6.559060000000000000
          Top = 166.165430000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313034367B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C3B7D7B5C66315C666E696C20417269616C3B7D7D0D
            0A5C766965776B696E64345C7563315C706172645C625C667332342048697374
            5C2766337269636F3A5C66315C7061720D0A7D0D0A00}
        end
        object Memo7: TfrxMemoView
          Left = 292.787570000000000000
          Top = 245.433210000000000000
          Width = 343.937230000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataSet = FrxOcorrrenciaPlantao.sqlListaOcorrencia
          DataSetName = 'sqlListaOcorrencia'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[sqlListaOcorrencia."ADJUNTO"] - [sqlListaOcorrencia."MAT"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 5.338590000000000000
          Top = 108.692950000000000000
          Width = 801.260360000000000000
          Height = 18.897650000000000000
          DataSet = FrxOcorrrenciaPlantao.sqlListaOcorrencia
          DataSetName = 'sqlListaOcorrencia'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Natureza: [sqlListaOcorrencia."NATUREZA_OCORRENCIA"]')
          ParentFont = False
        end
        object sqlListaOcorrenciaNOME_UP: TfrxMemoView
          Left = 167.299320000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataSet = FrxOcorrrenciaPlantao.sqlListaOcorrencia
          DataSetName = 'sqlListaOcorrencia'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Unidade Penal: [sqlListaOcorrencia."NOME_UP"]')
          ParentFont = False
        end
        object sqlListaOcorrenciaDESPACHO: TfrxMemoView
          Left = 15.118120000000000000
          Top = 306.141930000000000000
          Width = 661.417750000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataSet = FrxOcorrrenciaPlantao.sqlListaOcorrencia
          DataSetName = 'sqlListaOcorrencia'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            'Despacho: [sqlListaOcorrencia."DESPACHO"]')
          ParentFont = False
        end
      end
    end
    object DialogPage1: TfrxDialogPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Height = 172.000000000000000000
      Left = 265.000000000000000000
      Top = 179.000000000000000000
      Width = 421.000000000000000000
      OnShow = 'DialogPage1OnShow'
      object Label2: TfrxLabelControl
        Left = 12.000000000000000000
        Top = 12.000000000000000000
        Width = 211.000000000000000000
        Height = 16.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Caption = 'Selecione a Ocorr'#234'ncia Desejada'
        Color = 13948117
      end
      object Button1: TfrxButtonControl
        Left = 156.000000000000000000
        Top = 68.000000000000000000
        Width = 95.000000000000000000
        Height = 49.000000000000000000
        Caption = 'OK'
        Default = True
        ModalResult = 1
        OnClick = 'Button1OnClick'
      end
      object ComboBox1: TfrxComboBoxControl
        Left = 12.000000000000000000
        Top = 35.000000000000000000
        Width = 389.000000000000000000
        Height = 21.000000000000000000
        Color = clWindow
        Text = 'Clique ou use setas para selecionar a Ocorr'#234'ncia'
        ItemIndex = -1
      end
    end
  end
  object SqlInterno: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_UP'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'SELECT id_interno, nome_interno, rgi'
      'FROM INTERNO'
      'WHERE ID_UP = :ID_UP'
      'and coalesce(nome_interno,'#39#39')<>'#39#39
      'AND ST = '#39'A'#39
      'ORDER BY NOME_INTERNO')
    Left = 280
    Top = 296
  end
  object DspInterno: TDataSetProvider
    DataSet = SqlInterno
    Left = 308
    Top = 296
  end
  object CdsInterno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspInterno'
    Left = 336
    Top = 296
    object CdsInternoID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
      Required = True
    end
    object CdsInternoNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 100
    end
    object CdsInternoRGI: TStringField
      FieldName = 'RGI'
      Size = 30
    end
  end
  object DsInterno: TDataSource
    DataSet = CdsInterno
    Left = 364
    Top = 296
  end
end
