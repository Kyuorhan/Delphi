object frmConsulta: TfrmConsulta
  Left = 0
  Top = 0
  ActiveControl = tbPesquisar
  BiDiMode = bdRightToLeftNoAlign
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Geral - Cliente'
  ClientHeight = 611
  ClientWidth = 1025
  Color = cl3DLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 19
    Top = 152
    Width = 35
    Height = 16
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbCidade: TLabel
    Left = 279
    Top = 152
    Width = 43
    Height = 16
    Caption = 'Cidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 546
    Width = 1025
    Height = 46
    Align = alBottom
    Color = clWindow
    ParentBackground = False
    TabOrder = 2
    object btnNovo: TSpeedButton
      Left = 4
      Top = 6
      Width = 86
      Height = 32
      Action = actNovo1
      Flat = True
      ParentShowHint = False
      ShowHint = False
    end
    object btnEditar: TSpeedButton
      Left = 96
      Top = 6
      Width = 86
      Height = 32
      Action = actEditar1
      Flat = True
      ParentShowHint = False
      ShowHint = False
    end
    object btnExcluir: TSpeedButton
      Left = 188
      Top = 6
      Width = 86
      Height = 32
      Action = eactExcluir1
      Flat = True
      ParentShowHint = False
      ShowHint = False
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 592
    Width = 1025
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object tbPesquisar: TJvPageControl
    Left = 0
    Top = 121
    Width = 1025
    Height = 24
    ActivePage = tbsPesquisar
    Align = alTop
    TabOrder = 0
    ParentColor = False
    Color = cl3DLight
    object tbsPesquisar: TTabSheet
      Caption = 'PESQUISAR'
      DoubleBuffered = False
      ImageIndex = 1
      ParentDoubleBuffered = False
    end
  end
  object JvPanel1: TJvPanel
    Left = 0
    Top = 0
    Width = 1025
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    Color = 13095379
    ParentBackground = False
    TabOrder = 3
  end
  object JvDBGrid2: TJvDBGrid
    Left = 0
    Top = 208
    Width = 1025
    Height = 338
    Align = alBottom
    BiDiMode = bdLeftToRight
    BorderStyle = bsNone
    DataSource = dsClientes
    DrawingStyle = gdsGradient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    BevelInner = bvNone
    BevelOuter = bvNone
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sexo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cpf'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rg'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cep'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'insc_estadual'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'endereco'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'num_end'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'complemento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bairro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'celular'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_nascimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_cadastro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'uf'
        Visible = True
      end>
  end
  object edtNome: TEdit
    Left = 19
    Top = 174
    Width = 246
    Height = 21
    Color = cl3DLight
    TabOrder = 5
    OnChange = edtNomeChange
  end
  object edtCidade: TEdit
    Left = 279
    Top = 174
    Width = 226
    Height = 21
    Color = cl3DLight
    TabOrder = 6
    OnChange = edtNomeChange
  end
  object Timer1: TTimer
    Interval = 300
    OnTimer = Timer1Timer
    Left = 976
    Top = 8
  end
  object ActionList1: TActionList
    Images = frmPrincipal.ImageList32
    Left = 920
    Top = 8
    object actNovo1: TAction
      Caption = 'Novo'
      ImageIndex = 0
      OnExecute = actNovo1Execute
    end
    object actEditar1: TAction
      Caption = 'Editar'
      ImageIndex = 1
      OnExecute = actEditar1Execute
    end
    object eactExcluir1: TAction
      Caption = 'Excluir'
      ImageIndex = 2
      OnExecute = actExcluir1Execute
    end
  end
  object sqlClientes: TZQuery
    Connection = frmPrincipal.ZConnection1
    UpdateObject = updCliente
    Active = True
    SQL.Strings = (
      'SELECT c.*, cid.cidade, cid.uf'
      'FROM clientes c'
      'INNER JOIN cidades cid ON cid.id = c.id_cidade')
    Params = <>
    Left = 832
    Top = 8
    object sqlClientesid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sqlClientesid_cidade: TIntegerField
      FieldName = 'id_cidade'
    end
    object sqlClientesnome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object sqlClientestipo: TWideStringField
      FieldName = 'tipo'
      Size = 15
    end
    object sqlClientessexo: TWideStringField
      FieldName = 'sexo'
    end
    object sqlClientescpf: TWideStringField
      FieldName = 'cpf'
    end
    object sqlClientesrg: TWideStringField
      FieldName = 'rg'
    end
    object sqlClientescep: TWideStringField
      FieldName = 'cep'
    end
    object sqlClientesinsc_estadual: TWideStringField
      FieldName = 'insc_estadual'
    end
    object sqlClientesendereco: TWideStringField
      FieldName = 'endereco'
      Size = 50
    end
    object sqlClientesnum_end: TWideStringField
      FieldName = 'num_end'
    end
    object sqlClientescomplemento: TWideStringField
      FieldName = 'complemento'
    end
    object sqlClientesbairro: TWideStringField
      FieldName = 'bairro'
      Size = 50
    end
    object sqlClientescelular: TWideStringField
      FieldName = 'celular'
    end
    object sqlClientestelefone: TWideStringField
      FieldName = 'telefone'
    end
    object sqlClientesemail: TWideStringField
      FieldName = 'email'
      Size = 70
    end
    object sqlClientesdata_nascimento: TDateField
      FieldName = 'data_nascimento'
    end
    object sqlClientesdata_cadastro: TDateField
      FieldName = 'data_cadastro'
    end
  end
  object dsClientes: TDataSource
    DataSet = sqlClientes
    Left = 832
    Top = 64
  end
  object dsCidades: TDataSource
    DataSet = sqlCidades
    Left = 712
    Top = 64
  end
  object sqlCidades: TZQuery
    Connection = frmPrincipal.ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM cidades')
    Params = <>
    Left = 712
    Top = 8
    object sqlCidadesid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sqlCidadescidade: TWideStringField
      FieldName = 'cidade'
      Size = 50
    end
    object sqlCidadesuf: TWideStringField
      FieldName = 'uf'
      Size = 8
    end
    object sqlCidadescod_ibge: TWideStringField
      FieldName = 'cod_ibge'
      Size = 11
    end
  end
  object updCliente: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM clientes'
      'WHERE'
      '  clientes.id = :OLD_id AND'
      
        '  ((clientes.id_cidade IS NULL AND :OLD_id_cidade IS NULL) OR (c' +
        'lientes.id_cidade = :OLD_id_cidade)) AND'
      
        '  ((clientes.data_nascimento IS NULL AND :OLD_data_nascimento IS' +
        ' NULL) OR (clientes.data_nascimento = :OLD_data_nascimento)) AND'
      
        '  ((clientes.data_cadastro IS NULL AND :OLD_data_cadastro IS NUL' +
        'L) OR (clientes.data_cadastro = :OLD_data_cadastro))')
    InsertSQL.Strings = (
      'INSERT INTO clientes'
      
        '  (id, id_cidade, nome, tipo, sexo, cpf, rg, cep, insc_estadual,' +
        ' endereco, '
      
        '   num_end, complemento, bairro, celular, telefone, email, data_' +
        'nascimento, '
      '   data_cadastro)'
      'VALUES'
      
        '  (:id, :id_cidade, :nome, :tipo, :sexo, :cpf, :rg, :cep, :insc_' +
        'estadual, '
      
        '   :endereco, :num_end, :complemento, :bairro, :celular, :telefo' +
        'ne, :email, '
      '   :data_nascimento, :data_cadastro)')
    ModifySQL.Strings = (
      'UPDATE clientes SET'
      '  id = :id,'
      '  id_cidade = :id_cidade,'
      '  nome = :nome,'
      '  tipo = :tipo,'
      '  sexo = :sexo,'
      '  cpf = :cpf,'
      '  rg = :rg,'
      '  cep = :cep,'
      '  insc_estadual = :insc_estadual,'
      '  endereco = :endereco,'
      '  num_end = :num_end,'
      '  complemento = :complemento,'
      '  bairro = :bairro,'
      '  celular = :celular,'
      '  telefone = :telefone,'
      '  email = :email,'
      '  data_nascimento = :data_nascimento,'
      '  data_cadastro = :data_cadastro'
      'WHERE'
      '  clientes.id = :OLD_id AND'
      
        '  ((clientes.id_cidade IS NULL AND :OLD_id_cidade IS NULL) OR (c' +
        'lientes.id_cidade = :OLD_id_cidade)) AND'
      
        '  ((clientes.data_nascimento IS NULL AND :OLD_data_nascimento IS' +
        ' NULL) OR (clientes.data_nascimento = :OLD_data_nascimento)) AND'
      
        '  ((clientes.data_cadastro IS NULL AND :OLD_data_cadastro IS NUL' +
        'L) OR (clientes.data_cadastro = :OLD_data_cadastro))')
    UseSequenceFieldForRefreshSQL = False
    Left = 912
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_cidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nome'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sexo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cpf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'rg'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cep'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'insc_estadual'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'endereco'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_end'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'complemento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bairro'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'celular'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'telefone'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'email'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data_nascimento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data_cadastro'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_id_cidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_data_nascimento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_data_cadastro'
        ParamType = ptUnknown
      end>
  end
end
