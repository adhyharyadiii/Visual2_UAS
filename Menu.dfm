object Form1: TForm1
  Left = 156
  Top = 161
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
      Left = 257
      Top = 80
      Width = 20
      Height = 77
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -64
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 248
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
      Top = 160
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
    object lbl3: TLabel
      Left = 240
      Top = 192
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
    object lbl5: TLabel
      Left = 240
      Top = 224
      Width = 92
      Height = 23
      Caption = 'Sebagai   :'
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
      OnChange = edt1Change
    end
    object edt2: TEdit
      Left = 344
      Top = 200
      Width = 329
      Height = 21
      TabOrder = 1
    end
    object btn1: TButton
      Left = 292
      Top = 296
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
    object cbb1: TComboBox
      Left = 344
      Top = 232
      Width = 329
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      Items.Strings = (
        'Admin'
        'Pengguna')
    end
    object btn2: TButton
      Left = 432
      Top = 296
      Width = 121
      Height = 49
      Caption = 'Daftar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btn2Click
    end
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3307
    Database = 'laporan_siswa'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Program Files (x86)\Borland\Zeos703\libmysql.dll'
    Left = 32
    Top = 32
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select  * from user')
    Params = <>
    Left = 32
    Top = 80
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 32
    Top = 128
  end
end
