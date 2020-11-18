object frmConsulta_Produto: TfrmConsulta_Produto
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Estoque - Produto'
  ClientHeight = 591
  ClientWidth = 854
  Color = cl3DLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 22
    Top = 152
    Width = 72
    Height = 16
    Caption = 'LOCALIZAR'
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
    Width = 854
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    Color = 13095379
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 726
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 572
    Width = 854
    Height = 19
    Panels = <
      item
        Width = 50
      end>
    ExplicitTop = 543
    ExplicitWidth = 726
  end
  object Panel1: TPanel
    Left = 0
    Top = 528
    Width = 854
    Height = 44
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 499
    ExplicitWidth = 726
    object btnNovo: TSpeedButton
      Left = 4
      Top = 2
      Width = 84
      Height = 40
      Cursor = crHandPoint
      Action = actNovo
      Flat = True
    end
    object btnEditar: TSpeedButton
      Left = 94
      Top = 2
      Width = 84
      Height = 40
      Cursor = crHandPoint
      Action = actEditar
      Flat = True
    end
    object btnExcluir: TSpeedButton
      Left = 184
      Top = 2
      Width = 84
      Height = 40
      Cursor = crHandPoint
      Action = actExcluir
      Flat = True
    end
  end
  object JvDBGrid2: TJvDBGrid
    Left = 0
    Top = 208
    Width = 854
    Height = 320
    Align = alBottom
    BiDiMode = bdLeftToRight
    DataSource = dsProdutos
    DrawingStyle = gdsGradient
    GradientEndColor = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 3
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
  end
  object edtLocalizar: TEdit
    Left = 22
    Top = 174
    Width = 246
    Height = 21
    TabOrder = 4
    OnChange = edtLocalizarChange
  end
  object tbPesquisar: TJvPageControl
    Left = 0
    Top = 121
    Width = 854
    Height = 24
    ActivePage = tbsPesquisar
    Align = alTop
    BiDiMode = bdRightToLeftNoAlign
    ParentBiDiMode = False
    TabOrder = 5
    ParentColor = False
    Color = clSilver
    ExplicitWidth = 726
    object tbsPesquisar: TTabSheet
      Caption = 'PESQUISAR'
      ImageIndex = 1
      ExplicitWidth = 718
    end
  end
  object BalloonHint1: TBalloonHint
    Style = bhsStandard
    Left = 674
    Top = 64
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 683
    Top = 8
  end
  object ActionList1: TActionList
    Images = frmPrincipal.ImageList32
    Left = 619
    Top = 8
    object actNovo: TAction
      Caption = 'Novo'
      ImageIndex = 0
      OnExecute = actNovoExecute
    end
    object actEditar: TAction
      Caption = 'Editar'
      ImageIndex = 1
      OnExecute = actEditarExecute
    end
    object actExcluir: TAction
      Caption = 'Excluir'
      ImageIndex = 2
      OnExecute = actExcluirExecute
    end
    object actSalvar: TAction
      Caption = 'Salvar'
      ImageIndex = 3
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
      ImageIndex = 4
    end
    object actLanca_Movimentacao: TAction
      ImageIndex = 5
      OnExecute = actLanca_MovimentacaoExecute
    end
    object actMovimentacao: TAction
      ImageIndex = 6
      OnExecute = actMovimentacaoExecute
    end
  end
  object sqlProdutos: TZQuery
    Connection = frmPrincipal.ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM produtos')
    Params = <>
    Left = 544
    Top = 8
    object sqlProdutosid: TIntegerField
      DisplayWidth = 6
      FieldName = 'id'
      Required = True
    end
    object sqlProdutosid_produto_grupo: TIntegerField
      FieldName = 'id_produto_grupo'
    end
    object sqlProdutosid_unid_medidas: TIntegerField
      FieldName = 'id_unid_medidas'
    end
    object sqlProdutosproduto: TWideStringField
      DisplayWidth = 35
      FieldName = 'produto'
      Size = 60
    end
    object sqlProdutoscod_barras: TWideStringField
      DisplayWidth = 20
      FieldName = 'cod_barras'
      Size = 30
    end
    object sqlProdutoscod_referencias: TWideStringField
      FieldName = 'cod_referencias'
      Size = 30
    end
    object sqlProdutospreco_compra: TFloatField
      FieldName = 'preco_compra'
    end
    object sqlProdutospreco_venda: TFloatField
      FieldName = 'preco_venda'
    end
    object sqlProdutosmargem_lucro: TFloatField
      FieldName = 'margem_lucro'
    end
  end
  object dsProdutos: TDataSource
    DataSet = sqlProdutos
    Left = 544
    Top = 64
  end
end
