unit TabelRiwayatPoin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids, ComCtrls;

type
  TForm10 = class(TForm)
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
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    cbb1: TComboBox;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    edt6: TEdit;
    btn6: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    edtdtp1: TDateTimePicker;
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
  Form10: TForm10;
  id: string;

implementation

{$R *.dfm}

procedure TForm10.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
  cbb1.Text := '- Pilih Semester -';
end;

procedure TForm10.FormShow(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm10.posisiawal;
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
  edtdtp1.Enabled:= False
end;

procedure TForm10.db1CellClick(Column: TColumn);
begin
  id:= zqry1.Fields[0].AsString;
  edt1.Text:=zqry1.FieldList[1].AsString;
  edt2.Text:=zqry1.FieldList[2].AsString;
  edt3.Text:=zqry1.FieldList[3].AsString;
  edt4.Text:=zqry1.FieldList[4].AsString;
  edt5.Text:=zqry1.FieldList[5].AsString;
  edtdtp1.Date:=zqry1.FieldList[6].AsDateTime;
  cbb1.Text:=zqry1.FieldList[7].AsString;
  edt6.Text:=zqry1.FieldList[8].AsString;

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
  edtdtp1.Enabled:= True;
  cbb1.Enabled:= True;
end;

procedure TForm10.btn1Click(Sender: TObject);
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
  edtdtp1.Enabled:= True;
end;

procedure TForm10.btn2Click(Sender: TObject);
begin
  if (edt1.Text ='') or (edt2.Text ='') then
  begin
    ShowMessage('ID SISWA DAN ID POIN TIDAK BOLEH KOSONG!');
  end else
    if (edt3.Text ='') or (edt4.Text ='') then
  begin
    ShowMessage('ID WALI KELAS DAN ID ORANG TUA TIDAK BOLEH KOSONG!');
  end else
    if (edt5.Text ='') then
  begin
    ShowMessage('ID KELAS TIDAK BOLEH KOSONG!');
  end else
    if (cbb1.Text ='') or (cbb1.Text ='- Pilih Semester -') then
  begin
    ShowMessage('SEMESTER BELUM DIPILIH');
  end else

  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into riwayat_poin values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+formatdatetime('yyyy-mm-dd',edtdtp1.Date)+'","'+cbb1.Text+'","'+edt6.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from riwayat_poin');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN!');
  posisiawal;
  end;
end;

procedure TForm10.btn3Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('update riwayat_poin set siswa_id ="'+edt1.Text+'", poin_id ="'+edt2.Text+'", wali_id ="'+edt3.Text+'", ortu_id ="'+edt4.Text+'", kelas_id ="'+edt5.Text+'", tanggal ="'+formatdatetime('yyyy-mm-dd',edtdtp1.Date)+'", semester ="'+cbb1.Text+'", status ="'+edt6.Text+'" where id= "'+id+'"');
  zqry1. ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from riwayat_poin');
  zqry1.Open;
end;

procedure TForm10.btn4Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('delete from riwayat_poin where id="'+id+'"');
  zqry1. ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from riwayat_poin');
  zqry1.Open;
end;

procedure TForm10.btn5Click(Sender: TObject);
begin
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
  edtdtp1.Enabled:= False;
end;

end.
