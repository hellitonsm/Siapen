inherited FrmCadastroPerfilUsuario: TFrmCadastroPerfilUsuario
  Left = 322
  Top = 142
  Caption = 'Cadastro de Perfil de Usu'#225'rio'
  ClientHeight = 650
  ClientWidth = 946
  ExplicitWidth = 962
  ExplicitHeight = 689
  TextHeight = 13
  inherited PanelBotoes: TPanel
    Height = 599
    ExplicitHeight = 599
    inherited ToolBarModeloCadastro: TToolBar
      Height = 581
      ExplicitHeight = 581
    end
    inherited DBNavigator1: TDBNavigator
      Top = 581
      Enabled = False
      Hints.Strings = ()
      ExplicitTop = 581
    end
  end
  inherited PanelModeloCadastro: TPanel
    Width = 831
    Height = 599
    ExplicitWidth = 831
    ExplicitHeight = 599
    inherited Image2: TImage
      Width = 940
      ExplicitWidth = 940
    end
    inherited PageControlModeloCadastro: TPageControl
      Width = 831
      Height = 599
      ActivePage = TabSheetCadastro
      ExplicitWidth = 831
      ExplicitHeight = 599
      inherited TabSheetCadastro: TTabSheet
        ExplicitWidth = 823
        ExplicitHeight = 571
        inherited PanelCadastro: TPanel
          Width = 823
          Height = 571
          ExplicitWidth = 823
          ExplicitHeight = 571
          object PageControlFuncionario: TPageControl
            Left = 1
            Top = 1
            Width = 821
            Height = 569
            ActivePage = TabSheetPermissao
            Align = alClient
            TabOrder = 0
            object TabSheetPermissao: TTabSheet
              Caption = 'Permiss'#245'es do Perfil'
              ImageIndex = 2
              object Label8: TLabel
                Left = 66
                Top = 15
                Width = 37
                Height = 13
                Caption = 'PERFIL'
              end
              object Label2: TLabel
                Left = 10
                Top = 16
                Width = 11
                Height = 13
                Caption = 'ID'
              end
              object PageControlpermissao: TPageControl
                Left = 8
                Top = 112
                Width = 785
                Height = 409
                ActivePage = TabGeral
                TabOrder = 8
                object TabGeral: TTabSheet
                  Caption = 'Geral'
                  object GroupBox1: TGroupBox
                    Left = 105
                    Top = 15
                    Width = 90
                    Height = 170
                    Caption = 'Confere'
                    TabOrder = 1
                    object CHEditarConfere: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = CHEditarConfereClick
                    end
                    object CHdeletarconfere: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = CHdeletarconfereClick
                    end
                    object CHConsultarConfere: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = CHConsultarConfereClick
                    end
                    object CHInserirConfere: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = CHInserirConfereClick
                    end
                    object CHTodasConfere: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = CHTodasConfereClick
                    end
                    object chrelatorioconfere: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatorioconfereClick
                    end
                  end
                  object GroupBox2: TGroupBox
                    Left = 203
                    Top = 15
                    Width = 90
                    Height = 170
                    Caption = 'Visitante'
                    TabOrder = 2
                    object chEditarVisitante: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = chEditarVisitanteClick
                    end
                    object chdeletarVisitante: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarVisitanteClick
                    end
                    object chConsultarVisitante: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chConsultarVisitanteClick
                    end
                    object chInserirVisitante: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chInserirVisitanteClick
                    end
                    object chTodasVisitante: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chTodasVisitanteClick
                    end
                    object chrelatoriovisitante: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriovisitanteClick
                    end
                  end
                  object GroupBox20: TGroupBox
                    Left = 594
                    Top = 15
                    Width = 90
                    Height = 194
                    Caption = 'Ocorr'#234'ncias'
                    TabOrder = 6
                    object chConsultaOcorrencia: TCheckBox
                      Left = 8
                      Top = 22
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chConsultaOcorrenciaClick
                    end
                    object chEditaOcorrencia: TCheckBox
                      Left = 8
                      Top = 47
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = chEditaOcorrenciaClick
                    end
                    object chDeletaOcorrencia: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chDeletaOcorrenciaClick
                    end
                    object chInsereOcorrencia: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chInsereOcorrenciaClick
                    end
                    object chRelatorioOcorrencia: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chRelatorioOcorrenciaClick
                    end
                    object chTodasOcorrencia: TCheckBox
                      Left = 8
                      Top = 167
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 6
                      OnClick = chTodasOcorrenciaClick
                    end
                    object chDespachoOcorrencia: TCheckBox
                      Left = 8
                      Top = 143
                      Width = 73
                      Height = 17
                      Caption = 'Despacho'
                      TabOrder = 5
                      OnClick = chDespachoOcorrenciaClick
                    end
                  end
                  object GbAdvogado: TGroupBox
                    Left = 7
                    Top = 16
                    Width = 90
                    Height = 170
                    Caption = 'Advogado'
                    TabOrder = 0
                    object ChConsultarAdvogado: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarAdvogadoClick
                    end
                    object ChEditarAdvogado: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarAdvogadoClick
                    end
                    object ChDeletarAdvogado: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarAdvogadoClick
                    end
                    object ChInserirAdvogado: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirAdvogadoClick
                    end
                    object ChRelatorioAdvogado: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioAdvogadoClick
                    end
                    object ChTodasAdvogado: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasAdvogadoClick
                    end
                  end
                  object GbVisitanteTrafico: TGroupBox
                    Left = 301
                    Top = 16
                    Width = 90
                    Height = 170
                    Caption = 'Visitante Tr'#225'fico'
                    TabOrder = 3
                    object ChConsultarVisitanteTrafico: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarVisitanteTraficoClick
                    end
                    object ChEditarVisitanteTrafico: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarVisitanteTraficoClick
                    end
                    object ChDeletarVisitanteTrafico: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarVisitanteTraficoClick
                    end
                    object ChInserirVisitanteTrafico: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirVisitanteTraficoClick
                    end
                    object ChRelatorioVisitanteTrafico: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioVisitanteTraficoClick
                    end
                    object ChTodasVisitanteTrafico: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasVisitanteTraficoClick
                    end
                  end
                  object GbFaccao: TGroupBox
                    Left = 399
                    Top = 16
                    Width = 90
                    Height = 170
                    Caption = 'Fac'#231#227'o'
                    TabOrder = 4
                    object ChConsultarFaccao: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarFaccaoClick
                    end
                    object ChEditarFaccao: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarFaccaoClick
                    end
                    object ChDeletarFaccao: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarFaccaoClick
                    end
                    object ChInserirFaccao: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirFaccaoClick
                    end
                    object ChRelatorioFaccao: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioFaccaoClick
                    end
                    object ChTodasFaccao: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasFaccaoClick
                    end
                  end
                  object GbCTC: TGroupBox
                    Left = 496
                    Top = 16
                    Width = 90
                    Height = 170
                    Caption = 'CTC'
                    TabOrder = 5
                    object ChConsultarCTC: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarCTCClick
                    end
                    object ChEditarCTC: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarCTCClick
                    end
                    object ChDeletarCTC: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarCTCClick
                    end
                    object ChInserirCTC: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirCTCClick
                    end
                    object ChRelatorioCTC: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioCTCClick
                    end
                    object ChTodasCTC: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasCTCClick
                    end
                  end
                  object GbAgendaAtendimento: TGroupBox
                    Left = 7
                    Top = 200
                    Width = 129
                    Height = 170
                    Caption = 'Agenda de Atendimento'
                    TabOrder = 7
                    object ChConsultarAgendaAtendimento: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarAgendaAtendimentoClick
                    end
                    object ChEditarAgendaAtendimento: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarAgendaAtendimentoClick
                    end
                    object ChDeletarAgendaAtendimento: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarAgendaAtendimentoClick
                    end
                    object ChInserirAgendaAtendimento: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirAgendaAtendimentoClick
                    end
                    object ChRelatorioAgendaAtendimento: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioAgendaAtendimentoClick
                    end
                    object ChTodasAgendaAtendimento: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasAgendaAtendimentoClick
                    end
                  end
                  object GbCorrespondencia: TGroupBox
                    Left = 144
                    Top = 200
                    Width = 92
                    Height = 170
                    Caption = 'Correspond'#234'ncia'
                    TabOrder = 8
                    object ChConsultarCorrespondencia: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarCorrespondenciaClick
                    end
                    object ChEditarCorrespondencia: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarCorrespondenciaClick
                    end
                    object ChDeletarCorrespondencia: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarCorrespondenciaClick
                    end
                    object ChInserirCorrespondencia: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirCorrespondenciaClick
                    end
                    object ChRelatorioCorrespondencia: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioCorrespondenciaClick
                    end
                    object ChTodasCorrespondencia: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasCorrespondenciaClick
                    end
                  end
                  object GbLivroRevista: TGroupBox
                    Left = 244
                    Top = 200
                    Width = 90
                    Height = 170
                    Caption = 'Livro e Revista'
                    TabOrder = 9
                    object ChConsultarLivroRevista: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarLivroRevistaClick
                    end
                    object ChEditarLivroRevista: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarLivroRevistaClick
                    end
                    object ChDeletarLivroRevista: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarLivroRevistaClick
                    end
                    object ChInserirLivroRevista: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirLivroRevistaClick
                    end
                    object ChRelatorioLivroRevista: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioLivroRevistaClick
                    end
                    object ChTodasLivroRevista: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasLivroRevistaClick
                    end
                  end
                end
                object TabCadastros: TTabSheet
                  Caption = 'Cadastros'
                  ImageIndex = 5
                  object Label3: TLabel
                    Left = 8
                    Top = 8
                    Width = 377
                    Height = 13
                    Caption = '______________________Localiza'#231#227'o______________________'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold, fsUnderline]
                    ParentFont = False
                  end
                  object GroupBox5: TGroupBox
                    Left = 387
                    Top = 23
                    Width = 96
                    Height = 170
                    Caption = 'Cadastro Internos'
                    TabOrder = 4
                    object chconsultarcadastro: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarcadastroClick
                    end
                    object cheditarcadastro: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarcadastroClick
                    end
                    object chdeletarcadastro: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarcadastroClick
                    end
                    object chinserircadastro: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserircadastroClick
                    end
                    object chtodascadastro: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodascadastroClick
                    end
                    object chrelatoriocadastro: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriocadastroClick
                    end
                  end
                  object GbPavilhao: TGroupBox
                    Left = 7
                    Top = 23
                    Width = 90
                    Height = 170
                    Caption = 'Pavilh'#227'o'
                    TabOrder = 0
                    object ChConsultarPavilhao: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarPavilhaoClick
                    end
                    object CheditarPavilhao: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = CheditarPavilhaoClick
                    end
                    object ChDeletarPavilhao: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarPavilhaoClick
                    end
                    object ChInserirPavilhao: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirPavilhaoClick
                    end
                    object ChRelatorioPavilhao: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioPavilhaoClick
                    end
                    object ChTodasPavilhao: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasPavilhaoClick
                    end
                  end
                  object GbGaleria: TGroupBox
                    Left = 102
                    Top = 24
                    Width = 90
                    Height = 170
                    Caption = 'Galeria'
                    TabOrder = 1
                    object ChConsultarGaleria: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarGaleriaClick
                    end
                    object ChEditarGaleria: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarGaleriaClick
                    end
                    object ChDeletarGaleria: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarGaleriaClick
                    end
                    object ChInserirGaleria: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirGaleriaClick
                    end
                    object ChRelatorioGaleria: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rio'
                      TabOrder = 4
                      OnClick = ChRelatorioGaleriaClick
                    end
                    object ChTodasGaleria: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasGaleriaClick
                    end
                  end
                  object GbSolario: TGroupBox
                    Left = 197
                    Top = 24
                    Width = 90
                    Height = 170
                    Caption = 'Sol'#225'rio'
                    TabOrder = 2
                    object ChConsultarSolario: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarSolarioClick
                    end
                    object ChEditarSolario: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarSolarioClick
                    end
                    object ChDeletarSolario: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarSolarioClick
                    end
                    object ChInserirSolario: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirSolarioClick
                    end
                    object ChRelatorioSolario: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioSolarioClick
                    end
                    object ChTodasSolario: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasSolarioClick
                    end
                  end
                  object GbCela: TGroupBox
                    Left = 292
                    Top = 24
                    Width = 90
                    Height = 170
                    Caption = 'Cela'
                    TabOrder = 3
                    object ChConsultarCela: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarCelaClick
                    end
                    object ChEditarCela: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarCelaClick
                    end
                    object ChDeletarCela: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarCelaClick
                    end
                    object ChInserirCela: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirCelaClick
                    end
                    object ChRelatorioCela: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioCelaClick
                    end
                    object ChTodasCela: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasCelaClick
                    end
                  end
                  object GbCondicaoInterno: TGroupBox
                    Left = 488
                    Top = 24
                    Width = 93
                    Height = 170
                    Caption = 'Condi'#231#227'o Interno'
                    TabOrder = 5
                    object ChConsultarCondicaoInterno: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarCondicaoInternoClick
                    end
                    object ChEditarCondicaoInterno: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarCondicaoInternoClick
                    end
                    object ChDeletarCondicaoInterno: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarCondicaoInternoClick
                    end
                    object ChInserirCondicaoInterno: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirCondicaoInternoClick
                    end
                    object ChRelatorioCondicaoInterno: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioCondicaoInternoClick
                    end
                    object ChTodasCondicaoInterno: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasCondicaoInternoClick
                    end
                  end
                  object GbCidade: TGroupBox
                    Left = 586
                    Top = 24
                    Width = 90
                    Height = 170
                    Caption = 'Cidade'
                    TabOrder = 6
                    object ChConsultarCidade: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarCidadeClick
                    end
                    object ChEditarCidade: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarCidadeClick
                    end
                    object ChDeletarCidade: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarCidadeClick
                    end
                    object ChInserirCidade: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirCidadeClick
                    end
                    object ChRelatorioCidade: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioCidadeClick
                    end
                    object ChTodasCidade: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasCidadeClick
                    end
                  end
                  object GbRaca: TGroupBox
                    Left = 681
                    Top = 24
                    Width = 90
                    Height = 170
                    Caption = 'Ra'#231'a'
                    TabOrder = 7
                    object ChConsultarRaca: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarRacaClick
                    end
                    object ChEditarRaca: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarRacaClick
                    end
                    object ChDeletarRaca: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarRacaClick
                    end
                    object ChInserirRaca: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirRacaClick
                    end
                    object ChRelatorioRaca: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioRacaClick
                    end
                    object ChTodasRaca: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasRacaClick
                    end
                  end
                  object GbEscolaridade: TGroupBox
                    Left = 7
                    Top = 208
                    Width = 90
                    Height = 170
                    Caption = 'Escolaridade'
                    TabOrder = 8
                    object ChConsultarEscolaridade: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarEscolaridadeClick
                    end
                    object ChEditarEscolaridade: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarEscolaridadeClick
                    end
                    object ChDeletarEscolaridade: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarEscolaridadeClick
                    end
                    object ChInserirEscolaridade: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirEscolaridadeClick
                    end
                    object ChRelatorioEscolaridade: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioEscolaridadeClick
                    end
                    object ChTodasEscolaridade: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasEscolaridadeClick
                    end
                  end
                  object GbNacionalidade: TGroupBox
                    Left = 102
                    Top = 208
                    Width = 90
                    Height = 170
                    Caption = 'Nacionalidade'
                    TabOrder = 9
                    object ChConsultarNacionalidade: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarNacionalidadeClick
                    end
                    object ChEditarNacionalidade: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarNacionalidadeClick
                    end
                    object ChDeletarNacionalidade: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarNacionalidadeClick
                    end
                    object ChInserirNacionalidade: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirNacionalidadeClick
                    end
                    object ChRelatorioNacionalidade: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioNacionalidadeClick
                    end
                    object ChTodasNacionalidade: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasNacionalidadeClick
                    end
                  end
                  object GbProcedencia: TGroupBox
                    Left = 196
                    Top = 208
                    Width = 90
                    Height = 170
                    Caption = 'Proced'#234'ncia'
                    TabOrder = 10
                    object ChConsultarProcedencia: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarProcedenciaClick
                    end
                    object ChEditarProcedencia: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarProcedenciaClick
                    end
                    object ChDeletarProcedencia: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarProcedenciaClick
                    end
                    object ChInserirProcedencia: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirProcedenciaClick
                    end
                    object ChRelatorioProcedencia: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioProcedenciaClick
                    end
                    object ChTodasProcedencia: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasProcedenciaClick
                    end
                  end
                  object GbDestino: TGroupBox
                    Left = 290
                    Top = 208
                    Width = 90
                    Height = 170
                    Caption = 'Destino'
                    TabOrder = 11
                    object ChConsultarDestino: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarDestinoClick
                    end
                    object ChEditarDestino: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarDestinoClick
                    end
                    object ChDeletarDestino: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarDestinoClick
                    end
                    object ChInserirDestino: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirDestinoClick
                    end
                    object ChRelatorioDestino: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioDestinoClick
                    end
                    object ChTodasDestino: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasDestinoClick
                    end
                  end
                  object GbFornecedor: TGroupBox
                    Left = 384
                    Top = 208
                    Width = 90
                    Height = 170
                    Caption = 'Fornecedor'
                    TabOrder = 12
                    object ChConsultarFornecedor: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarFornecedorClick
                    end
                    object ChEditarFornecedor: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarFornecedorClick
                    end
                    object ChDeletarFornecedor: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarFornecedorClick
                    end
                    object ChInserirFornecedor: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirFornecedorClick
                    end
                    object ChRelatorioFornecedor: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioFornecedorClick
                    end
                    object ChTodasFornecedor: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasFornecedorClick
                    end
                  end
                  object GbProfissao: TGroupBox
                    Left = 478
                    Top = 208
                    Width = 90
                    Height = 170
                    Caption = 'Profiss'#227'o'
                    TabOrder = 13
                    object ChConsultarProfissao: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarProfissaoClick
                    end
                    object ChEditarProfissao: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarProfissaoClick
                    end
                    object ChDeletarProfissao: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarProfissaoClick
                    end
                    object ChInserirProfissao: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirProfissaoClick
                    end
                    object ChRelatorioProfissao: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioProfissaoClick
                    end
                    object ChTodasProfissao: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasProfissaoClick
                    end
                  end
                  object GbFaltaDisciplinar: TGroupBox
                    Left = 573
                    Top = 208
                    Width = 90
                    Height = 170
                    Caption = 'Falta Disciplinar'
                    TabOrder = 14
                    object ChConsultarFaltaDisciplinar: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarFaltaDisciplinarClick
                    end
                    object ChEditarFaltaDisciplinar: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarFaltaDisciplinarClick
                    end
                    object ChDeletarFaltaDisciplinar: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarFaltaDisciplinarClick
                    end
                    object ChInserirFaltaDisciplinar: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirFaltaDisciplinarClick
                    end
                    object ChRelatorioFaltaDisciplinar: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioFaltaDisciplinarClick
                    end
                    object ChTodasFaltaDisciplinar: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasFaltaDisciplinarClick
                    end
                  end
                  object GbSerieFase: TGroupBox
                    Left = 668
                    Top = 208
                    Width = 102
                    Height = 170
                    Caption = 'S'#233'rie/Fase Estudo'
                    TabOrder = 15
                    object ChConsultarSerieFaseEstudo: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarSerieFaseEstudoClick
                    end
                    object ChEditarSerieFaseEstudo: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarSerieFaseEstudoClick
                    end
                    object ChDeletarSerieFaseEstudo: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarSerieFaseEstudoClick
                    end
                    object ChInserirSerieFaseEstudo: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirSerieFaseEstudoClick
                    end
                    object ChRelatorioSerieFaseEstudo: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioSerieFaseEstudoClick
                    end
                    object ChTodasSerieFaseEstudo: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasSerieFaseEstudoClick
                    end
                  end
                end
                object TabCadastros2: TTabSheet
                  Caption = 'Cadastros2'
                  ImageIndex = 6
                  object Label4: TLabel
                    Left = 9
                    Top = 0
                    Width = 579
                    Height = 13
                    Caption = 
                      '______________________________________Jur'#237'dico__________________' +
                      '____________________'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold, fsUnderline]
                    ParentFont = False
                  end
                  object Label5: TLabel
                    Left = 8
                    Top = 192
                    Width = 289
                    Height = 13
                    Caption = '_________________Trabalho_________________'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold, fsUnderline]
                    ParentFont = False
                  end
                  object Label6: TLabel
                    Left = 686
                    Top = 0
                    Width = 85
                    Height = 13
                    Caption = '____________'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold, fsUnderline]
                    ParentFont = False
                  end
                  object Label7: TLabel
                    Left = 488
                    Top = 192
                    Width = 283
                    Height = 13
                    Caption = '___________Agenda de Atendimento__________'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold, fsUnderline]
                    ParentFont = False
                  end
                  object GbProcessoCondenacao: TGroupBox
                    Left = 7
                    Top = 15
                    Width = 123
                    Height = 170
                    Caption = 'Processo/Condena'#231#227'o'
                    TabOrder = 0
                    object ChConsultarProcessoCondenacao: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarProcessoCondenacaoClick
                    end
                    object ChEditarProcessoCondenacao: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarProcessoCondenacaoClick
                    end
                    object ChDeletarProcessoCondenacao: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarProcessoCondenacaoClick
                    end
                    object ChInserirProcessoCondenacao: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirProcessoCondenacaoClick
                    end
                    object ChRelatorioProcessoCondenacao: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioProcessoCondenacaoClick
                    end
                    object ChTodasProcessoCondenacao: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasProcessoCondenacaoClick
                    end
                  end
                  object GbDetracao: TGroupBox
                    Left = 132
                    Top = 16
                    Width = 90
                    Height = 170
                    Caption = 'Detra'#231#227'o'
                    TabOrder = 1
                    object ChConsultarDetracao: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarDetracaoClick
                    end
                    object ChEditarDetracao: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarDetracaoClick
                    end
                    object ChDeletarDetracao: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarDetracaoClick
                    end
                    object ChInserirDetracao: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirDetracaoClick
                    end
                    object ChRelatorioDetracao: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioDetracaoClick
                    end
                    object ChTodasDetracao: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasDetracaoClick
                    end
                  end
                  object GbInterrupcao: TGroupBox
                    Left = 224
                    Top = 16
                    Width = 90
                    Height = 170
                    Caption = 'Interrup'#231#227'o'
                    TabOrder = 2
                    object ChConsultarInterrupcao: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarInterrupcaoClick
                    end
                    object ChEditarInterrupcao: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarInterrupcaoClick
                    end
                    object ChDeletarInterrupcao: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarInterrupcaoClick
                    end
                    object ChInserirInterrupcao: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirInterrupcaoClick
                    end
                    object ChRelatorioInterrupcao: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioInterrupcaoClick
                    end
                    object ChTodasInterrupcao: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasInterrupcaoClick
                    end
                  end
                  object GbRemicao: TGroupBox
                    Left = 316
                    Top = 16
                    Width = 90
                    Height = 170
                    Caption = 'Remi'#231#227'o'
                    TabOrder = 3
                    object ChConsultarRemicao: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarRemicaoClick
                    end
                    object ChEditarRemicao: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarRemicaoClick
                    end
                    object ChDeletarRemicao: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarRemicaoClick
                    end
                    object ChInserirRemicao: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirRemicaoClick
                    end
                    object ChRelatorioRemicao: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioRemicaoClick
                    end
                    object ChTodasRemicao: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasRemicaoClick
                    end
                  end
                  object GbArtigoPenal: TGroupBox
                    Left = 408
                    Top = 16
                    Width = 90
                    Height = 170
                    Caption = 'Artigo Penal'
                    TabOrder = 4
                    object ChConsultarArtigoPenal: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarArtigoPenalClick
                    end
                    object ChEditarArtigoPenal: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarArtigoPenalClick
                    end
                    object ChDeletarArtigoPenal: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarArtigoPenalClick
                    end
                    object ChInserirArtigoPenal: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirArtigoPenalClick
                    end
                    object ChRelatorioArtigoPenal: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioArtigoPenalClick
                    end
                    object ChTodasArtigoPenal: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasArtigoPenalClick
                    end
                  end
                  object GbVaraExecucao: TGroupBox
                    Left = 500
                    Top = 16
                    Width = 90
                    Height = 170
                    Caption = 'Vara Execu'#231#227'o'
                    TabOrder = 5
                    object ChConsultarVaraExecucao: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarVaraExecucaoClick
                    end
                    object ChEditarVaraExecucao: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarVaraExecucaoClick
                    end
                    object ChDeletarVaraExecucao: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarVaraExecucaoClick
                    end
                    object ChInserirVaraExecucao: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirVaraExecucaoClick
                    end
                    object ChRelatorioVaraExecucao: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioVaraExecucaoClick
                    end
                    object ChTodasVaraExecucao: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasVaraExecucaoClick
                    end
                  end
                  object GbRemedio: TGroupBox
                    Left = 592
                    Top = 16
                    Width = 90
                    Height = 170
                    Caption = 'Rem'#233'dio'
                    TabOrder = 6
                    object ChConsultarRemedio: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarRemedioClick
                    end
                    object ChEditarRemedio: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarRemedioClick
                    end
                    object ChDeletarRemedio: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarRemedioClick
                    end
                    object ChInserirRemedio: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirRemedioClick
                    end
                    object ChRelatorioRemedio: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioRemedioClick
                    end
                    object ChTodasRemedio: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasRemedioClick
                    end
                  end
                  object GbSetorTrabalhoCadastro: TGroupBox
                    Left = 684
                    Top = 16
                    Width = 90
                    Height = 170
                    Caption = 'Setor Trabalho'
                    TabOrder = 7
                    object ChConsultarSetorTrabalhoCad: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarSetorTrabalhoCadClick
                    end
                    object ChEditarSetorTrabalhoCad: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarSetorTrabalhoCadClick
                    end
                    object ChDeletarSetorTrabalhoCad: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarSetorTrabalhoCadClick
                    end
                    object ChInserirSetorTrabalhoCad: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirSetorTrabalhoCadClick
                    end
                    object ChRelatorioSetorTrabalhoCad: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioSetorTrabalhoCadClick
                    end
                    object ChTodasSetorTrabalhoCad: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasSetorTrabalhoCadClick
                    end
                  end
                  object GbFuncaoInterno: TGroupBox
                    Left = 7
                    Top = 208
                    Width = 90
                    Height = 170
                    Caption = 'Fun'#231#227'o Interno'
                    TabOrder = 8
                    object ChConsultarFuncaoInterno: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarFuncaoInternoClick
                    end
                    object ChEditarFuncaoInterno: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarFuncaoInternoClick
                    end
                    object ChDeletarFuncaoInterno: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarFuncaoInternoClick
                    end
                    object ChInserirFuncaoInterno: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirFuncaoInternoClick
                    end
                    object ChRelatorioFuncaoInterno: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioFuncaoInternoClick
                    end
                    object ChTodasFuncaoInterno: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasFuncaoInternoClick
                    end
                  end
                  object GbCalculoTrabalho: TGroupBox
                    Left = 101
                    Top = 208
                    Width = 93
                    Height = 170
                    Caption = 'C'#225'lculo Trabalho'
                    TabOrder = 9
                    object ChConsultarCalculoTrabalho: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarCalculoTrabalhoClick
                    end
                    object ChEditarCalculoTrabalho: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarCalculoTrabalhoClick
                    end
                    object ChDeletarCalculoTrabalho: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarCalculoTrabalhoClick
                    end
                    object ChInserirCalculoTrabalho: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirCalculoTrabalhoClick
                    end
                    object ChRelatorioCalculoTrabalho: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioCalculoTrabalhoClick
                    end
                    object ChTodasCalculoTrabalho: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasCalculoTrabalhoClick
                    end
                  end
                  object GbRemicaoTrabalho: TGroupBox
                    Left = 198
                    Top = 208
                    Width = 100
                    Height = 170
                    Caption = 'Remi'#231#227'o Trabalho'
                    TabOrder = 10
                    object ChConsultarRemicaoTrabalho: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarRemicaoTrabalhoClick
                    end
                    object ChEditarRemicaoTrabalho: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarRemicaoTrabalhoClick
                    end
                    object ChDeletarRemicaoTrabalho: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarRemicaoTrabalhoClick
                    end
                    object ChInserirRemicaoTrabalho: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirRemicaoTrabalhoClick
                    end
                    object ChRelatorioRemicaoTrabalho: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioRemicaoTrabalhoClick
                    end
                    object ChTodasRemicaoTrabalho: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasRemicaoTrabalhoClick
                    end
                  end
                  object GbRoupas: TGroupBox
                    Left = 301
                    Top = 208
                    Width = 90
                    Height = 170
                    Caption = 'Roupas'
                    TabOrder = 11
                    object ChConsultarRoupas: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarRoupasClick
                    end
                    object ChEditarRoupas: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarRoupasClick
                    end
                    object ChDeletarRoupas: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarRoupasClick
                    end
                    object ChInserirRoupas: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirRoupasClick
                    end
                    object ChRelatorioRoupas: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioRoupasClick
                    end
                    object ChTodasRoupas: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasRoupasClick
                    end
                  end
                  object GbGrauParentesco: TGroupBox
                    Left = 395
                    Top = 208
                    Width = 93
                    Height = 170
                    Caption = 'Grau Parentesco'
                    TabOrder = 12
                    object ChConsultarGrauParentesco: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarGrauParentescoClick
                    end
                    object ChEditarGrauParentesco: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarGrauParentescoClick
                    end
                    object ChDeletarGrauParentesco: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarGrauParentescoClick
                    end
                    object ChInserirGrauParentesco: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirGrauParentescoClick
                    end
                    object ChRelatorioGrauParentesco: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioGrauParentescoClick
                    end
                    object ChTodasGrauParentesco: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasGrauParentescoClick
                    end
                  end
                  object GbTipoContato: TGroupBox
                    Left = 492
                    Top = 208
                    Width = 90
                    Height = 170
                    Caption = 'Tipo Contato'
                    TabOrder = 13
                    object ChConsultarTipoContato: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarTipoContatoClick
                    end
                    object ChEditarTipoContato: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarTipoContatoClick
                    end
                    object ChDeletarTipoContato: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarTipoContatoClick
                    end
                    object ChInserirTipoContato: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirTipoContatoClick
                    end
                    object ChRelatorioTipoContato: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioTipoContatoClick
                    end
                    object ChTodasTipoContato: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasTipoContatoClick
                    end
                  end
                  object GbAssunto: TGroupBox
                    Left = 586
                    Top = 208
                    Width = 90
                    Height = 170
                    Caption = 'Assunto'
                    TabOrder = 14
                    object ChConsultarAssunto: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarAssuntoClick
                    end
                    object ChEditarAssunto: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarAssuntoClick
                    end
                    object ChDeletarAssunto: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarAssuntoClick
                    end
                    object ChInserirAssunto: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirAssuntoClick
                    end
                    object ChRelatorioAssunto: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioAssuntoClick
                    end
                    object ChTodasAssunto: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasAssuntoClick
                    end
                  end
                  object GbSituacao: TGroupBox
                    Left = 680
                    Top = 208
                    Width = 90
                    Height = 170
                    Caption = 'Situa'#231#227'o'
                    TabOrder = 15
                    object ChConsultarSituacao: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarSituacaoClick
                    end
                    object ChEditarSituacao: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarSituacaoClick
                    end
                    object ChDeletarSituacao: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarSituacaoClick
                    end
                    object ChInserirSituacao: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirSituacaoClick
                    end
                    object ChRelatorioSituacao: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioSituacaoClick
                    end
                    object ChTodasSituacao: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasSituacaoClick
                    end
                  end
                end
                object TabSetores: TTabSheet
                  Caption = 'Setores'
                  ImageIndex = 1
                  object GroupBox3: TGroupBox
                    Left = 7
                    Top = 15
                    Width = 90
                    Height = 170
                    Caption = 'Trabalho'
                    TabOrder = 0
                    object cheditartrabalho: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 70
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditartrabalhoClick
                    end
                    object chdeletartrabalho: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 70
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletartrabalhoClick
                    end
                    object chConsultartrabalho: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 70
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chConsultartrabalhoClick
                    end
                    object chinserirtrabalho: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 70
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirtrabalhoClick
                    end
                    object chtodastrabalho: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 70
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodastrabalhoClick
                    end
                    object chrelatoriotrabalho: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 70
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriotrabalhoClick
                    end
                  end
                  object GroupBox4: TGroupBox
                    Left = 99
                    Top = 15
                    Width = 90
                    Height = 170
                    Caption = 'Educa'#231#227'o'
                    TabOrder = 1
                    object cheditareducacao: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 70
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditareducacaoClick
                    end
                    object chdeletareducacao: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 70
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletareducacaoClick
                    end
                    object chconsultareducacao: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 70
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultareducacaoClick
                    end
                    object chinserireducacao: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 70
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserireducacaoClick
                    end
                    object chtodaseducacao: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 70
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodaseducacaoClick
                    end
                    object chrelatorioeducacao: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 70
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatorioeducacaoClick
                    end
                  end
                  object GroupBox7: TGroupBox
                    Left = 7
                    Top = 200
                    Width = 90
                    Height = 170
                    Caption = 'Jur'#237'dico'
                    TabOrder = 8
                    object chconsultarjuridica: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarjuridicaClick
                    end
                    object cheditarjuridica: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarjuridicaClick
                    end
                    object chdeletarjuridica: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarjuridicaClick
                    end
                    object chinserirjuridica: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirjuridicaClick
                    end
                    object chtodasjuridica: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasjuridicaClick
                    end
                    object chrelatoriojuridico: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriojuridicoClick
                    end
                  end
                  object GroupBox8: TGroupBox
                    Left = 99
                    Top = 200
                    Width = 90
                    Height = 170
                    Caption = 'Disciplina'
                    TabOrder = 9
                    object chconsultardisciplina: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultardisciplinaClick
                    end
                    object cheditardisciplina: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditardisciplinaClick
                    end
                    object chdeletardisciplina: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletardisciplinaClick
                    end
                    object chinserirdisciplina: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirdisciplinaClick
                    end
                    object chtodasdisciplina: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasdisciplinaClick
                    end
                    object chrelatoriodisciplina: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriodisciplinaClick
                    end
                  end
                  object GroupBox6: TGroupBox
                    Left = 191
                    Top = 15
                    Width = 90
                    Height = 170
                    Caption = 'Psicossocial'
                    TabOrder = 2
                    object chconsultarpsicossocial: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarpsicossocialClick
                    end
                    object cheditarpsicossocial: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarpsicossocialClick
                    end
                    object chdeletarpsicossocial: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarpsicossocialClick
                    end
                    object chinserirpsicossocial: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirpsicossocialClick
                    end
                    object chtodaspsicossocial: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodaspsicossocialClick
                    end
                    object chrelatoriopsicossocial: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriopsicossocialClick
                    end
                  end
                  object GroupBox9: TGroupBox
                    Left = 191
                    Top = 200
                    Width = 90
                    Height = 170
                    Caption = 'Cl'#237'nica M'#233'dica'
                    TabOrder = 10
                    object chconsultarclinicamedica: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarclinicamedicaClick
                    end
                    object cheditarclinicamedica: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarclinicamedicaClick
                    end
                    object chdeletarclinicamedica: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarclinicamedicaClick
                    end
                    object chinserirclinicamedica: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirclinicamedicaClick
                    end
                    object chtodasclinicamedica: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasclinicamedicaClick
                    end
                    object chrelatorioclinicamedica: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatorioclinicamedicaClick
                    end
                  end
                  object GroupBox10: TGroupBox
                    Left = 283
                    Top = 15
                    Width = 90
                    Height = 170
                    Caption = 'Enfermagem'
                    TabOrder = 3
                    object chconsultarenfermagem: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarenfermagemClick
                    end
                    object cheditarenfermagem: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarenfermagemClick
                    end
                    object chdeletarenfermagem: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarenfermagemClick
                    end
                    object chinserirenfermagem: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirenfermagemClick
                    end
                    object chtodasenfermagem: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasenfermagemClick
                    end
                    object chrelatorioenfermagem: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatorioenfermagemClick
                    end
                  end
                  object GroupBox11: TGroupBox
                    Left = 283
                    Top = 200
                    Width = 90
                    Height = 170
                    Caption = 'Odontologia'
                    TabOrder = 11
                    object chconsultarodontologia: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarodontologiaClick
                    end
                    object cheditarodontologia: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarodontologiaClick
                    end
                    object chdeletarodontologia: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarodontologiaClick
                    end
                    object chinserirodontologia: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirodontologiaClick
                    end
                    object chtodasodontologia: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasodontologiaClick
                    end
                    object chrelatorioodontologia: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatorioodontologiaClick
                    end
                  end
                  object GroupBox12: TGroupBox
                    Left = 375
                    Top = 15
                    Width = 90
                    Height = 170
                    Caption = 'Farm'#225'cia'
                    TabOrder = 4
                    object chconsultarfarmacia: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarfarmaciaClick
                    end
                    object cheditarfarmacia: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarfarmaciaClick
                    end
                    object chdeletarfarmacia: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarfarmaciaClick
                    end
                    object chinserirfarmacia: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirfarmaciaClick
                    end
                    object chtodasfarmacia: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasfarmaciaClick
                    end
                    object chrelatoriofaramcia: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriofaramciaClick
                    end
                  end
                  object GroupBox13: TGroupBox
                    Left = 375
                    Top = 200
                    Width = 90
                    Height = 170
                    Caption = 'Pedagogia'
                    TabOrder = 12
                    object chconsultarpedagogia: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarpedagogiaClick
                    end
                    object cheditarpedagogia: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarpedagogiaClick
                    end
                    object chdeletarpedagogia: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarpedagogiaClick
                    end
                    object chinserirpedagogia: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirpedagogiaClick
                    end
                    object chtodaspedagogia: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodaspedagogiaClick
                    end
                    object chrelatoriopedagogia: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriopedagogiaClick
                    end
                  end
                  object GroupBox14: TGroupBox
                    Left = 651
                    Top = 15
                    Width = 95
                    Height = 170
                    Caption = 'Ter. Ocupacional'
                    TabOrder = 7
                    object chconsultarterapiaocupacional: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarterapiaocupacionalClick
                    end
                    object cheditarterapiaocupacional: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarterapiaocupacionalClick
                    end
                    object chdeletarterapiaocupacional: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarterapiaocupacionalClick
                    end
                    object chinserirterapiaocupacional: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirterapiaocupacionalClick
                    end
                    object chtodasterapiaocupacional: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasterapiaocupacionalClick
                    end
                    object chrelatorioterapiaocupacional: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatorioterapiaocupacionalClick
                    end
                  end
                  object GroupBox15: TGroupBox
                    Left = 559
                    Top = 15
                    Width = 90
                    Height = 170
                    Caption = 'Servi'#231'o Social'
                    TabOrder = 6
                    object chconsultarservicosocial: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarservicosocialClick
                    end
                    object cheditarservicosocial: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarservicosocialClick
                    end
                    object chdeletarservicosocial: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarservicosocialClick
                    end
                    object chinserirservicosocial: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirservicosocialClick
                    end
                    object chtodasservicosocial: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasservicosocialClick
                    end
                    object chrelatorioservicosocial: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatorioservicosocialClick
                    end
                  end
                  object GroupBox16: TGroupBox
                    Left = 467
                    Top = 200
                    Width = 90
                    Height = 170
                    Caption = 'Psicologia'
                    TabOrder = 13
                    object chconsultarpsicologia: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarpsicologiaClick
                    end
                    object cheditarpsicologia: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarpsicologiaClick
                    end
                    object chdeletarpsicologia: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarpsicologiaClick
                    end
                    object chinserirpsicologia: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirpsicologiaClick
                    end
                    object chtodaspsicologia: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodaspsicologiaClick
                    end
                    object chrelatoriopsicologia: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriopsicologiaClick
                    end
                  end
                  object GroupBox17: TGroupBox
                    Left = 467
                    Top = 15
                    Width = 90
                    Height = 170
                    Caption = 'Psiquiatria'
                    TabOrder = 5
                    object chconsultarpsiquiatria: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarpsiquiatriaClick
                    end
                    object cheditarpsiquiatria: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarpsiquiatriaClick
                    end
                    object chdeletarpsiquiatria: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarpsiquiatriaClick
                    end
                    object chinserirpsiquiatria: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirpsiquiatriaClick
                    end
                    object chtodaspsiquiatria: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodaspsiquiatriaClick
                    end
                    object chrelatoriopsiquiatria: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriopsiquiatriaClick
                    end
                  end
                  object GroupBox18: TGroupBox
                    Left = 559
                    Top = 200
                    Width = 90
                    Height = 170
                    Caption = 'Sa'#250'de'
                    TabOrder = 14
                    object chconsultarsaude: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarsaudeClick
                    end
                    object cheditarsaude: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarsaudeClick
                    end
                    object chdeletarsaude: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarsaudeClick
                    end
                    object chinserirsaude: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirsaudeClick
                    end
                    object chtodassaude: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodassaudeClick
                    end
                    object chrelatoriosaude: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriosaudeClick
                    end
                  end
                  object GbConselhoDisciplinar: TGroupBox
                    Left = 651
                    Top = 200
                    Width = 90
                    Height = 170
                    Caption = 'Cons. Disciplinar'
                    TabOrder = 15
                    object chConsultarConsDisciplinar: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chConsultarConsDisciplinarClick
                    end
                    object chEditarConsDisciplinar: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = chEditarConsDisciplinarClick
                    end
                    object chDeletarConsDisciplinar: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chDeletarConsDisciplinarClick
                    end
                    object chInserirConsDisciplinar: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chInserirConsDisciplinarClick
                    end
                    object chRelatorioConsDisciplinar: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rio'
                      TabOrder = 4
                      OnClick = chRelatorioConsDisciplinarClick
                    end
                    object chTodasConsDisciplinar: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chTodasConsDisciplinarClick
                    end
                  end
                end
                object TabMovimentacao: TTabSheet
                  Caption = 'Movimenta'#231#227'o'
                  ImageIndex = 2
                  object GbTransferenciaInterno: TGroupBox
                    Left = 7
                    Top = 15
                    Width = 130
                    Height = 170
                    Caption = 'Transfer'#234'ncia de Interno'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    object chConsultarTransferenciaInterno: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 0
                      OnClick = chConsultarTransferenciaInternoClick
                    end
                    object chEditarTransferenciaInterno: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 1
                      OnClick = chEditarTransferenciaInternoClick
                    end
                    object chDeletarTransferenciaInterno: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 2
                      OnClick = chDeletarTransferenciaInternoClick
                    end
                    object chInserirTransferenciaInterno: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 3
                      OnClick = chInserirTransferenciaInternoClick
                    end
                    object chRelatorioTransferenciaInterno: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 4
                      OnClick = chRelatorioTransferenciaInternoClick
                    end
                    object chTodasTransferenciaInterno: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 5
                      OnClick = chTodasTransferenciaInternoClick
                    end
                  end
                  object GbMudancaCela: TGroupBox
                    Left = 139
                    Top = 15
                    Width = 97
                    Height = 170
                    Caption = 'Mudan'#231'a de Cela'
                    TabOrder = 1
                    object ChConsultarMudancaCela: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarMudancaCelaClick
                    end
                    object ChEditarMudancaCela: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarMudancaCelaClick
                    end
                    object ChDeletarMudancaCela: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarMudancaCelaClick
                    end
                    object ChInserirMudancaCela: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirMudancaCelaClick
                    end
                    object ChRelatorioMudancaCela: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioMudancaCelaClick
                    end
                    object ChTodasMudancaCela: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasMudancaCelaClick
                    end
                  end
                  object GbSaidao: TGroupBox
                    Left = 238
                    Top = 15
                    Width = 99
                    Height = 170
                    Caption = 'Said'#227'o Internos'
                    TabOrder = 2
                    object ChConsultarSaidao: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarSaidaoClick
                    end
                    object ChEditarSaidao: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarSaidaoClick
                    end
                    object ChDeletarSaidao: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarSaidaoClick
                    end
                    object ChInserirSaidao: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirSaidaoClick
                    end
                    object ChRelatorioSaidao: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioSaidaoClick
                    end
                    object ChTodasSaidao: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasSaidaoClick
                    end
                  end
                  object GbCirculacaoInterno: TGroupBox
                    Left = 337
                    Top = 15
                    Width = 120
                    Height = 170
                    Caption = 'Circula'#231#227'o de Interno'
                    TabOrder = 3
                    object ChConsultarCirculacaoInterno: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarCirculacaoInternoClick
                    end
                    object ChEditarCirculacaoInterno: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarCirculacaoInternoClick
                    end
                    object ChDeletarCirculacaoInterno: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarCirculacaoInternoClick
                    end
                    object ChInserirCirculacaoInterno: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirCirculacaoInternoClick
                    end
                    object ChRelatorioCirculacaoInterno: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioCirculacaoInternoClick
                    end
                    object ChTodasCirculacaoInterno: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasCirculacaoInternoClick
                    end
                  end
                  object GbMovimentoSemiAberto: TGroupBox
                    Left = 458
                    Top = 15
                    Width = 170
                    Height = 170
                    Caption = 'Movimento Semi-Aberto / Aberto'
                    TabOrder = 4
                    object ChConsultarMovimentoSemiAberto: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarMovimentoSemiAbertoClick
                    end
                    object ChEditarMovimentoSemiAberto: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarMovimentoSemiAbertoClick
                    end
                    object ChDeletarMovimentoSemiAberto: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarMovimentoSemiAbertoClick
                    end
                    object ChInserirMovimentoSemiAberto: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirMovimentoSemiAbertoClick
                    end
                    object ChRelatorioMovimentoSemiAberto: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioMovimentoSemiAbertoClick
                    end
                    object ChTodasMovimentoSemiAberto: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasMovimentoSemiAbertoClick
                    end
                  end
                  object GBPortariaSaidao: TGroupBox
                    Left = 629
                    Top = 14
                    Width = 112
                    Height = 170
                    Caption = 'Portaria Said'#227'o'
                    TabOrder = 5
                    object ChConsultarSaidaoCadastro: TCheckBox
                      Left = 8
                      Top = 25
                      Width = 97
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarSaidaoCadastroClick
                    end
                    object ChEditarSaidaoCadastro: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 97
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarSaidaoCadastroClick
                    end
                    object ChDeletarSaidaoCadastro: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 97
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarSaidaoCadastroClick
                    end
                    object ChInserirSaidaoCadastro: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 97
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirSaidaoCadastroClick
                    end
                    object chRelatorioSaidaoCadastro: TCheckBox
                      Left = 9
                      Top = 120
                      Width = 97
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chRelatorioSaidaoCadastroClick
                    end
                    object ChTodasSaidaoCadastro: TCheckBox
                      Left = 9
                      Top = 144
                      Width = 97
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasSaidaoCadastroClick
                    end
                  end
                end
                object TabModulos: TTabSheet
                  Caption = 'M'#243'dulos'
                  ImageIndex = 3
                  object GroupBoxinteligencia: TGroupBox
                    Left = 195
                    Top = 15
                    Width = 90
                    Height = 170
                    Caption = 'Intelig'#234'ncia'
                    TabOrder = 0
                    object chconsultarinteligencia: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarinteligenciaClick
                    end
                    object cheditarinteligencia: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarinteligenciaClick
                    end
                    object chdeletarinteligencia: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarinteligenciaClick
                    end
                    object chinseririnteligencia: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinseririnteligenciaClick
                    end
                    object chrelatoriointeligencia: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriointeligenciaClick
                    end
                    object chtodasinteligencia: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasinteligenciaClick
                    end
                  end
                  object GroupBox19: TGroupBox
                    Left = 7
                    Top = 15
                    Width = 90
                    Height = 170
                    Caption = 'Armas'
                    TabOrder = 1
                    object chconsultararmas: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultararmasClick
                    end
                    object cheditararmas: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditararmasClick
                    end
                    object chdeletararmas: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletararmasClick
                    end
                    object chinserirarmas: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirarmasClick
                    end
                    object chrelatorioarmas: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatorioarmasClick
                    end
                    object chtodasarmas: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasarmasClick
                    end
                  end
                  object Monitoramento: TGroupBox
                    Left = 99
                    Top = 15
                    Width = 94
                    Height = 170
                    Caption = 'Monit. Eletr'#244'nico'
                    TabOrder = 2
                    object chconsultarmonitoramento: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 73
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = chconsultarmonitoramentoClick
                    end
                    object cheditarmonitoramento: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = cheditarmonitoramentoClick
                    end
                    object chdeletarmonitoramento: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 73
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = chdeletarmonitoramentoClick
                    end
                    object chinserirmonitoramento: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 73
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = chinserirmonitoramentoClick
                    end
                    object chrelatoriomonitoramento: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 73
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = chrelatoriomonitoramentoClick
                    end
                    object chtodasmonitoramento: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 73
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = chtodasmonitoramentoClick
                    end
                  end
                end
                object TabMonitoramento: TTabSheet
                  Caption = 'Monitoramento'
                  ImageIndex = 7
                  object Label9: TLabel
                    Left = 9
                    Top = 0
                    Width = 764
                    Height = 13
                    Caption = 
                      '__________________________________________________Cadastros_____' +
                      '______________________________________________'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold, fsUnderline]
                    ParentFont = False
                  end
                  object Label10: TLabel
                    Left = 5
                    Top = 192
                    Width = 769
                    Height = 13
                    Caption = 
                      '_________________________________________________Lan'#231'amentos____' +
                      '______________________________________________'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold, fsUnderline]
                    ParentFont = False
                  end
                  object GbEventos: TGroupBox
                    Left = 8
                    Top = 15
                    Width = 90
                    Height = 170
                    Caption = 'Eventos'
                    TabOrder = 0
                    object ChConsultarEventos: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarEventosClick
                    end
                    object ChEditarEventos: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarEventosClick
                    end
                    object ChDeletarEventos: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarEventosClick
                    end
                    object ChInserirEventos: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirEventosClick
                    end
                    object ChRelatorioEventos: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioEventosClick
                    end
                    object ChTodasEventos: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasEventosClick
                    end
                  end
                  object GroupBox22: TGroupBox
                    Left = 104
                    Top = 15
                    Width = 90
                    Height = 170
                    Caption = 'Sub Eventos'
                    TabOrder = 1
                    object ChConsultarSubEventos: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarSubEventosClick
                    end
                    object ChEditarSubEventos: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarSubEventosClick
                    end
                    object ChDeletarSubEventos: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarSubEventosClick
                    end
                    object ChInserirSubEventos: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirSubEventosClick
                    end
                    object ChRelatorioSubEventos: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioSubEventosClick
                    end
                    object ChTodasSubEventos: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasSubEventosClick
                    end
                  end
                  object GroupBox23: TGroupBox
                    Left = 8
                    Top = 207
                    Width = 129
                    Height = 170
                    Caption = 'Monitoramento Eventos'
                    TabOrder = 2
                    object ChConsultarMonitEventos: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarMonitEventosClick
                    end
                    object ChEditarMonitEventos: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarMonitEventosClick
                    end
                    object ChDeletarMonitEventos: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarMonitEventosClick
                    end
                    object ChInserirMonitEventos: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirMonitEventosClick
                    end
                    object ChRelatorioMonitEventos: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioMonitEventosClick
                    end
                    object ChTodasMonitEventos: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasMonitEventosClick
                    end
                  end
                end
                object TabConfiguracao: TTabSheet
                  Caption = 'Configura'#231#245'es'
                  ImageIndex = 4
                  object GbFuncionario: TGroupBox
                    Left = 7
                    Top = 15
                    Width = 90
                    Height = 170
                    Caption = 'Funcion'#225'rio'
                    TabOrder = 0
                    object ChConsultarFuncionario: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarFuncionarioClick
                    end
                    object ChEditarFuncionario: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarFuncionarioClick
                    end
                    object ChDeletarFuncionario: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarFuncionarioClick
                    end
                    object ChInserirFuncionario: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirFuncionarioClick
                    end
                    object ChRelatorioFuncionario: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioFuncionarioClick
                    end
                    object ChTodasFuncionario: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasFuncionarioClick
                    end
                  end
                  object GbFuncaoFuncionario: TGroupBox
                    Left = 99
                    Top = 15
                    Width = 110
                    Height = 170
                    Caption = 'Fun'#231#227'o Funcion'#225'rio'
                    TabOrder = 1
                    object ChConsultarFuncaoFuncionario: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarFuncaoFuncionarioClick
                    end
                    object ChEditarFuncaoFuncionario: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarFuncaoFuncionarioClick
                    end
                    object ChDeletarFuncaoFuncionario: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarFuncaoFuncionarioClick
                    end
                    object ChInserirFuncaoFuncionario: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirFuncaoFuncionarioClick
                    end
                    object ChRelatorioFuncaoFuncionario: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioFuncaoFuncionarioClick
                    end
                    object ChTodasFuncaoFuncionario: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasFuncaoFuncionarioClick
                    end
                  end
                  object GbUnidadePenal: TGroupBox
                    Left = 211
                    Top = 15
                    Width = 90
                    Height = 170
                    Caption = 'Unidade Penal'
                    TabOrder = 2
                    object ChConsultarUnidadePenal: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarUnidadePenalClick
                    end
                    object ChEditarUnidadePenal: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarUnidadePenalClick
                    end
                    object ChDeletarUnidadePenal: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarUnidadePenalClick
                    end
                    object ChInserirUnidadePenal: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirUnidadePenalClick
                    end
                    object ChRelatorioUnidadePenal: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioUnidadePenalClick
                    end
                    object ChTodasUnidadePenal: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasUnidadePenalClick
                    end
                  end
                  object GbHorarioFuncionario: TGroupBox
                    Left = 303
                    Top = 15
                    Width = 106
                    Height = 170
                    Caption = 'Hor'#225'rio Funcion'#225'rio'
                    TabOrder = 3
                    object ChConsultarHorarioFuncionario: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarHorarioFuncionarioClick
                    end
                    object ChEditarHorarioFuncionario: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarHorarioFuncionarioClick
                    end
                    object ChDeletarHorarioFuncionario: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarHorarioFuncionarioClick
                    end
                    object ChInserirHorarioFuncionario: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirHorarioFuncionarioClick
                    end
                    object ChRelatorioHorarioFuncionario: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioHorarioFuncionarioClick
                    end
                    object ChTodasHorarioFuncionario: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasHorarioFuncionarioClick
                    end
                  end
                  object GbPadraoSistema: TGroupBox
                    Left = 411
                    Top = 15
                    Width = 103
                    Height = 170
                    Caption = 'Padr'#227'o do Sistema'
                    TabOrder = 4
                    object ChConsultarPadraoSistema: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarPadraoSistemaClick
                    end
                    object ChEditarPadraoSistema: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarPadraoSistemaClick
                    end
                    object ChDeletarPadraoSistema: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarPadraoSistemaClick
                    end
                    object ChInserirPadraoSistema: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirPadraoSistemaClick
                    end
                    object ChRelatorioPadraoSistema: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioPadraoSistemaClick
                    end
                    object ChTodasPadraoSistema: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasPadraoSistemaClick
                    end
                  end
                  object GbEquipe: TGroupBox
                    Left = 516
                    Top = 15
                    Width = 90
                    Height = 170
                    Caption = 'Equipe'
                    TabOrder = 5
                    object ChConsultarEquipe: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarEquipeClick
                    end
                    object ChEditarEquipe: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarEquipeClick
                    end
                    object ChDeletarEquipe: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarEquipeClick
                    end
                    object ChInserirEquipe: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirEquipeClick
                    end
                    object ChRelatorioEquipe: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioEquipeClick
                    end
                    object ChTodasEquipe: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasEquipeClick
                    end
                  end
                  object GbPostoLocalTrabalho: TGroupBox
                    Left = 608
                    Top = 15
                    Width = 129
                    Height = 170
                    Caption = 'Posto / Local Trabalho'
                    TabOrder = 6
                    object ChConsultarPostoLocalTrabalho: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarPostoLocalTrabalhoClick
                    end
                    object ChEditarPostoLocalTrabalho: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarPostoLocalTrabalhoClick
                    end
                    object ChDeletarPostoLocalTrabalho: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarPostoLocalTrabalhoClick
                    end
                    object ChInserirPostoLocalTrabalho: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirPostoLocalTrabalhoClick
                    end
                    object ChRelatorioPostoLocalTrabalho: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioPostoLocalTrabalhoClick
                    end
                    object ChTodasPostoLocalTrabalho: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasPostoLocalTrabalhoClick
                    end
                  end
                  object GbAgenteEquipe: TGroupBox
                    Left = 3
                    Top = 199
                    Width = 102
                    Height = 170
                    Caption = 'Agente por Equipe'
                    TabOrder = 7
                    object ChConsultarAgenteEquipe: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarAgenteEquipeClick
                    end
                    object ChEditarAgenteEquipe: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarAgenteEquipeClick
                    end
                    object ChDeletarAgenteEquipe: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarAgenteEquipeClick
                    end
                    object ChInserirAgenteEquipe: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirAgenteEquipeClick
                    end
                    object ChRelatorioAgenteEquipe: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioAgenteEquipeClick
                    end
                    object ChTodasAgenteEquipe: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasAgenteEquipeClick
                    end
                  end
                  object GbRegraVisitacao: TGroupBox
                    Left = 107
                    Top = 200
                    Width = 110
                    Height = 170
                    Caption = 'Regras de Visita'#231#227'o'
                    TabOrder = 8
                    object ChConsultarRegraVisitacao: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarRegraVisitacaoClick
                    end
                    object ChEditarRegraVisitacao: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarRegraVisitacaoClick
                    end
                    object ChDeletarRegraVisitacao: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarRegraVisitacaoClick
                    end
                    object ChInserirRegraVisitacao: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirRegraVisitacaoClick
                    end
                    object ChRelatorioRegraVisitacao: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioRegraVisitacaoClick
                    end
                    object ChTodasRegraVisitacao: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasRegraVisitacaoClick
                    end
                  end
                  object GbPerfilUsuario: TGroupBox
                    Left = 219
                    Top = 199
                    Width = 90
                    Height = 170
                    Caption = 'Perfil de Usu'#225'rio'
                    TabOrder = 9
                    object ChConsultarPerfilUsuario: TCheckBox
                      Left = 8
                      Top = 24
                      Width = 65
                      Height = 17
                      Caption = 'Consultar'
                      TabOrder = 0
                      OnClick = ChConsultarPerfilUsuarioClick
                    end
                    object ChEditarPerfilUsuario: TCheckBox
                      Left = 8
                      Top = 48
                      Width = 65
                      Height = 17
                      Caption = 'Editar'
                      TabOrder = 1
                      OnClick = ChEditarPerfilUsuarioClick
                    end
                    object ChDeletarPerfilUsuario: TCheckBox
                      Left = 8
                      Top = 72
                      Width = 65
                      Height = 17
                      Caption = 'Deletar'
                      TabOrder = 2
                      OnClick = ChDeletarPerfilUsuarioClick
                    end
                    object ChInserirPerfilUsuario: TCheckBox
                      Left = 8
                      Top = 96
                      Width = 65
                      Height = 17
                      Caption = 'Inserir'
                      TabOrder = 3
                      OnClick = ChInserirPerfilUsuarioClick
                    end
                    object ChRelatorioPerfilUsuario: TCheckBox
                      Left = 8
                      Top = 120
                      Width = 65
                      Height = 17
                      Caption = 'Relat'#243'rios'
                      TabOrder = 4
                      OnClick = ChRelatorioPerfilUsuarioClick
                    end
                    object ChTodasPerfilUsuario: TCheckBox
                      Left = 8
                      Top = 144
                      Width = 65
                      Height = 17
                      Caption = 'Todas'
                      TabOrder = 5
                      OnClick = ChTodasPerfilUsuarioClick
                    end
                  end
                end
              end
              object DBRadioGroupVISUALIZA_OUTRAS_UP: TDBRadioGroup
                Left = 440
                Top = 62
                Width = 174
                Height = 40
                Caption = 'Acessa outras Unidades Penais?'
                Columns = 2
                DataField = 'VISUALIZA_OUTRAS_UP'
                DataSource = DsCadastro
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 6
                Values.Strings = (
                  'S'
                  'N')
              end
              object DBRadioGroupAutorizadoWeb: TDBRadioGroup
                Left = 623
                Top = 62
                Width = 162
                Height = 40
                Caption = 'Liberar acesso SiapenWeb?'
                Columns = 2
                DataField = 'AUTORIZADO_WEB'
                DataSource = DsCadastro
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 7
                Values.Strings = (
                  'S'
                  'N')
              end
              object DBRGAtribuiPerfilUsuario: TDBRadioGroup
                Left = 8
                Top = 62
                Width = 161
                Height = 40
                Caption = 'Pode atribuir Perfil ao Usu'#225'rio?'
                Columns = 2
                DataField = 'DEFINE_PERFIL_USUARIO'
                DataSource = DsCadastro
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 4
                Values.Strings = (
                  'S'
                  'N')
              end
              object DBEditPerfil: TDBEdit
                Left = 66
                Top = 31
                Width = 367
                Height = 21
                DataField = 'PERFIL'
                DataSource = DsCadastro
                MaxLength = 55
                TabOrder = 1
              end
              object DBRGAtribuiPermissaoIndividual: TDBRadioGroup
                Left = 177
                Top = 62
                Width = 255
                Height = 40
                Caption = 'Pode atribuir Permiss'#245'es individuais fora do Perfil?'
                Columns = 2
                DataField = 'CONCEDE_PERMISSAO_INDIVIDUAL'
                DataSource = DsCadastro
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 5
                Values.Strings = (
                  'S'
                  'N')
              end
              object DBEditcodigo: TDBEdit
                Left = 9
                Top = 31
                Width = 49
                Height = 21
                DataField = 'ID_PERFIL_USUARIO'
                DataSource = DsCadastro
                Enabled = False
                TabOrder = 0
              end
              object DBRGStatusPerfil: TDBRadioGroup
                Left = 439
                Top = 14
                Width = 174
                Height = 40
                Caption = 'Situa'#231#227'o do Perfil?'
                Columns = 2
                DataField = 'STATUS'
                DataSource = DsCadastro
                Items.Strings = (
                  'Ativo'
                  'Inativo')
                TabOrder = 2
                Values.Strings = (
                  'A'
                  'I')
              end
              object DBrgEntradaVisitante: TDBRadioGroup
                Left = 623
                Top = 14
                Width = 162
                Height = 41
                Caption = 'Entrada de Visitantes'
                Columns = 2
                DataField = 'PERMISSAO_ENTRADAVISITANTE'
                DataSource = DsCadastro
                Items.Strings = (
                  'Sim'
                  'N'#227'o')
                TabOrder = 3
                Values.Strings = (
                  'S'
                  'N')
              end
            end
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        ExplicitWidth = 823
        ExplicitHeight = 571
        inherited PanelLocalizaConsulta: TPanel
          Width = 823
          ExplicitWidth = 823
        end
        inherited PanelConsulta: TPanel
          Width = 823
          Height = 537
          ExplicitWidth = 823
          ExplicitHeight = 537
          inherited DBGridConsulta: TDBGrid
            Width = 821
            Height = 535
            DataSource = DsConsulta
          end
        end
      end
    end
  end
  inherited PanelTituloModeloCadastro: TPanel
    Width = 946
    ExplicitWidth = 946
  end
  inherited StatusBar1: TStatusBar
    Top = 631
    Width = 946
    ExplicitTop = 631
    ExplicitWidth = 946
  end
  inherited ImageListCadastro: TImageList
    Left = 760
    Top = 48
  end
  inherited SqlCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * '
      'FROM PERFIL_USUARIO'
      'WHERE ID_PERFIL_USUARIO = :ID_PERFIL_USUARIO')
    Left = 392
    Top = 80
    ParamData = <
      item
        Name = 'ID_PERFIL_USUARIO'
        DataType = ftInteger
        ParamType = ptInput
        Value = -1
      end>
  end
  inherited DspCadastro: TDataSetProvider
    Left = 420
    Top = 80
  end
  inherited CdsCadastro: TClientDataSet
    Left = 448
    Top = 80
  end
  inherited DsCadastro: TDataSource
    Left = 476
    Top = 80
  end
  object Dspconsulta: TDataSetProvider
    DataSet = SqlConsulta
    Left = 668
    Top = 40
  end
  object CdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dspconsulta'
    Left = 696
    Top = 40
    object CdsConsultaID_PERFIL_USUARIO: TIntegerField
      DisplayLabel = 'C'#211'DIGO'
      FieldName = 'ID_PERFIL_USUARIO'
      Required = True
    end
    object CdsConsultaPerfil: TStringField
      DisplayWidth = 50
      FieldName = 'PERFIL'
      Size = 100
    end
  end
  object DsConsulta: TDataSource
    DataSet = CdsConsulta
    Left = 724
    Top = 40
  end
  object SqlSelectPerfilUsuario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select id_perfil_usuario, perfil from perfil_usuario')
    SQLConnection = DM.SQLConnect
    Left = 808
    Top = 52
  end
  object SqlConsulta: TFDQuery
    ObjectView = False
    Connection = DM.SQLConnect
    SQL.Strings = (
      'select  ID_PERFIL_USUARIO, PERFIL from PERFIL_USUARIO'
      'order by PERFIL collate win_ptbr')
    Left = 640
    Top = 40
  end
end
