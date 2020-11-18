object frmConsulta_Unid_Medidas: TfrmConsulta_Unid_Medidas
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Estoque - Unidade de Medidas'
  ClientHeight = 594
  ClientWidth = 461
  Color = cl3DLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 192
    Width = 461
    Height = 337
    Align = alBottom
    DataSource = dsUnid_Medidas
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 529
    Width = 461
    Height = 46
    Align = alBottom
    Color = clWindow
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 398
    ExplicitWidth = 358
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
      OnClick = btnExcluirClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 575
    Width = 461
    Height = 19
    Panels = <
      item
        Width = 50
      end>
    ExplicitTop = 425
    ExplicitWidth = 358
  end
  object edtLocalizar: TEdit
    Left = 22
    Top = 158
    Width = 246
    Height = 21
    TabOrder = 3
  end
  object JvPanel1: TJvPanel
    Left = 0
    Top = 0
    Width = 461
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    Color = 13095379
    ParentBackground = False
    TabOrder = 4
    ExplicitWidth = 339
  end
  object ActionList1: TActionList
    Images = frmPrincipal.ImageList32
    Left = 400
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
  object Timer1: TTimer
    Interval = 100
    Left = 403
    Top = 8
  end
  object sqlUnid_Medidas: TZQuery
    Connection = frmPrincipal.ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM unid_medidas')
    Params = <>
    Left = 288
    Top = 8
    object sqlUnid_Medidasid: TIntegerField
      DisplayWidth = 12
      FieldName = 'id'
      Required = True
    end
    object sqlUnid_Medidasunid_medida: TWideStringField
      DisplayWidth = 65
      FieldName = 'unid_medida'
      Size = 30
    end
    object sqlUnid_Medidasabrev: TWideStringField
      DisplayWidth = 6
      FieldName = 'abrev'
      Size = 3
    end
  end
  object dsUnid_Medidas: TDataSource
    DataSet = sqlUnid_Medidas
    Left = 288
    Top = 64
  end
end