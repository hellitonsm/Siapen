inherited FrmCadastroAdvogado: TFrmCadastroAdvogado
  Tag = 1
  Left = 319
  Top = 134
  Caption = 'Cadastro Advogado'
  ClientHeight = 583
  ClientWidth = 940
  ExplicitWidth = 956
  ExplicitHeight = 622
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 532
    inherited ToolBarModeloCadastro: TToolBar
      Height = 514
    end
    inherited DBNavigator1: TDBNavigator
      Top = 514
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 825
    Height = 532
    inherited Image2: TImage
      Width = 780
      ExplicitWidth = 793
    end
    inherited PageControlModeloCadastro: TPageControl
      Width = 825
      Height = 532
      ActivePage = TabSheetCadastro
      inherited TabSheetCadastro: TTabSheet
        ExplicitWidth = 817
        ExplicitHeight = 504
        inherited PanelCadastro: TPanel
          Width = 817
          Height = 504
          ExplicitWidth = 817
          ExplicitHeight = 504
          object Label2: TLabel
            Left = 152
            Top = 10
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEDITCODIGO
          end
          object Label3: TLabel
            Left = 210
            Top = 10
            Width = 49
            Height = 13
            Caption = 'Advogado'
            FocusControl = dbedtADVOGADO
          end
          object Label4: TLabel
            Left = 152
            Top = 52
            Width = 22
            Height = 13
            Caption = 'OAB'
            FocusControl = dbedtOAB
          end
          object Label5: TLabel
            Left = 15
            Top = 12
            Width = 29
            Height = 13
            Caption = 'FOTO'
            FocusControl = DBImagefotoadvogado
          end
          object Label6: TLabel
            Left = 152
            Top = 96
            Width = 46
            Height = 13
            Caption = 'Endere'#231'o'
            FocusControl = DBEdit1
          end
          object Label7: TLabel
            Left = 448
            Top = 96
            Width = 27
            Height = 13
            Caption = 'Bairro'
            FocusControl = DBEdit2
          end
          object Label8: TLabel
            Left = 153
            Top = 134
            Width = 21
            Height = 13
            Caption = 'CEP'
            FocusControl = DBEditcep
          end
          object Label9: TLabel
            Left = 312
            Top = 176
            Width = 32
            Height = 13
            Caption = 'EMAIL'
            FocusControl = DBEdit4
          end
          object Label10: TLabel
            Left = 285
            Top = 52
            Width = 20
            Height = 13
            Caption = 'CPF'
            FocusControl = DBEditCPF
          end
          object Label11: TLabel
            Left = 464
            Top = 52
            Width = 16
            Height = 13
            Caption = 'RG'
            FocusControl = DBEditrg
          end
          object Label33: TLabel
            Left = 296
            Top = 135
            Width = 33
            Height = 13
            Caption = 'Cidade'
          end
          object SpeedButton11: TSpeedButton
            Left = 627
            Top = 149
            Width = 23
            Height = 22
            Hint = 'Cadastrar Cidade'
            Caption = '...'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton11Click
          end
          object Label12: TLabel
            Left = 16
            Top = 176
            Width = 24
            Height = 13
            Caption = 'Fone'
            FocusControl = DBEdit7
          end
          object Label13: TLabel
            Left = 160
            Top = 176
            Width = 32
            Height = 13
            Caption = 'Celular'
            FocusControl = DBEdit8
          end
          object Label14: TLabel
            Left = 16
            Top = 217
            Width = 22
            Height = 13
            Caption = 'OBS'
            FocusControl = DBEdit9
          end
          object DBEDITCODIGO: TDBEdit
            Left = 152
            Top = 26
            Width = 49
            Height = 21
            DataField = 'ID_ADVOGADO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 1
          end
          object dbedtADVOGADO: TDBEdit
            Left = 210
            Top = 26
            Width = 439
            Height = 21
            DataField = 'ADVOGADO'
            DataSource = DsCadastro
            TabOrder = 2
          end
          object dbedtOAB: TDBEdit
            Left = 152
            Top = 68
            Width = 129
            Height = 21
            DataField = 'OAB'
            DataSource = DsCadastro
            TabOrder = 3
          end
          object PageControl1: TPageControl
            Left = 16
            Top = 264
            Width = 641
            Height = 225
            ActivePage = TabSheet1
            TabOrder = 14
            object TabSheet1: TTabSheet
              Caption = 'Internos Ativos'
              object DBGrid1: TDBGrid
                Left = 9
                Top = 8
                Width = 616
                Height = 185
                DataSource = Dsinternoadvogado
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'nome_interno'
                    Title.Caption = 'Interno'
                    Width = 428
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Sigla'
                    Title.Caption = 'Unidade'
                    Width = 148
                    Visible = True
                  end>
              end
            end
          end
          object DBImagefotoadvogado: TDBImage
            Left = 15
            Top = 28
            Width = 130
            Height = 141
            DataField = 'FOTO'
            DataSource = DsCadastro
            TabOrder = 0
            OnClick = DBImagefotoadvogadoClick
          end
          object DBEdit1: TDBEdit
            Left = 152
            Top = 112
            Width = 289
            Height = 21
            DataField = 'ENDERECO'
            DataSource = DsCadastro
            TabOrder = 6
          end
          object DBEdit2: TDBEdit
            Left = 448
            Top = 112
            Width = 200
            Height = 21
            DataField = 'BAIRRO'
            DataSource = DsCadastro
            TabOrder = 7
          end
          object DBEditcep: TDBEdit
            Left = 153
            Top = 150
            Width = 134
            Height = 21
            DataField = 'CEP'
            DataSource = DsCadastro
            TabOrder = 8
          end
          object DBEdit4: TDBEdit
            Left = 312
            Top = 192
            Width = 340
            Height = 21
            DataField = 'EMAIL'
            DataSource = DsCadastro
            TabOrder = 12
          end
          object DBEditCPF: TDBEdit
            Left = 285
            Top = 68
            Width = 172
            Height = 21
            DataField = 'CPF'
            DataSource = DsCadastro
            TabOrder = 4
            OnExit = DBEditCPFExit
          end
          object DBEditrg: TDBEdit
            Left = 464
            Top = 68
            Width = 185
            Height = 21
            DataField = 'RG'
            DataSource = DsCadastro
            TabOrder = 5
          end
          object DBLookupComboBoxIDCIDADE: TDBLookupComboBox
            Left = 296
            Top = 151
            Width = 329
            Height = 21
            DataField = 'ID_CIDADE'
            DataSource = DsCadastro
            KeyField = 'ID_CIDADE'
            ListField = 'CIDADE'
            ListSource = DM.DSCIDADE
            TabOrder = 9
          end
          object DBEdit7: TDBEdit
            Left = 16
            Top = 192
            Width = 137
            Height = 21
            DataField = 'FONE'
            DataSource = DsCadastro
            TabOrder = 10
          end
          object DBEdit8: TDBEdit
            Left = 160
            Top = 192
            Width = 145
            Height = 21
            DataField = 'CELULAR'
            DataSource = DsCadastro
            TabOrder = 11
          end
          object DBEdit9: TDBEdit
            Left = 16
            Top = 233
            Width = 633
            Height = 21
            DataField = 'OBS'
            DataSource = DsCadastro
            TabOrder = 13
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        ExplicitWidth = 817
        ExplicitHeight = 504
        inherited PanelLocalizaConsulta: TPanel
          Width = 817
        end
        inherited PanelConsulta: TPanel
          Width = 817
          Height = 470
          inherited DBGridConsulta: TDBGrid
            Width = 815
            Height = 468
            DataSource = DsConsulta
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 940
  end
  inherited StatusBar1: TStatusBar
    Top = 564
    Width = 940
  end
  inherited ImageListCadastro: TImageList
    Left = 648
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM advogado'
      'order by advogado')
    Left = 528
    Top = 8
  end
  inherited DspCadastro: TDataSetProvider
    Left = 556
    Top = 8
  end
  inherited CdsCadastro: TClientDataSet
    Left = 584
    Top = 8
  end
  inherited DsCadastro: TDataSource
    Left = 612
    Top = 8
  end
  object Dspconsulta: TDataSetProvider
    DataSet = SqlConsulta
    Left = 28
    Top = 328
  end
  object CdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dspconsulta'
    Left = 56
    Top = 328
  end
  object DsConsulta: TDataSource
    DataSet = CdsConsulta
    Left = 84
    Top = 328
  end
  object Dspinternoadvogado: TDataSetProvider
    DataSet = Sqlinternoadvogado
    Left = 692
    Top = 8
  end
  object Cdsinternoadvogado: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_ADVOGADO'
    MasterFields = 'ID_ADVOGADO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'Dspinternoadvogado'
    Left = 720
    Top = 8
  end
  object Dsinternoadvogado: TDataSource
    DataSet = Cdsinternoadvogado
    Left = 748
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Imagens (*.jpg)|*.jpg'
    Left = 495
    Top = 8
  end
  object SqlSelectadvogado: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from advogado')
    Left = 823
    Top = 192
  end
  object SqlConsulta: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select *'
      'from advogado'
      'where coalesce(advogado,'#39#39')<>'#39#39
      'order by advogado')
    Left = 65535
    Top = 328
  end
  object Sqlinternoadvogado: TFDQuery
    Connection = DM.SQLConnect
    SQL.Strings = (
      'SELECT  i.nome_interno, u.sigla, ai.id_advogado'
      'FROM advogados_internos ai'
      'inner join interno i on (i.id_interno = ai.id_interno)'
      'inner join unidade_penal u on (u.id_up = i.id_up)'
      'where ai.id_advogado = :idadvogado and ai.status = '#39'A'#39
      'order by u.sigla, i.nome_interno')
    Left = 679
    Top = 8
    ParamData = <
      item
        Name = 'IDADVOGADO'
        ParamType = ptInput
      end>
  end
end
