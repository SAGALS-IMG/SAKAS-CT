object Form_main: TForm_main
  Left = 0
  Top = 0
  Caption = 'SAKAS_CT'
  ClientHeight = 888
  ClientWidth = 416
  Color = 16448762
  Constraints.MinWidth = 430
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 196
    Width = 416
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitLeft = 8
    ExplicitTop = 176
    ExplicitWidth = 410
  end
  object SB: TStatusBar
    Left = 0
    Top = 869
    Width = 416
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 0
    Width = 416
    Height = 196
    Align = alTop
    Caption = 'Tag Files'
    Color = 16771022
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object Panel2: TPanel
      Left = 2
      Top = 18
      Width = 412
      Height = 79
      Align = alTop
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object SB_Help: TSpeedButton
        Left = 387
        Top = 0
        Width = 23
        Height = 22
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333CCCCC33
          33333FFFF77777FFFFFFCCCCCC808CCCCCC3777777F7F777777F008888070888
          8003777777777777777F0F0770F7F0770F0373F33337F333337370FFFFF7FFFF
          F07337F33337F33337F370FFFB99FBFFF07337F33377F33337F330FFBF99BFBF
          F033373F337733333733370BFBF7FBFB0733337F333FF3337F33370FBF98BFBF
          0733337F3377FF337F333B0BFB990BFB03333373FF777FFF73333FB000B99000
          B33333377737777733333BFBFBFB99FBF33333333FF377F333333FBF99BF99BF
          B333333377F377F3333333FB99FB99FB3333333377FF77333333333FB9999FB3
          333333333777733333333333FBFBFB3333333333333333333333}
        NumGlyphs = 2
        OnClick = SB_HelpClick
      end
      object SB_ViewInfo: TSpeedButton
        Left = 241
        Top = 25
        Width = 113
        Height = 22
        Caption = 'View Details'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
          333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
          C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
          F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
          F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
          00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
          3333333373FF7333333333333000333333333333377733333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        ParentFont = False
        OnClick = SB_ViewInfoClick
      end
      object SB_TagList_Reload: TSpeedButton
        Left = 359
        Top = 0
        Width = 23
        Height = 22
        Hint = 'Get tag list'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          55555555FFFFFFFFFF55555000000000055555577777777775F55500B8B8B8B8
          B05555775F555555575F550F0B8B8B8B8B05557F75F555555575550BF0B8B8B8
          B8B0557F575FFFFFFFF7550FBF0000000000557F557777777777500BFBFBFBFB
          0555577F555555557F550B0FBFBFBFBF05557F7F555555FF75550F0BFBFBF000
          55557F75F555577755550BF0BFBF0B0555557F575FFF757F55550FB700007F05
          55557F557777557F55550BFBFBFBFB0555557F555555557F55550FBFBFBFBF05
          55557FFFFFFFFF7555550000000000555555777777777755555550FBFB055555
          5555575FFF755555555557000075555555555577775555555555}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SB_TagList_ReloadClick
      end
      object Label37: TLabel
        Left = 11
        Top = 4
        Width = 16
        Height = 13
        Caption = 'Dir'
      end
      object SB_Dir: TSpeedButton
        Left = 333
        Top = 0
        Width = 23
        Height = 22
        Hint = 'Select Dir'
        HelpType = htKeyword
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00303333333333
          333337F3333333333333303333333333333337F33FFFFF3FF3FF303300000300
          300337FF77777F77377330000BBB0333333337777F337F33333330330BB00333
          333337F373F773333333303330033333333337F3377333333333303333333333
          333337F33FFFFF3FF3FF303300000300300337FF77777F77377330000BBB0333
          333337777F337F33333330330BB00333333337F373F773333333303330033333
          333337F3377333333333303333333333333337FFFF3FF3FFF333000003003000
          333377777F77377733330BBB0333333333337F337F33333333330BB003333333
          333373F773333333333330033333333333333773333333333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SB_DirClick
      end
      object BB_Proc: TBitBtn
        Left = 10
        Top = 48
        Width = 100
        Height = 25
        Caption = 'Reconst'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333333333333EEEEEEEEEEEEEEE333FFFFFFFFFFFFF3E00000000000
          00E337777777777777F3E0F77777777770E337F33333333337F3E0F333333333
          70E337F33333333337F3E0F33333333370E337F333FF3F3337F3E0F330030333
          70E337F3377F7FF337F3E0F33003003370E337F3377F77FF37F3E0F330030003
          70E337F3377F777337F3E0F33003003370E337F3377F773337F3E0F330030333
          70E337F33773733337F3E0F33333333370E337F33333333337F3E0F333333333
          70E337F33333333337F3E0FFFFFFFFFFF0E337FFFFFFFFFFF7F3E00000000000
          00E33777777777777733EEEEEEEEEEEEEEE33333333333333333}
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 0
        OnClick = BB_ProcClick
      end
      object CB_AllCK: TCheckBox
        Left = 245
        Top = 52
        Width = 82
        Height = 17
        Caption = 'Check All'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = CB_AllCKClick
      end
      object RB_Compled: TRadioButton
        Left = 136
        Top = 28
        Width = 84
        Height = 17
        Caption = 'Completed'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object Panel1: TPanel
        Left = 11
        Top = 28
        Width = 124
        Height = 16
        BevelOuter = bvNone
        TabOrder = 3
        object RB_Proc3: TRadioButton
          Left = 0
          Top = 0
          Width = 124
          Height = 16
          Align = alClient
          Caption = 'CT Cond. in Tag'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object Edit_Dir: TEdit
        Left = 35
        Top = 0
        Width = 214
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        Text = 'Edit_Dir'
      end
      object BB_STOP_Proc: TBitBtn
        Left = 119
        Top = 48
        Width = 100
        Height = 25
        Caption = 'STOP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333333333333EEEEEEEEEEEEEEE333FFFFFFFFFFFFF3E00000000000
          00E337777777777777F3E0F77777777770E337F33333333337F3E0F333333333
          70E337F33333333337F3E0F33333333370E337F333FFFFF337F3E0F330000033
          70E337F3377777F337F3E0F33000003370E337F3377777F337F3E0F330000033
          70E337F3377777F337F3E0F33000003370E337F3377777F337F3E0F330000033
          70E337F33777773337F3E0F33333333370E337F33333333337F3E0F333333333
          70E337F33333333337F3E0FFFFFFFFFFF0E337FFFFFFFFFFF7F3E00000000000
          00E33777777777777733EEEEEEEEEEEEEEE33333333333333333}
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 5
        OnClick = BB_STOP_ProcClick
      end
      object CB_Ext: TComboBox
        Left = 255
        Top = 0
        Width = 74
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 6
        Text = '*.tag'
        Items.Strings = (
          '*.tag'
          '*.ini'
          '*.*')
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 97
      Width = 412
      Height = 97
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel3'
      TabOrder = 1
      object CLB_File: TCheckListBox
        Left = 0
        Top = 0
        Width = 412
        Height = 97
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        TabOrder = 0
        OnClick = CLB_FileClick
      end
    end
  end
  object Memo: TRichEdit
    Left = 0
    Top = 735
    Width = 416
    Height = 134
    Align = alClient
    Font.Charset = SHIFTJIS_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    PlainText = True
    ScrollBars = ssBoth
    TabOrder = 2
    Zoom = 100
  end
  object GroupBox6: TGroupBox
    Left = 0
    Top = 316
    Width = 416
    Height = 419
    Align = alTop
    Caption = 'CT Conditions'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object PageControl1: TPageControl
      Left = 2
      Top = 18
      Width = 412
      Height = 399
      ActivePage = TS
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MultiLine = True
      ParentFont = False
      TabOrder = 0
      object TS: TTabSheet
        Caption = 'File info.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        object SB_FN: TSpeedButton
          Left = 370
          Top = 26
          Width = 23
          Height = 24
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            5555555555555555555555555555555555555555555555555555555555555555
            555555555555555555555555555555555555555FFFFFFFFFF555550000000000
            55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
            B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
            000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
            555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
            55555575FFF75555555555700007555555555557777555555555555555555555
            5555555555555555555555555555555555555555555555555555}
          NumGlyphs = 2
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 404
          Height = 193
          Align = alClient
          BevelOuter = bvNone
          Color = 15331817
          ParentBackground = False
          TabOrder = 1
          object Label1: TLabel
            Left = 7
            Top = 4
            Width = 59
            Height = 16
            Caption = 'File Name'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 6
            Top = 86
            Width = 97
            Height = 16
            Hint = '21'
            Caption = 'Orig image size'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SB_Copy: TSpeedButton
            Left = 129
            Top = 83
            Width = 77
            Height = 22
            Hint = '21'
            Caption = 'Image size'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 251
            Top = 86
            Width = 40
            Height = 16
            Hint = '21'
            Caption = 'Offset'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label27: TLabel
            Left = 6
            Top = 138
            Width = 113
            Height = 16
            Hint = '21'
            Caption = '(a, b) : I=a*Io+b'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SB_FOpen: TSpeedButton
            Left = 379
            Top = 27
            Width = 23
            Height = 22
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              5555555555555555555555555555555555555555555555555555555555555555
              555555555555555555555555555555555555555FFFFFFFFFF555550000000000
              55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
              B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
              000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
              555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
              55555575FFF75555555555700007555555555557777555555555555555555555
              5555555555555555555555555555555555555555555555555555}
            NumGlyphs = 2
            OnClick = SB_FOpenClick
          end
          object Label28: TLabel
            Left = 7
            Top = 59
            Width = 45
            Height = 16
            Hint = '21'
            Caption = 'Format'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Edit_FN: TEdit
            Left = 14
            Top = 26
            Width = 364
            Height = 24
            Hint = '21'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = 'D:\DE\12071715_\12071715_0_s_10'
          end
          object CB_FType: TComboBox
            Left = 66
            Top = 56
            Width = 88
            Height = 24
            Hint = '21'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemIndex = 3
            ParentFont = False
            TabOrder = 1
            Text = 'Double'
            Items.Strings = (
              'WORD'
              'DWROD'
              'Single'
              'Double')
          end
          object Edit_OW: TEdit
            Left = 14
            Top = 108
            Width = 46
            Height = 24
            Hint = '21'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 2
            Text = '600'
          end
          object Edit_OH: TEdit
            Left = 66
            Top = 108
            Width = 46
            Height = 24
            Hint = '21'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 3
            Text = '500'
          end
          object Edit_PW: TEdit
            Left = 136
            Top = 108
            Width = 46
            Height = 24
            Hint = '21'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 4
            Text = '600'
          end
          object Edit_PH: TEdit
            Left = 188
            Top = 108
            Width = 46
            Height = 24
            Hint = '21'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 5
            Text = '500'
          end
          object Edit_OFFX: TEdit
            Left = 257
            Top = 108
            Width = 46
            Height = 24
            Hint = '21'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 6
            Text = '0'
          end
          object Edit_OFFY: TEdit
            Left = 309
            Top = 108
            Width = 46
            Height = 24
            Hint = '21'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 7
            Text = '0'
          end
          object CB_Median: TCheckBox
            Left = 200
            Top = 163
            Width = 78
            Height = 17
            Hint = '21'
            Caption = 'Median'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
          end
          object CB_LN: TCheckBox
            Left = 136
            Top = 163
            Width = 39
            Height = 17
            Hint = '21'
            Caption = '-Ln'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 9
          end
          object Edit_b: TEdit
            Left = 66
            Top = 160
            Width = 46
            Height = 24
            Hint = '21'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            Text = '0'
          end
          object Edit_a: TEdit
            Left = 14
            Top = 160
            Width = 46
            Height = 24
            Hint = '21'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            Text = '1'
          end
          object CB_Ser: TCheckBox
            Left = 175
            Top = 60
            Width = 70
            Height = 17
            Caption = 'Series'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 12
          end
          object CB_X2: TCheckBox
            Left = 284
            Top = 163
            Width = 117
            Height = 17
            Caption = 'X2 Interpolate'
            TabOrder = 13
          end
        end
        object GroupBox2: TGroupBox
          Left = 0
          Top = 193
          Width = 404
          Height = 175
          Align = alBottom
          Caption = 'Options'
          Color = 15331817
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
          object SB_GetROI: TSpeedButton
            Left = 302
            Top = 25
            Width = 91
            Height = 24
            Hint = '21'
            Caption = 'Get ROI'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FFFFFFFFFFF
              FFFF33333333333FFFFF3FFFFFFFFF00000F333333333377777F33FFFFFFFF09
              990F33333333337F337F333FFFFFFF09990F33333333337F337F3333FFFFFF09
              990F33333333337FFF7F33333FFFFF00000F3333333333777773333333FFFFFF
              FFFF3333333333333F333333333FFFFF0FFF3333333333337FF333333333FFF0
              00FF33333333333777FF333333333F00000F33FFFFF33777777F300000333000
              0000377777F33777777730EEE033333000FF37F337F3333777F330EEE0333330
              00FF37F337F3333777F330EEE033333000FF37FFF7F333F77733300000333000
              03FF3777773337777333333333333333333F3333333333333333}
            NumGlyphs = 2
            ParentFont = False
            OnClick = SB_GetROIClick
          end
          object Shape1: TShape
            Left = 250
            Top = 101
            Width = 105
            Height = 49
            Brush.Color = clMoneyGreen
          end
          object Label3: TLabel
            Left = 15
            Top = 82
            Width = 26
            Height = 16
            Hint = '21'
            Caption = 'Left'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 15
            Top = 110
            Width = 34
            Height = 16
            Hint = '21'
            Caption = 'Right'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label54: TLabel
            Left = 14
            Top = 140
            Width = 69
            Height = 16
            Hint = '21'
            Caption = #20984' Correct'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Bevel1: TBevel
            Left = 211
            Top = 21
            Width = 3
            Height = 140
          end
          object Label20: TLabel
            Left = 232
            Top = 64
            Width = 24
            Height = 16
            Caption = 'dPh'
          end
          object CB_WE: TCheckBox
            Left = 7
            Top = 29
            Width = 81
            Height = 17
            Hint = '21'
            Caption = 'Width Ext.'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            State = cbChecked
            TabOrder = 0
          end
          object CB_Cor_ClH: TCheckBox
            Left = 7
            Top = 56
            Width = 72
            Height = 17
            Hint = '21'
            Caption = 'Hol Cor.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object Edit_WE: TEdit
            Left = 107
            Top = 25
            Width = 35
            Height = 24
            Hint = '21'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 2
            Text = '100'
          end
          object Edit_WEP: TEdit
            Left = 159
            Top = 25
            Width = 35
            Height = 24
            Hint = '21'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 3
            Text = '2'
          end
          object CB_Cor_ClV: TCheckBox
            Left = 85
            Top = 55
            Width = 80
            Height = 17
            Hint = '21'
            Caption = 'Ver Cor.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
          end
          object CB_2PCor: TCheckBox
            Left = 229
            Top = 29
            Width = 67
            Height = 17
            Hint = '21'
            Caption = '2Pi Cor.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
          end
          object Edit_Top: TEdit
            Left = 284
            Top = 89
            Width = 49
            Height = 24
            Hint = '21'
            BevelOuter = bvRaised
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 6
            Text = '100'
          end
          object Edit_Bottom: TEdit
            Left = 329
            Top = 136
            Width = 49
            Height = 24
            Hint = '21'
            BevelOuter = bvRaised
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 7
            Text = '300'
          end
          object Edit_Right: TEdit
            Left = 274
            Top = 136
            Width = 49
            Height = 24
            Hint = '21'
            BevelOuter = bvRaised
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 8
            Text = '100'
          end
          object Edit_Left: TEdit
            Left = 229
            Top = 89
            Width = 49
            Height = 24
            Hint = '21'
            BevelOuter = bvRaised
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 9
            Text = '30'
          end
          object Edit_CL1: TEdit
            Left = 61
            Top = 77
            Width = 35
            Height = 24
            Hint = '21'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 10
            Text = '3'
          end
          object Edit_CR1: TEdit
            Left = 61
            Top = 107
            Width = 35
            Height = 24
            Hint = '21'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 11
            Text = '3'
          end
          object Edit_CL2: TEdit
            Left = 107
            Top = 77
            Width = 35
            Height = 24
            Hint = '21'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 12
            Text = '50'
          end
          object Edit_CR2: TEdit
            Left = 107
            Top = 107
            Width = 35
            Height = 24
            Hint = '21'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 13
            Text = '50'
          end
          object Edit_TC: TEdit
            Left = 107
            Top = 137
            Width = 35
            Height = 24
            Hint = '21'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 14
            Text = '0'
          end
          object Edit_Chat: TEdit
            Left = 284
            Top = 59
            Width = 67
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
            Text = '0.1'
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Conv.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 1
        ParentFont = False
        object Chart1: TChart
          Left = 0
          Top = 210
          Width = 404
          Height = 158
          BackWall.Brush.Style = bsClear
          BackWall.Brush.Gradient.Direction = gdBottomTop
          BackWall.Brush.Gradient.EndColor = clWhite
          BackWall.Brush.Gradient.StartColor = 15395562
          BackWall.Brush.Gradient.Visible = True
          BackWall.Transparent = False
          Foot.Font.Color = clBlue
          Foot.Font.Name = 'Verdana'
          Gradient.Direction = gdBottomTop
          Gradient.EndColor = 14740448
          Gradient.MidColor = 15395562
          Gradient.StartColor = 15331817
          Gradient.Visible = True
          LeftWall.Brush.Color = 14937343
          LeftWall.Color = 14745599
          Legend.Font.Name = 'Verdana'
          Legend.Shadow.Transparency = 0
          Legend.Visible = False
          RightWall.Color = 14745599
          Title.Font.Name = 'Verdana'
          Title.Text.Strings = (
            'TChart')
          Title.Visible = False
          BottomAxis.Axis.Color = 4210752
          BottomAxis.Grid.Color = 11119017
          BottomAxis.LabelsFormat.Font.Name = 'Verdana'
          BottomAxis.TicksInner.Color = 11119017
          BottomAxis.Title.Font.Name = 'Verdana'
          DepthAxis.Axis.Color = 4210752
          DepthAxis.Grid.Color = 11119017
          DepthAxis.LabelsFormat.Font.Name = 'Verdana'
          DepthAxis.TicksInner.Color = 11119017
          DepthAxis.Title.Font.Name = 'Verdana'
          DepthTopAxis.Axis.Color = 4210752
          DepthTopAxis.Grid.Color = 11119017
          DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
          DepthTopAxis.TicksInner.Color = 11119017
          DepthTopAxis.Title.Font.Name = 'Verdana'
          LeftAxis.Axis.Color = 4210752
          LeftAxis.Grid.Color = 11119017
          LeftAxis.LabelsFormat.Font.Name = 'Verdana'
          LeftAxis.TicksInner.Color = 11119017
          LeftAxis.Title.Font.Name = 'Verdana'
          RightAxis.Axis.Color = 4210752
          RightAxis.Grid.Color = 11119017
          RightAxis.LabelsFormat.Font.Name = 'Verdana'
          RightAxis.TicksInner.Color = 11119017
          RightAxis.Title.Font.Name = 'Verdana'
          TopAxis.Axis.Color = 4210752
          TopAxis.Grid.Color = 11119017
          TopAxis.LabelsFormat.Font.Name = 'Verdana'
          TopAxis.TicksInner.Color = 11119017
          TopAxis.Title.Font.Name = 'Verdana'
          View3D = False
          Align = alBottom
          BevelOuter = bvNone
          Color = 14740448
          TabOrder = 0
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 2
          object Series1: TLineSeries
            HoverElement = [heCurrent]
            SeriesColor = clRed
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series7: TFastLineSeries
            HoverElement = []
            Selected.Hover.Visible = True
            SeriesColor = 10485760
            LinePen.Color = 10485760
            LinePen.EndStyle = esRound
            TreatNulls = tnDontPaint
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 404
          Height = 210
          Align = alClient
          BevelOuter = bvNone
          Color = 15331817
          ParentBackground = False
          TabOrder = 1
          object SB_CH_File: TSpeedButton
            Left = 228
            Top = 45
            Width = 105
            Height = 30
            Caption = 'Check filter'
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337333733373
              3373337F3F7F3F7F3F7F33737373737373733F7F7F7F7F7F7F7F770000000000
              000077777777777777773303333333333333337FFF333333333F370993333333
              3399377773F33333337733033933333339333F7FF7FFFFFFF7FF770777977777
              977777777777777777773303339333339333337F3373F3337333370333393339
              3333377F33373FF7333333033333999333333F7FFFFF777FFFFF770777777777
              777777777777777777773303333333333333337F333333333333370333333333
              3333377F33333333333333033333333333333F7FFFFFFFFFFFFF770777777777
              7777777777777777777733333333333333333333333333333333}
            NumGlyphs = 2
            OnClick = SB_CH_FileClick
          end
          object Label6: TLabel
            Left = 236
            Top = 21
            Width = 141
            Height = 16
            Caption = '0: Ramp, 0.3: SL func.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 13
            Top = 21
            Width = 52
            Height = 16
            Caption = 'C factor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 13
            Top = 52
            Width = 67
            Height = 16
            Caption = 'Min && Max'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 140
            Top = 54
            Width = 16
            Height = 16
            Caption = #65374
          end
          object Edit_K: TEdit
            Left = 94
            Top = 18
            Width = 43
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = '0.35'
          end
          object Edit_SMin: TEdit
            Left = 94
            Top = 49
            Width = 43
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = '-0.05'
          end
          object Edit_SMax: TEdit
            Left = 159
            Top = 49
            Width = 43
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = '0.05'
          end
          object CB_Int: TCheckBox
            Left = 13
            Top = 85
            Width = 97
            Height = 20
            Caption = 'Integration'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
          object CB_FFT: TCheckBox
            Left = 13
            Top = 111
            Width = 72
            Height = 17
            Caption = 'FFT'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            State = cbChecked
            TabOrder = 4
          end
          object CB_OC: TCheckBox
            Left = 13
            Top = 144
            Width = 109
            Height = 17
            Caption = 'Offset correct'
            TabOrder = 5
          end
          object Edit_OC_Zero: TEdit
            Left = 159
            Top = 140
            Width = 43
            Height = 24
            NumbersOnly = True
            TabOrder = 6
            Text = '2'
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Filter'
        ImageIndex = 2
        object Chart2: TChart
          Left = 0
          Top = 201
          Width = 404
          Height = 167
          BackWall.Brush.Style = bsClear
          BackWall.Brush.Gradient.Direction = gdBottomTop
          BackWall.Brush.Gradient.EndColor = clWhite
          BackWall.Brush.Gradient.StartColor = 15395562
          BackWall.Brush.Gradient.Visible = True
          BackWall.Transparent = False
          Foot.Font.Color = clBlue
          Foot.Font.Name = 'Verdana'
          Gradient.Direction = gdBottomTop
          Gradient.EndColor = 14740448
          Gradient.MidColor = 15395562
          Gradient.StartColor = 15331817
          Gradient.Visible = True
          LeftWall.Color = 14745599
          Legend.Font.Name = 'Verdana'
          Legend.Shadow.Transparency = 0
          RightWall.Color = 14745599
          Title.Font.Name = 'Verdana'
          Title.Text.Strings = (
            'TChart')
          Title.Visible = False
          BottomAxis.Axis.Color = 4210752
          BottomAxis.Grid.Color = 11119017
          BottomAxis.LabelsFormat.Font.Name = 'Verdana'
          BottomAxis.TicksInner.Color = 11119017
          BottomAxis.Title.Font.Name = 'Verdana'
          DepthAxis.Axis.Color = 4210752
          DepthAxis.Grid.Color = 11119017
          DepthAxis.LabelsFormat.Font.Name = 'Verdana'
          DepthAxis.TicksInner.Color = 11119017
          DepthAxis.Title.Font.Name = 'Verdana'
          DepthTopAxis.Axis.Color = 4210752
          DepthTopAxis.Grid.Color = 11119017
          DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
          DepthTopAxis.TicksInner.Color = 11119017
          DepthTopAxis.Title.Font.Name = 'Verdana'
          LeftAxis.Axis.Color = 4210752
          LeftAxis.Grid.Color = 11119017
          LeftAxis.LabelsFormat.Font.Name = 'Verdana'
          LeftAxis.TicksInner.Color = 11119017
          LeftAxis.Title.Font.Name = 'Verdana'
          RightAxis.Axis.Color = 4210752
          RightAxis.Grid.Color = 11119017
          RightAxis.LabelsFormat.Font.Name = 'Verdana'
          RightAxis.TicksInner.Color = 11119017
          RightAxis.Title.Font.Name = 'Verdana'
          TopAxis.Axis.Color = 4210752
          TopAxis.Grid.Color = 11119017
          TopAxis.LabelsFormat.Font.Name = 'Verdana'
          TopAxis.TicksInner.Color = 11119017
          TopAxis.Title.Font.Name = 'Verdana'
          View3D = False
          Align = alBottom
          BevelOuter = bvNone
          Color = 14740448
          TabOrder = 0
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object Series2: TLineSeries
            HoverElement = [heCurrent]
            Title = 'Ver'
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series8: TFastLineSeries
            HoverElement = []
            Selected.Hover.Visible = True
            Title = 'Hor'
            LinePen.Color = 3513587
            LinePen.EndStyle = esRound
            TreatNulls = tnDontPaint
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
        end
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 404
          Height = 201
          Align = alClient
          BevelOuter = bvNone
          Color = 15331817
          ParentBackground = False
          TabOrder = 1
          object Label12: TLabel
            Left = 26
            Top = 37
            Width = 71
            Height = 16
            Caption = 'Cut of Freq'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label34: TLabel
            Left = 182
            Top = 37
            Width = 99
            Height = 16
            Caption = 'Amp@DC (0~1)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label19: TLabel
            Left = 26
            Top = 67
            Width = 73
            Height = 16
            Caption = 'Cut Degree'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 26
            Top = 126
            Width = 71
            Height = 16
            Caption = 'Cut of Freq'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label17: TLabel
            Left = 179
            Top = 126
            Width = 99
            Height = 16
            Caption = 'Amp@DC (0~1)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SB_Check_Fil: TSpeedButton
            Left = 168
            Top = 148
            Width = 114
            Height = 30
            Caption = 'Check filter'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337333733373
              3373337F3F7F3F7F3F7F33737373737373733F7F7F7F7F7F7F7F770000000000
              000077777777777777773303333333333333337FFF333333333F370993333333
              3399377773F33333337733033933333339333F7FF7FFFFFFF7FF770777977777
              977777777777777777773303339333339333337F3373F3337333370333393339
              3333377F33373FF7333333033333999333333F7FFFFF777FFFFF770777777777
              777777777777777777773303333333333333337F333333333333370333333333
              3333377F33333333333333033333333333333F7FFFFFFFFFFFFF770777777777
              7777777777777777777733333333333333333333333333333333}
            NumGlyphs = 2
            ParentFont = False
            OnClick = SB_Check_FilClick
          end
          object Label18: TLabel
            Left = 26
            Top = 156
            Width = 73
            Height = 16
            Caption = 'Cut Degree'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object CB_LPF: TCheckBox
            Left = 11
            Top = 11
            Width = 194
            Height = 17
            Caption = 'High pass filter'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            State = cbChecked
            TabOrder = 0
          end
          object Edit_COF: TEdit
            Left = 126
            Top = 34
            Width = 36
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = '10'
          end
          object Edit_DC_Amp: TEdit
            Left = 298
            Top = 34
            Width = 36
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = '0.5'
            OnKeyUp = Edit_DC_AmpKeyUp
          end
          object Edit_CDeg: TEdit
            Left = 126
            Top = 64
            Width = 36
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Text = '1'
          end
          object CB_hFilter: TCheckBox
            Left = 11
            Top = 94
            Width = 194
            Height = 17
            Caption = 'Low pass filter'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            State = cbChecked
            TabOrder = 4
          end
          object Edit_hF_COF: TEdit
            Left = 126
            Top = 123
            Width = 36
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Text = '10'
          end
          object Edit_hF_Amp: TEdit
            Left = 298
            Top = 123
            Width = 36
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            Text = '0.5'
          end
          object Edit_hF_COD: TEdit
            Left = 126
            Top = 153
            Width = 36
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            Text = '1'
          end
          object CB_AutoNorm: TCheckBox
            Left = 181
            Top = 71
            Width = 97
            Height = 17
            Caption = 'Auto Norm.'
            Checked = True
            State = cbChecked
            TabOrder = 8
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Reconst'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 3
        ParentFont = False
        object GroupBox5: TGroupBox
          Left = 0
          Top = 200
          Width = 404
          Height = 168
          Align = alBottom
          Caption = 'Center'
          Color = 15331817
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
          object Chart3: TChart
            Left = 2
            Top = 50
            Width = 198
            Height = 116
            BackWall.Brush.Style = bsClear
            BackWall.Brush.Gradient.Direction = gdBottomTop
            BackWall.Brush.Gradient.EndColor = clWhite
            BackWall.Brush.Gradient.StartColor = 15395562
            BackWall.Brush.Gradient.Visible = True
            BackWall.Transparent = False
            Foot.Font.Color = clBlue
            Foot.Font.Name = 'Verdana'
            Gradient.Direction = gdBottomTop
            Gradient.EndColor = 14740448
            Gradient.MidColor = 15395562
            Gradient.StartColor = 15331817
            Gradient.Visible = True
            LeftWall.Color = 14745599
            Legend.Font.Name = 'Verdana'
            Legend.Shadow.Transparency = 0
            Legend.Visible = False
            RightWall.Color = 14745599
            Title.Font.Name = 'Verdana'
            Title.Text.Strings = (
              'TChart')
            Title.Visible = False
            BottomAxis.Axis.Color = 4210752
            BottomAxis.Grid.Color = 11119017
            BottomAxis.LabelsFormat.Font.Name = 'Verdana'
            BottomAxis.TicksInner.Color = 11119017
            BottomAxis.Title.Font.Name = 'Verdana'
            DepthAxis.Axis.Color = 4210752
            DepthAxis.Grid.Color = 11119017
            DepthAxis.LabelsFormat.Font.Name = 'Verdana'
            DepthAxis.TicksInner.Color = 11119017
            DepthAxis.Title.Font.Name = 'Verdana'
            DepthTopAxis.Axis.Color = 4210752
            DepthTopAxis.Grid.Color = 11119017
            DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
            DepthTopAxis.TicksInner.Color = 11119017
            DepthTopAxis.Title.Font.Name = 'Verdana'
            LeftAxis.Axis.Color = 4210752
            LeftAxis.Grid.Color = 11119017
            LeftAxis.LabelsFormat.Font.Name = 'Verdana'
            LeftAxis.TicksInner.Color = 11119017
            LeftAxis.Title.Font.Name = 'Verdana'
            RightAxis.Axis.Color = 4210752
            RightAxis.Grid.Color = 11119017
            RightAxis.LabelsFormat.Font.Name = 'Verdana'
            RightAxis.TicksInner.Color = 11119017
            RightAxis.Title.Font.Name = 'Verdana'
            TopAxis.Axis.Color = 4210752
            TopAxis.Grid.Color = 11119017
            TopAxis.LabelsFormat.Font.Name = 'Verdana'
            TopAxis.TicksInner.Color = 11119017
            TopAxis.Title.Font.Name = 'Verdana'
            View3D = False
            Align = alLeft
            BevelOuter = bvNone
            Color = 14740448
            TabOrder = 0
            DefaultCanvas = 'TGDIPlusCanvas'
            ColorPaletteIndex = 13
            object Series3: TLineSeries
              HoverElement = [heCurrent]
              SeriesColor = clBlue
              Brush.BackColor = clDefault
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              XValues.Name = 'X'
              XValues.Order = loAscending
              YValues.Name = 'Y'
              YValues.Order = loNone
            end
            object Series4: TLineSeries
              HoverElement = [heCurrent]
              SeriesColor = 4227072
              Brush.BackColor = clDefault
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              XValues.Name = 'X'
              XValues.Order = loAscending
              YValues.Name = 'Y'
              YValues.Order = loNone
            end
          end
          object Panel9: TPanel
            Left = 2
            Top = 18
            Width = 400
            Height = 32
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object SB_FindCenter: TSpeedButton
              Left = 1
              Top = 2
              Width = 114
              Height = 30
              Caption = 'Find Center'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337333733373
                3373337F3F7F3F7F3F7F33737373737373733F7F7F7F7F7F7F7F770000000000
                000077777777777777773303333333333333337FFF333333333F370993333333
                3399377773F33333337733033933333339333F7FF7FFFFFFF7FF770777977777
                977777777777777777773303339333339333337F3373F3337333370333393339
                3333377F33373FF7333333033333999333333F7FFFFF777FFFFF770777777777
                777777777777777777773303333333333333337F333333333333370333333333
                3333377F33333333333333033333333333333F7FFFFFFFFFFFFF770777777777
                7777777777777777777733333333333333333333333333333333}
              NumGlyphs = 2
              ParentFont = False
              OnClick = SB_FindCenterClick
            end
            object Label42: TLabel
              Left = 259
              Top = 8
              Width = 73
              Height = 16
              Caption = 'Scan Width'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Edit_W: TEdit
              Left = 352
              Top = 4
              Width = 37
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              NumbersOnly = True
              ParentFont = False
              TabOrder = 0
              Text = '100'
            end
            object CB_deg: TComboBox
              Left = 135
              Top = 4
              Width = 90
              Height = 24
              ItemIndex = 0
              TabOrder = 1
              Text = '180 deg'
              Items.Strings = (
                '180 deg'
                '360 deg')
            end
          end
          object Chart4: TChart
            Left = 200
            Top = 50
            Width = 202
            Height = 116
            BackWall.Brush.Style = bsClear
            BackWall.Brush.Gradient.Direction = gdBottomTop
            BackWall.Brush.Gradient.EndColor = clWhite
            BackWall.Brush.Gradient.StartColor = 15395562
            BackWall.Brush.Gradient.Visible = True
            BackWall.Transparent = False
            Foot.Font.Color = clBlue
            Foot.Font.Name = 'Verdana'
            Gradient.Direction = gdBottomTop
            Gradient.EndColor = 14740448
            Gradient.MidColor = 15395562
            Gradient.StartColor = 15331817
            Gradient.Visible = True
            LeftWall.Color = 14745599
            Legend.Font.Name = 'Verdana'
            Legend.Shadow.Transparency = 0
            Legend.Visible = False
            RightWall.Color = 14745599
            Title.Font.Name = 'Verdana'
            Title.Text.Strings = (
              'TChart')
            Title.Visible = False
            BottomAxis.Axis.Color = 4210752
            BottomAxis.Grid.Color = 11119017
            BottomAxis.LabelsFormat.Font.Name = 'Verdana'
            BottomAxis.TicksInner.Color = 11119017
            BottomAxis.Title.Font.Name = 'Verdana'
            DepthAxis.Axis.Color = 4210752
            DepthAxis.Grid.Color = 11119017
            DepthAxis.LabelsFormat.Font.Name = 'Verdana'
            DepthAxis.TicksInner.Color = 11119017
            DepthAxis.Title.Font.Name = 'Verdana'
            DepthTopAxis.Axis.Color = 4210752
            DepthTopAxis.Grid.Color = 11119017
            DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
            DepthTopAxis.TicksInner.Color = 11119017
            DepthTopAxis.Title.Font.Name = 'Verdana'
            LeftAxis.Axis.Color = 4210752
            LeftAxis.Grid.Color = 11119017
            LeftAxis.LabelsFormat.Font.Name = 'Verdana'
            LeftAxis.TicksInner.Color = 11119017
            LeftAxis.Title.Font.Name = 'Verdana'
            RightAxis.Axis.Color = 4210752
            RightAxis.Grid.Color = 11119017
            RightAxis.LabelsFormat.Font.Name = 'Verdana'
            RightAxis.TicksInner.Color = 11119017
            RightAxis.Title.Font.Name = 'Verdana'
            TopAxis.Axis.Color = 4210752
            TopAxis.Grid.Color = 11119017
            TopAxis.LabelsFormat.Font.Name = 'Verdana'
            TopAxis.TicksInner.Color = 11119017
            TopAxis.Title.Font.Name = 'Verdana'
            View3D = False
            Align = alClient
            BevelOuter = bvNone
            Color = 14740448
            TabOrder = 2
            DefaultCanvas = 'TGDIPlusCanvas'
            ColorPaletteIndex = 13
            object Series5: TFastLineSeries
              HoverElement = []
              Selected.Hover.Visible = True
              SeriesColor = clRed
              LinePen.Color = clRed
              LinePen.Width = 2
              LinePen.EndStyle = esRound
              TreatNulls = tnDontPaint
              XValues.Name = 'X'
              XValues.Order = loAscending
              YValues.Name = 'Y'
              YValues.Order = loNone
            end
          end
        end
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 404
          Height = 200
          Align = alClient
          BevelOuter = bvNone
          Color = 15331817
          ParentBackground = False
          TabOrder = 1
          object Label15: TLabel
            Left = 3
            Top = 11
            Width = 44
            Height = 16
            Caption = 'Center'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 139
            Top = 11
            Width = 22
            Height = 16
            Caption = 'Pro'
          end
          object Label11: TLabel
            Left = 220
            Top = 7
            Width = 7
            Height = 16
            Caption = #176
          end
          object Label25: TLabel
            Left = 240
            Top = 11
            Width = 31
            Height = 16
            Caption = 'Mag.'
          end
          object Label33: TLabel
            Left = 239
            Top = 43
            Width = 32
            Height = 16
            Caption = 'nCPU'
          end
          object Bevel2: TBevel
            Left = 200
            Top = 50
            Width = 28
            Height = 3
          end
          object Label29: TLabel
            Left = 3
            Top = 75
            Width = 29
            Height = 16
            Caption = 'Slice'
          end
          object Label30: TLabel
            Left = 3
            Top = 108
            Width = 44
            Height = 16
            Caption = 'Center'
          end
          object Label55: TLabel
            Left = 3
            Top = 142
            Width = 113
            Height = 16
            Caption = 'Start angle [deg]'
          end
          object SB_Calc: TSpeedButton
            Left = 218
            Top = 105
            Width = 71
            Height = 24
            Caption = 'Calc'
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
              73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
              0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
              0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
              0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
              0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
              0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
              0333337F777777737F333308888888880333337F333333337F33330888888888
              03333373FFFFFFFF733333700000000073333337777777773333}
            NumGlyphs = 2
            OnClick = SB_CalcClick
          end
          object CB_Copy: TSpeedButton
            Left = 224
            Top = 72
            Width = 71
            Height = 24
            Caption = 'Copy'
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
              333333333333337FF3333333333333903333333333333377FF33333333333399
              03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
              99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
              99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
              03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
              33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
              33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
              3333777777333333333333333333333333333333333333333333}
            NumGlyphs = 2
            OnClick = CB_CopyClick
          end
          object Label38: TLabel
            Left = 3
            Top = 172
            Width = 127
            Height = 16
            Caption = 'Offset pro, Num pro'
          end
          object Edit_CTC: TEdit
            Left = 55
            Top = 8
            Width = 52
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            Text = '0'
          end
          object UD_CTC: TUpDown
            Left = 107
            Top = 8
            Width = 16
            Height = 24
            Associate = Edit_CTC
            Min = -100
            TabOrder = 1
          end
          object Edit_ang: TEdit
            Left = 167
            Top = 8
            Width = 47
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = '360'
          end
          object Edit_CTMag: TEdit
            Left = 277
            Top = 8
            Width = 41
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 3
            Text = '1'
          end
          object UD_nCPU: TUpDown
            Left = 318
            Top = 40
            Width = 16
            Height = 24
            Associate = Edit_CPU
            Min = 1
            Max = 10
            Position = 4
            TabOrder = 4
          end
          object Edit_CPU: TEdit
            Left = 277
            Top = 40
            Width = 41
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Text = '4'
          end
          object Edit_CUDA: TEdit
            Left = 55
            Top = 40
            Width = 139
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            Text = 'Cuda_CT_101.exe'
          end
          object CB_GPU: TCheckBox
            Left = 3
            Top = 42
            Width = 46
            Height = 17
            Caption = 'GPU'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            State = cbChecked
            TabOrder = 7
          end
          object Edit_S1: TEdit
            Left = 55
            Top = 72
            Width = 45
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            Text = '0'
          end
          object Edit_S2: TEdit
            Left = 106
            Top = 72
            Width = 45
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            Text = '0'
          end
          object Edit_S3: TEdit
            Left = 167
            Top = 72
            Width = 45
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            Text = '0'
          end
          object Edit_C3: TEdit
            Left = 167
            Top = 105
            Width = 45
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            Text = '0'
          end
          object Edit_C2: TEdit
            Left = 107
            Top = 105
            Width = 45
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
            Text = '0'
          end
          object Edit_C1: TEdit
            Left = 56
            Top = 105
            Width = 45
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 13
            Text = '0'
          end
          object Edit_dST: TEdit
            Left = 165
            Top = 137
            Width = 47
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 14
            Text = '0'
          end
          object CB_USE_Center: TCheckBox
            Left = 232
            Top = 141
            Width = 113
            Height = 17
            Caption = 'Auto Center'
            TabOrder = 15
          end
          object Edit_OFFL: TEdit
            Left = 165
            Top = 167
            Width = 47
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 16
            Text = '0'
          end
          object Edit_Npro2: TEdit
            Left = 232
            Top = 167
            Width = 47
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 17
            Text = '0'
          end
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Reshape'
        ImageIndex = 4
        object GroupBox4: TGroupBox
          Left = 0
          Top = 169
          Width = 404
          Height = 199
          Align = alClient
          Caption = 'KUBOMI'
          Color = 15331817
          ParentBackground = False
          ParentColor = False
          TabOrder = 1
          object Label31: TLabel
            Left = 93
            Top = 64
            Width = 27
            Height = 16
            Caption = 'Ver.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label32: TLabel
            Left = 93
            Top = 94
            Width = 24
            Height = 16
            Caption = 'Hol.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object CB_Cor_KUBOMI: TCheckBox
            Left = 8
            Top = 33
            Width = 81
            Height = 17
            Caption = 'Cor '#20985#20984
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object Edit_A2: TEdit
            Left = 130
            Top = 59
            Width = 88
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = '0.0038'
          end
          object CB_CSlope: TCheckBox
            Left = 8
            Top = 63
            Width = 79
            Height = 17
            Caption = 'Cor slope'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object Edit_A1: TEdit
            Left = 130
            Top = 29
            Width = 88
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Text = '+3e-6'
          end
          object Edit_A3: TEdit
            Left = 130
            Top = 89
            Width = 88
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            Text = '0.5'
          end
        end
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 404
          Height = 169
          Align = alTop
          Caption = 'Reshape'
          Color = 15331817
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object Label14: TLabel
            Left = 16
            Top = 49
            Width = 37
            Height = 16
            Caption = 'Outer'
          end
          object Label35: TLabel
            Left = 146
            Top = 136
            Width = 16
            Height = 16
            Caption = #65374
          end
          object Label39: TLabel
            Left = 16
            Top = 80
            Width = 124
            Height = 16
            Caption = 'Outer value      '#8213#8213
          end
          object Label40: TLabel
            Left = 150
            Top = 49
            Width = 68
            Height = 16
            Caption = 'Ring width'
          end
          object Label41: TLabel
            Left = 124
            Top = 104
            Width = 13
            Height = 16
            Caption = #8735
          end
          object Label36: TLabel
            Left = 16
            Top = 136
            Width = 67
            Height = 16
            Caption = 'Min && Max'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Edit_RZero: TEdit
            Left = 150
            Top = 103
            Width = 53
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = '0'
          end
          object CB_CTRA: TCheckBox
            Left = 150
            Top = 80
            Width = 66
            Height = 17
            Caption = 'Auto'
            TabOrder = 1
          end
          object Edit_ReShape_CTR: TEdit
            Left = 77
            Top = 46
            Width = 41
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 2
            Text = '520'
          end
          object Edit_CTMin: TEdit
            Left = 99
            Top = 133
            Width = 41
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 3
            Text = '-10'
          end
          object Edit_CTMax: TEdit
            Left = 168
            Top = 133
            Width = 35
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 4
            Text = '10'
          end
          object CB_Reshape: TCheckBox
            Left = 8
            Top = 23
            Width = 130
            Height = 17
            Caption = 'Enable reshape'
            Checked = True
            State = cbChecked
            TabOrder = 5
          end
          object Edit_RW: TEdit
            Left = 248
            Top = 46
            Width = 41
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 6
            Text = '20'
          end
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Series'
        ImageIndex = 5
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 404
          Height = 368
          Align = alClient
          BevelOuter = bvNone
          Color = 15331817
          ParentBackground = False
          TabOrder = 0
          object Label16: TLabel
            Left = 4
            Top = 21
            Width = 29
            Height = 16
            Caption = 'Slice'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label24: TLabel
            Left = 92
            Top = 21
            Width = 15
            Height = 16
            Caption = #65374
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 167
            Top = 21
            Width = 44
            Height = 16
            Caption = 'Center'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label57: TLabel
            Left = 167
            Top = 51
            Width = 53
            Height = 16
            Caption = 'ST. Ang '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label22: TLabel
            Left = 285
            Top = 21
            Width = 15
            Height = 16
            Caption = #65374
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label56: TLabel
            Left = 285
            Top = 51
            Width = 15
            Height = 16
            Caption = #65374
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label23: TLabel
            Left = 7
            Top = 72
            Width = 94
            Height = 16
            Caption = 'Base File Name'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SB_BFN: TSpeedButton
            Left = 374
            Top = 94
            Width = 23
            Height = 24
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              5555555555555555555555555555555555555555555555555555555555555555
              555555555555555555555555555555555555555FFFFFFFFFF555550000000000
              55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
              B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
              000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
              555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
              55555575FFF75555555555700007555555555557777555555555555555555555
              5555555555555555555555555555555555555555555555555555}
            NumGlyphs = 2
            OnClick = SB_BFNClick
          end
          object Label26: TLabel
            Left = 7
            Top = 127
            Width = 45
            Height = 16
            Caption = 'File ext'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Edit_SStart: TEdit
            Left = 44
            Top = 18
            Width = 41
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 0
            Text = '10'
          end
          object Edit_SEnd: TEdit
            Left = 110
            Top = 18
            Width = 41
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 1
            Text = '1270'
          end
          object Edit_dST_ST: TEdit
            Left = 239
            Top = 48
            Width = 41
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = '0'
          end
          object Edit_CTCST: TEdit
            Left = 239
            Top = 18
            Width = 41
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Text = '0.75'
          end
          object Edit_CTCEND: TEdit
            Left = 301
            Top = 18
            Width = 41
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            Text = '2.5'
          end
          object Edit_dST_End: TEdit
            Left = 301
            Top = 48
            Width = 41
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Text = '0'
          end
          object Edit_BFN: TEdit
            Left = 15
            Top = 94
            Width = 358
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            Text = 'D:\MIE\06121150_\06121150_s_'
          end
          object Edit_Ext: TEdit
            Left = 69
            Top = 124
            Width = 41
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object CB_Dig: TCheckBox
            Left = 131
            Top = 128
            Width = 54
            Height = 17
            Caption = '4Digit'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
          end
          object CB_SubDir: TCheckBox
            Left = 131
            Top = 151
            Width = 158
            Height = 17
            Caption = 'Save to sub_Dir'
            TabOrder = 9
          end
          object CB_WE2: TCheckBox
            Left = 7
            Top = 174
            Width = 286
            Height = 17
            Caption = 'Save as orig size (not iclude WE)'
            Checked = True
            State = cbChecked
            TabOrder = 10
          end
          object CB_WOC: TCheckBox
            Left = 7
            Top = 151
            Width = 118
            Height = 17
            Caption = 'W/O Conv'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 11
          end
        end
      end
    end
  end
  object GroupBox7: TGroupBox
    Left = 0
    Top = 199
    Width = 416
    Height = 117
    Align = alTop
    Caption = 'CT Operations'
    Color = 15923199
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 4
    object BB_Load_data: TBitBtn
      Left = 5
      Top = 22
      Width = 82
      Height = 25
      Caption = 'Open Sino'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BB_Load_dataClick
    end
    object BB_Conv: TBitBtn
      Left = 93
      Top = 22
      Width = 82
      Height = 25
      Caption = 'Conv'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BB_ConvClick
    end
    object BB_Reconst: TBitBtn
      Left = 181
      Top = 22
      Width = 82
      Height = 25
      Caption = 'ReConst'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BB_ReconstClick
    end
    object BB_START: TBitBtn
      Left = 295
      Top = 22
      Width = 100
      Height = 25
      Caption = 'START'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333333333333EEEEEEEEEEEEEEE333FFFFFFFFFFFFF3E00000000000
        00E337777777777777F3E0F77777777770E337F33333333337F3E0F333333333
        70E337F3333F333337F3E0F33303333370E337F3337FF33337F3E0F333003333
        70E337F33377FF3337F3E0F33300033370E337F333777FF337F3E0F333000033
        70E337F33377773337F3E0F33300033370E337F33377733337F3E0F333003333
        70E337F33377333337F3E0F33303333370E337F33373333337F3E0F333333333
        70E337F33333333337F3E0FFFFFFFFFFF0E337FFFFFFFFFFF7F3E00000000000
        00E33777777777777733EEEEEEEEEEEEEEE33333333333333333}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
      OnClick = BB_STARTClick
    end
    object BB_STOP: TBitBtn
      Left = 295
      Top = 53
      Width = 100
      Height = 25
      Caption = 'STOP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333333333333EEEEEEEEEEEEEEE333FFFFFFFFFFFFF3E00000000000
        00E337777777777777F3E0F77777777770E337F33333333337F3E0F333333333
        70E337F33333333337F3E0F33333333370E337F333FFFFF337F3E0F330000033
        70E337F3377777F337F3E0F33000003370E337F3377777F337F3E0F330000033
        70E337F3377777F337F3E0F33000003370E337F3377777F337F3E0F330000033
        70E337F33777773337F3E0F33333333370E337F33333333337F3E0F333333333
        70E337F33333333337F3E0FFFFFFFFFFF0E337FFFFFFFFFFF7F3E00000000000
        00E33777777777777733EEEEEEEEEEEEEEE33333333333333333}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 4
      OnClick = BB_STOPClick
    end
    object BB_PostRec: TBitBtn
      Left = 181
      Top = 53
      Width = 82
      Height = 25
      Caption = 'Reshape'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BB_PostRecClick
    end
    object BB_Filter: TBitBtn
      Left = 93
      Top = 53
      Width = 82
      Height = 25
      Caption = 'Filter'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = BB_FilterClick
    end
    object BB_Save: TBitBtn
      Left = 5
      Top = 83
      Width = 82
      Height = 25
      Caption = 'Save Parm'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BB_SaveClick
    end
    object Edit_ImgNo: TEdit
      Left = 6
      Top = 53
      Width = 66
      Height = 24
      TabOrder = 8
      Text = '500'
    end
    object UD_ImgNo: TUpDown
      Left = 72
      Top = 53
      Width = 16
      Height = 24
      Associate = Edit_ImgNo
      Max = 2000
      Position = 500
      TabOrder = 9
      OnClick = UD_ImgNoClick
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 42
    Top = 121
  end
end
