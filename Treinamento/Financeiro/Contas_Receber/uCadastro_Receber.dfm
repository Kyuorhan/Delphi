object frmCadastro_Receber: TfrmCadastro_Receber
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Contas/Receber - Cadastro'
  ClientHeight = 567
  ClientWidth = 499
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object JvPanel2: TJvPanel
    Left = 0
    Top = 495
    Width = 499
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    Color = cl3DLight
    ParentBackground = False
    TabOrder = 0
    object btnSalvar: TSpeedButton
      Left = 12
      Top = 2
      Width = 50
      Height = 50
      Action = actSalvar
      Flat = True
    end
    object btnCancelar: TSpeedButton
      Left = 78
      Top = 0
      Width = 50
      Height = 50
      Action = actCancel
      Flat = True
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 545
    Width = 499
    Height = 22
    Panels = <
      item
        Width = 50
      end>
  end
  object JvPanel1: TJvPanel
    Left = 0
    Top = 0
    Width = 499
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    Color = 13095379
    ParentBackground = False
    TabOrder = 2
  end
  object tbPesquisar: TJvPageControl
    Left = 0
    Top = 121
    Width = 499
    Height = 374
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
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 491
        Height = 185
        Align = alTop
        TabOrder = 0
        object lbData_Documento: TLabel
          Left = 196
          Top = 81
          Width = 106
          Height = 13
          Caption = 'DATA/DOCUMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbData_Vencimento: TLabel
          Left = 337
          Top = 81
          Width = 107
          Height = 13
          Caption = 'DATA/VENCIMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbNome: TLabel
          Left = 21
          Top = 9
          Width = 44
          Height = 13
          Caption = 'CLIENTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbValor: TLabel
          Left = 21
          Top = 81
          Width = 37
          Height = 13
          Caption = 'VALOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbTipo_Pagamento: TLabel
          Left = 21
          Top = 127
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
        object lbect1: TLabel
          Left = 21
          Top = 55
          Width = 382
          Height = 13
          Caption = 
            'Selecione o CLIENTE pressionando a tecla [ + ] sobre o campo aci' +
            'ma'
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Visible = False
        end
        object Label1: TLabel
          Left = 184
          Top = 127
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
        object edtNome: TEdit
          Left = 21
          Top = 28
          Width = 379
          Height = 21
          TabStop = False
          ReadOnly = True
          TabOrder = 0
          OnKeyPress = edtNomeKeyPress
        end
        object edtData_Documento: TJvDateEdit
          Left = 196
          Top = 100
          Width = 110
          Height = 21
          DateFormat = '99/99/9999'
          ShowNullDate = False
          TabOrder = 1
        end
        object edtData_Vencimento: TJvDateEdit
          Left = 334
          Top = 100
          Width = 110
          Height = 21
          ShowNullDate = False
          TabOrder = 2
        end
        object edtID_Cliente: TEdit
          Left = 413
          Top = 28
          Width = 51
          Height = 21
          TabStop = False
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 4
        end
        object edtTipo_Documento: TDBLookupComboBox
          Left = 21
          Top = 146
          Width = 122
          Height = 21
          KeyField = 'id'
          ListField = 'documento'
          ListSource = frmContas_Receber.dsTipos_Documentos
          TabOrder = 3
        end
        object edtValor: TJvCalcEdit
          Left = 21
          Top = 102
          Width = 122
          Height = 19
          TabStop = False
          Flat = True
          ParentFlat = False
          ButtonFlat = True
          Color = clWhite
          DisplayFormat = ',0.00;-,0.00'
          ImageKind = ikCustom
          ShowButton = False
          TabOrder = 5
          DecimalPlacesAlwaysShown = False
        end
        object edtDescricao: TEdit
          Left = 184
          Top = 146
          Width = 259
          Height = 21
          TabOrder = 6
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 185
        Width = 491
        Height = 161
        Align = alClient
        Enabled = False
        TabOrder = 1
        object lbTroco_Restante: TLabel
          Left = 21
          Top = 104
          Width = 56
          Height = 13
          Caption = 'RESTANTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbValor_Pago: TLabel
          Left = 334
          Top = 58
          Width = 71
          Height = 13
          Caption = 'VALOR PAGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbDesconto: TLabel
          Left = 21
          Top = 58
          Width = 58
          Height = 13
          Caption = 'DESCONTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbData_Pagamento: TLabel
          Left = 21
          Top = 8
          Width = 82
          Height = 13
          Caption = 'DATA/PAGNTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbJuros: TLabel
          Left = 334
          Top = 8
          Width = 37
          Height = 13
          Caption = 'JUROS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbDias_Atraso: TLabel
          Left = 184
          Top = 8
          Width = 77
          Height = 13
          Caption = 'DIAS ATRASO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbTotal_Pagar: TLabel
          Left = 184
          Top = 58
          Width = 89
          Height = 13
          Caption = 'TOTAL A PAGAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtData_Pagamento: TJvDateEdit
          Left = 21
          Top = 27
          Width = 122
          Height = 21
          ShowNullDate = False
          TabOrder = 0
          OnExit = edtData_PagamentoExit
        end
        object edtTroco_Restante: TJvCalcEdit
          Left = 21
          Top = 123
          Width = 122
          Height = 19
          TabStop = False
          Flat = True
          ParentFlat = False
          ButtonFlat = True
          Color = clBtnFace
          DisplayFormat = ',0.00;-,0.00'
          ImageKind = ikCustom
          ShowButton = False
          TabOrder = 5
          DecimalPlacesAlwaysShown = False
          OnChange = edtTroco_RestanteChange
        end
        object edtValor_Pago: TJvCalcEdit
          Left = 334
          Top = 77
          Width = 130
          Height = 19
          TabStop = False
          Flat = True
          ParentFlat = False
          ButtonFlat = True
          DisplayFormat = ',0.00;-,0.00'
          ImageKind = ikCustom
          ParentShowHint = False
          ShowButton = False
          ShowHint = True
          TabOrder = 4
          DecimalPlacesAlwaysShown = False
          OnExit = edtValor_PagoExit
        end
        object edtDesconto: TJvCalcEdit
          Left = 21
          Top = 77
          Width = 122
          Height = 19
          TabStop = False
          Flat = True
          ParentFlat = False
          ButtonFlat = True
          DisplayFormat = ',0.00;-,0.00'
          ImageKind = ikCustom
          ShowButton = False
          TabOrder = 2
          DecimalPlacesAlwaysShown = False
          OnExit = edtData_PagamentoExit
        end
        object edtTotal_pagar: TJvCalcEdit
          Left = 184
          Top = 77
          Width = 122
          Height = 19
          TabStop = False
          Flat = True
          ParentFlat = False
          ButtonFlat = True
          Color = clBtnFace
          DisplayFormat = ',0.00;-,0.00'
          ImageKind = ikCustom
          ShowButton = False
          TabOrder = 3
          DecimalPlacesAlwaysShown = False
        end
        object edtJuros: TJvCalcEdit
          Left = 334
          Top = 27
          Width = 130
          Height = 19
          TabStop = False
          Flat = True
          ParentFlat = False
          ButtonFlat = True
          Color = clBtnFace
          DisplayFormat = ',0.00;,0.00-'
          ImageKind = ikCustom
          ReadOnly = True
          ShowButton = False
          TabOrder = 6
          DecimalPlacesAlwaysShown = False
          OnClick = actCancelExecute
          OnExit = edtData_PagamentoExit
        end
        object edtDias_Atrasos: TEdit
          Left = 184
          Top = 27
          Width = 122
          Height = 21
          TabStop = False
          Color = clBtnFace
          TabOrder = 1
          OnExit = edtData_PagamentoExit
        end
      end
    end
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 452
    Top = 8
  end
  object ActionList1: TActionList
    Images = frmPrincipal.ImageList48
    Left = 436
    Top = 64
    object actSalvar: TAction
      ImageIndex = 0
      OnExecute = actSalvarExecute
    end
    object actCancel: TAction
      ImageIndex = 1
      OnExecute = actCancelExecute
    end
  end
end
