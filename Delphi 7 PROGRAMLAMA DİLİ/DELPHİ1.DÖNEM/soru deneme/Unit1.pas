unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    GroupBox1: TGroupBox;
    Edit4: TEdit;
    Edit5: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    Button1: TButton;
    BitBtn1: TBitBtn;
    Edit6: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    ADOTable1TCNO: TIntegerField;
    ADOTable1ADI: TWideStringField;
    ADOTable1SOYADI: TWideStringField;
    ADOTable1MEMLEKET: TWideStringField;
    ADOTable1LE: TWideStringField;
    ADOTable1URUN_ADI: TWideStringField;
    ADOTable1FYAT: TWideStringField;
    ADOTable1ADET: TWideStringField;
    ADOTable1TOPLAM_FYAT: TWideStringField;
    ADOTable1TESLMAT: TWideStringField;
    ADOTable1ADRES: TWideStringField;
    Label12: TLabel;
    Label13: TLabel;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Math;

{$R *.dfm}

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit2.SetFocus;
if not (key in ['0'..'9',#8])  then

key:=#0;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit3.SetFocus;
if  (key in ['0'..'9'])  then

key:=#0;
end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
ComboBox1.SetFocus;
if  (key in ['0'..'9'])  then

key:=#0;
end;

procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
Edit5.SetFocus;
if  not (key in ['0'..'9',#8])  then

key:=#0;
end;

procedure TForm1.Edit5KeyPress(Sender: TObject; var Key: Char);
begin

if  not (key in ['0'..'9',#8])  then

key:=#0;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin

case ComboBox1.ItemIndex of
0: begin
ComboBox2.Clear;
ComboBox2.Items.Add('kadýkoy');
ComboBox2.Items.add('pendik');
ComboBox2.Items.add('beþiktaþ');
end;
1: begin
ComboBox2.Clear;
ComboBox2.Items.Add('keçiören');
ComboBox2.Items.add('yenidoðan');
ComboBox2.Items.add('çinçin');
end;
2:begin
  ComboBox2.Clear;
ComboBox2.Items.Add('arhavi');
ComboBox2.Items.add('hopa');
ComboBox2.Items.add('kemalpaþa');
end;



end;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
if (CheckBox1.Checked) then begin

checkbox2.Checked:=false;
CheckBox1.Checked:=true;
 end;

end;

procedure TForm1.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
if   (key in ['0'..'9'])  then

key:=#0;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
fiyat:integer;
adet: integer;
toplam:integer;
sonuc:string;
begin

fiyat:=strtoint(edit4.text);
adet:=strtoint(comBobox4.Text);
toplam:=fiyat * adet;
edit5.Text:=IntToStr(toplam);
if CheckBox1.Checked then sonuc:='þehir içi';
if CheckBox2.Checked then sonuc:='þehir dýþý';

ADOTable1.Append;
ADOTable1.FieldValues['TC NO']:=Edit1.text;
ADOTable1.FieldValues['ADI']:=Edit2.text;
ADOTable1.FieldValues['SOYADI']:=Edit3.text;
ADOTable1.FieldValues['MEMLEKET']:=ComboBox1.Text;
ADOTable1.FieldValues['ÝLÇE']:=ComboBox2.Text;
ADOTable1.FieldValues['URUN_ADI']:=ComboBox3.text;
ADOTable1.FieldValues['ADET']:=ComboBox4.text;
ADOTable1.FieldValues['FÝYAT']:=Edit4.text;
ADOTable1.FieldValues['TOPLAM_FÝYAT']:=Edit5.text;
ADOTable1.FieldValues['TESLÝMAT']:=sonuc;
ADOTable1.FieldValues['ADRES']:=edit6.text;

ADOTable1.Post;







edit1.clear;
edit2.clear;
edit3.clear;
edit4.clear;

edit6.clear;
combobox1.itemindex:=-1;
combobox2.itemindex:=-1;
combobox3.itemindex:=-1;
combobox4.itemindex:=-1;
checkbox1.checked :=false;
checkbox2.checked :=false;




end;
 procedure TForm1.CheckBox2Click(Sender: TObject);
begin
if (CheckBox2.Checked) then begin
   CheckBox1.Checked:=false;
   CheckBox2.Checked:=true;
end;
end;

end.










