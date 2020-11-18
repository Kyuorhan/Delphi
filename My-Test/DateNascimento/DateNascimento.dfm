object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Form7'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbDateNasc: TLabel
    Left = 64
    Top = 64
    Width = 149
    Height = 13
    Caption = 'Insira sua data de Nascimento:'
  end
  object lbHoje0: TLabel
    Left = 96
    Top = 129
    Width = 73
    Height = 13
    Caption = 'Hjoe voc'#234' tem:'
  end
  object lbDate: TLabel
    Left = 192
    Top = 129
    Width = 31
    Height = 13
    Caption = 'lbDate'
  end
  object lbHoje1: TLabel
    Left = 248
    Top = 129
    Width = 22
    Height = 13
    Caption = 'Hoje'
  end
  object Button1: TButton
    Left = 272
    Top = 55
    Width = 129
    Height = 33
    Caption = 'Processar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object JvDateNascimento: TJvDateEdit
    Left = 72
    Top = 83
    Width = 121
    Height = 21
    ShowNullDate = False
    TabOrder = 1
  end
end
