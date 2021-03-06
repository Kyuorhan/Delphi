object frmConsulta_Formas_Pagtos: TfrmConsulta_Formas_Pagtos
  Left = 0
  Top = 0
  ClientHeight = 581
  ClientWidth = 618
  Color = cl3DLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
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
    Top = 514
    Width = 618
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
    Top = 562
    Width = 618
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
    TabOrder = 2
    OnChange = edtLocalizarChange
  end
  object JvPanel1: TJvPanel
    Left = 0
    Top = 0
    Width = 618
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    Color = 13095379
    ParentBackground = False
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 200
    Width = 618
    Height = 314
    Align = alBottom
    DataSource = dsFormas_Pagtos
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'forma_pagto'
        Width = 225
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'entrada'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'parcelas'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'primeiro_mes'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'intervalo'
        Width = 75
        Visible = True
      end>
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 483
    Top = 8
  end
  object ActionList1: TActionList
    Images = frmPrincipal.ImageList32
    Left = 472
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
  object sqlFormas_Pagtos: TZQuery
    Connection = frmPrincipal.ZConnection1
    SQL.Strings = (
      'SELECT * FROM formas_pagtos')
    Params = <>
    Left = 184
    Top = 8
    object sqlFormas_Pagtosid: TIntegerField
      DisplayLabel = 'C'#211'D.'
      FieldName = 'id'
      Required = True
    end
    object sqlFormas_Pagtosforma_pagto: TWideStringField
      DisplayLabel = 'FORMAS/PAGTOS'
      FieldName = 'forma_pagto'
      Size = 50
    end
    object sqlFormas_Pagtosentrada: TWideStringField
      DisplayLabel = 'ENTRADA'
      FieldName = 'entrada'
      Size = 1
    end
    object sqlFormas_Pagtosparcelas: TIntegerField
      DisplayLabel = 'PARCELAS'
      FieldName = 'parcelas'
    end
    object sqlFormas_Pagtosprimeiro_mes: TIntegerField
      DisplayLabel = 'PRIMEIRO/MES'
      FieldName = 'primeiro_mes'
    end
    object sqlFormas_Pagtosintervalo: TIntegerField
      DisplayLabel = 'INTERVALO'
      FieldName = 'intervalo'
    end
  end
  object dsFormas_Pagtos: TDataSource
    AutoEdit = False
    DataSet = sqlFormas_Pagtos
    Left = 184
    Top = 64
  end
end
