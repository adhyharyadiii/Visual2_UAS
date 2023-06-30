unit TabelSiswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

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
    edt1: TEdit;
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
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
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
  btn2.Enabled:= True;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= False;
end;

procedure TForm3.FormShow(Sender: TObject);
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
  btn2.Enabled:= True;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= False;
end;

end.
