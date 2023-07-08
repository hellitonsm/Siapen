inherited FrmCadastroDestino: TFrmCadastroDestino
  Left = 230
  Top = 145
  Width = 902
  Caption = 'Cadastro Destino'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 771
    inherited PageControlModeloCadastro: TPageControl
      Width = 771
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 763
          object Label2: TLabel
            Left = 30
            Top = 74
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = DBEDITCODIGO
          end
          object Label3: TLabel
            Left = 86
            Top = 74
            Width = 36
            Height = 13
            Caption = 'Destino'
            FocusControl = dbedtDESTINO
          end
          object Label28: TLabel
            Left = 198
            Top = 130
            Width = 46
            Height = 13
            Caption = 'Endere'#231'o'
            FocusControl = DBEdit10
          end
          object Label30: TLabel
            Left = 95
            Top = 173
            Width = 27
            Height = 13
            Caption = 'Bairro'
            FocusControl = DBEdit12
          end
          object Label31: TLabel
            Left = 31
            Top = 221
            Width = 64
            Height = 13
            Caption = 'Complemento'
            FocusControl = DBEdit13
          end
          object Label32: TLabel
            Left = 511
            Top = 221
            Width = 21
            Height = 13
            Caption = 'CEP'
            FocusControl = DBEditcep
          end
          object SpeedButton11: TSpeedButton
            Left = 477
            Top = 281
            Width = 23
            Height = 22
            Hint = 'Cadastrar Cidade'
            Caption = '...'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton11Click
          end
          object Label14: TLabel
            Left = 31
            Top = 267
            Width = 33
            Height = 13
            Caption = 'Cidade'
          end
          object Label34: TLabel
            Left = 511
            Top = 267
            Width = 42
            Height = 13
            Caption = 'Telefone'
            FocusControl = DBEditfone
          end
          object Label29: TLabel
            Left = 31
            Top = 173
            Width = 12
            Height = 13
            Caption = 'N'#186
            FocusControl = DBEdit11
          end
          object Label5: TLabel
            Left = 30
            Top = 315
            Width = 93
            Height = 13
            Caption = 'Cargo Respons'#225'vel'
          end
          object Label41: TLabel
            Left = 148
            Top = 315
            Width = 42
            Height = 13
            Caption = 'Vocativo'
          end
          object Label42: TLabel
            Left = 263
            Top = 313
            Width = 101
            Height = 13
            Caption = 'Forma de Tratamento'
          end
          object Label48: TLabel
            Left = 379
            Top = 313
            Width = 108
            Height = 13
            Caption = 'Nome do Respons'#225'vel'
          end
          object Label16: TLabel
            Left = 29
            Top = 357
            Width = 90
            Height = 13
            Caption = 'Setor Respons'#225'vel'
          end
          object SpeedButton8: TSpeedButton
            Left = 274
            Top = 374
            Width = 23
            Height = 20
            Hint = 'Cadastro Destino'
            Caption = '...'
            ParentShowHint = False
            ShowHint = True
          end
          object DBEDITCODIGO: TDBEdit
            Left = 30
            Top = 90
            Width = 49
            Height = 21
            DataField = 'ID_DESTINO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 1
          end
          object dbedtDESTINO: TDBEdit
            Left = 86
            Top = 90
            Width = 545
            Height = 21
            DataField = 'DESTINO'
            DataSource = DsCadastro
            TabOrder = 2
          end
          object dbrgrpCAPITAL: TDBRadioGroup
            Left = 31
            Top = 129
            Width = 162
            Height = 41
            Caption = 'CAPITAL'
            Columns = 2
            DataField = 'CAPITAL'
            DataSource = DsCadastro
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 3
            Values.Strings = (
              'S'
              'N')
          end
          object DBEdit10: TDBEdit
            Left = 198
            Top = 146
            Width = 433
            Height = 21
            DataField = 'ENDERECO'
            DataSource = DsCadastro
            TabOrder = 4
          end
          object DBEdit12: TDBEdit
            Left = 95
            Top = 189
            Width = 537
            Height = 21
            DataField = 'BAIRRO'
            DataSource = DsCadastro
            TabOrder = 6
          end
          object DBEdit13: TDBEdit
            Left = 31
            Top = 237
            Width = 465
            Height = 21
            DataField = 'COMPLEMENTO'
            DataSource = DsCadastro
            TabOrder = 7
          end
          object DBEditcep: TDBEdit
            Left = 511
            Top = 237
            Width = 121
            Height = 21
            DataField = 'CEP'
            DataSource = DsCadastro
            TabOrder = 8
          end
          object DBLookupComboBoxIDCIDADE: TDBLookupComboBox
            Left = 31
            Top = 283
            Width = 441
            Height = 21
            DataField = 'IDCIDADE'
            DataSource = DsCadastro
            KeyField = 'ID_CIDADE'
            ListField = 'CIDADE'
            ListSource = DM.DSCIDADE
            TabOrder = 9
          end
          object DBEditfone: TDBEdit
            Left = 511
            Top = 283
            Width = 121
            Height = 21
            DataField = 'FONE'
            DataSource = DsCadastro
            TabOrder = 10
          end
          object DBEdit11: TDBEdit
            Left = 31
            Top = 189
            Width = 57
            Height = 21
            DataField = 'NUMERO'
            DataSource = DsCadastro
            TabOrder = 5
          end
          object DBComboBox6: TDBComboBox
            Left = 30
            Top = 331
            Width = 113
            Height = 21
            DataField = 'CARGO_SOLICITANTE'
            DataSource = DsCadastro
            ItemHeight = 13
            Items.Strings = (
              'Comandante da 3'#170' CPMind'
              'Comandante do 4'#186' BPM'
              'Corregedor(a)'
              'Defensor P'#250'blico'
              'Delegado(a)'
              'Desembargador'
              'Diretor(a)'
              'Encarregado do IPM'
              'Juiz(a)'
              'Juiz(a) do Trabalho'
              'M'#233'dico(a)'
              'Presidente'
              'Promotor'
              'Secretaria de Justi'#231'a'
              'Senador'
              'Sindicante')
            Sorted = True
            TabOrder = 11
          end
          object DBComboBox7: TDBComboBox
            Left = 147
            Top = 331
            Width = 113
            Height = 21
            DataField = 'VOCATIVO_SOLICITANTE'
            DataSource = DsCadastro
            ItemHeight = 13
            Items.Strings = (
              'Ilustrimimo(a)'
              'Merit'#237'ssimo(a) Juiz(a)'
              'Merit'#237'ssimo(a) Juiz(a)'
              'Senhor Comandante'
              'Senhor Comandante'
              'Senhor Defensor'
              'Senhor Senador'
              'Senhor(a) Corregedor(a),'
              'Senhor(a) Delegado(a),'
              'Senhor(a) Desembagador(a),'
              'Senhor(a) Diretor(a),'
              'Senhor(a) Promotor(a),')
            Sorted = True
            TabOrder = 12
          end
          object DBComboBox8: TDBComboBox
            Left = 263
            Top = 331
            Width = 113
            Height = 21
            DataField = 'FORMA_DE_TRATAMENTO'
            DataSource = DsCadastro
            ItemHeight = 13
            Items.Strings = (
              'Excelent'#237'ssimo(a) Senhor(a)'
              'Excelent'#237'ssimo(a) Senhor(a)'
              'Excelent'#237'ssimo(a) Senhor(a)'
              'Excelent'#237'ssimo(a) Senhor(a)'
              'Ilustr'#237'ssimo  Senhor'
              'Ilustr'#237'ssimo  Senhor'
              'Ilustr'#237'ssimo  Senhor'
              'Ilustr'#237'ssimo Senhor'
              'Ilustr'#237'ssimo(a)( Senhor(a)'
              'Ilustr'#237'ssimo(a)( Senhor(a)'
              'Ilustr'#237'ssimo(a)( Senhor(a)'
              'Ilustr'#237'ssimo(a)( Senhor(a)'
              'MD.')
            Sorted = True
            TabOrder = 13
          end
          object DBEdit31: TDBEdit
            Tag = 1
            Left = 379
            Top = 330
            Width = 252
            Height = 21
            DataField = 'RESPONSAVEL'
            DataSource = DsCadastro
            TabOrder = 14
          end
          object DBLookupComboBoxPostoTrabalho: TDBLookupComboBox
            Left = 29
            Top = 374
            Width = 241
            Height = 21
            DataField = 'IDPOSTO_TRABALHO'
            DataSource = DsCadastro
            KeyField = 'IDPOSTO_TRABALHO'
            ListField = 'POSTO_TRABALHO'
            ListSource = DM.DsPostoTrabalho
            TabOrder = 15
          end
          object Button4: TButton
            Left = 300
            Top = 374
            Width = 45
            Height = 20
            Caption = 'Busca'
            TabOrder = 16
          end
          object DBRadioGroupTIPO_DESTINO: TDBRadioGroup
            Left = 30
            Top = 24
            Width = 593
            Height = 47
            Caption = 'Tipo de Destino'
            Columns = 4
            DataField = 'TIPO_DESTINO'
            DataSource = DsCadastro
            Items.Strings = (
              'DELEGACIA'
              'HOSPITAL'
              'VARA'
              'OUTROS')
            TabOrder = 0
            Values.Strings = (
              'DELEGACIA'
              'HOSPITAL'
              'VARA'
              'OUTROS')
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 763
        end
        inherited PanelConsulta: TPanel
          Width = 763
          inherited DBGridConsulta: TDBGrid
            Width = 761
            Columns = <
              item
                Expanded = False
                FieldName = 'TIPO_DESTINO'
                Title.Caption = 'Tipo'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESTINO'
                Title.Caption = 'Destino'
                Width = 400
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_DESTINO'
                Title.Caption = 'ID'
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 886
    inherited Image2: TImage
      Width = 886
    end
  end
  inherited StatusBar1: TStatusBar
    Width = 886
  end
  inherited SqlCadastro: TSQLQuery
    SQL.Strings = (
      'SELECT * '
      'FROM destino')
  end
end
