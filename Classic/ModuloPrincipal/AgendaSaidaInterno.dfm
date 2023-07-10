inherited FrmAgendaSaidaInterno: TFrmAgendaSaidaInterno
  Left = 199
  Width = 889
  Height = 645
  Caption = 'Agenda de Saida do Interno'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 529
    inherited ToolBarModeloCadastro: TToolBar
      Height = 511
      inherited Editar: TToolButton
        Caption = '&ABRIR'
      end
      inherited Salvar: TToolButton
        Visible = False
      end
    end
    inherited DBNavigator1: TDBNavigator
      Top = 511
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 758
    Height = 529
    inherited PageControlModeloCadastro: TPageControl
      Width = 758
      Height = 529
      ActivePage = TabSheetCadastro
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          Width = 750
          Height = 501
          inherited PageControlPrincipal: TPageControl
            Width = 748
            Height = 499
            ActivePage = TabSheet1
            object TabSheet1: TTabSheet [0]
              Caption = 'Agenda de Sa'#237'da'
              ImageIndex = 2
              object PanelAgenda: TPanel
                Left = 0
                Top = 0
                Width = 740
                Height = 471
                Align = alClient
                TabOrder = 0
                object lbl8: TLabel
                  Left = 24
                  Top = 314
                  Width = 75
                  Height = 13
                  Caption = 'Data Agendada'
                end
                object lbl9: TLabel
                  Left = 140
                  Top = 314
                  Width = 75
                  Height = 13
                  Caption = 'Hora Agendada'
                end
                object Label15: TLabel
                  Left = 321
                  Top = 145
                  Width = 48
                  Height = 13
                  Caption = 'Protocolo '
                end
                object Label16: TLabel
                  Left = 365
                  Top = 314
                  Width = 90
                  Height = 13
                  Caption = 'Setor Respons'#225'vel'
                end
                object Label17: TLabel
                  Left = 348
                  Top = 189
                  Width = 76
                  Height = 13
                  Caption = 'Tipo Solicita'#231#227'o'
                end
                object Label26: TLabel
                  Left = 458
                  Top = 189
                  Width = 78
                  Height = 13
                  Caption = 'Doc. Solicita'#231#227'o'
                  FocusControl = DBEditDoc
                end
                object Label29: TLabel
                  Left = 24
                  Top = 189
                  Width = 135
                  Height = 13
                  Caption = 'Org'#227'o / Setor da Solicita'#231#227'o'
                end
                object SpeedButton10: TSpeedButton
                  Left = 274
                  Top = 205
                  Width = 23
                  Height = 20
                  Hint = 'Cadastro Destino'
                  Caption = '...'
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton2Click
                end
                object Label8: TLabel
                  Left = 602
                  Top = 189
                  Width = 78
                  Height = 13
                  Caption = 'Data Solicita'#231#227'o'
                end
                object Label14: TLabel
                  Left = 24
                  Top = 233
                  Width = 80
                  Height = 13
                  Caption = 'Cargo Solicitante'
                end
                object Label41: TLabel
                  Left = 142
                  Top = 233
                  Width = 109
                  Height = 13
                  Caption = 'Vocativo do Solicitante'
                end
                object Label42: TLabel
                  Left = 261
                  Top = 233
                  Width = 101
                  Height = 13
                  Caption = 'Forma de Tratamento'
                end
                object Label48: TLabel
                  Left = 373
                  Top = 233
                  Width = 95
                  Height = 13
                  Caption = 'Nome do Solicitante'
                end
                object Label50: TLabel
                  Left = 24
                  Top = 273
                  Width = 100
                  Height = 13
                  Caption = 'Endere'#231'o do Destino'
                end
                object Label51: TLabel
                  Left = 313
                  Top = 273
                  Width = 33
                  Height = 13
                  Caption = 'Cidade'
                end
                object Label53: TLabel
                  Left = 234
                  Top = 316
                  Width = 74
                  Height = 13
                  Caption = 'Oficio de Sa'#237'da'
                  FocusControl = DBEdit37
                end
                object Label56: TLabel
                  Left = 24
                  Top = 352
                  Width = 71
                  Height = 13
                  Caption = 'Autorizado por:'
                end
                object Label58: TLabel
                  Left = 24
                  Top = 389
                  Width = 79
                  Height = 13
                  Caption = 'Motivo da Sa'#237'da'
                end
                object Label59: TLabel
                  Left = 364
                  Top = 391
                  Width = 58
                  Height = 13
                  Caption = 'Observa'#231#227'o'
                end
                object DBEditHORA: TDBEdit
                  Left = 140
                  Top = 331
                  Width = 76
                  Height = 21
                  DataField = 'HORA_AGENDA'
                  DataSource = DsAgenda
                  TabOrder = 18
                end
                object DBEdit21: TDBEdit
                  Left = 321
                  Top = 161
                  Width = 105
                  Height = 21
                  DataField = 'IDAGENDA_ATENDIMENTO'
                  DataSource = DsAgenda
                  Enabled = False
                  TabOrder = 3
                end
                object DBLookupComboBoxPostoTrabalho: TDBLookupComboBox
                  Left = 365
                  Top = 331
                  Width = 241
                  Height = 21
                  DataField = 'IDPOSTO_TRABALHO'
                  DataSource = DsAgenda
                  KeyField = 'IDPOSTO_TRABALHO'
                  ListField = 'POSTO_TRABALHO'
                  ListSource = DM.DsPostoTrabalho
                  TabOrder = 20
                end
                object DBComboBoxTipoDoc: TDBComboBox
                  Left = 349
                  Top = 205
                  Width = 105
                  Height = 21
                  DataField = 'TIPO_DOCUMENTO_SOLICITACAO'
                  DataSource = DsAgenda
                  ItemHeight = 13
                  Items.Strings = (
                    'Alvar'#225
                    'Carta Livramento'
                    'Laudo'
                    'Memorando'
                    'N'#227'o Informado'
                    'Ocorr'#234'ncia'
                    'Of'#237'cio')
                  Sorted = True
                  TabOrder = 8
                end
                object DBEditDoc: TDBEdit
                  Left = 458
                  Top = 205
                  Width = 108
                  Height = 21
                  DataField = 'NUMERO_DOC_SOLICITACAO'
                  DataSource = DsAgenda
                  TabOrder = 9
                end
                object DBLookupComboBoxDestino: TDBLookupComboBox
                  Left = 24
                  Top = 205
                  Width = 249
                  Height = 21
                  DataField = 'IDDESTINO'
                  DataSource = DsAgenda
                  KeyField = 'ID_DESTINO'
                  ListField = 'DESTINO'
                  ListSource = DsDestino
                  TabOrder = 6
                  OnClick = DBLookupComboBoxDestinoClick
                end
                object Button2: TButton
                  Left = 300
                  Top = 205
                  Width = 45
                  Height = 20
                  Caption = 'Busca'
                  TabOrder = 7
                  OnClick = Button2Click
                end
                object DBRadioGroup3: TDBRadioGroup
                  Left = 564
                  Top = 149
                  Width = 116
                  Height = 33
                  Caption = 'Confirmada'
                  Columns = 2
                  DataField = 'CONFIRMADA'
                  DataSource = DsAgenda
                  Items.Strings = (
                    'Sim'
                    'N'#227'o')
                  TabOrder = 5
                  Values.Strings = (
                    'S'
                    'N')
                end
                object DBRadioGroup4: TDBRadioGroup
                  Left = 436
                  Top = 149
                  Width = 116
                  Height = 33
                  Caption = 'Prioridade'
                  Columns = 2
                  DataField = 'PRIORIDADE'
                  DataSource = DsAgenda
                  Items.Strings = (
                    'Sim'
                    'N'#227'o')
                  TabOrder = 4
                  Values.Strings = (
                    'S'
                    'N')
                end
                object DBEdit36: TDBEdit
                  Left = 312
                  Top = 289
                  Width = 368
                  Height = 21
                  DataField = 'CIDADE_SOLICITANTE'
                  DataSource = DsAgenda
                  TabOrder = 16
                end
                object DBEdit37: TDBEdit
                  Left = 234
                  Top = 331
                  Width = 108
                  Height = 21
                  DataField = 'NUMERO_OFICIO'
                  DataSource = DsAgenda
                  TabOrder = 19
                end
                object dbmemoOBSERVACAO: TDBMemo
                  Left = 24
                  Top = 405
                  Width = 316
                  Height = 56
                  DataField = 'MOTIVO_SAIDA'
                  DataSource = DsAgenda
                  TabOrder = 24
                end
                object DBMemo1: TDBMemo
                  Left = 364
                  Top = 405
                  Width = 316
                  Height = 56
                  DataField = 'OBSERVACAO'
                  DataSource = DsAgenda
                  TabOrder = 25
                end
                object DBComboBox6: TDBComboBox
                  Left = 24
                  Top = 249
                  Width = 113
                  Height = 21
                  DataField = 'CARGO_SOLICITANTE'
                  DataSource = DsAgenda
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
                object DBLookupComboBox3: TDBLookupComboBox
                  Left = 24
                  Top = 368
                  Width = 265
                  Height = 21
                  DataField = 'IDFUNCIONARIO_AUTORIZOU'
                  DataSource = DsAgenda
                  KeyField = 'ID_FUNCIONARIO'
                  ListField = 'NOME_FUNCIONARIO'
                  ListSource = DM.DsFuncionarioLista
                  TabOrder = 22
                  OnClick = DBLookupComboBox3Click
                end
                object DBComboBox7: TDBComboBox
                  Left = 141
                  Top = 249
                  Width = 113
                  Height = 21
                  DataField = 'VOCATIVO_SOLICITANTE'
                  DataSource = DsAgenda
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
                  Left = 261
                  Top = 249
                  Width = 113
                  Height = 21
                  DataField = 'FORMA_DE_TRATAMENTO'
                  DataSource = DsAgenda
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
                object DBGridAgenda: TDBGrid
                  Left = 24
                  Top = 8
                  Width = 657
                  Height = 131
                  DataSource = DsConsultaAgenda
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'MS Sans Serif'
                  TitleFont.Style = []
                  OnDrawColumnCell = DBGridAgendaDrawColumnCell
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'DATA_AGENDA'
                      Title.Caption = 'Data Agenda'
                      Width = 80
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'HORA_AGENDA'
                      Title.Caption = 'Hora'
                      Width = 40
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'TIPO_DOCUMENTO_SOLICITACAO'
                      Title.Caption = 'Tipo'
                      Width = 100
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'NUMERO_DOC_SOLICITACAO'
                      Title.Caption = 'Num.Doc'
                      Width = 100
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'DESTINO'
                      Title.Caption = 'Destino'
                      Width = 120
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'MOTIVO_SAIDA'
                      Title.Caption = 'Motivo'
                      Width = 100
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'OBSERVACAO'
                      Title.Caption = 'Observa'#231#227'o'
                      Width = 100
                      Visible = True
                    end>
                end
                object adpDBDateTimePicker1: TadpDBDateTimePicker
                  Left = 572
                  Top = 204
                  Width = 108
                  Height = 21
                  Date = 41075.000000000000000000
                  Time = 41075.000000000000000000
                  TabOrder = 10
                  DataField = 'DATA_SOLICITACAO'
                  DataSource = DsAgenda
                  ReadOnly = False
                end
                object BtnNovo: TBitBtn
                  Left = 24
                  Top = 150
                  Width = 100
                  Height = 25
                  Caption = 'Novo'
                  TabOrder = 1
                  OnClick = BtnNovoClick
                  Glyph.Data = {
                    36030000424D3603000000000000360000002800000010000000100000000100
                    18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                    A46769A46769A46769A46769A46769A46769A46769A46769A46769A46769A467
                    69A46769A46769FF00FFFF00FFFF00FFB79184FEE9C7F4DAB5F3D5AAF2D0A0EF
                    CB96EFC68BEDC182EBC17FEBC180EBC180F2C782A46769FF00FFFF00FFFF00FF
                    B79187FCEACEF3DABCF2D5B1F0D0A7EECB9EEDC793EDC28BE9BD81E9BD7FE9BD
                    7FEFC481A46769FF00FFFF00FFFF00FFB7938AFEEFDAF6E0C6F2DABCF2D5B2EF
                    D0A9EECB9EEDC796EBC28CE9BD82E9BD7FEFC481A46769FF00FFFF00FFFF00FF
                    BA978FFFF4E5F7E5CFF4E0C5F3DABBF2D5B1F0D0A6EECB9EEDC795EBC28AEABF
                    81EFC480A46769FF00FFFF00FFFF00FFC09E95FFFBF0F8EADCF6E3CFF4E0C6F2
                    D9BCF2D5B1F0D0A9EDCB9EEDC695EBC28AEFC583A46769FF00FFFF00FFFF00FF
                    C6A49AFFFFFCFAF0E6F8EADAF7E5CFF4E0C5F2DABAF2D5B1F0D0A7EECB9DEBC7
                    93F2C98CA46769FF00FFFF00FFFF00FFCBA99EFFFFFFFEF7F2FAEFE6F8EAD9F7
                    E3CFF6E0C5F2DABBF2D4B1F0D0A7EECC9EF3CE97A46769FF00FFFF00FFFF00FF
                    CFAC9FFFFFFFFFFEFCFCF6F0FAEFE6F7EADAF6E3CFF4E0C5F3D9BBF3D4B0F0D0
                    A6F6D3A0A46769FF00FFFF00FFFF00FFD4B0A1FFFFFFFFFFFFFFFEFCFEF7F0FA
                    EFE5F8EAD9F7E5CEF6DEC4F3D9B8F4D8B1EBCFA4A46769FF00FFFF00FFFF00FF
                    D9B5A1FFFFFFFFFFFFFFFFFFFFFEFCFCF7F0FAEFE5F8E9D9F8E7D1FBEACEDECE
                    B4B6AA93A46769FF00FFFF00FFFF00FFDDB7A4FFFFFFFFFFFFFFFFFFFFFFFFFF
                    FEFCFCF6EFFCF3E6EDD8C9B68A7BA17B6F9C7667A46769FF00FFFF00FFFF00FF
                    E2BCA5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFFFEF7DAC1BAAD735BE19E
                    55E68F31B56D4DFF00FFFF00FFFF00FFE6BFA7FFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFDCC7C5B88265F8B55CBF7A5CFF00FFFF00FFFF00FFFF00FF
                    E4BCA4FBF4F0FBF4EFFAF3EFFAF3EFF8F2EFF7F2EFF7F2EFD8C2C0B77F62C183
                    6CFF00FFFF00FFFF00FFFF00FFFF00FFE8C4ADEBCBB7EBCBB7EACBB7EACAB6EA
                    CAB6EACAB6EACAB6E3C2B1A56B5FFF00FFFF00FFFF00FFFF00FF}
                end
                object BtnConcluir: TBitBtn
                  Left = 136
                  Top = 150
                  Width = 100
                  Height = 25
                  Caption = 'Salvar'
                  Enabled = False
                  TabOrder = 2
                  OnClick = BtnConcluirClick
                  Glyph.Data = {
                    36030000424D3603000000000000360000002800000010000000100000000100
                    18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                    FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                    FFFF00FFFF00FFFF00FFFF00FFFF00FF7F2B287F2B28A18283A18283A18283A1
                    8283A18283A18283A182837A1C1C7F2B28FF00FFFF00FFFF00FFFF00FF7F2B28
                    CA4D4DB64545DDD4D5791617791617DCE0E0D7DADECED5D7BDBABD76100F9A2D
                    2D7F2B28FF00FFFF00FFFF00FF7F2B28C24A4BB14444E2D9D9791617791617D9
                    D8DAD9DEE1D3D9DCC1BDC1761111982D2D7F2B28FF00FFFF00FFFF00FF7F2B28
                    C24A4AB04242E6DCDC791617791617D5D3D5D8DEE1D7DDE0C6C2C5700F0F962C
                    2C7F2B28FF00FFFF00FFFF00FF7F2B28C24A4AB04141EADEDEE7DDDDDDD4D5D7
                    D3D5D5D7D9D7D8DACAC2C57E17179E31317F2B28FF00FFFF00FFFF00FF7F2B28
                    BF4748B84545BA4C4CBD5757BB5756B64E4EB44949BD5251BB4B4CB54242BF4A
                    4A7F2B28FF00FFFF00FFFF00FF7F2B28A33B39B1605DC68684CB918FCC9190CC
                    908FCB8988C98988CB9391CC9696BD4B4C7F2B28FF00FFFF00FFFF00FF7F2B28
                    BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B
                    4C7F2B28FF00FFFF00FFFF00FF7F2B28BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7
                    F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B4C7F2B28FF00FFFF00FFFF00FF7F2B28
                    BD4B4CF7F7F7BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFF7F7F7BD4B
                    4C7F2B28FF00FFFF00FFFF00FF7F2B28BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7
                    F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B4C7F2B28FF00FFFF00FFFF00FF7F2B28
                    BD4B4CF7F7F7BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFF7F7F7BD4B
                    4C7F2B28FF00FFFF00FFFF00FF7F2B28BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7
                    F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B4C7F2B28FF00FFFF00FFFF00FFFF00FF
                    7F2B28F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F77F2B
                    28FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                    00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
                end
                object Button1: TButton
                  Left = 294
                  Top = 368
                  Width = 45
                  Height = 20
                  Caption = 'Busca'
                  TabOrder = 23
                  OnClick = Button1Click
                end
                object Button4: TButton
                  Left = 635
                  Top = 331
                  Width = 45
                  Height = 20
                  Caption = 'Busca'
                  TabOrder = 21
                  OnClick = Button4Click
                end
                object adpDBDateTimePicker2: TadpDBDateTimePicker
                  Left = 24
                  Top = 331
                  Width = 108
                  Height = 21
                  Date = 41075.000000000000000000
                  Time = 41075.000000000000000000
                  TabOrder = 17
                  DataField = 'DATA_AGENDA'
                  DataSource = DsAgenda
                  ReadOnly = False
                end
                object DBEdit15: TDBEdit
                  Left = 24
                  Top = 289
                  Width = 278
                  Height = 21
                  DataField = 'ENDERECO_SOLICITANTE'
                  DataSource = DsCadastro
                  TabOrder = 15
                end
                object DBEdit22: TDBEdit
                  Tag = 1
                  Left = 375
                  Top = 249
                  Width = 304
                  Height = 21
                  DataField = 'NOME_SOLICITANTE'
                  DataSource = DsCadastro
                  TabOrder = 14
                end
              end
            end
            inherited TabSheetPrincipal: TTabSheet
              inherited DBEdit3: TDBEdit
                TabOrder = 4
              end
              inherited DBEditID_PROCEDENCIA: TDBEdit
                TabOrder = 19
              end
              inherited DBLookupComboBoxID_PROCEDENCIA: TDBLookupComboBox
                TabOrder = 20
              end
              inherited DBRadioGroup1: TDBRadioGroup
                TabOrder = 6
              end
              inherited DBRadioGroup2: TDBRadioGroup
                TabOrder = 18
              end
              inherited DBEdit7: TDBEdit
                TabOrder = 16
              end
              inherited DBLookupComboBox2: TDBLookupComboBox
                TabOrder = 17
              end
              inherited DBComboBox3: TDBComboBox
                TabOrder = 15
              end
              inherited DBEdit86: TDBEdit
                TabOrder = 3
              end
              inherited dbrgrpST: TDBRadioGroup
                TabOrder = 5
              end
              inherited DBEdit4: TDBEdit
                TabOrder = 9
              end
              inherited DBEdit20: TDBEdit
                TabOrder = 10
              end
              inherited DBEdit29: TDBEdit
                TabOrder = 12
              end
              inherited DBComboBox2: TDBComboBox
                TabOrder = 13
              end
              inherited DBEditpermanencia: TDBEdit
                TabOrder = 11
              end
              inherited DBLookupComboBoxFACCAO: TDBLookupComboBox
                TabOrder = 21
              end
              inherited DBEdit8: TDBEdit
                TabOrder = 24
              end
              inherited DBEdit31: TDBEdit
                TabOrder = 25
              end
              inherited DBEdit33: TDBEdit
                TabOrder = 26
              end
              inherited DBComboBox5: TDBComboBox
                TabOrder = 27
              end
              inherited DBComboBox4: TDBComboBox
                TabOrder = 28
              end
            end
            inherited TabSheetDadosGerais: TTabSheet
              TabVisible = False
            end
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 750
          inherited EditLocalizar: TEdit
            TabOrder = 1
          end
          inherited RadioGroupStatus: TRadioGroup
            Left = 621
            TabOrder = 3
          end
          inherited chkSoundex: TCheckBox
            TabOrder = 2
          end
        end
        inherited PanelConsulta: TPanel
          Width = 750
          Height = 459
          inherited DBGridConsulta: TDBGrid
            Width = 748
            Height = 457
          end
          inherited DBCtrlGridConsulta: TDBCtrlGrid
            Width = 748
            Height = 457
            PanelHeight = 91
            PanelWidth = 731
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 873
    inherited Image2: TImage
      Width = 873
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 561
    Width = 873
  end
  inherited ImageListCadastro: TImageList
    Left = 640
  end
  inherited SqlCadastro: TSQLQuery
    Left = 720
    Top = 96
  end
  inherited DspCadastro: TDataSetProvider
    Left = 748
    Top = 96
  end
  inherited CdsCadastro: TClientDataSet
    Left = 776
    Top = 96
  end
  inherited DsCadastro: TDataSource
    Left = 804
    Top = 96
  end
  inherited MainMenu1: TMainMenu
    Left = 547
  end
  object SqlAgenda: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDAGENDA_ATENDIMENTO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM AGENDA_ATENDIMENTO'
      'WHERE IDAGENDA_ATENDIMENTO =:IDAGENDA_ATENDIMENTO')
    SQLConnection = DM.SQLConnect
    Left = 720
    Top = 184
  end
  object DspAgenda: TDataSetProvider
    DataSet = SqlAgenda
    Left = 748
    Top = 184
  end
  object CdsAgenda: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'IDAGENDA_ATENDIMENTO'
    MasterFields = 'IDAGENDA_ATENDIMENTO'
    MasterSource = DsConsultaAgenda
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspAgenda'
    AfterInsert = CdsAgendaAfterInsert
    Left = 776
    Top = 184
    object CdsAgendaIDAGENDA_ATENDIMENTO: TIntegerField
      FieldName = 'IDAGENDA_ATENDIMENTO'
      Required = True
    end
    object CdsAgendaID_UP: TIntegerField
      FieldName = 'ID_UP'
    end
    object CdsAgendaID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object CdsAgendaID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object CdsAgendaID_VISITANTE: TIntegerField
      FieldName = 'ID_VISITANTE'
    end
    object CdsAgendaID_ADVOGADO: TIntegerField
      FieldName = 'ID_ADVOGADO'
    end
    object CdsAgendaIDAGENDA_TIPO_CONTATOS: TIntegerField
      FieldName = 'IDAGENDA_TIPO_CONTATOS'
    end
    object CdsAgendaIDAGENDA_ASSUNTOS: TIntegerField
      FieldName = 'IDAGENDA_ASSUNTOS'
    end
    object CdsAgendaIDAGENDA_SITUACAO: TIntegerField
      FieldName = 'IDAGENDA_SITUACAO'
    end
    object CdsAgendaDATA_LANCAMENTO: TSQLTimeStampField
      FieldName = 'DATA_LANCAMENTO'
    end
    object CdsAgendaID_FUNCIONARIO_AGENDA: TIntegerField
      FieldName = 'ID_FUNCIONARIO_AGENDA'
    end
    object CdsAgendaDATA_AGENDA: TSQLTimeStampField
      FieldName = 'DATA_AGENDA'
    end
    object CdsAgendaHORA_AGENDA: TTimeField
      FieldName = 'HORA_AGENDA'
      EditMask = '!90:00;1;_'
    end
    object CdsAgendaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 16386
    end
    object CdsAgendaSETOR: TStringField
      FieldName = 'SETOR'
      Size = 50
    end
    object CdsAgendaDATA_AUDIENCIA: TSQLTimeStampField
      FieldName = 'DATA_AUDIENCIA'
    end
    object CdsAgendaHORA_AUDIENCIA: TTimeField
      FieldName = 'HORA_AUDIENCIA'
    end
    object CdsAgendaVARA_AUDIENCIA: TStringField
      FieldName = 'VARA_AUDIENCIA'
      Size = 200
    end
    object CdsAgendaLOCAL_AUDIENCIA: TStringField
      FieldName = 'LOCAL_AUDIENCIA'
      Size = 200
    end
    object CdsAgendaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object CdsAgendaNUMERO_OFICIO: TStringField
      FieldName = 'NUMERO_OFICIO'
      Size = 100
    end
    object CdsAgendaIDDESTINO: TIntegerField
      FieldName = 'IDDESTINO'
    end
    object CdsAgendaIDPOSTO_TRABALHO: TIntegerField
      FieldName = 'IDPOSTO_TRABALHO'
    end
    object CdsAgendaTIPO_DOCUMENTO_SOLICITACAO: TStringField
      FieldName = 'TIPO_DOCUMENTO_SOLICITACAO'
      Size = 50
    end
    object CdsAgendaPRIORIDADE: TStringField
      FieldName = 'PRIORIDADE'
      Size = 1
    end
    object CdsAgendaCONFIRMADA: TStringField
      FieldName = 'CONFIRMADA'
      Size = 1
    end
    object CdsAgendaCARGO_SOLICITANTE: TStringField
      FieldName = 'CARGO_SOLICITANTE'
      Size = 50
    end
    object CdsAgendaVOCATIVO_SOLICITANTE: TStringField
      FieldName = 'VOCATIVO_SOLICITANTE'
      Size = 50
    end
    object CdsAgendaFORMA_DE_TRATAMENTO: TStringField
      FieldName = 'FORMA_DE_TRATAMENTO'
      Size = 50
    end
    object CdsAgendaNOME_SOLICITANTE: TStringField
      FieldName = 'NOME_SOLICITANTE'
      Size = 50
    end
    object CdsAgendaENDERECO_SOLICITANTE: TStringField
      FieldName = 'ENDERECO_SOLICITANTE'
      Size = 50
    end
    object CdsAgendaCIDADE_SOLICITANTE: TStringField
      FieldName = 'CIDADE_SOLICITANTE'
      Size = 50
    end
    object CdsAgendaIDFUNCIONARIO_AUTORIZOU: TIntegerField
      FieldName = 'IDFUNCIONARIO_AUTORIZOU'
    end
    object CdsAgendaNUMERO_DOC_SOLICITACAO: TStringField
      FieldName = 'NUMERO_DOC_SOLICITACAO'
      Size = 100
    end
    object CdsAgendaDATA_SOLICITACAO: TSQLTimeStampField
      FieldName = 'DATA_SOLICITACAO'
    end
    object CdsAgendaMOTIVO_SAIDA: TStringField
      FieldName = 'MOTIVO_SAIDA'
      Size = 8192
    end
    object CdsAgendaCARGO_AUTORIZOU: TStringField
      FieldName = 'CARGO_AUTORIZOU'
      Size = 100
    end
  end
  object DsAgenda: TDataSource
    DataSet = CdsAgenda
    OnDataChange = DsCadastroDataChange
    Left = 804
    Top = 184
  end
  object SqlConsultaAgenda: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_INTERNO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT'
      '    A.IDAGENDA_ATENDIMENTO,'
      '    A.ID_INTERNO,'
      '    A.DATA_AGENDA,'
      '    A.HORA_AGENDA,'
      '    A.TIPO_DOCUMENTO_SOLICITACAO,'
      '    A.NUMERO_DOC_SOLICITACAO,'
      '    D.DESTINO,'
      '    A.MOTIVO_SAIDA,'
      '    A.OBSERVACAO'
      'FROM AGENDA_ATENDIMENTO A'
      'LEFT JOIN DESTINO D ON (A.IDDESTINO=D.ID_DESTINO)'
      'WHERE ID_INTERNO=:ID_INTERNO'
      'ORDER BY A.DATA_AGENDA, A.HORA_AGENDA')
    SQLConnection = DM.SQLConnect
    Left = 720
    Top = 144
  end
  object DspConsultaAgenda: TDataSetProvider
    DataSet = SqlConsultaAgenda
    Left = 748
    Top = 144
  end
  object CdsConsultaAgenda: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_INTERNO'
    MasterFields = 'ID_INTERNO'
    MasterSource = DsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DspConsultaAgenda'
    Left = 776
    Top = 144
    object CdsConsultaAgendaIDAGENDA_ATENDIMENTO: TIntegerField
      FieldName = 'IDAGENDA_ATENDIMENTO'
      Required = True
    end
    object CdsConsultaAgendaID_INTERNO: TIntegerField
      FieldName = 'ID_INTERNO'
    end
    object CdsConsultaAgendaDATA_AGENDA: TSQLTimeStampField
      FieldName = 'DATA_AGENDA'
    end
    object CdsConsultaAgendaHORA_AGENDA: TTimeField
      FieldName = 'HORA_AGENDA'
    end
    object CdsConsultaAgendaTIPO_DOCUMENTO_SOLICITACAO: TStringField
      FieldName = 'TIPO_DOCUMENTO_SOLICITACAO'
      Size = 50
    end
    object CdsConsultaAgendaNUMERO_DOC_SOLICITACAO: TStringField
      FieldName = 'NUMERO_DOC_SOLICITACAO'
      Size = 100
    end
    object CdsConsultaAgendaDESTINO: TStringField
      FieldName = 'DESTINO'
      Size = 100
    end
    object CdsConsultaAgendaMOTIVO_SAIDA: TStringField
      FieldName = 'MOTIVO_SAIDA'
      Size = 8192
    end
    object CdsConsultaAgendaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 16386
    end
  end
  object DsConsultaAgenda: TDataSource
    DataSet = CdsConsultaAgenda
    OnDataChange = DsCadastroDataChange
    Left = 804
    Top = 144
  end
  object DsDestino: TDataSource
    DataSet = CdsDestino
    Left = 788
  end
  object CdsDestino: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPDestino'
    Left = 760
  end
  object DspDestino: TDataSetProvider
    DataSet = SqlDestino
    Left = 732
  end
  object SqlDestino: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT C.CIDADE||'#39' / '#39'||C.UF AS CIDADE, D.* '
      'FROM DESTINO D'
      'LEFT JOIN CIDADE C ON (C.ID_CIDADE=D.IDCIDADE)'
      'ORDER BY D.DESTINO')
    SQLConnection = DM.SQLConnect
    Left = 704
  end
end
