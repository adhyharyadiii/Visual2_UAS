unit TabelUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

type
  TForm8 = class(TForm)
    lbl1: TLabel;
    lbl3: TLabel;
    lbl13: TLabel;
    lbl16: TLabel;
    lbl2: TLabel;
    lbl5: TLabel;
    db1: TDBGrid;
    edt1: TEdit;
    cbb1: TComboBox;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    edt2: TEdit;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    lbl6: TLabel;
    lbl7: TLabel;
    edt3: TEdit;
    procedure FormShow(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure db1CellClick(Column: TColumn);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  id: string;

implementation

uses
  Menu;

{$R *.dfm}

procedure TForm8.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  cbb1.Text := '- Pilih Level -';
end;

procedure TForm8.FormShow(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm8.posisiawal;
begin
  bersih;
  btn1.Enabled:= True;
  btn2.Enabled:= False;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= False;
  edt1.Enabled:= False;
  edt2.Enabled:= False;
  cbb1.Enabled:= False;
end;

procedure TForm8.db1CellClick(Column: TColumn);
begin
  id:= zqry1.Fields[0].AsString;
  edt1.Text:=zqry1.FieldList[1].AsString;
  edt2.Text:=zqry1.FieldList[2].AsString;
  cbb1.Text:=zqry1.FieldList[3].AsString;
  edt3.Text:=zqry1.FieldList[4].AsString;

  btn1.Enabled:= False;
  btn2.Enabled:= False;
  btn3.Enabled:= True;
  btn4.Enabled:= True;
  btn5.Enabled:= True;
  edt1.Enabled:= True;
  edt2.Enabled:= True;
  cbb1.Enabled:= True;
end;

procedure TForm8.btn1Click(Sender: TObject);
begin
  bersih;
  btn1.Enabled:= False;
  btn2.Enabled:= True;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= True;
  edt1.Enabled:= True;
  edt2.Enabled:= True;
  cbb1.Enabled:= True;

end;

procedure TForm8.btn2Click(Sender: TObject);
begin
  if (edt1.Text ='') or (edt2.Text ='')then
  begin
    ShowMessage('NAMA DAN PASSWORD TIDAK BOLEH KOSONG!');
  end else
  if (cbb1.Text ='') or (cbb1.Text ='- Pilih Level -') then
  begin
    ShowMessage('LEVEL BELUM DIPILIH');
  end else
  if (Form8.zqry1.Locate('siswa',edt1.Text,[])) then
  begin
    ShowMessage('NAMA SUDAH ADA DIDALAM SISTEM ( TIDAK BOLEH SAMA )');
    edt1.SetFocus;
  end else
  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into user values(null,"'+edt1.Text+'","'+edt2.Text+'","'+cbb1.Text+'","'+edt3.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from user');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN!');
  posisiawal;
  end;
end;

procedure TForm8.btn3Click(Sender: TObject);
begin
  if (edt1.Text= '') or (edt2.Text= '') or (cbb1.Text ='') or (cbb1.Text ='- Pilih Level -') then
    begin
    ShowMessage('INPUTAN WAJIB DIISI!');
  end else
  if (edt1.Text = zqry1.Fields[1].AsString) or (edt2.Text = zqry1.Fields[2].AsString) then
    begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiawal;
  end else

  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('update user set siswa ="'+edt1.Text+'", password ="'+edt2.Text+'" where id= "'+id+'"');
  zqry1. ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from user');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIUPDATE!');
  posisiawal;
  end;
end;

procedure TForm8.btn4Click(Sender: TObject);
begin
  if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('delete from user where id="'+id+'"');
  zqry1. ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from user');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS');
  posisiawal;
  end
  else

 begin
  ShowMessage('DATA BATAL DIHAPUS');
  posisiawal;
  end;
end;

procedure TForm8.btn5Click(Sender: TObject);
begin
  bersih;
  btn1.Enabled:= True;
  btn2.Enabled:= False;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= False;
  edt1.Enabled:= False;
  edt2.Enabled:= False;
  cbb1.Enabled:= False;
end;

end.
