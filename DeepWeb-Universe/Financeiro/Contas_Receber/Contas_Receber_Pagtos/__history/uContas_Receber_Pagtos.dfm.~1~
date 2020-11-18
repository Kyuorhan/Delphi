object frmContas_Pagar: TfrmContas_Pagar
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object lbNumero: TLabel
    Left = 32
    Top = 143
    Width = 43
    Height = 13
    Caption = 'N'#218'MERO'
  end
  object lbData: TLabel
    Left = 144
    Top = 143
    Width = 27
    Height = 13
    Caption = 'DATA'
  end
  object lbVencimento: TLabel
    Left = 248
    Top = 143
    Width = 65
    Height = 13
    Caption = 'VENCIMENTO'
  end
  object lbValor: TLabel
    Left = 354
    Top = 143
    Width = 33
    Height = 13
    Caption = 'VALOR'
  end
  object lbFornecedor: TLabel
    Left = 32
    Top = 189
    Width = 69
    Height = 13
    Caption = 'FORNECEDOR'
  end
  object lbDocumento: TLabel
    Left = 248
    Top = 189
    Width = 67
    Height = 13
    Caption = 'DOCUMENTO '
  end
  object Label1: TLabel
    Left = 39
    Top = 235
    Width = 57
    Height = 13
    Caption = 'HIST'#211'RICO'
  end
  object Label2: TLabel
    Left = 39
    Top = 281
    Width = 93
    Height = 13
    Caption = 'PLANO DE CONTAS'
  end
  object Label3: TLabel
    Left = 39
    Top = 327
    Width = 38
    Height = 13
    Caption = 'CIDADE'
  end
  object Label4: TLabel
    Left = 39
    Top = 373
    Width = 84
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
  end
  object Edit1: TEdit
    Left = 32
    Top = 162
    Width = 98
    Height = 21
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object JvDateData: TJvDateEdit
    Left = 144
    Top = 162
    Width = 89
    Height = 21
    ShowNullDate = False
    TabOrder = 1
    OnKeyPress = Edit1KeyPress
  end
  object JvDateVencimento: TJvDateEdit
    Left = 248
    Top = 162
    Width = 89
    Height = 21
    ShowNullDate = False
    TabOrder = 2
    OnKeyPress = Edit1KeyPress
  end
  object edtFornecedor: TEdit
    Left = 30
    Top = 208
    Width = 203
    Height = 21
    TabOrder = 4
    OnKeyPress = Edit1KeyPress
  end
  object edtDocumento: TEdit
    Left = 248
    Top = 208
    Width = 185
    Height = 21
    TabOrder = 6
    OnKeyPress = Edit1KeyPress
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
    OnKeyPress = Edit1KeyPress
  end
  object edtHistorico: TEdit
    Left = 39
    Top = 254
    Width = 386
    Height = 21
    TabOrder = 5
    OnKeyPress = Edit1KeyPress
  end
  object edtPlanoContas: TEdit
    Left = 39
    Top = 300
    Width = 386
    Height = 21
    TabOrder = 7
    OnKeyPress = Edit1KeyPress
  end
  object edtCidade: TComboBox
    Left = 39
    Top = 346
    Width = 386
    Height = 21
    TabOrder = 8
    OnKeyPress = Edit1KeyPress
  end
  object edtCentroCusto: TComboBox
    Left = 39
    Top = 392
    Width = 386
    Height = 21
    TabOrder = 9
    OnKeyPress = Edit1KeyPress
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
    object btnSalvar: TSpeedButton
      Left = 10
      Top = 0
      Width = 50
      Height = 50
      Action = actSalvar
      Flat = True
    end
    object btnCancelar: TSpeedButton
      Left = 78
      Top = 0
      Width = 50
      Height = 50
      Action = actCancel
      Flat = True
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
