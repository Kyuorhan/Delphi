object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Form7'
  ClientHeight = 203
  ClientWidth = 334
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtPessoa: TButton
    Left = 232
    Top = 62
    Width = 75
    Height = 25
    Caption = 'Pessoas'
    TabOrder = 3
    OnClick = edtPessoaClick
  end
  object edtNome: TEdit
    Left = 24
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Digite sua Nome'
  end
  object edtCodigo: TEdit
    Left = 24
    Top = 24
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 2
    Text = 'Informe Codigo'
  end
  object edtIdade: TEdit
    Left = 24
    Top = 78
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 1
    Text = 'Digite sua Idade'
  end
  object edtIdadeSoma: TEdit
    Left = 24
    Top = 136
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 4
    Text = 'Idade ser Somada'
  end
  object edtResult: TEdit
    Left = 24
    Top = 163
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 5
    Text = 'Result'
  end
end
