unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids, ExtCtrls;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Label4: TLabel;
    ComboBox1: TComboBox;
    Label5: TLabel;
    ComboBox2: TComboBox;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    Label8: TLabel;
    Label9: TLabel;
    Button2: TButton;
    ADOTable1OGRNO: TWideStringField;
    ADOTable1ADI: TWideStringField;
    ADOTable1SOYADI: TWideStringField;
    ADOTable1SINIFI: TWideStringField;
    ADOTable1BOLUMU: TWideStringField;
    ADOTable2OGRNO: TWideStringField;
    ADOTable2DERS: TWideStringField;
    ADOTable2VZE: TWideStringField;
    ADOTable2FNAL: TWideStringField;
    ADOTable2ORTALAMA: TWideStringField;
    ADOTable2DURUM: TWideStringField;
    ADOTable2HARF: TWideStringField;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  sinif,vize,final:integer;
  ortalama:real;
  durum,harfnotu:string;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
form1.Caption:='OGRENCÝ DERS / NOT KAYIT SÝSTEMÝ --- '+DateTimeToStr(now);
ComboBox1.Items.LoadFromFile('bilgi.txt');
button1.Enabled:=false;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if (key=#13) then begin
edit2.SetFocus;
end;

if not (key in['0'..'9',#8]) then begin
key:=#0;
end;

end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if (key=#13) then begin
edit3.SetFocus;
end;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
if (CheckBox1.Checked) then begin
sinif:=0;
CheckBox2.Checked:=false;
CheckBox3.Checked:=false;
end;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
if (CheckBox2.Checked) then begin
sinif:=1;
CheckBox1.Checked:=false;
CheckBox3.Checked:=false;
end;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
if (CheckBox3.Checked) then begin
sinif:=2;
CheckBox1.Checked:=false;
CheckBox2.Checked:=false;
end;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
case ComboBox1.ItemIndex of
0: begin
ComboBox2.Clear;
ComboBox2.Items.Add('MATEMATIK');
ComboBox2.Items.Add('TURKCE');
ComboBox2.Items.Add('TARIH');
ComboBox2.Items.Add('PROGRAMLAMA');
ComboBox2.Items.Add('VERI TABANI');
end;
1: begin
ComboBox2.Clear;
ComboBox2.Items.Add('MATEMATIK');
ComboBox2.Items.Add('TURKCE');
ComboBox2.Items.Add('TARIH');
ComboBox2.Items.Add('MUHASEBE 1');
ComboBox2.Items.Add('MUHASEBE 2');
end;
2:
BEGIN
ComboBox2.Clear;
ComboBox2.Items.Add('MATEMATIK');
ComboBox2.Items.Add('TURKCE');
ComboBox2.Items.Add('TARIH');
ComboBox2.Items.Add('PAZARLAMA 1');
ComboBox2.Items.Add('PAZARLAMA 2');
end;
end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
if not (edit4.text='') and (Edit5.text='') then begin
Button1.Enabled:=true;
end;
end;

procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if (key=#13) then begin
edit5.SetFocus;
end;

if not (key in['0'..'9',#8]) then begin
key:=#0;
end;

end;

procedure TForm1.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in['0'..'9',#8]) then begin
key:=#0;
end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
vize:=strtoint(edit4.text);
final:=StrToInt(edit5.text);
ortalama:=(vize*0.40)+(final*0.60);
label8.Caption :='DERS ORTALAMASI : '+floattostr(ortalama);

if (ortalama>=0) and (ortalama<60) then durum:='KALDI';
if (ortalama>=60) and (ortalama<=100) then durum:='GEÇTÝ';
if (ortalama>=0) and (ortalama<40) then harfnotu:='FF';
if (ortalama>=40) and (ortalama<50) then harfnotu:='FD';
if (ortalama>=50) and (ortalama<60) then harfnotu:='DD';
if (ortalama>=60) and (ortalama<70) then harfnotu:='CC';
if (ortalama>=70) and (ortalama<85) then harfnotu:='BC';
if (ortalama>=85) and (ortalama<90) then harfnotu:='BA';
if (ortalama>=90) and (ortalama<=100) then harfnotu:='AA';

label9.Caption:=durum+' / '+harfnotu;


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
case MessageDlg(edit1.text+' nolu '+edit2.text+' '+edit3.text+
' isimli kiþi kaydedilsin mi?',mtConfirmation,[mbYes,mbNo],0) of
mrYes: begin

ADOTable1.Append;
ADOTable1['OGRNO']:=edit1.text;
ADOTable1['ADI']:=edit2.text;
ADOTable1['SOYADI']:=edit3.text;
ADOTable1['SINIFI']:=sinif;
ADOTable1['BOLUMU']:=ComboBox1.Text;
ADOTable1.Post;

ADOTable2.Append;
ADOTable2['OGRNO']:=edit1.text;
ADOTable2['DERS']:=ComboBox2.text;
ADOTable2['VÝZE']:=vize;
ADOTable2['FÝNAL']:=final;
ADOTable2['ORTALAMA']:=ortalama;
ADOTable2['DURUM']:=durum;
ADOTable2['HARF']:=harfnotu;
ADOTable2.Post;

edit1.Clear;
edit2.Clear;
edit3.Clear;
Edit4.clear;
Edit5.Clear;
CheckBox1.Checked:=false;
CheckBox2.Checked:=false;
CheckBox3.checked:=false;
ComboBox1.ItemIndex:=-1;
ComboBox2.Clear;


end;

mrno: begin

edit1.Clear;
edit2.Clear;
edit3.Clear;
Edit4.clear;
Edit5.Clear;
CheckBox1.Checked:=false;
CheckBox2.Checked:=false;
CheckBox3.checked:=false;
ComboBox1.ItemIndex:=-1;
ComboBox2.Clear;

end;

end;

end;

end.
