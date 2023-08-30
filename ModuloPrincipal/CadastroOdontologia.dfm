inherited FrmCadastroOdontologia: TFrmCadastroOdontologia
  Left = 191
  Top = 51
  Caption = 'Cadastro Odontologia'
  ClientHeight = 581
  ClientWidth = 932
  ExplicitWidth = 948
  ExplicitHeight = 640
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 523
    ExplicitHeight = 523
    inherited ToolBarModeloCadastro: TToolBar
      Height = 505
      ExplicitHeight = 505
      inherited Novo: TToolButton
        ExplicitWidth = 99
      end
      inherited Editar: TToolButton
        ExplicitWidth = 99
      end
      inherited Cancelar: TToolButton
        ExplicitWidth = 99
      end
      inherited Salvar: TToolButton
        ExplicitWidth = 99
      end
      inherited Excluir: TToolButton
        ExplicitWidth = 99
      end
      inherited Fechar: TToolButton
        ExplicitWidth = 99
      end
    end
    inherited DBNavigator1: TDBNavigator
      Top = 505
      Hints.Strings = ()
      ExplicitTop = 505
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 817
    Height = 523
    ExplicitWidth = 817
    ExplicitHeight = 523
    inherited Image2: TImage
      Width = 886
      ExplicitWidth = 886
    end
    inherited PageControlModeloCadastro: TPageControl
      Width = 817
      Height = 523
      ActivePage = TabSheetCadastro
      ExplicitWidth = 817
      ExplicitHeight = 523
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
            end
            object TabSheet1: TTabSheet
              Caption = 'Odontologia'
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
                DataSource = DSodontologia
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
                DataSource = DSodontologia
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
    Width = 932
    ExplicitWidth = 932
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
  object SQLodontologiaold: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_INTERNO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM historico_odontologia'
      'WHERE ID_INTERNO = :ID_INTERNO'
      'order by data desc')
    SQLConnection = DM.SQLConnect
    Left = 712
    Top = 8
  end
  object DSPodontologia: TDataSetProvider
    DataSet = SQLodontologia
    Left = 740
    Top = 8
  end
  object CDSodontologia: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPodontologia'
    Left = 768
    Top = 8
    object CDSodontologiaFuncionrioa: TStringField
      FieldKind = fkLookup
      FieldName = 'Funcion'#225'rio(a)'
      LookupDataSet = DM.CdsFuncionarioLista
      LookupKeyFields = 'ID_FUNCIONARIO'
      LookupResultField = 'NOME_FUNCIONARIO'
      KeyFields = 'ID_FUNCIONARIO'
      Size = 50
      Lookup = True
    end
    object CDSodontologiaID_HISTORICO_ODONTOLOGIA: TIntegerField
      FieldName = 'ID_HISTORICO_ODONTOLOGIA'
      Required = True
    end
    object CDSodontologiaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 8192
    end
    object CDSodontologiaDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object CDSodontologiaID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object CDSodontologiaID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
  end
  object DSodontologia: TDataSource
    DataSet = CDSodontologia
    OnDataChange = DsCadastroDataChange
    Left = 796
    Top = 8
  end
  object SQLodontologia: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM historico_odontologia'
      'WHERE ID_INTERNO = :ID_INTERNO'
      'order by data desc'
      '')
    Left = 679
    Top = 72
    ParamData = <
      item
        Name = 'ID_INTERNO'
        ParamType = ptInput
      end>
  end
end
