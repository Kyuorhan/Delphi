object frmOpenCloses_Caixa: TfrmOpenCloses_Caixa
  Left = 0
  Top = 0
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Abertura/Fechamento de Caixa'
  ClientHeight = 611
  ClientWidth = 1018
  Color = cl3DLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnGerar_Boleto: TSpeedButton
    Left = 271
    Top = 464
    Width = 66
    Height = 66
    CustomHint = frmPrincipal.BalloonHint1
    Action = actGerarBoleto
    Flat = True
    ParentShowHint = False
    ShowHint = True
  end
  object lbSaldo: TLabel
    Left = 22
    Top = 409
    Width = 37
    Height = 13
    Caption = 'SALDO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbValor: TLabel
    Left = 125
    Top = 409
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
  object lbStatus_User: TLabel
    Left = 22
    Top = 348
    Width = 121
    Height = 13
    Caption = ':STATUS DO USU'#193'RIO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbTipo_Plano: TLabel
    Left = 22
    Top = 316
    Width = 94
    Height = 13
    Caption = ':TIPO DE CONTAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbDesc: TLabel
    Left = 22
    Top = 283
    Width = 67
    Height = 13
    Caption = ':DESCRI'#199#195'O'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbNome: TLabel
    Left = 22
    Top = 251
    Width = 34
    Height = 13
    Caption = ':NOME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbTroco: TLabel
    Left = 238
    Top = 409
    Width = 38
    Height = 13
    Caption = 'TROCO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 42
    Top = 188
    Width = 50
    Height = 13
    Caption = 'PER'#205'ODO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 548
    Width = 1018
    Height = 44
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
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
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800F6F6F61AEFEFEF2EF8F8F813BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800F9F8F807DAD9D82CE1E0
        E023FDFDFD02BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800FCFCFC06DCDBDB68B9B8B7D0B0AFADEABEBDBBC3DFDEDD60FCFC
        FC06BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800EFEFEF128987858C3D3A36E64844
        41DAAFADAC5FFEFEFE01BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800E0DFDE5DAEADABF3AAA9A7FBB2B1AFE4A9A8A6FFAEADABF3D8D7
        D674FDFDFD05BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800F0F0F0117F7D7A982A2622FD292521FF2925
        21FF393632EBAFADAC5FFEFEFE01BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800FAFAFA0CC1C0BFB8A9A8A6FFD0CFCE8BF0F0F02AC4C3C2AEA9A8A6FFAEAD
        ABF3D8D8D773FDFDFD05BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800F1F1F010807D7B972B2723FC292521FF292521FF2925
        21FF292521FF3A3633EAB0AEAD5EFDFDFD02BBC7C800BBC7C800BBC7C800BBC7
        C800F8F8F813BABAB8CAA9A8A6FEDEDEDD60BBC7C800D0CFCE8AA9A8A6FFA9A8
        A6FFAEADABF3D9D8D772FDFDFD05BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800F1F1F010817E7C962B2723FC292521FF292521FF292521FF2925
        21FF292521FF292521FF3B3734E9C0BFBE4ABBC7C800BBC7C800BBC7C800BBC7
        C800FEFEFE02CFCECD90A9A8A6FFB6B5B4D6C6C5C5A8B2B1AFE4A9A8A6FFA9A8
        A6FFA9A8A6FFAEACABF2D9D9D870FDFDFD04BBC7C800BBC7C800BBC7C800BBC7
        C800F1F1F010817F7D952B2723FC292521FF292521FF292521FF292521FF2925
        21FF292521FF292521FF292521FF8684828FBBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800EFEEEE2FB8B7B5D4A9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8
        A6FFA9A8A6FFA9A8A6FFADACABF2D9D8D870FDFDFD04BBC7C800BBC7C800F1F1
        F010817F7D952B2723FC292521FF292521FF292521FF292521FF292521FF2925
        21FF292521FF292521FF2E2A26F9ABA9A764BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800EAEAE93EB7B6B5D6A9A8A6FFA9A8A6FFA9A8A6FFA9A8
        A6FFA9A8A6FFA9A8A6FFA9A8A6FFADACAAF2D9D9D86FFEFEFE03F9F9F9068A87
        858C2B2723FC292521FF292521FF292521FF292521FF292521FF292521FF2925
        21FF292521FF2B2723FC82807E94F4F3F30DBBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800E9E9E93FB7B6B4D7A9A8A6FFA9A8A6FFA9A8
        A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFADACAAF1DCDCDB6BBFBEBD503531
        2EF0292521FF292521FF292521FF292521FF292521FF292521FF292521FF2925
        21FF2B2723FC817E7C96F1F1F010BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800E9E9E840B7B6B4D8A9A8A6FFA9A8
        A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFB0AFADEF777472D82824
        20FF292521FF292521FF292521FF292521FF292521FF292521FF292521FF2B27
        23FC807D7B97F1F1F110BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800E9E9E841B7B6B4D8A9A8
        A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFAAA9A7FF63615EFF2723
        1FFF292521FF292521FF292521FF292521FF292521FF292521FF2A2622FD7F7D
        7A98F0F0F011BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800E9E8E842B6B5
        B4D9A9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFABAAA8FF74726FFF2925
        21FF292521FF292521FF292521FF292521FF292521FF2C2824FA7F7D7A97F0F0
        EF11BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800E8E8
        E743B5B4B3DAA9A8A6FFA9A8A6FFA9A8A6FFAAA9A7FFA09F9CFF565350FF2925
        21FF282420FF282420FF282420FF27231FFF2F2B27FF797674D4E4E3E33DFFFF
        FF02BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800E7E7E645B5B4B2DBA9A8A6FFAAA9A7FF9F9E9CFF585552FF292521FF2925
        21FF3E3A36FF393632FF35312DFF45413EFF797774FFA8A7A5FAB4B3B1E1CDCC
        CB94F1F1F128BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800E7E7E646B6B5B4DBA09E9CFF585551FF292521FF282420FF514E
        4BFF999795FF999895FF949390FFA09F9DFFAAA9A7FFA9A8A6FFA9A8A6FFA9A8
        A6FFB8B8B6D0EAEAE93EBBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800D4D4D35E5B5955F6292521FF282420FF504D4AFF9C9A
        98FFABAAA8FFAAA9A7FFAAA9A7FFAAA9A7FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8
        A6FFA9A8A6FFB8B7B5D4EFEEEE30BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800E6E6E51D6C6A67AF292521FE292521FF504C49FF9B9A98FFAAA9
        A7FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8
        A6FFA9A8A6FFA9A8A6FFC8C7C6A4FCFCFC08BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800E3E2E221A3A1A06D9E9C
        9A739E9C9A7364615EB8292521FF282420FF595553DA9F9E9CF0AAA9A7FFA9A8
        A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FDA9A8
        A6FFA9A8A6FFA9A8A6FFB1B0AFE5EFEFEE2EBBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800F3F2F20E757270A4292521FF2925
        21FF292521FF292521FF292521FF585552C4C9C8C760B2B1AFE8A9A8A6FFA9A8
        A6FFA9A8A6FFA9A8A6FFABAAA8F9BDBCBAC3CAC9C89CD8D8D772D5D4D37CAFAE
        ACECA9A8A6FFA9A8A6FFA9A8A6FDDADAD96CBBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800FEFEFE019C9A99752E2A26F9292521FF2925
        21FF292521FF292521FF3A3633EACCCBCA3AEAEAEA41ACABA9F5A9A8A6FFA9A8
        A6FFA9A8A6FFA9A8A6FFBAB9B7CCF4F4F41FFEFEFE01BBC7C800FEFEFE02DCDC
        DB66AEADABEEA9A8A6FFA9A8A6FFCECDCC91BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BEBDBB4D3C3835E8292521FF292521FF2925
        21FF292521FF292521FF43403CDFE3E2E21FE9E9E942ACABA9F5A9A8A6FFA9A8
        A6FFA9A8A6FFA9A8A6FFC8C7C6A3FDFDFD04BBC7C800BBC7C800BBC7C800FDFD
        FD03DCDBDB67AEADABEEA9A8A6FFCECDCC91BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800DBDAD92B4E4C48D2292521FF292521FF292521FF2925
        21FF292521FF292521FF423E3BE1E1E1E021ECECEC38AEADABEFA9A8A6FFA9A8
        A6FFA9A8A6FFA9A8A6FFD4D4D37EBBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800FDFDFD03DCDCDB69B2B1AFE9DBDBDA6ABBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800F0F0F011716E6BAA292521FF292521FF292521FF292521FF2925
        21FF292521FF292521FF5B5855C3EBEAEA17F9F9F913BBBAB9C8A9A8A6FFA9A8
        A6FFA9A8A6FFA9A8A6FFCECDCC90FCFCFC06BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800FDFDFD05EDEDED38F8F8F814BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C8009C9997772B2723FC292521FF292521FF292521FF292521FF2925
        21FF2B2723FC6C6A67AED9D8D72DBBC7C800BBC7C800D6D6D577A9A8A6FEA9A8
        A6FFA9A8A6FFA9A8A6FFACABA9F4D6D5D479FCFCFC06BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C8009E9C9A742E2A26F9292521FF292521FF292521FF292521FF3430
        2DF1918F8D82EFEFEF12BBC7C800BBC7C800BBC7C800F6F6F619BFBEBDBCA9A8
        A6FFA9A8A6FFA9A8A6FFA9A8A6FFACABA9F5D6D6D578FCFCFC06BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800F6F6F60A908E8C842E2A27F8292521FF292521FF47433FDCB0AF
        AD5EFAFAFA05BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800F0EFEF2DBDBC
        BBC4A9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFACABA9F4D6D6D578FCFCFC08BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800F7F7F7098987858C2C2824FB625F5CBBD1D0CF37BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800F3F2
        F224CDCCCB95B4B3B1E1A9A8A6FDA9A8A6FFA9A8A6FFB0AEADEDEAE9E93EBBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800EBEBEA17ADABA962E8E8E71BBBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800FDFDFD05F0EFEF2CDCDBDB67D0D0CF8AD0CFCF8BDBDBDA6AF7F7F716BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800}
    end
    object btnExcluir: TSpeedButton
      Left = 184
      Top = 6
      Width = 84
      Height = 32
      Cursor = crHandPoint
      Action = actExcluir
      Flat = True
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800FEFEFE01F6F6F619F4F3F322F4F4F421F4F4
        F421F4F4F421F4F4F421F4F4F421F4F4F421F4F4F421F4F4F421F4F4F421F4F4
        F421F4F4F421F4F4F421F4F4F421F4F4F421F4F4F421F4F4F421F4F3F322F6F6
        F619FEFEFE01BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800FEFEFE02E0DFDE5DBAB9B7CFB4B3B2DFB5B4B2DEB5B4
        B2DEB5B4B2DEB5B4B2DEB5B4B2DEB5B4B2DEB5B4B2DEB5B4B2DEB5B4B2DEB5B4
        B2DEB5B4B2DEB5B4B2DEB5B4B2DEB5B4B2DEB5B4B2DEB5B4B2DEB4B3B2DFBAB9
        B7CFE0DFDE5DFEFEFE02BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800F0EFEF2CB4B3B2DFA9A8A6FFA9A8A6FFA9A8A6FFA9A8
        A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8
        A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8
        A6FFB4B3B2DFF0EFEF2CBBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800DFDEDE5EAAA9A7FBA9A8A6FFA9A8A6FFA9A8A6FFA9A8
        A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8
        A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8
        A6FFAAA9A7FBDFDEDE5EBBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800D6D6D578A9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8
        A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8
        A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8
        A6FFA9A8A6FFD6D6D578BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800D6D6D577A9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFAAA9
        A7FFAAA9A7FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFAAA9A7FFAAA9A7FFA9A8
        A6FFA9A8A6FFA9A8A6FFA9A8A6FFAAA9A7FFAAA9A7FFA9A8A6FFA9A8A6FFA9A8
        A6FFA9A8A6FFD6D6D577BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800D6D6D577A9A8A6FFA9A8A6FFA9A8A6FFAAA9A7FF8C8A
        88FF6B6865FF9D9C9AFFAAA9A7FFA9A8A6FFA7A6A4FF787573FF797674FFA7A6
        A4FFA9A8A6FFAAA9A7FF9D9C9AFF6B6865FF8B8A87FFAAA9A7FFA9A8A6FFA9A8
        A6FFA9A8A6FFD6D6D577BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800D6D6D577A9A8A6FFA9A8A6FFA9A8A6FFAAA9A7FF615F
        5CFF2A2622FF868482FFABAAA8FFAAA9A7FFA09E9CFF3E3A37FF3E3B37FFA09E
        9CFFAAA9A7FFABAAA8FF868482FF2A2622FF615E5BFFAAA9A7FFA9A8A6FFA9A8
        A6FFA9A8A6FFD6D6D577BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800D6D6D577A9A8A6FFA9A8A6FFA9A8A6FFA9A8A7FF605C
        5AFF2B2723FF848280FFABAAA8FFAAA9A7FF9F9D9BFF3E3A36FF3E3A36FF9F9D
        9BFFAAA9A7FFABAAA8FF848280FF2B2723FF605C5AFFA9A8A7FFA9A8A6FFA9A8
        A6FFA9A8A6FFD6D6D577BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800D6D6D577A9A8A6FFA9A8A6FFA9A8A6FFA9A8A7FF605D
        5AFF2B2723FF848280FFABAAA8FFAAA9A7FF9F9D9BFF3E3A36FF3E3A36FF9F9D
        9BFFAAA9A7FFABAAA8FF848280FF2B2723FF605D5AFFA9A8A7FFA9A8A6FFA9A8
        A6FFA9A8A6FFD6D6D577BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800D6D6D577A9A8A6FFA9A8A6FFA9A8A6FFA9A8A7FF605D
        5AFF2B2723FF848280FFABAAA8FFAAA9A7FF9F9D9BFF3E3A36FF3E3A36FF9F9D
        9BFFAAA9A7FFABAAA8FF848280FF2B2723FF605D5AFFA9A8A7FFA9A8A6FFA9A8
        A6FFA9A8A6FFD6D6D577BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800D6D6D577A9A8A6FFA9A8A6FFA9A8A6FFA9A8A7FF605D
        5AFF2B2723FF848280FFABAAA8FFAAA9A7FF9F9D9BFF3E3A36FF3E3A36FF9F9D
        9BFFAAA9A7FFABAAA8FF848280FF2B2723FF605D5AFFA9A8A7FFA9A8A6FFA9A8
        A6FFA9A8A6FFD6D6D577BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800D6D6D577A9A8A6FFA9A8A6FFA9A8A6FFA9A8A7FF605D
        5AFF2B2723FF848280FFABAAA8FFAAA9A7FF9F9D9BFF3E3A36FF3E3A36FF9F9D
        9BFFAAA9A7FFABAAA8FF848280FF2B2723FF605D5AFFA9A8A7FFA9A8A6FFA9A8
        A6FFA9A8A6FFD6D6D577BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800D6D6D577A9A8A6FFA9A8A6FFA9A8A6FFA9A8A7FF605D
        5AFF2B2723FF848280FFABAAA8FFAAA9A7FF9F9D9BFF3E3A36FF3E3A36FF9F9D
        9BFFAAA9A7FFABAAA8FF848280FF2B2723FF605D5AFFA9A8A7FFA9A8A6FFA9A8
        A6FFA9A8A6FFD6D6D577BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800D6D6D577A9A8A6FFA9A8A6FFA9A8A6FFA9A8A7FF605D
        5AFF2B2723FF848280FFABAAA8FFAAA9A7FF9F9D9BFF3E3A36FF3E3A36FF9F9D
        9BFFAAA9A7FFABAAA8FF848280FF2B2723FF605D5AFFA9A8A7FFA9A8A6FFA9A8
        A6FFA9A8A6FFD6D6D577BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800D6D6D577A9A8A6FFA9A8A6FFA9A8A6FFA9A8A7FF605D
        5AFF2B2723FF848280FFABAAA8FFAAA9A7FF9F9D9BFF3E3A36FF3E3A36FF9F9D
        9BFFAAA9A7FFABAAA8FF848280FF2B2723FF605D5AFFA9A8A7FFA9A8A6FFA9A8
        A6FFA9A8A6FFD6D6D577BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800D6D6D577A9A8A6FFA9A8A6FFA9A8A6FFA9A8A7FF605D
        5AFF2B2723FF848280FFABAAA8FFAAA9A7FF9F9D9BFF3E3A36FF3E3A36FF9F9D
        9BFFAAA9A7FFABAAA8FF848280FF2B2723FF605D5AFFA9A8A7FFA9A8A6FFA9A8
        A6FFA9A8A6FFD6D6D577BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800D6D6D577A9A8A6FFA9A8A6FFA9A8A6FFA9A8A7FF605D
        5AFF2B2723FF848280FFABAAA8FFAAA9A7FF9F9D9BFF3E3A36FF3E3A36FF9F9D
        9BFFAAA9A7FFABAAA8FF848280FF2B2723FF605D5AFFA9A8A7FFA9A8A6FFA9A8
        A6FFA9A8A6FFD6D6D577BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800D6D6D577A9A8A6FFA9A8A6FFA9A8A6FFA9A8A7FF605D
        5AFF2B2723FF848280FFABAAA8FFAAA9A7FF9F9D9BFF3E3A36FF3E3A36FF9F9D
        9BFFAAA9A7FFABAAA8FF848280FF2B2723FF605D5AFFA9A8A7FFA9A8A6FFA9A8
        A6FFA9A8A6FFD6D6D577BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800D6D6D577A9A8A6FFA9A8A6FFA9A8A6FFA9A8A7FF5F5C
        59FF2B2723FF84827FFFABAAA8FFAAA9A7FF9F9D9BFF3D3A36FF3D3A36FF9F9D
        9BFFAAA9A7FFABAAA8FF84827FFF2B2723FF5F5C59FFA9A8A7FFA9A8A6FFA9A8
        A6FFA9A8A6FFD6D6D577BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800D6D6D577A9A8A6FFA9A8A6FFA9A8A6FFAAA9A7FF6764
        61FF302C28FF8A8885FFABAAA8FFAAA9A7FFA1A09EFF44403DFF45413DFFA1A0
        9EFFAAA9A7FFABAAA8FF8A8885FF302C28FF666461FFAAA9A7FFA9A8A6FFA9A8
        A6FFA9A8A6FFD6D6D577BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800D6D6D577A9A8A6FFA9A8A6FFA9A8A6FFAAA9A7FF9998
        95FF848380FFA3A2A0FFA9A8A6FFA9A8A6FFA8A7A5FF8D8B89FF8E8C89FFA9A8
        A6FFA9A8A6FFA9A8A6FFA3A2A0FF848380FF999795FFAAA9A7FFA9A8A6FFA9A8
        A6FFA9A8A6FFD6D6D577BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800D6D6D577A9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFAAA9
        A7FFABAAA8FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFABAAA8FFAAAAA8FFA9A8
        A6FFA9A8A6FFA9A8A6FFA9A8A6FFABAAA8FFAAA9A7FFA9A8A6FFA9A8A6FFA9A8
        A6FFA9A8A6FFD6D6D577BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800D7D6D577AAA9A7FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8
        A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8
        A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8A6FFA9A8
        A6FFAAA9A7FFD7D6D577BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800FEFEFE01FCFCFC03D0CFCE7BA3A19FFFA2A19FFFA2A19FFFA2A19FFFA2A1
        9FFFA2A19FFFA2A19FFFA2A19FFFA2A19FFFA2A19FFFA2A19FFFA2A19FFFA2A1
        9FFFA2A19FFFA2A19FFFA2A19FFFA2A19FFFA2A19FFFA2A19FFFA2A19FFFA2A1
        9FFFA3A19FFFD0CFCE7BFDFDFD02BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800DCDBDB29767371A2585552D7474340FF474340FF474340FF474340FF4743
        40FF474340FF474340FF474340FF474340FF474340FF474340FF474340FF4743
        40FF474340FF474340FF474340FF474340FF474340FF474340FF474340FF4743
        40FF474340FF585552D77C79779BE4E3E320BBC7C800BBC7C800BBC7C800BBC7
        C800C3C2C0472E2A27F8282420FF27231FFF27231FFF27231FFF27231FFF2723
        1FFF27231FFF27231FFF27231FFF27231FFF27231FFF27231FFF27231FFF2723
        1FFF27231FFF27231FFF27231FFF27231FFF27231FFF27231FFF27231FFF2723
        1FFF27231FFF282420FF2F2B27F7C4C2C146BBC7C800BBC7C800BBC7C800BBC7
        C800C2C1C0482E2A27F8292521FF292521FF292521FF292521FF292521FF2925
        21FF292521FF292521FF292521FF292521FF292521FF292521FF292521FF2925
        21FF292521FF292521FF292521FF292521FF292521FF292521FF292521FF2925
        21FF292521FF292521FF2F2B27F7C4C2C146BBC7C800BBC7C800BBC7C800BBC7
        C800DCDBDB2973716EA6686663B3686663B3686663B3686663B3686663B36967
        64B25D5A57C02F2B27F7292521FF292521FF292521FF292521FF292521FF2925
        21FF292521FF292521FF2C2824FB5A5754C4696764B2686663B3686663B36866
        63B3686663B3676562B4777572A1E3E2E221BBC7C800BBC7C800BBC7C800BBC7
        C800FEFEFE01F9F9F807F7F7F709F7F7F709F7F7F709F7F7F709F7F7F709F8F8
        F808EAEAEA18605D5ABD292521FF292521FF292521FF292521FF292521FF2925
        21FF292521FF292521FF5A5754C4E3E2E221F9F9F807F7F7F709F7F7F709F7F7
        F709F7F7F709F7F7F709F9F9F807BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BFBEBC4C73716EA6696664B2696664B2696664B2696664B26966
        64B2686563B37C79769CD4D3D233BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800F9F9F906F6F6F60AF6F6F60AF6F6F60AF6F6F60AF6F6
        F60AF6F6F60AFAFAFA05BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7
        C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800BBC7C800}
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
  object JvPanel1: TJvPanel
    Left = 0
    Top = 0
    Width = 1018
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
    Width = 1018
    Height = 24
    ActivePage = tbsPesquisar
    Align = alTop
    BiDiMode = bdRightToLeftNoAlign
    ParentBiDiMode = False
    TabOrder = 3
    ParentColor = False
    Color = clSilver
    object tbsPesquisar: TTabSheet
      Caption = 'PESQUISAR'
      ImageIndex = 1
    end
  end
  object JvDBGrid2: TJvDBGrid
    Left = 367
    Top = 151
    Width = 643
    Height = 391
    Align = alCustom
    BiDiMode = bdLeftToRight
    DataSource = dsCaixa
    DrawingStyle = gdsGradient
    GradientEndColor = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 4
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
    Columns = <
      item
        Expanded = False
        FieldName = 'codigo'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipo_contas'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipo_pagamento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'saldo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'troco'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prev_fechamento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'open_date'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'close_date'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status_usuario'
        Width = 120
        Visible = True
      end>
  end
  object edtTroco: TDBEdit
    Left = 238
    Top = 428
    Width = 106
    Height = 21
    DataField = 'troco'
    DataSource = dsCaixa
    TabOrder = 5
    OnChange = edtTrocoChange
  end
  object Tipo: TDBRadioGroup
    Left = 22
    Top = 460
    Width = 218
    Height = 76
    Caption = 'TIPO'
    Columns = 3
    DataField = 'tipo_pagamento'
    DataSource = dsCaixa
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      'CR'#201'DITO'
      'D'#201'BITO'
      'BOLETO')
    ParentBackground = True
    ParentFont = False
    TabOrder = 6
  end
  object edtValor: TDBEdit
    Left = 125
    Top = 428
    Width = 84
    Height = 21
    DataField = 'valor'
    DataSource = dsCaixa
    TabOrder = 7
  end
  object edtSaldo: TDBEdit
    Left = 22
    Top = 428
    Width = 84
    Height = 21
    DataField = 'saldo'
    DataSource = dsCaixa
    TabOrder = 8
  end
  object dbedtNome: TDBEdit
    Left = 119
    Top = 248
    Width = 225
    Height = 21
    DataField = 'nome'
    DataSource = dsCaixa
    TabOrder = 9
  end
  object dbedtDesc: TDBEdit
    Left = 119
    Top = 280
    Width = 225
    Height = 21
    DataField = 'descricao'
    DataSource = dsCaixa
    TabOrder = 10
  end
  object dbedtTipo_Contas: TDBEdit
    Left = 187
    Top = 313
    Width = 157
    Height = 21
    DataField = 'tipo_contas'
    DataSource = dsCaixa
    TabOrder = 11
  end
  object DBEdit1: TDBEdit
    Left = 187
    Top = 345
    Width = 157
    Height = 21
    DataField = 'status_usuario'
    DataSource = dsCaixa
    TabOrder = 12
  end
  object edtData1: TJvDateEdit
    Left = 42
    Top = 207
    Width = 99
    Height = 21
    ShowNullDate = False
    TabOrder = 13
  end
  object edtData2: TJvDateEdit
    Left = 172
    Top = 207
    Width = 99
    Height = 21
    ShowNullDate = False
    TabOrder = 14
  end
  object edtNome: TEdit
    Left = 13
    Top = 155
    Width = 339
    Height = 21
    Color = cl3DLight
    TabOrder = 15
    OnChange = edtNomeChange
  end
  object Timer1: TTimer
    Interval = 300
    OnTimer = Timer1Timer
    Left = 976
    Top = 8
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
      ImageIndex = 0
      OnExecute = actGerarBoletoExecute
    end
  end
  object sqlCaixa: TZQuery
    Connection = frmPrincipal.ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM Caixa')
    Params = <>
    Left = 916
    Top = 64
    object sqlCaixaid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sqlCaixanome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object sqlCaixadescricao: TWideStringField
      FieldName = 'descricao'
      Size = 75
    end
    object sqlCaixatipo_contas: TWideStringField
      FieldName = 'tipo_contas'
      Size = 30
    end
    object sqlCaixatipo_pagamento: TWideStringField
      FieldName = 'tipo_pagamento'
      Size = 30
    end
    object sqlCaixavalor: TFloatField
      FieldName = 'valor'
    end
    object sqlCaixadata: TDateField
      FieldName = 'data'
    end
    object sqlCaixasaldo: TFloatField
      FieldName = 'saldo'
    end
    object sqlCaixatroco: TFloatField
      FieldName = 'troco'
    end
    object sqlCaixaprev_fechamento: TDateField
      FieldName = 'prev_fechamento'
    end
    object sqlCaixaopen_date: TDateField
      FieldName = 'open_date'
    end
    object sqlCaixaclose_date: TDateField
      FieldName = 'close_date'
    end
    object sqlCaixastatus_usuario: TWideStringField
      FieldName = 'status_usuario'
      Size = 30
    end
  end
  object dsCaixa: TDataSource
    DataSet = sqlCaixa
    Left = 972
    Top = 64
  end
end