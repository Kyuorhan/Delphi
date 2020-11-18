object frmType_Record: TfrmType_Record
  Left = 0
  Top = 0
  Caption = 'Array Din'#226'mico Type Record'
  ClientHeight = 478
  ClientWidth = 738
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 738
    Height = 137
    Align = alTop
    BevelOuter = bvSpace
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 0
    ExplicitWidth = 674
    object lbAluno: TLabel
      Left = 24
      Top = 13
      Width = 94
      Height = 14
      Caption = 'Nome do Aluno'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbNota1: TLabel
      Left = 24
      Top = 68
      Width = 47
      Height = 14
      Caption = 'Nota 1'#176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbNota2: TLabel
      Left = 151
      Top = 68
      Width = 47
      Height = 14
      Caption = 'Nota 2'#176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtAluno: TEdit
      Left = 24
      Top = 32
      Width = 553
      Height = 21
      TabOrder = 0
    end
    object edtPrimeira_Nota: TEdit
      Left = 24
      Top = 88
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edtSegunda_Nota: TEdit
      Left = 151
      Top = 88
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object btnSalvar_Aluno: TButton
      Left = 288
      Top = 84
      Width = 113
      Height = 29
      Caption = 'Salvar'
      TabOrder = 3
      OnClick = btnSalvar_AlunoClick
    end
    object Button1: TButton
      Left = 416
      Top = 84
      Width = 161
      Height = 29
      Caption = 'Pesquisa Aluno'
      TabOrder = 4
    end
    object BitBtn1: TBitBtn
      Left = 632
      Top = 30
      Width = 75
      Height = 25
      Caption = '&Fechar'
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 5
      OnClick = BitBtn1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 137
    Width = 738
    Height = 341
    Align = alClient
    BevelOuter = bvSpace
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 1
    ExplicitTop = 105
    ExplicitWidth = 635
    ExplicitHeight = 194
    object mmoRegistro: TMemo
      Left = 1
      Top = 1
      Width = 736
      Height = 339
      Align = alClient
      BevelInner = bvSpace
      BevelKind = bkSoft
      BevelOuter = bvNone
      BorderStyle = bsNone
      TabOrder = 0
      ExplicitWidth = 672
      ExplicitHeight = 371
    end
  end
end
