object Form2: TForm2
  Left = 231
  Top = 154
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
    Caption = 'Keluar'
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
        OnClick = TabelHubunganClick
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
      object TabelRiwayatPoin: TMenuItem
        Caption = 'Tabel Riwayat Poin'
        OnClick = TabelRiwayatPoinClick
      end
    end
    object User1: TMenuItem
      Caption = 'User'
      object TabelUser: TMenuItem
        Caption = 'Tabel User'
        OnClick = TabelUserClick
      end
    end
    object TabelUserJoin1: TMenuItem
      Caption = 'Join'
      object InnerJoin: TMenuItem
        Caption = 'Inner Join'
        OnClick = InnerJoinClick
      end
      object RightJoin: TMenuItem
        Caption = 'Right Join'
        OnClick = RightJoinClick
      end
      object LeftJoin: TMenuItem
        Caption = 'Left Join'
        OnClick = LeftJoinClick
      end
      object CrossJoin: TMenuItem
        Caption = 'Cross Join'
        OnClick = CrossJoinClick
      end
    end
    object CrossJoinLike1: TMenuItem
      Caption = 'Like'
      object QueryLike: TMenuItem
        Caption = 'Query Like'
        OnClick = QueryLikeClick
      end
    end
  end
end
