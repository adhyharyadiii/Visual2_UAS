object Form12: TForm12
  Left = 369
  Top = 151
  Width = 585
  Height = 416
  Caption = 'Left Join'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 44
    Top = 8
    Width = 95
    Height = 19
    Caption = ' Pilih Tabel  :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 333
    Top = 128
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 308
    Top = 8
    Width = 96
    Height = 19
    Caption = 'Siswa          :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 44
    Top = 80
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 308
    Top = 88
    Width = 97
    Height = 19
    Caption = 'Wali Kelas    :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 308
    Top = 128
    Width = 97
    Height = 19
    Caption = 'Kelas           :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 308
    Top = 168
    Width = 97
    Height = 19
    Caption = 'Poin            :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 308
    Top = 48
    Width = 97
    Height = 19
    Caption = 'Orang Tua   :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object cbb1: TComboBox
    Left = 148
    Top = 8
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    OnChange = cbb1Change
    Items.Strings = (
      'Hubungan'
      'Riwayat Poin')
  end
  object db1: TDBGrid
    Left = 8
    Top = 208
    Width = 553
    Height = 161
    DataSource = ds1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object cbb4: TComboBox
    Left = 412
    Top = 88
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      'nip'
      'nama'
      'jk'
      'alamat'
      'telp'
      'matpel'
      'pendidikan'
      'status')
  end
  object cbb5: TComboBox
    Left = 412
    Top = 128
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      'nama'
      'jenis'
      'jurusan')
  end
  object cbb6: TComboBox
    Left = 412
    Top = 168
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Items.Strings = (
      'nama'
      'bobot'
      'jenis'
      'status')
  end
  object cbb2: TComboBox
    Left = 412
    Top = 8
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'nis'
      'nisn'
      'nama_siswa'
      'nik'
      'tempat_lahir'
      'tanggal_lahir'
      'jenis_kelamin'
      'tingkat_kelas'
      'jurusan'
      'wali_kelas'
      'alamat'
      'telp'
      'hp'
      'status')
  end
  object cbb3: TComboBox
    Left = 416
    Top = 48
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'nik'
      'nama'
      'pendidikan'
      'telp'
      'alamat'
      'agama'
      'jk'
      'status')
  end
  object btn1: TButton
    Left = 104
    Top = 72
    Width = 97
    Height = 49
    Caption = 'Join'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = btn1Click
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
    Left = 8
    Top = 8
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'show tables')
    Params = <>
    Left = 8
    Top = 64
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 8
    Top = 120
  end
end
