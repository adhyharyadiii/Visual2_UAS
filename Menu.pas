unit Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, StdCtrls, ExtCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    lbl4: TLabel;
    lbl2: TLabel;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    cbb1: TComboBox;
    lbl3: TLabel;
    lbl5: TLabel;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure edt1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  MenuLaporan, TabelUser;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  zqry1.Open;
   if zqry1.RecordCount = 0 then
    begin
      ShowMessage('NAMA TIDAK DITEMUKAN!');
      edt1.Text:='';
      edt1.SetFocus;
    end else
   if zqry1.FieldByName('password').AsString <> edt2.Text then
    begin
      ShowMessage('PASSWORD SALAH!');
      edt2.Text:='';
      edt2.SetFocus;
    end else
   if zqry1.FieldByName('level').AsString <> cbb1.Text then
    begin
      ShowMessage('LEVEL SALAH!');
      cbb1.Text:='';
      cbb1.SetFocus;
    end else
  begin
    Form2.Show;
    edt1.Text := '';
    edt2.Text := '';
    cbb1.Text := '';
  end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  Form8.Show;
end;

procedure TForm1.edt1Change(Sender: TObject);
begin
  with zqry1 do
    begin
      close;
      sql.Clear;
      sql.Text:='SELECT * FROM user where siswa ="'+edt1.Text+'"';
      open;
    end;
end;

end.
