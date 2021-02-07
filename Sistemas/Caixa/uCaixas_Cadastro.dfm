object fCaixas_Cadastro: TfCaixas_Cadastro
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Caixas'
  ClientHeight = 191
  ClientWidth = 334
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
    Width = 318
    Height = 123
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Geral'
      ExplicitHeight = 99
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 59
        Height = 13
        Caption = 'DESCRI'#199#195'O'
      end
      object edtCaixa: TDBEdit
        Left = 16
        Top = 43
        Width = 275
        Height = 21
        CharCase = ecUpperCase
        DataField = 'caixa'
        DataSource = dmCaixa.dsCaixas
        TabOrder = 0
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 172
    Width = 334
    Height = 19
    Panels = <
      item
        Width = 50
      end>
    ExplicitTop = 217
    ExplicitWidth = 330
  end
  object btnSalvar: TButton
    Left = 146
    Top = 137
    Width = 79
    Height = 29
    Caption = 'Salvar'
    ImageIndex = 1
    TabOrder = 2
    OnClick = btnSalvarClick
  end
  object btnVoltar: TButton
    Left = 231
    Top = 137
    Width = 79
    Height = 29
    Caption = 'Voltar'
    TabOrder = 3
    OnClick = btnVoltarClick
  end
end
