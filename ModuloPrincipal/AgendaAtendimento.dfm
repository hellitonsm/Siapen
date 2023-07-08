inherited FrmAgendaAtendimento: TFrmAgendaAtendimento
  Left = 313
  Top = 113
  Width = 925
  Height = 628
  Caption = 'Agenda de Atendimento'
  Menu = MainMenu1
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Width = 909
    Height = 39
    Align = alTop
    inherited ToolBarModeloCadastro: TToolBar
      Width = 829
      Height = 39
      inherited Novo: TToolButton
        Wrap = False
      end
      inherited Editar: TToolButton
        Left = 113
        Top = 0
        Wrap = False
      end
      inherited Cancelar: TToolButton
        Left = 220
        Top = 0
        Wrap = False
      end
      inherited Salvar: TToolButton
        Left = 327
        Top = 0
        Wrap = False
      end
      inherited Excluir: TToolButton
        Left = 434
        Top = 0
        Wrap = False
      end
      inherited Fechar: TToolButton
        Left = 541
        Top = 0
      end
    end
    inherited DBNavigator1: TDBNavigator
      Left = 829
      Top = 0
      Width = 80
      Height = 39
      DataSource = DsConsulta
      Align = alRight
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    Left = 0
    Top = 71
    Width = 909
    Height = 480
    inherited PageControlModeloCadastro: TPageControl
      Width = 909
      Height = 480
      ActivePage = TabSheetCadastro
      inherited TabSheetCadastro: TTabSheet
        Caption = 'Atendimento'
        inherited PanelCadastro: TPanel
          Width = 901
          Height = 452
          object lbl1: TLabel
            Left = 25
            Top = 99
            Width = 38
            Height = 13
            Caption = 'Assunto'
          end
          object btn1: TSpeedButton
            Left = 284
            Top = 114
            Width = 23
            Height = 22
            Caption = '...'
            Flat = True
            OnClick = btn1Click
          end
          object lbl2: TLabel
            Left = 329
            Top = 99
            Width = 76
            Height = 13
            Caption = 'Tipo de Contato'
          end
          object btn2: TSpeedButton
            Left = 515
            Top = 114
            Width = 23
            Height = 22
            Caption = '...'
            Flat = True
            OnClick = btn2Click
          end
          object lbl3: TLabel
            Left = 25
            Top = 220
            Width = 40
            Height = 13
            Caption = 'Visitante'
          end
          object btn3: TSpeedButton
            Left = 756
            Top = 236
            Width = 23
            Height = 22
            Caption = '...'
            Flat = True
            Visible = False
            OnClick = btn3Click
          end
          object lbl4: TLabel
            Left = 25
            Top = 140
            Width = 33
            Height = 13
            Caption = 'Interno'
          end
          object lbl5: TLabel
            Left = 24
            Top = 180
            Width = 49
            Height = 13
            Caption = 'Advogado'
          end
          object btn5: TSpeedButton
            Left = 756
            Top = 195
            Width = 23
            Height = 22
            Caption = '...'
            Flat = True
            Visible = False
            OnClick = btn5Click
          end
          object lbl6: TLabel
            Left = 545
            Top = 99
            Width = 42
            Height = 13
            Caption = 'Situa'#231#227'o'
          end
          object btn6: TSpeedButton
            Left = 784
            Top = 114
            Width = 23
            Height = 22
            Caption = '...'
            Flat = True
            OnClick = btn6Click
          end
          object lbl8: TLabel
            Left = 328
            Top = 62
            Width = 75
            Height = 13
            Caption = 'Data Agendada'
          end
          object lbl9: TLabel
            Left = 464
            Top = 62
            Width = 75
            Height = 13
            Caption = 'Hora Agendada'
          end
          object lbl11: TLabel
            Left = 142
            Top = 20
            Width = 70
            Height = 13
            Caption = 'Unidade Penal'
          end
          object lbl12: TLabel
            Left = 543
            Top = 62
            Width = 206
            Height = 13
            Caption = 'Funcion'#225'rio que ir'#225' atender o agendamento'
          end
          object Label4: TLabel
            Left = 25
            Top = 20
            Width = 48
            Height = 13
            Caption = 'Protocolo '
          end
          object Label8: TLabel
            Left = 25
            Top = 62
            Width = 118
            Height = 13
            Caption = 'Posto/Local de Trabalho'
          end
          object SpeedButton3: TSpeedButton
            Left = 283
            Top = 74
            Width = 23
            Height = 22
            Caption = '...'
            Flat = True
            OnClick = SpeedButton3Click
          end
          object Label10: TLabel
            Left = 328
            Top = 16
            Width = 70
            Height = 13
            Caption = 'N'#186' Documento'
            FocusControl = DBEditDoc
          end
          object Label17: TLabel
            Left = 493
            Top = 17
            Width = 76
            Height = 13
            Caption = 'Tipo Solicita'#231#227'o'
          end
          object Label26: TLabel
            Left = 603
            Top = 17
            Width = 78
            Height = 13
            Caption = 'Doc. Solicita'#231#227'o'
            FocusControl = DBEdit4
          end
          object Label6: TLabel
            Left = 684
            Top = 17
            Width = 78
            Height = 13
            Caption = 'Data Solicita'#231#227'o'
          end
          object DBLookupComboBoxAssunto: TDBLookupComboBox
            Left = 25
            Top = 115
            Width = 257
            Height = 21
            DataField = 'IDAGENDA_ASSUNTOS'
            DataSource = DsCadastro
            KeyField = 'IDAGENDA_ASSUNTOS'
            ListField = 'DESCRICAO'
            ListSource = DM.DsAssuntos
            TabOrder = 10
          end
          object DBLookupComboBoxTipoContato: TDBLookupComboBox
            Left = 329
            Top = 115
            Width = 184
            Height = 21
            DataField = 'IDAGENDA_TIPO_CONTATOS'
            DataSource = DsCadastro
            KeyField = 'IDAGENDA_TIPO_CONTATOS'
            ListField = 'DESCRICAO'
            ListSource = DM.DsTipoContato
            TabOrder = 11
          end
          object dblookupcomboboxvisitante: TDBLookupComboBox
            Left = 25
            Top = 236
            Width = 704
            Height = 21
            DataField = 'ID_VISITANTE'
            DataSource = DsCadastro
            KeyField = 'ID_VISITANTE'
            ListField = 'VISITANTE'
            ListSource = dsComboVisitante
            TabOrder = 16
            OnEnter = dblookupcomboboxvisitanteEnter
            OnExit = dblookupcomboboxvisitanteExit
          end
          object DBLookupComboBoxInterno: TDBLookupComboBox
            Left = 25
            Top = 156
            Width = 704
            Height = 21
            DataField = 'ID_INTERNO'
            DataSource = DsCadastro
            KeyField = 'ID_INTERNO'
            ListField = 'NOME_INTERNO'
            ListSource = DsInterno
            TabOrder = 13
            OnClick = DBLookupComboBoxInternoClick
          end
          object DBLookupComboBoxAdvogado: TDBLookupComboBox
            Left = 24
            Top = 196
            Width = 705
            Height = 21
            Hint = 'nome do advogado ao qual o interno esta associado'
            DataField = 'ID_ADVOGADO'
            DataSource = DsCadastro
            KeyField = 'ID_ADVOGADO'
            ListField = 'ADVOGADO'
            ListSource = dsAdvogado
            ParentShowHint = False
            ShowHint = True
            TabOrder = 15
            OnEnter = DBLookupComboBoxAdvogadoEnter
          end
          object DBLookupComboBoxSituacao: TDBLookupComboBox
            Left = 544
            Top = 115
            Width = 233
            Height = 21
            DataField = 'IDAGENDA_SITUACAO'
            DataSource = DsCadastro
            KeyField = 'IDAGENDA_SITUACAO'
            ListField = 'DESCRICAO'
            ListSource = DM.DsSituacao
            TabOrder = 12
          end
          object DBEditHORA: TDBEdit
            Left = 464
            Top = 77
            Width = 76
            Height = 21
            DataField = 'HORA_AGENDA'
            DataSource = DsCadastro
            TabOrder = 8
          end
          object DBLookupComboBoxID_UP: TDBLookupComboBox
            Left = 142
            Top = 36
            Width = 163
            Height = 21
            DataField = 'ID_UP'
            DataSource = DsCadastro
            Enabled = False
            KeyField = 'ID_UP'
            ListField = 'SIGLA'
            ListSource = DM.DsUP
            TabOrder = 1
          end
          object DBLookupComboBoxID_FUNCIONARIO: TDBLookupComboBox
            Left = 543
            Top = 78
            Width = 233
            Height = 21
            DataField = 'ID_FUNCIONARIO_AGENDA'
            DataSource = DsCadastro
            KeyField = 'ID_FUNCIONARIO'
            ListField = 'NOME_FUNCIONARIO'
            ListSource = DM.DsFuncionarioLista
            TabOrder = 9
          end
          object pgc1: TPageControl
            Left = 25
            Top = 264
            Width = 832
            Height = 185
            ActivePage = ts1
            TabOrder = 18
            TabWidth = 120
            object ts1: TTabSheet
              Caption = 'Descri'#231#227'o/Observa'#231#227'o'
              object dbmemoOBSERVACAO: TDBMemo
                Left = 4
                Top = 5
                Width = 805
                Height = 148
                DataField = 'OBSERVACAO'
                DataSource = DsCadastro
                TabOrder = 0
              end
            end
            object TabSheetSolicitante: TTabSheet
              Caption = 'Solicitante/Destino'
              ImageIndex = 2
              object Label7: TLabel
                Left = 8
                Top = 11
                Width = 36
                Height = 13
                Caption = 'Destino'
              end
              object SpeedButton2: TSpeedButton
                Left = 747
                Top = 25
                Width = 23
                Height = 20
                Hint = 'Cadastro Destino'
                Caption = '...'
                ParentShowHint = False
                ShowHint = True
                OnClick = SpeedButton2Click
              end
              object Label14: TLabel
                Left = 8
                Top = 55
                Width = 80
                Height = 13
                Caption = 'Cargo Solicitante'
              end
              object Label41: TLabel
                Left = 174
                Top = 55
                Width = 109
                Height = 13
                Caption = 'Vocativo do Solicitante'
              end
              object Label42: TLabel
                Left = 389
                Top = 55
                Width = 101
                Height = 13
                Caption = 'Forma de Tratamento'
              end
              object Label48: TLabel
                Left = 565
                Top = 55
                Width = 95
                Height = 13
                Caption = 'Nome do Solicitante'
              end
              object Label50: TLabel
                Left = 8
                Top = 95
                Width = 100
                Height = 13
                Caption = 'Endere'#231'o do Destino'
              end
              object Label51: TLabel
                Left = 425
                Top = 95
                Width = 33
                Height = 13
                Caption = 'Cidade'
              end
              object DBLookupComboBoxDestino: TDBLookupComboBox
                Left = 8
                Top = 27
                Width = 737
                Height = 21
                DataField = 'IDDESTINO'
                DataSource = DsCadastro
                KeyField = 'ID_DESTINO'
                ListField = 'DESTINO'
                ListSource = DsDestino
                TabOrder = 0
                OnClick = DBLookupComboBoxDestinoClick
              end
              object Button2: TButton
                Left = 773
                Top = 25
                Width = 45
                Height = 20
                Caption = 'Busca'
                TabOrder = 1
                OnClick = Button2Click
              end
              object DBComboBox6: TDBComboBox
                Left = 8
                Top = 71
                Width = 153
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
                TabOrder = 2
              end
              object DBComboBox7: TDBComboBox
                Left = 173
                Top = 71
                Width = 196
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
                TabOrder = 3
              end
              object DBComboBox8: TDBComboBox
                Left = 389
                Top = 71
                Width = 156
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
                TabOrder = 4
              end
              object DBEdit31: TDBEdit
                Tag = 1
                Left = 567
                Top = 71
                Width = 250
                Height = 21
                DataField = 'NOME_SOLICITANTE'
                DataSource = DsCadastro
                TabOrder = 5
              end
              object DBEdit33: TDBEdit
                Left = 8
                Top = 111
                Width = 409
                Height = 21
                DataField = 'ENDERECO_SOLICITANTE'
                DataSource = DsCadastro
                TabOrder = 6
              end
              object DBEditcidade: TDBEdit
                Left = 425
                Top = 111
                Width = 392
                Height = 21
                DataField = 'CIDADE_SOLICITANTE'
                DataSource = DsCadastro
                TabOrder = 7
              end
            end
            object ts2: TTabSheet
              Caption = 'Audi'#234'ncia'
              ImageIndex = 1
              object lbl10: TLabel
                Left = 16
                Top = 9
                Width = 23
                Height = 13
                Caption = 'Data'
              end
              object lbl15: TLabel
                Left = 208
                Top = 10
                Width = 22
                Height = 13
                Caption = 'Vara'
              end
              object lbl16: TLabel
                Left = 16
                Top = 58
                Width = 77
                Height = 13
                Caption = 'Local/Endere'#231'o'
              end
              object lbl17: TLabel
                Left = 112
                Top = 10
                Width = 23
                Height = 13
                Caption = 'Hora'
              end
              object DBEdit2: TDBEdit
                Left = 208
                Top = 26
                Width = 353
                Height = 21
                DataField = 'VARA_AUDIENCIA'
                DataSource = DsCadastro
                TabOrder = 2
              end
              object DBEdit3: TDBEdit
                Left = 16
                Top = 74
                Width = 545
                Height = 21
                DataField = 'LOCAL_AUDIENCIA'
                DataSource = DsCadastro
                TabOrder = 3
              end
              object DBEdithoraaudiencia: TDBEdit
                Left = 112
                Top = 26
                Width = 89
                Height = 21
                DataField = 'HORA_AUDIENCIA'
                DataSource = DsCadastro
                TabOrder = 1
              end
              object DBEditdataaudiencia: TDBEdit
                Left = 16
                Top = 26
                Width = 89
                Height = 21
                DataField = 'DATA_AUDIENCIA'
                DataSource = DsCadastro
                TabOrder = 0
              end
            end
            object TabSheet2: TTabSheet
              Caption = 'Motivo da Sa'#237'da'
              ImageIndex = 3
              object DBMemo1: TDBMemo
                Left = 0
                Top = 0
                Width = 824
                Height = 157
                Align = alClient
                DataField = 'MOTIVO_SAIDA'
                DataSource = DsCadastro
                TabOrder = 0
              end
            end
          end
          object DBEdit1: TDBEdit
            Left = 25
            Top = 36
            Width = 105
            Height = 21
            DataField = 'IDAGENDA_ATENDIMENTO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object Button1: TButton
            Left = 732
            Top = 156
            Width = 45
            Height = 20
            Caption = 'Busca'
            TabOrder = 14
            OnClick = Button1Click
          end
          object DBLookupComboBoxPostoTrabalho: TDBLookupComboBox
            Left = 25
            Top = 77
            Width = 256
            Height = 21
            DataField = 'IDPOSTO_TRABALHO'
            DataSource = DsCadastro
            KeyField = 'IDPOSTO_TRABALHO'
            ListField = 'POSTO_TRABALHO'
            ListSource = DM.DsPostoTrabalho
            TabOrder = 6
          end
          object DBEditDoc: TDBEdit
            Left = 328
            Top = 32
            Width = 161
            Height = 21
            DataField = 'NUMERO_OFICIO'
            DataSource = DsCadastro
            TabOrder = 2
          end
          object DBComboBoxTipoDoc: TDBComboBox
            Left = 494
            Top = 31
            Width = 105
            Height = 21
            DataField = 'TIPO_DOCUMENTO_SOLICITACAO'
            DataSource = DsCadastro
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
            TabOrder = 3
          end
          object DBEdit4: TDBEdit
            Left = 603
            Top = 31
            Width = 79
            Height = 21
            DataField = 'NUMERO_DOC_SOLICITACAO'
            DataSource = DsCadastro
            TabOrder = 4
          end
          object adpDBDateTimePicker1: TadpDBDateTimePicker
            Left = 686
            Top = 31
            Width = 88
            Height = 21
            Date = 41075.000000000000000000
            Time = 41075.000000000000000000
            TabOrder = 5
            DataField = 'DATA_SOLICITACAO'
            DataSource = DsCadastro
            ReadOnly = False
          end
          object Button7: TButton
            Left = 733
            Top = 261
            Width = 45
            Height = 20
            Caption = 'Busca'
            TabOrder = 17
            Visible = False
            OnClick = Button7Click
          end
          object adpDBDateTimePickerdataagenda: TadpDBDateTimePicker
            Left = 329
            Top = 77
            Width = 131
            Height = 21
            Date = 41101.621299317130000000
            Time = 41101.621299317130000000
            TabOrder = 7
            DataField = 'DATA_AGENDA'
            DataSource = DsCadastro
            ReadOnly = False
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelLocalizaConsulta: TPanel
          Width = 901
          Height = 113
          object lbl13: TLabel [0]
            Left = 506
            Top = 70
            Width = 42
            Height = 13
            Caption = 'Situa'#231#227'o'
          end
          object Label9: TLabel [1]
            Left = 4
            Top = 70
            Width = 72
            Height = 13
            Caption = 'Prontu'#225'rio/RGI'
          end
          object Label5: TLabel [2]
            Left = 397
            Top = 70
            Width = 75
            Height = 13
            Caption = 'N'#186' do Protocolo'
          end
          inherited Label1: TLabel
            Left = 109
            Top = 70
            Width = 168
            Caption = 'Localizar: (Interno) (M'#237'nimo 3 letras)'
          end
          object btn7: TSpeedButton [4]
            Left = 773
            Top = 88
            Width = 23
            Height = 22
            Caption = '...'
            Flat = True
            Visible = False
            OnClick = btn7Click
          end
          object Label13: TLabel [5]
            Left = 3
            Top = 56
            Width = 101
            Height = 13
            Caption = 'Filtrar a Consulta:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object GroupBox1: TGroupBox [6]
            Left = 1
            Top = 1
            Width = 899
            Height = 55
            Align = alTop
            Caption = 'Consulta'
            TabOrder = 0
            object Label11: TLabel
              Left = 8
              Top = 12
              Width = 38
              Height = 13
              Caption = 'Per'#237'odo'
            end
            object Label3: TLabel
              Left = 141
              Top = 36
              Width = 15
              Height = 13
              Caption = 'at'#233
            end
            object Label2: TLabel
              Left = 297
              Top = 12
              Width = 118
              Height = 13
              Caption = 'Posto/Local de Trabalho'
            end
            object Label12: TLabel
              Left = 656
              Top = 8
              Width = 214
              Height = 39
              Caption = 
                'Sempre que escolher um novo per'#237'odo de consulta ou um novo posto' +
                '/local de trabalho clique em LOCALIZAR para atualizar a lista.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object DateTimePickerInicial: TDateTimePicker
              Left = 9
              Top = 27
              Width = 128
              Height = 22
              Date = 40934.485215416670000000
              Time = 40934.485215416670000000
              TabOrder = 0
            end
            object DateTimePickerFinal: TDateTimePicker
              Left = 161
              Top = 27
              Width = 128
              Height = 22
              Date = 40934.485215416670000000
              Time = 40934.485215416670000000
              TabOrder = 1
            end
            object CheckBoxTodosPostos: TCheckBox
              Left = 420
              Top = 10
              Width = 61
              Height = 17
              Hint = 'Mostra todos os postos de trabalho'
              Caption = 'Todos'
              TabOrder = 2
              OnClick = CheckBoxTodosPostosClick
            end
            object DBLookupComboBoxPostoTrabalhoConsulta: TDBLookupComboBox
              Left = 297
              Top = 27
              Width = 208
              Height = 21
              KeyField = 'IDPOSTO_TRABALHO'
              ListField = 'POSTO_TRABALHO'
              ListSource = DM.DsPostoTrabalho
              TabOrder = 3
              OnCloseUp = DBLookupComboBoxPostoTrabalhoConsultaCloseUp
            end
            object btn4: TBitBtn
              Left = 525
              Top = 17
              Width = 100
              Height = 32
              Caption = 'Localizar'
              TabOrder = 4
              OnClick = btn4Click
              Glyph.Data = {
                F6060000424DF606000000000000360000002800000018000000180000000100
                180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FF969190736E6EAF7D7EFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FF9792916C6C70174B82326089AF7B7BFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8386863A79B11A81FF0D62
                BC3B5F7FB07D7DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2698FF
                3DB0FF349DFF1C7EF80C62BA395E7FB07B7DFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FF2996FF42ADFE349AFF1C7EF80C60B8405F7FB17D7BFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2A96FE41AFFE349AFF1C7EF80C
                5FB83E5F7EB07B7BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2A97
                FE41AFFE349AFF1A7BF80B5FB744627FA97A7EFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FF2C98FE41ADFE349CFF197BF60C5EB62B587FFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2D99FE41ADFE339CFF287FE7
                3D607BFF00FFFF00FFFF00FF996964996964996964996964996964FF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2D
                9AFE4BB5FF8CBDEDAC9F966C565593665F996964DDCCABFFFFD9FFFFD9FFFFD7
                E9D5B6996964996964FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFD1ADA5B68775CCAB8CFFFFD3FFFFD3FF
                FFD0FFFFCFFFFFD0FFFFD3FFFFE2D4BAA4996964FF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF996B65D4AF8FFFEF
                B0FBEDB8FFFFCFFFFFCEFFFFCFFFFFD7FFFFDCFFFFEAFFFFFFD3BBB8996964FF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                996964FFEAA6F2C78FFAEBB6FFFFD0FFFFCFFFFFD3FFFFE5FFFFF2FFFFFAFFFF
                FCFFFFFE996964FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FF996964E6C9A0F6CA8BEEBA7FFBE7B4FFFFD0FFFFCFFFFFD7FFFFEB
                FFFFFEFFFFFCFFFFF2FFFFE5D8C6A5996964FF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FF996964FFEFADF0BC7DEBB075F7DDA7FEFCCBFF
                FFD1FFFFD5FFFFE6FFFFF6FFFFF6FFFFE6FFFFD7FFFFDA996964FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF996964FFF0AFEFBA7BE9A5
                6AF2C98FFCEFBCFFFFD1FFFFD3FFFFD9FFFFE1FFFFE2FFFFD9FFFFD3FFFFDA99
                6964FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF996964
                FFF2B2F3C484E99E63EDB57AF4D79FFCF4C2FFFFD1FFFFD3FFFFD3FFFFD3FFFF
                D0FFFFCFFFFFD8996964FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FF996964E6C9A0FCDE9EEFBA7EEEB779EFC284F6DAA1FBF2BFFFFFCF
                FFFFD1FFFFD0FFFFD0FFFFD1D9C6A5996964FF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FF996964FFFEC2FBEBCAF6D7ACF0C186EF
                BF82F3CC95FAE3ADFCF0BCFBF4C1FEF6C4FFFFD4996964FF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF996964D7BB9EFFFF
                FFFEF7EEF6D8ACEDB474E9A76BEDB478F0C48AF6D49CFFF4B6D3B799996964FF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FF996964CEB6AFFFFFFFFFF4CBF6CF90F0BC7DF2BF81F7CE90FFEDA9D4B1
                93996964FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FF996964996964E1C9A0FFF7B5FFF2AFFFF2B1
                E9CCA4996964996964FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF99696499
                6964996964996964996964FF00FFFF00FFFF00FFFF00FFFF00FF}
            end
          end
          inherited EditLocalizar: TEdit
            Left = 109
            Top = 88
            Width = 281
            TabOrder = 2
            OnEnter = EditLocalizarEnter
          end
          object EditRGI: TEdit
            Left = 4
            Top = 88
            Width = 101
            Height = 21
            BorderStyle = bsNone
            Color = clBlack
            Font.Charset = ANSI_CHARSET
            Font.Color = clLime
            Font.Height = -19
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnChange = EditRGIChange
            OnEnter = EditRGIEnter
          end
          object Editprotocolo: TEdit
            Left = 397
            Top = 88
            Width = 101
            Height = 21
            BorderStyle = bsNone
            Color = clBlack
            Font.Charset = ANSI_CHARSET
            Font.Color = clLime
            Font.Height = -19
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnChange = EditprotocoloChange
            OnEnter = EditprotocoloEnter
          end
          object DBLookupComboBoxIDAGENDA_SITUACAO: TDBLookupComboBox
            Left = 507
            Top = 88
            Width = 257
            Height = 21
            KeyField = 'IDAGENDA_SITUACAO'
            ListField = 'DESCRICAO'
            ListFieldIndex = 3
            ListSource = DM.DsSituacao
            TabOrder = 5
            OnClick = DBLookupComboBoxIDAGENDA_SITUACAOClick
          end
          object CheckBoxTodosSituacao: TCheckBox
            Left = 555
            Top = 68
            Width = 57
            Height = 17
            Caption = 'Todas'
            TabOrder = 4
            OnClick = CheckBoxTodosSituacaoClick
          end
        end
        inherited PanelConsulta: TPanel
          Top = 113
          Width = 901
          Height = 339
          inherited DBGridConsulta: TDBGrid
            Width = 899
            Height = 307
            DataSource = DsConsulta
            OnColEnter = DBGridConsultaColEnter
            Columns = <
              item
                Expanded = False
                FieldName = 'SELECAO'
                Title.Alignment = taCenter
                Title.Caption = 'X'
                Width = 20
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_AGENDA'
                Title.Caption = 'Data'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'HORA_AGENDA'
                Title.Caption = 'Hora'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RGI'
                Title.Caption = 'Prontu'#225'rio'
                Width = 56
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_INTERNO'
                Title.Caption = 'Interno'
                Width = 248
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SETOR'
                Title.Caption = 'Setor'
                Width = 116
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ASSUNTOS'
                Title.Caption = 'Assuntos'
                Width = 130
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SITUACAO'
                Title.Caption = 'Situa'#231#227'o'
                Width = 84
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ADVOGADO'
                Title.Caption = 'Advogado'
                Width = 220
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VISITANTE'
                Title.Caption = 'Visitante'
                Width = 220
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OBSERVACAO'
                Title.Caption = 'Observa'#231#227'o'
                Width = 400
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_CONTATOS'
                Title.Caption = 'Tipo'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_FUNCIONARIO'
                Title.Caption = 'Funcion'#225'rio do atendimento'
                Width = 220
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IDAGENDA_ATENDIMENTO'
                Title.Caption = 'Protocolo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMERO_OFICIO'
                Title.Caption = 'Num.Of'#237'cio'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_DOCUMENTO_SOLICITACAO'
                Title.Caption = 'Tipo Solicitante'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMERO_DOC_SOLICITACAO'
                Title.Caption = 'Num.Doc Solicitante'
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
              end>
          end
          object PanelRodape: TPanel
            Left = 1
            Top = 308
            Width = 899
            Height = 30
            Align = alBottom
            TabOrder = 1
            object Button3: TButton
              Left = 24
              Top = 3
              Width = 137
              Height = 25
              Caption = 'Marcar Todos'
              TabOrder = 0
              OnClick = Button3Click
            end
            object Button4: TButton
              Left = 184
              Top = 3
              Width = 137
              Height = 25
              Caption = 'Desmarcar Todos'
              TabOrder = 1
              OnClick = Button4Click
            end
            object Button5: TButton
              Left = 344
              Top = 3
              Width = 137
              Height = 25
              Caption = 'Imprimir Sele'#231#227'o'
              TabOrder = 2
              OnClick = Button5Click
            end
            object Button6: TButton
              Left = 752
              Top = 3
              Width = 137
              Height = 25
              Caption = 'Renumerar Num.Of'#237'cio'
              TabOrder = 3
              Visible = False
              OnClick = Button6Click
            end
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 909
    inherited Image2: TImage
      Width = 909
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 551
    Width = 909
  end
  inherited SqlCadastro: TSQLQuery
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
      'WHERE IDAGENDA_ATENDIMENTO =:IDAGENDA_ATENDIMENTO'
      '')
    Left = 544
    Top = 0
  end
  inherited DspCadastro: TDataSetProvider
    Left = 572
    Top = 0
  end
  inherited CdsCadastro: TClientDataSet
    IndexFieldNames = 'IDAGENDA_ATENDIMENTO'
    MasterFields = 'IDAGENDA_ATENDIMENTO'
    MasterSource = DsConsulta
    PacketRecords = 0
    Left = 600
    Top = 0
  end
  inherited DsCadastro: TDataSource
    Left = 628
    Top = 0
  end
  object SqlConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'EST'#193' NO FONTE')
    SQLConnection = DM.SQLConnect
    Left = 265
    Top = 65535
  end
  object DspConsulta: TDataSetProvider
    DataSet = SqlConsulta
    Left = 293
    Top = 65535
  end
  object CdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspConsulta'
    OnFilterRecord = CdsConsultaFilterRecord
    Left = 321
    Top = 65535
  end
  object DsConsulta: TDataSource
    DataSet = CdsConsulta
    OnDataChange = DsConsultaDataChange
    Left = 349
    Top = 65535
  end
  object SqlInterno: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_UP'
        ParamType = ptInput
        Value = -1
      end>
    SQL.Strings = (
      
        'SELECT id_interno, nome_interno || '#39' || MAE: '#39' || coalesce(MAE,'#39 +
        #39') as "nome_interno"'
      'FROM INTERNO'
      'WHERE ID_UP = :ID_UP'
      'and coalesce(nome_interno,'#39#39')<>'#39#39
      'AND ST = '#39'A'#39
      'ORDER BY NOME_INTERNO')
    SQLConnection = DM.SQLConnect
    Left = 792
    Top = 248
  end
  object DspInterno: TDataSetProvider
    DataSet = SqlInterno
    Left = 820
    Top = 248
  end
  object CdsInterno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspInterno'
    Left = 848
    Top = 248
  end
  object DsInterno: TDataSource
    DataSet = CdsInterno
    Left = 876
    Top = 248
  end
  object SqlMenores: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = DM.SQLConnect
    Left = 784
    Top = 376
  end
  object DspMenores: TDataSetProvider
    DataSet = SqlMenores
    Left = 812
    Top = 376
  end
  object CdsMenores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspMenores'
    Left = 840
    Top = 376
  end
  object DsMenores: TDataSource
    DataSet = CdsMenores
    Left = 868
    Top = 376
  end
  object MainMenu1: TMainMenu
    Left = 203
    object Relatorios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object Especifico1: TMenuItem
        Caption = 'Espec'#237'ficos'
        OnClick = Especifico1Click
      end
    end
  end
  object DspDestino: TDataSetProvider
    DataSet = SqlDestino
    Left = 732
  end
  object CdsDestino: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPDestino'
    Left = 760
  end
  object DsDestino: TDataSource
    DataSet = CdsDestino
    Left = 788
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
  object SqlVisitante: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_visitante'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'select '
      'v.id_visitante, v.visitante'
      'from visitante v'
      'where id_visitante=:id_visitante')
    SQLConnection = DM.SQLConnect
    Left = 696
    Top = 48
  end
  object DspVisitante: TDataSetProvider
    DataSet = SqlVisitante
    Left = 724
    Top = 48
  end
  object CdsVisitante: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspVisitante'
    Left = 752
    Top = 48
  end
  object DsVisitante: TDataSource
    DataSet = CdsVisitante
    Left = 780
    Top = 48
  end
  object SQLAdvogado: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      
        'select ai.id_advogado, a.advogado || '#39' || OAB: '#39' || coalesce(a.o' +
        'ab,'#39#39') as advogado from advogados_internos ai'
      'inner join advogado a on (a.id_advogado = ai.id_advogado) '
      'where ai.id_interno = :id_interno and ai.status = '#39'A'#39
      'order by a.advogado')
    SQLConnection = DM.SQLConnect
    Left = 788
    Top = 287
  end
  object dspAdvogado: TDataSetProvider
    DataSet = SQLAdvogado
    Left = 816
    Top = 287
  end
  object cdsAdvogado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAdvogado'
    Left = 844
    Top = 287
  end
  object dsAdvogado: TDataSource
    DataSet = cdsAdvogado
    Left = 872
    Top = 287
  end
  object SQLComboVisitante: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_interno'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'select vi.id_visitante, v.visitante from visitante_interno vi'
      'inner join visitante v on (v.id_visitante = vi.id_visitante)'
      'where v.status = '#39'A'#39' and vi.id_interno = :id_interno'
      'order by v.visitante')
    SQLConnection = DM.SQLConnect
    Left = 792
    Top = 327
  end
  object dspComboVisitante: TDataSetProvider
    DataSet = SQLComboVisitante
    Left = 820
    Top = 327
  end
  object cdsComboVisitante: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspComboVisitante'
    Left = 848
    Top = 327
  end
  object dsComboVisitante: TDataSource
    DataSet = cdsComboVisitante
    Left = 876
    Top = 327
  end
end
