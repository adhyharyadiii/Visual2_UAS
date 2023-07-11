unit QueryLike;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids;

type
  TForm15 = class(TForm)
    lbl1: TLabel;
    lbl3: TLabel;
    cbb1: TComboBox;
    db1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    lbl10: TLabel;
    cbb8: TComboBox;
    lbl2: TLabel;
    lbl4: TLabel;
    procedure cbb8Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;

implementation

{$R *.dfm}

procedure TForm15.cbb8Change(Sender: TObject);
begin
  if (cbb8.Text = 'a%') and (cbb1.Text = 'Siswa') then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from siswa');
    zqry1.SQL.Add('where siswa.nama_siswa like "a%"');
    zqry1.Open;
  end else

  if (cbb8.Text = '%a') and (cbb1.Text = 'Siswa') then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from siswa');
    zqry1.SQL.Add('where siswa.nama_siswa like "%a"');
    zqry1.Open;
  end else

  if (cbb8.Text = 'a%') and (cbb1.Text = 'Orang Tua') then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from orang_tua');
    zqry1.SQL.Add('where orang_tua.nama like "a%"');
    zqry1.Open;
  end else

  if (cbb8.Text = '%a') and (cbb1.Text = 'Orang Tua') then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from orang_tua');
    zqry1.SQL.Add('where orang_tua.nama like "%a"');
    zqry1.Open;
  end else

  if (cbb8.Text = 'a%') and (cbb1.Text = 'Kelas') then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from kelas');
    zqry1.SQL.Add('where kelas.nama like "a%"');
    zqry1.Open;
  end else

  if (cbb8.Text = '%a') and (cbb1.Text = 'Kelas') then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from kelas');
    zqry1.SQL.Add('where kelas.nama like "%a"');
    zqry1.Open;
  end else

  if (cbb8.Text = 'a%') and (cbb1.Text = 'Wali Kelas') then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from wali_kelas');
    zqry1.SQL.Add('where wali_kelas.nama like "a%"');
    zqry1.Open;
  end else

  if (cbb8.Text = '%a') and (cbb1.Text = 'Wali Kelas') then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from wali_kelas');
    zqry1.SQL.Add('where wali_kelas.nama like "%a"');
    zqry1.Open;
  end else

  if (cbb8.Text = 'a%') and (cbb1.Text = 'Poin') then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from poin');
    zqry1.SQL.Add('where poin.nama like "a%"');
    zqry1.Open;
  end else

  if (cbb8.Text = '%a') and (cbb1.Text = 'Poin') then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from poin');
    zqry1.SQL.Add('where poin.nama like "%a"');
    zqry1.Open;
  end else

  if (cbb8.Text = 'a%') and (cbb1.Text = 'User') then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from user');
    zqry1.SQL.Add('where user.siswa like "a%"');
    zqry1.Open;
  end else

  if (cbb8.Text = '%a') and (cbb1.Text = 'User') then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('select * from user');
    zqry1.SQL.Add('where user.siswa like "%a"');
    zqry1.Open;
  end;
end;

end.
