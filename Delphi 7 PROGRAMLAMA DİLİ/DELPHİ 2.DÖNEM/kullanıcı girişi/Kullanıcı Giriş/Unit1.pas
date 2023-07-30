unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DB, ADODB, Grids, DBGrids, ComCtrls,
  ExtCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    MaskEdit1: TMaskEdit;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Button1: TButton;
    Edit4: TEdit;
    Edit5: TEdit;
    Timer2: TTimer;
    Button2: TButton;
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  durum:string;
  sec:integer;
  d:string;
  dosya:TextFile;

implementation
uses unit2, Unit3;


{$R *.dfm}

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
if(CheckBox1.Checked) then begin
d:='EVLÝ';
 durum:=CheckBox1.Caption;
CheckBox2.Checked:=false;
end;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
if(CheckBox2.Checked) then begin
d:='BEKAR';
  durum:=CheckBox2.Caption;
CheckBox1.Checked:=false;
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
i:integer;
begin
ComboBox2.Clear;
for i:=1 to   ADOTable1.RecordCount do begin
ComboBox1.Items.add(ADOTable1['ÝL']);
ADOTable1.Next;
end;


end;


procedure TForm1.ComboBox1Change(Sender: TObject);
var
i:integer;
begin
sec:=ComboBox1.ItemIndex;
case sec of
0:begin
ComboBox2.Clear;
ADOTable2.First;
for i:=1 to   ADOTable2.RecordCount do begin
ComboBox2.Items.add(ADOTable2['ÝSTANBUL']);
ADOTable2.Next;
end;

end;
1:begin
ComboBox2.Clear;
ADOTable2.First;
for i:=1 to   ADOTable2.RecordCount do begin

ComboBox2.Items.add(ADOTable2['ANKARA']);

ADOTable2.Next;
end;

end;
2:begin
ComboBox2.Clear;
ADOTable2.First;
for i:=1 to   ADOTable2.RecordCount do begin

ComboBox2.Items.add(ADOTable2['ANTALYA']);
ADOTable2.Next;
end;

end;
end;
    end;
procedure TForm1.BitBtn1Click(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('INSERT INTO Tablo3(ADI,SOYADI,ÝL,ÝLÇE,TELEFON,DURUM,ADRES) VALUES("'+Edit1.Text+'","'+Edit2.Text+'","'+ComboBox1.Text+'","'+ComboBox2.Text+'","'+MaskEdit1.Text+'","'+d+'","'+Edit3.Text+'")');
ADOQuery1.ExecSQL;

ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Tablo3');
ADOQuery1.Open;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
StatusBar1.Panels[0].Text:='Aktif Kullanýcý : '+bilgi;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
sor:integer;
begin
if (edit4.Text='') then
ShowMessage('SÝLÝNECEK KÝÞÝNÝN ADINI YAZINIZ')
else
if (edit5.Text='') then
 ShowMessage('SÝLÝNECEK KÝÞÝNÝN SOYADINI YAZINIZ')
else begin
sor:=MessageDlg(edit4.Text+' ' +edit5.Text+ ' Ýsimli veri silinsin mi?',mtInformation,[mbYes,mbNo],0);
if (sor=6) then begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('DELETE FROM Tablo3 WHERE');
ADOQuery1.SQL.Add('ADI="'+Edit4.Text+'" AND SOYADI="'+Edit5.Text+'"');
ADOQuery1.ExecSQL;

ADOQuery1.Close; ADOQuery1.SQL.Clear;
ADOQuery1.sql.Add('SELECT * FROM Tablo3');
ADOQuery1.Open;
end;
//sor:=Application.MessageBox(('SILME ISLEMINI ONAYLIYOR MUSUNUZ?'),'SILME ONAY',4+32+256);
//if (sor=6) then begin
//ADOQuery1.Delete;
//Button1.Enabled:=false;
end;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
if (ADOQuery1.RecordCount >0) then
Button1.Enabled:=true
else
Button1.Enabled:=False;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form3.ShowModal;
end;

end.
