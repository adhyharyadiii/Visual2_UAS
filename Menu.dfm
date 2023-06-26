object Form1: TForm1
  Left = 217
  Top = 156
  Width = 922
  Height = 480
  Caption = 'Menu'
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
      Left = 223
      Top = 56
      Width = 411
      Height = 77
      Caption = 'Laporan Siswa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -64
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 192
      Top = 168
      Width = 139
      Height = 23
      Caption = 'Nama Lengkap :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 280
      Top = 200
      Width = 51
      Height = 23
      Caption = 'NPM :'
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
      Height = 25
      TabOrder = 0
    end
    object edt2: TEdit
      Left = 344
      Top = 200
      Width = 329
      Height = 25
      TabOrder = 1
    end
    object btn1: TButton
      Left = 292
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
    object btn2: TButton
      Left = 436
      Top = 264
      Width = 129
      Height = 49
      Caption = 'Keluar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btn2Click
    end
  end
end
