unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Button1: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    ADOTable1OGRNO: TIntegerField;
    ADOTable1ADI: TWideStringField;
    ADOTable1SOYADI: TWideStringField;
    ADOTable1SINIFI: TWideStringField;
    ADOTable1BOLUMU: TWideStringField;
    ADOTable2OGRNO: TIntegerField;
    ADOTable2DERS: TWideStringField;
    ADOTable2VZE: TIntegerField;
    ADOTable2FNAL: TIntegerField;
    ADOTable2ORTALAMA: TIntegerField;
    ADOTable2DURUM: TWideStringField;
    ADOTable2HARF: TWideStringField;
    Label10: TLabel;
    Label11: TLabel;
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  

   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}




procedure TForm1.CheckBox1Click(Sender: TObject);
begin
if(CheckBox1.Checked) then begin
CheckBox2.Checked:=false;
CheckBox3.Checked:=false;
end;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
if(CheckBox2.Checked)then begin
   CheckBox1.Checked:=false;
   CheckBox3.Checked:=false;
end;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
if(CheckBox3.Checked)then begin
    CheckBox1.Checked:=false;
    CheckBox2.Checked:=false;
end;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
case ComboBox1.ItemIndex of
0:
begin
ComboBox2.Clear;
ComboBox2.items.add('VeriTabaný');
ComboBox2.items.add('Programlama');
ComboBox2.items.add('Web Tasarým');
ComboBox2.items.add('Java');
ComboBox2.items.add('Phayton ');
end;
1:
begin
ComboBox2.Clear;
ComboBox2.items.add('1. iþletme');
ComboBox2.items.add('2. iþletme');
ComboBox2.items.add('3. iþletme');
end;
2:
begin
ComboBox2.Clear;
ComboBox2.items.add('1. pazarlama');
ComboBox2.items.add('2. pazarlama');
ComboBox2.items.add('3. pazarlama');
end;

end;
    end;
procedure TForm1.Button1Click(Sender: TObject);
var
vize,final,ortalama:double;
begin
vize:=StrToFloat(Edit4.Text);
final:=StrToFloat(Edit5.Text);
ortalama :=round(vize*0.40) + round(final*0.60);
Label8.Caption:=FloatToStr(ortalama);
if(ortalama>=50)then
label9.Caption:='SINIFI GEÇTÝ'
else
label9.Caption:='SINIFTA KALDI';

if (ortalama>0) and (ortalama<20) then Label11.Caption:='FF';
if (ortalama>=20) and (ortalama<40) then Label11.Caption:='DD';
if (ortalama>=40) and (ortalama<60) then Label11.Caption:='CC';
if (ortalama>=60) and (ortalama<80) then Label11.Caption:='BB';
if (ortalama>=80) and (ortalama<=100) then Label11.Caption:='AA';



end;



procedure TForm1.Button2Click(Sender: TObject);
var
sinif:string;
begin
   if CheckBox1.Checked then sinif:='hazýrlýk sýnýfý';
   if CheckBox2.Checked then sinif:='birinci sinif';
   if CheckBox3.Checked then sinif:='ikinci sinif ';



ADOTable1.Append;
ADOTable1.FieldValues['OGRNO']:= edit1.Text;
ADOTable1.FieldValues['ADI']:= edit2.Text;
ADOTable1.FieldValues['SOYADI']:=edit3.Text;
ADOTable1.FieldValues['SINIFI']:=  sinif;
ADOTable1.FieldValues['BOLUMU']:=  ComboBox1.Text;
  ADOTable1.Post;

  ADOTable2.Append;
  ADOTable2.FieldValues['OGRNO']:= Edit1.Text;
  ADOTable2.FieldValues['DERS']:=  ComboBox2.Text;
  ADOTable2.FieldValues['VÝZE']:=  Edit4.Text;
  ADOTable2.FieldValues['FÝNAL']:= Edit5.Text;
  ADOTable2.FieldValues['ORTALAMA']:= label8.Caption;
  ADOTable2.FieldValues['DURUM']:= label9.Caption;
  ADOTable2.FieldValues['HARF']:=  Label11.Caption;
  ADOTable2.Post;

end;
procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
Edit2.SetFocus;
if not (key in['0'..'9',#8]) then
key:=#0;
end;

end.
