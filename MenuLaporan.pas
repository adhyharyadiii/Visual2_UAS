unit MenuLaporan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TForm2 = class(TForm)
    mm1: TMainMenu;
    Siswa1: TMenuItem;
    Kelas1: TMenuItem;
    Poin1: TMenuItem;
    User1: TMenuItem;
    TabelSiswa: TMenuItem;
    TabelOrangTua: TMenuItem;
    TabelHubungan: TMenuItem;
    TabelKelas: TMenuItem;
    TabelWaliKelas: TMenuItem;
    TabelPoin: TMenuItem;
    TabelRiwayatPoin: TMenuItem;
    TabelUser: TMenuItem;
    lbl1: TLabel;
    btn2: TButton;
    procedure TabelSiswaClick(Sender: TObject);
    procedure TabelOrangTuaClick(Sender: TObject);
    procedure TabelKelasClick(Sender: TObject);
    procedure TabelWaliKelasClick(Sender: TObject);
    procedure TabelPoinClick(Sender: TObject);
    procedure TabelUserClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure TabelHubunganClick(Sender: TObject);
    procedure TabelRiwayatPoinClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  TabelSiswa, TabelOrangTua, TabelKelas, TabelWaliKelas, TabelPoin, TabelUser,TabelHubungan, TabelRiwayatPoin;

{$R *.dfm}

procedure TForm2.TabelSiswaClick(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm2.TabelOrangTuaClick(Sender: TObject);
begin
  Form4.Show;
end;

procedure TForm2.TabelKelasClick(Sender: TObject);
begin
  Form5.Show;
end;

procedure TForm2.TabelWaliKelasClick(Sender: TObject);
begin
  Form6.Show;
end;

procedure TForm2.TabelPoinClick(Sender: TObject);
begin
  Form7.Show
end;

procedure TForm2.TabelUserClick(Sender: TObject);
begin
  Form8.Show;
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
  close;
end;

procedure TForm2.TabelHubunganClick(Sender: TObject);
begin
  Form9.Show;
end;

procedure TForm2.TabelRiwayatPoinClick(Sender: TObject);
begin
  Form10.Show;
end;

end.
