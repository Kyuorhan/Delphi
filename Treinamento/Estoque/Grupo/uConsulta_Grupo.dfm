object frmConsulta_Grupos: TfrmConsulta_Grupos
  Left = 0
  Top = 0
  Caption = 'Estoque - Grupo'
  ClientHeight = 582
  ClientWidth = 358
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
  object JvPanel1: TJvPanel
    Left = 0
    Top = 0
    Width = 358
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    Color = 13095379
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 339
  end
  object edtLocalizar: TEdit
    Left = 22
    Top = 158
    Width = 246
    Height = 21
    TabOrder = 1
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 563
    Width = 358
    Height = 19
    Panels = <
      item
        Width = 50
      end>
    ExplicitTop = 568
    ExplicitWidth = 339
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 195
    Width = 358
    Height = 322
    Align = alBottom
    DataSource = dsGrupos
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 517
    Width = 358
    Height = 46
    Align = alBottom
    Color = clWindow
    ParentBackground = False
    TabOrder = 4
    ExplicitTop = 522
    ExplicitWidth = 339
    object btnNovo: TSpeedButton
      Left = 4
      Top = 6
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
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 315
    Top = 8
  end
  object ActionList1: TActionList
    Images = frmPrincipal.ImageList32
    Left = 304
    Top = 64
    object actNovo1: TAction
      Caption = 'Novo'
      ImageIndex = 0
    end
    object actEditar1: TAction
      Caption = 'Editar'
      ImageIndex = 1
    end
    object eactExcluir1: TAction
      Caption = 'Excluir'
      ImageIndex = 2
    end
  end
  object sqlGrupos: TZQuery
    Connection = frmPrincipal.ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM produtos_grupo')
    Params = <>
    Left = 200
    Top = 8
    object sqlGruposid: TIntegerField
      DisplayWidth = 5
      FieldName = 'id'
      Required = True
    end
    object sqlGruposprodutos_grupo: TWideStringField
      DisplayWidth = 59
      FieldName = 'produtos_grupo'
      Size = 50
    end
  end
  object dsGrupos: TDataSource
    DataSet = sqlGrupos
    Left = 192
    Top = 64
  end
end
