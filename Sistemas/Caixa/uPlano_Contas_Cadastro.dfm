object fPlanos_Contas_Cadastro: TfPlanos_Contas_Cadastro
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Planos de Contas/Cadastro'
  ClientHeight = 231
  ClientWidth = 404
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 212
    Width = 404
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 388
    Height = 163
    ActivePage = TabSheet1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Geral'
      object lbDescricao: TLabel
        Left = 18
        Top = 16
        Width = 59
        Height = 13
        Caption = 'DESCRI'#199#195'O'
      end
      object lbEstrutura: TLabel
        Left = 178
        Top = 70
        Width = 59
        Height = 13
        Caption = 'ESTRUTURA'
      end
      object lbNatureza: TLabel
        Left = 18
        Top = 70
        Width = 53
        Height = 13
        Caption = 'NATUREZA'
      end
      object edtPlano_Contas: TDBEdit
        Left = 18
        Top = 35
        Width = 340
        Height = 21
        CharCase = ecUpperCase
        DataField = 'plano_contas'
        DataSource = dmCaixa.dsPlano_contas
        TabOrder = 0
      end
      object edtEstrutura: TDBEdit
        Left = 178
        Top = 89
        Width = 135
        Height = 21
        DataField = 'estrutura'
        DataSource = dmCaixa.dsPlano_contas
        TabOrder = 1
      end
      object edtNatureza: TDBLookupComboBox
        Left = 18
        Top = 89
        Width = 145
        Height = 21
        DataField = 'tipo'
        DataSource = dmCaixa.dsPlano_contas
        KeyField = 'tipo'
        ListField = 'natureza'
        ListSource = dmCaixa.dsNatureza
        TabOrder = 2
      end
    end
  end
  object btnSalvar: TButton
    Left = 216
    Top = 177
    Width = 79
    Height = 29
    Caption = 'Salvar'
    ImageIndex = 1
    TabOrder = 2
    OnClick = btnSalvarClick
  end
  object btnVoltar: TButton
    Left = 301
    Top = 177
    Width = 79
    Height = 29
    Caption = 'Voltar'
    TabOrder = 3
    OnClick = btnVoltarClick
  end
  object BalloonHint1: TBalloonHint
    Style = bhsStandard
    Left = 336
    Top = 8
  end
end
