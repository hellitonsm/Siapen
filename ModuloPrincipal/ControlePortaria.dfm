inherited FrmControlePortaria: TFrmControlePortaria
  Left = 645
  Top = 222
  Caption = 'Controle Portaria'
  ClientHeight = 567
  ClientWidth = 806
  ExplicitWidth = 822
  ExplicitHeight = 606
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Width = 806
    Height = 89
    ExplicitWidth = 806
    ExplicitHeight = 89
    inherited ToolBarModeloCadastro: TToolBar
      Top = 42
      Width = 806
      Height = 47
      ButtonWidth = 185
      ExplicitTop = 42
      ExplicitWidth = 806
      ExplicitHeight = 47
      inherited Novo: TToolButton
        Caption = '&Cadastrar'
        ExplicitWidth = 185
      end
      inherited Editar: TToolButton
        Left = 186
        AllowAllUp = True
        AutoSize = True
        Caption = '&Alterar'
        ExplicitLeft = 186
        ExplicitWidth = 77
      end
      inherited Cancelar: TToolButton
        Left = 263
        AllowAllUp = True
        AutoSize = True
        ExplicitLeft = 263
        ExplicitWidth = 95
      end
      inherited Salvar: TToolButton
        Left = 358
        AllowAllUp = True
        AutoSize = True
        ExplicitLeft = 358
        ExplicitWidth = 77
      end
      inherited Excluir: TToolButton
        Left = 435
        AllowAllUp = True
        AutoSize = True
        Visible = False
        ExplicitLeft = 435
        ExplicitWidth = 78
      end
      inherited Fechar: TToolButton
        Left = 513
        AllowAllUp = True
        AutoSize = True
        ExplicitLeft = 513
        ExplicitWidth = 80
      end
      object ToolButtonmovimentar: TToolButton
        Left = 593
        Top = 0
        AllowAllUp = True
        AutoSize = True
        Caption = '&Inserir / Salvar Movimenta'#231#227'o'
        ImageIndex = 36
        OnClick = ToolButtonmovimentarClick
      end
    end
    inherited PanelLocalizaConsulta: TPanel
      Width = 806
      Height = 41
      ExplicitWidth = 806
      ExplicitHeight = 41
      inherited Label1: TLabel
        Left = 7
        Top = 14
        Width = 56
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 7
        ExplicitTop = 14
        ExplicitWidth = 56
      end
      inherited EditLocalizar: TEdit
        Left = 312
        Width = 486
        OnChange = EditLocalizarChange
        ExplicitLeft = 312
        ExplicitWidth = 486
      end
      object RadioGroupPessoa: TRadioGroup
        Left = 64
        Top = 0
        Width = 241
        Height = 33
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'Indiv'#237'duo'
          'Advogado'
          'Autoridade')
        TabOrder = 1
        OnClick = RadioGroupPessoaClick
      end
    end
  end
  inherited PanelModeloCadastro: TPanel
    Top = 89
    Width = 806
    Height = 459
    ExplicitTop = 89
    ExplicitWidth = 806
    ExplicitHeight = 459
    inherited PageControlModeloCadastro: TPageControl
      Width = 806
      Height = 217
      ActivePage = TabSheetAdvogado
      OnChange = PageControlModeloCadastroChange
      ExplicitWidth = 806
      ExplicitHeight = 217
      inherited TabSheetCadastro: TTabSheet
        Caption = 'Indiv'#237'duos'
        ExplicitWidth = 798
        ExplicitHeight = 189
        object Label18: TLabel
          Left = 8
          Top = 8
          Width = 28
          Height = 13
          Caption = 'Nome'
        end
        object Label24: TLabel
          Left = 8
          Top = 48
          Width = 20
          Height = 13
          Caption = 'CPF'
        end
        object Label21: TLabel
          Left = 8
          Top = 96
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
        end
        object Label27: TLabel
          Left = 8
          Top = 136
          Width = 63
          Height = 13
          Caption = 'Observa'#231#245'es'
        end
        object Label22: TLabel
          Left = 288
          Top = 96
          Width = 27
          Height = 13
          Caption = 'Bairro'
        end
        object Label23: TLabel
          Left = 416
          Top = 96
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object Label26: TLabel
          Left = 288
          Top = 48
          Width = 32
          Height = 13
          Caption = 'Celular'
        end
        object Label19: TLabel
          Left = 288
          Top = 8
          Width = 16
          Height = 13
          Caption = 'RG'
        end
        object Label20: TLabel
          Left = 416
          Top = 8
          Width = 47
          Height = 13
          Caption = 'Expedidor'
        end
        object Label25: TLabel
          Left = 152
          Top = 48
          Width = 45
          Height = 13
          Caption = 'Telefone '
        end
        object DBEdit17: TDBEdit
          Left = 8
          Top = 24
          Width = 273
          Height = 21
          DataField = 'INDIVIDUO'
          DataSource = DSoutros
          TabOrder = 0
        end
        object DBEditCPF: TDBEdit
          Left = 8
          Top = 64
          Width = 137
          Height = 21
          DataField = 'CPF'
          DataSource = DSoutros
          TabOrder = 3
        end
        object DBEdit18: TDBEdit
          Left = 8
          Top = 112
          Width = 273
          Height = 21
          DataField = 'ENDERECO'
          DataSource = DSoutros
          TabOrder = 6
        end
        object DBEdit26: TDBEdit
          Left = 8
          Top = 152
          Width = 529
          Height = 21
          DataField = 'OBS'
          DataSource = DSoutros
          TabOrder = 9
        end
        object DBEdit19: TDBEdit
          Left = 288
          Top = 112
          Width = 121
          Height = 21
          DataField = 'BAIRRO'
          DataSource = DSoutros
          TabOrder = 7
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 416
          Top = 112
          Width = 121
          Height = 21
          DataField = 'ID_CIDADE'
          DataSource = DSoutros
          KeyField = 'ID_CIDADE'
          ListField = 'CIDADE'
          ListSource = DM.DSCIDADE
          TabOrder = 8
        end
        object DBImageind: TDBImage
          Left = 615
          Top = 0
          Width = 185
          Height = 161
          DataField = 'FOTO'
          DataSource = DSoutros
          TabOrder = 10
          OnClick = DBImageindClick
        end
        object DBEdit25: TDBEdit
          Left = 288
          Top = 64
          Width = 121
          Height = 21
          DataField = 'CELULAR'
          DataSource = DSoutros
          TabOrder = 5
        end
        object DBEdit20: TDBEdit
          Left = 288
          Top = 24
          Width = 121
          Height = 21
          DataField = 'DOCUMENTO'
          DataSource = DSoutros
          TabOrder = 1
        end
        object DBEdit21: TDBEdit
          Left = 416
          Top = 24
          Width = 121
          Height = 21
          DataField = 'DOCUMENTO_EXPEDIDOR'
          DataSource = DSoutros
          TabOrder = 2
        end
        object DBEdit24: TDBEdit
          Left = 152
          Top = 64
          Width = 129
          Height = 21
          DataField = 'FONE'
          DataSource = DSoutros
          TabOrder = 4
        end
      end
      object TabSheetAdvogado: TTabSheet
        Caption = 'Advogado'
        ImageIndex = 1
        object Label4: TLabel
          Left = 8
          Top = 8
          Width = 28
          Height = 13
          Caption = 'Nome'
        end
        object Label8: TLabel
          Left = 400
          Top = 8
          Width = 71
          Height = 13
          Caption = 'OAB/ESTADO'
        end
        object Label9: TLabel
          Left = 8
          Top = 56
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
        end
        object Label10: TLabel
          Left = 216
          Top = 56
          Width = 27
          Height = 13
          Caption = 'Bairro'
        end
        object Label11: TLabel
          Left = 344
          Top = 56
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object Label12: TLabel
          Left = 472
          Top = 56
          Width = 21
          Height = 13
          Caption = 'CEP'
        end
        object Label13: TLabel
          Left = 8
          Top = 104
          Width = 20
          Height = 13
          Caption = 'CPF'
        end
        object Label14: TLabel
          Left = 160
          Top = 104
          Width = 16
          Height = 13
          Caption = 'RG'
        end
        object Label15: TLabel
          Left = 360
          Top = 104
          Width = 42
          Height = 13
          Caption = 'Telefone'
        end
        object Label16: TLabel
          Left = 472
          Top = 104
          Width = 32
          Height = 13
          Caption = 'Celular'
        end
        object Label17: TLabel
          Left = 8
          Top = 144
          Width = 63
          Height = 13
          Caption = 'Observa'#231#245'es'
        end
        object Label28: TLabel
          Left = 280
          Top = 104
          Width = 47
          Height = 13
          Caption = 'Expedidor'
        end
        object DBEdit3: TDBEdit
          Left = 8
          Top = 24
          Width = 385
          Height = 21
          DataField = 'ADVOGADO'
          DataSource = DSadvogado
          TabOrder = 0
        end
        object DBEdit7: TDBEdit
          Left = 400
          Top = 24
          Width = 193
          Height = 21
          DataField = 'OAB'
          DataSource = DSadvogado
          TabOrder = 1
        end
        object DBEdit8: TDBEdit
          Left = 8
          Top = 72
          Width = 201
          Height = 21
          DataField = 'ENDERECO'
          DataSource = DSadvogado
          TabOrder = 2
        end
        object DBImageadv: TDBImage
          Left = 604
          Top = 0
          Width = 209
          Height = 161
          DataField = 'FOTO'
          DataSource = DSadvogado
          TabOrder = 12
          OnClick = DBImageadvClick
        end
        object DBEdit9: TDBEdit
          Left = 216
          Top = 72
          Width = 121
          Height = 21
          DataField = 'BAIRRO'
          DataSource = DSadvogado
          TabOrder = 3
        end
        object DBEdit10: TDBEdit
          Left = 472
          Top = 72
          Width = 121
          Height = 21
          DataField = 'CEP'
          DataSource = DSadvogado
          TabOrder = 5
        end
        object DBEdit12: TDBEdit
          Left = 8
          Top = 120
          Width = 145
          Height = 21
          DataField = 'CPF'
          DataSource = DSadvogado
          TabOrder = 6
        end
        object DBEdit13: TDBEdit
          Left = 160
          Top = 120
          Width = 113
          Height = 21
          DataField = 'RG'
          DataSource = DSadvogado
          TabOrder = 7
        end
        object DBEdit14: TDBEdit
          Left = 360
          Top = 120
          Width = 105
          Height = 21
          DataField = 'FONE'
          DataSource = DSadvogado
          TabOrder = 9
        end
        object DBEdit15: TDBEdit
          Left = 472
          Top = 120
          Width = 121
          Height = 21
          DataField = 'CELULAR'
          DataSource = DSadvogado
          TabOrder = 10
        end
        object DBEdit16: TDBEdit
          Left = 8
          Top = 160
          Width = 433
          Height = 21
          DataField = 'OBS'
          DataSource = DSadvogado
          TabOrder = 11
        end
        object DBEdit27: TDBEdit
          Left = 280
          Top = 120
          Width = 73
          Height = 21
          DataField = 'EXPEDIDOR'
          DataSource = DSadvogado
          TabOrder = 8
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 344
          Top = 72
          Width = 121
          Height = 21
          DataField = 'ID_CIDADE'
          DataSource = DSadvogado
          KeyField = 'ID_CIDADE'
          ListField = 'CIDADE'
          ListSource = DM.DSCIDADE
          TabOrder = 4
        end
      end
      object TabSheetAutoridade: TTabSheet
        Caption = 'Autoridade'
        ImageIndex = 3
        object Label29: TLabel
          Left = 8
          Top = 8
          Width = 28
          Height = 13
          Caption = 'Nome'
        end
        object Label31: TLabel
          Left = 8
          Top = 56
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
        end
        object Label32: TLabel
          Left = 216
          Top = 56
          Width = 27
          Height = 13
          Caption = 'Bairro'
        end
        object Label33: TLabel
          Left = 344
          Top = 56
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object Label34: TLabel
          Left = 472
          Top = 56
          Width = 21
          Height = 13
          Caption = 'CEP'
        end
        object Label35: TLabel
          Left = 8
          Top = 104
          Width = 20
          Height = 13
          Caption = 'CPF'
        end
        object Label36: TLabel
          Left = 160
          Top = 104
          Width = 55
          Height = 13
          Caption = 'Documento'
        end
        object Label37: TLabel
          Left = 280
          Top = 104
          Width = 47
          Height = 13
          Caption = 'Expedidor'
        end
        object Label38: TLabel
          Left = 360
          Top = 104
          Width = 42
          Height = 13
          Caption = 'Telefone'
        end
        object Label39: TLabel
          Left = 472
          Top = 104
          Width = 32
          Height = 13
          Caption = 'Celular'
        end
        object Label40: TLabel
          Left = 8
          Top = 144
          Width = 63
          Height = 13
          Caption = 'Observa'#231#245'es'
        end
        object Label41: TLabel
          Left = 344
          Top = 8
          Width = 28
          Height = 13
          Caption = 'Cargo'
        end
        object DBEdit28: TDBEdit
          Left = 8
          Top = 24
          Width = 329
          Height = 21
          DataField = 'AUTORIDADE'
          DataSource = DSautoridade
          TabOrder = 0
        end
        object DBEdit30: TDBEdit
          Left = 8
          Top = 72
          Width = 201
          Height = 21
          DataField = 'ENDERECO'
          DataSource = DSautoridade
          TabOrder = 2
        end
        object DBEdit31: TDBEdit
          Left = 216
          Top = 72
          Width = 121
          Height = 21
          DataField = 'BAIRRO'
          DataSource = DSautoridade
          TabOrder = 3
        end
        object DBEdit33: TDBEdit
          Left = 472
          Top = 72
          Width = 121
          Height = 21
          DataField = 'CEP'
          DataSource = DSautoridade
          TabOrder = 5
        end
        object DBEdit34: TDBEdit
          Left = 8
          Top = 120
          Width = 145
          Height = 21
          DataField = 'CPF'
          DataSource = DSautoridade
          TabOrder = 6
        end
        object DBEdit35: TDBEdit
          Left = 160
          Top = 120
          Width = 113
          Height = 21
          DataField = 'DOCUMENTO'
          DataSource = DSautoridade
          TabOrder = 7
        end
        object DBEdit36: TDBEdit
          Left = 280
          Top = 120
          Width = 73
          Height = 21
          DataField = 'DOCUMENTO_EXPEDIDOR'
          DataSource = DSautoridade
          TabOrder = 8
        end
        object DBEdit37: TDBEdit
          Left = 360
          Top = 120
          Width = 105
          Height = 21
          DataField = 'FONE'
          DataSource = DSautoridade
          TabOrder = 9
        end
        object DBEdit38: TDBEdit
          Left = 472
          Top = 120
          Width = 121
          Height = 21
          DataField = 'CELULAR'
          DataSource = DSautoridade
          TabOrder = 10
        end
        object DBEdit39: TDBEdit
          Left = 8
          Top = 160
          Width = 585
          Height = 21
          DataField = 'OBS'
          DataSource = DSautoridade
          TabOrder = 11
        end
        object DBImageaut: TDBImage
          Left = 616
          Top = 0
          Width = 177
          Height = 161
          DataField = 'FOTO'
          DataSource = DSautoridade
          TabOrder = 12
          OnClick = DBImageautClick
        end
        object DBEdit11: TDBEdit
          Left = 344
          Top = 24
          Width = 249
          Height = 21
          DataField = 'CARGO'
          DataSource = DSautoridade
          TabOrder = 1
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 344
          Top = 72
          Width = 121
          Height = 21
          DataField = 'ID_CIDADE'
          DataSource = DSautoridade
          KeyField = 'ID_CIDADE'
          ListField = 'CIDADE'
          ListSource = DM.DSCIDADE
          TabOrder = 4
        end
      end
    end
    inherited PageControlConsulta: TPageControl
      Top = 217
      Width = 806
      Height = 242
      ExplicitTop = 217
      ExplicitWidth = 806
      ExplicitHeight = 242
      inherited TabSheetConsulta: TTabSheet
        Caption = 'Indiv'#237'duos em movimento'
        ExplicitWidth = 798
        ExplicitHeight = 214
        inherited DBGridConsulta: TDBGrid
          Width = 798
          Height = 214
          DataSource = dsGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'DATA'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'INDIVIDUO'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENTRADA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SAIDA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'POSTO_TRABALHO'
              Title.Caption = 'Destino'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GAVETA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CANCELADO'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OBS'
              Width = 200
              Visible = True
            end>
        end
      end
      inherited TabSheetMovimentacao: TTabSheet
        Caption = 'Advogados em movimento'
        ExplicitWidth = 798
        ExplicitHeight = 214
        inherited DBGrid1: TDBGrid
          Width = 798
          Height = 214
          DataSource = DsConsulta
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Autoridades em movimento'
        ImageIndex = 2
      end
    end
    object DBNavigator1: TDBNavigator
      Left = 650
      Top = 186
      Width = 120
      Height = 25
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 2
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 548
    Width = 806
    ExplicitTop = 548
    ExplicitWidth = 806
  end
  inherited ImageListCadastro: TImageList
    Left = 624
    Top = 128
  end
  inherited DspCadastro: TDataSetProvider
    Left = 596
    Top = 456
  end
  inherited CdsCadastro: TClientDataSet
    PacketRecords = 100
    Left = 624
    Top = 456
  end
  inherited DsCadastro: TDataSource
    Left = 652
    Top = 456
  end
  inherited DspMovimento: TDataSetProvider
    Left = 168
    Top = 448
  end
  inherited CdsMovimento: TClientDataSet
    PacketRecords = 100
    ProviderName = 'DspMovimento'
    Left = 196
    Top = 448
  end
  inherited DsMovimento: TDataSource
    Left = 224
    Top = 448
  end
  inherited DspConsulta: TDataSetProvider
    Left = 564
    Top = 408
  end
  inherited CdsConsulta: TClientDataSet
    PacketRecords = 100
    Left = 592
    Top = 408
  end
  inherited DsConsulta: TDataSource
    OnDataChange = DsConsultaDataChange
    Left = 620
    Top = 408
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM VISITANTE')
    Left = 568
    Top = 456
    object SqlCadastroID_VISITANTE: TIntegerField
      FieldName = 'ID_VISITANTE'
      Required = True
    end
    object SqlCadastroVISITANTE: TStringField
      FieldName = 'VISITANTE'
      Size = 50
    end
    object SqlCadastroID_GRAU_PARENTESCO: TIntegerField
      FieldName = 'ID_GRAU_PARENTESCO'
    end
    object SqlCadastroID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object SqlCadastroNUMERO_CARTEIRINHA: TStringField
      FieldName = 'NUMERO_CARTEIRINHA'
      Size = 30
    end
    object SqlCadastroCPF: TStringField
      FieldName = 'CPF'
      Size = 50
    end
    object SqlCadastroRG: TStringField
      FieldName = 'RG'
      Size = 100
    end
    object SqlCadastroORGAO_EXPEDIDOR: TStringField
      FieldName = 'ORGAO_EXPEDIDOR'
      Size = 30
    end
    object SqlCadastroSEXO: TStringField
      FieldName = 'SEXO'
      Size = 50
    end
    object SqlCadastroDATA_CADASTRO: TSQLTimeStampField
      FieldName = 'DATA_CADASTRO'
    end
    object SqlCadastroSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object SqlCadastroDATA_ULT_VISITA: TSQLTimeStampField
      FieldName = 'DATA_ULT_VISITA'
    end
    object SqlCadastroFOTO: TBlobField
      FieldName = 'FOTO'
      Size = 1
    end
    object SqlCadastroMOTIVO_INATIVO: TStringField
      FieldName = 'MOTIVO_INATIVO'
      Size = 200
    end
    object SqlCadastroQUANTIDADE_MENOR: TIntegerField
      FieldName = 'QUANTIDADE_MENOR'
    end
    object SqlCadastroID_UP: TIntegerField
      FieldName = 'ID_UP'
    end
  end
  inherited SqlConsulta: TFDQuery
    SQL.Strings = (
      
        'SELECT ID_VISITANTE, VISITANTE, NUMERO_CARTEIRINHA,DATA_CADASTRO' +
        ','
      'CPF, RG, ORGAO_EXPEDIDOR, SEXO FROM VISITANTE')
    Left = 536
    Top = 408
  end
  inherited SqlMovimento: TFDQuery
    SQL.Strings = (
      'select first 1 *'
      
        ' from MOVIMENTO where id_up = :id_up and id_individuo = :id_indi' +
        'viduo')
    Left = 140
    Top = 448
    ParamData = <
      item
        Name = 'id_up'
        ParamType = ptInput
      end
      item
        Name = 'id_individuo'
        ParamType = ptInput
      end>
  end
  object OpenDialogFOTO: TOpenDialog
    Filter = 'Imagens (*.jpg)|*.jpg'
    Left = 712
    Top = 128
  end
  object SqlSelectVisitanteold: TSQLQuery
    Params = <>
    SQL.Strings = (
      
        'SELECT ID_VISITANTE, VISITANTE, NUMERO_CARTEIRINHA,DATA_CADASTRO' +
        ', CPF, RG, '
      'ORGAO_EXPEDIDOR, SEXO FROM VISITANTE')
    Left = 584
    Top = 356
  end
  object SQLdeficienciaold: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from deficiencia'
      'order by deficiencia')
    Left = 536
    Top = 504
  end
  object dspdeficiencia: TDataSetProvider
    DataSet = SQLdeficiencia
    Left = 560
    Top = 504
  end
  object cdsdeficiencia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspdeficiencia'
    Left = 584
    Top = 504
  end
  object dsdeficiencia: TDataSource
    DataSet = cdsdeficiencia
    Left = 608
    Top = 504
  end
  object DSadvogado: TDataSource
    DataSet = CDSadvogado
    Left = 244
    Top = 104
  end
  object CDSadvogado: TClientDataSet
    Aggregates = <>
    PacketRecords = 100
    Params = <>
    ProviderName = 'DSPadvogado'
    Left = 212
    Top = 104
    object CDSadvogadoID_ADVOGADO: TIntegerField
      FieldName = 'ID_ADVOGADO'
      Required = True
    end
    object CDSadvogadoADVOGADO: TStringField
      FieldName = 'ADVOGADO'
      Size = 50
    end
    object CDSadvogadoOAB: TStringField
      FieldName = 'OAB'
      Size = 30
    end
    object CDSadvogadoFOTO: TBlobField
      FieldName = 'FOTO'
    end
    object CDSadvogadoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object CDSadvogadoCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object CDSadvogadoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object CDSadvogadoID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object CDSadvogadoEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object CDSadvogadoCPF: TStringField
      FieldName = 'CPF'
      Size = 30
    end
    object CDSadvogadoRG: TStringField
      FieldName = 'RG'
      Size = 30
    end
    object CDSadvogadoFONE: TStringField
      FieldName = 'FONE'
      Size = 30
    end
    object CDSadvogadoCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 30
    end
    object CDSadvogadoOBS: TStringField
      FieldName = 'OBS'
      Size = 1000
    end
    object CDSadvogadoEXPEDIDOR: TStringField
      FieldName = 'EXPEDIDOR'
      Size = 100
    end
  end
  object SQLAdvogadoold: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from advogado')
    SQLConnection = DM.SQLConnect
    Left = 172
    Top = 104
  end
  object DSPadvogado: TDataSetProvider
    DataSet = SQLAdvogado
    Left = 196
    Top = 104
  end
  object DSautoridade: TDataSource
    DataSet = CDSautoridade
    Left = 404
    Top = 100
  end
  object CDSautoridade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPautoridade'
    Left = 380
    Top = 100
  end
  object SQLautoridadeold: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from autoridade')
    SQLConnection = DM.SQLConnect
    Left = 332
    Top = 100
  end
  object DSPautoridade: TDataSetProvider
    DataSet = SQLautoridade
    Constraints = False
    Left = 356
    Top = 100
  end
  object DSPoutros: TDataSetProvider
    DataSet = SQLoutros
    Left = 60
    Top = 104
  end
  object CDSoutros: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPoutros'
    Left = 84
    Top = 104
  end
  object DSoutros: TDataSource
    DataSet = CDSoutros
    Left = 108
    Top = 104
  end
  object SQLoutrosold: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from individuo')
    SQLConnection = DM.SQLConnect
    Left = 36
    Top = 104
  end
  object SQLGridold: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnect
    Left = 144
    Top = 398
  end
  object dspGrid: TDataSetProvider
    DataSet = SQLGrid
    Left = 172
    Top = 398
  end
  object cdsGrid: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGrid'
    Left = 200
    Top = 398
  end
  object dsGrid: TDataSource
    DataSet = cdsGrid
    Left = 228
    Top = 398
  end
  object SQLoutros: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from individuo'
      '')
    Left = 36
    Top = 153
  end
  object SQLAdvogado: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from advogado'
      '')
    Left = 172
    Top = 161
  end
  object SQLautoridade: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from autoridade'
      '')
    Left = 332
    Top = 153
  end
  object SqlSelectVisitante: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      
        'SELECT ID_VISITANTE, VISITANTE, NUMERO_CARTEIRINHA,DATA_CADASTRO' +
        ', CPF, RG, '
      'ORGAO_EXPEDIDOR, SEXO FROM VISITANTE'
      '')
    Left = 668
    Top = 354
  end
  object SQLdeficiencia: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from deficiencia'
      'order by deficiencia'
      '')
    Left = 492
    Top = 506
  end
  object SQLGrid: TFDQuery
    Connection = DM.SQLConnect
    Left = 100
    Top = 394
  end
end
