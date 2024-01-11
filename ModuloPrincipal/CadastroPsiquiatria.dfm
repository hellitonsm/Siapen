inherited FrmCadastroPsiquiatria: TFrmCadastroPsiquiatria
  Left = 249
  Top = 61
  Caption = 'Cadastro Psiquiatria'
  ClientHeight = 580
  ClientWidth = 928
  ExplicitWidth = 944
  ExplicitHeight = 639
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 522
    ExplicitHeight = 523
    inherited ToolBarModeloCadastro: TToolBar
      Height = 505
      ExplicitHeight = 505
    end
    inherited DBNavigator1: TDBNavigator
      Top = 505
      Hints.Strings = ()
      ExplicitTop = 505
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 813
    Height = 522
    ExplicitWidth = 813
    ExplicitHeight = 522
    inherited Image2: TImage
      Width = 905
      ExplicitWidth = 905
    end
    inherited PageControlModeloCadastro: TPageControl
      Width = 813
      Height = 522
      ActivePage = TabSheetCadastro
      ExplicitWidth = 813
      ExplicitHeight = 522
      inherited TabSheetCadastro: TTabSheet
        ExplicitWidth = 805
        ExplicitHeight = 494
        inherited PanelCadastro: TPanel
          Width = 805
          Height = 494
          ExplicitWidth = 805
          ExplicitHeight = 494
          inherited PageControlPrincipal: TPageControl
            Width = 803
            Height = 492
            ActivePage = TabSheet1
            ExplicitWidth = 803
            ExplicitHeight = 492
            inherited TabSheetPrincipal: TTabSheet
              ExplicitWidth = 795
              ExplicitHeight = 464
            end
            inherited TabSheetDadosGerais: TTabSheet
              ExplicitWidth = 795
              ExplicitHeight = 464
            end
            object TabSheet1: TTabSheet
              Caption = 'Psiquiatria'
              ImageIndex = 2
              object Label53: TLabel
                Left = 7
                Top = 16
                Width = 62
                Height = 13
                Caption = 'Data do Fato'
              end
              object DateTimePickerHistorico: TDateTimePicker
                Left = 7
                Top = 33
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
                Top = 165
                Width = 673
                Height = 129
                DataSource = DSpsiquiatria
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
                    Width = 77
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DESCRICAO'
                    Width = 412
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Funcion'#225'rio(a)'
                    Width = 163
                    Visible = True
                  end>
              end
              object DBMemo1: TDBMemo
                Left = 8
                Top = 307
                Width = 673
                Height = 121
                DataField = 'DESCRICAO'
                DataSource = DSpsiquiatria
                TabOrder = 4
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        ExplicitWidth = 805
        ExplicitHeight = 494
        inherited PanelLocalizaConsulta: TPanel
          Width = 809
          ExplicitWidth = 809
          inherited EditLocalizar: TEdit
            TabOrder = 1
          end
          inherited RadioGroupStatus: TRadioGroup
            Left = 680
            TabOrder = 3
            ExplicitLeft = 680
          end
          inherited chkSoundex: TCheckBox
            TabOrder = 2
          end
        end
        inherited PanelConsulta: TPanel
          Width = 809
          Height = 453
          ExplicitWidth = 809
          ExplicitHeight = 453
          inherited DBGridConsulta: TDBGrid
            Width = 807
            Height = 451
          end
          inherited DBCtrlGridConsulta: TDBCtrlGrid
            Width = 807
            Height = 451
            PanelWidth = 790
            ExplicitWidth = 807
            ExplicitHeight = 451
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 928
    ExplicitWidth = 932
  end
  inherited StatusBar1: TStatusBar
    Top = 554
    Width = 928
    ExplicitTop = 555
    ExplicitWidth = 932
  end
  inherited ImageListCadastro: TImageList
    Left = 640
    Top = 16
  end
  object SQLPsiquiatriaold: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_INTERNO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM historico_psiquiatria'
      'WHERE ID_INTERNO = :ID_INTERNO'
      'order by data desc')
    SQLConnection = DM.SQLConnect
    Left = 712
    Top = 8
  end
  object DSPpsiquiatria: TDataSetProvider
    DataSet = SQLPsiquiatria
    Left = 740
    Top = 8
  end
  object CDSpsiquiatria: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPpsiquiatria'
    Left = 768
    Top = 8
    object CDSpsiquiatriaID_HISTORICO_PSIQUIATRIA: TIntegerField
      FieldName = 'ID_HISTORICO_PSIQUIATRIA'
      Required = True
    end
    object CDSpsiquiatriaDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 8192
    end
    object CDSpsiquiatriaDATA: TSQLTimeStampField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object CDSpsiquiatriaID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object CDSpsiquiatriaID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object CDSpsiquiatriaFuncionrioa: TStringField
      FieldKind = fkLookup
      FieldName = 'Funcion'#225'rio(a)'
      LookupDataSet = DM.cdsfuncionario
      LookupKeyFields = 'ID_FUNCIONARIO'
      LookupResultField = 'NOME_FUNCIONARIO'
      KeyFields = 'ID_FUNCIONARIO'
      Size = 50
      Lookup = True
    end
  end
  object DSpsiquiatria: TDataSource
    DataSet = CDSpsiquiatria
    OnDataChange = DsCadastroDataChange
    Left = 796
    Top = 8
  end
  object SQLPsiquiatria: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT * '
      'FROM historico_psiquiatria'
      'WHERE ID_INTERNO = :ID_INTERNO'
      'order by data desc'
      '')
    Left = 676
    Top = 129
    ParamData = <
      item
        Name = 'ID_INTERNO'
        ParamType = ptInput
      end>
  end
end
