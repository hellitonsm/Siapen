inherited FrmFinalizarMovimentoPatrimonio: TFrmFinalizarMovimentoPatrimonio
  Left = 312
  Top = 204
  Width = 598
  Height = 441
  ActiveControl = EditSenha
  Caption = 'Finalizar o Movimento'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelGeral: TPanel
    Width = 582
    Height = 362
    object Bevel1: TBevel
      Left = 8
      Top = 159
      Width = 565
      Height = 35
    end
    object Bevel2: TBevel
      Left = 8
      Top = 2
      Width = 565
      Height = 40
    end
    object LabelFuncionario: TLabel
      Left = 40
      Top = 23
      Width = 76
      Height = 13
      Caption = 'Funcion'#225'rio: Tal'
    end
    object LabelDocumento: TLabel
      Left = 40
      Top = 4
      Width = 131
      Height = 13
      Caption = 'Numero do Documento: Tal'
    end
    object Label3: TLabel
      Left = 16
      Top = 167
      Width = 107
      Height = 13
      Caption = 'Senha do Funcion'#225'rio:'
    end
    object Label4: TLabel
      Left = 32
      Top = 200
      Width = 58
      Height = 13
      Caption = 'Observa'#231#227'o'
    end
    object Label5: TLabel
      Left = 32
      Top = 240
      Width = 82
      Height = 13
      Caption = 'Dados Adicionais'
    end
    object Label1: TLabel
      Left = 32
      Top = 280
      Width = 109
      Height = 13
      Caption = 'Informa'#231#245'es da Miss'#227'o'
    end
    object DBGrid1: TDBGrid
      Left = 7
      Top = 48
      Width = 568
      Height = 105
      Options = [dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'IDPATRIMONIO'
          Title.Caption = 'ID'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OBSERVACAO'
          Title.Caption = 'Nome'
          Width = 400
          Visible = True
        end>
    end
    object EditSenha: TEdit
      Left = 128
      Top = 167
      Width = 113
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
      Text = '*********************'
      OnChange = EditSenhaChange
    end
    object Button1: TButton
      Left = 368
      Top = 164
      Width = 201
      Height = 25
      Caption = 'Autorizar com Biometria Digital'
      TabOrder = 2
      OnClick = Button1Click
    end
    object EditObservacao: TEdit
      Left = 32
      Top = 216
      Width = 529
      Height = 21
      TabOrder = 3
    end
    object EditDadosAdicionais: TEdit
      Left = 32
      Top = 256
      Width = 529
      Height = 21
      TabOrder = 4
    end
    object BitBtnConfirma: TBitBtn
      Left = 104
      Top = 328
      Width = 150
      Height = 25
      Caption = 'Conf&irma'
      Enabled = False
      TabOrder = 5
      Kind = bkOK
    end
    object BitBtnCancela: TBitBtn
      Left = 304
      Top = 328
      Width = 150
      Height = 25
      Caption = 'Ca&ncela'
      TabOrder = 6
      Kind = bkAbort
    end
    object BtnAutoriza: TButton
      Left = 246
      Top = 164
      Width = 73
      Height = 25
      Caption = 'Autorizar'
      TabOrder = 7
      OnClick = BtnAutorizaClick
    end
    object EditMissao: TEdit
      Left = 32
      Top = 296
      Width = 529
      Height = 21
      TabOrder = 8
      Text = 'NUMERO DA O.M.P.: 0000000   OBJETIVO:________________'
    end
    object PanelDataDev: TPanel
      Left = 321
      Top = 5
      Width = 249
      Height = 26
      TabOrder = 9
      Visible = False
      object Label2: TLabel
        Left = 10
        Top = 4
        Width = 143
        Height = 13
        Caption = 'Data prevista para devolu'#231#227'o:'
      end
      object MaskEditData: TMaskEdit
        Left = 168
        Top = 2
        Width = 73
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '  /  /    '
      end
    end
  end
  inherited PanelTitulo: TPanel
    Width = 582
    inherited Image2: TImage
      Width = 580
    end
  end
  object SqlExecute: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.SQLConnect
    Left = 376
    Top = 8
  end
  object DspExecute: TDataSetProvider
    DataSet = SqlExecute
    Left = 404
    Top = 8
  end
  object CdsExecute: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPExecute'
    Left = 432
    Top = 8
  end
  object DsExecute: TDataSource
    DataSet = CdsExecute
    Left = 460
    Top = 8
  end
end
