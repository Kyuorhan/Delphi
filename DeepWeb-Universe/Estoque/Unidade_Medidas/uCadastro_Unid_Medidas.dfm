object frmCadastro_Unid_Medidas: TfrmCadastro_Unid_Medidas
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro/Unidades de Medidas'
  ClientHeight = 362
  ClientWidth = 372
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbDescricao: TLabel
    Left = 33
    Top = 156
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
  object Label1: TLabel
    Left = 33
    Top = 205
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
  object JvPanel2: TJvPanel
    Left = 0
    Top = 293
    Width = 372
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    Color = cl3DLight
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 249
    ExplicitWidth = 404
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
    Top = 343
    Width = 372
    Height = 19
    Panels = <
      item
        Width = 50
      end>
    ExplicitTop = 280
    ExplicitWidth = 404
  end
  object edtDescricao: TEdit
    Left = 33
    Top = 178
    Width = 296
    Height = 21
    TabOrder = 2
  end
  object JvPanel1: TJvPanel
    Left = 0
    Top = 0
    Width = 372
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    Color = 13095379
    ParentBackground = False
    TabOrder = 3
    ExplicitLeft = -48
    ExplicitWidth = 442
  end
  object Edit1: TEdit
    Left = 33
    Top = 227
    Width = 85
    Height = 21
    TabOrder = 4
  end
  object BalloonHint1: TBalloonHint
    Style = bhsStandard
    Left = 298
    Top = 64
  end
  object Timer1: TTimer
    Interval = 100
    Left = 307
    Top = 8
  end
  object ActionList2: TActionList
    Images = frmPrincipal.ImageList48
    Left = 248
    Top = 8
    object actSalvar1: TAction
      ImageIndex = 0
    end
    object actCancelar: TAction
      ImageIndex = 1
    end
  end
end
