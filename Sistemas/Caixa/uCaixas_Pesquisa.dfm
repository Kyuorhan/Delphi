object fCaixas_Pesquisa: TfCaixas_Pesquisa
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Caixas'
  ClientHeight = 551
  ClientWidth = 534
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 534
    Height = 66
    Align = alTop
    TabOrder = 0
    object btnAlterar: TSpeedButton
      Left = 66
      Top = 1
      Width = 65
      Height = 64
      Align = alLeft
      Caption = 'Alterar'
      Layout = blGlyphTop
      OnClick = btnNovoClick
      ExplicitLeft = 60
      ExplicitTop = 4
    end
    object btnNovo: TSpeedButton
      Left = 1
      Top = 1
      Width = 65
      Height = 64
      Align = alLeft
      Caption = 'Novo'
      Layout = blGlyphTop
      OnClick = btnNovoClick
      ExplicitLeft = -5
      ExplicitTop = 4
    end
    object btnExcluir: TSpeedButton
      Left = 131
      Top = 1
      Width = 65
      Height = 64
      Align = alLeft
      Caption = 'Excluir'
      Layout = blGlyphTop
      OnClick = btnExcluirClick
      ExplicitLeft = 1
    end
    object btnAtivar: TSpeedButton
      Left = 196
      Top = 1
      Width = 65
      Height = 64
      Align = alLeft
      Caption = 'Ativar'
      Layout = blGlyphTop
      OnClick = btnAtivarClick
      ExplicitLeft = 308
      ExplicitTop = -4
    end
    object btnDesativar: TSpeedButton
      Left = 261
      Top = 1
      Width = 65
      Height = 64
      Align = alLeft
      Caption = 'Desativar'
      Layout = blGlyphTop
      OnClick = btnDesativarClick
      ExplicitLeft = 291
      ExplicitTop = -4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 66
    Width = 534
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
    object edtCaixa: TEdit
      Left = 8
      Top = 24
      Width = 188
      Height = 21
      TabOrder = 0
      OnChange = edtCaixaChange
    end
    object cInativos: TCheckBox
      Left = 216
      Top = 24
      Width = 97
      Height = 17
      Caption = 'Listar Inativos'
      TabOrder = 1
      OnClick = edtCaixaChange
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 121
    Width = 534
    Height = 430
    Align = alClient
    DataSource = dmCaixa.dsCaixas
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'caixa'
        Width = 350
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ativo'
        Title.Alignment = taCenter
        Width = 85
        Visible = True
      end>
  end
end
