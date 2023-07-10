inherited FrmCadastroClinicaMedica: TFrmCadastroClinicaMedica
  Left = 205
  Top = 52
  Width = 933
  Height = 639
  Caption = 'Cadastro Cl'#237'nica M'#233'dica'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 523
    inherited ToolBarModeloCadastro: TToolBar
      Height = 505
    end
    inherited DBNavigator1: TDBNavigator
      Top = 505
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 802
    Height = 523
    inherited PageControlModeloCadastro: TPageControl
      Width = 802
      Height = 523
      ActivePage = TabSheetCadastro
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 794
          Height = 495
          inherited PageControlPrincipal: TPageControl
            Width = 792
            Height = 493
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
              Caption = 'Cl'#237'nica M'#233'dica'
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
                DataSource = DSclinicamedica
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
                DataSource = DSclinicamedica
                TabOrder = 4
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 794
          inherited EditLocalizar: TEdit
            TabOrder = 1
          end
          inherited RadioGroupStatus: TRadioGroup
            Left = 665
            TabOrder = 3
          end
          inherited chkSoundex: TCheckBox
            TabOrder = 2
          end
        end
        inherited PanelConsulta: TPanel
          Width = 794
          Height = 453
          inherited DBGridConsulta: TDBGrid
            Width = 792
            Height = 451
          end
          inherited DBCtrlGridConsulta: TDBCtrlGrid
            Width = 792
            Height = 451
            PanelHeight = 90
            PanelWidth = 775
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 917
    inherited Image2: TImage
      Width = 917
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 555
    Width = 917
  end
  inherited OpenDialogCapturarFoto: TOpenDialog
    Left = 727
  end
  object SQLclinicamedica: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_INTERNO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM historico_clinica_medica'
      'WHERE ID_INTERNO = :ID_INTERNO'
      'order by data desc')
    SQLConnection = DM.SQLConnect
    Left = 584
    Top = 8
  end
  object DSPclinicamedica: TDataSetProvider
    DataSet = SQLclinicamedica
    Left = 612
    Top = 8
  end
  object CDSclinicamedica: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPclinicamedica'
    Left = 640
    Top = 8
    object CDSclinicamedicaID_HISTORICO_CLINICA_MEDICA: TIntegerField
      FieldName = 'ID_HISTORICO_CLINICA_MEDICA'
      Required = True
    end
    object CDSclinicamedicaDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 8192
    end
    object CDSclinicamedicaDATA: TSQLTimeStampField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object CDSclinicamedicaID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object CDSclinicamedicaID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object CDSclinicamedicaFUNCIONRIO: TStringField
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
  object DSclinicamedica: TDataSource
    DataSet = CDSclinicamedica
    OnDataChange = DsCadastroDataChange
    Left = 668
    Top = 8
  end
end
