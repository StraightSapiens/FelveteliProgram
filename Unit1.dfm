object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Felv'#233'teli program'
  ClientHeight = 807
  ClientWidth = 1365
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1365
    Height = 807
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 712
    object TabSheet1: TTabSheet
      Caption = 'Szerver'
      object serverEdit: TEdit
        Left = 3
        Top = 3
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object pwEdit: TEdit
        Left = 3
        Top = 30
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object loginButton: TButton
        Left = 130
        Top = 3
        Width = 75
        Height = 25
        Caption = 'Bel'#233'p'#233's'
        TabOrder = 2
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Partnerek'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object nameLabel: TLabel
        Left = 3
        Top = 511
        Width = 19
        Height = 13
        Caption = 'N'#233'v'
      end
      object postcodeLabel: TLabel
        Left = 155
        Top = 511
        Width = 62
        Height = 13
        Caption = 'Ir'#225'ny'#237't'#243'sz'#225'm'
      end
      object cityLabel: TLabel
        Left = 350
        Top = 511
        Width = 45
        Height = 13
        Caption = 'Telep'#252'l'#233's'
      end
      object streetLabel: TLabel
        Left = 528
        Top = 511
        Width = 22
        Height = 13
        Caption = 'Utca'
      end
      object doorLabel: TLabel
        Left = 683
        Top = 511
        Width = 42
        Height = 13
        Caption = 'H'#225'zsz'#225'm'
      end
      object specialLabel: TLabel
        Left = 858
        Top = 511
        Width = 56
        Height = 13
        Caption = 'Engedm'#233'ny'
      end
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1351
        Height = 502
        Align = alTop
        DataSource = DataModule2.DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object nameEdit: TEdit
        Left = 28
        Top = 508
        Width = 121
        Height = 21
        MaxLength = 90
        TabOrder = 1
      end
      object postcodeEdit: TEdit
        Left = 223
        Top = 508
        Width = 121
        Height = 21
        MaxLength = 10
        NumbersOnly = True
        TabOrder = 2
      end
      object cityEdit: TEdit
        Left = 401
        Top = 508
        Width = 121
        Height = 21
        MaxLength = 90
        TabOrder = 3
      end
      object streetEdit: TEdit
        Left = 556
        Top = 508
        Width = 121
        Height = 21
        MaxLength = 90
        TabOrder = 4
      end
      object doorEdit: TEdit
        Left = 731
        Top = 508
        Width = 121
        Height = 21
        MaxLength = 10
        TabOrder = 5
      end
      object specialEdit: TEdit
        Left = 920
        Top = 508
        Width = 121
        Height = 21
        MaxLength = 3
        NumbersOnly = True
        TabOrder = 6
      end
      object Button1: TButton
        Left = 1047
        Top = 506
        Width = 75
        Height = 25
        Caption = 'Keres'#233's'
        TabOrder = 7
        OnClick = Button1Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Term'#233'kek'
      ImageIndex = 2
      object taxLabel: TLabel
        Left = 372
        Top = 511
        Width = 44
        Height = 13
        Caption = #193'fa Kulcs'
      end
      object productLabel: TLabel
        Left = 179
        Top = 511
        Width = 60
        Height = 13
        Caption = 'Megnevez'#233's'
      end
      object idLabel: TLabel
        Left = 3
        Top = 511
        Width = 43
        Height = 13
        Caption = 'Cikksz'#225'm'
      end
      object priceLabel: TLabel
        Left = 549
        Top = 511
        Width = 81
        Height = 13
        Caption = 'Elad'#225'si Egys'#233'g'#225'r'
      end
      object taxEdit: TEdit
        Left = 422
        Top = 508
        Width = 121
        Height = 21
        MaxLength = 2
        NumbersOnly = True
        TabOrder = 0
      end
      object productEdit: TEdit
        Left = 245
        Top = 508
        Width = 121
        Height = 21
        MaxLength = 90
        TabOrder = 1
      end
      object idEdit: TEdit
        Left = 52
        Top = 508
        Width = 121
        Height = 21
        MaxLength = 90
        NumbersOnly = True
        TabOrder = 2
      end
      object priceEdit: TEdit
        Left = 636
        Top = 508
        Width = 121
        Height = 21
        MaxLength = 90
        NumbersOnly = True
        TabOrder = 3
      end
      object DBGrid2: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1351
        Height = 502
        Align = alTop
        DataSource = DataModule2.DataSource2
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Button2: TButton
        Left = 763
        Top = 506
        Width = 75
        Height = 25
        Caption = 'Keres'#233's'
        TabOrder = 5
        OnClick = Button2Click
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'T'#233'telek'
      ImageIndex = 3
      object partnerLabel: TLabel
        Left = 3
        Top = 511
        Width = 36
        Height = 13
        Caption = 'Partner'
      end
      object boughtproductLabel: TLabel
        Left = 172
        Top = 511
        Width = 35
        Height = 13
        Caption = 'Term'#233'k'
      end
      object quantityLabel: TLabel
        Left = 340
        Top = 511
        Width = 51
        Height = 13
        Caption = 'Mennyis'#233'g'
      end
      object boughtspecialLabel: TLabel
        Left = 702
        Top = 511
        Width = 56
        Height = 13
        Caption = 'Engedm'#233'ny'
      end
      object boughtpriceLabel: TLabel
        Left = 524
        Top = 511
        Width = 45
        Height = 13
        Caption = 'Egys'#233'g'#225'r'
      end
      object noteLabel: TLabel
        Left = 891
        Top = 511
        Width = 57
        Height = 13
        Caption = 'Megjegyz'#233's'
      end
      object newpartnerLabel: TLabel
        Left = 16
        Top = 544
        Width = 36
        Height = 13
        Caption = 'Partner'
      end
      object newproductLabel: TLabel
        Left = 16
        Top = 571
        Width = 79
        Height = 13
        Caption = 'Term'#233'k cikksz'#225'm'
      end
      object newquantityLabel: TLabel
        Left = 16
        Top = 598
        Width = 51
        Height = 13
        Caption = 'Mennyis'#233'g'
      end
      object newnoteLabel: TLabel
        Left = 16
        Top = 652
        Width = 57
        Height = 13
        Caption = 'Megjegyz'#233's'
      end
      object newspecialLabel: TLabel
        Left = 16
        Top = 625
        Width = 56
        Height = 13
        Caption = 'Engedm'#233'ny'
      end
      object livepartnerLabel: TLabel
        Left = 340
        Top = 544
        Width = 3
        Height = 13
      end
      object liveproductLabel: TLabel
        Left = 340
        Top = 598
        Width = 3
        Height = 13
      end
      object livepriceLabel: TLabel
        Left = 340
        Top = 625
        Width = 3
        Height = 13
      end
      object livenettoLabel: TLabel
        Left = 340
        Top = 652
        Width = 3
        Height = 13
      end
      object livespecialLabel: TLabel
        Left = 340
        Top = 712
        Width = 3
        Height = 13
      end
      object livelocationLabel: TLabel
        Left = 340
        Top = 571
        Width = 3
        Height = 13
      end
      object Label1: TLabel
        Left = 248
        Top = 544
        Width = 36
        Height = 13
        Caption = 'Partner'
      end
      object Label2: TLabel
        Left = 248
        Top = 571
        Width = 54
        Height = 13
        Caption = 'Partner c'#237'm'
      end
      object Label3: TLabel
        Left = 248
        Top = 598
        Width = 53
        Height = 13
        Caption = 'Term'#233'kn'#233'v'
      end
      object Label4: TLabel
        Left = 248
        Top = 625
        Width = 45
        Height = 13
        Caption = 'Egys'#233'g'#225'r'
      end
      object Label5: TLabel
        Left = 248
        Top = 652
        Width = 27
        Height = 13
        Caption = 'Nett'#243
      end
      object Label6: TLabel
        Left = 248
        Top = 681
        Width = 30
        Height = 13
        Caption = 'Brutt'#243
      end
      object livebruttoLabel: TLabel
        Left = 340
        Top = 681
        Width = 3
        Height = 13
      end
      object Engedmény: TLabel
        Left = 248
        Top = 712
        Width = 56
        Height = 13
        Caption = 'Engedm'#233'ny'
      end
      object DBGrid3: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1351
        Height = 502
        Align = alTop
        DataSource = DataModule2.DataSource3
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object partnerEdit: TEdit
        Left = 45
        Top = 508
        Width = 121
        Height = 21
        MaxLength = 90
        TabOrder = 1
      end
      object boughtproductEdit: TEdit
        Left = 213
        Top = 508
        Width = 121
        Height = 21
        MaxLength = 90
        TabOrder = 2
      end
      object quantityEdit: TEdit
        Left = 397
        Top = 508
        Width = 121
        Height = 21
        MaxLength = 90
        NumbersOnly = True
        TabOrder = 3
      end
      object boughtpriceEdit: TEdit
        Left = 575
        Top = 508
        Width = 121
        Height = 21
        MaxLength = 90
        NumbersOnly = True
        TabOrder = 4
      end
      object noteEdit: TEdit
        Left = 954
        Top = 508
        Width = 121
        Height = 21
        MaxLength = 256
        TabOrder = 5
      end
      object boughtspecialEdit: TEdit
        Left = 764
        Top = 508
        Width = 121
        Height = 21
        MaxLength = 3
        NumbersOnly = True
        TabOrder = 6
      end
      object Button3: TButton
        Left = 1081
        Top = 506
        Width = 75
        Height = 25
        Caption = 'Keres'#233's'
        TabOrder = 7
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 124
        Top = 676
        Width = 75
        Height = 25
        Caption = #218'j T'#233'tel'
        TabOrder = 8
      end
      object newpartnerEdit: TEdit
        Left = 104
        Top = 541
        Width = 121
        Height = 21
        MaxLength = 90
        TabOrder = 9
        OnChange = newpartnerEditChange
      end
      object newproductEdit: TEdit
        Left = 104
        Top = 568
        Width = 121
        Height = 21
        NumbersOnly = True
        TabOrder = 10
      end
      object newspecialEdit: TEdit
        Left = 104
        Top = 622
        Width = 121
        Height = 21
        MaxLength = 3
        NumbersOnly = True
        TabOrder = 11
      end
      object newquantityEdit: TEdit
        Left = 104
        Top = 595
        Width = 121
        Height = 21
        NumbersOnly = True
        TabOrder = 12
      end
      object newnoteEdit: TEdit
        Left = 104
        Top = 649
        Width = 121
        Height = 21
        TabOrder = 13
      end
    end
  end
end
