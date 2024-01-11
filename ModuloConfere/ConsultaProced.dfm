inherited FrmConsultaProced: TFrmConsultaProced
  Top = 62
  Caption = 'Consulta ao Proced'
  ClientHeight = 638
  ClientWidth = 860
  OnClose = FormClose
  ExplicitWidth = 876
  ExplicitHeight = 677
  TextHeight = 13
  inherited PanelGeral: TPanel
    Width = 860
    Height = 597
    ExplicitWidth = 412
    ExplicitHeight = 167
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 862
      Height = 596
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 410
      ExplicitHeight = 165
      object TabSheet1: TTabSheet
        Caption = 'Individuo'
        object Label1: TLabel
          Left = 32
          Top = 8
          Width = 77
          Height = 13
          Caption = 'Numero Proced:'
        end
        object Label2: TLabel
          Left = 32
          Top = 48
          Width = 28
          Height = 13
          Caption = 'Nome'
        end
        object Label3: TLabel
          Left = 32
          Top = 88
          Width = 67
          Height = 13
          Caption = 'Nome da M'#227'e'
        end
        object Label4: TLabel
          Left = 32
          Top = 128
          Width = 82
          Height = 13
          Caption = 'Data Nascimento'
        end
        object Label5: TLabel
          Left = 0
          Top = 248
          Width = 116
          Height = 13
          Caption = 'Envolvido nos Inqu'#233'ritos'
        end
        object dm: TButton
          Left = 656
          Top = 136
          Width = 75
          Height = 25
          Caption = 'Consulta'
          TabOrder = 4
          OnClick = dmClick
        end
        object EditDataNascimento: TMaskEdit
          Left = 32
          Top = 144
          Width = 120
          Height = 21
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 3
          Text = '  /  /    '
        end
        object EditNome: TEdit
          Left = 32
          Top = 64
          Width = 700
          Height = 21
          TabOrder = 1
        end
        object EditMae: TEdit
          Left = 32
          Top = 104
          Width = 700
          Height = 21
          TabOrder = 2
        end
        object EditNumeroProced: TEdit
          Left = 32
          Top = 24
          Width = 121
          Height = 21
          TabOrder = 0
          OnKeyPress = EditNumeroProcedKeyPress
        end
        object DBGrid3: TDBGrid
          Left = 0
          Top = 347
          Width = 862
          Height = 134
          Align = alBottom
          DataSource = DmProced.DsAntecedentesCriminais
          TabOrder = 5
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'NR_PROCED'
              Title.Caption = 'N'#186
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ANO_PROCED'
              Title.Caption = 'Ano'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SIG_ORGAO'
              Title.Caption = 'U.P.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DSC_TIPO_INSTAURACAO'
              Title.Caption = 'Tipo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DT_INICIO_PROCED'
              Title.Caption = 'Instaura'#231#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DE_PENA_SENTENCA'
              Title.Caption = 'Senten'#231'as'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DT_BAIXA'
              Title.Caption = 'Baixa'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DSC_MOTIVO_ALVARA'
              Title.Caption = 'Motivo do Alvar'#225
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INCIDENCIAS'
              Title.Caption = 'Situa'#231#245'es'
              Visible = True
            end>
        end
        object Panel1: TPanel
          Left = -2
          Top = 169
          Width = 801
          Height = 70
          Caption = 'Panel1'
          TabOrder = 6
          object DBGrid1: TDBGrid
            Left = 1
            Top = 1
            Width = 799
            Height = 68
            Align = alClient
            DataSource = DmProced.DsBuscaEnvolvido
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'cod_envolvido'
                Title.Caption = 'N.Proced'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nm_envolvido'
                Title.Caption = 'Nome'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nm_mae'
                Title.Caption = 'M'#227'e'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nm_pai'
                Title.Caption = 'Pai'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dt_nascimento'
                Title.Caption = 'Data Nasc.'
                Visible = True
              end>
          end
        end
        object DBRichEdit1: TDBRichEdit
          Left = 0
          Top = 481
          Width = 862
          Height = 89
          Align = alBottom
          DataField = 'DE_PENA_SENTENCA'
          DataSource = DmProced.DsAntecedentesCriminais
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          TabOrder = 7
          ExplicitTop = 48
          ExplicitWidth = 402
        end
      end
    end
  end
  inherited PanelTitulo: TPanel
    Width = 860
    ExplicitWidth = 412
    inherited Image2: TImage
      Width = 870
      ExplicitWidth = 808
    end
    inherited LabelTitulo: TLabel
      Width = 163
      Caption = 'Consulta ao Proced'
      ExplicitWidth = 163
    end
  end
end
