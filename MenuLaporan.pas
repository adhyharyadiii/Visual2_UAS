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
    TabelUserJoin1: TMenuItem;
    InnerJoin: TMenuItem;
    RightJoin: TMenuItem;
    LeftJoin: TMenuItem;
    CrossJoin: TMenuItem;
    CrossJoinLike1: TMenuItem;
    QueryLike: TMenuItem;
    procedure TabelSiswaClick(Sender: TObject);
    procedure TabelOrangTuaClick(Sender: TObject);
    procedure TabelKelasClick(Sender: TObject);
    procedure TabelWaliKelasClick(Sender: TObject);
    procedure TabelPoinClick(Sender: TObject);
    procedure TabelUserClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure TabelHubunganClick(Sender: TObject);
    procedure TabelRiwayatPoinClick(Sender: TObject);
    procedure InnerJoinClick(Sender: TObject);
    procedure LeftJoinClick(Sender: TObject);
    procedure RightJoinClick(Sender: TObject);
    procedure CrossJoinClick(Sender: TObject);
    procedure QueryLikeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  TabelSiswa, TabelOrangTua, TabelKelas, TabelWaliKelas, TabelPoin, TabelUser, TabelHubungan, TabelRiwayatPoin, InnerJoin, RightJoin, LeftJoin, CrossJoin, QueryLike;

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

procedure TForm2.InnerJoinClick(Sender: TObject);
begin
  Form11.Show;
end;

procedure TForm2.LeftJoinClick(Sender: TObject);
begin
  Form12.Show;
end;

procedure TForm2.RightJoinClick(Sender: TObject);
begin
  Form13.Show;
end;

procedure TForm2.CrossJoinClick(Sender: TObject);
begin
  Form14.Show;
end;

procedure TForm2.QueryLikeClick(Sender: TObject);
begin
  Form15.Show;
end;

end.
