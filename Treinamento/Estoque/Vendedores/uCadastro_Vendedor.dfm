object frmCadastro_Vendedor: TfrmCadastro_Vendedor
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro/Vendedores'
  ClientHeight = 457
  ClientWidth = 388
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object lbVendedor: TLabel
    Left = 48
    Top = 196
    Width = 35
    Height = 16
    Caption = 'NOME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 48
    Top = 245
    Width = 68
    Height = 16
    Caption = 'COMISS'#195'O'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtVendedor: TEdit
    Left = 48
    Top = 218
    Width = 290
    Height = 21
    TabOrder = 0
  end
  object JvPanel2: TJvPanel
    Left = 0
    Top = 388
    Width = 388
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    Color = cl3DLight
    ParentBackground = False
    TabOrder = 1
    object btnSalvar: TSpeedButton
      Left = 10
      Top = 0
      Width = 50
      Height = 50
      Hint = 'SALVAR'
      CustomHint = BalloonHint1
      Action = actSalvar1
      Flat = True
    end
    object btnCancelar: TSpeedButton
      Left = 78
      Top = 0
      Width = 50
      Height = 50
      Hint = 'CANCELAR'
      CustomHint = BalloonHint1
      Action = actCancelar
      Flat = True
    end
  end
  object JvPanel1: TJvPanel
    Left = 0
    Top = 0
    Width = 388
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    Color = 13095379
    ParentBackground = False
    TabOrder = 2
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 438
    Width = 388
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object edtComissao: TJvCalcEdit
    Left = 48
    Top = 267
    Width = 122
    Height = 19
    TabStop = False
    Flat = True
    ParentFlat = False
    ButtonFlat = True
    DisplayFormat = ',0.00;,-0.00'
    ImageKind = ikCustom
    ReadOnly = True
    ShowButton = False
    TabOrder = 4
    DecimalPlacesAlwaysShown = False
  end
  object BalloonHint1: TBalloonHint
    Style = bhsStandard
    Left = 330
    Top = 64
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 339
    Top = 8
  end
  object ActionList2: TActionList
    Images = frmPrincipal.ImageList48
    Left = 280
    Top = 8
    object actSalvar1: TAction
      ImageIndex = 0
      OnExecute = actSalvar1Execute
    end
    object actCancelar: TAction
      ImageIndex = 1
      OnExecute = actCancelarExecute
    end
  end
end
