unit TabelOrangTua;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

type
  TForm4 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lblJe: TLabel;
    lbl9: TLabel;
    lbl13: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    db1: TDBGrid;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    cbb1: TComboBox;
    cbb2: TComboBox;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    edt7: TEdit;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    btn6: TButton;
    lbl22: TLabel;
    edt6: TEdit;
    procedure db1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
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
  Form4: TForm4;
  id: string;

implementation

{$R *.dfm}

procedure TForm4.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
  edt6.Clear;
  cbb1.Text := '- Pilih Agama -';
  cbb2.Text := '- Pilih Jenis Kelamin -';
end;

procedure TForm4.db1CellClick(Column: TColumn);
begin
  id:= zqry1.Fields[0].AsString;
  edt1.Text:=zqry1.FieldList[1].AsString;
  edt2.Text:=zqry1.FieldList[2].AsString;
  edt3.Text:=zqry1.FieldList[3].AsString;
  edt4.Text:=zqry1.FieldList[4].AsString;
  edt5.Text:=zqry1.FieldList[5].AsString;
  edt6.Text:=zqry1.FieldList[6].AsString;
  cbb1.Text:=zqry1.FieldList[7].AsString;
  cbb2.Text:=zqry1.FieldList[8].AsString;


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
  cbb1.Enabled:= True;
  cbb2.Enabled:= True;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm4.posisiawal;
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
  cbb1.Enabled:= False;
  cbb2.Enabled:= False;
end;

procedure TForm4.btn1Click(Sender: TObject);
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
  cbb1.Enabled:= True;
  cbb2.Enabled:= True;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
    if (edt1.Text ='') or (edt2.Text ='') then
  begin
    ShowMessage('NIK DAN NAMA TIDAK BOLEH KOSONG!');
  end else
    if (edt3.Text ='') or (edt4.Text ='') then
  begin
    ShowMessage('PENDIDIKAN DAN PEKERJAAN TIDAK BOLEH KOSONG!');
  end else
    if (edt5.Text ='') or (edt6.Text ='') then
  begin
    ShowMessage('TELEPON DAN ALAMAT TIDAK BOLEH KOSONG!');
  end else
    if (cbb1.Text ='') or (cbb1.Text ='- Pilih Agama -') or (cbb2.Text ='') or (cbb2.Text ='- Pilih Jenis Kelamin -')then
  begin
    ShowMessage('AGAMA DAN JENIS KELAMIN BELUM DIPILIH');
  end else
  if (Form4.zqry1.Locate('nik',edt1.Text,[])) or (Form4.zqry1.Locate('telp',edt5.Text,[]))then
  begin
    ShowMessage('NIK DAN TELEPON SUDAH ADA DIDALAM SISTEM ( TIDAK BOLEH SAMA )');
    edt1.SetFocus;
  end else

  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into orang_tua values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+cbb1.Text+'","'+cbb2.Text+'","'+edt7.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from orang_tua');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN!');
  posisiawal;
  end;
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
  if (edt1.Text= '')or (edt2.Text ='')or(edt3.Text= '')or (edt4.Text ='')or (edt5.Text ='') or (edt6.Text ='') or (cbb1.Text ='') or (cbb2.Text ='') or (cbb1.Text ='- Pilih Agama -') or (cbb2.Text ='- Pilih Jenis Kelamin -') then
    begin
    ShowMessage('INPUTAN WAJIB DIISI!');
  end else
  if (edt2.Text = zqry1.Fields[2].AsString) or (edt5.Text = zqry1.Fields[5].AsString) then
    begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    posisiawal;
  end else

  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('update orang_tua set nama ="'+edt2.Text+'", telp ="'+edt5.Text+'" where id= "'+id+'"');
  zqry1. ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from orang_tua');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIUPDATE!');
  posisiawal;
  end;

end;

procedure TForm4.btn4Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('delete from orang_tua where id="'+id+'"');
  zqry1. ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from orang_tua');
  zqry1.Open;
end;

procedure TForm4.btn5Click(Sender: TObject);
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
  cbb1.Enabled:= False;
  cbb2.Enabled:= False;
end;

end.
