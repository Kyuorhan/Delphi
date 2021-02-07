object fPlanos_Contas_Pesquisa: TfPlanos_Contas_Pesquisa
  Left = 0
  Top = 0
  Caption = 'Planos de Contas/Pesquisa'
  ClientHeight = 441
  ClientWidth = 624
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 66
    Align = alTop
    Alignment = taRightJustify
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
      ExplicitLeft = 35
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
      ExplicitLeft = 43
      ExplicitTop = 4
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
      ExplicitLeft = 43
      ExplicitTop = 4
    end
    object SpeedButton3: TSpeedButton
      Left = 131
      Top = 1
      Width = 65
      Height = 64
      Align = alLeft
      Caption = 'Excluir'
      Layout = blGlyphTop
      OnClick = btnExcluirClick
      ExplicitLeft = 43
      ExplicitTop = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 66
    Width = 624
    Height = 55
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 9
      Top = 6
      Width = 57
      Height = 13
      Caption = 'PESQUISAR'
    end
    object Label2: TLabel
      Left = 209
      Top = 6
      Width = 53
      Height = 13
      Caption = 'NATUREZA'
    end
    object Label3: TLabel
      Left = 335
      Top = 6
      Width = 40
      Height = 13
      Caption = 'ESTADO'
    end
    object edtPlano_Contas: TEdit
      Left = 8
      Top = 24
      Width = 188
      Height = 21
      TabOrder = 0
      OnChange = edtPlano_ContasChange
    end
    object edtEstado: TJvComboBox
      Left = 335
      Top = 24
      Width = 120
      Height = 21
      Style = csDropDownList
      TabOrder = 1
      OnChange = edtPlano_ContasChange
      Items.Strings = (
        ''
        'ATIVO'
        'INATIVO')
    end
    object edtNatureza: TJvComboBox
      Left = 209
      Top = 24
      Width = 120
      Height = 21
      Style = csDropDownList
      TabOrder = 2
      OnChange = edtPlano_ContasChange
      Items.Strings = (
        ''
        'ENTRADA'
        'SA'#205'DA')
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 121
    Width = 624
    Height = 320
    Align = alClient
    DataSource = dmCaixa.dsPlano_contas
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
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'plano_contas'
        Width = 285
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'estrutura'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipo'
        Title.Alignment = taCenter
        Title.Caption = 'TIPO'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'situacao'
        Title.Alignment = taCenter
        Title.Caption = 'SIT.'
        Width = 65
        Visible = True
      end>
  end
end
