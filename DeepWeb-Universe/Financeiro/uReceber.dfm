object frmReceber: TfrmReceber
  Left = 0
  Top = 0
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Contas a Receber'
  ClientHeight = 451
  ClientWidth = 449
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object lbCliente: TLabel
    Left = 26
    Top = 144
    Width = 41
    Height = 13
    Caption = 'CLIENTE'
  end
  object lbValor: TLabel
    Left = 34
    Top = 206
    Width = 33
    Height = 13
    Caption = 'VALOR'
  end
  object lbPagamento: TLabel
    Left = 287
    Top = 244
    Width = 62
    Height = 13
    Caption = 'PAGAMENTO'
  end
  object lbVencimento: TLabel
    Left = 287
    Top = 198
    Width = 65
    Height = 13
    Caption = 'VENCIMENTO'
  end
  object lbJuros: TLabel
    Left = 143
    Top = 311
    Width = 33
    Height = 13
    Caption = 'JUROS'
  end
  object Label1: TLabel
    Left = 297
    Top = 305
    Width = 79
    Height = 13
    Caption = 'TOTAL A PAGAR'
  end
  object Label2: TLabel
    Left = 23
    Top = 311
    Width = 68
    Height = 13
    Caption = 'DIAS ATRASO'
  end
  object edtCliente: TEdit
    Left = 23
    Top = 163
    Width = 402
    Height = 21
    TabOrder = 0
  end
  object edtJuros: TEdit
    Left = 143
    Top = 330
    Width = 98
    Height = 21
    TabOrder = 2
  end
  object edtTotal: TEdit
    Left = 288
    Top = 324
    Width = 97
    Height = 21
    TabOrder = 3
  end
  object btnProcessar: TButton
    Left = 79
    Top = 263
    Width = 107
    Height = 29
    Caption = 'PROCESSAR'
    TabOrder = 1
    OnClick = btnProcessarClick
  end
  object edtDiasAtraso: TEdit
    Left = 23
    Top = 330
    Width = 98
    Height = 21
    TabOrder = 4
  end
  object JvDateVencimento: TJvDateEdit
    Left = 270
    Top = 217
    Width = 140
    Height = 21
    ShowNullDate = False
    TabOrder = 5
  end
  object JvDatePagamento: TJvDateEdit
    Left = 270
    Top = 263
    Width = 140
    Height = 21
    ShowNullDate = False
    TabOrder = 6
  end
  object JvCalTotal: TJvCalcEdit
    Left = 31
    Top = 225
    Width = 202
    Height = 19
    Flat = True
    ParentFlat = False
    ButtonFlat = True
    DisplayFormat = ',0.00;-,0.00'
    ImageKind = ikCustom
    TabOrder = 7
    DecimalPlacesAlwaysShown = False
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 432
    Width = 449
    Height = 19
    Panels = <
      item
        Width = 50
      end>
    ExplicitTop = 372
  end
  object JvPanel1: TJvPanel
    Left = 0
    Top = 0
    Width = 449
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    Color = 13095379
    ParentBackground = False
    TabOrder = 9
    ExplicitLeft = -145
    ExplicitWidth = 594
  end
  object JvPanel2: TJvPanel
    Left = 0
    Top = 382
    Width = 449
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    Color = cl3DLight
    ParentBackground = False
    TabOrder = 10
    ExplicitTop = 407
    ExplicitWidth = 444
    object btnSalvar: TSpeedButton
      Left = 10
      Top = 0
      Width = 50
      Height = 50
      Action = actSalvar1
      Flat = True
      OnClick = btnSalvarClick
    end
    object btnCancelar: TSpeedButton
      Left = 78
      Top = 0
      Width = 50
      Height = 50
      Action = actCancelar
      Flat = True
      OnClick = btnCancelarClick
    end
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 408
    Top = 8
  end
  object ActionList2: TActionList
    Images = frmPrincipal.ImageList48
    Left = 400
    Top = 72
    object actSalvar1: TAction
      ImageIndex = 0
      OnExecute = actSalvar1Execute
    end
    object actCancelar: TAction
      ImageIndex = 1
      OnExecute = actCancelarExecute
    end
  end
end
