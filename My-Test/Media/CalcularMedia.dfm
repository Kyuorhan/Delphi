object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Form7'
  ClientHeight = 330
  ClientWidth = 529
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbCodigo: TLabel
    Left = 24
    Top = 61
    Width = 76
    Height = 13
    Caption = 'Digite o C'#243'digo:'
  end
  object Label2: TLabel
    Left = 176
    Top = 64
    Width = 97
    Height = 13
    Caption = 'Resultado da M?dia:'
  end
  object lbIdade: TLabel
    Left = 24
    Top = 107
    Width = 91
    Height = 13
    Caption = 'Digite a sua Idade:'
  end
  object lbMedia1: TLabel
    Left = 24
    Top = 150
    Width = 111
    Height = 13
    Caption = 'Digite a Primeira M?dia:'
  end
  object lbMedia2: TLabel
    Left = 24
    Top = 193
    Width = 115
    Height = 13
    Caption = 'Digite a Segunda M?dia:'
  end
  object lbMedia3: TLabel
    Left = 24
    Top = 236
    Width = 112
    Height = 13
    Caption = 'Digite a Terceira M?dia:'
  end
  object lbMedia4: TLabel
    Left = 24
    Top = 278
    Width = 107
    Height = 13
    Caption = 'Digite a Quarta M?dia:'
  end
  object Label8: TLabel
    Left = 88
    Top = 13
    Width = 70
    Height = 13
    Caption = 'Digite o Nome:'
  end
  object edtNome: TEdit
    Left = 88
    Top = 32
    Width = 297
    Height = 21
    TabOrder = 0
    Text = 'edtNome'
  end
  object edtCodigo: TEdit
    Left = 24
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtIdade: TEdit
    Left = 24
    Top = 126
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edtMedia1: TEdit
    Left = 24
    Top = 169
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edtMedia2: TEdit
    Left = 24
    Top = 212
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object edtMedia3: TEdit
    Left = 24
    Top = 255
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object edtMedia4: TEdit
    Left = 24
    Top = 297
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object edtResultado: TMemo
    Left = 176
    Top = 83
    Width = 329
    Height = 217
    TabOrder = 7
  end
  object btnCalcular: TButton
    Left = 407
    Top = 25
    Width = 81
    Height = 35
    Caption = 'CALCULAR'
    TabOrder = 8
    OnClick = btnCalcularClick
  end
end
