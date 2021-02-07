object frmConsulta_Unid_Medidas: TfrmConsulta_Unid_Medidas
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Estoque - Unidade de Medidas'
  ClientHeight = 551
  ClientWidth = 414
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
  OnShow = FormShow
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
    Top = 190
    Width = 414
    Height = 294
    Align = alBottom
    DataSource = dsUnid_Medidas
    TabOrder = 0
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
        FieldName = 'unid_medida'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'abrev'
        Width = 50
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 484
    Width = 414
    Height = 48
    Align = alBottom
    Color = clWindow
    ParentBackground = False
    TabOrder = 1
    object btnNovo: TSpeedButton
      Left = 4
      Top = 8
      Width = 86
      Height = 32
      Action = actNovo1
      Flat = True
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
      ParentShowHint = False
      ShowHint = False
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 532
    Width = 414
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object edtLocalizar: TEdit
    Left = 19
    Top = 158
    Width = 246
    Height = 21
    TabOrder = 3
    OnChange = edtLocalizarChange
  end
  object JvPanel1: TJvPanel
    Left = 0
    Top = 0
    Width = 414
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    Color = 13095379
    ParentBackground = False
    TabOrder = 4
  end
  object ActionList1: TActionList
    Images = frmPrincipal.ImageList32
    Left = 360
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
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 371
    Top = 8
  end
  object sqlUnid_Medidas: TZQuery
    Connection = frmPrincipal.ZConnection1
    CachedUpdates = True
    SQL.Strings = (
      'SELECT * FROM unid_medidas')
    Params = <>
    Left = 248
    Top = 8
    object sqlUnid_Medidasid: TIntegerField
      DisplayLabel = 'C'#211'D.'
      DisplayWidth = 22
      FieldName = 'id'
      Required = True
    end
    object sqlUnid_Medidasunid_medida: TWideStringField
      DisplayLabel = 'UNIDADE DE MEDIDAS'
      DisplayWidth = 78
      FieldName = 'unid_medida'
      Size = 30
    end
    object sqlUnid_Medidasabrev: TWideStringField
      DisplayLabel = 'ABREV.'
      DisplayWidth = 7
      FieldName = 'abrev'
      Size = 3
    end
  end
  object dsUnid_Medidas: TDataSource
    DataSet = sqlUnid_Medidas
    Left = 248
    Top = 64
  end
end
