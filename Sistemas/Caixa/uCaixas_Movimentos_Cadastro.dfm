object fCaixas_Movimentos_Cadastro: TfCaixas_Movimentos_Cadastro
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Caixa de Movimentos/Cadastro'
  ClientHeight = 391
  ClientWidth = 354
  Color = clBtnFace
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
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 338
    Height = 340
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Geral'
      object lbData: TLabel
        Left = 20
        Top = 20
        Width = 27
        Height = 13
        Caption = 'DATA'
      end
      object lbHistorico: TLabel
        Left = 20
        Top = 190
        Width = 57
        Height = 13
        Caption = 'HIST'#211'RICO'
      end
      object lbValor: TLabel
        Left = 170
        Top = 20
        Width = 33
        Height = 13
        Caption = 'VALOR'
      end
      object lbPlano_Contas: TLabel
        Left = 20
        Top = 136
        Width = 83
        Height = 13
        Caption = 'PLANOS CONTAS'
      end
      object lbConta_Caixa: TLabel
        Left = 20
        Top = 244
        Width = 69
        Height = 13
        Caption = 'CONTA CAIXA'
      end
      object lbNatureza: TLabel
        Left = 20
        Top = 74
        Width = 53
        Height = 13
        Caption = 'NATUREZA'
      end
      object edtHistorico: TEdit
        Left = 20
        Top = 209
        Width = 285
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 4
      end
      object edtPlano_Contas: TDBEdit
        Left = 20
        Top = 155
        Width = 285
        Height = 21
        DataField = 'plano_contas'
        DataSource = dmCaixa.dsCaixas_Movimentos
        ReadOnly = True
        TabOrder = 3
        OnKeyPress = edtPlanos_ContasKeyPress
      end
      object edtCaixa_Abert: TDBLookupComboBox
        Left = 20
        Top = 263
        Width = 107
        Height = 21
        DataField = 'caixas_aberturas_id'
        DataSource = dmCaixa.dsCaixas_Movimentos
        KeyField = 'id'
        ListField = 'caixa'
        ListSource = dmCaixa.dsCaixas_Aberturas
        TabOrder = 5
        OnClick = edtCaixa_AbertClick
      end
      object edtValor: TJvDBCalcEdit
        Left = 170
        Top = 39
        Width = 135
        Height = 21
        ButtonFlat = True
        TabOrder = 1
        Value = 200.000000000000000000
        DecimalPlacesAlwaysShown = False
        DataField = 'valor'
        DataSource = dmCaixa.dsCaixas_Movimentos
      end
      object edtData: TJvDBDateEdit
        Left = 20
        Top = 39
        Width = 125
        Height = 21
        DataField = 'data'
        DataSource = dmCaixa.dsCaixas_Movimentos
        ButtonFlat = True
        ShowNullDate = False
        TabOrder = 0
      end
      object edtNatureza: TDBLookupComboBox
        Left = 20
        Top = 93
        Width = 125
        Height = 21
        DataField = 'tipo'
        DataSource = dmCaixa.dsCaixas_Movimentos
        KeyField = 'tipo'
        ListField = 'natureza'
        ListSource = dmCaixa.dsNatureza
        TabOrder = 2
      end
    end
  end
  object btnVoltar: TButton
    Left = 251
    Top = 354
    Width = 79
    Height = 29
    Caption = 'Voltar'
    TabOrder = 1
    OnClick = btnVoltarClick
  end
  object btnSalvar: TButton
    Left = 166
    Top = 354
    Width = 79
    Height = 29
    Caption = 'Salvar'
    ImageIndex = 1
    TabOrder = 2
    OnClick = btnSalvarClick
  end
end
