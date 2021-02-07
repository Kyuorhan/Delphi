object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 473
  ClientWidth = 701
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 701
    Height = 66
    Align = alTop
    TabOrder = 0
    object btnExcluir: TSpeedButton
      Left = 131
      Top = 1
      Width = 65
      Height = 64
      Align = alLeft
      Caption = 'Excluir'
      Layout = blGlyphTop
      ExplicitLeft = 1
    end
    object btnAlterar: TSpeedButton
      Left = 66
      Top = 1
      Width = 65
      Height = 64
      Align = alLeft
      Caption = 'Alterar'
      Layout = blGlyphTop
      ExplicitLeft = 1
    end
    object btnNovo: TSpeedButton
      Left = 1
      Top = 1
      Width = 65
      Height = 64
      Align = alLeft
      Caption = 'Novo'
      Layout = blGlyphTop
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 66
    Width = 701
    Height = 55
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 57
      Height = 13
      Caption = 'PESQUISAR'
    end
    object Edit1: TEdit
      Left = 8
      Top = 24
      Width = 188
      Height = 21
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 121
    Width = 701
    Height = 352
    Align = alClient
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
