object frmContas_Banco: TfrmContas_Banco
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Contas/Banco - Consultas'
  ClientHeight = 611
  ClientWidth = 1018
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object JvPanel1: TJvPanel
    Left = 0
    Top = 0
    Width = 1018
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    Color = 13095379
    ParentBackground = False
    TabOrder = 0
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 592
    Width = 1018
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 548
    Width = 1018
    Height = 44
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object btnNovo: TSpeedButton
      Left = 4
      Top = 6
      Width = 84
      Height = 32
      Cursor = crHandPoint
      Action = actNovo
      Flat = True
    end
    object btnEditar: TSpeedButton
      Left = 94
      Top = 6
      Width = 84
      Height = 32
      Cursor = crHandPoint
      Action = actEditar
      Flat = True
    end
    object btnExcluir: TSpeedButton
      Left = 184
      Top = 6
      Width = 84
      Height = 32
      Cursor = crHandPoint
      Action = actExcluir
      Flat = True
    end
    object btnSalvar: TSpeedButton
      Left = 287
      Top = 6
      Width = 84
      Height = 32
      Cursor = crHandPoint
      Action = actSalvar
      Flat = True
    end
    object btnCancelar: TSpeedButton
      Left = 377
      Top = 6
      Width = 84
      Height = 32
      Cursor = crHandPoint
      Action = actCancelar
      Flat = True
    end
  end
  object tbPesquisar: TJvPageControl
    Left = 0
    Top = 121
    Width = 1018
    Height = 427
    ActivePage = tbsPesquisar
    Align = alClient
    BiDiMode = bdRightToLeftNoAlign
    ParentBiDiMode = False
    TabOrder = 3
    ParentColor = False
    Color = clSilver
    object tbsPesquisar: TTabSheet
      Caption = 'PESQUISAR'
      ImageIndex = 1
      object edtNome: TEdit
        Left = 6
        Top = 7
        Width = 339
        Height = 21
        Color = cl3DLight
        TabOrder = 0
      end
      object JvDBGrid2: TJvDBGrid
        Left = 360
        Top = 3
        Width = 643
        Height = 393
        Align = alCustom
        BiDiMode = bdLeftToRight
        DrawingStyle = gdsGradient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
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
    end
  end
  object ActionList1: TActionList
    Images = frmPrincipal.ImageList32
    Left = 872
    Top = 8
    object actNovo: TAction
      Caption = 'Novo'
      ImageIndex = 0
      OnExecute = actNovoExecute
    end
    object actEditar: TAction
      Caption = 'Editar'
      ImageIndex = 1
      OnExecute = actEditarExecute
    end
    object actExcluir: TAction
      Caption = 'Excluir'
      ImageIndex = 2
      OnExecute = actExcluirExecute
    end
    object actSalvar: TAction
      Caption = 'Salvar'
      ImageIndex = 3
      OnExecute = actSalvarExecute
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
      ImageIndex = 4
      OnExecute = actCancelarExecute
    end
  end
  object ActionList2: TActionList
    Images = frmPrincipal.ImageList64
    Left = 928
    Top = 8
    object actGerarBoleto: TAction
      Caption = 'actGerarBoleto'
      ImageIndex = 0
    end
  end
  object Timer1: TTimer
    Interval = 300
    OnTimer = Timer1Timer
    Left = 976
    Top = 8
  end
  object sqlBanco: TZQuery
    Params = <>
    Left = 888
    Top = 64
  end
  object dsBanco: TDataSource
    Left = 960
    Top = 64
  end
end
