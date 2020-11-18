object frmLayout_Gerar: TfrmLayout_Gerar
  Left = 0
  Top = 0
  Caption = 'Layout_Gerar'
  ClientHeight = 638
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object JvPanel1: TJvPanel
    Left = 0
    Top = 0
    Width = 852
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    Color = 13095379
    ParentBackground = False
    TabOrder = 0
  end
  object btnAula2: TButton
    Left = 752
    Top = 143
    Width = 75
    Height = 25
    Caption = 'Aula2'
    TabOrder = 1
  end
  object btnAula3: TButton
    Left = 752
    Top = 182
    Width = 75
    Height = 25
    Caption = 'Aula3'
    TabOrder = 2
  end
  object bbtnAula4: TButton
    Left = 752
    Top = 221
    Width = 75
    Height = 25
    Caption = 'Aula4'
    TabOrder = 3
    OnClick = bbtnAula4Click
  end
  object Button1: TButton
    Left = 752
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Aula5'
    TabOrder = 4
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    AutoEncodeStrings = True
    Connected = True
    HostName = 'localhost'
    Port = 0
    Database = 'my_test'
    User = 'root'
    Password = '123'
    Protocol = 'MariaDB-10'
    LibraryLocation = 'C:\Program Files (x86)\MariaDB 10.5\lib\libmariadb.dll'
    Left = 800
    Top = 8
  end
  object sqlMy_test: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM contas_cliente')
    Params = <>
    Left = 32
    Top = 136
    object sqlMy_testid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object sqlMy_testnome: TIntegerField
      FieldName = 'nome'
    end
    object sqlMy_testendereco: TIntegerField
      FieldName = 'endereco'
    end
    object sqlMy_testnum_end: TIntegerField
      FieldName = 'num_end'
    end
  end
  object frxsqlMy_test: TfrxDBDataset
    UserName = 'frxsqlMy_test'
    CloseDataSource = False
    DataSet = sqlMy_test
    BCDToCurrency = False
    Left = 32
    Top = 192
  end
  object frxsqlReceber: TfrxDBDataset
    UserName = 'frxsqlReceber'
    CloseDataSource = False
    DataSet = sqlReceber
    BCDToCurrency = False
    Left = 104
    Top = 192
  end
  object sqlReceber: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      
        'SELECT nome, numero, vencimento, valor, historico FROM receber O' +
        'RDER BY vencimento')
    Params = <>
    Left = 104
    Top = 136
    object sqlRecebernome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object sqlRecebernumero: TIntegerField
      FieldName = 'numero'
    end
    object sqlRecebervencimento: TDateField
      FieldName = 'vencimento'
    end
    object sqlRecebervalor: TFloatField
      FieldName = 'valor'
    end
    object sqlReceberhistorico: TWideStringField
      FieldName = 'historico'
      Size = 100
    end
  end
  object sqlVendas: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM vendas ')
    Params = <>
    Left = 176
    Top = 136
    object sqlVendasdata: TDateField
      FieldName = 'data'
    end
    object sqlVendasdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 50
    end
    object sqlVendastotal: TFloatField
      FieldName = 'total'
    end
  end
  object frxsqlVendas: TfrxDBDataset
    UserName = 'frxsqlVendas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'data=data'
      'descricao=descricao'
      'total=total')
    DataSet = sqlVendas
    BCDToCurrency = False
    Left = 176
    Top = 192
  end
  object frxCrossObject1: TfrxCrossObject
    Left = 32
    Top = 64
  end
  object sqlMaster: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM Master')
    Params = <>
    Left = 248
    Top = 136
    object sqlMasterid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Required = True
    end
    object sqlMasterdata: TDateField
      FieldName = 'data'
    end
    object sqlMastercliente: TWideStringField
      FieldName = 'cliente'
      Size = 75
    end
    object sqlMastertotal: TFloatField
      FieldName = 'total'
    end
    object sqlMasterdesconto: TFloatField
      FieldName = 'desconto'
    end
    object sqlMastertotal_pagar: TFloatField
      FieldName = 'total_pagar'
    end
  end
  object frxsqlMaster: TfrxDBDataset
    UserName = 'frxsqlMaster'
    CloseDataSource = False
    FieldAliases.Strings = (
      'data=data'
      'descricao=descricao'
      'total=total')
    DataSet = sqlMaster
    BCDToCurrency = False
    Left = 248
    Top = 192
  end
  object frxsqlDetail: TfrxDBDataset
    UserName = 'frxsqlDetail'
    CloseDataSource = False
    FieldAliases.Strings = (
      'data=data'
      'descricao=descricao'
      'total=total')
    DataSet = sqlDetaiil
    BCDToCurrency = False
    Left = 320
    Top = 192
  end
  object sqlDetaiil: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM detail')
    Params = <>
    Left = 320
    Top = 136
    object sqlDetaiilid_produto: TIntegerField
      FieldName = 'id_produto'
      Required = True
    end
    object sqlDetaiildescricao: TWideStringField
      FieldName = 'descricao'
      Size = 75
    end
    object sqlDetaiilvalor: TFloatField
      FieldName = 'valor'
    end
    object sqlDetaiilqtde: TIntegerField
      FieldName = 'qtde'
    end
    object sqlDetaiiltotal: TFloatField
      FieldName = 'total'
    end
  end
  object dsMaster: TDataSource
    DataSet = sqlMaster
    Left = 248
    Top = 248
  end
  object frxRelatorio: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44110.340920347200000000
    ReportOptions.LastChange = 44131.672178900470000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 32
    Top = 8
    Datasets = <
      item
        DataSet = frxsqlMy_test
        DataSetName = 'frxsqlMy_test'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 139.842610000000000000
        Width = 718.110700000000000000
        RowCount = 0
        object frxsqlMy_testnome: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 79.370130000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          DataField = 'nome'
          DataSet = frxsqlMy_test
          DataSetName = 'frxsqlMy_test'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxsqlMy_test."nome"]')
        end
        object frxsqlMy_testendereco: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 309.921460000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          DataField = 'endereco'
          DataSet = frxsqlMy_test
          DataSetName = 'frxsqlMy_test'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxsqlMy_test."endereco"]')
        end
        object frxsqlMy_testnum_end: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 551.811380000000000000
          Width = 171.960730000000000000
          Height = 18.897650000000000000
          DataField = 'num_end'
          DataSet = frxsqlMy_test
          DataSetName = 'frxsqlMy_test'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxsqlMy_test."num_end"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 226.771800000000000000
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
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 34.015770000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'NOME')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 309.921460000000000000
          Top = 34.015770000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'ENDERE'#199'O')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 548.031850000000000000
          Top = 34.015770000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#218'MERO')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 11.338590000000000000
          Width = 350.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'LISTA GERAL DE CLIENTES')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#211'D.')
        end
      end
      object frxsqlMy_testid_cliente: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = -3.779530000000000000
        Top = 139.842610000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataField = 'id_cliente'
        DataSet = frxsqlMy_test
        DataSetName = 'frxsqlMy_test'
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxsqlMy_test."id_cliente"]')
      end
    end
  end
end
