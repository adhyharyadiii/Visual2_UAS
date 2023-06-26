program Visual2_UAS;

uses
  Forms,
  Menu in 'Menu.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
