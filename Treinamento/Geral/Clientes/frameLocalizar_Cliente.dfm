object frameLocalizaCliente: TframeLocalizaCliente
  Left = 0
  Top = 0
  Width = 219
  Height = 48
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object lbCliente: TLabel
    Left = 0
    Top = 1
    Width = 49
    Height = 16
    Caption = 'CLIENTE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtClientes: TEdit
    Left = 0
    Top = 23
    Width = 216
    Height = 22
    TabOrder = 0
    OnKeyPress = edtClientesKeyPress
  end
end