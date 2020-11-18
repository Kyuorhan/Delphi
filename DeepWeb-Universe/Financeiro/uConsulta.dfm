object frmConsulta: TfrmConsulta
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeftNoAlign
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Consultar'
  ClientHeight = 611
  ClientWidth = 1018
  Color = cl3DLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDefault
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 546
    Width = 1018
    Height = 46
    Align = alBottom
    Color = clWindow
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 486
    ExplicitWidth = 854
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
    Width = 1018
    Height = 19
    Panels = <
      item
        Width = 50
      end>
    ExplicitTop = 532
    ExplicitWidth = 854
  end
  object tbPesquisar: TJvPageControl
    Left = 0
    Top = 121
    Width = 1018
    Height = 425
    ActivePage = tbsPesquisar
    Align = alClient
    TabOrder = 0
    ParentColor = False
    Color = cl3DLight
    ExplicitWidth = 854
    ExplicitHeight = 365
    object tbsPesquisar: TTabSheet
      Caption = 'PESQUISAR'
      ImageIndex = 1
      ExplicitWidth = 846
      ExplicitHeight = 337
      object Label1: TLabel
        Left = 443
        Top = 7
        Width = 60
        Height = 16
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 684
        Top = 7
        Width = 39
        Height = 16
        Caption = 'Bairro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbCidade: TLabel
        Left = 864
        Top = 7
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
      object edtPesquisar: TEdit
        Left = 5
        Top = 6
        Width = 358
        Height = 21
        Color = cl3DLight
        TabOrder = 0
        OnChange = edtPesquisarChange
      end
      object JvDBGrid2: TJvDBGrid
        Left = 0
        Top = 34
        Width = 1010
        Height = 363
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
        TabOrder = 1
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
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Width = 225
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tipo'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sexo'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cpf'
            Width = 115
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rg'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cep'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'insc_estadual'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'endereco'
            Width = 175
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'num_end'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'bairro'
            Width = 175
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cidade'
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'uf'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telefone'
            Width = 115
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Width = 350
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_nascimento'
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_cadastro'
            Visible = True
          end>
      end
      object dbedtEndereco: TDBEdit
        Left = 509
        Top = 7
        Width = 121
        Height = 21
        DataField = 'endereco'
        DataSource = dsClientes
        TabOrder = 2
      end
      object dbedtNum_End: TDBEdit
        Left = 636
        Top = 6
        Width = 34
        Height = 21
        DataField = 'num_end'
        DataSource = dsClientes
        TabOrder = 3
      end
      object dbedtBairro: TDBEdit
        Left = 729
        Top = 6
        Width = 121
        Height = 21
        DataField = 'bairro'
        DataSource = dsClientes
        TabOrder = 4
      end
      object dbeedtCidade: TDBEdit
        Left = 913
        Top = 7
        Width = 84
        Height = 21
        DataField = 'cidade'
        DataSource = dsClientes
        TabOrder = 5
      end
    end
  end
  object JvPanel1: TJvPanel
    Left = 0
    Top = 0
    Width = 1018
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    Color = 13095379
    ParentBackground = False
    TabOrder = 3
    ExplicitWidth = 854
  end
  object Timer1: TTimer
    Interval = 300
    OnTimer = Timer1Timer
    Left = 976
    Top = 8
  end
  object sqlClientes: TZQuery
    Connection = frmPrincipal.ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM CLIENTES')
    Params = <>
    Left = 920
    Top = 64
    object sqlClientesid: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'id'
      Required = True
    end
    object sqlClientesnome: TWideStringField
      DisplayLabel = 'NOME'
      DisplayWidth = 49
      FieldName = 'nome'
      Size = 50
    end
    object sqlClientestipo: TWideStringField
      DisplayLabel = 'TIPO'
      FieldName = 'tipo'
      Size = 15
    end
    object sqlClientessexo: TWideStringField
      DisplayLabel = 'SEXO'
      FieldName = 'sexo'
    end
    object sqlClientescpf: TWideStringField
      DisplayLabel = 'CPF'
      FieldName = 'cpf'
    end
    object sqlClientesrg: TWideStringField
      DisplayLabel = 'RG'
      FieldName = 'rg'
    end
    object sqlClientescep: TWideStringField
      DisplayLabel = 'CEP'
      FieldName = 'cep'
    end
    object sqlClientesinsc_estadual: TWideStringField
      DisplayLabel = 'INSC. ESTADUAL'
      FieldName = 'insc_estadual'
    end
    object sqlClientesendereco: TWideStringField
      DisplayLabel = 'ENDERE'#199'O'
      FieldName = 'endereco'
      Size = 50
    end
    object sqlClientesnum_end: TWideStringField
      DisplayLabel = 'N'#176' ENDERE'#199'O'
      FieldName = 'num_end'
    end
    object sqlClientesbairro: TWideMemoField
      DisplayLabel = 'BAIRRO'
      FieldName = 'bairro'
      BlobType = ftWideMemo
    end
    object sqlClientescidade: TWideStringField
      DisplayLabel = 'CIDADE'
      FieldName = 'cidade'
    end
    object sqlClientesuf: TWideStringField
      DisplayLabel = 'UF'
      FieldName = 'uf'
    end
    object sqlClientestelefone: TWideStringField
      DisplayLabel = 'TELEFONE'
      FieldName = 'telefone'
    end
    object sqlClientesemail: TWideStringField
      DisplayLabel = 'EMAIL'
      FieldName = 'email'
      Size = 80
    end
    object sqlClientesdata_nascimento: TDateField
      DisplayLabel = 'DATA DE NASCIMENTO'
      FieldName = 'data_nascimento'
    end
    object sqlClientesdata_cadastro: TDateField
      DisplayLabel = 'DATA DE CADASTRO'
      FieldName = 'data_cadastro'
    end
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
  object dsClientes: TDataSource
    DataSet = sqlClientes
    Left = 976
    Top = 64
  end
end
