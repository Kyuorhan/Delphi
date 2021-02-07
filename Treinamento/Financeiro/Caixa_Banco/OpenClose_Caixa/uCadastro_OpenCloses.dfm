object frmCadastro_OpenCloses: TfrmCadastro_OpenCloses
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cadastro Abertura/Fechamento do Caixa'
  ClientHeight = 531
  ClientWidth = 474
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object lbData: TLabel
    Left = 272
    Top = 338
    Width = 41
    Height = 16
    Caption = 'DATA:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbValor: TLabel
    Left = 260
    Top = 387
    Width = 44
    Height = 16
    Caption = 'VALOR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbTipo_Contas: TLabel
    Left = 264
    Top = 240
    Width = 103
    Height = 16
    Caption = 'TIPO DE CONTAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 272
    Top = 289
    Width = 128
    Height = 16
    Caption = 'PREV. FECHAMENTO:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbOpen_Date: TLabel
    Left = 64
    Top = 289
    Width = 95
    Height = 16
    Caption = 'DATA ABERTO:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbDescricao: TLabel
    Left = 48
    Top = 190
    Width = 68
    Height = 16
    Caption = 'DESCR'#199#195'O'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object çbUserSatus: TLabel
    Left = 48
    Top = 240
    Width = 109
    Height = 16
    Caption = 'STATUS USU'#193'RIO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbTipo_pagamento: TLabel
    Left = 48
    Top = 387
    Width = 131
    Height = 16
    Caption = 'TIPO DE PAGAMENTO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbClose_Date: TLabel
    Left = 64
    Top = 338
    Width = 103
    Height = 16
    Caption = 'DATA FECHADO:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbNome: TLabel
    Left = 48
    Top = 141
    Width = 35
    Height = 16
    Caption = 'NOME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 512
    Width = 474
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object jvdData: TJvDateEdit
    Left = 272
    Top = 360
    Width = 145
    Height = 21
    ShowNullDate = False
    TabOrder = 9
  end
  object jvcValor: TJvCalcEdit
    Left = 260
    Top = 409
    Width = 165
    Height = 19
    Flat = True
    ParentFlat = False
    ButtonFlat = True
    DisplayFormat = ',0.00;-,0.00'
    ImageKind = ikCustom
    TabOrder = 10
    DecimalPlacesAlwaysShown = False
  end
  object jvdPrev_Fechamento: TJvDateEdit
    Left = 272
    Top = 311
    Width = 145
    Height = 21
    ShowNullDate = False
    TabOrder = 8
  end
  object jvdOpen_Date: TJvDateEdit
    Left = 56
    Top = 311
    Width = 145
    Height = 21
    ShowNullDate = False
    TabOrder = 4
  end
  object edtDesc: TEdit
    Left = 48
    Top = 212
    Width = 377
    Height = 21
    Color = cl3DLight
    TabOrder = 2
  end
  object edtTipo_Contas: TComboBox
    Left = 260
    Top = 262
    Width = 165
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 7
    Text = 'FECHAM. DI'#193'RIO'
    Items.Strings = (
      'FECHAM. DI'#193'RIO'
      'FECHAM. SEMANAL'
      'FECHAM. MENSAL'
      'FECHAM. ANUAL')
  end
  object edtStatus_User: TComboBox
    Left = 48
    Top = 262
    Width = 165
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 3
    Text = 'ABERTO'
    OnChange = edtStatus_UserChange
    Items.Strings = (
      'ABERTO'
      'FECHADO')
  end
  object JvPanel1: TJvPanel
    Left = 0
    Top = 0
    Width = 474
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    Color = 13095379
    ParentBackground = False
    TabOrder = 11
  end
  object JvPanel2: TJvPanel
    Left = 0
    Top = 462
    Width = 474
    Height = 50
    Hint = 'CANCELAR'
    CustomHint = BalloonHint1
    Align = alBottom
    BevelOuter = bvNone
    Color = cl3DLight
    ParentBackground = False
    TabOrder = 12
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
      CustomHint = BalloonHint1
      Action = actCancelar
      Flat = True
    end
  end
  object edtTipo_Pagamento: TComboBox
    Left = 48
    Top = 409
    Width = 165
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 6
    Text = 'CR'#201'DITO'
    Items.Strings = (
      'CR'#201'DITO'
      'D'#201'BITO'
      'BOLETO'
      '')
  end
  object jvdClose_Date: TJvDateEdit
    Left = 56
    Top = 360
    Width = 145
    Height = 21
    ShowNullDate = False
    TabOrder = 5
  end
  object edtNome: TEdit
    Left = 48
    Top = 163
    Width = 377
    Height = 21
    Color = cl3DLight
    TabOrder = 1
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 424
    Top = 8
  end
  object ActionList2: TActionList
    Images = frmPrincipal.ImageList48
    Left = 416
    Top = 64
    object actSalvar1: TAction
      ImageIndex = 0
      OnExecute = actSalvar1Execute
    end
    object actCancelar: TAction
      ImageIndex = 1
      OnExecute = actCancelarExecute
    end
  end
  object BalloonHint1: TBalloonHint
    Style = bhsStandard
    Left = 346
    Top = 64
  end
end
