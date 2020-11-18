object frmVator_Matriz: TfrmVator_Matriz
  Left = 0
  Top = 0
  Caption = 'Vetor e Matriz Din'#227'micos'
  ClientHeight = 496
  ClientWidth = 635
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
  object Label1: TLabel
    Left = 40
    Top = 93
    Width = 56
    Height = 14
    Caption = 'Tamanho'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object rgTipo_Array: TRadioGroup
    Left = 21
    Top = 16
    Width = 593
    Height = 65
    Caption = 'Seleciona o Tipo de Array:'
    Columns = 2
    Items.Strings = (
      'Unidimensional (Vetor)'
      'Bidimensional (Matriz)')
    TabOrder = 0
  end
  object edtTamanho: TEdit
    Left = 40
    Top = 112
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 1
    Text = '1'
  end
  object mmoResult: TMemo
    Left = 8
    Top = 152
    Width = 619
    Height = 336
    TabOrder = 2
  end
  object btnCriar: TButton
    Left = 184
    Top = 110
    Width = 75
    Height = 25
    Caption = 'Criar'
    TabOrder = 3
    OnClick = btnCriarClick
  end
  object btnLimpar: TButton
    Left = 265
    Top = 110
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 4
    OnClick = btnLimparClick
  end
end
