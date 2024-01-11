inherited FrmAgenteEquipe: TFrmAgenteEquipe
  Left = 214
  Top = 152
  Caption = 'si'
  ClientHeight = 583
  ExplicitWidth = 948
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 532
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Height = 532
    inherited Image2: TImage
      Width = 757
      ExplicitWidth = 757
    end
    inherited PageControlModeloCadastro: TPageControl
      Width = 821
      Height = 531
      ActivePage = TabSheetCadastro
      ExplicitWidth = 642
      inherited TabSheetCadastro: TTabSheet
        ExplicitWidth = 813
        ExplicitHeight = 503
        inherited PanelCadastro: TPanel
          Width = 813
          Height = 503
          ExplicitWidth = 634
          object Label2: TLabel
            Left = 24
            Top = 24
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditCODIGO
          end
          object Label3: TLabel
            Left = 25
            Top = 88
            Width = 33
            Height = 13
            Caption = 'Equipe'
          end
          object SpeedButton1: TSpeedButton
            Left = 376
            Top = 104
            Width = 23
            Height = 20
            Caption = '...'
            OnClick = SpeedButton1Click
          end
          object SpeedButton2: TSpeedButton
            Left = 376
            Top = 146
            Width = 23
            Height = 20
            Caption = '...'
            OnClick = SpeedButton2Click
          end
          object Label4: TLabel
            Left = 25
            Top = 130
            Width = 67
            Height = 13
            Caption = 'Funcion'#225'rio(a)'
          end
          object SpeedButton3: TSpeedButton
            Left = 376
            Top = 189
            Width = 23
            Height = 20
            Caption = '...'
            OnClick = SpeedButton3Click
          end
          object Label5: TLabel
            Left = 25
            Top = 173
            Width = 118
            Height = 13
            Caption = 'Posto/Local de Trabalho'
          end
          object Label7: TLabel
            Left = 25
            Top = 216
            Width = 66
            Height = 13
            Caption = 'Observa'#231#245'es:'
          end
          object Label8: TLabel
            Left = 25
            Top = 261
            Width = 141
            Height = 13
            Caption = 'Participa do posto rotativo 01:'
          end
          object SpeedButton5: TSpeedButton
            Left = 376
            Top = 277
            Width = 23
            Height = 20
            Caption = '...'
            OnClick = SpeedButton5Click
          end
          object Label9: TLabel
            Left = 25
            Top = 303
            Width = 141
            Height = 13
            Caption = 'Participa do posto rotativo 02:'
          end
          object SpeedButton6: TSpeedButton
            Left = 376
            Top = 319
            Width = 23
            Height = 20
            Caption = '...'
            OnClick = SpeedButton6Click
          end
          object Label10: TLabel
            Left = 25
            Top = 345
            Width = 141
            Height = 13
            Caption = 'Participa do posto rotativo 03:'
          end
          object SpeedButton7: TSpeedButton
            Left = 376
            Top = 361
            Width = 23
            Height = 20
            Caption = '...'
            OnClick = SpeedButton7Click
          end
          object DBEditCODIGO: TDBEdit
            Left = 24
            Top = 40
            Width = 73
            Height = 21
            DataField = 'IDAGENTE_EQUIPE'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object Status: TDBRadioGroup
            Left = 104
            Top = 32
            Width = 185
            Height = 41
            Caption = 'Status'
            Columns = 2
            DataField = 'ST'
            DataSource = DsCadastro
            Items.Strings = (
              'Ativo'
              'Inativo')
            TabOrder = 1
            Values.Strings = (
              'A'
              'I')
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 25
            Top = 104
            Width = 345
            Height = 21
            DataField = 'IDEQUIPE'
            DataSource = DsCadastro
            KeyField = 'IDEQUIPE'
            ListField = 'EQUIPE'
            ListSource = DM.DsEquipe
            TabOrder = 2
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 25
            Top = 146
            Width = 345
            Height = 21
            DataField = 'IDFUNCIONARIO'
            DataSource = DsCadastro
            KeyField = 'ID_FUNCIONARIO'
            ListField = 'NOME_FUNCIONARIO'
            ListSource = DM.DsFuncionario
            TabOrder = 3
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 25
            Top = 189
            Width = 345
            Height = 21
            DataField = 'IDPOSTO_TRABALHO'
            DataSource = DsCadastro
            KeyField = 'IDPOSTO_TRABALHO'
            ListField = 'POSTO_TRABALHO'
            ListSource = DM.DsPostoTrabalho
            TabOrder = 4
          end
          object DBEdit1: TDBEdit
            Left = 25
            Top = 232
            Width = 496
            Height = 21
            TabOrder = 5
          end
          object DBLookupComboBox4: TDBLookupComboBox
            Left = 25
            Top = 277
            Width = 345
            Height = 21
            DataField = 'IDPOSTO_ROTATIVO_1'
            DataSource = DsCadastro
            KeyField = 'IDPOSTO_TRABALHO'
            ListField = 'POSTO_TRABALHO'
            ListSource = DM.DsPostoTrabalhoRotativo
            TabOrder = 6
          end
          object DBLookupComboBox5: TDBLookupComboBox
            Left = 25
            Top = 319
            Width = 345
            Height = 21
            DataField = 'IDPOSTO_ROTATIVO_2'
            DataSource = DsCadastro
            KeyField = 'IDPOSTO_TRABALHO'
            ListField = 'POSTO_TRABALHO'
            ListSource = DM.DsPostoTrabalhoRotativo
            TabOrder = 7
          end
          object DBLookupComboBox6: TDBLookupComboBox
            Left = 25
            Top = 361
            Width = 345
            Height = 21
            DataField = 'IDPOSTO_ROTATIVO_3'
            DataSource = DsCadastro
            KeyField = 'IDPOSTO_TRABALHO'
            ListField = 'POSTO_TRABALHO'
            ListSource = DM.DsPostoTrabalhoRotativo
            TabOrder = 8
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        ExplicitWidth = 813
        ExplicitHeight = 503
        inherited PanelLocalizaConsulta: TPanel
          Width = 813
          ExplicitWidth = 634
          inherited Label1: TLabel
            Left = 464
            Visible = False
            ExplicitLeft = 464
          end
          object Label6: TLabel [1]
            Left = 9
            Top = 12
            Width = 33
            Height = 13
            Caption = 'Equipe'
          end
          object SpeedButton4: TSpeedButton [2]
            Left = 400
            Top = 8
            Width = 23
            Height = 22
            Caption = 'X'
            OnClick = SpeedButton4Click
          end
          inherited EditLocalizar: TEdit
            Left = 512
            Width = 73
            TabOrder = 1
            Visible = False
            ExplicitLeft = 512
            ExplicitWidth = 73
          end
          object DBLookupComboBoxFiltroEquipe: TDBLookupComboBox
            Left = 49
            Top = 9
            Width = 345
            Height = 21
            KeyField = 'IDEQUIPE'
            ListField = 'EQUIPE'
            ListSource = DM.DsEquipe
            TabOrder = 0
            OnClick = DBLookupComboBoxFiltroEquipeClick
          end
        end
        inherited PanelConsulta: TPanel
          Width = 813
          Height = 469
          ExplicitWidth = 634
          inherited DBGridConsulta: TDBGrid
            Width = 632
            Columns = <
              item
                Expanded = False
                FieldName = 'EQUIPE'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FUNCIONARIO'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'POSTO_TRABALHO'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ROTATIVO_1'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ROTATIVO_2'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ROTATIVO_3'
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    ExplicitWidth = 757
  end
  inherited StatusBar1: TStatusBar
    Top = 564
    ExplicitWidth = 936
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM AGENTE_EQUIPE'
      'ORDER BY IDEQUIPE')
  end
  inherited CdsCadastro: TClientDataSet
    object CdsCadastroIDAGENTE_EQUIPE: TIntegerField
      FieldName = 'IDAGENTE_EQUIPE'
      Required = True
    end
    object CdsCadastroIDEQUIPE: TIntegerField
      FieldName = 'IDEQUIPE'
      Required = True
    end
    object CdsCadastroIDFUNCIONARIO: TIntegerField
      FieldName = 'IDFUNCIONARIO'
      Required = True
    end
    object CdsCadastroIDPOSTO_TRABALHO: TIntegerField
      FieldName = 'IDPOSTO_TRABALHO'
      Required = True
    end
    object CdsCadastroST: TStringField
      FieldName = 'ST'
      Size = 1
    end
    object CdsCadastroEQUIPE: TStringField
      FieldKind = fkLookup
      FieldName = 'EQUIPE'
      LookupDataSet = DM.CdsEquipe
      LookupKeyFields = 'IDEQUIPE'
      LookupResultField = 'EQUIPE'
      KeyFields = 'IDEQUIPE'
      Size = 100
      Lookup = True
    end
    object CdsCadastroFUNCIONARIO: TStringField
      FieldKind = fkLookup
      FieldName = 'FUNCIONARIO'
      LookupDataSet = DM.cdsfuncionario
      LookupKeyFields = 'ID_FUNCIONARIO'
      LookupResultField = 'NOME_FUNCIONARIO'
      KeyFields = 'IDFUNCIONARIO'
      Size = 100
      Lookup = True
    end
    object CdsCadastroPOSTO_TRABALHO: TStringField
      FieldKind = fkLookup
      FieldName = 'POSTO_TRABALHO'
      LookupDataSet = DM.CdsPostoTrabalho
      LookupKeyFields = 'IDPOSTO_TRABALHO'
      LookupResultField = 'POSTO_TRABALHO'
      KeyFields = 'IDPOSTO_TRABALHO'
      Size = 100
      Lookup = True
    end
    object CdsCadastroROTATIVO_1: TStringField
      FieldKind = fkLookup
      FieldName = 'ROTATIVO_1'
      LookupDataSet = DM.CdsPostoTrabalho
      LookupKeyFields = 'IDPOSTO_TRABALHO'
      LookupResultField = 'POSTO_TRABALHO'
      KeyFields = 'IDPOSTO_ROTATIVO_1'
      Size = 100
      Lookup = True
    end
    object CdsCadastroROTATIVO_2: TStringField
      FieldKind = fkLookup
      FieldName = 'ROTATIVO_2'
      LookupDataSet = DM.CdsPostoTrabalho
      LookupKeyFields = 'IDPOSTO_TRABALHO'
      LookupResultField = 'POSTO_TRABALHO'
      KeyFields = 'IDPOSTO_ROTATIVO_2'
      Size = 100
      Lookup = True
    end
    object CdsCadastroROTATIVO_3: TStringField
      FieldKind = fkLookup
      FieldName = 'ROTATIVO_3'
      LookupDataSet = DM.CdsPostoTrabalho
      LookupKeyFields = 'IDPOSTO_TRABALHO'
      LookupResultField = 'POSTO_TRABALHO'
      KeyFields = 'IDPOSTO_ROTATIVO_3'
      Size = 100
      Lookup = True
    end
    object CdsCadastroROTATIVO_4: TStringField
      FieldKind = fkLookup
      FieldName = 'ROTATIVO_4'
      LookupDataSet = DM.CdsPostoTrabalho
      LookupKeyFields = 'IDPOSTO_TRABALHO'
      LookupResultField = 'POSTO_TRABALHO'
      KeyFields = 'IDPOSTO_ROTATIVO_4'
      Size = 100
      Lookup = True
    end
    object CdsCadastroROTATIVO_5: TStringField
      FieldKind = fkLookup
      FieldName = 'ROTATIVO_5'
      LookupDataSet = DM.CdsPostoTrabalho
      LookupKeyFields = 'IDPOSTO_TRABALHO'
      LookupResultField = 'POSTO_TRABALHO'
      KeyFields = 'IDPOSTO_ROTATIVO_5'
      Size = 100
      Lookup = True
    end
    object CdsCadastroROTATIVO_6: TStringField
      FieldKind = fkLookup
      FieldName = 'ROTATIVO_6'
      LookupDataSet = DM.CdsPostoTrabalho
      LookupKeyFields = 'IDPOSTO_TRABALHO'
      LookupResultField = 'POSTO_TRABALHO'
      KeyFields = 'IDPOSTO_ROTATIVO_6'
      Size = 100
      Lookup = True
    end
    object CdsCadastroIDPOSTO_ROTATIVO_1: TIntegerField
      FieldName = 'IDPOSTO_ROTATIVO_1'
    end
    object CdsCadastroIDPOSTO_ROTATIVO_2: TIntegerField
      FieldName = 'IDPOSTO_ROTATIVO_2'
    end
    object CdsCadastroIDPOSTO_ROTATIVO_3: TIntegerField
      FieldName = 'IDPOSTO_ROTATIVO_3'
    end
    object CdsCadastroIDPOSTO_ROTATIVO_4: TIntegerField
      FieldName = 'IDPOSTO_ROTATIVO_4'
    end
    object CdsCadastroIDPOSTO_ROTATIVO_5: TIntegerField
      FieldName = 'IDPOSTO_ROTATIVO_5'
    end
    object CdsCadastroIDPOSTO_ROTATIVO_6: TIntegerField
      FieldName = 'IDPOSTO_ROTATIVO_6'
    end
  end
end
