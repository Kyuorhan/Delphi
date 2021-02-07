object frmPagar: TfrmPagar
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Contas a Pagar'
  ClientHeight = 511
  ClientWidth = 474
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object lbNumero: TLabel
    Left = 32
    Top = 143
    Width = 41
    Height = 13
    Caption = 'N'#218'MERO'
  end
  object lbData: TLabel
    Left = 144
    Top = 143
    Width = 25
    Height = 13
    Caption = 'DATA'
  end
  object lbVencimento: TLabel
    Left = 248
    Top = 143
    Width = 63
    Height = 13
    Caption = 'VENCIMENTO'
  end
  object lbValor: TLabel
    Left = 354
    Top = 143
    Width = 31
    Height = 13
    Caption = 'VALOR'
  end
  object lbFornecedor: TLabel
    Left = 32
    Top = 189
    Width = 67
    Height = 13
    Caption = 'FORNECEDOR'
  end
  object lbDocumento: TLabel
    Left = 248
    Top = 189
    Width = 65
    Height = 13
    Caption = 'DOCUMENTO '
  end
  object Label1: TLabel
    Left = 39
    Top = 235
    Width = 55
    Height = 13
    Caption = 'HIST'#211'RICO'
  end
  object Label2: TLabel
    Left = 39
    Top = 281
    Width = 91
    Height = 13
    Caption = 'PLANO DE CONTAS'
  end
  object Label3: TLabel
    Left = 39
    Top = 327
    Width = 36
    Height = 13
    Caption = 'CIDADE'
  end
  object Label4: TLabel
    Left = 39
    Top = 373
    Width = 82
    Height = 13
    Caption = 'CENTRO CUSTOS'
  end
  object JvPanel1: TJvPanel
    Left = 0
    Top = 0
    Width = 474
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    Color = 13095379
    ParentBackground = False
    TabOrder = 11
    ExplicitLeft = -155
    ExplicitWidth = 604
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 492
    Width = 474
    Height = 19
    Panels = <
      item
        Width = 50
      end>
    ExplicitTop = 432
    ExplicitWidth = 449
  end
  object Edit1: TEdit
    Left = 32
    Top = 162
    Width = 98
    Height = 21
    TabOrder = 0
  end
  object JvDateData: TJvDateEdit
    Left = 144
    Top = 162
    Width = 89
    Height = 21
    ShowNullDate = False
    TabOrder = 1
  end
  object JvDateVencimento: TJvDateEdit
    Left = 248
    Top = 162
    Width = 89
    Height = 21
    ShowNullDate = False
    TabOrder = 2
  end
  object edtFornecedor: TEdit
    Left = 30
    Top = 208
    Width = 203
    Height = 21
    TabOrder = 4
  end
  object edtDocumento: TEdit
    Left = 248
    Top = 208
    Width = 185
    Height = 21
    TabOrder = 6
  end
  object JvCalValor: TJvCalcEdit
    Left = 352
    Top = 162
    Width = 81
    Height = 21
    ButtonFlat = True
    DisplayFormat = ',0.00;-,0.00'
    ImageKind = ikCustom
    TabOrder = 3
    DecimalPlacesAlwaysShown = False
  end
  object edtHistorico: TEdit
    Left = 39
    Top = 254
    Width = 386
    Height = 21
    TabOrder = 5
  end
  object edtPlanoContas: TEdit
    Left = 39
    Top = 300
    Width = 386
    Height = 21
    TabOrder = 7
  end
  object edtCidade: TComboBox
    Left = 39
    Top = 346
    Width = 386
    Height = 21
    TabOrder = 8
  end
  object edtCentroCusto: TComboBox
    Left = 39
    Top = 392
    Width = 386
    Height = 21
    TabOrder = 9
  end
  object JvPanel2: TJvPanel
    Left = 0
    Top = 442
    Width = 474
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    Color = cl3DLight
    ParentBackground = False
    TabOrder = 12
    ExplicitTop = 407
    ExplicitWidth = 444
    object btnSalvar: TSpeedButton
      Left = 10
      Top = 0
      Width = 50
      Height = 50
      Action = actSalvar
      Flat = True
      OnClick = btnSalvarClick
    end
    object btnCancelar: TSpeedButton
      Left = 78
      Top = 0
      Width = 50
      Height = 50
      Action = actCancel
      Flat = True
      OnClick = btnCancelarClick
    end
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 432
    Top = 8
  end
  object ActionList1: TActionList
    Images = frmPrincipal.ImageList48
    Left = 424
    Top = 64
    object actSalvar: TAction
      ImageIndex = 0
      OnExecute = actSalvarExecute
    end
    object actCancel: TAction
      ImageIndex = 1
      OnExecute = actCancelExecute
    end
  end
end
