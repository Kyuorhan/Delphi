object frmCadastro_Produto: TfrmCadastro_Produto
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro/Produto'
  ClientHeight = 442
  ClientWidth = 534
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object lbDescricao: TLabel
    Left = 40
    Top = 157
    Width = 73
    Height = 16
    Caption = 'DESCRI'#199#195'O'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbP_Compra: TLabel
    Left = 199
    Top = 206
    Width = 71
    Height = 16
    Caption = 'P. COMPRA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbUnidade: TLabel
    Left = 48
    Top = 206
    Width = 56
    Height = 16
    Caption = 'UNIDADE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbLucro: TLabel
    Left = 304
    Top = 206
    Width = 60
    Height = 16
    Caption = 'M. LUCRO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbGrupo: TLabel
    Left = 40
    Top = 255
    Width = 42
    Height = 16
    Caption = 'GRUPO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbMarca: TLabel
    Left = 304
    Top = 255
    Width = 48
    Height = 16
    Caption = 'MARCA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbVenda: TLabel
    Left = 400
    Top = 206
    Width = 59
    Height = 16
    Caption = 'P. VENDA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbCod_Barras: TLabel
    Left = 40
    Top = 304
    Width = 88
    Height = 16
    Caption = 'C'#211'D. BARRAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbCod_Ref: TLabel
    Left = 168
    Top = 304
    Width = 110
    Height = 16
    Caption = 'C'#211'D. REFER'#202'NCIA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbEstoque: TLabel
    Left = 304
    Top = 304
    Width = 55
    Height = 16
    Caption = 'ESTOQUE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object JvPanel1: TJvPanel
    Left = 0
    Top = 0
    Width = 534
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    Color = 13095379
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 602
  end
  object JvPanel2: TJvPanel
    Left = 0
    Top = 373
    Width = 534
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    Color = cl3DLight
    ParentBackground = False
    TabOrder = 11
    ExplicitTop = 481
    ExplicitWidth = 602
    object btnSalvar: TSpeedButton
      Left = 10
      Top = 0
      Width = 50
      Height = 50
      Hint = 'SALVAR'
      CustomHint = BalloonHint1
      Action = actSalvar1
      Flat = True
    end
    object btnCancelar: TSpeedButton
      Left = 78
      Top = 0
      Width = 50
      Height = 50
      Hint = 'CANCELAR'
      CustomHint = BalloonHint1
      Action = actCancelar
      Flat = True
    end
  end
  object edtDescricao: TEdit
    Left = 40
    Top = 179
    Width = 385
    Height = 21
    TabOrder = 1
  end
  object edtID_Produto: TEdit
    Left = 440
    Top = 179
    Width = 50
    Height = 21
    TabOrder = 12
  end
  object edtUnidade: TComboBox
    Left = 48
    Top = 228
    Width = 145
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object edtGrupo: TComboBox
    Left = 40
    Top = 277
    Width = 249
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
  end
  object edtCod_Barra: TEdit
    Left = 40
    Top = 326
    Width = 122
    Height = 21
    TabOrder = 8
  end
  object edtMarca: TComboBox
    Left = 304
    Top = 277
    Width = 186
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 7
  end
  object Edit8: TEdit
    Left = 304
    Top = 326
    Width = 90
    Height = 21
    TabOrder = 10
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 423
    Width = 534
    Height = 19
    Panels = <
      item
        Width = 50
      end>
    ExplicitLeft = -192
    ExplicitWidth = 726
  end
  object edtP_Compra: TJvCalcEdit
    Left = 199
    Top = 228
    Width = 90
    Height = 19
    TabStop = False
    Flat = True
    ParentFlat = False
    ButtonFlat = True
    DecimalPlaceRound = True
    DisplayFormat = ',0.00'
    ImageKind = ikCustom
    ShowButton = False
    TabOrder = 3
    DecimalPlacesAlwaysShown = True
  end
  object edtP_Venda: TJvCalcEdit
    Left = 400
    Top = 228
    Width = 90
    Height = 19
    TabStop = False
    Flat = True
    ParentFlat = False
    ButtonFlat = True
    DisplayFormat = ',0.00;,0.00-'
    ImageKind = ikCustom
    ShowButton = False
    TabOrder = 5
    DecimalPlacesAlwaysShown = False
  end
  object edtM_Lucro: TJvCalcEdit
    Left = 304
    Top = 228
    Width = 90
    Height = 19
    TabStop = False
    Flat = True
    ParentFlat = False
    ButtonFlat = True
    DisplayFormat = ',0.00;,0.00-'
    ImageKind = ikCustom
    ShowButton = False
    TabOrder = 4
    DecimalPlacesAlwaysShown = False
  end
  object edtCod_Referencia: TEdit
    Left = 168
    Top = 326
    Width = 122
    Height = 21
    TabOrder = 9
  end
  object ActionList2: TActionList
    Images = frmPrincipal.ImageList48
    Left = 464
    Top = 64
    object actSalvar1: TAction
      ImageIndex = 0
      OnExecute = actSalvar1Execute
    end
    object actCancelar: TAction
      ImageIndex = 1
      OnExecute = actCancelarExecute
    end
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 472
    Top = 8
  end
  object BalloonHint1: TBalloonHint
    Style = bhsStandard
    Left = 394
    Top = 64
  end
end
