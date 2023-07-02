object Form2: TForm2
  Left = 314
  Top = 239
  Width = 928
  Height = 480
  Caption = 'Menu Laporan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 254
    Top = 112
    Width = 404
    Height = 77
    Caption = 'Menu Laporan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -64
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btn2: TButton
    Left = 392
    Top = 200
    Width = 129
    Height = 49
    Caption = 'Kembali'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btn2Click
  end
  object mm1: TMainMenu
    Left = 8
    Top = 8
    object Siswa1: TMenuItem
      Caption = 'Siswa'
      object TabelSiswa: TMenuItem
        Caption = 'Tabel Siswa'
        OnClick = TabelSiswaClick
      end
      object TabelOrangTua: TMenuItem
        Caption = 'Tabel Orang Tua'
        OnClick = TabelOrangTuaClick
      end
      object TabelHubungan: TMenuItem
        Caption = 'Tabel Hubungan'
      end
    end
    object Kelas1: TMenuItem
      Caption = 'Kelas'
      object TabelKelas: TMenuItem
        Caption = 'Tabel Kelas'
        OnClick = TabelKelasClick
      end
      object TabelWaliKelas: TMenuItem
        Caption = 'Tabel Wali Kelas'
        OnClick = TabelWaliKelasClick
      end
    end
    object Poin1: TMenuItem
      Caption = 'Poin'
      object TabelPoin: TMenuItem
        Caption = 'Tabel Poin'
        OnClick = TabelPoinClick
      end
      object abelRiwayatPoin1: TMenuItem
        Caption = 'Tabel Riwayat Poin'
      end
    end
    object User1: TMenuItem
      Caption = 'User'
      object abelUser1: TMenuItem
        Caption = 'Tabel User'
      end
    end
  end
end
