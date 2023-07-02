unit TabelPoin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids, frxClass,
  frxDBSet;

type
  TForm7 = class(TForm)
    lbl1: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl13: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    db1: TDBGrid;
    edt1: TEdit;
    cbb1: TComboBox;
    cbb2: TComboBox;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    lbl2: TLabel;
    lbl5: TLabel;
    edt2: TEdit;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure FormShow(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure db1CellClick(Column: TColumn);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  id: string;

implementation

{$R *.dfm}

procedure TForm7.bersih;
begin
  edt1.Clear;
  cbb1.Text := '- Pilih Bobot -';
  cbb2.Text := '- Pilih Jenis -';
end;

procedure TForm7.FormShow(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm7.posisiawal;
begin
  bersih;
  btn1.Enabled:= True;
  btn2.Enabled:= False;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= False;
  edt1.Enabled:= False;
  cbb1.Enabled:= False;
  cbb2.Enabled:= False;
end;

procedure TForm7.db1CellClick(Column: TColumn);
begin
  id:= zqry1.Fields[0].AsString;
  edt1.Text:=zqry1.FieldList[1].AsString;
  cbb1.Text:=zqry1.FieldList[2].AsString;
  cbb2.Text:=zqry1.FieldList[3].AsString;
  edt2.Text:=zqry1.FieldList[4].AsString;

  btn1.Enabled:= False;
  btn2.Enabled:= False;
  btn3.Enabled:= True;
  btn4.Enabled:= True;
  btn5.Enabled:= True;
  edt1.Enabled:= True;
  cbb1.Enabled:= True;
  cbb2.Enabled:= True;
end;

procedure TForm7.btn1Click(Sender: TObject);
begin
  bersih;
  btn1.Enabled:= False;
  btn2.Enabled:= True;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= True;
  edt1.Enabled:= True;
  cbb1.Enabled:= True;
  cbb2.Enabled:= True;
end;

procedure TForm7.btn2Click(Sender: TObject);
begin
  if (edt1.Text ='') then
  begin
    ShowMessage('NAMA TIDAK BOLEH KOSONG!');
  end else
  if (cbb1.Text ='') or (cbb1.Text ='- Pilih Bobot -') or (cbb2.Text ='') or (cbb2.Text ='- Pilih Jenis -')then
  begin
    ShowMessage('BOBOT DAN JENIS BELUM DIPILIH');
  end else
  if (Form7.zqry1.Locate('nama',edt1.Text,[])) then
  begin
    ShowMessage('NAMA SUDAH ADA DIDALAM SISTEM ( TIDAK BOLEH SAMA )');
    edt1.SetFocus;
  end else
  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into poin values(null,"'+edt1.Text+'","'+cbb1.Text+'","'+cbb2.Text+'","'+edt2.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from poin');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN!');
  posisiawal;
  end;
end;

procedure TForm7.btn3Click(Sender: TObject);
begin
  if (edt1.Text= '') or (cbb1.Text ='') or (cbb2.Text ='') or (cbb1.Text ='- Pilih Bobot -') or (cbb2.Text ='- Pilih Jenis -') then
    begin
    ShowMessage('INPUTAN WAJIB DIISI!');
  end else
  if (edt1.Text = zqry1.Fields[1].AsString) or (cbb2.Text = zqry1.Fields[3].AsString) then
    begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiawal;
  end else

  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('update poin set nama ="'+edt1.Text+'", jenis ="'+cbb2.Text+'" where id= "'+id+'"');
  zqry1. ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from poin');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIUPDATE!');
  posisiawal;
  end;
end;

procedure TForm7.btn4Click(Sender: TObject);
begin
  if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('delete from poin where id="'+id+'"');
  zqry1. ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from poin');
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

procedure TForm7.btn5Click(Sender: TObject);
begin
  bersih;
  btn1.Enabled:= True;
  btn2.Enabled:= False;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= False;
  edt1.Enabled:= False;
  cbb1.Enabled:= False;
  cbb2.Enabled:= False;
end;

procedure TForm7.btn6Click(Sender: TObject);
begin
  frxReport1.ShowReport()
end;

end.
