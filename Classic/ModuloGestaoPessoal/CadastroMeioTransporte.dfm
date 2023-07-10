inherited FrmCadastroMeioTransporte: TFrmCadastroMeioTransporte
  Left = 238
  Top = 181
  Width = 661
  Height = 357
  Caption = 'Cadastro de meio de transporte'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 268
    inherited ToolBarModeloCadastro: TToolBar
      Height = 250
    end
    inherited DBNavigator1: TDBNavigator
      Top = 250
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 530
    Height = 268
    inherited PageControlModeloCadastro: TPageControl
      Width = 530
      Height = 268
      ActivePage = TabSheetConsulta
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 522
          Height = 240
          object Label2: TLabel
            Left = 8
            Top = 12
            Width = 103
            Height = 13
            Caption = 'Id meio de Transporte'
            FocusControl = edtIdMeioTransporte
          end
          object Label3: TLabel
            Left = 8
            Top = 60
            Width = 153
            Height = 13
            Caption = 'Descri'#231#227'o do meio de transporte'
            FocusControl = edtDescricaoMeioTransporte
          end
          object Label4: TLabel
            Left = 8
            Top = 112
            Width = 90
            Height = 13
            Caption = 'Tipo de Transporte'
            FocusControl = edtTipoTransporte
          end
          object edtIdMeioTransporte: TDBEdit
            Left = 8
            Top = 28
            Width = 134
            Height = 21
            Hint = 'Este campo '#233' preenchido  automaticamente '
            DataField = 'ID_MEIO_TRANSPORTE'
            DataSource = DsCadastro
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
          object edtDescricaoMeioTransporte: TDBEdit
            Left = 8
            Top = 76
            Width = 501
            Height = 21
            DataField = 'TRANSPORTE_DESC'
            DataSource = DsCadastro
            TabOrder = 1
          end
          object edtTipoTransporte: TDBEdit
            Left = 8
            Top = 128
            Width = 497
            Height = 21
            DataField = 'TRANSPORTE_TIPO'
            DataSource = DsCadastro
            TabOrder = 2
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 16
            Top = 164
            Width = 185
            Height = 57
            Caption = 'Modalidade:'
            DataField = 'MODALIDADE'
            DataSource = DsCadastro
            Items.Strings = (
              'Terrrestre'
              'Aereo')
            TabOrder = 3
            Values.Strings = (
              'T'
              'A')
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 522
        end
        inherited PanelConsulta: TPanel
          Width = 522
          Height = 206
          inherited DBGridConsulta: TDBGrid
            Width = 520
            Height = 204
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_MEIO_TRANSPORTE'
                Title.Caption = 'Id'
                Width = 43
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TRANSPORTE_DESC'
                Title.Caption = 'Descricao'
                Width = 214
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TRANSPORTE_TIPO'
                Title.Caption = 'Tipo de Transporte'
                Width = 154
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MODALIDADE'
                Title.Caption = 'Modalidade'
                Width = 90
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 645
    inherited Image2: TImage
      Width = 645
    end
    inherited LabelTitulo: TLabel
      Width = 257
      Caption = 'Cadastro de meio de transporte'
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 300
    Width = 645
  end
  inherited ImageListCadastro: TImageList
    Left = 532
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM MEIO_TRANSPORTE')
    Left = 332
    Top = 188
    object SqlCadastroID_MEIO_TRANSPORTE: TIntegerField
      FieldName = 'ID_MEIO_TRANSPORTE'
      Required = True
    end
    object SqlCadastroTRANSPORTE_DESC: TStringField
      FieldName = 'TRANSPORTE_DESC'
      Size = 100
    end
    object SqlCadastroTRANSPORTE_TIPO: TStringField
      FieldName = 'TRANSPORTE_TIPO'
      Size = 30
    end
    object SqlCadastroMODALIDADE: TStringField
      FieldName = 'MODALIDADE'
      Size = 1
    end
  end
  inherited DspCadastro: TDataSetProvider
    Left = 372
    Top = 188
  end
  inherited CdsCadastro: TClientDataSet
    Left = 428
    Top = 188
    object CdsCadastroID_MEIO_TRANSPORTE: TIntegerField
      FieldName = 'ID_MEIO_TRANSPORTE'
      Required = True
    end
    object CdsCadastroTRANSPORTE_DESC: TStringField
      FieldName = 'TRANSPORTE_DESC'
      Size = 100
    end
    object CdsCadastroTRANSPORTE_TIPO: TStringField
      FieldName = 'TRANSPORTE_TIPO'
      Size = 30
    end
    object CdsCadastroMODALIDADE: TStringField
      FieldName = 'MODALIDADE'
      Size = 1
    end
  end
  inherited DsCadastro: TDataSource
    Left = 488
    Top = 188
  end
end
