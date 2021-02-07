object frmConsulta_Vendedor: TfrmConsulta_Vendedor
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Estoque - Vendedores'
  ClientHeight = 657
  ClientWidth = 485
  Color = cl3DLight
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 27
    Top = 136
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
  object btnComissao: TSpeedButton
    Left = 344
    Top = 143
    Width = 105
    Height = 44
    Action = actComissao
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
  object Panel1: TPanel
    Left = 0
    Top = 590
    Width = 485
    Height = 48
    Align = alBottom
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    object btnNovo: TSpeedButton
      Left = 4
      Top = 8
      Width = 86
      Height = 32
      Action = actNovo1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
    end
    object btnEditar: TSpeedButton
      Left = 96
      Top = 8
      Width = 86
      Height = 32
      Action = actEditar1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
    end
    object btnExcluir: TSpeedButton
      Left = 188
      Top = 8
      Width = 86
      Height = 32
      Action = actExcluir1
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 638
    Width = 485
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object JvPanel1: TJvPanel
    Left = 0
    Top = 0
    Width = 485
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    Color = 13095379
    ParentBackground = False
    TabOrder = 2
  end
  object edtLocalizar: TEdit
    Left = 27
    Top = 158
    Width = 294
    Height = 21
    TabOrder = 3
    OnChange = edtLocalizarChange
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 200
    Width = 485
    Height = 390
    Align = alBottom
    DataSource = dsVendedor
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vendedor'
        Width = 325
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'comissao'
        Width = 89
        Visible = True
      end>
  end
  object ActionList1: TActionList
    Images = frmPrincipal.ImageList32
    Left = 392
    Top = 64
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
    object actExcluir1: TAction
      Caption = 'Excluir'
      ImageIndex = 2
      OnExecute = actExcluir1Execute
    end
    object actComissao: TAction
      Caption = 'Comiss'#227'o'
      ImageIndex = 8
      OnExecute = actComissaoExecute
    end
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 403
    Top = 8
  end
  object sqlVendedor: TZQuery
    Connection = frmPrincipal.ZConnection1
    SQL.Strings = (
      'SELECT * FROM vendedores')
    Params = <>
    Left = 240
    Top = 8
    object sqlVendedorid: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'id'
      Required = True
    end
    object sqlVendedorvendedor: TWideStringField
      DisplayLabel = 'VENDEDOR'
      FieldName = 'vendedor'
      Size = 60
    end
    object sqlVendedorcomissao: TFloatField
      Alignment = taLeftJustify
      DisplayLabel = 'COMISS'#195'O'
      FieldName = 'comissao'
      currency = True
    end
  end
  object dsVendedor: TDataSource
    DataSet = sqlVendedor
    Left = 240
    Top = 64
  end
end
