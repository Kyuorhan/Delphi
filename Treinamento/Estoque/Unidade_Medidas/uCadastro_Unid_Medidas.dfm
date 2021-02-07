object frmCadastro_Unid_Medidas: TfrmCadastro_Unid_Medidas
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro/Unidades de Medidas'
  ClientHeight = 384
  ClientWidth = 414
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 54
    Top = 221
    Width = 85
    Height = 16
    Caption = 'ABREVIA'#199#195'O'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbDescricao: TLabel
    Left = 54
    Top = 172
    Width = 73
    Height = 16
    Caption = 'DESCRI'#199#195'O'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object JvPanel2: TJvPanel
    Left = 0
    Top = 315
    Width = 414
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    Color = cl3DLight
    ParentBackground = False
    TabOrder = 0
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 365
    Width = 414
    Height = 19
    Panels = <
      item
        Width = 50
      end>
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
    TabOrder = 2
  end
  object edtAbrevia: TEdit
    Left = 54
    Top = 243
    Width = 85
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
  end
  object edtDescricao: TEdit
    Left = 54
    Top = 194
    Width = 300
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
  end
  object BalloonHint1: TBalloonHint
    Style = bhsStandard
    Left = 354
    Top = 64
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 363
    Top = 8
  end
  object ActionList2: TActionList
    Images = frmPrincipal.ImageList48
    Left = 304
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
