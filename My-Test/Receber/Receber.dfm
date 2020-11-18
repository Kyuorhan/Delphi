object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Form7'
  ClientHeight = 274
  ClientWidth = 385
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbValor: TLabel
    Left = 55
    Top = 85
    Width = 79
    Height = 13
    Caption = 'Inserir um Valor:'
  end
  object lbVencimento: TLabel
    Left = 238
    Top = 78
    Width = 100
    Height = 13
    Caption = 'Data de Vencimento:'
  end
  object lbPagamento: TLabel
    Left = 239
    Top = 124
    Width = 99
    Height = 13
    Caption = 'Data de Pagamento:'
  end
  object lbUsuario: TLabel
    Left = 32
    Top = 16
    Width = 36
    Height = 13
    Caption = 'Usu'#225'rio'
  end
  object Label1: TLabel
    Left = 32
    Top = 205
    Width = 79
    Height = 13
    Caption = 'Dias de Atrasos:'
  end
  object lbJuros: TLabel
    Left = 145
    Top = 205
    Width = 30
    Height = 13
    Caption = 'Juros:'
  end
  object Label2: TLabel
    Left = 270
    Top = 178
    Width = 68
    Height = 13
    Caption = 'Total a Pagar:'
  end
  object edtValor: TEdit
    Left = 55
    Top = 104
    Width = 151
    Height = 21
    TabOrder = 1
  end
  object btnProcessar: TButton
    Left = 80
    Top = 143
    Width = 95
    Height = 33
    Caption = 'Processar'
    TabOrder = 2
    OnClick = btnProcessarClick
  end
  object edtUser: TEdit
    Left = 32
    Top = 35
    Width = 321
    Height = 21
    TabOrder = 0
  end
  object edtDias_Atrasos: TEdit
    Left = 32
    Top = 224
    Width = 90
    Height = 21
    TabOrder = 3
  end
  object edtTotal_Pagar: TEdit
    Left = 263
    Top = 197
    Width = 90
    Height = 21
    TabOrder = 4
  end
  object edtJuros: TEdit
    Left = 145
    Top = 224
    Width = 90
    Height = 21
    TabOrder = 5
  end
  object JvDatePagamento: TJvDateEdit
    Left = 238
    Top = 143
    Width = 121
    Height = 21
    ShowNullDate = False
    TabOrder = 6
  end
  object JvDateVencimento: TJvDateEdit
    Left = 238
    Top = 97
    Width = 121
    Height = 21
    ShowNullDate = False
    TabOrder = 7
  end
end
