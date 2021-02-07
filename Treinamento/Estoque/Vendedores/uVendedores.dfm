object frmConsulta_Vendedores: TfrmConsulta_Vendedores
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Estoque - Vendedores'
  ClientHeight = 657
  ClientWidth = 485
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 19
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
  object Panel1: TPanel
    Left = 0
    Top = 590
    Width = 485
    Height = 48
    Align = alBottom
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 484
    ExplicitWidth = 414
    object btnNovo: TSpeedButton
      Left = 4
      Top = 8
      Width = 86
      Height = 32
      Action = actNovo1
      Flat = True
      ParentShowHint = False
      ShowHint = False
      OnClick = btnNovoClick
    end
    object btnEditar: TSpeedButton
      Left = 96
      Top = 8
      Width = 86
      Height = 32
      Action = actEditar1
      Flat = True
      ParentShowHint = False
      ShowHint = False
      OnClick = btnEditarClick
    end
    object btnExcluir: TSpeedButton
      Left = 188
      Top = 8
      Width = 86
      Height = 32
      Action = actExcluir1
      Flat = True
      ParentShowHint = False
      ShowHint = False
      OnClick = btnExcluirClick
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
    ExplicitTop = 532
    ExplicitWidth = 414
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
    ExplicitWidth = 414
  end
  object edtLocalizar: TEdit
    Left = 19
    Top = 158
    Width = 246
    Height = 21
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 202
    Width = 485
    Height = 388
    Align = alBottom
    DataSource = dsVendedores
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
        Width = 75
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
    end
    object actEditar1: TAction
      Caption = 'Editar'
      ImageIndex = 1
    end
    object actExcluir1: TAction
      Caption = 'Excluir'
      ImageIndex = 2
    end
  end
  object Timer1: TTimer
    Interval = 100
    Left = 403
    Top = 8
  end
  object sqlVendedores: TZQuery
    Connection = frmPrincipal.ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM vendedores')
    Params = <>
    Left = 240
    Top = 8
    object sqlVendedoresid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sqlVendedoresvendedor: TWideStringField
      FieldName = 'vendedor'
      Size = 60
    end
    object sqlVendedorescomissao: TFloatField
      FieldName = 'comissao'
    end
  end
  object dsVendedores: TDataSource
    DataSet = sqlVendedores
    Left = 240
    Top = 64
  end
end
