inherited FrmDetracao: TFrmDetracao
  Caption = 'Detra'#231#227'o / Desconto na pena definitiva aplicada'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBotoes: TPanel
    inherited DBNavigator1: TDBNavigator
      DataSource = DsConsulta
      Hints.Strings = ()
    end
  end
  inherited PanelModeloCadastro: TPanel
    inherited PageControlModeloCadastro: TPageControl
      inherited TabSheetCadastro: TTabSheet
        inherited PanelCadastro: TPanel
          object Label2: TLabel
            Left = 22
            Top = 12
            Width = 11
            Height = 13
            Caption = 'ID'
            FocusControl = dbeditcodigo
          end
          object Label7: TLabel
            Left = 22
            Top = 52
            Width = 33
            Height = 13
            Caption = 'Interno'
          end
          object Label4: TLabel
            Left = 368
            Top = 12
            Width = 100
            Height = 13
            Caption = 'Data do Lan'#231'amento'
          end
          object lbl7: TLabel
            Left = 76
            Top = 12
            Width = 103
            Height = 13
            Caption = 'Funcion'#225'rio Registrou'
          end
          object Label3: TLabel
            Left = 24
            Top = 136
            Width = 169
            Height = 13
            Caption = 'Motivo / Referencia / Observa'#231#245'es'
          end
          object Label5: TLabel
            Left = 24
            Top = 263
            Width = 52
            Height = 13
            Caption = 'Data inicial'
          end
          object Label6: TLabel
            Left = 144
            Top = 262
            Width = 45
            Height = 13
            Caption = 'Data final'
          end
          object Label8: TLabel
            Left = 129
            Top = 284
            Width = 6
            Height = 13
            Caption = #224
          end
          object Label75: TLabel
            Left = 408
            Top = 262
            Width = 16
            Height = 13
            Caption = 'Dia'
          end
          object Label74: TLabel
            Left = 328
            Top = 262
            Width = 20
            Height = 13
            Caption = 'M'#234's'
          end
          object Label73: TLabel
            Left = 250
            Top = 262
            Width = 19
            Height = 13
            Caption = 'Ano'
          end
          object Label9: TLabel
            Left = 24
            Top = 96
            Width = 108
            Height = 13
            Caption = 'Numero do documento'
          end
          object DBText1: TDBText
            Left = 24
            Top = 345
            Width = 625
            Height = 17
            Cursor = crHandPoint
            DataField = 'NOME_ARQUIVO'
            DataSource = DsCadastro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            OnClick = BtnVisuzalizarDocDigitalizadorClick
          end
          object dbeditcodigo: TDBEdit
            Left = 22
            Top = 28
            Width = 49
            Height = 21
            DataField = 'IDDETRACAO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 0
          end
          object DBLookupComboBoxNomeInterno: TDBLookupComboBox
            Left = 22
            Top = 68
            Width = 452
            Height = 21
            DataField = 'ID_INTERNO'
            DataSource = DsCadastro
            KeyField = 'ID_INTERNO'
            ListField = 'NOME_INTERNO'
            ListSource = DM.DsInterno
            TabOrder = 3
          end
          object adpDBDateTimePicker1: TadpDBDateTimePicker
            Left = 368
            Top = 28
            Width = 106
            Height = 21
            Date = 41038.574410995370000000
            Time = 41038.574410995370000000
            Enabled = False
            TabOrder = 2
            DataField = 'DATA_LANCAMENTO'
            DataSource = DsCadastro
            ReadOnly = False
          end
          object DBLookupComboBoxFuncionario: TDBLookupComboBox
            Left = 76
            Top = 28
            Width = 286
            Height = 21
            DataField = 'ID_FUNCIONARIO'
            DataSource = DsCadastro
            Enabled = False
            KeyField = 'ID_FUNCIONARIO'
            ListField = 'NOME_FUNCIONARIO'
            ListSource = DM.DsFuncionario
            TabOrder = 1
          end
          object DBMemo1: TDBMemo
            Left = 22
            Top = 151
            Width = 450
            Height = 82
            DataField = 'MOTIVO'
            DataSource = DsCadastro
            TabOrder = 5
          end
          object adpDBDateTimePickerFinal: TadpDBDateTimePicker
            Left = 144
            Top = 278
            Width = 97
            Height = 21
            Date = 41038.000000000000000000
            Time = 41038.000000000000000000
            TabOrder = 8
            DataField = 'DATA_FINAL'
            DataSource = DsCadastro
            ReadOnly = False
          end
          object DBEdit7: TDBEdit
            Left = 408
            Top = 278
            Width = 65
            Height = 21
            DataField = 'DIA'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 11
          end
          object DBEdit6: TDBEdit
            Left = 328
            Top = 278
            Width = 73
            Height = 21
            DataField = 'MES'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 10
          end
          object DBEdit5: TDBEdit
            Left = 250
            Top = 278
            Width = 65
            Height = 21
            DataField = 'ANO'
            DataSource = DsCadastro
            Enabled = False
            TabOrder = 9
          end
          object DBEdit1: TDBEdit
            Left = 24
            Top = 112
            Width = 449
            Height = 21
            DataField = 'NUMERO_DOCUMENTO'
            DataSource = DsCadastro
            TabOrder = 4
          end
          object BtnIncluirDocDigitalizado: TBitBtn
            Left = 24
            Top = 310
            Width = 200
            Height = 30
            Caption = 'Arquivo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
            TabStop = False
            OnClick = BtnIncluirDocDigitalizadoClick
            Glyph.Data = {
              36020000424D3602000000000000360100002800000010000000100000000100
              08000000000000010000120B0000120B0000400000004000000000000000FFFF
              FF00FF00FF00A4676900A56B5F00A7756B00BC826800F2E7E100D1926D00C078
              4900DA9D7500E7AB7900EDC79500FFEFD700FBE6C000F8E0AD00FFFCEE00D1E9
              F000A4D7E600ADDCEB00B0DDEB005CAAC60083C1D800ACDAEA00B2DCEA00BDE1
              ED00CAE5EE00395662004E687200A6D4E700096B99000D6F9D00167DAD00155F
              81003596C1005DA9CB00162830007FBBD7009DCFE600A9D3E600E7F7FE000066
              980000649700015F90000160900002699C000262900005699A00056797000566
              95001075A500359FD5001B44580045A0CC0049A1CB005FB5E0002C4F600073C2
              EB0073C0E7009FD4EE00B6DDF000BDE1F300A1D1EB00ACD8F000020202020202
              020202020202020202023131020202020231313131313131020231331F022402
              24213B3E2E233F310202313A221C1B3438203C3D2B2528310202312731240224
              022F37312E3139310202312C0202020232363102020231353102020202020231
              1D3102020202023126310202020202311A3102030303022A1131020202020231
              183102030C0302291931020202020231123102030F0302291731020202020231
              133102050E0302291431020202020231153102060D03022D1631020202020202
              31310208100302301E020202020202020202020A070402020202020202020202
              0202020B09020202020202020202020202020208020202020202}
            Style = bsWin31
          end
          object BtnVisuzalizarDocDigitalizador: TBitBtn
            Left = 232
            Top = 309
            Width = 200
            Height = 30
            Caption = 'Visualizar Arquivo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 13
            TabStop = False
            OnClick = BtnVisuzalizarDocDigitalizadorClick
            Glyph.Data = {
              5E020000424D5E020000000000005E0100002800000010000000100000000100
              08000000000000010000120B0000120B00004A0000004A00000000000000FFFF
              FF00FF00FF00FCFCFC00F6F6F600F3F3F300F0F0F000ECECEC00EBEBEB00EAEA
              EA00E8E8E800E4E4E400E2E2E200E1E1E100E0E0E000DFDFDF00DEDEDE00D9D9
              D900D6D6D600D5D5D500D3D3D300D2D2D200D1D1D100D0D0D000CECECE00CCCC
              CC00C9C9C900C6C6C600C5C5C500C4C4C400C3C3C300C2C2C200C1C1C100BFBF
              BF00BEBEBE00BCBCBC00B8B8B800B7B7B700B6B6B600B5B5B500B2B2B200B0B0
              B000AEAEAE00ADADAD00ACACAC00ABABAB00AAAAAA00A9A9A900A8A8A800A7A7
              A700A6A6A600A5A5A500A4A4A400A3A3A300A2A2A2009E9E9E009D9D9D009C9C
              9C009898980097979700929292008E8E8E008484840083838300828282008181
              8100808080007F7F7F007E7E7E007878780077777700767676006A6A6A006363
              630002492F020202020202020202020202023B3F462B02020202020202020202
              020234303E472C020202020202020202020202313041462A0202020202020202
              02020202313240453202020202020202020202020230334248023D2A22250202
              0202020202022E163A381108090812240202020202020220210E09192D0E0406
              370202020202022E13140B25440D03011802020202020220133228394329220B
              0D2A02020202021A163C4343434444190A2902020202021D11282436421F140A
              0B290202020202290F0F183543150A0717020202020202021C010523391E110C
              3202020202020202021B0910131113260202020202020202020229271E1F0202
              0202}
            Style = bsWin31
          end
          object adpDBDateTimePickerInicial: TadpDBDateTimePicker
            Left = 24
            Top = 279
            Width = 97
            Height = 21
            Date = 41038.000000000000000000
            Time = 41038.000000000000000000
            TabOrder = 7
            DataField = 'DATA_INICIAL'
            DataSource = DsCadastro
            ReadOnly = False
          end
          object Button1: TButton
            Left = 25
            Top = 236
            Width = 75
            Height = 25
            Caption = 'Calcular'
            TabOrder = 6
            OnClick = Button1Click
          end
        end
      end
      inherited TabSheetConsulta: TTabSheet
        inherited PanelConsulta: TPanel
          inherited DBGridConsulta: TDBGrid
            DataSource = DsConsulta
          end
        end
      end
    end
  end
  inherited SqlCadastro: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'IDDETRACAO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM DETRACAO'
      'WHERE IDDETRACAO = :IDDETRACAO')
  end
  inherited CdsCadastro: TClientDataSet
    IndexFieldNames = 'IDDETRACAO'
    MasterFields = 'IDDETRACAO'
    MasterSource = DsConsulta
    PacketRecords = 0
    AfterInsert = CdsCadastroAfterInsert
  end
  object DsConsulta: TDataSource
    DataSet = CdsConsulta
    OnDataChange = DsCadastroDataChange
    Left = 236
  end
  object CdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspConsulta'
    Left = 208
  end
  object DspConsulta: TDataSetProvider
    DataSet = SqlConsulta
    Left = 180
  end
  object SqlConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_UP'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'select'
      'i.nome_interno,'
      'p.NUMERO_DOCUMENTO,'
      'p.IDDETRACAO,'
      'p.ID_INTERNO'
      'from detracao p'
      'join interno i on p.id_interno = i.id_interno'
      'where i.id_up = :ID_UP'
      'order by i.nome_interno')
    Left = 152
  end
  object SaveDialogDoc: TSaveDialog
    Left = 456
    Top = 56
  end
  object OpenDialogDoc: TOpenDialog
    Left = 511
    Top = 56
  end
end
