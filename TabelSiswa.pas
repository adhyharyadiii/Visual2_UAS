unit TabelSiswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet;

type
  TForm3 = class(TForm)
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    db1: TDBGrid;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl14: TLabel;
    lbl13: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    lbl22: TLabel;
    lbl23: TLabel;
    lbl24: TLabel;
    lbl25: TLabel;
    lbl26: TLabel;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edtdtp1: TDateTimePicker;
    cbb1: TComboBox;
    cbb2: TComboBox;
    cbb3: TComboBox;
    cbb4: TComboBox;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    lbl27: TLabel;
    lbl28: TLabel;
    edt9: TEdit;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    btn6: TButton;
    edt1: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure db1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  id: string;

implementation

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
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
  edt6.Enabled:= True;
  edt7.Enabled:= True;
  edt8.Enabled:= True;
  edtdtp1.Enabled:= True;
  cbb1.Enabled:= True;
  cbb2.Enabled:= True;
  cbb3.Enabled:= True;
  cbb4.Enabled:= True;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
    if (edt1.Text ='') or (edt2.Text ='') then
  begin
    ShowMessage('NIS DAN NISN TIDAK BOLEH KOSONG!');
  end else
    if (edt3.Text ='') or (edt4.Text ='') then
  begin
    ShowMessage('NAMA SISWA DAN NIK TIDAK BOLEH KOSONG!');
  end else
    if (edt5.Text ='') or (edt6.Text ='') then
  begin
    ShowMessage('TEMPAT LAHIR DAN ALAMAT TIDAK BOLEH KOSONG!');
  end else
    if (edt7.Text ='') or (edt8.Text ='')then
  begin
    ShowMessage('TELEPON DAN HP TIDAK BOLEH KOSONG!');
  end else
    if (cbb1.Text ='') or (cbb1.Text ='- Pilih Jenis Kelamin -') or (cbb2.Text ='') or (cbb2.Text ='- Pilih Tingkat Kelas -')then
  begin
    ShowMessage('JENIS KELAMIN DAN TINGKAT KELAS BELUM DIPILIH');
  end else
    if (cbb3.Text ='') or (cbb3.Text ='- Pilih Jurusan -') or (cbb4.Text ='') or (cbb4.Text ='- Pilih Wali Kelas -')then
  begin
    ShowMessage('JURUSAN DAN WALI KELAS BELUM DIPILIH');
  end else
  if (Form3.zqry1.Locate('nis',edt1.Text,[])) or (Form3.zqry1.Locate('nisn',edt2.Text,[])) then
  begin
    ShowMessage('NIS DAN NISN SUDAH ADA DIDALAM SISTEM ( TIDAK BOLEH SAMA )');
    edt1.SetFocus;
  end else
  if (Form3.zqry1.Locate('telp',edt7.Text,[])) or (Form3.zqry1.Locate('hp',edt8.Text,[])) then
  begin
    ShowMessage('TELEPON DAN HP SUDAH ADA DIDALAM SISTEM ( TIDAK BOLEH SAMA )');
    edt7.SetFocus;
  end else

  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into siswa values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+formatdatetime('yyyy-mm-dd',edtdtp1.Date)+'","'+cbb1.Text+'","'+cbb2.Text+'","'+cbb3.Text+'","'+cbb4.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+edt8.Text+'","'+edt9.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from siswa');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN!');
  posisiawal;
  end;
end;

procedure TForm3.db1CellClick(Column: TColumn);
begin
  id:= zqry1.Fields[0].AsString;
  edt1.Text:=zqry1.FieldList[1].AsString;
  edt2.Text:=zqry1.FieldList[2].AsString;
  edt3.Text:=zqry1.FieldList[3].AsString;
  edt4.Text:=zqry1.FieldList[4].AsString;
  edt5.Text:=zqry1.FieldList[5].AsString;
  edtdtp1.Date:=zqry1.FieldList[6].AsDateTime;
  cbb1.Text:=zqry1.FieldList[7].AsString;
  cbb2.Text:=zqry1.FieldList[8].AsString;
  cbb3.Text:=zqry1.FieldList[9].AsString;
  cbb4.Text:=zqry1.FieldList[10].AsString;
  edt6.Text:=zqry1.FieldList[11].AsString;
  edt7.Text:=zqry1.FieldList[12].AsString;
  edt8.Text:=zqry1.FieldList[13].AsString;

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
  edt6.Enabled:= True;
  edt7.Enabled:= True;
  edt8.Enabled:= True;
  edtdtp1.Enabled:= True;
  cbb1.Enabled:= True;
  cbb2.Enabled:= True;
  cbb3.Enabled:= True;
  cbb4.Enabled:= True;
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
  if (edt1.Text= '') or (edt2.Text ='') or (edt3.Text= '') or (edt4.Text ='') or (edt5.Text ='') or (edt6.Text ='') or (edt7.Text ='') or (edt8.Text ='') or (cbb1.Text ='') or (cbb2.Text ='') or (cbb3.Text ='') or (cbb4.Text ='') or (cbb1.Text ='- Pilih Jenis Kelamin -') or (cbb2.Text ='- Pilih Tingkat Kelas -') or (cbb3.Text ='- Pilih Jurusan -') or (cbb4.Text ='- Pilih Wali Kelas -') then
    begin
    ShowMessage('INPUTAN WAJIB DIISI!');
  end else

 begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('update siswa set nis ="'+edt1.Text+'", nisn ="'+edt2.Text+'", nama_siswa ="'+edt3.Text+'", nik ="'+edt4.Text+'", tempat_lahir ="'+edt5.Text+'", tanggal_lahir ="'+formatdatetime('yyyy-mm-dd',edtdtp1.Date)+'", jenis_kelamin ="'+cbb1.Text+'", tingkat_kelas ="'+cbb2.Text+'", jurusan ="'+cbb3.Text+'", wali_kelas ="'+cbb4.Text+'", alamat ="'+edt6.Text+'", telp ="'+edt7.Text+'", hp ="'+edt8.Text+'" where id= "'+id+'"');
  zqry1. ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from siswa');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIUPDATE!');
  posisiawal;
 end;

end;

procedure TForm3.btn4Click(Sender: TObject);
begin
 if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('delete from siswa where id="'+id+'"');
  zqry1. ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from siswa');
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

procedure TForm3.btn5Click(Sender: TObject);
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
  edt6.Enabled:= False;
  edt7.Enabled:= False;
  edt8.Enabled:= False;
  edtdtp1.Enabled:= False;
  cbb1.Enabled:= False;
  cbb2.Enabled:= False;
  cbb3.Enabled:= False;
  cbb4.Enabled:= False;
end;

procedure TForm3.posisiawal;
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
  edt6.Enabled:= False;
  edt7.Enabled:= False;
  edt8.Enabled:= False;
  edtdtp1.Enabled:= False;
  cbb1.Enabled:= False;
  cbb2.Enabled:= False;
  cbb3.Enabled:= False;
  cbb4.Enabled:= False;
end;

procedure TForm3.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
  edt6.Clear;
  edt7.Clear;
  edt8.Clear;
  cbb1.Text := '- Pilih Jenis Kelamin -';
  cbb2.Text := '- Pilih Tingkat Kelas -';
  cbb3.Text := '- Pilih Jurusan -';
  cbb4.Text := '- Pilih Wali Kelas -';
end;

procedure TForm3.btn6Click(Sender: TObject);
begin
  frxReport1.ShowReport()
end;

end.
