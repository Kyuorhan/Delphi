object frmConsulta_Venda: TfrmConsulta_Venda
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Estoque - Vendas'
  ClientHeight = 548
  ClientWidth = 678
  Color = cl3DLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 529
    Width = 678
    Height = 19
    Panels = <
      item
        Width = 50
      end>
    ExplicitLeft = -91
    ExplicitTop = 280
    ExplicitWidth = 726
  end
  object Panel1: TPanel
    Left = 0
    Top = 485
    Width = 678
    Height = 44
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = -8
    ExplicitTop = 374
    ExplicitWidth = 673
    object btnNovo: TSpeedButton
      Left = 4
      Top = 2
      Width = 84
      Height = 40
      Cursor = crHandPoint
      Action = actNovo
      Flat = True
    end
    object btnEditar: TSpeedButton
      Left = 94
      Top = 2
      Width = 84
      Height = 40
      Cursor = crHandPoint
      Action = actEditar
      Flat = True
    end
    object btnExcluir: TSpeedButton
      Left = 184
      Top = 2
      Width = 84
      Height = 40
      Cursor = crHandPoint
      Action = actExcluir
      Flat = True
    end
  end
  object JvPanel1: TJvPanel
    Left = 0
    Top = 0
    Width = 678
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    Color = 13095379
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = -53
    ExplicitWidth = 726
  end
  object JvDBGrid2: TJvDBGrid
    Left = 0
    Top = 194
    Width = 678
    Height = 291
    Align = alBottom
    BiDiMode = bdLeftToRight
    DrawingStyle = gdsGradient
    GradientEndColor = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 3
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
  end
  object BalloonHint1: TBalloonHint
    Style = bhsStandard
    Left = 618
    Top = 64
  end
  object ActionList1: TActionList
    Images = frmPrincipal.ImageList32
    Left = 627
    Top = 8
    object actNovo: TAction
      Caption = 'Novo'
      ImageIndex = 0
    end
    object actEditar: TAction
      Caption = 'Editar'
      ImageIndex = 1
    end
    object actExcluir: TAction
      Caption = 'Excluir'
      ImageIndex = 2
    end
    object actSalvar: TAction
      Caption = 'Salvar'
      ImageIndex = 3
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
      ImageIndex = 4
    end
    object actQuitar: TAction
      Caption = 'Quitar'
      ImageIndex = 8
    end
    object actEstornar: TAction
      Caption = 'Estornar'
      ImageIndex = 6
    end
  end
end
