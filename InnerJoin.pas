unit InnerJoin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm11 = class(TForm)
    cbb1: TComboBox;
    lbl1: TLabel;
    lbl3: TLabel;
    db1: TDBGrid;
    btn1: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    lbl2: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    cbb4: TComboBox;
    lbl6: TLabel;
    cbb5: TComboBox;
    lbl7: TLabel;
    cbb6: TComboBox;
    lbl8: TLabel;
    cbb2: TComboBox;
    cbb3: TComboBox;
    procedure btn1Click(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

procedure TForm11.btn1Click(Sender: TObject);
begin
  if cbb1.Text = 'Hubungan' then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('select hubungan.id, siswa.'+cbb2.text+', orang_tua.'+cbb3.text+'');
    zqry1.SQL.Add('from hubungan');
    zqry1.SQL.Add('inner join siswa on hubungan.siswa_id = siswa.id');
    zqry1.SQL.Add('inner join orang_tua on hubungan.ortu_id = orang_tua.id');
    zqry1.Open;
  end else

  if cbb1.Text = 'Riwayat Poin' then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('select riwayat_poin.id, siswa.'+cbb2.text+', orang_tua.'+cbb3.text+', wali_kelas.'+cbb3.text+', kelas.'+cbb4.text+', poin.'+cbb5.text+'');
    zqry1.SQL.Add('from riwayat_poin');
    zqry1.SQL.Add('inner join siswa on riwayat_poin.siswa_id = siswa.id');
    zqry1.SQL.Add('inner join orang_tua on riwayat_poin.ortu_id = orang_tua.id');
    zqry1.SQL.Add('inner join poin on riwayat_poin.poin_id = poin.id');
    zqry1.SQL.Add('inner join wali_kelas on riwayat_poin.wali_id = wali_kelas.id');
    zqry1.SQL.Add('inner join kelas on riwayat_poin.kelas_id = kelas.id');
    zqry1.Open;
  end;
end;

procedure TForm11.cbb1Change(Sender: TObject);
begin
  if cbb1.Text = 'Hubungan' then
  begin
    cbb4.Enabled := False;
    cbb5.Enabled := False;
    cbb6.Enabled := False;
  end else

  begin
    cbb4.Enabled := True;
    cbb5.Enabled := True;
    cbb6.Enabled := True;
  end;
end;

end.
