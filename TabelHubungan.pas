unit TabelHubungan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids, frxClass,
  frxDBSet;

type
  TForm9 = class(TForm)
    lbl1: TLabel;
    lbl3: TLabel;
    lbl13: TLabel;
    lbl16: TLabel;
    lbl2: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
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
    edt3: TEdit;
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
  Form9: TForm9;
  id: string;

implementation

{$R *.dfm}

procedure TForm9.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  cbb1.Text := '- Pilih Status Hubungan -';
  edt3.Clear;
end;

procedure TForm9.FormShow(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm9.posisiawal;
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

procedure TForm9.db1CellClick(Column: TColumn);
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
  edt3.Enabled:= True;
end;

procedure TForm9.btn1Click(Sender: TObject);
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
  edt3.Enabled:= True;
end;

procedure TForm9.btn2Click(Sender: TObject);
begin
  if (edt1.Text ='') or (edt2.Text ='')then
  begin
    ShowMessage('ID SISWA DAN ID ORANG TUA TIDAK BOLEH KOSONG!');
  end else
  if (cbb1.Text ='') or (cbb1.Text ='- Pilih Status Hubungan -') then
  begin
    ShowMessage('STATUS HUBUNGAN BELUM DIPILIH');
  end else
  if (edt3.Text ='') then
  begin
    ShowMessage('KETERANGAN TIDAK BOLEH KOSONG!');
  end else

  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into hubungan values(null,"'+edt1.Text+'","'+edt2.Text+'","'+cbb1.Text+'","'+edt3.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from hubungan');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN!');
  posisiawal;
  end;
end;

procedure TForm9.btn3Click(Sender: TObject);
begin
  if (edt1.Text= '') or (edt2.Text= '') or (cbb1.Text ='') or (cbb1.Text ='- Pilih Status Hubungan -') or (edt3.Text= '')then
    begin
    ShowMessage('INPUTAN WAJIB DIISI!');
  end else

  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('update hubungan set siswa_id ="'+edt1.Text+'", ortu_id ="'+edt2.Text+'", status_hub ="'+cbb1.Text+'", keterangan ="'+edt3.Text+'" where id= "'+id+'"');
  zqry1. ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from hubungan');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIUPDATE!');
  posisiawal;
  end;
end;

procedure TForm9.btn4Click(Sender: TObject);
begin
  if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
  begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('delete from hubungan where id="'+id+'"');
  zqry1. ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from hubungan');
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

procedure TForm9.btn5Click(Sender: TObject);
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
  edt3.Enabled:= False;
end;

procedure TForm9.btn6Click(Sender: TObject);
begin
  frxReport1.ShowReport()
end;

end.
