inherited frmCadastroItinerario: TfrmCadastroItinerario
  Left = 236
  Width = 560
  Height = 355
  Caption = 'Cadastro de Itinerario'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 266
    inherited ToolBarModeloCadastro: TToolBar
      Height = 248
    end
    inherited DBNavigator1: TDBNavigator
      Top = 248
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 429
    Height = 266
    inherited PageControlModeloCadastro: TPageControl
      Width = 429
      Height = 266
      ActivePage = TabSheetCadastro
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 421
          Height = 238
          object Label2: TLabel
            Left = 8
            Top = 20
            Width = 52
            Height = 13
            Caption = 'Id Itiner'#225'rio'
            FocusControl = edtIdItinerario
          end
          object Label3: TLabel
            Left = 164
            Top = 16
            Width = 14
            Height = 13
            Caption = 'UF'
          end
          object Label4: TLabel
            Left = 8
            Top = 76
            Width = 106
            Height = 13
            Caption = 'Descri'#231#227'o do Itiner'#225'rio'
            FocusControl = EdtDescricaoItinerario
          end
          object Label5: TLabel
            Left = 8
            Top = 124
            Width = 81
            Height = 13
            Caption = 'Sigla do Itiner'#225'rio'
            FocusControl = edtSiglaItinerario
          end
          object edtIdItinerario: TDBEdit
            Left = 8
            Top = 36
            Width = 134
            Height = 21
            DataField = 'ID_ITINERARIO'
            DataSource = DsCadastro
            TabOrder = 0
          end
          object EdtDescricaoItinerario: TDBEdit
            Left = 8
            Top = 92
            Width = 304
            Height = 21
            DataField = 'INTINERARIO_DESC'
            DataSource = DsCadastro
            TabOrder = 2
          end
          object edtSiglaItinerario: TDBEdit
            Left = 8
            Top = 140
            Width = 301
            Height = 21
            DataField = 'ITINERARIO_SIGLA'
            DataSource = DsCadastro
            TabOrder = 3
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 168
            Top = 32
            Width = 145
            Height = 21
            DataField = 'ID_ESTADO'
            DataSource = DsCadastro
            KeyField = 'ID_ESTADO'
            ListField = 'UF'
            ListSource = DM.dsestado
            TabOrder = 1
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 421
        end
        inherited PanelConsulta: TPanel
          Width = 421
          Height = 204
          inherited DBGridConsulta: TDBGrid
            Width = 419
            Height = 202
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_ITINERARIO'
                Title.Caption = 'Id'
                Width = 51
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'INTINERARIO_DESC'
                Title.Caption = 'Descricao'
                Width = 171
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ITINERARIO_SIGLA'
                Title.Caption = 'Sigla'
                Width = 86
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Estado'
                Width = 47
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_ESTADO'
                Title.Caption = 'Id Estado'
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 544
    inherited Image2: TImage
      Width = 544
    end
    inherited LabelTitulo: TLabel
      Width = 180
      Caption = 'Cadastro de Itinerario'
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 298
    Width = 544
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM ITINERARIO')
    Left = 344
    Top = 232
    object SqlCadastroID_ITINERARIO: TIntegerField
      FieldName = 'ID_ITINERARIO'
      Required = True
    end
    object SqlCadastroINTINERARIO_DESC: TStringField
      FieldName = 'INTINERARIO_DESC'
      Size = 100
    end
    object SqlCadastroITINERARIO_SIGLA: TStringField
      FieldName = 'ITINERARIO_SIGLA'
      Size = 30
    end
    object SqlCadastroID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
    end
  end
  inherited DspCadastro: TDataSetProvider
    Left = 384
    Top = 232
  end
  inherited CdsCadastro: TClientDataSet
    Left = 428
    Top = 232
    object CdsCadastroID_ITINERARIO: TIntegerField
      FieldName = 'ID_ITINERARIO'
      Required = True
    end
    object CdsCadastroINTINERARIO_DESC: TStringField
      FieldName = 'INTINERARIO_DESC'
      Size = 100
    end
    object CdsCadastroITINERARIO_SIGLA: TStringField
      FieldName = 'ITINERARIO_SIGLA'
      Size = 30
    end
    object CdsCadastroID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
    end
    object CdsCadastroEstado: TStringField
      FieldKind = fkLookup
      FieldName = 'Estado'
      LookupDataSet = DM.cdsestado
      LookupKeyFields = 'ID_ESTADO'
      LookupResultField = 'UF'
      KeyFields = 'ID_ESTADO'
      Lookup = True
    end
  end
  inherited DsCadastro: TDataSource
    Left = 468
    Top = 232
  end
end
