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
    abelHubungan1: TMenuItem;
    abelKelas1: TMenuItem;
    abelWaliKelas1: TMenuItem;
    abelPoin1: TMenuItem;
    abelRiwayatPoin1: TMenuItem;
    abelUser1: TMenuItem;
    lbl1: TLabel;
    btn2: TButton;
    procedure btn2Click(Sender: TObject);
    procedure TabelSiswaClick(Sender: TObject);
    procedure TabelOrangTuaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  TabelSiswa, TabelOrangTua;

{$R *.dfm}

procedure TForm2.btn2Click(Sender: TObject);
begin
  close;
end;

procedure TForm2.TabelSiswaClick(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm2.TabelOrangTuaClick(Sender: TObject);
begin
  Form4.Show;
end;

end.
