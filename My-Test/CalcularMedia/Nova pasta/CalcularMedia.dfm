object frmMedia: TfrmMedia
  Left = 0
  Top = 0
  Caption = 'Media do Aluno'
  ClientHeight = 350
  ClientWidth = 552
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbCodigo: TLabel
    Left = 32
    Top = 69
    Width = 76
    Height = 13
    Caption = 'Digite o C'#243'digo:'
  end
  object Label2: TLabel
    Left = 184
    Top = 72
    Width = 97
    Height = 13
    Caption = 'Resultado da M?dia:'
  end
  object lbIdade: TLabel
    Left = 32
    Top = 115
    Width = 91
    Height = 13
    Caption = 'Digite a sua Idade:'
  end
  object lbMedia1: TLabel
    Left = 32
    Top = 158
    Width = 111
    Height = 13
    Caption = 'Digite a Primeira M?dia:'
  end
  object lbMedia2: TLabel
    Left = 32
    Top = 201
    Width = 115
    Height = 13
    Caption = 'Digite a Segunda M?dia:'
  end
  object lbMedia3: TLabel
    Left = 32
    Top = 244
    Width = 112
    Height = 13
    Caption = 'Digite a Terceira M?dia:'
  end
  object lbMedia4: TLabel
    Left = 32
    Top = 290
    Width = 107
    Height = 13
    Caption = 'Digite a Quarta M?dia:'
  end
  object Label8: TLabel
    Left = 96
    Top = 21
    Width = 70
    Height = 13
    Caption = 'Digite o Nome:'
  end
  object edtNome: TEdit
    Left = 96
    Top = 40
    Width = 297
    Height = 21
    TabOrder = 0
    Text = 'edtNome'
  end
  object edtCodigo: TEdit
    Left = 32
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtIdade: TEdit
    Left = 32
    Top = 134
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edtMedia1: TEdit
    Left = 32
    Top = 177
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edtMedia2: TEdit
    Left = 32
    Top = 220
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object edtMedia3: TEdit
    Left = 32
    Top = 263
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object edtMedia4: TEdit
    Left = 32
    Top = 306
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object edtResultado: TMemo
    Left = 184
    Top = 96
    Width = 329
    Height = 217
    TabOrder = 7
  end
  object btnCalcular: TButton
    Left = 415
    Top = 33
    Width = 81
    Height = 35
    Caption = 'CALCULAR'
    TabOrder = 8
  end
end
