object Form1: TForm1
  Left = 325
  Top = 240
  Width = 922
  Height = 480
  Caption = ' Menu Utama'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 24
    Top = 24
    Width = 857
    Height = 393
    TabOrder = 0
    object lbl1: TLabel
      Left = 249
      Top = 56
      Width = 20
      Height = 77
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -64
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 240
      Top = 200
      Width = 91
      Height = 23
      Caption = 'Password :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 249
      Top = 64
      Width = 360
      Height = 77
      Caption = 'Menu Utama'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -64
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 240
      Top = 168
      Width = 92
      Height = 23
      Caption = 'Nama      :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edt1: TEdit
      Left = 344
      Top = 168
      Width = 329
      Height = 21
      TabOrder = 0
    end
    object edt2: TEdit
      Left = 344
      Top = 200
      Width = 329
      Height = 21
      TabOrder = 1
    end
    object btn1: TButton
      Left = 364
      Top = 264
      Width = 129
      Height = 49
      Caption = 'Masuk'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btn1Click
    end
  end
end
