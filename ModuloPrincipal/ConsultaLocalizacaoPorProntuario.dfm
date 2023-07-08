object FrmConsultaLocalizacaoPorProntuario: TFrmConsultaLocalizacaoPorProntuario
  Left = 145
  Top = 186
  Width = 1115
  Height = 510
  Caption = 'Movimenta'#231#227'o Geral do Interno'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    1099
    472)
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 5
    Top = 252
    Width = 242
    Height = 20
    Caption = 'Mudan'#231'as de Cela do Interno:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 6
    Top = 68
    Width = 289
    Height = 20
    Caption = 'Transfer'#234'ncias Externas do Interno:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 11
    Top = 8
    Width = 416
    Height = 20
    Caption = 'Digite o prontu'#225'rio ou selecione o nome do interno: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 2
    Top = 272
    Width = 1089
    Height = 153
    DataSource = DsVinc_Mudanca_Cela
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = 'Data'
        Width = 70
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
        Title.Caption = 'Nome'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_UP'
        Title.Caption = 'Unidade Penal'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GALERIA'
        Title.Caption = 'Bloco Antes'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOLARIO'
        Title.Caption = 'Ala Antes'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CELA'
        Title.Caption = 'Cela Antes'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GALERIA_1'
        Title.Caption = 'Bloco Novo'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOLARIO_1'
        Title.Caption = 'Bloco Novo'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CELA_1'
        Title.Caption = 'Cela Nova'
        Width = 80
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 3
    Top = 88
    Width = 1089
    Height = 158
    DataSource = Dsvinc_transferencia_interno
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = 'Data'
        Width = 70
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
        Title.Caption = 'Nome'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORIGEM'
        Title.Caption = 'Origem'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESTINO'
        Title.Caption = 'Destino'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_DOCUMENTO'
        Title.Caption = 'Tipo Doc.'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MOTIVO_MOVIMENTACAO'
        Title.Caption = 'Motivo'
        Width = 500
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LIBERADA'
        Title.Caption = 'Liberado'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RECEBIDA'
        Title.Caption = 'Recebido'
        Width = 60
        Visible = True
      end>
  end
  object EditLocalizar: TEdit
    Left = 11
    Top = 32
    Width = 127
    Height = 28
    Anchors = [akLeft, akTop, akRight]
    CharCase = ecUpperCase
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnExit = EditLocalizarExit
  end
  object BitBtn1: TBitBtn
    Left = 575
    Top = 29
    Width = 97
    Height = 33
    Caption = 'Localizar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 496
    Top = 428
    Width = 121
    Height = 41
    Caption = 'Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn2Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00344446333334
      44433333FFFF333333FFFF33000033AAA43333332A4333338833F33333883F33
      00003332A46333332A4333333383F33333383F3300003332A2433336A6633333
      33833F333383F33300003333AA463362A433333333383F333833F33300003333
      6AA4462A46333333333833FF833F33330000333332AA22246333333333338333
      33F3333300003333336AAA22646333333333383333F8FF33000033444466AA43
      6A43333338FFF8833F383F330000336AA246A2436A43333338833F833F383F33
      000033336A24AA442A433333333833F33FF83F330000333333A2AA2AA4333333
      333383333333F3330000333333322AAA4333333333333833333F333300003333
      333322A4333333333333338333F333330000333333344A433333333333333338
      3F333333000033333336A24333333333333333833F333333000033333336AA43
      33333333333333833F3333330000333333336663333333333333333888333333
      0000}
    NumGlyphs = 2
  end
  object DBLookupComboBoxInterno: TDBLookupComboBox
    Left = 140
    Top = 32
    Width = 433
    Height = 28
    Color = clBlack
    DataField = 'ID_INTERNO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    KeyField = 'ID_INTERNO'
    ListField = 'NOME_INTERNO'
    ListSource = DM.DsInterno
    ParentFont = False
    TabOrder = 1
  end
  object DsVinc_Mudanca_Cela: TDataSource
    DataSet = CdsVinc_Mudanca_Cela
    Left = 900
    Top = 101
  end
  object DspVinc_Mudanca_Cela: TDataSetProvider
    DataSet = SqlVinc_Mudanca_Cela
    Left = 719
    Top = 141
  end
  object SqlVinc_Mudanca_Cela: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT i.rgi, i.nome_interno, up.id_up, up.nome_up, vmc.id_pavil' +
        'hao_antes,'
      ' vmc.id_galeria_antes, g1.galeria,'
      ' vmc.id_solario_antes, s1.solario,'
      ' vmc.id_cela_antes, c1.cela,'
      ' vmc.id_pavilhao_novo,'
      ' vmc.id_galeria_novo, g2.galeria,'
      ' vmc.id_solario_novo, s2.solario,'
      ' vmc.id_cela_novo, c2.cela,'
      ' mc.data'
      'from vinc_mudanca_cela vmc'
      'inner join interno i on (vmc.id_interno = i.id_interno)'
      
        'inner join mudanca_cela mc on (vmc.id_mudanca_cela = mc.id_mudan' +
        'ca_cela)'
      'left outer join unidade_penal up on (mc.id_up = up.id_up)'
      
        'left outer join solario s1 on (vmc.id_solario_antes = s1.id_sola' +
        'rio)'
      
        'left outer join galeria g1 on (vmc.id_galeria_antes = g1.id_gale' +
        'ria)'
      'left outer join cela c1 on (vmc.id_cela_antes = c1.id_cela)'
      
        'left outer join solario s2 on (vmc.id_solario_novo = s2.id_solar' +
        'io)'
      
        'left outer join galeria g2 on (vmc.id_galeria_novo = g2.id_galer' +
        'ia)'
      'left outer join cela c2 on (vmc.id_cela_novo = c2.id_cela)')
    SQLConnection = DM.SQLConnect
    Left = 714
    Top = 95
  end
  object CdsVinc_Mudanca_Cela: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspVinc_Mudanca_Cela'
    Left = 812
    Top = 96
    object CdsVinc_Mudanca_CelaRGI: TStringField
      FieldName = 'RGI'
      Size = 30
    end
    object CdsVinc_Mudanca_CelaNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 100
    end
    object CdsVinc_Mudanca_CelaID_UP: TIntegerField
      FieldName = 'ID_UP'
    end
    object CdsVinc_Mudanca_CelaNOME_UP: TStringField
      FieldName = 'NOME_UP'
      Size = 50
    end
    object CdsVinc_Mudanca_CelaID_PAVILHAO_ANTES: TIntegerField
      FieldName = 'ID_PAVILHAO_ANTES'
    end
    object CdsVinc_Mudanca_CelaID_GALERIA_ANTES: TIntegerField
      FieldName = 'ID_GALERIA_ANTES'
    end
    object CdsVinc_Mudanca_CelaGALERIA: TStringField
      FieldName = 'GALERIA'
      Size = 50
    end
    object CdsVinc_Mudanca_CelaID_SOLARIO_ANTES: TIntegerField
      FieldName = 'ID_SOLARIO_ANTES'
    end
    object CdsVinc_Mudanca_CelaSOLARIO: TStringField
      FieldName = 'SOLARIO'
      Size = 50
    end
    object CdsVinc_Mudanca_CelaID_CELA_ANTES: TIntegerField
      FieldName = 'ID_CELA_ANTES'
    end
    object CdsVinc_Mudanca_CelaCELA: TStringField
      FieldName = 'CELA'
      Size = 50
    end
    object CdsVinc_Mudanca_CelaID_PAVILHAO_NOVO: TIntegerField
      FieldName = 'ID_PAVILHAO_NOVO'
    end
    object CdsVinc_Mudanca_CelaID_GALERIA_NOVO: TIntegerField
      FieldName = 'ID_GALERIA_NOVO'
    end
    object CdsVinc_Mudanca_CelaGALERIA_1: TStringField
      FieldName = 'GALERIA_1'
      Size = 50
    end
    object CdsVinc_Mudanca_CelaID_SOLARIO_NOVO: TIntegerField
      FieldName = 'ID_SOLARIO_NOVO'
    end
    object CdsVinc_Mudanca_CelaSOLARIO_1: TStringField
      FieldName = 'SOLARIO_1'
      Size = 50
    end
    object CdsVinc_Mudanca_CelaID_CELA_NOVO: TIntegerField
      FieldName = 'ID_CELA_NOVO'
    end
    object CdsVinc_Mudanca_CelaCELA_1: TStringField
      FieldName = 'CELA_1'
      Size = 50
    end
    object CdsVinc_Mudanca_CelaDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
  end
  object Dsvinc_transferencia_interno: TDataSource
    DataSet = Cdsvinc_transferencia_interno
    Left = 765
    Top = 239
  end
  object Dspvinc_transferencia_interno: TDataSetProvider
    DataSet = Sqlvinc_transferencia_interno
    Left = 641
    Top = 254
  end
  object Sqlvinc_transferencia_interno: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select i.rgi, i.nome_interno,'
      
        'IIF(ti.TIPO_DESTINO<>'#39'U'#39', '#39'LOCAL: '#39'||D.DESTINO, UO.NOME_UP) ORIG' +
        'EM,'
      
        'IIF(ti.TIPO_DESTINO<>'#39'U'#39', '#39'LOCAL: '#39'||D.DESTINO, UP.NOME_UP) DEST' +
        'INO,'
      
        'ti.data ,ti.tipo_documento, ti.motivo_movimentacao, ti.liberada,' +
        ' ti.recebida'
      'from vinc_transferencia_interno vti'
      'inner join interno i on (vti.id_interno = i.id_interno)'
      
        'inner join transferencia_interno ti on (vti.id_transferencia_int' +
        'erno = ti.id_transferencia_interno)'
      'LEFT OUTER JOIN DESTINO D ON (D.ID_DESTINO = ti.ID_DESTINO)'
      
        'LEFT OUTER JOIN UNIDADE_PENAL UP ON (ti.ID_UP_DESTINO = UP.ID_UP' +
        ')'
      'LEFT OUTER JOIN UNIDADE_PENAL UO ON (ti.id_origem = UO.ID_UP)'
      '')
    SQLConnection = DM.SQLConnect
    Left = 641
    Top = 207
  end
  object SqlExecute: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select i.rgi, i.nome_interno,'
      
        'IIF(ti.TIPO_DESTINO<>'#39'U'#39', '#39'LOCAL: '#39'||D.DESTINO, UO.NOME_UP) ORIG' +
        'EM,'
      
        'IIF(ti.TIPO_DESTINO<>'#39'U'#39', '#39'LOCAL: '#39'||D.DESTINO, UP.NOME_UP) DEST' +
        'INO,'
      
        'ti.data ,ti.tipo_documento, ti.motivo_movimentacao, ti.liberada,' +
        ' ti.recebida'
      'from vinc_transferencia_interno vti'
      'inner join interno i on (vti.id_interno = i.id_interno)'
      
        'inner join transferencia_interno ti on (vti.id_transferencia_int' +
        'erno = ti.id_transferencia_interno)'
      'LEFT OUTER JOIN DESTINO D ON (D.ID_DESTINO = ti.ID_DESTINO)'
      
        'LEFT OUTER JOIN UNIDADE_PENAL UP ON (ti.ID_UP_DESTINO = UP.ID_UP' +
        ')'
      'LEFT OUTER JOIN UNIDADE_PENAL UO ON (ti.id_origem = UO.ID_UP)'
      '')
    SQLConnection = DM.SQLConnect
    Left = 489
    Top = 207
  end
  object Cdsvinc_transferencia_interno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dspvinc_transferencia_interno'
    Left = 744
    Top = 192
    object Cdsvinc_transferencia_internoRGI: TStringField
      FieldName = 'RGI'
      Size = 30
    end
    object Cdsvinc_transferencia_internoNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 100
    end
    object Cdsvinc_transferencia_internoORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 107
    end
    object Cdsvinc_transferencia_internoDESTINO: TStringField
      FieldName = 'DESTINO'
      Size = 107
    end
    object Cdsvinc_transferencia_internoDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object Cdsvinc_transferencia_internoTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 50
    end
    object Cdsvinc_transferencia_internoMOTIVO_MOVIMENTACAO: TStringField
      FieldName = 'MOTIVO_MOVIMENTACAO'
      Size = 8192
    end
    object Cdsvinc_transferencia_internoLIBERADA: TStringField
      FieldName = 'LIBERADA'
      Size = 1
    end
    object Cdsvinc_transferencia_internoRECEBIDA: TStringField
      FieldName = 'RECEBIDA'
      Size = 1
    end
  end
  object SqlExecute2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT i.rgi, i.nome_interno, up.id_up, up.nome_up, vmc.id_pavil' +
        'hao_antes,'
      ' vmc.id_galeria_antes, g1.galeria,'
      ' vmc.id_solario_antes, s1.solario,'
      ' vmc.id_cela_antes, c1.cela,'
      ' vmc.id_pavilhao_novo,'
      ' vmc.id_galeria_novo, g2.galeria,'
      ' vmc.id_solario_novo, s2.solario,'
      ' vmc.id_cela_novo, c2.cela,'
      ' mc.data'
      'from vinc_mudanca_cela vmc'
      'inner join interno i on (vmc.id_interno = i.id_interno)'
      
        'inner join mudanca_cela mc on (vmc.id_mudanca_cela = mc.id_mudan' +
        'ca_cela)'
      'left outer join unidade_penal up on (mc.id_up = up.id_up)'
      
        'left outer join solario s1 on (vmc.id_solario_antes = s1.id_sola' +
        'rio)'
      
        'left outer join galeria g1 on (vmc.id_galeria_antes = g1.id_gale' +
        'ria)'
      'left outer join cela c1 on (vmc.id_cela_antes = c1.id_cela)'
      
        'left outer join solario s2 on (vmc.id_solario_novo = s2.id_solar' +
        'io)'
      
        'left outer join galeria g2 on (vmc.id_galeria_novo = g2.id_galer' +
        'ia)'
      'left outer join cela c2 on (vmc.id_cela_novo = c2.id_cela)')
    Left = 816
    Top = 144
  end
end
