object frameLocalizaCliente: TframeLocalizaCliente
  Left = 0
  Top = 0
  Width = 222
  Height = 48
  TabOrder = 0
  object lbCliente: TLabel
    Left = 3
    Top = 2
    Width = 33
    Height = 13
    Caption = 'Cliente'
  end
  object edtCliente: TEdit
    Left = 3
    Top = 21
    Width = 216
    Height = 21
    TabOrder = 0
    Text = 'edtCliente'
    OnKeyPress = edtClienteKeyPress
  end
end
