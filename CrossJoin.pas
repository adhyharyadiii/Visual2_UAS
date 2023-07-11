unit CrossJoin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids;

type
  TForm14 = class(TForm)
    lbl1: TLabel;
    lbl3: TLabel;
    cbb1: TComboBox;
    db1: TDBGrid;
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
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

{$R *.dfm}

procedure TForm14.btn1Click(Sender: TObject);
begin
  if cbb1.Text = 'Hubungan' then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('select hubungan.id, siswa.'+cbb2.text+', orang_tua.'+cbb3.text+'');
    zqry1.SQL.Add('from hubungan');
    zqry1.SQL.Add('cross join siswa');
    zqry1.SQL.Add('cross join orang_tua');
    zqry1.SQL.Add('where hubungan.siswa_id = siswa.id and hubungan.ortu_id = orang_tua.id');
    zqry1.Open;
  end else

  if cbb1.Text = 'Riwayat Poin' then
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('select riwayat_poin.id, siswa.'+cbb2.text+', orang_tua.'+cbb3.text+', wali_kelas.'+cbb3.text+', kelas.'+cbb4.text+', poin.'+cbb5.text+'');
    zqry1.SQL.Add('from riwayat_poin');
    zqry1.SQL.Add('cross join siswa');
    zqry1.SQL.Add('cross join orang_tua');
    zqry1.SQL.Add('cross join poin');
    zqry1.SQL.Add('cross join wali_kelas');
    zqry1.SQL.Add('cross join kelas');
    zqry1.SQL.Add('where riwayat_poin.siswa_id = siswa.id and riwayat_poin.ortu_id = orang_tua.id and riwayat_poin.poin_id and riwayat_poin.wali_id and riwayat_poin.kelas_id');
    zqry1.Open;
  end;
end;

procedure TForm14.cbb1Change(Sender: TObject);
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
