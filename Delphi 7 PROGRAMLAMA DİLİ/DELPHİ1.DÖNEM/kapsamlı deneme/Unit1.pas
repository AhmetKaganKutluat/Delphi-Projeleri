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
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    GroupBox2: TGroupBox;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
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
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
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
  vize,final:double;
  ortalama:double;
  sinif:string;


implementation

{$R *.dfm}

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit2.SetFocus;
if not (key in['0'..'9',#8]) then
key:=#0;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit3.SetFocus;
if  (key in['0'..'9']) then
key:=#0 ;
end;



procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if  (key in['0'..'9']) then
key:=#0 ;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
if (CheckBox1.Checked) then begin
CheckBox2.Checked:=false;
CheckBox3.Checked:=false;
CheckBox1.Checked:=true;
end;
 end;
procedure TForm1.CheckBox2Click(Sender: TObject);
begin
if (CheckBox2.Checked) then begin
CheckBox1.Checked:=false;
CheckBox3.Checked:=false;
CheckBox2.Checked:=true;
end;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
if (CheckBox3.Checked) then begin
CheckBox2.Checked:=false;
CheckBox1.Checked:=false;
CheckBox3.Checked:=true;
end;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
case ComboBox1.ItemIndex of
0: begin
ComboBox2.clear;
ComboBox2.Items.add('VERI TABANI');
ComboBox2.Items.add('PROGLAMLAMA TEMELLERÝ');
ComboBox2.Items.add('GRAFÝK ANÝMASYON');
end;
1: begin

ComboBox2.clear;
ComboBox2.Items.add('ÝÞLETME');
ComboBox2.Items.add('GASTRONOMÝ TEMELLERÝ');
ComboBox2.Items.add('ÝKTÝSAT');
end;


end;
end;

procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit5.SetFocus;
if  not(key in['0'..'9',#8]) then
key:=#0 ;
end;

procedure TForm1.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
if  not(key in['0'..'9',#8]) then
key:=#0 ;
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
    vize:=strtofloat(Edit4.Text);
    final:=StrTofloat(edit5.Text);
    ortalama:= (vize*0.30) + (final*0.60);
    Label8.Caption:=floattostr(ortalama);
    if (ortalama>=60) then
    label9.Caption:='sýnýfý geçti'
    else
    label9.Caption:='sýnýfta  kaldý';
    if (ortalama>0) and (ortalama<=20)   then  Label11.Caption:='FF';
    if (ortalama>20) and (ortalama<=40)   then  Label11.Caption:='DD';
    if (ortalama>40) and (ortalama<=60)   then  Label11.Caption:='CC';
    if (ortalama>60) and (ortalama<=80)   then  Label11.Caption:='BB';
    if (ortalama>80) and (ortalama<=100)   then  Label11.Caption:='AA';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin

if  CheckBox1.Checked then sinif:='hazýrlýk';
 if  CheckBox2.Checked then sinif:='1. sinif';
 if  CheckBox3.Checked then sinif:='2 sinif';

ADOTable1.Append;
ADOTable1.FieldValues['OGRNO']:=Edit1.text;
 ADOTable1.FieldValues['ADI']:=Edit2.text;
 ADOTable1.FieldValues['SOYADI']:=Edit3.text;
 ADOTable1.FieldValues['SINIFI']:=sinif;;
 ADOTable1.FieldValues['BOLUMU']:=ComboBox1.Text;
 ADOTable1.Post;

 ADOTable2.Append;

  ADOTable2.FieldValues['OGRNO']:=Edit1.text;
 ADOTable2.FieldValues['DERS']:=ComboBox2.Text;
 ADOTable2.FieldValues['VÝZE']:=Edit4.text;
 ADOTable2.FieldValues['FÝNAL']:=edit5.text;
 ADOTable2.FieldValues['ORTALAMA']:=Label8.Caption;
  ADOTable2.FieldValues['DURUM']:=Label9.Caption;
 ADOTable2.FieldValues['HARF']:=Label11.Caption;

 ADOTable2.Post;





end;

end.
