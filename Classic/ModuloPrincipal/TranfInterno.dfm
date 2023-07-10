inherited FrmTranfInterno: TFrmTranfInterno
  Height = 582
  Caption = 'FrmTranfInterno'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 493
    inherited ToolBarModeloCadastro: TToolBar
      Height = 475
    end
    inherited DBNavigator1: TDBNavigator
      Top = 475
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Height = 493
    inherited PageControlModeloCadastro: TPageControl
      Height = 493
      ActivePage = TabSheetCadastro
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Height = 465
          object Label2: TLabel
            Left = 16
            Top = 16
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEditcodigo
          end
          object Label3: TLabel
            Left = 232
            Top = 16
            Width = 70
            Height = 13
            Caption = 'N'#186' Documento'
            FocusControl = DBEdit2
          end
          object Label4: TLabel
            Left = 20
            Top = 60
            Width = 33
            Height = 13
            Caption = 'Origem'
          end
          object Label5: TLabel
            Left = 21
            Top = 105
            Width = 36
            Height = 13
            Caption = 'Destino'
          end
          object Label6: TLabel
            Left = 368
            Top = 16
            Width = 79
            Height = 13
            Caption = 'Tipo Documento'
          end
          object Label7: TLabel
            Left = 22
            Top = 149
            Width = 120
            Height = 13
            Caption = 'Motivo da Movimenta'#231#227'o'
          end
          object Label8: TLabel
            Left = 120
            Top = 16
            Width = 23
            Height = 13
            Caption = 'Data'
            FocusControl = DBEditdata
          end
          object SpeedButton1: TSpeedButton
            Left = 507
            Top = 117
            Width = 23
            Height = 22
            Hint = 'Cadastrar Destino'
            Caption = '...'
            Flat = True
            ParentShowHint = False
            ShowHint = True
          end
          object DBEditcodigo: TDBEdit
            Left = 16
            Top = 32
            Width = 97
            Height = 21
            DataField = 'ID_TRANSFERENCIA_INTERNO'
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 232
            Top = 32
            Width = 129
            Height = 21
            DataField = 'NUMERO_DOCUMENTO'
            TabOrder = 1
          end
          object DBEditdata: TDBEdit
            Left = 119
            Top = 32
            Width = 97
            Height = 21
            DataField = 'DATA'
            TabOrder = 2
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 20
            Top = 77
            Width = 517
            Height = 21
            KeyField = 'ID_UP'
            ListField = 'NOME_UP'
            ListSource = DM.DsUP
            TabOrder = 3
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 21
            Top = 119
            Width = 476
            Height = 21
            KeyField = 'ID_DESTINO'
            ListField = 'DESTINO'
            ListSource = DM.DsDestino
            TabOrder = 4
          end
          object DBMemo1: TDBMemo
            Left = 24
            Top = 168
            Width = 505
            Height = 73
            TabOrder = 5
          end
          object DBComboBox1: TDBComboBox
            Left = 369
            Top = 32
            Width = 168
            Height = 21
            DataField = 'TIPO_DOCUMENTO'
            DataSource = DsCadastro
            ItemHeight = 13
            Items.Strings = (
              'N'#227'o Informado'
              'Alvar'#225
              'Carta Livramento'
              'Memorando'
              'Ocorr'#234'ncia'
              'Oficio')
            TabOrder = 6
          end
          object PageControl1: TPageControl
            Left = 24
            Top = 157
            Width = 609
            Height = 257
            ActivePage = TabSheet1
            TabOrder = 7
            object TabSheet1: TTabSheet
              Caption = 'Interno'
              object Label9: TLabel
                Left = 16
                Top = 8
                Width = 48
                Height = 13
                Caption = 'Prontu'#225'rio'
              end
              object Label10: TLabel
                Left = 144
                Top = 9
                Width = 33
                Height = 13
                Caption = 'Interno'
              end
              object Edit1: TEdit
                Left = 16
                Top = 24
                Width = 121
                Height = 21
                TabOrder = 0
                Text = 'Edit1'
              end
              object DBLookupComboBox3: TDBLookupComboBox
                Left = 144
                Top = 24
                Width = 345
                Height = 21
                KeyField = 'ID_INTERNO'
                ListField = 'NOME_INTERNO'
                ListSource = DM.DsInterno
                TabOrder = 1
              end
              object DBGrid1: TDBGrid
                Left = 16
                Top = 56
                Width = 553
                Height = 169
                TabOrder = 2
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'RGI'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Interno'
                    Width = 403
                    Visible = True
                  end>
              end
              object Button4: TButton
                Left = 496
                Top = 21
                Width = 75
                Height = 25
                Caption = 'Incluir'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelConsulta: TPanel
          Height = 431
          inherited DBGridConsulta: TDBGrid
            Height = 429
          end
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 525
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM transferencia_interno')
  end
  object Sqlvinc_transferencia_interno: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from vinc_transferencia_interno'
      'where id_interno = :id_interno')
    SQLConnection = DM.SQLConnect
    Left = 649
    Top = 55
  end
  object Dspvinc_transferencia_interno: TDataSetProvider
    DataSet = Sqlvinc_transferencia_interno
    Left = 677
    Top = 55
  end
  object Cdsvinc_transferencia_interno: TClientDataSet
    Aggregates = <>
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'Dspvinc_transferencia_interno'
    Left = 705
    Top = 55
    object Cdsvinc_transferencia_internoID_VINC_TRANSFERENCIA_INTERNO: TIntegerField
      FieldName = 'ID_VINC_TRANSFERENCIA_INTERNO'
      Required = True
    end
    object Cdsvinc_transferencia_internoID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object Cdsvinc_transferencia_internoID_TRANSFERENCIA_INTERNO: TIntegerField
      FieldName = 'ID_TRANSFERENCIA_INTERNO'
    end
    object Cdsvinc_transferencia_internoInterno: TStringField
      FieldKind = fkLookup
      FieldName = 'Interno'
      LookupDataSet = DM.CdsInterno
      LookupKeyFields = 'ID_INTERNO'
      LookupResultField = 'NOME_INTERNO'
      KeyFields = 'ID_INTERNO'
      Size = 50
      Lookup = True
    end
    object Cdsvinc_transferencia_internoRGI: TStringField
      FieldKind = fkLookup
      FieldName = 'RGI'
      LookupDataSet = DM.CdsInterno
      LookupKeyFields = 'ID_INTERNO'
      LookupResultField = 'RGI'
      KeyFields = 'ID_INTERNO'
      Lookup = True
    end
  end
  object Dsvinc_transferencia_interno: TDataSource
    DataSet = Cdsvinc_transferencia_interno
    Left = 733
    Top = 55
  end
end
