object FrmFiltros: TFrmFiltros
  Left = 172
  Top = 68
  Caption = 'Filtros'
  ClientHeight = 370
  ClientWidth = 376
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 376
    Height = 370
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    TabWidth = 100
    object TabSheet1: TTabSheet
      Caption = 'Sele'#231#227'o'
      object Label1: TLabel
        Left = 8
        Top = 89
        Width = 38
        Height = 13
        Caption = '&Campos'
        FocusControl = ListBoxCampos
      end
      object Label5: TLabel
        Left = 8
        Top = 265
        Width = 111
        Height = 13
        Caption = '&Valor para Compara'#231#227'o'
        FocusControl = EdtValor
      end
      object Label6: TLabel
        Left = 8
        Top = 5
        Width = 45
        Height = 13
        Caption = '&Condi'#231#227'o'
        FocusControl = Memo2
      end
      object Label7: TLabel
        Left = 217
        Top = 88
        Width = 55
        Height = 13
        Caption = '&Operadores'
        FocusControl = ListBoxOper
      end
      object Label8: TLabel
        Left = 217
        Top = 206
        Width = 96
        Height = 13
        Caption = 'Combinar condi'#231#245'es'
        FocusControl = ListBoxOper
      end
      object ListBoxCampos: TListBox
        Left = 8
        Top = 104
        Width = 201
        Height = 151
        Hint = 'Doubleclick to add'
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object BtnApplyFilter: TButton
        Left = 8
        Top = 311
        Width = 75
        Height = 25
        Caption = '&Aplicar'
        TabOrder = 1
        OnClick = ApplyFilter
      end
      object BtnClear: TButton
        Left = 172
        Top = 311
        Width = 75
        Height = 25
        Caption = '&Limpar'
        TabOrder = 2
        OnClick = BtnClearClick
      end
      object BtnClose: TButton
        Left = 280
        Top = 311
        Width = 75
        Height = 25
        Caption = '&Fechar'
        TabOrder = 3
        OnClick = BtnCloseClick
      end
      object EdtValor: TEdit
        Left = 8
        Top = 280
        Width = 201
        Height = 21
        TabOrder = 4
      end
      object Memo2: TMemo
        Left = 8
        Top = 20
        Width = 345
        Height = 65
        TabOrder = 5
        OnChange = Memo1Change
        OnKeyDown = Memo1KeyDown
      end
      object ListBoxOperVisual: TListBox
        Left = 216
        Top = 104
        Width = 137
        Height = 97
        Hint = 'Seleciona o operador.'
        Color = clWhite
        ItemHeight = 13
        Items.Strings = (
          '[ Maior que ]'
          '[ Menor que ]'
          '[ Igual ]'
          '[ Maior ou Igual a ]'
          '[ Menor ou Igual a ]'
          '[ Diferente de ]'
          '[ Contenha ]')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
      object BtnMonta: TButton
        Left = 224
        Top = 276
        Width = 129
        Height = 25
        Caption = 'Monta Condi'#231#227'o'
        TabOrder = 7
        OnClick = BtnMontaClick
      end
      object ListBoxCombinarVisual: TListBox
        Left = 216
        Top = 220
        Width = 135
        Height = 37
        Hint = 'Seleciona o operador.'
        Color = clWhite
        Enabled = False
        ItemHeight = 13
        Items.Strings = (
          '[ E ]'
          '[ Ou ]')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnDblClick = ListBoxCombinarVisualDblClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Comando SQL'
      ImageIndex = 1
      object Label2: TLabel
        Left = 8
        Top = 45
        Width = 45
        Height = 13
        Caption = '&Condi'#231#227'o'
        FocusControl = Memo1
      end
      object Label4: TLabel
        Left = 8
        Top = 2
        Width = 22
        Height = 13
        Caption = '&Lista'
        FocusControl = ComboBoxLista
      end
      object Label3: TLabel
        Left = 8
        Top = 129
        Width = 55
        Height = 13
        Caption = '&Operadores'
        FocusControl = ListBoxOper
        Visible = False
      end
      object Memo1: TMemo
        Left = 8
        Top = 60
        Width = 353
        Height = 65
        TabOrder = 0
        OnChange = Memo1Change
        OnKeyDown = Memo1KeyDown
      end
      object ComboBoxLista: TComboBox
        Left = 8
        Top = 17
        Width = 353
        Height = 21
        TabOrder = 1
        OnChange = ComboBox2Change
      end
      object ListBoxOper: TListBox
        Left = 8
        Top = 144
        Width = 54
        Height = 141
        Hint = 'Seleciona o operador.'
        Color = clWhite
        ItemHeight = 13
        Items.Strings = (
          '>'
          '<'
          '= '
          '>='
          '<='
          '<>'
          'LIKE')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Visible = False
        OnDblClick = ListBoxOperDblClick
      end
      object ListBoxCombinar: TListBox
        Left = 72
        Top = 145
        Width = 81
        Height = 37
        Hint = 'Seleciona o operador.'
        Color = clWhite
        ItemHeight = 13
        Items.Strings = (
          'AND'
          'OR')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Visible = False
        OnDblClick = ListBoxOperDblClick
      end
    end
  end
end
