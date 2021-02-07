object frmFinanceiro: TfrmFinanceiro
  Left = 0
  Top = 0
  Caption = 'Financeiro'
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
  object btReceber: TButton
    Left = 24
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Receber'
    TabOrder = 0
    OnClick = btReceberClick
  end
  object btPagar: TButton
    Left = 112
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Pagar'
    TabOrder = 1
  end
end
