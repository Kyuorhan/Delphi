object frmPedidos: TfrmPedidos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Estoque - Pedidos'
  ClientHeight = 691
  ClientWidth = 954
  Color = cl3DLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnGerar_Parcelas: TSpeedButton
    Left = 521
    Top = 144
    Width = 130
    Height = 42
    Cursor = crHandPoint
    Action = actGerar_Parcelas
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbPeriodo: TLabel
    Left = 278
    Top = 136
    Width = 56
    Height = 16
    Caption = 'PERIODO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 620
    Width = 954
    Height = 52
    Align = alBottom
    BiDiMode = bdRightToLeftNoAlign
    Color = clWhite
    ParentBiDiMode = False
    ParentBackground = False
    TabOrder = 3
    object btnNovo: TSpeedButton
      Left = 4
      Top = 6
      Width = 84
      Height = 40
      Cursor = crHandPoint
      Action = actNovo
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnEditar: TSpeedButton
      Left = 94
      Top = 6
      Width = 84
      Height = 40
      Cursor = crHandPoint
      Action = actEditar
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
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
      ParentFont = False
    end
    object btnExcluir: TSpeedButton
      Left = 184
      Top = 6
      Width = 84
      Height = 40
      Cursor = crHandPoint
      Action = actExcluir
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
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
      ParentFont = False
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 672
    Width = 954
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object edtPeriodo1: TJvDateEdit
    Left = 278
    Top = 158
    Width = 100
    Height = 21
    ShowNullDate = False
    TabOrder = 0
    OnChange = edtClientesChange
  end
  object edtPeriodo2: TJvDateEdit
    Left = 390
    Top = 158
    Width = 100
    Height = 21
    ShowNullDate = False
    TabOrder = 1
    OnChange = edtClientesChange
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 202
    Width = 954
    Height = 418
    Align = alBottom
    DataSource = dsPedidos
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
        FieldName = 'id_clientes'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Width = 275
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total_produtos'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'desconto_valor'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total_pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_vendedores'
        Width = 105
        Visible = True
      end>
  end
  object JvPanel2: TJvPanel
    Left = 0
    Top = 0
    Width = 954
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    Color = 13095379
    ParentBackground = False
    TabOrder = 5
  end
  inline frameLocalizaCliente1: TframeLocalizaCliente
    Left = 16
    Top = 136
    Width = 249
    Height = 48
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    ExplicitLeft = 16
    ExplicitTop = 136
    ExplicitWidth = 249
    inherited lbCliente: TLabel
      Top = 0
      ExplicitTop = 0
    end
    inherited edtClientes: TEdit
      Top = 22
      Width = 246
      OnChange = frameLocalizaCliente1edtClientesChange
      ExplicitTop = 22
      ExplicitWidth = 246
    end
  end
  object ActionList1: TActionList
    Images = frmPrincipal.ImageList32
    Left = 835
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
    end
    object actGerar_Parcelas: TAction
      Caption = 'Gerar Parcelas'
      ImageIndex = 6
      OnExecute = actGerar_ParcelasExecute
    end
  end
  object Timer1: TTimer
    Interval = 100
    Left = 899
    Top = 8
  end
  object BalloonHint1: TBalloonHint
    Style = bhsStandard
    Left = 890
    Top = 64
  end
  object sqlPedidos: TZQuery
    Connection = frmPrincipal.ZConnection1
    UpdateObject = updPedidos
    CachedUpdates = True
    SQL.Strings = (
      'SELECT p.*, c.nome'
      'FROM pedidos p'
      'LEFT JOIN clientes c ON  c.id = p.id_clientes')
    Params = <>
    Left = 32
    Top = 8
    object sqlPedidosid: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#211'D.'
      FieldName = 'id'
      Required = True
    end
    object sqlPedidosid_vendedores: TIntegerField
      DisplayLabel = 'C'#211'D. VENDEDOR'
      FieldName = 'id_vendedores'
    end
    object sqlPedidosid_clientes: TIntegerField
      DisplayLabel = 'C'#211'D. CLIENTE'
      FieldName = 'id_clientes'
    end
    object sqlPedidosdata: TDateField
      DisplayLabel = 'DATA'
      FieldName = 'data'
    end
    object sqlPedidostotal_produtos: TFloatField
      DisplayLabel = 'TOTAL/PRODUTOS'
      FieldName = 'total_produtos'
      DisplayFormat = ',0.00'
    end
    object sqlPedidosdesconto: TFloatField
      DisplayLabel = 'DESCONTO(%)'
      FieldName = 'desconto'
      DisplayFormat = ',0.00 %'
    end
    object sqlPedidosdesconto_valor: TFloatField
      DisplayLabel = 'DESCONTO(R$)'
      FieldName = 'desconto_valor'
      DisplayFormat = ',0.00'
    end
    object sqlPedidostotal_pagar: TFloatField
      DisplayLabel = 'TOTAL/PAGAR'
      FieldName = 'total_pagar'
      DisplayFormat = ',0.00'
    end
    object sqlPedidosnome: TWideStringField
      DisplayLabel = 'NOME'
      FieldName = 'nome'
      Size = 50
    end
  end
  object dsPedidos: TDataSource
    AutoEdit = False
    DataSet = sqlPedidos
    Left = 32
    Top = 64
  end
  object updPedidos: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM pedidos'
      'WHERE'
      '  pedidos.id = :OLD_id')
    InsertSQL.Strings = (
      'INSERT INTO pedidos'
      
        '  (id, id_vendedores, id_clientes, data, total_produtos, descont' +
        'o, desconto_valor, '
      '   total_pagar)'
      'VALUES'
      
        '  (:id, :id_vendedores, :id_clientes, :data, :total_produtos, :d' +
        'esconto, '
      '   :desconto_valor, :total_pagar)')
    ModifySQL.Strings = (
      'UPDATE pedidos SET'
      '  id = :id,'
      '  id_vendedores = :id_vendedores,'
      '  id_clientes = :id_clientes,'
      '  data = :data,'
      '  total_produtos = :total_produtos,'
      '  desconto = :desconto,'
      '  desconto_valor = :desconto_valor,'
      '  total_pagar = :total_pagar'
      'WHERE'
      '  pedidos.id = :OLD_id')
    UseSequenceFieldForRefreshSQL = False
    Left = 96
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_vendedores'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_clientes'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'total_produtos'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'desconto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'desconto_valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'total_pagar'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_id'
        ParamType = ptUnknown
      end>
  end
  object sqlPedidos_Itens: TZQuery
    Connection = frmPrincipal.ZConnection1
    UpdateObject = updPedidos_Itens
    CachedUpdates = True
    SQL.Strings = (
      'SELECT pi.*, p.produto, um.abrev,  p.id_unid_medidas'
      'FROM pedidos_itens PI'
      'LEFT JOIN produtos p ON p.id = pi.id_produtos'
      'LEFT JOIN unid_medidas um ON um.id = p.id_unid_medidas')
    Params = <>
    Left = 184
    Top = 8
    object sqlPedidos_Itensid: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'id'
      Required = True
    end
    object sqlPedidos_Itensid_pedidos: TIntegerField
      DisplayLabel = 'C'#211'D. PEDIDOS'
      FieldName = 'id_pedidos'
    end
    object sqlPedidos_Itensid_produtos: TIntegerField
      DisplayLabel = 'C'#211'D. PRODUTOS'
      FieldName = 'id_produtos'
    end
    object sqlPedidos_Itensvalor: TFloatField
      DisplayLabel = 'VALOR'
      FieldName = 'valor'
    end
    object sqlPedidos_Itensqtde: TFloatField
      DisplayLabel = 'QTDE.'
      FieldName = 'qtde'
    end
    object sqlPedidos_Itenstotal: TFloatField
      DisplayLabel = 'TOTAL'
      FieldName = 'total'
    end
    object sqlPedidos_Itensproduto: TWideStringField
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'produto'
      Size = 80
    end
    object sqlPedidos_Itensabrev: TWideStringField
      DisplayLabel = 'UNID.'
      FieldName = 'abrev'
      Size = 3
    end
    object sqlPedidos_Itensid_unid_medidas: TIntegerField
      DisplayLabel = 'C'#211'D. UNID/MEDIDAS'
      FieldName = 'id_unid_medidas'
    end
  end
  object updPedidos_Itens: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM pedidos_itens'
      'WHERE'
      '  pedidos_itens.id = :OLD_id')
    InsertSQL.Strings = (
      'INSERT INTO pedidos_itens'
      '  (id, id_pedidos, id_produtos, valor, qtde, total)'
      'VALUES'
      '  (:id, :id_pedidos, :id_produtos, :valor, :qtde, :total)')
    ModifySQL.Strings = (
      'UPDATE pedidos_itens SET'
      '  id = :id,'
      '  id_pedidos = :id_pedidos,'
      '  id_produtos = :id_produtos,'
      '  valor = :valor,'
      '  qtde = :qtde,'
      '  total = :total'
      'WHERE'
      '  pedidos_itens.id = :OLD_id')
    UseSequenceFieldForRefreshSQL = False
    Left = 280
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_pedidos'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_produtos'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'qtde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'total'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_id'
        ParamType = ptUnknown
      end>
  end
  object dsPedidos_Itens: TDataSource
    AutoEdit = False
    DataSet = sqlPedidos_Itens
    Left = 184
    Top = 64
  end
  object Query1: TZQuery
    Connection = frmPrincipal.ZConnection1
    CachedUpdates = True
    Params = <>
    Left = 680
    Top = 8
  end
  object sqlVendedor: TZQuery
    Connection = frmPrincipal.ZConnection1
    SQL.Strings = (
      'SELECT * FROM vendedores')
    Params = <>
    Left = 744
    Top = 8
    object sqlVendedorid: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'id'
      Required = True
    end
    object sqlVendedorvendedor: TWideStringField
      DisplayLabel = 'VENDEDOR'
      FieldName = 'vendedor'
      Size = 60
    end
    object sqlVendedorcomissao: TFloatField
      Alignment = taLeftJustify
      DisplayLabel = 'COMISS'#195'O'
      FieldName = 'comissao'
      currency = True
    end
  end
  object dsVendedor: TDataSource
    DataSet = sqlVendedor
    Left = 744
    Top = 64
  end
  object sqlContas_Receber: TZQuery
    Connection = frmPrincipal.ZConnection1
    UpdateObject = updReceber
    CachedUpdates = True
    SQL.Strings = (
      
        'SELECT r.* , COALESCE(c.nome, '#39#39') as nome, COALESCE(t.documento,' +
        ' '#39#39') as documento'
      'FROM contas_receber r'
      'INNER JOIN clientes c ON c.id = r.id_cliente'
      'INNER JOIN tipos_documentos t ON t.id = r.id_documento')
    Params = <>
    Left = 393
    Top = 8
    object sqlContas_Receberid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sqlContas_Receberid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object sqlContas_Receberid_documento: TIntegerField
      FieldName = 'id_documento'
    end
    object sqlContas_Receberid_pedidos: TIntegerField
      FieldName = 'id_pedidos'
    end
    object sqlContas_Receberdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 65
    end
    object sqlContas_Recebervalor: TFloatField
      DisplayLabel = 'VALOR'
      FieldName = 'valor'
      Required = True
      currency = True
    end
    object sqlContas_Receberdesconto: TFloatField
      FieldName = 'desconto'
      Required = True
    end
    object sqlContas_Recebernum_parcela: TWideStringField
      DisplayLabel = 'NUM/PARCELAS'
      FieldName = 'num_parcela'
      Size = 10
    end
    object sqlContas_Receberdata_documento: TDateField
      FieldName = 'data_documento'
    end
    object sqlContas_Receberdata_vencimento: TDateField
      FieldName = 'data_vencimento'
    end
    object sqlContas_Recebervencimento: TDateField
      DisplayLabel = 'VENCIMENTO'
      FieldName = 'vencimento'
    end
  end
  object dsContas_receber: TDataSource
    AutoEdit = False
    DataSet = sqlContas_Receber
    Left = 392
    Top = 64
  end
  object updReceber: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM contas_receber'
      'WHERE'
      '  contas_receber.id = :OLD_id')
    InsertSQL.Strings = (
      'INSERT INTO contas_receber'
      
        '  (id, id_cliente, id_documento, id_pedidos, descricao, data_doc' +
        'umento, '
      
        '   data_vencimento, desconto, pago, valor, num_parcela, data_cad' +
        'astro, '
      '   obs_quitacao, vencimento)'
      'VALUES'
      
        '  (:id, :id_cliente, :id_documento, :id_pedidos, :descricao, :da' +
        'ta_documento, '
      
        '   :data_vencimento, :desconto, :pago, :valor, :num_parcela, :da' +
        'ta_cadastro, '
      '   :obs_quitacao, :vencimento)')
    ModifySQL.Strings = (
      'UPDATE contas_receber SET'
      '  id = :id,'
      '  id_cliente = :id_cliente,'
      '  id_documento = :id_documento,'
      '  id_pedidos = :id_pedidos,'
      '  descricao = :descricao,'
      '  data_documento = :data_documento,'
      '  data_vencimento = :data_vencimento,'
      '  desconto = :desconto,'
      '  pago = :pago,'
      '  valor = :valor,'
      '  num_parcela = :num_parcela,'
      '  data_cadastro = :data_cadastro,'
      '  obs_quitacao = :obs_quitacao,'
      '  vencimento = :vencimento'
      'WHERE'
      '  contas_receber.id = :OLD_id')
    UseSequenceFieldForRefreshSQL = False
    Left = 480
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_documento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_pedidos'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descricao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data_documento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data_vencimento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'desconto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pago'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_parcela'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data_cadastro'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'obs_quitacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vencimento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_id'
        ParamType = ptUnknown
      end>
  end
end