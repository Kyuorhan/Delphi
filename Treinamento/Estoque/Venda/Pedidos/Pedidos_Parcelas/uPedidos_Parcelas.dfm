object frmPedidos_Parcelas: TfrmPedidos_Parcelas
  Left = 0
  Top = 0
  Caption = 'Estoque - Pedidos/Parcelas'
  ClientHeight = 701
  ClientWidth = 604
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 192
    Top = 574
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
    Left = 307
    Top = 574
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
  object Label4: TLabel
    Left = 44
    Top = 574
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
  object Label1: TLabel
    Left = 435
    Top = 574
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
  object lbDias_Atraso: TLabel
    Left = 44
    Top = 228
    Width = 147
    Height = 16
    Caption = 'FORMA DE PAGAMENTO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 44
    Top = 160
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
  object lbTipo_Parcelamento: TLabel
    Left = 231
    Top = 297
    Width = 126
    Height = 13
    Caption = 'DOCUM. P/ PARCELAM.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnGerarParcela: TSpeedButton
    Left = 423
    Top = 297
    Width = 115
    Height = 45
    Action = actGerar
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
  end
  object lbect1: TLabel
    Left = 52
    Top = 209
    Width = 265
    Height = 13
    Caption = 'Selecione um Cliente pressionando a tecla [ + ]'
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
    Left = 52
    Top = 277
    Width = 357
    Height = 13
    Caption = 'Selecione uma Forma de Pagamento, pressionando a tecla [ + ]'
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
  object Label2: TLabel
    Left = 44
    Top = 297
    Width = 70
    Height = 13
    Caption = 'VENCIMENTO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object JvPanel2: TJvPanel
    Left = 0
    Top = 632
    Width = 604
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    Color = cl3DLight
    ParentBackground = False
    TabOrder = 0
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
    Top = 682
    Width = 604
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object DBGrid1: TDBGrid
    Left = 18
    Top = 353
    Width = 569
    Height = 208
    DataSource = frmPedidos.dsContas_receber
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'vencimento'
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'num_parcela'
        Width = 115
        Visible = True
      end>
  end
  object edtDescont_Valor: TJvCalcEdit
    Left = 307
    Top = 596
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
    TabOrder = 3
    DecimalPlacesAlwaysShown = False
    OnExit = edtDescont_ValorExit
  end
  object edtDescont: TJvCalcEdit
    Left = 192
    Top = 596
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
  object edtTotal_Pagar: TJvCalcEdit
    Left = 435
    Top = 596
    Width = 125
    Height = 22
    TabStop = False
    Flat = True
    ParentFlat = False
    Alignment = taLeftJustify
    ButtonFlat = True
    DisplayFormat = ',R$, 0.00;,R$, -0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ImageKind = ikCustom
    ParentFont = False
    ReadOnly = True
    ShowButton = False
    TabOrder = 5
    DecimalPlacesAlwaysShown = False
  end
  object edtDias_Atrasos: TEdit
    Left = 44
    Top = 250
    Width = 368
    Height = 21
    TabStop = False
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 6
  end
  object edtClientes: TEdit
    Left = 44
    Top = 182
    Width = 365
    Height = 21
    ReadOnly = True
    TabOrder = 7
    OnKeyPress = edtClientesKeyPress
  end
  object edtID_Cliente: TEdit
    Left = 429
    Top = 182
    Width = 70
    Height = 21
    Hint = 'C'#243'd. Cliente'
    CustomHint = BalloonHint1
    CharCase = ecUpperCase
    ReadOnly = True
    TabOrder = 8
    TextHint = 'C'#243'd. Cliente'
  end
  object edtID_FPagamento: TEdit
    Left = 429
    Top = 250
    Width = 70
    Height = 21
    CharCase = ecUpperCase
    ReadOnly = True
    TabOrder = 9
  end
  object JvPanel1: TJvPanel
    Left = 0
    Top = 0
    Width = 604
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    Caption = #39
    Color = 13095379
    ParentBackground = False
    TabOrder = 10
  end
  object edtNum_Parcelas: TEdit
    Left = 149
    Top = 316
    Width = 61
    Height = 21
    TabOrder = 11
    OnKeyPress = edtNum_ParcelasKeyPress
  end
  object edtVencimento: TJvDateEdit
    Left = 44
    Top = 316
    Width = 99
    Height = 21
    ShowNullDate = False
    TabOrder = 12
  end
  object edtTotal_Produto: TJvCalcEdit
    Left = 44
    Top = 596
    Width = 125
    Height = 22
    TabStop = False
    Flat = True
    ParentFlat = False
    Alignment = taLeftJustify
    ButtonFlat = True
    DisplayFormat = ',R$, 0.00;,R$, -0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ImageKind = ikCustom
    ParentFont = False
    ReadOnly = True
    ShowButton = False
    TabOrder = 13
    DecimalPlacesAlwaysShown = False
    OnChange = edtTotal_Produto1Change
  end
  object edtID_Pedidos: TEdit
    Left = 429
    Top = 209
    Width = 70
    Height = 21
    Hint = 'C'#243'd. Pedido'
    CustomHint = BalloonHint1
    CharCase = ecUpperCase
    ReadOnly = True
    TabOrder = 14
    TextHint = 'C'#243'd. Pedido'
  end
  object edtTipo_Documento: TDBLookupComboBox
    Left = 231
    Top = 316
    Width = 146
    Height = 21
    BiDiMode = bdRightToLeftNoAlign
    KeyField = 'id'
    ListField = 'documento'
    ListSource = dsTipos_Documentos
    ParentBiDiMode = False
    TabOrder = 15
  end
  object BalloonHint1: TBalloonHint
    Style = bhsStandard
    Left = 498
    Top = 8
  end
  object ActionList2: TActionList
    Images = frmPrincipal.ImageList48
    Left = 496
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
    Left = 555
    Top = 8
  end
  object ActionList1: TActionList
    Images = frmPrincipal.ImageList32
    Left = 560
    Top = 64
    object actGerar: TAction
      Caption = 'GERAR'
      ImageIndex = 11
      OnExecute = actGerarExecute
    end
  end
  object sqlTipos_Documentos: TZQuery
    Connection = frmPrincipal.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tipos_documentos'
      'order by documento')
    Params = <>
    Left = 376
    Top = 8
    object sqlTipos_Documentosid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Required = True
    end
    object sqlTipos_Documentosdocumento: TWideStringField
      FieldName = 'documento'
      Size = 50
    end
  end
  object dsTipos_Documentos: TDataSource
    DataSet = sqlTipos_Documentos
    Left = 376
    Top = 64
  end
end
