unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    BitBtn1: TBitBtn;
    ListBox1: TListBox;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  sinif: string;
  sor: integer;
implementation

{$R *.dfm}



procedure TForm1.FormCreate(Sender: TObject);
begin
//form adý deðiþtirme
form1.Caption:='BÝLGÝSAYAR PROGRAMCILIÐI';
edit1.Hint:='Müþterinin adý alanýdýr.';
edit2.Hint:='Müþterinin soyadý alanýdýr.';
edit3.hint:='Müþterinin adresi alanýdýr.';
ComboBox1.Hint:='Lütfen burada memeleketi seçiniz.';
ComboBox1.ShowHint:=true;
Edit2.ShowHint:=true;
Edit1.ShowHint:=true;
edit3.ShowHint:=true;
ComboBox1.Items.Add('KAYSERÝ');
ComboBox1.Items.Add('ANTALYA');
ComboBox1.Items.Add('SAMSUN');
ComboBox1.Items.Add('ISPARTA');
ComboBox1.Items.Add('ARTVÝN');
//alfabetik sýraya sokar
ComboBox1.Sorted:=True;
end;
procedure TForm1.CheckBox1Click(Sender: TObject);
begin
if(CheckBox1.Checked) then begin
sinif:=CheckBox1.Caption;
CheckBox2.Checked:=false;
CheckBox3.Checked:=false;
end;
end;


procedure TForm1.CheckBox2Click(Sender: TObject);
begin
if (CheckBox2.Checked) then begin
sinif:=CheckBox2.Caption;
CheckBox1.Checked :=false ;
CheckBox3.Checked:=false;
end;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
sinif:=CheckBox3.Caption;
if (CheckBox3.Checked) then begin
CheckBox1.Checked:=false  ;
CheckBox2.Checked:=false;
end;

end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
//ShowMessage('Seçilen '+sinif);
//sor:=Application.MessageBox('bilgiler kayýt yapýlsýn mý?','kayýt iþlemi',4+32+128);
sor:=MessageDlg(edit1.Text+' '+Edit2.text+' isimli kiþi kayýt yapýlsýn mý?',mtInformation,[mbYes,mbNo],0);
//6 evet demek
if (sor=6) then
ListBox1.Items.add(Edit1.text+'   '+edit2.text+'   '+edit3.text+'   '+ComboBox1.text+'   '+sinif)
else
edit1.clear; edit2.clear; edit3.clear;
ComboBox1.ItemIndex:=-1;
CheckBox1.Checked:=false;
CheckBox2.Checked:=false;
CheckBox3.Checked:=false;
edit1.SetFocus;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
//enter kod numarasý #13
//backspace kod numarasý #8
if key=#13 then
edit2.SetFocus;
if not(key in['0'..'9',#8]) then
key:=#0;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if (key in['0'..'9']) then
key:=#0;
end;

end.

