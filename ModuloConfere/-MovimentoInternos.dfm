inherited FrmMovimentoInternos: TFrmMovimentoInternos
  Left = 257
  Top = 136
  Width = 939
  Height = 535
  Caption = 'Movimenta'#231#227'o de Internos(as)'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Width = 923
    inherited ToolBarModeloCadastro: TToolBar
      Width = 923
      inherited Excluir: TToolButton
        Visible = False
      end
    end
    inherited PanelLocalizaConsulta: TPanel
      Width = 923
      DesignSize = (
        923
        34)
      inherited EditLocalizar: TEdit
        Width = 602
        CharCase = ecUpperCase
        OnChange = EditLocalizarChange
        OnKeyDown = EditLocalizarKeyDown
      end
      object RadioGroupStatus: TRadioGroup
        Left = 800
        Top = 0
        Width = 121
        Height = 33
        Anchors = [akTop, akRight]
        Caption = 'Filtro'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Ativo'
          'Inativo')
        TabOrder = 1
        OnClick = RadioGroupStatusClick
      end
      object chkSoundex: TCheckBox
        Left = 669
        Top = 10
        Width = 77
        Height = 17
        TabStop = False
        Caption = 'Fon'#233'tica'
        TabOrder = 2
        OnClick = chkSoundexClick
      end
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 923
    Height = 390
    inherited PageControlModeloCadastro: TPageControl
      Top = 145
      Width = 923
      Height = 245
      Align = alBottom
      inherited TabSheetCadastro: TTabSheet
        object PanelNome: TPanel
          Left = 0
          Top = 0
          Width = 915
          Height = 52
          Align = alTop
          TabOrder = 0
          object Label2: TLabel
            Left = 13
            Top = 8
            Width = 28
            Height = 13
            Caption = 'Nome'
            FocusControl = DBEditNome
          end
          object Label8: TLabel
            Left = 655
            Top = 8
            Width = 78
            Height = 13
            Caption = 'Data de Entrada'
          end
          object Label7: TLabel
            Left = 544
            Top = 8
            Width = 101
            Height = 13
            Caption = 'CI/OF. MOVIMENTO'
            FocusControl = DBEdit4
          end
          object Label62: TLabel
            Left = 429
            Top = 8
            Width = 87
            Height = 13
            Caption = 'N'#250'mero da Roupa'
            FocusControl = DBEdit19
          end
          object DBEditNome: TDBEdit
            Left = 14
            Top = 24
            Width = 411
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NOME_INTERNO'
            DataSource = DsCadastro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Lucida Console'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object DBRadioGroupStatus: TDBRadioGroup
            Left = 759
            Top = 0
            Width = 74
            Height = 48
            Caption = 'Status'
            DataField = 'ST'
            DataSource = DsCadastro
            Items.Strings = (
              'Ativo'
              'Inativo')
            TabOrder = 4
            Values.Strings = (
              'A'
              'I')
          end
          object DBEdit1: TDBEdit
            Left = 656
            Top = 24
            Width = 101
            Height = 21
            DataField = 'DATA_ENTRADA'
            DataSource = DsCadastro
            TabOrder = 3
          end
          object DBEdit4: TDBEdit
            Left = 544
            Top = 24
            Width = 100
            Height = 21
            DataField = 'CI'
            DataSource = DsCadastro
            TabOrder = 2
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 838
            Top = 1
            Width = 74
            Height = 48
            Caption = 'Em Transito'
            DataField = 'EM_TRANSITO'
            DataSource = DsCadastro
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 5
            Values.Strings = (
              'S'
              'N')
          end
          object DBEdit19: TDBEdit
            Left = 430
            Top = 24
            Width = 108
            Height = 21
            DataField = 'NUMERO_ROUPA'
            DataSource = DsCadastro
            TabOrder = 1
          end
        end
        object PageControlDadosInterno: TPageControl
          Left = 0
          Top = 56
          Width = 913
          Height = 161
          ActivePage = TabSheet2
          TabOrder = 1
          TabWidth = 100
          object TabSheet1: TTabSheet
            Caption = 'Dados'
            object Label45: TLabel
              Left = 344
              Top = 88
              Width = 96
              Height = 13
              Caption = 'Condi'#231#227'o do Interno'
            end
            object Label4: TLabel
              Left = 3
              Top = 7
              Width = 19
              Height = 13
              Caption = 'RGI'
              FocusControl = DBEdit3
            end
            object Label12: TLabel
              Left = 92
              Top = 9
              Width = 77
              Height = 13
              Caption = 'PROCED'#202'NCIA'
            end
            object Label48: TLabel
              Left = 3
              Top = 89
              Width = 69
              Height = 13
              Caption = 'DATA SETOR'
              FocusControl = DBEdit8
            end
            object Label49: TLabel
              Left = 96
              Top = 88
              Width = 98
              Height = 13
              Caption = 'SETOR TRABALHO'
            end
            object Label10: TLabel
              Left = 3
              Top = 48
              Width = 23
              Height = 13
              Caption = 'M'#195'E'
              FocusControl = DBEdit6
            end
            object Label11: TLabel
              Left = 344
              Top = 48
              Width = 17
              Height = 13
              Caption = 'PAI'
              FocusControl = DBEdit7
            end
            object SpeedButton1: TSpeedButton
              Left = 320
              Top = 24
              Width = 23
              Height = 22
              Hint = 'Cadastrar Proced'#234'ncia'
              Caption = '...'
              Flat = True
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton1Click
            end
            object Label13: TLabel
              Left = 344
              Top = 8
              Width = 27
              Height = 13
              Caption = 'Vulgo'
              FocusControl = DBEdit7
            end
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 344
              Top = 104
              Width = 313
              Height = 21
              DataField = 'IDCONDICAO_INTERNO'
              DataSource = DsCadastro
              KeyField = 'IDCONDICAO_INTERNO'
              ListField = 'DESCRICAO'
              ListSource = DM.DsCondicaoInterno
              TabOrder = 7
            end
            object DBEdit3: TDBEdit
              Left = 3
              Top = 23
              Width = 82
              Height = 21
              DataField = 'RGI'
              DataSource = DsCadastro
              TabOrder = 0
            end
            object DBRadioGroupSexo: TDBRadioGroup
              Left = 569
              Top = 7
              Width = 85
              Height = 44
              Caption = 'Sexo'
              DataField = 'SEXO'
              DataSource = DsCadastro
              Items.Strings = (
                'Masculino'
                'Feminino')
              TabOrder = 8
              Values.Strings = (
                'M'
                'F')
            end
            object DBLookupComboBoxID_PROCEDENCIA: TDBLookupComboBox
              Left = 92
              Top = 25
              Width = 229
              Height = 21
              DataField = 'ID_PROCEDENCIA'
              DataSource = DsCadastro
              KeyField = 'ID_PROCEDENCIA'
              ListField = 'PROCEDENCIA'
              ListSource = DM.DsProcedencia
              TabOrder = 1
            end
            object DBEdit8: TDBEdit
              Left = 3
              Top = 105
              Width = 81
              Height = 21
              DataField = 'DATA_SETOR'
              DataSource = DsCadastro
              TabOrder = 5
            end
            object DBLookupComboBox4: TDBLookupComboBox
              Left = 95
              Top = 104
              Width = 242
              Height = 21
              DataField = 'IDSETOR_TRABALHO'
              DataSource = DsCadastro
              KeyField = 'ID_SETOR_TRABALHO'
              ListField = 'SETOR_TRABALHO'
              ListSource = DM.DsSetorTrabalho
              TabOrder = 6
            end
            object Panel2: TPanel
              Left = 659
              Top = -10
              Width = 203
              Height = 152
              Caption = 'Panel2'
              TabOrder = 9
              object DBImageFOTOInterno: TDBImage
                Left = 1
                Top = 1
                Width = 201
                Height = 150
                Align = alClient
                DataField = 'FOTO'
                DataSource = DsCadastro
                Stretch = True
                TabOrder = 0
                OnClick = Image1Click
              end
            end
            object DBEdit6: TDBEdit
              Left = 3
              Top = 64
              Width = 333
              Height = 21
              CharCase = ecUpperCase
              DataField = 'MAE'
              DataSource = DsCadastro
              TabOrder = 3
            end
            object DBEdit7: TDBEdit
              Left = 344
              Top = 64
              Width = 313
              Height = 21
              CharCase = ecUpperCase
              DataField = 'PAI'
              DataSource = DsCadastro
              TabOrder = 4
            end
            object DBEdit9: TDBEdit
              Left = 344
              Top = 24
              Width = 219
              Height = 21
              CharCase = ecUpperCase
              DataField = 'VULGO'
              DataSource = DsCadastro
              TabOrder = 2
            end
          end
          object TabSheet2: TTabSheet
            Caption = 'Cela'
            ImageIndex = 1
            object Label14: TLabel
              Left = 3
              Top = 1
              Width = 41
              Height = 13
              Caption = 'Pavilh'#227'o'
            end
            object Label15: TLabel
              Left = 360
              Top = 0
              Width = 33
              Height = 13
              Caption = 'Galeria'
            end
            object Panel1: TPanel
              Left = 0
              Top = 40
              Width = 905
              Height = 93
              Align = alBottom
              Caption = 'Panel1'
              TabOrder = 0
              object PanelPavilhao: TPanel
                Left = 1
                Top = 1
                Width = 185
                Height = 91
                Align = alLeft
                TabOrder = 0
                Visible = False
                object DBRadioGroupPavilhao: TDBRadioGroup
                  Left = 1
                  Top = 1
                  Width = 133
                  Height = 89
                  Align = alClient
                  Caption = 'Pavilh'#227'o'
                  DataField = 'IDPAVILHAO'
                  DataSource = DsCadastro
                  TabOrder = 0
                  Values.Strings = (
                    'PAVILHAO - 1'
                    'PAVILHAO - 2')
                  Visible = False
                  OnChange = DBRadioGroupPavilhaoChange
                end
                object DBRadioGroupGaleria: TDBRadioGroup
                  Left = 134
                  Top = 1
                  Width = 50
                  Height = 89
                  Align = alRight
                  Caption = 'Galeria'
                  DataField = 'IDGALERIA'
                  DataSource = DsCadastro
                  TabOrder = 1
                  Values.Strings = (
                    '1A'
                    '2A'
                    '3A'
                    '1B'
                    '2B'
                    '3B'
                    'DISCIPLINAR'
                    'ALA G'
                    'HOSPITAL'
                    'OBITO'
                    'EM TRANSITO')
                  Visible = False
                  OnChange = DBRadioGroupGaleriaChange
                end
              end
              object DBRadioGroupSolario: TDBRadioGroup
                Left = 186
                Top = 1
                Width = 143
                Height = 91
                Align = alLeft
                Caption = 'Solario'
                DataField = 'IDSOLARIO'
                DataSource = DsCadastro
                TabOrder = 1
                Values.Strings = (
                  '1A'
                  '2A'
                  '3A'
                  '1B'
                  '2B'
                  '3B'
                  'DISCIPLINAR'
                  'ALA G'
                  'HOSPITAL'
                  'OBITO'
                  'EM TRANSITO')
                OnChange = DBRadioGroupSolarioChange
              end
              object DBRadioGroupCela: TDBRadioGroup
                Left = 329
                Top = 1
                Width = 575
                Height = 91
                Align = alClient
                Caption = 'Cela'
                Columns = 4
                DataField = 'IDCELA'
                DataSource = DsCadastro
                TabOrder = 2
                Values.Strings = (
                  'C1'
                  'C2'
                  'C3'
                  'C4'
                  'C5'
                  'C6')
              end
            end
            object DBLookupComboBox3: TDBLookupComboBox
              Left = 3
              Top = 16
              Width = 337
              Height = 21
              DataField = 'IDPAVILHAO'
              DataSource = DsCadastro
              KeyField = 'ID_PAVILHAO'
              ListField = 'PAVILHAO'
              ListSource = DsPavilhao
              TabOrder = 1
            end
            object DBLookupComboBox5: TDBLookupComboBox
              Left = 360
              Top = 16
              Width = 337
              Height = 21
              DataField = 'IDGALERIA'
              DataSource = DsCadastro
              KeyField = 'ID_GALERIA'
              ListField = 'GALERIA'
              ListSource = DsGaleria
              TabOrder = 2
              OnClick = DBLookupComboBox5Click
            end
          end
          object TabSheet3: TTabSheet
            Caption = 'Fotos'
            ImageIndex = 2
            object Panel3: TPanel
              Left = 5
              Top = 0
              Width = 137
              Height = 129
              BevelOuter = bvLowered
              Caption = 'Foto Perfil'
              TabOrder = 0
              object DBImage1: TDBImage
                Left = 1
                Top = 1
                Width = 135
                Height = 127
                Align = alClient
                TabOrder = 0
              end
            end
          end
          object TabSheet4: TTabSheet
            Caption = 'Sa'#237'da'
            ImageIndex = 3
            object Label3: TLabel
              Left = 8
              Top = 48
              Width = 48
              Height = 13
              Caption = 'DESTINO'
              Visible = False
            end
            object Label5: TLabel
              Left = 8
              Top = 8
              Width = 64
              Height = 13
              Caption = 'DATA SA'#205'DA'
              FocusControl = DBEdit2
            end
            object Label6: TLabel
              Left = 96
              Top = 8
              Width = 42
              Height = 13
              Caption = 'MOTIVO'
            end
            object Label9: TLabel
              Left = 360
              Top = 8
              Width = 109
              Height = 13
              Caption = 'CI/ OF/AUTOS SA'#205'DA'
              FocusControl = DBEdit5
            end
            object SpeedButton2: TSpeedButton
              Left = 526
              Top = 62
              Width = 23
              Height = 22
              Hint = 'Cadastro Destino'
              Caption = '...'
              ParentShowHint = False
              ShowHint = True
              Visible = False
              OnClick = SpeedButton2Click
            end
            object DBLookupComboBox2: TDBLookupComboBox
              Left = 8
              Top = 64
              Width = 513
              Height = 21
              DataField = 'IDDESTINO'
              DataSource = DsCadastro
              KeyField = 'ID_DESTINO'
              ListField = 'DESTINO'
              ListSource = DM.DsDestino
              TabOrder = 2
              Visible = False
            end
            object DBEdit2: TDBEdit
              Left = 8
              Top = 24
              Width = 81
              Height = 21
              DataField = 'DATA_SAIDA'
              DataSource = DsCadastro
              TabOrder = 0
              OnExit = DBEdit2Exit
            end
            object DBComboBox1: TDBComboBox
              Left = 96
              Top = 24
              Width = 257
              Height = 21
              DataField = 'MOTIVO_SAIDA'
              DataSource = DsCadastro
              ItemHeight = 13
              Items.Strings = (
                'Alvar'#225' de Soltura'
                'Duplicidade de Registros'
                'Progress'#227'o de Regime'
                'Livramento Condicional'
                'Transfer'#234'ncia de Presidio'
                'Transfer'#234'ncia de Comarca'
                'Transfer'#234'ncia para Estado de Origem'
                'Sa'#237'da Tempor'#225'ria'
                'Fuga'
                #211'bito')
              TabOrder = 1
              OnClick = DBComboBox1Click
            end
            object DBEdit5: TDBEdit
              Left = 360
              Top = 24
              Width = 161
              Height = 21
              DataField = 'CISAIDA'
              DataSource = DsCadastro
              TabOrder = 3
            end
          end
        end
      end
    end
    inherited PageControlConsulta: TPageControl
      Top = 0
      Width = 923
      Height = 145
      OnChange = PageControlConsultaChange
      inherited TabSheetConsulta: TTabSheet
        inherited DBGridConsulta: TDBGrid
          Width = 915
          Height = 117
          Columns = <
            item
              Expanded = False
              FieldName = 'NOME_INTERNO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Lucida Console'
              Font.Style = [fsBold]
              Title.Caption = 'Nome do Interno'
              Width = 417
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMERO_ROUPA'
              Title.Caption = 'Roupa'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SIGLA'
              Title.Caption = 'Sigla'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PAVILHAO'
              Title.Caption = 'Pavilh'#227'o'
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SOLARIO'
              Title.Caption = 'Solario'
              Width = 56
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CELA'
              Title.Caption = 'Cela'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STATUS'
              Title.Caption = 'Status'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EM_TRANSITO'
              Title.Caption = 'Transito'
              Visible = True
            end>
        end
      end
      inherited TabSheetMovimentacao: TTabSheet
        inherited DBGrid1: TDBGrid
          Width = 409
          Height = 117
          Align = alLeft
          Columns = <
            item
              Expanded = False
              FieldName = 'DATA_MOVIMENTACAO'
              Title.Caption = 'Data'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HORA_MOVIMENTACAO'
              Title.Caption = 'Hora'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO_MOVIMENTACAO'
              Title.Caption = 'Descricao'
              Width = 400
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_PROCEDENCIA'
              Title.Caption = 'Procedencia'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_DESTINO'
              Title.Caption = 'Destino'
              Width = 70
              Visible = True
            end>
        end
        object DBMemo1: TDBMemo
          Left = 409
          Top = 0
          Width = 506
          Height = 117
          Align = alClient
          DataField = 'TIPO_MOVIMENTACAO'
          DataSource = DsMovimento
          TabOrder = 1
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 478
    Width = 923
  end
  inherited ImageListCadastro: TImageList
    Left = 664
    Top = 40
  end
  inherited SqlCadastro: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_INTERNO'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM INTERNO'
      'WHERE ID_INTERNO=:ID_INTERNO')
    Left = 8
  end
  inherited DspCadastro: TDataSetProvider
    Left = 36
  end
  inherited CdsCadastro: TClientDataSet
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsConsulta
    PacketRecords = 0
    Left = 64
  end
  inherited DsCadastro: TDataSource
    Left = 92
  end
  inherited SqlMovimento: TSQLQuery
    SQL.Strings = (
      'select id_mov_interno, id_interno, id_unidade_penal,'
      'tipo_movimentacao, data_movimentacao, hora_movimentacao,'
      'id_funcionario,'
      
        '(SELECT proedencia from procedencia WHERE procedencia.id_procede' +
        'ncia=mov_interno.id_procedencia) AS id_procedencia,'
      
        '(SELECT DESTINO from destino WHERE destino.id_destino=mov_intern' +
        'o.id_destino) AS  id_destino'
      'from mov_interno')
    Left = 480
  end
  inherited DspMovimento: TDataSetProvider
    Left = 508
  end
  inherited CdsMovimento: TClientDataSet
    ProviderName = 'DspMovimento'
    Left = 536
  end
  inherited DsMovimento: TDataSource
    Left = 564
  end
  inherited SqlConsulta: TSQLQuery
    SQL.Strings = (
      'select '
      '    interno.nome_interno,'
      '    '#39#39' as  nome_interno_soundex,'
      '    unidade_penal.sigla,'
      '    pavilhao.pavilhao,'
      '    solario.solario,'
      '    cela.cela,'
      '    interno.id_interno,'
      '    interno.id_up,'
      '    interno.idpavilhao,'
      '    interno.idgaleria,'
      '    interno.idsolario,'
      '    interno.st,'
      '    interno.numero_roupa,'
      '    iif(interno.st='#39'A'#39','#39'ATIVO'#39', '#39'INATIVO'#39') status,'
      '    interno.em_transito'
      'from interno'
      '   join cela on (cela.id_cela = interno.idcela)'
      '   join pavilhao on (interno.idpavilhao = pavilhao.id_pavilhao)'
      '   join unidade_penal on (pavilhao.id_up = unidade_penal.id_up)'
      '   join solario on (interno.idsolario = solario.id_solario)'
      'where interno.nome_interno is not null'
      'order by interno.nome_interno')
    Left = 248
  end
  inherited DspConsulta: TDataSetProvider
    Left = 276
  end
  inherited CdsConsulta: TClientDataSet
    OnCalcFields = CdsConsultaCalcFields
    OnFilterRecord = CdsConsultaFilterRecord
    Left = 304
    object CdsConsultaNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 50
    end
    object CdsConsultaSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 50
    end
    object CdsConsultaPAVILHAO: TStringField
      FieldName = 'PAVILHAO'
      Size = 50
    end
    object CdsConsultaSOLARIO: TStringField
      FieldName = 'SOLARIO'
      Size = 50
    end
    object CdsConsultaCELA: TStringField
      FieldName = 'CELA'
      Size = 50
    end
    object CdsConsultaID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
      Required = True
    end
    object CdsConsultaID_UP: TIntegerField
      FieldName = 'ID_UP'
    end
    object CdsConsultaIDPAVILHAO: TIntegerField
      FieldName = 'IDPAVILHAO'
    end
    object CdsConsultaIDGALERIA: TIntegerField
      FieldName = 'IDGALERIA'
    end
    object CdsConsultaIDSOLARIO: TIntegerField
      FieldName = 'IDSOLARIO'
    end
    object CdsConsultaST: TStringField
      FieldName = 'ST'
      Size = 1
    end
    object CdsConsultaSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      FixedChar = True
      Size = 7
    end
    object CdsConsultaEM_TRANSITO: TStringField
      FieldName = 'EM_TRANSITO'
      Size = 1
    end
    object CdsConsultaNOME_FONETICA: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'NOME_FONETICA'
      Size = 100
    end
    object CdsConsultaNUMERO_ROUPA: TStringField
      FieldName = 'NUMERO_ROUPA'
      Size = 100
    end
  end
  inherited DsConsulta: TDataSource
    OnDataChange = DsConsultaDataChange
    Left = 332
  end
  object SqlSelectInterno: TSQLQuery
    Params = <>
    SQL.Strings = (
      'select '
      '    interno.nome_interno,'
      '    unidade_penal.sigla,'
      '    pavilhao.pavilhao,'
      '    solario.solario,'
      '    cela.cela,'
      '    interno.id_interno,'
      '    interno.id_up,'
      'interno.idpavilhao,'
      'interno.idgaleria,'
      'interno.idsolario,'
      'interno.st,'
      'iif(interno.st='#39'A'#39','#39'ATIVO'#39', '#39'INATIVO'#39') status'
      'from interno'
      '   join cela on (cela.id_cela = interno.idcela)'
      '   join pavilhao on (interno.idpavilhao = pavilhao.id_pavilhao)'
      '   join unidade_penal on (pavilhao.id_up = unidade_penal.id_up)'
      '   join solario on (interno.idsolario = solario.id_solario)'
      'where interno.nome_interno is not null'
      'order by interno.nome_interno')
    Left = 144
    Top = 12
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Imagens (*.jpg)|*.jpg'
    Left = 632
    Top = 337
  end
  object DSHISTORICO_interno: TDataSource
    DataSet = CDSHISTORICO_interno
    Left = 788
    Top = 48
  end
  object CDSHISTORICO_interno: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDINTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPHISTORICO_interno'
    Left = 760
    Top = 48
    object CDSHISTORICO_internoIDHISTORICO_INTERNO: TIntegerField
      FieldName = 'IDHISTORICO_INTERNO'
      Required = True
    end
    object CDSHISTORICO_internoDESCRICAO: TStringField
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'DESCRICAO'
      Required = True
      Size = 16386
    end
    object CDSHISTORICO_internoDATA_HORA: TSQLTimeStampField
      DisplayLabel = 'DATA'
      FieldName = 'DATA_HORA'
      Required = True
    end
    object CDSHISTORICO_internoIDINTERNO: TIntegerField
      FieldName = 'IDINTERNO'
      Required = True
    end
    object CDSHISTORICO_internoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object CDSHISTORICO_internoMOTIVO_SAIDA: TStringField
      FieldName = 'MOTIVO_SAIDA'
      Size = 50
    end
    object CDSHISTORICO_internoIDPROCEDENCIA: TIntegerField
      FieldName = 'IDPROCEDENCIA'
    end
    object CDSHISTORICO_internoIDUP: TIntegerField
      FieldName = 'IDUP'
    end
  end
  object DSPHISTORICO_interno: TDataSetProvider
    DataSet = SQLHISTORICO_interno
    Left = 732
    Top = 48
  end
  object SQLHISTORICO_interno: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from historico_interno'
      'where idinterno=:id_interno'
      'order by data_hora desc')
    SQLConnection = DM.SQLConnect
    Left = 704
    Top = 48
  end
  object SqlSelectInternoInativo: TSQLQuery
    Params = <>
    SQL.Strings = (
      'select '
      '   nome_interno,'
      '   '#39'INAT'#39' sigla,'
      '   '#39#39' pavilhao,'
      '   '#39#39' solario,'
      '   '#39#39' cela,'
      '    id_interno,'
      '    idpavilhao,'
      '    idgaleria,'
      '    idsolario,'
      '    numero_roupa,'
      ' '#39'INATIVO'#39' status'
      'from interno')
    Left = 184
    Top = 140
  end
  object SqlSoundex: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select '
      '    interno.nome_interno,'
      
        '    (SELECT RET FROM SOUNDEX(INTERNO.NOME_INTERNO)) nome_interno' +
        '_soundex,'
      '    unidade_penal.sigla,'
      '    pavilhao.pavilhao,'
      '    solario.solario,'
      '    cela.cela,'
      '    interno.id_interno,'
      '    interno.id_up,'
      '    interno.idpavilhao,'
      '    interno.idgaleria,'
      '    interno.idsolario,'
      '    interno.st,'
      '    iif(interno.st='#39'A'#39','#39'ATIVO'#39', '#39'INATIVO'#39') status,'
      '    interno.em_transito'
      'from interno'
      '   join cela on (cela.id_cela = interno.idcela)'
      '   join pavilhao on (interno.idpavilhao = pavilhao.id_pavilhao)'
      '   join unidade_penal on (pavilhao.id_up = unidade_penal.id_up)'
      '   join solario on (interno.idsolario = solario.id_solario)'
      'where interno.nome_interno is not null'
      'order by interno.nome_interno')
    SQLConnection = DM.SQLConnect
    Left = 248
    Top = 48
  end
  object SqlPavilhao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from pavilhao')
    SQLConnection = DM.SQLConnect
    Left = 384
    Top = 37
  end
  object DspPavilhao: TDataSetProvider
    DataSet = SqlPavilhao
    Left = 416
    Top = 37
  end
  object CdsPavilhao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspPavilhao'
    Left = 448
    Top = 37
  end
  object DsPavilhao: TDataSource
    DataSet = CdsPavilhao
    Left = 480
    Top = 37
  end
  object DsGaleria: TDataSource
    DataSet = CdsGaleria
    Left = 480
    Top = 80
  end
  object CdsGaleria: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspGaleria'
    Left = 448
    Top = 80
  end
  object DspGaleria: TDataSetProvider
    DataSet = SqlGaleria
    Left = 416
    Top = 80
  end
  object SqlGaleria: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from galeria')
    SQLConnection = DM.SQLConnect
    Left = 384
    Top = 80
  end
end
