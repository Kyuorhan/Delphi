object frmCadastro_Produto: TfrmCadastro_Produto
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro/Produto'
  ClientHeight = 462
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
    Left = 64
    Top = 165
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
    Left = 64
    Top = 312
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
    Left = 64
    Top = 214
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
    Left = 177
    Top = 312
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
    Left = 64
    Top = 263
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
    Left = 319
    Top = 213
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
    Left = 279
    Top = 312
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
    Left = 243
    Top = 263
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
    Left = 359
    Top = 263
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
    Left = 230
    Top = 213
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
    TabOrder = 10
  end
  object JvPanel2: TJvPanel
    Left = 0
    Top = 393
    Width = 534
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    Color = cl3DLight
    ParentBackground = False
    TabOrder = 11
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 443
    Width = 534
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object edtDescricao: TEdit
    Left = 64
    Top = 187
    Width = 410
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object edtCod_Barra: TEdit
    Left = 243
    Top = 285
    Width = 110
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object edtMarca: TComboBox
    Left = 319
    Top = 235
    Width = 155
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 9
  end
  object edtEstoque: TEdit
    Left = 230
    Top = 235
    Width = 75
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object edtCod_Referencia: TEdit
    Left = 359
    Top = 285
    Width = 115
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnExit = edtCod_ReferenciaExit
  end
  object edtUnid_Medidas: TDBLookupComboBox
    Left = 64
    Top = 236
    Width = 155
    Height = 21
    KeyField = 'id'
    ListField = 'unid_medida'
    ListSource = frmConsulta_Produto.dsUnid_Medidas
    TabOrder = 7
  end
  object edtProdutos_Grupo: TDBLookupComboBox
    Left = 64
    Top = 285
    Width = 155
    Height = 21
    KeyField = 'id'
    ListField = 'produtos_grupo'
    ListSource = frmConsulta_Produto.dsGrupos
    TabOrder = 8
  end
  object edtM_Lucro: TJvCalcEdit
    Left = 176
    Top = 334
    Width = 97
    Height = 19
    TabStop = False
    Flat = True
    ParentFlat = False
    ButtonFlat = True
    Color = clBtnFace
    DisplayFormat = ',0.00;,-0.00'
    ImageKind = ikCustom
    ShowButton = False
    TabOrder = 5
    DecimalPlacesAlwaysShown = False
    OnExit = edtM_LucroExit
  end
  object edtP_Venda: TJvCalcEdit
    Left = 279
    Top = 334
    Width = 97
    Height = 19
    TabStop = False
    Flat = True
    ParentFlat = False
    ButtonFlat = True
    Color = clBtnFace
    DisplayFormat = ',0.00;,-0.00'
    ImageKind = ikCustom
    ShowButton = False
    TabOrder = 6
    DecimalPlacesAlwaysShown = False
    OnExit = edtP_VendaExit
  end
  object edtP_Compra: TJvCalcEdit
    Left = 64
    Top = 334
    Width = 97
    Height = 19
    TabStop = False
    Flat = True
    ParentFlat = False
    ButtonFlat = True
    Color = clBtnFace
    DisplayFormat = ',0.00;,-0.00'
    ImageKind = ikCustom
    ShowButton = False
    TabOrder = 4
    DecimalPlacesAlwaysShown = False
    OnExit = edtP_CompraExit
  end
  object ActionList2: TActionList
    Images = frmPrincipal.ImageList48
    Left = 400
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
    Left = 408
    Top = 8
  end
  object BalloonHint1: TBalloonHint
    Style = bhsStandard
    Left = 330
    Top = 64
  end
end