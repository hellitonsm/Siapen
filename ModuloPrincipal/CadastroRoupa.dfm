inherited FrmRoupa: TFrmRoupa
  Left = 318
  Top = 302
  Caption = 'Cadastro de Roupas '
  ClientWidth = 944
  ExplicitWidth = 956
  TextHeight = 13
  inherited PanelBotoes: TPanel
    ExplicitHeight = 532
    inherited ToolBarModeloCadastro: TToolBar
      ExplicitHeight = 514
    end
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
      ExplicitTop = 514
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 829
    ExplicitWidth = 825
    ExplicitHeight = 532
    inherited Image2: TImage
      Width = 806
      ExplicitWidth = 806
    end
    inherited PageControlModeloCadastro: TPageControl
      Width = 829
      ExplicitWidth = 825
      ExplicitHeight = 532
      inherited TabSheetCadastro: TTabSheet
        ExplicitWidth = 821
        inherited PanelCadastro: TPanel
          Width = 821
          object Label3: TLabel
            Left = 152
            Top = 14
            Width = 28
            Height = 13
            Caption = 'Data'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 8
            Top = 16
            Width = 40
            Height = 13
            Caption = 'C'#243'digo'
            FocusControl = DBEditCodigo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 8
            Top = 56
            Width = 59
            Height = 13
            Caption = 'Prontu'#225'rio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 101
            Top = 56
            Width = 41
            Height = 13
            Caption = 'Interno'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEditCodigo: TDBEdit
            Left = 8
            Top = 32
            Width = 134
            Height = 21
            DataField = 'ID_ROUPAS'
            DataSource = DsCadastro
            TabOrder = 0
          end
          object Editprontuario: TEdit
            Left = 8
            Top = 72
            Width = 89
            Height = 21
            TabOrder = 1
            OnExit = EditprontuarioExit
          end
          object DBLookupComboBoxInterno: TDBLookupComboBox
            Left = 100
            Top = 72
            Width = 373
            Height = 21
            DataField = 'ID_INTERNO'
            DataSource = DsCadastro
            KeyField = 'ID_INTERNO'
            ListField = 'NOME_INTERNO'
            ListSource = DM.DsInterno
            TabOrder = 2
          end
          object Panel1: TPanel
            Left = 8
            Top = 104
            Width = 513
            Height = 249
            TabOrder = 3
            object SpeedButton1: TSpeedButton
              Left = 323
              Top = 29
              Width = 23
              Height = 17
              Hint = 'Cadastrar Roupas'
              Caption = '...'
              Flat = True
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton1Click
            end
            object Label5: TLabel
              Left = 352
              Top = 12
              Width = 32
              Height = 13
              Caption = 'Qtde.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 6
              Top = 12
              Width = 44
              Height = 13
              Caption = 'Roupas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 5
              Top = 28
              Width = 313
              Height = 21
              KeyField = 'ID_VESTIMENTAS'
              ListField = 'VESTIMENTAS'
              ListSource = DM.dsvestimentas
              TabOrder = 0
            end
            object Edit1: TEdit
              Left = 352
              Top = 28
              Width = 97
              Height = 21
              TabOrder = 1
            end
            object BitBtn1: TBitBtn
              Left = 216
              Top = 56
              Width = 105
              Height = 41
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
            object DBGrid1: TDBGrid
              Left = 3
              Top = 103
              Width = 494
              Height = 138
              DataSource = DSRoupasInterno
              TabOrder = 3
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Vestimenta'
                  Width = 348
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTDE'
                  Width = 115
                  Visible = True
                end>
            end
          end
          object Button1: TButton
            Left = 474
            Top = 70
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
          object DBEdit1: TDBEdit
            Left = 152
            Top = 32
            Width = 121
            Height = 21
            DataField = 'DATA'
            DataSource = DsCadastro
            TabOrder = 5
            OnClick = DBEdit1Click
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        ExplicitWidth = 821
        inherited PanelLocalizaConsulta: TPanel
          Width = 821
          ExplicitWidth = 821
          inherited EditLocalizar: TEdit
            OnKeyUp = EditLocalizarKeyUp
          end
        end
        inherited PanelConsulta: TPanel
          Width = 821
          ExplicitWidth = 821
          ExplicitHeight = 471
          inherited DBGridConsulta: TDBGrid
            Width = 819
          end
          object DBGrid2: TDBGrid
            Left = 1
            Top = 1
            Width = 819
            Height = 468
            Align = alClient
            DataSource = DsConsulta
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDrawColumnCell = DBGridConsultaDrawColumnCell
            OnDblClick = DBGridConsultaDblClick
            OnKeyDown = DBGridConsultaKeyDown
            OnTitleClick = DBGridConsultaTitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'RGI'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_INTERNO'
                Width = 227
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VESTIMENTAS'
                Width = 115
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDE'
                Width = 52
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA'
                Width = 83
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 944
    ExplicitWidth = 940
  end
  inherited StatusBar1: TStatusBar
    Width = 944
    ExplicitWidth = 944
  end
  inherited SqlCadastro: TFDQuery
    MasterSource = DsCadastro
    SQL.Strings = (
      'SELECT * '
      'FROM ROUPAS'
      'where id_roupas = :id_roupas'
      ''
      ''
      '')
    Left = 656
    Top = 64
    ParamData = <
      item
        Name = 'id_roupas'
        DataType = ftInteger
        ParamType = ptInput
        Value = '-1'
      end>
  end
  inherited DspCadastro: TDataSetProvider
    Left = 732
    Top = 64
  end
  inherited CdsCadastro: TClientDataSet
    Left = 656
    Top = 120
  end
  inherited DsCadastro: TDataSource
    Left = 732
    Top = 120
  end
  object CDSRoupasInterno: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_ROUPA'
    MasterFields = 'ID_ROUPAS'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPRoupasInterno'
    Left = 663
    Top = 304
    object CDSRoupasInternoID_ROUPAS_INTERNO: TIntegerField
      FieldName = 'ID_ROUPAS_INTERNO'
      Required = True
    end
    object CDSRoupasInternoID_ROUPA: TIntegerField
      FieldName = 'ID_ROUPA'
    end
    object CDSRoupasInternoQTDE: TIntegerField
      FieldName = 'QTDE'
    end
    object CDSRoupasInternoID_VESTIMENTAS: TIntegerField
      FieldName = 'ID_VESTIMENTAS'
    end
    object CDSRoupasInternoVestimenta: TStringField
      FieldKind = fkLookup
      FieldName = 'Vestimenta'
      LookupDataSet = DM.cdsvestimentas
      LookupKeyFields = 'ID_VESTIMENTAS'
      LookupResultField = 'VESTIMENTAS'
      KeyFields = 'ID_VESTIMENTAS'
      Size = 200
      Lookup = True
    end
  end
  object DSRoupasInterno: TDataSource
    DataSet = CDSRoupasInterno
    Left = 735
    Top = 304
  end
  object DSPRoupasInterno: TDataSetProvider
    DataSet = SQLRoupasInterno
    Left = 735
    Top = 240
  end
  object Dspconsulta: TDataSetProvider
    DataSet = SqlConsulta
    Left = 204
    Top = 352
  end
  object CdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dspconsulta'
    Left = 232
    Top = 352
    object CdsConsultaRGI: TStringField
      FieldName = 'RGI'
      Size = 30
    end
    object CdsConsultaNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 100
    end
    object CdsConsultaVESTIMENTAS: TStringField
      FieldName = 'VESTIMENTAS'
      Size = 200
    end
    object CdsConsultaQTDE: TIntegerField
      FieldName = 'QTDE'
    end
    object CdsConsultaDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object CdsConsultaID_ROUPAS: TIntegerField
      FieldName = 'ID_ROUPAS'
      Required = True
    end
  end
  object DsConsulta: TDataSource
    DataSet = CdsConsulta
    Left = 260
    Top = 352
  end
  object Timer1: TTimer
    Interval = 2000
    OnTimer = Timer1Timer
    Left = 191
    Top = 202
  end
  object SQLRoupasInterno: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select * '
      'from ROUPAS_INTERNO'
      'where id_roupa = :id_roupas')
    Left = 663
    Top = 240
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
      
        'select first 40 i.rgi, i.nome_interno, v.vestimentas, ri.qtde, r' +
        '.data, r.id_roupas'
      'from ROUPAS r'
      'inner join interno i on (r.id_interno = i.id_interno)'
      'inner join ROUPAS_INTERNO ri on (r.id_roupas= ri.id_roupa)'
      
        'inner join vestimentas v on (ri.id_vestimentas = v.id_vestimenta' +
        's)'
      ''
      '')
    Left = 664
    Top = 364
  end
  object SqlConsulta: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      
        'select i.rgi, i.nome_interno, v.vestimentas, ri.qtde, r.data, r.' +
        'id_roupas'
      'from ROUPAS r'
      'inner join interno i on (r.id_interno = i.id_interno)'
      'inner join roupas_interno ri on (r.id_roupas= ri.id_roupa)'
      
        'inner join vestimentas v on (ri.id_vestimentas = v.id_vestimenta' +
        's)'
      ''
      '')
    Left = 168
    Top = 352
  end
end
