program Visual2_UAS;

uses
  Forms,
  Menu in 'Menu.pas' {Form1},
  MenuLaporan in 'MenuLaporan.pas' {Form2},
  TabelSiswa in 'TabelSiswa.pas' {Form3},
  TabelOrangTua in 'TabelOrangTua.pas' {Form4},
  TabelKelas in 'TabelKelas.pas' {Form5},
  TabelWaliKelas in 'TabelWaliKelas.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
