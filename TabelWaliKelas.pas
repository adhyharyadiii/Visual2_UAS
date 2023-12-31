unit TabelWaliKelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, frxClass, frxDBSet;

type
  TForm6 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl9: TLabel;
    lbl13: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl22: TLabel;
    db1: TDBGrid;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    cbb1: TComboBox;
    edt3: TEdit;
    edt4: TEdit;
    cbb2: TComboBox;
    edt5: TEdit;
    edt6: TEdit;
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
  Form6: TForm6;
  id: string;

implementation

{$R *.dfm}

procedure TForm6.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
  cbb1.Text := '- Pilih Jenis Kelamin -';
  cbb2.Text := '- Pilih Mata Pelajaran -';
end;

procedure TForm6.FormShow(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm6.posisiawal;
begin
  bersih;
  btn1.Enabled:= True;
  btn2.Enabled:= False;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= False;
  edt1.Enabled:= False;
  edt2.Enabled:= False;
  edt3.Enabled:= False;
  edt4.Enabled:= False;
  edt5.Enabled:= False;
  cbb1.Enabled:= False;
  cbb2.Enabled:= False;
end;

procedure TForm6.db1CellClick(Column: TColumn);
begin
  id:= zqry1.Fields[0].AsString;
  edt1.Text:=zqry1.FieldList[1].AsString;
  edt2.Text:=zqry1.FieldList[2].AsString;
  cbb1.Text:=zqry1.FieldList[3].AsString;
  edt3.Text:=zqry1.FieldList[4].AsString;
  edt4.Text:=zqry1.FieldList[5].AsString;
  cbb2.Text:=zqry1.FieldList[6].AsString;
  edt5.Text:=zqry1.FieldList[7].AsString;

  btn1.Enabled:= False;
  btn2.Enabled:= False;
  btn3.Enabled:= True;
  btn4.Enabled:= True;
  btn5.Enabled:= True;
  btn5.Enabled:= True;
  edt1.Enabled:= True;
  edt2.Enabled:= True;
  edt3.Enabled:= True;
  edt4.Enabled:= True;
  edt5.Enabled:= True;
  cbb1.Enabled:= True;
  cbb2.Enabled:= True;
end;

procedure TForm6.btn1Click(Sender: TObject);
begin
  bersih;
  btn1.Enabled:= False;
  btn2.Enabled:= True;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= True;
  edt1.Enabled:= True;
  edt2.Enabled:= True;
  edt3.Enabled:= True;
  edt4.Enabled:= True;
  edt5.Enabled:= True;
  cbb1.Enabled:= True;
  cbb2.Enabled:= True;
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
  if (edt1.Text ='') or (edt2.Text ='') then
  begin
    ShowMessage('NIP DAN NAMA TIDAK BOLEH KOSONG!');
  end else
    if (edt3.Text ='') or (edt4.Text ='') then
  begin
    ShowMessage('ALAMAT DAN TELEPON TIDAK BOLEH KOSONG!');
  end else
    if (edt5.Text ='') then
  begin
    ShowMessage('PENDIDIKAN TIDAK BOLEH KOSONG!');
  end else
    if (cbb1.Text ='') or (cbb1.Text ='- Pilih Jenis Kelamin -') or (cbb2.Text ='') or (cbb2.Text ='- Pilih Mata Pelajaran -')then
  begin
    ShowMessage('JENIS KELAMIN DAN TINGKAT KELAS BELUM DIPILIH');
  end else
  if (Form6.zqry1.Locate('nip',edt1.Text,[])) or (Form6.zqry1.Locate('telp',edt4.Text,[])) then
  begin
    ShowMessage('NIP DAN TELEPON SUDAH ADA DIDALAM SISTEM ( TIDAK BOLEH SAMA )');
    edt1.SetFocus;
  end else

  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into wali_kelas values(null,"'+edt1.Text+'","'+edt2.Text+'","'+cbb1.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+cbb2.Text+'","'+edt5.Text+'","'+edt6.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from wali_kelas');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN!');
  posisiawal;
  end;
end;

procedure TForm6.btn3Click(Sender: TObject);
begin
  if (edt1.Text= '')or (edt2.Text ='')or(edt3.Text= '')or (edt4.Text ='')or (edt5.Text ='') or (cbb1.Text ='') or (cbb2.Text ='') or (cbb1.Text ='- Pilih Jenis Kelamin -') or (cbb2.Text ='- Pilih Mata Pelajaran -') then
    begin
    ShowMessage('INPUTAN WAJIB DIISI!');
  end else

  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('update wali_kelas set nip ="'+edt1.Text+'", nama ="'+edt2.Text+'", jk ="'+cbb1.Text+'", alamat ="'+edt3.Text+'", telp ="'+edt4.Text+'", matpel ="'+cbb2.Text+'", pendidikan ="'+edt5.Text+'" where id= "'+id+'"');
  zqry1. ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from wali_kelas');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIUPDATE!');
  posisiawal;
  end;
end;

procedure TForm6.btn4Click(Sender: TObject);
begin
  if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('delete from wali_kelas where id="'+id+'"');
  zqry1. ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from wali_kelas');
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

procedure TForm6.btn5Click(Sender: TObject);
begin
  bersih;
  btn1.Enabled:= True;
  btn2.Enabled:= False;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= False;
  edt1.Enabled:= False;
  edt2.Enabled:= False;
  edt3.Enabled:= False;
  edt4.Enabled:= False;
  edt5.Enabled:= False;
  cbb1.Enabled:= False;
  cbb2.Enabled:= False;
end;

procedure TForm6.btn6Click(Sender: TObject);
begin
  frxReport1.ShowReport()
end;

end.
