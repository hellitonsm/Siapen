inherited FrmItinerarioEscolta: TFrmItinerarioEscolta
  Left = 291
  Top = 301
  Width = 610
  Height = 373
  Caption = 'Cadastro Itinerarios das Escoltas'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 284
    inherited ToolBarModeloCadastro: TToolBar
      Height = 266
    end
    inherited DBNavigator1: TDBNavigator
      Top = 266
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 479
    Height = 284
    inherited PageControlModeloCadastro: TPageControl
      Width = 479
      Height = 284
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 471
          Height = 256
          object Label2: TLabel
            Left = 8
            Top = 5
            Width = 115
            Height = 13
            Caption = 'Id Itinerario das Escoltas'
            FocusControl = DBEdit1
          end
          object Label3: TLabel
            Left = 164
            Top = 5
            Width = 82
            Height = 13
            Caption = 'Ordem de Miss'#227'o'
          end
          object Label4: TLabel
            Left = 322
            Top = 5
            Width = 82
            Height = 13
            Caption = 'Id Meio Ambiente'
          end
          object Label5: TLabel
            Left = 8
            Top = 56
            Width = 106
            Height = 13
            Caption = 'Id Itinerario de Destino'
          end
          object Label6: TLabel
            Left = 265
            Top = 56
            Width = 97
            Height = 13
            Caption = 'Id Itinerario d Origem'
          end
          object Label7: TLabel
            Left = 8
            Top = 101
            Width = 74
            Height = 13
            Caption = 'Numero do Voo'
            FocusControl = DBEdit6
          end
          object Label8: TLabel
            Left = 8
            Top = 148
            Width = 53
            Height = 13
            Caption = 'Data Inicial'
          end
          object Label9: TLabel
            Left = 8
            Top = 200
            Width = 48
            Height = 13
            Caption = 'Data Final'
          end
          object Label10: TLabel
            Left = 164
            Top = 148
            Width = 53
            Height = 13
            Caption = 'Hora Inicial'
            FocusControl = DBEdit9
          end
          object Label11: TLabel
            Left = 164
            Top = 200
            Width = 48
            Height = 13
            Caption = 'Hora Final'
            FocusControl = DBEdit10
          end
          object DBEdit1: TDBEdit
            Left = 8
            Top = 20
            Width = 134
            Height = 21
            DataField = 'ID_ITINERARIO_ESCOLTA'
            DataSource = DsCadastro
            TabOrder = 0
          end
          object DBEdit6: TDBEdit
            Left = 8
            Top = 116
            Width = 135
            Height = 21
            DataField = 'ITINERARIO_NUMERO'
            DataSource = DsCadastro
            TabOrder = 5
          end
          object DBEdit9: TDBEdit
            Left = 164
            Top = 164
            Width = 135
            Height = 21
            DataField = 'ITINERARIO_HORA_INICIAL'
            DataSource = DsCadastro
            TabOrder = 7
          end
          object DBEdit10: TDBEdit
            Left = 164
            Top = 216
            Width = 135
            Height = 21
            DataField = 'ITINERARIO_HORA_FINAL'
            DataSource = DsCadastro
            TabOrder = 9
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 164
            Top = 20
            Width = 145
            Height = 21
            DataField = 'ID_ESCOLTA'
            DataSource = DsCadastro
            KeyField = 'ID_ESCOLTA'
            ListField = 'ESCOLTA_OMP'
            ListSource = DM.dsEscolta
            TabOrder = 1
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 322
            Top = 20
            Width = 145
            Height = 21
            DataField = 'ID_MEIO_TRANSPORTE'
            DataSource = DsCadastro
            KeyField = 'ID_MEIO_TRANSPORTE'
            ListField = 'TRANSPORTE_DESC'
            ListSource = DM.dsMeioTransporte
            TabOrder = 2
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 8
            Top = 72
            Width = 200
            Height = 21
            DataField = 'ID_ITINERARIO_DESTINO'
            DataSource = DsCadastro
            KeyField = 'ID_ITINERARIO'
            ListField = 'INTINERARIO_DESC'
            ListSource = DM.dsItinerario
            TabOrder = 3
          end
          object DBLookupComboBox4: TDBLookupComboBox
            Left = 265
            Top = 72
            Width = 200
            Height = 21
            DataField = 'ID_ITINERARIO_ORIGEM'
            DataSource = DsCadastro
            KeyField = 'ID_ITINERARIO'
            ListField = 'INTINERARIO_DESC'
            ListSource = DM.dsItinerario
            TabOrder = 4
          end
          object adpDBDateTimePicker1: TadpDBDateTimePicker
            Left = 8
            Top = 164
            Width = 135
            Height = 21
            Date = 41060.630822291660000000
            Time = 41060.630822291660000000
            TabOrder = 6
            DataField = 'ITINERARIO_DATA_INICIAL'
            DataSource = DsCadastro
            ReadOnly = False
          end
          object adpDBDateTimePicker2: TadpDBDateTimePicker
            Left = 8
            Top = 216
            Width = 135
            Height = 21
            Date = 41060.637187071760000000
            Time = 41060.637187071760000000
            TabOrder = 8
            DataField = 'ITINERARIO_DATA_FINAL'
            DataSource = DsCadastro
            ReadOnly = False
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 471
        end
        inherited PanelConsulta: TPanel
          Width = 471
          Height = 222
          inherited DBGridConsulta: TDBGrid
            Width = 469
            Height = 220
            Columns = <
              item
                Expanded = False
                FieldName = 'OrdemMissao'
                Width = 96
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ITINERARIO_NUMERO'
                Title.Caption = 'Numero Itinerario'
                Width = 97
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ITINERARIO_DATA_INICIAL'
                Title.Caption = 'Data Inicial'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ITINERARIO_DATA_FINAL'
                Title.Caption = 'Data Final'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ITINERARIO_HORA_INICIAL'
                Title.Caption = 'Hora Inicial'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ITINERARIO_HORA_FINAL'
                Title.Caption = 'Hora Final'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_ITINERARIO_ESCOLTA'
                Title.Caption = 'Id Itinerario'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_ESCOLTA'
                Title.Caption = 'Id Escolta'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_MEIO_TRANSPORTE'
                Title.Caption = 'Id Meio Transporte'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_ITINERARIO_DESTINO'
                Title.Caption = 'Id Destino'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_ITINERARIO_ORIGEM'
                Title.Caption = 'Id Origem'
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 594
    inherited Image2: TImage
      Width = 594
    end
    inherited LabelTitulo: TLabel
      Width = 356
      Caption = 'Tela de cadastro dos Itinerarios da Escoltas'
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 316
    Width = 594
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM ITINERARIO_ESCOLTA')
    Left = 616
    Top = 72
    object SqlCadastroID_ITINERARIO_ESCOLTA: TIntegerField
      FieldName = 'ID_ITINERARIO_ESCOLTA'
      Required = True
    end
    object SqlCadastroID_ESCOLTA: TIntegerField
      FieldName = 'ID_ESCOLTA'
    end
    object SqlCadastroID_MEIO_TRANSPORTE: TIntegerField
      FieldName = 'ID_MEIO_TRANSPORTE'
    end
    object SqlCadastroID_ITINERARIO_DESTINO: TIntegerField
      FieldName = 'ID_ITINERARIO_DESTINO'
    end
    object SqlCadastroID_ITINERARIO_ORIGEM: TIntegerField
      FieldName = 'ID_ITINERARIO_ORIGEM'
    end
    object SqlCadastroITINERARIO_NUMERO: TStringField
      FieldName = 'ITINERARIO_NUMERO'
      Size = 30
    end
    object SqlCadastroITINERARIO_DATA_INICIAL: TSQLTimeStampField
      FieldName = 'ITINERARIO_DATA_INICIAL'
    end
    object SqlCadastroITINERARIO_DATA_FINAL: TSQLTimeStampField
      FieldName = 'ITINERARIO_DATA_FINAL'
    end
    object SqlCadastroITINERARIO_HORA_INICIAL: TTimeField
      FieldName = 'ITINERARIO_HORA_INICIAL'
    end
    object SqlCadastroITINERARIO_HORA_FINAL: TTimeField
      FieldName = 'ITINERARIO_HORA_FINAL'
    end
  end
  inherited DspCadastro: TDataSetProvider
    Left = 644
    Top = 72
  end
  inherited CdsCadastro: TClientDataSet
    Left = 672
    Top = 72
    object CdsCadastroOrdemMissao: TStringField
      FieldKind = fkLookup
      FieldName = 'OrdemMissao'
      LookupDataSet = DM.cdsEscolta
      LookupKeyFields = 'ID_ESCOLTA'
      LookupResultField = 'ESCOLTA_OMP'
      KeyFields = 'ID_ESCOLTA'
      Lookup = True
    end
    object CdsCadastroID_ITINERARIO_ESCOLTA: TIntegerField
      FieldName = 'ID_ITINERARIO_ESCOLTA'
      Required = True
    end
    object CdsCadastroID_ESCOLTA: TIntegerField
      FieldName = 'ID_ESCOLTA'
    end
    object CdsCadastroID_MEIO_TRANSPORTE: TIntegerField
      FieldName = 'ID_MEIO_TRANSPORTE'
    end
    object CdsCadastroID_ITINERARIO_DESTINO: TIntegerField
      FieldName = 'ID_ITINERARIO_DESTINO'
    end
    object CdsCadastroID_ITINERARIO_ORIGEM: TIntegerField
      FieldName = 'ID_ITINERARIO_ORIGEM'
    end
    object CdsCadastroITINERARIO_NUMERO: TStringField
      FieldName = 'ITINERARIO_NUMERO'
      Size = 30
    end
    object CdsCadastroITINERARIO_DATA_INICIAL: TSQLTimeStampField
      FieldName = 'ITINERARIO_DATA_INICIAL'
    end
    object CdsCadastroITINERARIO_DATA_FINAL: TSQLTimeStampField
      FieldName = 'ITINERARIO_DATA_FINAL'
    end
    object CdsCadastroITINERARIO_HORA_INICIAL: TTimeField
      FieldName = 'ITINERARIO_HORA_INICIAL'
      EditMask = '!90:00;1;_'
    end
    object CdsCadastroITINERARIO_HORA_FINAL: TTimeField
      FieldName = 'ITINERARIO_HORA_FINAL'
      EditMask = '!90:00;1;_'
    end
  end
  inherited DsCadastro: TDataSource
    Left = 700
    Top = 72
  end
end
