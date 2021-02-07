object frmCadastro_Formas_Pagtos: TfrmCadastro_Formas_Pagtos
  Left = 0
  Top = 0
  Caption = 'frmCadastro_Formas_Pagtos'
  ClientHeight = 469
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbTipo_Pagamento: TLabel
    Left = 54
    Top = 267
    Width = 102
    Height = 13
    Caption = 'TIPO/DOCUMENTO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 54
    Top = 175
    Width = 64
    Height = 13
    Caption = 'DESCRI'#199#195'O'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 54
    Top = 283
    Width = 49
    Height = 13
    Caption = 'CIDADES'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 264
    Top = 221
    Width = 57
    Height = 13
    Caption = 'PRIMEIRO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 335
    Top = 221
    Width = 62
    Height = 13
    Caption = 'INTERVALO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 54
    Top = 221
    Width = 57
    Height = 13
    Caption = 'PARCELAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 54
    Top = 313
    Width = 42
    Height = 13
    Caption = 'CIDADE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object JvPanel2: TJvPanel
    Left = 0
    Top = 400
    Width = 464
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
    Top = 450
    Width = 464
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object edtFormas_Pagtos: TEdit
    Left = 54
    Top = 194
    Width = 355
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object JvPanel1: TJvPanel
    Left = 0
    Top = 0
    Width = 464
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    Color = 13095379
    ParentBackground = False
    TabOrder = 3
  end
  object edtTipo_Documento: TDBLookupComboBox
    Left = 54
    Top = 286
    Width = 122
    Height = 21
    KeyField = 'id'
    ListField = 'documento'
    ListSource = frmContas_Receber.dsTipos_Documentos
    TabOrder = 4
  end
  object edtCidade: TDBLookupComboBox
    Left = 54
    Top = 332
    Width = 267
    Height = 21
    KeyField = 'id'
    ListField = 'documento'
    ListSource = frmContas_Receber.dsTipos_Documentos
    TabOrder = 5
  end
  object edtIntervalo: TEdit
    Left = 335
    Top = 240
    Width = 62
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
  end
  object edtPrimeiro_mes: TEdit
    Left = 264
    Top = 240
    Width = 62
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 7
  end
  object edtParcelas: TEdit
    Left = 54
    Top = 240
    Width = 91
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 8
  end
  object CheckBox1: TCheckBox
    Left = 151
    Top = 242
    Width = 106
    Height = 17
    Caption = 'COM/ENTRADA'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    State = cbChecked
    TabOrder = 9
  end
  object ActionList2: TActionList
    Images = frmPrincipal.ImageList48
    Left = 352
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
  object Timer1: TTimer
    Interval = 100
    Left = 411
    Top = 8
  end
  object BalloonHint1: TBalloonHint
    Style = bhsStandard
    Left = 402
    Top = 64
  end
end
