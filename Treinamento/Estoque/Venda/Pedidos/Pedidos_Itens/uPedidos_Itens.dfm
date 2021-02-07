object frmPedidos_Itens: TfrmPedidos_Itens
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Estoque - Pedidos/tens'
  ClientHeight = 731
  ClientWidth = 614
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 50
    Top = 599
    Width = 103
    Height = 16
    Caption = 'TOTAL PRODUTO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 198
    Top = 599
    Width = 91
    Height = 16
    Caption = 'DESCONTO(%)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbDesconto_Valor: TLabel
    Left = 312
    Top = 599
    Width = 94
    Height = 16
    Caption = 'DESCONTO(R$)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 440
    Top = 599
    Width = 103
    Height = 16
    Caption = 'TOTAL A PAGAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnNovo: TSpeedButton
    Left = 46
    Top = 273
    Width = 49
    Height = 49
    Cursor = crHandPoint
    Action = actNovo
    Flat = True
  end
  object btnEditar: TSpeedButton
    Left = 101
    Top = 276
    Width = 49
    Height = 49
    Cursor = crHandPoint
    Action = actEditar
    Flat = True
  end
  object btnExcluir: TSpeedButton
    Left = 156
    Top = 276
    Width = 49
    Height = 49
    Cursor = crHandPoint
    Action = actExcluir
    Flat = True
  end
  object Label2: TLabel
    Left = 376
    Top = 278
    Width = 36
    Height = 16
    Caption = 'DATA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 46
    Top = 265
    Width = 347
    Height = 13
    Caption = 'Selecione um VENDEDOR ja cadastrado, pressione a tecla [ + ]'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object Label5: TLabel
    Left = 46
    Top = 216
    Width = 67
    Height = 16
    Caption = 'VENDEDOR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbect1: TLabel
    Left = 46
    Top = 201
    Width = 333
    Height = 13
    Caption = 'Selecione um CLIENTE ja cadastrado, pressione a tecla [ + ]'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object Label7: TLabel
    Left = 46
    Top = 152
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
  object JvPanel2: TJvPanel
    Left = 0
    Top = 662
    Width = 614
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    Color = cl3DLight
    ParentBackground = False
    TabOrder = 0
    object btnSalvar: TSpeedButton
      Left = 22
      Top = 0
      Width = 50
      Height = 50
      Cursor = crHandPoint
      Action = actSalvar1
      Flat = True
    end
    object btnCancelar: TSpeedButton
      Left = 78
      Top = 0
      Width = 50
      Height = 50
      Cursor = crHandPoint
      Action = actCancelar
      Flat = True
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 712
    Width = 614
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object JvPanel1: TJvPanel
    Left = 0
    Top = 0
    Width = 614
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    Color = 13095379
    ParentBackground = False
    TabOrder = 2
  end
  object edtTotal_Produto: TJvCalcEdit
    Left = 50
    Top = 621
    Width = 125
    Height = 20
    TabStop = False
    Flat = True
    ParentFlat = False
    Alignment = taLeftJustify
    ButtonFlat = True
    DisplayFormat = ',R$, 0.00;,R$, -0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ImageKind = ikCustom
    ParentFont = False
    ShowButton = False
    TabOrder = 3
    DecimalPlacesAlwaysShown = False
    OnChange = edtTotal_ProdutoChange
  end
  object edtDescont: TJvCalcEdit
    Left = 198
    Top = 621
    Width = 105
    Height = 20
    TabStop = False
    Flat = True
    ParentFlat = False
    ButtonFlat = True
    DisplayFormat = ',%, 0.000;,%, -0.000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ImageKind = ikCustom
    ParentFont = False
    ShowButton = False
    TabOrder = 4
    DecimalPlacesAlwaysShown = False
    OnExit = edtDescontExit
  end
  object edtDescont_Valor: TJvCalcEdit
    Left = 309
    Top = 621
    Width = 105
    Height = 20
    TabStop = False
    Flat = True
    ParentFlat = False
    Alignment = taLeftJustify
    ButtonFlat = True
    DisplayFormat = ',R$, 0.00;,R$, -0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ImageKind = ikCustom
    ParentFont = False
    ShowButton = False
    TabOrder = 5
    DecimalPlacesAlwaysShown = False
    OnExit = edtDescont_ValorExit
  end
  object edtTotal_Pagar: TJvCalcEdit
    Left = 440
    Top = 621
    Width = 125
    Height = 20
    TabStop = False
    Flat = True
    ParentFlat = False
    Alignment = taLeftJustify
    ButtonFlat = True
    DisplayFormat = ',R$, 0.00;,R$, -0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ImageKind = ikCustom
    ParentFont = False
    ShowButton = False
    TabOrder = 6
    DecimalPlacesAlwaysShown = False
  end
  object edtData: TJvDateEdit
    Left = 376
    Top = 300
    Width = 120
    Height = 21
    DateFormat = '99/99/9999'
    ShowNullDate = False
    TabOrder = 7
  end
  object edtID_Vendedor: TEdit
    Left = 416
    Top = 238
    Width = 80
    Height = 21
    CharCase = ecUpperCase
    ReadOnly = True
    TabOrder = 8
  end
  object edtVendedor: TEdit
    Left = 46
    Top = 238
    Width = 347
    Height = 21
    ReadOnly = True
    TabOrder = 9
    OnKeyPress = edtVendedorKeyPress
  end
  object edtClientes: TEdit
    Left = 46
    Top = 174
    Width = 347
    Height = 21
    ReadOnly = True
    TabOrder = 10
    OnKeyPress = edtClientesKeyPress
  end
  object edtID_Cliente: TEdit
    Left = 416
    Top = 173
    Width = 80
    Height = 21
    CharCase = ecUpperCase
    ReadOnly = True
    TabOrder = 11
  end
  object dbgPedidos_Itens: TJvDBGrid
    Left = 16
    Top = 335
    Width = 580
    Height = 249
    Align = alCustom
    BiDiMode = bdLeftToRight
    DataSource = frmPedidos.dsPedidos_Itens
    DrawingStyle = gdsGradient
    GradientEndColor = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_pedidos'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'produto'
        Width = 225
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtde'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'abrev'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_produtos'
        Title.Caption = 'C'#211'D.'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_unid_medidas'
        Visible = True
      end>
  end
  object ActionList1: TActionList
    Images = frmPrincipal.ImageList32
    Left = 555
    Top = 66
    object actNovo: TAction
      ImageIndex = 0
      OnExecute = actNovoExecute
    end
    object actEditar: TAction
      ImageIndex = 1
      OnExecute = actEditarExecute
    end
    object actExcluir: TAction
      ImageIndex = 2
      OnExecute = actExcluirExecute
    end
  end
  object ActionList2: TActionList
    Images = frmPrincipal.ImageList48
    Left = 488
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
    Left = 563
    Top = 8
  end
  object BalloonHint1: TBalloonHint
    Style = bhsStandard
    Left = 506
    Top = 8
  end
end
