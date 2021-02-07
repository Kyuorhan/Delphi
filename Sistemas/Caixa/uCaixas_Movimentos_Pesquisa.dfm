object fCaixas_Movimentos_Pesquisa: TfCaixas_Movimentos_Pesquisa
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Caixa de Movimentos/Pesquisa'
  ClientHeight = 691
  ClientWidth = 1274
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 66
    Width = 1274
    Height = 55
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 0
    object lbPesq: TLabel
      Left = 8
      Top = 6
      Width = 57
      Height = 13
      Caption = 'PESQUISAR'
    end
    object lbPeriodo: TLabel
      Left = 331
      Top = 6
      Width = 46
      Height = 13
      Caption = 'PERIODO'
    end
    object edtPeriodo1: TJvDateEdit
      Left = 331
      Top = 25
      Width = 100
      Height = 21
      ButtonFlat = True
      ShowNullDate = False
      TabOrder = 1
      OnChange = edtPesqChange
    end
    object edtPeriodo2: TJvDateEdit
      Left = 437
      Top = 25
      Width = 100
      Height = 21
      ButtonFlat = True
      ShowNullDate = False
      TabOrder = 2
      OnChange = edtPesqChange
    end
    object cInativos: TCheckBox
      Left = 228
      Top = 27
      Width = 97
      Height = 17
      Caption = 'Listar Inativos'
      TabOrder = 3
      OnClick = cInativosClick
    end
    object edtPesq: TEdit
      Left = 8
      Top = 25
      Width = 209
      Height = 21
      TabOrder = 0
      OnChange = edtPesqChange
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 121
    Width = 1274
    Height = 511
    Align = alClient
    BorderStyle = bsNone
    DataSource = dmCaixa.dsCaixas_Movimentos
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'historico'
        Width = 320
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'entrada'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'saida'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipo'
        Title.Alignment = taCenter
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_hora_lancam'
        Title.Caption = 'DATA/LAN'#199'AMNT.'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'situacao'
        Title.Alignment = taCenter
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'caixa'
        Width = 175
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'plano_contas'
        Width = 175
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'caixas_aberturas_id'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'plano_contas_id'
        Width = 110
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1274
    Height = 66
    Align = alTop
    TabOrder = 2
    object btnAlterar: TSpeedButton
      Left = 66
      Top = 1
      Width = 65
      Height = 64
      Align = alLeft
      Caption = 'Alterar'
      Layout = blGlyphTop
      OnClick = btnAlterarClick
      ExplicitLeft = 1
    end
    object btnNovo: TSpeedButton
      Left = 1
      Top = 1
      Width = 65
      Height = 64
      Align = alLeft
      Caption = 'Novo'
      Layout = blGlyphTop
      OnClick = btnNovoClick
    end
    object btnExcluir: TSpeedButton
      Left = 131
      Top = 1
      Width = 65
      Height = 64
      Align = alLeft
      Caption = 'Excluir'
      Layout = blGlyphTop
      OnClick = btnExcluirClick
      ExplicitLeft = 1
    end
    object btnImprimir: TSpeedButton
      Left = 196
      Top = 1
      Width = 65
      Height = 64
      Align = alLeft
      Caption = 'Imprimir'
      Layout = blGlyphTop
      OnClick = btnImprimirClick
      ExplicitLeft = 347
      ExplicitTop = 21
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 632
    Width = 1274
    Height = 59
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    Color = cl3DLight
    ParentBackground = False
    TabOrder = 3
    object lbEntrada: TLabel
      Left = 29
      Top = 20
      Width = 60
      Height = 16
      Caption = 'ENTRADA:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbSaida: TLabel
      Left = 226
      Top = 20
      Width = 41
      Height = 16
      Caption = 'SA'#205'DA:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbTotal_Caixa: TLabel
      Left = 820
      Top = 20
      Width = 44
      Height = 16
      Caption = 'TOTAL:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbSaldo: TLabel
      Left = 405
      Top = 20
      Width = 44
      Height = 16
      Caption = 'SALDO:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtTotal: TJvCalcEdit
      Left = 870
      Top = 19
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
      ReadOnly = True
      ShowButton = False
      TabOrder = 0
      DecimalPlacesAlwaysShown = False
    end
    object edtSaida: TJvCalcEdit
      Left = 274
      Top = 19
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
      ReadOnly = True
      ShowButton = False
      TabOrder = 1
      DecimalPlacesAlwaysShown = False
    end
    object edtEntrada: TJvCalcEdit
      Left = 95
      Top = 19
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
      ReadOnly = True
      ShowButton = False
      TabOrder = 2
      DecimalPlacesAlwaysShown = False
    end
    object edtSaldo: TJvCalcEdit
      Left = 455
      Top = 19
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
      ReadOnly = True
      ShowButton = False
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
    end
  end
  object frxDBCaixa_Moviment: TfrxDBDataset
    UserName = 'Caixa_Moviment'
    CloseDataSource = False
    DataSet = dmCaixa.sqlCaixas_Movimentos
    BCDToCurrency = False
    Left = 1048
    Top = 16
  end
  object frxCaixa_Moviment: TfrxReport
    Version = '6.9.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44215.718441238400000000
    ReportOptions.LastChange = 44217.451465393520000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 928
    Top = 16
    Datasets = <
      item
        DataSet = frxDBCaixa_Moviment
        DataSetName = 'Caixa_Moviment'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 408.189240000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 68.031540000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'RELAT'#211'RIO DE MOVIMENTO CAIXA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Top = 49.133890000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = 15000804
          Memo.UTF8W = (
            'N'#218'MERO')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 49.133890000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = 15000804
          Memo.UTF8W = (
            'HIST'#211'RICO')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Left = 421.417322834646000000
          Top = 49.133890000000000000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = []
          Fill.BackColor = 15000804
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Left = 493.984251968504000000
          Top = 49.133890000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = []
          Fill.BackColor = 15000804
          HAlign = haRight
          Memo.UTF8W = (
            'ENTRADA')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Left = 566.929133858268000000
          Top = 49.133890000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = []
          Fill.BackColor = 15000804
          HAlign = haRight
          Memo.UTF8W = (
            'SA'#205'DA')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Left = 640.629921260000000000
          Top = 49.133890000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = []
          Fill.BackColor = 15000804
          HAlign = haCenter
          Memo.UTF8W = (
            'TIPO')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 204.094620000000000000
        Width = 718.110700000000000000
        DataSet = frxDBCaixa_Moviment
        DataSetName = 'Caixa_Moviment'
        KeepChild = True
        RowCount = 0
        object Caixa_Movimentid: TfrxMemoView
          IndexTag = 1
          Align = baBottom
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'id'
          DataSet = frxDBCaixa_Moviment
          DataSetName = 'Caixa_Moviment'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 11579392
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Caixa_Moviment."id"]')
          ParentFont = False
        end
        object Caixa_Movimenthistorico: TfrxMemoView
          IndexTag = 1
          Align = baBottom
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 7.559060000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          DataField = 'historico'
          DataSet = frxDBCaixa_Moviment
          DataSetName = 'Caixa_Moviment'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 11579392
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[Caixa_Moviment."historico"]')
          ParentFont = False
        end
        object Caixa_Movimentvalor: TfrxMemoView
          IndexTag = 1
          Align = baBottom
          AllowVectorExport = True
          Left = 421.417322830000000000
          Top = 7.559060000000000000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          DataSet = frxDBCaixa_Moviment
          DataSetName = 'Caixa_Moviment'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 11579392
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Caixa_Moviment."valor"]')
          ParentFont = False
        end
        object Caixa_Movimentsaida: TfrxMemoView
          IndexTag = 1
          Align = baBottom
          AllowVectorExport = True
          Left = 566.929133860000000000
          Top = 7.559060000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataSet = frxDBCaixa_Moviment
          DataSetName = 'Caixa_Moviment'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 11579392
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Caixa_Moviment."saida"]')
          ParentFont = False
        end
        object Caixa_Movimenttipo: TfrxMemoView
          IndexTag = 1
          Align = baBottom
          AllowVectorExport = True
          Left = 640.629921260000000000
          Top = 7.559060000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'tipo'
          DataSet = frxDBCaixa_Moviment
          DataSetName = 'Caixa_Moviment'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 11579392
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Caixa_Moviment."tipo"]')
          ParentFont = False
        end
        object Caixa_Movimententrada: TfrxMemoView
          IndexTag = 1
          Align = baBottom
          AllowVectorExport = True
          Left = 493.338900000000000000
          Top = 7.559060000000000000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          DataSet = frxDBCaixa_Moviment
          DataSetName = 'Caixa_Moviment'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 11579392
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Caixa_Moviment."entrada"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 3.779530000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = []
          Fill.BackColor = 15000804
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Left = 421.417322830000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = []
          Fill.BackColor = 15000804
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<Caixa_Moviment."valor">,MasterData1)]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Left = 494.118430000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = []
          Fill.BackColor = 15000804
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<Caixa_Moviment."entrada">,MasterData1)]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Left = 567.709030000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = []
          Fill.BackColor = 15000804
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<Caixa_Moviment."saida">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        Condition = 'Caixa_Moviment."data"'
        object Memo6: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = []
          Memo.UTF8W = (
            'DATA DE LAN'#199'AMENTO')
          ParentFont = False
        end
        object Caixa_Movimentdata: TfrxMemoView
          IndexTag = 1
          Align = baBottom
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 11.338590000000000000
          Width = 90.708720000000000000
          Height = 22.677180000000000000
          DataField = 'data'
          DataSet = frxDBCaixa_Moviment
          DataSetName = 'Caixa_Moviment'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Caixa_Moviment."data"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 336.378170000000000000
        Width = 718.110700000000000000
        object Memo15: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Top = 30.236240000000000000
          Width = 415.748300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = []
          Fill.BackColor = 15000804
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Left = 421.417322830000000000
          Top = 30.236240000000000000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = []
          Fill.BackColor = 15000804
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<Caixa_Moviment."valor">,MasterData1)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Left = 493.984251968504000000
          Top = 30.236240000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = []
          Fill.BackColor = 15000804
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<Caixa_Moviment."entrada">,MasterData1)]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Left = 567.268090000000000000
          Top = 30.236240000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          Frame.Typ = []
          Fill.BackColor = 15000804
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<Caixa_Moviment."saida">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
end
