program Visual2_UAS;

uses
  Forms,
  Menu in 'Menu.pas' {Form1},
  MenuLaporan in 'MenuLaporan.pas' {Form2},
  TabelSiswa in 'TabelSiswa.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
