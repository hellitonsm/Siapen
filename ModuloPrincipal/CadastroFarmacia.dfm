inherited FrmCadastroFarmacia: TFrmCadastroFarmacia
  Left = 222
  Top = 110
  Width = 894
  Caption = 'Cadastro Farm'#225'cia'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 763
    inherited PageControlModeloCadastro: TPageControl
      Width = 763
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 755
          inherited PageControlPrincipal: TPageControl
            Width = 753
            ActivePage = TabSheet1
            inherited TabSheetPrincipal: TTabSheet
              inherited DBEdit3: TDBEdit
                TabOrder = 4
              end
              inherited DBEditID_PROCEDENCIA: TDBEdit
                TabOrder = 19
              end
              inherited DBLookupComboBoxID_PROCEDENCIA: TDBLookupComboBox
                TabOrder = 20
              end
              inherited DBRadioGroup1: TDBRadioGroup
                TabOrder = 6
              end
              inherited DBRadioGroup2: TDBRadioGroup
                TabOrder = 18
              end
              inherited DBEdit7: TDBEdit
                TabOrder = 16
              end
              inherited DBLookupComboBox2: TDBLookupComboBox
                TabOrder = 17
              end
              inherited DBComboBox3: TDBComboBox
                TabOrder = 15
              end
              inherited DBEdit86: TDBEdit
                TabOrder = 3
              end
              inherited dbrgrpST: TDBRadioGroup
                TabOrder = 5
              end
              inherited DBEdit4: TDBEdit
                TabOrder = 9
              end
              inherited DBEdit20: TDBEdit
                TabOrder = 10
              end
              inherited DBEdit29: TDBEdit
                TabOrder = 12
              end
              inherited DBComboBox2: TDBComboBox
                TabOrder = 13
              end
              inherited DBEditpermanencia: TDBEdit
                TabOrder = 11
              end
              inherited DBLookupComboBoxFACCAO: TDBLookupComboBox
                TabOrder = 21
              end
              inherited DBEdit8: TDBEdit
                TabOrder = 24
              end
              inherited DBEdit31: TDBEdit
                TabOrder = 25
              end
              inherited DBEdit33: TDBEdit
                TabOrder = 26
              end
              inherited DBComboBox5: TDBComboBox
                TabOrder = 27
              end
              inherited DBComboBox4: TDBComboBox
                TabOrder = 28
              end
            end
            object TabSheet1: TTabSheet
              Caption = 'Farm'#225'cia'
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
                Date = 0.302563541663403200
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
                DataSource = DSfarmacia
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
                    FieldName = 'FUNCION'#193'RIO'
                    Visible = True
                  end>
              end
              object DBMemo1: TDBMemo
                Left = 8
                Top = 307
                Width = 673
                Height = 121
                DataField = 'DESCRICAO'
                DataSource = DSfarmacia
                TabOrder = 4
              end
            end
            object TabSheet2: TTabSheet
              Caption = 'Medica'#231#227'o'
              ImageIndex = 3
              object Label8: TLabel
                Left = 16
                Top = 16
                Width = 23
                Height = 13
                Caption = 'Data'
              end
              object Label14: TLabel
                Left = 112
                Top = 16
                Width = 42
                Height = 13
                Caption = 'Rem'#233'dio'
              end
              object Label15: TLabel
                Left = 16
                Top = 64
                Width = 41
                Height = 13
                Caption = 'Hist'#243'rico'
              end
              object SpeedButton3: TSpeedButton
                Left = 701
                Top = 30
                Width = 23
                Height = 22
                Hint = 'Cadastrar Rem'#233'dio'
                Caption = '...'
                Flat = True
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton3Click
              end
              object DBLookupComboBoxremedio: TDBLookupComboBox
                Left = 112
                Top = 32
                Width = 585
                Height = 21
                KeyField = 'ID_REMEDIO'
                ListField = 'NOME_REMEDIO'
                ListSource = DM.DSRemedio
                TabOrder = 0
              end
              object DateTimePickerdata: TDateTimePicker
                Left = 15
                Top = 33
                Width = 91
                Height = 21
                Date = 0.302563541663403200
                Time = 0.302563541663403200
                TabOrder = 1
              end
              object Memomedicacao: TMemo
                Left = 16
                Top = 80
                Width = 705
                Height = 65
                Lines.Strings = (
                  '')
                TabOrder = 2
              end
              object DBGrid2: TDBGrid
                Left = 16
                Top = 192
                Width = 705
                Height = 129
                DataSource = DSmedicacaointerno
                TabOrder = 4
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'DATA'
                    Width = 73
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Remedio'
                    Title.Caption = 'Rem'#233'dio'
                    Width = 208
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'OBS'
                    Title.Caption = 'Hist'#243'rico'
                    Width = 295
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Funcion'#225'rio(a)'
                    Visible = True
                  end>
              end
              object DBMemo2: TDBMemo
                Left = 16
                Top = 326
                Width = 705
                Height = 102
                DataField = 'OBS'
                DataSource = DSmedicacaointerno
                TabOrder = 5
              end
              object Button2: TButton
                Left = 280
                Top = 160
                Width = 81
                Height = 25
                Caption = 'Incluir'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
                OnClick = Button2Click
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 755
          inherited EditLocalizar: TEdit
            TabOrder = 1
          end
          inherited RadioGroupStatus: TRadioGroup
            Left = 626
            TabOrder = 3
          end
          inherited chkSoundex: TCheckBox
            TabOrder = 2
          end
        end
        inherited PanelConsulta: TPanel
          Width = 755
          inherited DBGridConsulta: TDBGrid
            Width = 753
          end
          inherited DBCtrlGridConsulta: TDBCtrlGrid
            Width = 753
            Height = 445
            PanelWidth = 736
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 878
    inherited Image2: TImage
      Width = 878
    end
  end
  inherited StatusBar1: TStatusBar
    Width = 878
  end
  inherited DsCadastro: TDataSource
    Left = 732
  end
  object SQLfarmacia: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_INTERNO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM historico_farmacia'
      'WHERE ID_INTERNO = :ID_INTERNO'
      'order by data desc')
    SQLConnection = DM.SQLConnect
    Left = 584
    Top = 8
  end
  object DSPfarmacia: TDataSetProvider
    DataSet = SQLfarmacia
    Left = 612
    Top = 8
  end
  object CDSfarmacia: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPfarmacia'
    Left = 640
    Top = 8
    object CDSfarmaciaID_HISTORICO_FARMACIA: TIntegerField
      FieldName = 'ID_HISTORICO_FARMACIA'
      Required = True
    end
    object CDSfarmaciaDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 8192
    end
    object CDSfarmaciaDATA: TSQLTimeStampField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object CDSfarmaciaID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object CDSfarmaciaID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object CDSfarmaciaFUNCIONRIO: TStringField
      DisplayLabel = 'Funcion'#225'rio'
      FieldKind = fkLookup
      FieldName = 'FUNCION'#193'RIO'
      LookupDataSet = DM.cdsfuncionario
      LookupKeyFields = 'ID_FUNCIONARIO'
      LookupResultField = 'NOME_FUNCIONARIO'
      KeyFields = 'ID_FUNCIONARIO'
      Size = 50
      Lookup = True
    end
  end
  object DSfarmacia: TDataSource
    DataSet = CDSfarmacia
    OnDataChange = DsCadastroDataChange
    Left = 668
    Top = 8
  end
  object SQLmedicacaointerno: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM remedio_interno'
      'where id_interno = :id_interno')
    SQLConnection = DM.SQLConnect
    Left = 408
    Top = 8
  end
  object DSPmedicacaointerno: TDataSetProvider
    DataSet = SQLmedicacaointerno
    Left = 436
    Top = 8
  end
  object CDSmedicacaointerno: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPmedicacaointerno'
    Left = 464
    Top = 8
    object CDSmedicacaointernoID_REMEDIO_INTERNO: TIntegerField
      FieldName = 'ID_REMEDIO_INTERNO'
      Required = True
    end
    object CDSmedicacaointernoID_REMEDIO: TIntegerField
      FieldName = 'ID_REMEDIO'
    end
    object CDSmedicacaointernoID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object CDSmedicacaointernoDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object CDSmedicacaointernoOBS: TStringField
      FieldName = 'OBS'
      Size = 8192
    end
    object CDSmedicacaointernoRemedio: TStringField
      FieldKind = fkLookup
      FieldName = 'Remedio'
      LookupDataSet = DM.CDSRemedio
      LookupKeyFields = 'ID_REMEDIO'
      LookupResultField = 'NOME_REMEDIO'
      KeyFields = 'ID_REMEDIO'
      Size = 100
      Lookup = True
    end
    object CDSmedicacaointernoID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object CDSmedicacaointernoFuncionrioa: TStringField
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
  object DSmedicacaointerno: TDataSource
    DataSet = CDSmedicacaointerno
    OnDataChange = DsCadastroDataChange
    Left = 492
    Top = 8
  end
end
