object frmConsulta_Cidades: TfrmConsulta_Cidades
  Left = 0
  Top = 0
  Caption = 'Consulta/Cidade'
  ClientHeight = 601
  ClientWidth = 504
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
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
  object tbPesquisar: TJvPageControl
    Left = 0
    Top = 121
    Width = 504
    Height = 24
    ActivePage = tbsPesquisar
    Align = alTop
    BiDiMode = bdRightToLeftNoAlign
    ParentBiDiMode = False
    TabOrder = 0
    ParentColor = False
    Color = cl3DLight
    object tbsPesquisar: TTabSheet
      Caption = 'PESQUISAR'
      ImageIndex = 1
    end
  end
  object JvPanel1: TJvPanel
    Left = 0
    Top = 0
    Width = 504
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    Color = 13095379
    ParentBackground = False
    TabOrder = 1
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 582
    Width = 504
    Height = 19
    Panels = <
      item
        Width = 50
      end>
    ExplicitTop = 502
  end
  object Panel1: TPanel
    Left = 0
    Top = 536
    Width = 504
    Height = 46
    Align = alBottom
    Color = clWindow
    ParentBackground = False
    TabOrder = 3
    ExplicitTop = 456
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
      Action = actExcluir1
      Flat = True
      ParentShowHint = False
      ShowHint = False
    end
  end
  object JvDBGrid2: TJvDBGrid
    Left = 0
    Top = 208
    Width = 504
    Height = 328
    Align = alBottom
    BiDiMode = bdLeftToRight
    DataSource = dsCidades
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
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cidade'
        Width = 325
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'uf'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cod_ibge'
        Visible = True
      end>
  end
  object edtLocalizar: TEdit
    Left = 22
    Top = 174
    Width = 246
    Height = 21
    TabOrder = 5
    OnChange = edtLocalizarChange
  end
  object dsCidades: TDataSource
    DataSet = sqlCidades
    Left = 320
    Top = 64
  end
  object sqlCidades: TZQuery
    Connection = frmPrincipal.ZConnection1
    SQL.Strings = (
      'SELECT * FROM cidades')
    Params = <>
    Left = 320
    Top = 8
    object sqlCidadesid: TIntegerField
      DisplayLabel = 'C'#211'D.'
      DisplayWidth = 8
      FieldName = 'id'
      Required = True
    end
    object sqlCidadescidade: TWideStringField
      DisplayLabel = 'CIDADES'
      FieldName = 'cidade'
      Size = 50
    end
    object sqlCidadesuf: TWideStringField
      DisplayLabel = 'UF'
      FieldName = 'uf'
      Size = 8
    end
    object sqlCidadescod_ibge: TWideStringField
      DisplayLabel = 'C'#211'D. IBGE'
      FieldName = 'cod_ibge'
      Size = 11
    end
  end
  object ActionList1: TActionList
    Images = frmPrincipal.ImageList32
    Left = 408
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
    object actExcluir1: TAction
      Caption = 'Excluir'
      ImageIndex = 2
      OnExecute = actExcluir1Execute
    end
  end
  object Timer1: TTimer
    Interval = 100
    Left = 464
    Top = 6
  end
end
