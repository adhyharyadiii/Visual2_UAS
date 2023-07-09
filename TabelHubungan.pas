unit TabelHubungan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

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
    procedure FormShow(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure db1CellClick(Column: TColumn);
    procedure btn1Click(Sender: TObject);
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

end.