unit Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    lbl4: TLabel;
    lbl2: TLabel;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  MenuLaporan;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
   if (edt1.Text = '') then
  begin
    ShowMessage('Anda Belum Mengisi Nama Lengkap!');
  end else
  if (edt2.Text = '') then
  begin
    ShowMessage('Anda Belum Mengisi Password!');
  end else
  Form2.Show;
  edt1.Text := '';
  edt2.Text := '';
end;

end.
