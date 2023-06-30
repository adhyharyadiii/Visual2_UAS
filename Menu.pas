unit Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    lbl4: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
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
    ShowMessage('Anda Belum Mengisi NPM!');
  end else
  Form2.Show;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  Close;
end;

end.
