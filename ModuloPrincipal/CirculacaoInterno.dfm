inherited FrmCirculacaoInterno: TFrmCirculacaoInterno
  Left = 119
  Top = 42
  Width = 984
  Height = 656
  Caption = 'Circula'#231#227'o Interno'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 567
    inherited ToolBarModeloCadastro: TToolBar
      Height = 549
    end
    inherited DBNavigator1: TDBNavigator
      Top = 549
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 853
    Height = 567
    inherited PageControlModeloCadastro: TPageControl
      Width = 853
      Height = 567
      ActivePage = TabSheetCadastro
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 845
          Height = 539
          object Label2: TLabel
            Left = 24
            Top = 16
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditcodigo
          end
          object Label3: TLabel
            Left = 216
            Top = 16
            Width = 70
            Height = 13
            Caption = 'Unidade Penal'
          end
          object Label4: TLabel
            Left = 112
            Top = 16
            Width = 23
            Height = 13
            Caption = 'Data'
          end
          object DBEditcodigo: TDBEdit
            Left = 24
            Top = 32
            Width = 81
            Height = 21
            DataField = 'ID_CIRCULACAO_PRESO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object adpDBDateTimePicker1: TadpDBDateTimePicker
            Left = 112
            Top = 32
            Width = 97
            Height = 21
            Date = 41085.499540023150000000
            Time = 41085.499540023150000000
            TabOrder = 1
            DataField = 'DATA'
            DataSource = DsCadastro
            ReadOnly = False
          end
          object DBLookupComboBoxup: TDBLookupComboBox
            Left = 216
            Top = 32
            Width = 377
            Height = 21
            DataField = 'ID_UP'
            DataSource = DsCadastro
            Enabled = False
            KeyField = 'ID_UP'
            ListField = 'NOME_UP'
            ListSource = DM.DsUP
            TabOrder = 2
          end
          object PageControl1: TPageControl
            Left = 24
            Top = 72
            Width = 809
            Height = 441
            ActivePage = TabSheet1
            TabOrder = 3
            object TabSheet1: TTabSheet
              Caption = 'Movimenta'#231#245'es'
              object Label8: TLabel
                Left = 17
                Top = 62
                Width = 25
                Height = 13
                Caption = 'Setor'
              end
              object SpeedButton3: TSpeedButton
                Left = 244
                Top = 74
                Width = 23
                Height = 22
                Caption = '...'
                Flat = True
                OnClick = SpeedButton3Click
              end
              object Label10: TLabel
                Left = 17
                Top = 15
                Width = 33
                Height = 13
                Caption = 'Interno'
              end
              object lbl12: TLabel
                Left = 403
                Top = 60
                Width = 93
                Height = 13
                Caption = 'Funcion'#225'rio Escolta'
              end
              object Label56: TLabel
                Left = 17
                Top = 104
                Width = 22
                Height = 13
                Caption = 'OBS'
              end
              object Label6: TLabel
                Left = 279
                Top = 63
                Width = 45
                Height = 13
                Caption = 'Matr'#237'cula'
              end
              object DBLookupComboBoxPostoTrabalho: TDBLookupComboBox
                Left = 17
                Top = 77
                Width = 224
                Height = 21
                KeyField = 'IDPOSTO_TRABALHO'
                ListField = 'POSTO_TRABALHO'
                ListSource = DM.DsPostoTrabalho
                TabOrder = 1
              end
              object DBLookupComboBoxinterno: TDBLookupComboBox
                Left = 16
                Top = 30
                Width = 593
                Height = 21
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                KeyField = 'ID_INTERNO'
                ListField = 'NOME_INTERNO'
                ListSource = DM.DsInterno
                ParentFont = False
                TabOrder = 0
              end
              object Button1: TButton
                Left = 624
                Top = 27
                Width = 61
                Height = 25
                Caption = 'Busca'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 7
                TabStop = False
                OnClick = Button1Click
              end
              object DBLookupComboBoxID_FUNCIONARIO: TDBLookupComboBox
                Left = 403
                Top = 76
                Width = 286
                Height = 21
                Enabled = False
                KeyField = 'ID_FUNCIONARIO'
                ListField = 'NOME_GUERRA'
                ListSource = DM.DsFuncionarioLista
                TabOrder = 3
              end
              object Btnincluir: TBitBtn
                Left = 598
                Top = 130
                Width = 89
                Height = 29
                Caption = 'Sa'#237'da'
                Default = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 5
                OnClick = BtnincluirClick
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
              object PageControl2: TPageControl
                Left = 8
                Top = 184
                Width = 729
                Height = 193
                ActivePage = TabSheet2
                TabOrder = 6
                object TabSheet2: TTabSheet
                  Caption = 'Circulando'
                  object DBGrid1: TDBGrid
                    Left = 16
                    Top = 16
                    Width = 697
                    Height = 120
                    DataSource = dsvinccirculacaopreso
                    PopupMenu = PopupMenuIsolamento
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'NOME_INTERNO'
                        Title.Caption = 'Interno'
                        Width = 236
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'Setor'
                        Width = 123
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'HORA_SAIDA'
                        Title.Caption = 'Hora Sa'#237'da'
                        Width = 69
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'HORA_ENTRADA'
                        Title.Caption = 'Hora Entrada'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'Funcion'#225'rio'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'OBS'
                        Visible = True
                      end>
                  end
                end
                object TabSheet3: TTabSheet
                  Caption = 'Geral'
                  ImageIndex = 1
                  object DBGrid2: TDBGrid
                    Left = 16
                    Top = 24
                    Width = 649
                    Height = 120
                    DataSource = dsvincgeral
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = []
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'NOME_INTERNO'
                        Title.Caption = 'Interno'
                        Width = 264
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'Setor'
                        Width = 117
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'HORA_SAIDA'
                        Title.Caption = 'Hora Sa'#237'da'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'HORA_ENTRADA'
                        Title.Caption = 'Hora Entrada'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'Funcion'#225'rio'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'OBS'
                        Visible = True
                      end>
                  end
                end
              end
              object Memoobs: TMemo
                Left = 16
                Top = 121
                Width = 561
                Height = 40
                TabOrder = 4
              end
              object EditMATRICULA: TEdit
                Left = 277
                Top = 77
                Width = 121
                Height = 21
                TabOrder = 2
                OnExit = EditMATRICULAExit
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 845
        end
        inherited PanelConsulta: TPanel
          Width = 845
          Height = 505
          inherited DBGridConsulta: TDBGrid
            Width = 843
            Height = 503
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 968
    inherited Image2: TImage
      Width = 968
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 599
    Width = 968
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM circulacao_preso')
    Left = 384
    Top = 8
  end
  inherited DspCadastro: TDataSetProvider
    Left = 412
    Top = 8
  end
  inherited CdsCadastro: TClientDataSet
    Left = 440
    Top = 8
  end
  inherited DsCadastro: TDataSource
    Left = 468
    Top = 8
  end
  object SQLvinccirculacaopreso: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'idcirculacao'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select v.*, i.nome_interno from vinc_circulacao_preso v'
      'inner join interno i on (i.id_interno=v.id_interno)'
      'where id_circulacao_preso = :idcirculacao'
      'and coalesce(hora_entrada,'#39#39')='#39#39' '
      'order by nome_interno')
    SQLConnection = DM.SQLConnect
    Left = 504
    Top = 8
  end
  object dspvinccirculacaopreso: TDataSetProvider
    DataSet = SQLvinccirculacaopreso
    Left = 536
    Top = 8
  end
  object cdsvinccirculacaopreso: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CIRCULACAO_PRESO'
    MasterFields = 'ID_CIRCULACAO_PRESO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspvinccirculacaopreso'
    Left = 568
    Top = 8
    object cdsvinccirculacaopresoID_VINC_CIRCULACAO_PRESO: TIntegerField
      FieldName = 'ID_VINC_CIRCULACAO_PRESO'
      Required = True
    end
    object cdsvinccirculacaopresoID_CIRCULACAO_PRESO: TIntegerField
      FieldName = 'ID_CIRCULACAO_PRESO'
    end
    object cdsvinccirculacaopresoID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object cdsvinccirculacaopresoHORA_ENTRADA: TTimeField
      FieldName = 'HORA_ENTRADA'
    end
    object cdsvinccirculacaopresoHORA_SAIDA: TTimeField
      FieldName = 'HORA_SAIDA'
    end
    object cdsvinccirculacaopresoID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsvinccirculacaopresoOBS: TStringField
      FieldName = 'OBS'
      Size = 8192
    end
    object cdsvinccirculacaopresoFuncionrio: TStringField
      FieldKind = fkLookup
      FieldName = 'Funcion'#225'rio'
      LookupDataSet = DM.CdsFuncionarioLista
      LookupKeyFields = 'ID_FUNCIONARIO'
      LookupResultField = 'NOME_FUNCIONARIO'
      KeyFields = 'ID_FUNCIONARIO'
      Size = 50
      Lookup = True
    end
    object cdsvinccirculacaopresoID_POSTO_LOCAL: TIntegerField
      FieldName = 'ID_POSTO_LOCAL'
    end
    object cdsvinccirculacaopresoSetor: TStringField
      FieldKind = fkLookup
      FieldName = 'Setor'
      LookupDataSet = DM.CdsPostoTrabalho
      LookupKeyFields = 'IDPOSTO_TRABALHO'
      LookupResultField = 'POSTO_TRABALHO'
      KeyFields = 'ID_POSTO_LOCAL'
      Size = 50
      Lookup = True
    end
    object cdsvinccirculacaopresoNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 100
    end
  end
  object dsvinccirculacaopreso: TDataSource
    DataSet = cdsvinccirculacaopreso
    Left = 600
    Top = 8
  end
  object PopupMenuIsolamento: TPopupMenu
    Left = 772
    Top = 17
    object Liberar1: TMenuItem
      Caption = 'Entrada Interno'
      OnClick = Liberar1Click
    end
  end
  object SQLvincgeral: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'idcirculacao'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select  v.*, i.nome_interno  from vinc_circulacao_preso v'
      'inner join interno i on (i.id_interno=v.id_interno)'
      'where id_circulacao_preso = :idcirculacao'
      'order by nome_interno')
    SQLConnection = DM.SQLConnect
    Left = 800
    Top = 72
  end
  object dspvincgeral: TDataSetProvider
    DataSet = SQLvincgeral
    Left = 832
    Top = 72
  end
  object cdsvincgeral: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CIRCULACAO_PRESO'
    MasterFields = 'ID_CIRCULACAO_PRESO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspvincgeral'
    Left = 864
    Top = 72
    object IntegerField1: TIntegerField
      FieldName = 'ID_VINC_CIRCULACAO_PRESO'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_CIRCULACAO_PRESO'
    end
    object IntegerField3: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object TimeField1: TTimeField
      FieldName = 'HORA_ENTRADA'
    end
    object TimeField2: TTimeField
      FieldName = 'HORA_SAIDA'
    end
    object IntegerField4: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object StringField1: TStringField
      FieldName = 'OBS'
      Size = 8192
    end
    object StringField3: TStringField
      FieldKind = fkLookup
      FieldName = 'Funcion'#225'rio'
      LookupDataSet = DM.CdsFuncionarioLista
      LookupKeyFields = 'ID_FUNCIONARIO'
      LookupResultField = 'NOME_FUNCIONARIO'
      KeyFields = 'ID_FUNCIONARIO'
      Size = 50
      Lookup = True
    end
    object IntegerField5: TIntegerField
      FieldName = 'ID_POSTO_LOCAL'
    end
    object StringField4: TStringField
      FieldKind = fkLookup
      FieldName = 'Setor'
      LookupDataSet = DM.CdsPostoTrabalho
      LookupKeyFields = 'IDPOSTO_TRABALHO'
      LookupResultField = 'POSTO_TRABALHO'
      KeyFields = 'ID_POSTO_LOCAL'
      Size = 50
      Lookup = True
    end
    object cdsvincgeralNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 100
    end
  end
  object dsvincgeral: TDataSource
    DataSet = cdsvincgeral
    Left = 896
    Top = 72
  end
end
