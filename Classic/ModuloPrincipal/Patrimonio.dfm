inherited FrmPatrimonio: TFrmPatrimonio
  Left = 499
  Top = 185
  Caption = 'Patrim'#244'nio'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    inherited ToolBarModeloCadastro: TToolBar
      inherited Excluir: TToolButton
        Visible = True
      end
    end
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    inherited PageControlModeloCadastro: TPageControl
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          object PageControlPatrimonio: TPageControl
            Left = 1
            Top = 1
            Width = 667
            Height = 354
            ActivePage = TabSheet1
            Align = alClient
            TabOrder = 0
            TabWidth = 100
            object TabSheet1: TTabSheet
              Caption = 'Dados 1'
              object Label2: TLabel
                Left = 24
                Top = 3
                Width = 11
                Height = 13
                Caption = 'ID'
                FocusControl = DBEdit1
              end
              object Label3: TLabel
                Left = 24
                Top = 43
                Width = 33
                Height = 13
                Caption = 'Tombo'
                FocusControl = DBEdit2
              end
              object Label4: TLabel
                Left = 24
                Top = 83
                Width = 49
                Height = 13
                Caption = 'Num.Serie'
                FocusControl = DBEdit3
              end
              object Label5: TLabel
                Left = 24
                Top = 123
                Width = 28
                Height = 13
                Caption = 'Nome'
                FocusControl = DBEdit4
              end
              object Label6: TLabel
                Left = 24
                Top = 163
                Width = 64
                Height = 13
                Caption = 'Complemento'
                FocusControl = DBEdit5
              end
              object Label7: TLabel
                Left = 24
                Top = 203
                Width = 30
                Height = 13
                Caption = 'Marca'
                FocusControl = DBEdit6
              end
              object Label8: TLabel
                Left = 24
                Top = 243
                Width = 35
                Height = 13
                Caption = 'Modelo'
                FocusControl = DBEdit7
              end
              object Label9: TLabel
                Left = 24
                Top = 283
                Width = 33
                Height = 13
                Caption = 'Estado'
                FocusControl = DBEdit8
              end
              object Label18: TLabel
                Left = 100
                Top = 3
                Width = 68
                Height = 13
                Caption = 'Data Cadastro'
                FocusControl = DBEdit17
              end
              object lbl7: TLabel
                Left = 201
                Top = 3
                Width = 103
                Height = 13
                Caption = 'Funcion'#225'rio Registrou'
              end
              object Label46: TLabel
                Left = 426
                Top = 3
                Width = 70
                Height = 13
                Caption = 'Unidade Penal'
              end
              object lbl2: TLabel
                Left = 245
                Top = 43
                Width = 88
                Height = 13
                Caption = 'Tipo de Patrim'#244'nio'
              end
              object btn2: TSpeedButton
                Left = 596
                Top = 58
                Width = 23
                Height = 22
                Caption = '...'
                Flat = True
                OnClick = btn2Click
              end
              object DBEdit1: TDBEdit
                Left = 24
                Top = 19
                Width = 73
                Height = 21
                DataField = 'IDPATRIMONIO'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 0
              end
              object DBEdit2: TDBEdit
                Left = 24
                Top = 59
                Width = 217
                Height = 21
                DataField = 'TOMBO'
                DataSource = DsCadastro
                TabOrder = 4
              end
              object DBEdit3: TDBEdit
                Left = 24
                Top = 99
                Width = 600
                Height = 21
                DataField = 'NUM_SERIAL'
                DataSource = DsCadastro
                TabOrder = 6
              end
              object DBEdit4: TDBEdit
                Left = 24
                Top = 139
                Width = 600
                Height = 21
                DataField = 'NOME'
                DataSource = DsCadastro
                TabOrder = 7
              end
              object DBEdit5: TDBEdit
                Left = 24
                Top = 179
                Width = 600
                Height = 21
                DataField = 'COMPLEMENTO'
                DataSource = DsCadastro
                TabOrder = 8
              end
              object DBEdit6: TDBEdit
                Left = 24
                Top = 219
                Width = 600
                Height = 21
                DataField = 'MARCA'
                DataSource = DsCadastro
                TabOrder = 9
              end
              object DBEdit7: TDBEdit
                Left = 24
                Top = 259
                Width = 600
                Height = 21
                DataField = 'MODELO'
                DataSource = DsCadastro
                TabOrder = 10
              end
              object DBEdit8: TDBEdit
                Left = 24
                Top = 299
                Width = 600
                Height = 21
                DataField = 'ESTADO'
                DataSource = DsCadastro
                TabOrder = 11
              end
              object DBEdit17: TDBEdit
                Left = 100
                Top = 19
                Width = 99
                Height = 21
                DataField = 'DATA_CADASTRO'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 1
              end
              object DBLookupComboBoxFuncionario: TDBLookupComboBox
                Left = 201
                Top = 19
                Width = 223
                Height = 21
                DataField = 'IDFUNCIONARIO_CADASTROU'
                DataSource = DsCadastro
                Enabled = False
                KeyField = 'ID_FUNCIONARIO'
                ListField = 'NOME_FUNCIONARIO'
                ListSource = DM.DsFuncionario
                TabOrder = 2
              end
              object DBLookupComboBox2: TDBLookupComboBox
                Left = 426
                Top = 19
                Width = 197
                Height = 21
                DataField = 'ID_UP'
                DataSource = DsCadastro
                Enabled = False
                KeyField = 'ID_UP'
                ListField = 'SIGLA'
                ListSource = DM.DsUP
                TabOrder = 3
              end
              object DBLookupComboBoxTipoContato: TDBLookupComboBox
                Left = 245
                Top = 59
                Width = 347
                Height = 21
                DataField = 'IDTIPO_PATRIMONIO'
                DataSource = DsCadastro
                KeyField = 'IDTIPO_PATRIMONIO'
                ListField = 'DESCRICAO'
                ListSource = DM.DsTipoPatrimonio
                TabOrder = 5
              end
            end
            object TabSheet2: TTabSheet
              Caption = 'Dados 2'
              ImageIndex = 1
              object Label11: TLabel
                Left = 16
                Top = 8
                Width = 24
                Height = 13
                Caption = 'Valor'
                FocusControl = DBEdit10
              end
              object Label12: TLabel
                Left = 16
                Top = 48
                Width = 46
                Height = 13
                Caption = 'Utiliza'#231#227'o'
                FocusControl = DBEdit11
              end
              object Label16: TLabel
                Left = 16
                Top = 185
                Width = 58
                Height = 13
                Caption = 'Observa'#231#227'o'
                FocusControl = DBEdit15
              end
              object Label10: TLabel
                Left = 17
                Top = 145
                Width = 118
                Height = 13
                Caption = 'Posto/Local de Trabalho'
              end
              object SpeedButton1: TSpeedButton
                Left = 408
                Top = 160
                Width = 23
                Height = 22
                Caption = '...'
                OnClick = SpeedButton1Click
              end
              object DBEdit10: TDBEdit
                Left = 16
                Top = 24
                Width = 134
                Height = 21
                DataField = 'VALOR'
                DataSource = DsCadastro
                TabOrder = 0
              end
              object DBEdit11: TDBEdit
                Left = 16
                Top = 64
                Width = 600
                Height = 21
                DataField = 'UTILIZACAO'
                DataSource = DsCadastro
                TabOrder = 1
              end
              object DBEdit15: TDBEdit
                Left = 16
                Top = 201
                Width = 600
                Height = 21
                DataField = 'OBSERVACAO'
                DataSource = DsCadastro
                TabOrder = 4
              end
              object DBRadioGroup1: TDBRadioGroup
                Left = 16
                Top = 96
                Width = 185
                Height = 41
                Caption = 'Disponibilidade'
                Columns = 2
                DataField = 'DISPONIBILIDADE'
                DataSource = DsCadastro
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 2
                Values.Strings = (
                  'S'
                  'N')
              end
              object DBLookupComboBox3: TDBLookupComboBox
                Left = 17
                Top = 161
                Width = 384
                Height = 21
                DataField = 'IDPOSTO_TRABALHO'
                DataSource = DsCadastro
                KeyField = 'IDPOSTO_TRABALHO'
                ListField = 'POSTO_TRABALHO'
                ListSource = DM.DsPostoTrabalho
                TabOrder = 3
              end
            end
            object TabSheet3: TTabSheet
              Caption = 'Cautela'
              ImageIndex = 2
              object Label13: TLabel
                Left = 16
                Top = 16
                Width = 77
                Height = 13
                Caption = 'Data da Cautela'
                FocusControl = DBEdit9
              end
              object Label19: TLabel
                Left = 16
                Top = 144
                Width = 87
                Height = 13
                Caption = 'Miss'#227'o da Cautela'
                FocusControl = DBEdit16
              end
              object Label20: TLabel
                Left = 16
                Top = 184
                Width = 112
                Height = 13
                Caption = 'Observa'#231#227'o da Cautela'
                FocusControl = DBEdit18
              end
              object Label14: TLabel
                Left = 16
                Top = 63
                Width = 183
                Height = 13
                Caption = 'Posto/Local de Trabalho que cautelou'
              end
              object Label15: TLabel
                Left = 16
                Top = 102
                Width = 100
                Height = 13
                Caption = 'Funcion'#225'rio Cautelou'
              end
              object DBEdit9: TDBEdit
                Left = 16
                Top = 32
                Width = 97
                Height = 21
                DataField = 'DATA_CAUTELA'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 0
              end
              object DBEdit16: TDBEdit
                Left = 16
                Top = 160
                Width = 600
                Height = 21
                DataField = 'MISSAO_CAUTELA'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 4
              end
              object DBEdit18: TDBEdit
                Left = 16
                Top = 200
                Width = 600
                Height = 21
                DataField = 'OBS_CAUTELA'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 5
              end
              object DBRadioGroup2: TDBRadioGroup
                Left = 136
                Top = 16
                Width = 185
                Height = 41
                Caption = 'Cautelado:'
                Columns = 2
                DataField = 'CAUTELA'
                DataSource = DsCadastro
                Enabled = False
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 1
                Values.Strings = (
                  'S'
                  'N')
              end
              object DBLookupComboBox1: TDBLookupComboBox
                Left = 16
                Top = 79
                Width = 384
                Height = 21
                DataField = 'IDPOSTO_TRABALHO_CAUTELA'
                DataSource = DsCadastro
                Enabled = False
                KeyField = 'IDPOSTO_TRABALHO'
                ListField = 'POSTO_TRABALHO'
                ListSource = DM.DsPostoTrabalho
                TabOrder = 2
              end
              object DBLookupComboBox4: TDBLookupComboBox
                Left = 16
                Top = 118
                Width = 384
                Height = 21
                DataField = 'IDFUNCIONARIO_CAUTELA'
                DataSource = DsCadastro
                Enabled = False
                KeyField = 'ID_FUNCIONARIO'
                ListField = 'NOME_FUNCIONARIO'
                ListSource = DM.DsFuncionario
                TabOrder = 3
              end
            end
            object TabSheet4: TTabSheet
              Caption = 'Fotos'
              ImageIndex = 3
              object FOTO: TLabel
                Left = 17
                Top = 7
                Width = 30
                Height = 13
                Caption = 'Frente'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label17: TLabel
                Left = 172
                Top = 7
                Width = 65
                Height = 13
                Caption = 'Lateral Direita'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label21: TLabel
                Left = 324
                Top = 7
                Width = 77
                Height = 13
                Caption = 'Lateral Esqueda'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label22: TLabel
                Left = 476
                Top = 7
                Width = 31
                Height = 13
                Caption = 'Outros'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object DBImageFOTOFRENTE: TDBImage
                Left = 16
                Top = 23
                Width = 127
                Height = 127
                DataSource = DsCadastro
                Stretch = True
                TabOrder = 0
                OnClick = DBImageFOTOFRENTEClick
              end
              object DBImageFOTOLATERALDIREITA: TDBImage
                Left = 168
                Top = 24
                Width = 127
                Height = 127
                DataSource = DsCadastro
                TabOrder = 1
                OnClick = DBImageFOTOLATERALDIREITAClick
              end
              object DBImageFOTOLATERALESQUERDA: TDBImage
                Left = 320
                Top = 24
                Width = 127
                Height = 127
                DataSource = DsCadastro
                TabOrder = 2
                OnClick = DBImageFOTOLATERALESQUERDAClick
              end
              object DBImageFOTO_OUTROS: TDBImage
                Left = 472
                Top = 24
                Width = 127
                Height = 127
                DataSource = DsCadastro
                TabOrder = 3
                OnClick = DBImageFOTO_OUTROSClick
              end
            end
          end
        end
      end
    end
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM PATRIMONIO')
  end
  inherited CdsCadastro: TClientDataSet
    object CdsCadastroIDPATRIMONIO: TIntegerField
      FieldName = 'IDPATRIMONIO'
      Required = True
    end
    object CdsCadastroTOMBO: TStringField
      FieldName = 'TOMBO'
      Size = 100
    end
    object CdsCadastroNUM_SERIAL: TStringField
      FieldName = 'NUM_SERIAL'
      Size = 100
    end
    object CdsCadastroNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object CdsCadastroCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
    object CdsCadastroMARCA: TStringField
      FieldName = 'MARCA'
      Size = 100
    end
    object CdsCadastroMODELO: TStringField
      FieldName = 'MODELO'
      Size = 100
    end
    object CdsCadastroESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 100
    end
    object CdsCadastroIDTIPO_PATRIMONIO: TIntegerField
      FieldName = 'IDTIPO_PATRIMONIO'
    end
    object CdsCadastroVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object CdsCadastroUTILIZACAO: TStringField
      FieldName = 'UTILIZACAO'
      Size = 100
    end
    object CdsCadastroDISPONIBILIDADE: TStringField
      FieldName = 'DISPONIBILIDADE'
      Size = 1
    end
    object CdsCadastroID_UP: TIntegerField
      FieldName = 'ID_UP'
    end
    object CdsCadastroIDPOSTO_TRABALHO: TIntegerField
      FieldName = 'IDPOSTO_TRABALHO'
    end
    object CdsCadastroOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 100
    end
    object CdsCadastroIDFUNCIONARIO_CADASTROU: TIntegerField
      FieldName = 'IDFUNCIONARIO_CADASTROU'
    end
    object CdsCadastroDATA_CADASTRO: TSQLTimeStampField
      FieldName = 'DATA_CADASTRO'
    end
    object CdsCadastroDATA_CAUTELA: TSQLTimeStampField
      FieldName = 'DATA_CAUTELA'
    end
    object CdsCadastroCAUTELA: TStringField
      FieldName = 'CAUTELA'
      Size = 1
    end
    object CdsCadastroIDPOSTO_TRABALHO_CAUTELA: TIntegerField
      FieldName = 'IDPOSTO_TRABALHO_CAUTELA'
    end
    object CdsCadastroIDFUNCIONARIO_CAUTELA: TIntegerField
      FieldName = 'IDFUNCIONARIO_CAUTELA'
    end
    object CdsCadastroMISSAO_CAUTELA: TStringField
      FieldName = 'MISSAO_CAUTELA'
      Size = 100
    end
    object CdsCadastroOBS_CAUTELA: TStringField
      FieldName = 'OBS_CAUTELA'
      Size = 100
    end
    object CdsCadastroFOTO_PATRIMONIO: TBlobField
      FieldName = 'FOTO_PATRIMONIO'
      Size = 1
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 688
    Top = 8
  end
end
