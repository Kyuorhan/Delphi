object frmCadastro_Cidades: TfrmCadastro_Cidades
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro/Cidade'
  ClientHeight = 391
  ClientWidth = 434
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label19: TLabel
    Left = 58
    Top = 174
    Width = 38
    Height = 13
    Caption = 'CIDADE'
  end
  object Label1: TLabel
    Left = 337
    Top = 174
    Width = 13
    Height = 13
    Caption = 'UF'
  end
  object lbCod_IBGE: TLabel
    Left = 58
    Top = 220
    Width = 84
    Height = 13
    Caption = 'C'#211'D. MUNIC'#205'PIO'
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 372
    Width = 434
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object JvPanel1: TJvPanel
    Left = 0
    Top = 0
    Width = 434
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    Color = 13095379
    ParentBackground = False
    TabOrder = 1
  end
  object edtCidade: TEdit
    Left = 58
    Top = 193
    Width = 266
    Height = 21
    TabOrder = 2
  end
  object edtUF: TEdit
    Left = 337
    Top = 193
    Width = 27
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 2
    TabOrder = 3
  end
  object edtCod_IBGE: TEdit
    Left = 58
    Top = 239
    Width = 114
    Height = 21
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 4
  end
  object JvPanel2: TJvPanel
    Left = 0
    Top = 322
    Width = 434
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    Color = cl3DLight
    ParentBackground = False
    TabOrder = 5
    object btnSalvar: TSpeedButton
      Left = 22
      Top = 0
      Width = 50
      Height = 50
      Cursor = crHandPoint
      Action = actSalvar1
      Flat = True
    end
    object btnCancelar: TSpeedButton
      Left = 78
      Top = 0
      Width = 50
      Height = 50
      Cursor = crHandPoint
      Action = actCancelar
      Flat = True
    end
  end
  object ActionList2: TActionList
    Images = frmPrincipal.ImageList48
    Left = 312
    Top = 70
    object actSalvar1: TAction
      ImageIndex = 0
      OnExecute = actSalvar1Execute
    end
    object actCancelar: TAction
      ImageIndex = 1
      OnExecute = actCancelarExecute
    end
  end
  object ActionList1: TActionList
    Images = frmPrincipal.ImageList24
    Left = 376
    Top = 70
    object actSearch1: TAction
      Caption = 'actSearch1'
      ImageIndex = 0
    end
    object actSearch2: TAction
      Caption = 'actSearch2'
      ImageIndex = 0
    end
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 384
    Top = 6
  end
end
