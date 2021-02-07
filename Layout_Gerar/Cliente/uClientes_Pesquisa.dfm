object fClientes_Pesquisa: TfClientes_Pesquisa
  Left = 0
  Top = 0
  Caption = 'fClientes_Pesquisa'
  ClientHeight = 581
  ClientWidth = 746
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 746
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
    object btnImprimir: TSpeedButton
      Left = 196
      Top = 1
      Width = 65
      Height = 64
      Align = alLeft
      Caption = 'Imprimir'
      Layout = blGlyphTop
      ExplicitLeft = 347
      ExplicitTop = 21
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 66
    Width = 746
    Height = 63
    Align = alTop
    BevelOuter = bvLowered
    Color = cl3DLight
    ParentBackground = False
    TabOrder = 1
    object lbPesq: TLabel
      Left = 9
      Top = 10
      Width = 57
      Height = 13
      Caption = 'PESQUISAR'
    end
    object edtNome: TEdit
      Left = 9
      Top = 29
      Width = 209
      Height = 21
      TabOrder = 0
      OnKeyPress = edtNomeKeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 129
    Width = 746
    Height = 389
    Align = alClient
    BorderStyle = bsNone
    DataSource = dmCliente.dsClientes
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 225
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sexo'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'endereco'
        Width = 225
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'num_end'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_nascimento'
        Visible = True
      end>
  end
  object Panel4: TPanel
    Left = 0
    Top = 518
    Width = 746
    Height = 63
    Align = alBottom
    BevelOuter = bvLowered
    Color = cl3DLight
    ParentBackground = False
    TabOrder = 3
  end
end
