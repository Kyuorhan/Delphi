object fCliente_Cadastro: TfCliente_Cadastro
  Left = 0
  Top = 0
  Caption = 'fCliente_Cadastro'
  ClientHeight = 475
  ClientWidth = 713
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnSalvar: TButton
    Left = 386
    Top = 438
    Width = 79
    Height = 29
    Caption = 'Salvar'
    ImageIndex = 1
    TabOrder = 0
  end
  object btnVoltar: TButton
    Left = 471
    Top = 438
    Width = 79
    Height = 29
    Caption = 'Voltar'
    TabOrder = 1
  end
  object PageControl1: TPageControl
    Left = 5
    Top = 0
    Width = 588
    Height = 424
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    ActivePage = TabSheet1
    TabOrder = 2
    object TabSheet1: TTabSheet
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'Geral'
      ExplicitLeft = -12
      ExplicitTop = 28
      object Label3: TLabel
        Left = 315
        Top = 10
        Width = 86
        Height = 13
        Caption = 'DOCUMENTO(RG)'
      end
      object lbSexo: TLabel
        Left = 37
        Top = 195
        Width = 26
        Height = 13
        Caption = 'SEXO'
      end
      object lbInsc_Est: TLabel
        Left = 491
        Top = 149
        Width = 82
        Height = 13
        Caption = 'INSC. ESTADUAL'
      end
      object lbInsc_Municp: TLabel
        Left = 267
        Top = 195
        Width = 86
        Height = 13
        Caption = 'INSC. MUNICIPAL'
      end
      object Label11: TLabel
        Left = 36
        Top = 242
        Width = 50
        Height = 13
        Caption = 'FANTASIA'
      end
      object lbTipo_Empresa: TLabel
        Left = 263
        Top = 242
        Width = 89
        Height = 13
        Caption = 'TIPO DE EMPRESA'
      end
    end
  end
  inline frameLocalizaCliente1: TframeLocalizaCliente
    Left = 16
    Top = 32
    Width = 222
    Height = 48
    TabOrder = 3
    ExplicitLeft = 16
    ExplicitTop = 32
  end
end