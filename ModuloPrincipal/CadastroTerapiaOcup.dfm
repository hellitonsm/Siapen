inherited FrmCadastroTerapiaOcup: TFrmCadastroTerapiaOcup
  Left = 248
  Top = 48
  Caption = 'CadastroTerapia Ocupacional'
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
      Width = 840
      ExplicitWidth = 840
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
          ExplicitWidth = 805
          ExplicitHeight = 494
          inherited PageControlPrincipal: TPageControl
            Width = 807
            Height = 493
            ActivePage = TabSheet1
            ExplicitWidth = 803
            ExplicitHeight = 492
            inherited TabSheetPrincipal: TTabSheet
              ExplicitWidth = 799
              ExplicitHeight = 465
            end
            inherited TabSheetDadosGerais: TTabSheet
              ExplicitWidth = 799
              ExplicitHeight = 465
            end
            object TabSheet1: TTabSheet
              Caption = 'Terapia Ocupacional'
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
                DataSource = DSterapiaocup
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
                    FieldName = 'Funcionario'
                    Width = 176
                    Visible = True
                  end>
              end
              object DBMemo1: TDBMemo
                Left = 8
                Top = 307
                Width = 673
                Height = 121
                DataField = 'DESCRICAO'
                DataSource = DSterapiaocup
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
          ExplicitWidth = 809
          inherited EditLocalizar: TEdit
            TabOrder = 1
          end
          inherited RadioGroupStatus: TRadioGroup
            Left = 694
            Width = 114
            TabOrder = 3
            ExplicitLeft = 694
            ExplicitWidth = 114
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
    Width = 932
    ExplicitWidth = 928
  end
  inherited StatusBar1: TStatusBar
    Top = 555
    Width = 932
    ExplicitTop = 555
    ExplicitWidth = 932
  end
  inherited MainMenu1: TMainMenu
    Left = 211
  end
  object SQLterapiaocupold: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_INTERNO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM historico_terapia_ocup'
      'WHERE ID_INTERNO = :ID_INTERNO'
      'order by data desc')
    SQLConnection = DM.SQLConnect
    Left = 688
    Top = 80
  end
  object DSPterapiaocup: TDataSetProvider
    DataSet = SQLterapiaocup
    Left = 644
    Top = 8
  end
  object CDSterapiaocup: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPterapiaocup'
    Left = 672
    Top = 8
    object CDSterapiaocupID_HISTORICO_TERAPIA_OCUP: TIntegerField
      FieldName = 'ID_HISTORICO_TERAPIA_OCUP'
      Required = True
    end
    object CDSterapiaocupDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 8192
    end
    object CDSterapiaocupDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object CDSterapiaocupID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object CDSterapiaocupID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object CDSterapiaocupFuncionario: TStringField
      FieldKind = fkLookup
      FieldName = 'Funcionario'
      LookupDataSet = DM.cdsfuncionario
      LookupKeyFields = 'ID_FUNCIONARIO'
      LookupResultField = 'NOME_FUNCIONARIO'
      KeyFields = 'ID_FUNCIONARIO'
      Size = 50
      Lookup = True
    end
  end
  object DSterapiaocup: TDataSource
    DataSet = CDSterapiaocup
    OnDataChange = DsCadastroDataChange
    Left = 700
    Top = 8
  end
  object SQLterapiaocup: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT * '
      'FROM historico_terapia_ocup'
      'WHERE ID_INTERNO = :ID_INTERNO'
      'order by data desc'
      '')
    Left = 612
    Top = 1
    ParamData = <
      item
        Name = 'ID_INTERNO'
        ParamType = ptInput
      end>
  end
end
