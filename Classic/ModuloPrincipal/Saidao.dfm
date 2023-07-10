inherited FrmSaidao: TFrmSaidao
  Left = 230
  Top = 154
  Width = 967
  Height = 599
  Caption = 'Said'#227'o'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 510
    inherited ToolBarModeloCadastro: TToolBar
      Height = 492
      inherited Novo: TToolButton
        Visible = False
      end
    end
    inherited DBNavigator1: TDBNavigator
      Top = 492
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 836
    Height = 510
    inherited PageControlModeloCadastro: TPageControl
      Width = 836
      Height = 510
      ActivePage = TabSheetCadastro
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 828
          Height = 482
          object Label2: TLabel
            Left = 16
            Top = 8
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditcodigo
          end
          object Label3: TLabel
            Left = 104
            Top = 8
            Width = 51
            Height = 13
            Caption = 'N'#186' Portaria'
            FocusControl = DBEdit2
          end
          object Label4: TLabel
            Left = 208
            Top = 8
            Width = 62
            Height = 13
            Caption = 'Data Portaria'
          end
          object Label5: TLabel
            Left = 500
            Top = 54
            Width = 55
            Height = 13
            Caption = 'Funcion'#225'rio'
          end
          object Label6: TLabel
            Left = 18
            Top = 56
            Width = 57
            Height = 13
            Caption = 'Tipo Said'#227'o'
          end
          object Label7: TLabel
            Left = 418
            Top = 8
            Width = 55
            Height = 13
            Caption = 'Data Sa'#237'da'
          end
          object Label8: TLabel
            Left = 529
            Top = 8
            Width = 64
            Height = 13
            Caption = 'Data Retorno'
          end
          object Label13: TLabel
            Left = 257
            Top = 55
            Width = 70
            Height = 13
            Caption = 'Unidade Penal'
          end
          object SpeedButton1: TSpeedButton
            Left = 241
            Top = 82
            Width = 23
            Height = 22
            Hint = 'Cadastrar Tipo Said'#227'o'
            Caption = '...'
            Enabled = False
            Flat = True
            ParentShowHint = False
            ShowHint = True
            Visible = False
            OnClick = SpeedButton1Click
          end
          object lbl9: TLabel
            Left = 321
            Top = 10
            Width = 55
            Height = 13
            Caption = 'Hora Sa'#237'da'
          end
          object Label11: TLabel
            Left = 633
            Top = 8
            Width = 64
            Height = 13
            Caption = 'Hora Retorno'
          end
          object DBEditcodigo: TDBEdit
            Left = 16
            Top = 24
            Width = 81
            Height = 21
            DataField = 'ID_SAIDAO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 104
            Top = 24
            Width = 100
            Height = 21
            DataField = 'NUMERO_PORTARIA'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 1
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 257
            Top = 70
            Width = 241
            Height = 21
            DataField = 'ID_UP'
            DataSource = DsCadastro
            Enabled = False
            KeyField = 'ID_UP'
            ListField = 'NOME_UP'
            ListSource = DM.DsUP
            TabOrder = 8
          end
          object adpDBDateTimePicker1: TadpDBDateTimePicker
            Left = 418
            Top = 24
            Width = 103
            Height = 21
            Date = 41047.554883923610000000
            Time = 41047.554883923610000000
            Enabled = False
            TabOrder = 4
            DataField = 'DATA_SAIDA'
            DataSource = DsCadastro
            ReadOnly = False
          end
          object adpDBDateTimePicker2: TadpDBDateTimePicker
            Left = 208
            Top = 24
            Width = 105
            Height = 21
            Date = 41047.555191782410000000
            Time = 41047.555191782410000000
            Enabled = False
            TabOrder = 2
            DataField = 'DATA_PORTARIA'
            DataSource = DsCadastro
            ReadOnly = False
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 500
            Top = 70
            Width = 230
            Height = 21
            DataField = 'ID_FUNCIONARIO'
            DataSource = DsCadastro
            Enabled = False
            KeyField = 'ID_FUNCIONARIO'
            ListField = 'NOME_FUNCIONARIO'
            ListSource = DM.DsFuncionarioLista
            TabOrder = 9
          end
          object adpDBDateTimePicker3: TadpDBDateTimePicker
            Left = 527
            Top = 24
            Width = 98
            Height = 21
            Date = 41047.555759120370000000
            Time = 41047.555759120370000000
            Enabled = False
            TabOrder = 5
            DataField = 'DATA_RETORNO'
            DataSource = DsCadastro
            ReadOnly = False
          end
          object PageControl1: TPageControl
            Left = 16
            Top = 112
            Width = 785
            Height = 361
            ActivePage = TabSheet1
            TabOrder = 10
            object TabSheet1: TTabSheet
              Caption = 'Interno'
              object Label9: TLabel
                Left = 16
                Top = 8
                Width = 48
                Height = 13
                Caption = 'Prontu'#225'rio'
              end
              object Label10: TLabel
                Left = 120
                Top = 9
                Width = 33
                Height = 13
                Caption = 'Interno'
              end
              object Label14: TLabel
                Left = 176
                Top = 305
                Width = 345
                Height = 20
                Caption = 'DUPLO CLIQUE PARA CANCELAR SA'#205'DA'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBGrid1: TDBGrid
                Left = 16
                Top = 104
                Width = 745
                Height = 193
                DataSource = dsvinc_saidao
                TabOrder = 5
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                OnDblClick = DBGrid1DblClick
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'Prontu'#225'rio'
                    Width = 76
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Interno'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'STATUS'
                    Width = 80
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DATA_CANCELAMENTO'
                    Width = 102
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'MOTIVO_CANCELAMENTO'
                    Width = 125
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Funcionario'
                    Visible = True
                  end>
              end
              object Editprontuario: TEdit
                Left = 16
                Top = 24
                Width = 97
                Height = 21
                TabOrder = 0
                OnExit = EditprontuarioExit
              end
              object DBLookupComboBoxinterno: TDBLookupComboBox
                Left = 120
                Top = 24
                Width = 473
                Height = 21
                KeyField = 'ID_INTERNO'
                ListField = 'NOME_INTERNO'
                ListSource = DM.DsInterno
                TabOrder = 1
              end
              object Button1: TButton
                Left = 604
                Top = 24
                Width = 53
                Height = 20
                Caption = 'Busca'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                OnClick = Button1Click
              end
              object Btnincluir: TBitBtn
                Left = 670
                Top = 20
                Width = 81
                Height = 25
                Caption = 'Inserir'
                Default = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
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
              object BitBtn2: TBitBtn
                Left = 16
                Top = 56
                Width = 185
                Height = 27
                Caption = 'Inseir Todos Internos(as)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 4
                OnClick = BitBtn2Click
                Glyph.Data = {
                  DE010000424DDE01000000000000760000002800000024000000120000000100
                  0400000000006801000000000000000000001000000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
                  33333333333F8888883F33330000324334222222443333388F3833333388F333
                  000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
                  F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
                  223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
                  3338888300003AAAAAAA33333333333888888833333333330000333333333333
                  333333333333333333FFFFFF000033333333333344444433FFFF333333888888
                  00003A444333333A22222438888F333338F3333800003A2243333333A2222438
                  F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
                  22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
                  33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
                  3333333333338888883333330000333333333333333333333333333333333333
                  0000}
                NumGlyphs = 2
              end
            end
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 19
            Top = 71
            Width = 233
            Height = 21
            DataField = 'ID_TIPO_SAIDAO'
            DataSource = DsCadastro
            Enabled = False
            KeyField = 'ID_TIPO_SAIDAO'
            ListField = 'TIPO_SAIDAO'
            ListSource = DM.Dstiposaidao
            TabOrder = 7
          end
          object DBEditHORA: TDBEdit
            Left = 321
            Top = 24
            Width = 88
            Height = 21
            DataField = 'HORA_SAIDA'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 3
          end
          object adpDBDateTimePicker4: TadpDBDateTimePicker
            Left = 631
            Top = 24
            Width = 98
            Height = 21
            Date = 41047.555759120370000000
            Time = 41047.555759120370000000
            Enabled = False
            Kind = dtkTime
            TabOrder = 6
            DataField = 'DATA_RETORNO'
            DataSource = DsCadastro
            ReadOnly = False
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 828
        end
        inherited PanelConsulta: TPanel
          Width = 828
          Height = 448
          inherited DBGridConsulta: TDBGrid
            Width = 826
            Height = 446
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 951
    inherited Image2: TImage
      Width = 951
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 542
    Width = 951
  end
  inherited SqlCadastro: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'id_up'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM Saidao'
      'where id_up = :id_up'
      'order by data_portaria desc')
    Left = 664
    Top = 16
  end
  inherited DspCadastro: TDataSetProvider
    Left = 692
    Top = 16
  end
  inherited CdsCadastro: TClientDataSet
    Left = 720
    Top = 16
  end
  inherited DsCadastro: TDataSource
    Left = 748
    Top = 16
  end
  object DSPvinc_saidao: TDataSetProvider
    DataSet = SQLvinc_saidao
    Left = 547
    Top = 16
  end
  object cdsvinc_saidao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'id_saidao'
    MasterFields = 'id_saidao'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPvinc_saidao'
    Left = 575
    Top = 16
    object cdsvinc_saidaoID_VINC_SAIDAO: TIntegerField
      FieldName = 'ID_VINC_SAIDAO'
      Required = True
    end
    object cdsvinc_saidaoID_SAIDAO: TIntegerField
      FieldName = 'ID_SAIDAO'
    end
    object cdsvinc_saidaoID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object cdsvinc_saidaoID_FUNCIONARIO_CANCELAMENTO: TIntegerField
      FieldName = 'ID_FUNCIONARIO_CANCELAMENTO'
    end
    object cdsvinc_saidaoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 50
    end
    object cdsvinc_saidaoDATA_CANCELAMENTO: TSQLTimeStampField
      DisplayLabel = 'Data Cancelamento'
      FieldName = 'DATA_CANCELAMENTO'
    end
    object cdsvinc_saidaoMOTIVO_CANCELAMENTO: TStringField
      DisplayLabel = 'Motivo Cancelamento'
      FieldName = 'MOTIVO_CANCELAMENTO'
      Size = 50
    end
    object cdsvinc_saidaoInterno: TStringField
      FieldKind = fkLookup
      FieldName = 'Interno'
      LookupDataSet = DM.CdsInterno
      LookupKeyFields = 'ID_INTERNO'
      LookupResultField = 'NOME_INTERNO'
      KeyFields = 'ID_INTERNO'
      Size = 50
      Lookup = True
    end
    object cdsvinc_saidaoPronturio: TStringField
      FieldKind = fkLookup
      FieldName = 'Prontu'#225'rio'
      LookupDataSet = DM.CdsInterno
      LookupKeyFields = 'ID_INTERNO'
      LookupResultField = 'RGI'
      KeyFields = 'ID_INTERNO'
      Size = 50
      Lookup = True
    end
    object cdsvinc_saidaoFuncionario: TStringField
      FieldKind = fkLookup
      FieldName = 'Funcionario'
      LookupDataSet = DM.cdsfuncionario
      LookupKeyFields = 'ID_FUNCIONARIO'
      LookupResultField = 'NOME_FUNCIONARIO'
      KeyFields = 'ID_FUNCIONARIO_CANCELAMENTO'
      Size = 50
      Lookup = True
    end
  end
  object dsvinc_saidao: TDataSource
    DataSet = cdsvinc_saidao
    Left = 603
    Top = 16
  end
  object SQLvinc_saidao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_saidao'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      'select v.*'
      'from vinc_saidao v'
      'inner join interno i on (v.id_interno=i.id_interno)'
      'where v.id_saidao = :id_saidao'
      'order by  i.nome_interno')
    SQLConnection = DM.SQLConnect
    Left = 519
    Top = 16
  end
end
