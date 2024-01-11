inherited FrmRoupas: TFrmRoupas
  Left = 220
  Top = 97
  Caption = 'FrmRoupas'
  ClientHeight = 583
  ClientWidth = 940
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 532
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 825
    Height = 532
    inherited Image2: TImage
      Width = 928
      ExplicitWidth = 928
    end
    inherited PageControlModeloCadastro: TPageControl
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          object Label2: TLabel
            Left = 16
            Top = 24
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditcodigo
          end
          object Label3: TLabel
            Left = 211
            Top = 24
            Width = 33
            Height = 13
            Caption = 'Interno'
          end
          object Label4: TLabel
            Left = 16
            Top = 72
            Width = 23
            Height = 13
            Caption = 'Data'
          end
          object Label7: TLabel
            Left = 112
            Top = 24
            Width = 48
            Height = 13
            Caption = 'Prontu'#225'rio'
          end
          object DBEditcodigo: TDBEdit
            Left = 16
            Top = 40
            Width = 89
            Height = 21
            DataField = 'ID_ROUPAS'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object adpDBDateTimePicker1: TadpDBDateTimePicker
            Left = 47
            Top = 68
            Width = 97
            Height = 21
            Date = 41113.000000000000000000
            Time = 0.625926932872971500
            TabOrder = 1
            ReadOnly = False
          end
          object PageControl1: TPageControl
            Left = 16
            Top = 96
            Width = 633
            Height = 313
            ActivePage = TabSheet1
            TabOrder = 3
            object TabSheet1: TTabSheet
              Caption = 'Roupas'
              object Label5: TLabel
                Left = 32
                Top = 8
                Width = 32
                Height = 13
                Caption = 'Roupa'
              end
              object Label6: TLabel
                Left = 470
                Top = 10
                Width = 23
                Height = 13
                Caption = 'Qtde'
              end
              object SpeedButton1: TSpeedButton
                Left = 440
                Top = 24
                Width = 23
                Height = 22
                Hint = 'Cadastrar Roupas'
                Caption = '...'
                Flat = True
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton1Click
              end
              object DBGrid1: TDBGrid
                Left = 16
                Top = 104
                Width = 577
                Height = 169
                DataSource = dsroupasinternos
                TabOrder = 3
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'Roupa'
                    Width = 321
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'QTDE'
                    Width = 69
                    Visible = True
                  end>
              end
              object DBLookupComboBox1: TDBLookupComboBox
                Left = 32
                Top = 24
                Width = 401
                Height = 21
                KeyField = 'ID_VESTIMENTAS'
                ListField = 'VESTIMENTAS'
                ListSource = DM.dsvestimentas
                TabOrder = 0
              end
              object Edit1: TEdit
                Left = 470
                Top = 26
                Width = 97
                Height = 21
                TabOrder = 1
              end
              object BitBtn1: TBitBtn
                Left = 232
                Top = 64
                Width = 105
                Height = 25
                Caption = 'Inserir'
                Default = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
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
                ParentFont = False
                TabOrder = 2
                OnClick = BitBtn1Click
              end
            end
          end
          object DBLookupComboBoxInterno: TDBLookupComboBox
            Left = 210
            Top = 39
            Width = 433
            Height = 21
            DataField = 'ID_INTERNO'
            DataSource = DsCadastro
            KeyField = 'ID_INTERNO'
            ListField = 'NOME_INTERNO'
            ListSource = DM.DsInterno
            TabOrder = 2
          end
          object Button1: TButton
            Left = 651
            Top = 38
            Width = 50
            Height = 25
            Caption = 'Busca'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            TabStop = False
            OnClick = Button1Click
          end
          object Editprontuario: TEdit
            Left = 112
            Top = 40
            Width = 89
            Height = 21
            TabOrder = 5
            OnExit = EditprontuarioExit
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelConsulta: TPanel
          inherited DBGridConsulta: TDBGrid
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
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM roupas'
      'where id_roupas = :id_roupas')
    Left = 552
    Top = 16
    ParamData = <
      item
        Name = 'id_roupas'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  inherited DspCadastro: TDataSetProvider
    Left = 580
    Top = 16
  end
  inherited CdsCadastro: TClientDataSet
    Left = 608
    Top = 16
    object CdsCadastroID_ROUPAS: TIntegerField
      FieldName = 'ID_ROUPAS'
      Required = True
    end
    object CdsCadastroID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object CdsCadastroDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
  end
  inherited DsCadastro: TDataSource
    Left = 636
    Top = 16
  end
  object dsproupasinternos: TDataSetProvider
    DataSet = SQLroupasinternos
    Left = 584
    Top = 120
  end
  object cdsroupasinternos: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_ROUPA'
    MasterFields = 'ID_ROUPAS'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'dsproupasinternos'
    Left = 616
    Top = 120
    object cdsroupasinternosID_ROUPAS_INTERNO: TIntegerField
      FieldName = 'ID_ROUPAS_INTERNO'
      Required = True
    end
    object cdsroupasinternosID_ROUPA: TIntegerField
      FieldName = 'ID_ROUPA'
    end
    object cdsroupasinternosQTDE: TIntegerField
      FieldName = 'QTDE'
    end
    object cdsroupasinternosID_VESTIMENTAS: TIntegerField
      FieldName = 'ID_VESTIMENTAS'
    end
    object cdsroupasinternosRoupa: TStringField
      FieldKind = fkLookup
      FieldName = 'Roupa'
      LookupDataSet = DM.cdsvestimentas
      LookupKeyFields = 'ID_VESTIMENTAS'
      LookupResultField = 'VESTIMENTAS'
      KeyFields = 'ID_VESTIMENTAS'
      Size = 50
      Lookup = True
    end
  end
  object dsroupasinternos: TDataSource
    DataSet = cdsroupasinternos
    Left = 648
    Top = 120
  end
  object DsConsulta: TDataSource
    DataSet = CdsConsulta
    Left = 260
    Top = 352
  end
  object CdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dspconsulta'
    Left = 232
    Top = 352
    object CdsConsultaID_ROUPAS: TIntegerField
      FieldName = 'ID_ROUPAS'
      Required = True
    end
    object CdsConsultaNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 100
    end
  end
  object Dspconsulta: TDataSetProvider
    DataSet = SqlConsulta
    Left = 204
    Top = 352
  end
  object SQLroupasinternos: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * from roupas_interno'
      'where id_roupa = :id_roupas')
    Left = 552
    Top = 120
    ParamData = <
      item
        Name = 'ID_ROUPAS'
        ParamType = ptInput
      end>
  end
  object SqlSelectRoupaInterno: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select r.id_roupas, i.nome_interno'
      'from roupas r'
      'inner join interno i on (r.id_interno = i.id_interno)'
      ''
      '')
    Left = 216
    Top = 412
  end
  object SqlConsulta: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select r.id_roupas, i.nome_interno'
      'from roupas r'
      'inner join interno i on (r.id_interno = i.id_interno)'
      '')
    Left = 168
    Top = 352
  end
end
