unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    C1: TCheckBox;
    C2: TCheckBox;
    C3: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    Edit3: TEdit;
    Edit4: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    ListBox1: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure C2Click(Sender: TObject);
    procedure C3Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  vize,final,ortalama:real;
  sinif:string;
  sor:integer;

implementation

{$R *.dfm}
procedure tembel;
begin
form1.Edit1.Clear;
form1.Edit2.Clear;
form1.Edit3.Clear;
form1.Edit4.Clear;
form1.ComboBox1.ItemIndex:=-1;
form1.C1.Checked:=false;
form1.C2.Checked:=false;
form1.C3.Checked:=false;
form1.edit1.SetFocus;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
//Form1.Caption :='BUGUN PAZARTESI';
ComboBox1.Items.Add('KASTAMONU');
ComboBox1.Items.Add('ÝZMÝR');
ComboBox1.Items.Add('DENÝZLÝ');
ComboBox1.Items.Add('ANTALYA');
ComboBox1.Items.Add('ISPARTA');
ComboBox1.Items.Add('ORDU');


end;

procedure TForm1.C1Click(Sender: TObject);
begin
if (C1.Checked)THEN begin
C2.Checked :=false;
C3.Checked :=false;
end; end;

procedure TForm1.C2Click(Sender: TObject);
begin
if (C2.Checked)THEN begin
C3.Checked :=false;
C1.Checked :=false;
end; end;


procedure TForm1.C3Click(Sender: TObject);
begin
if (C3.Checked) then begin
C2.Checked :=FALSE;
C1.Checked :=FALSE;
end; END;



procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
Edit2.SetFocus;
  if not (key in ['0'..'9',#8]) then
  key:=#0;
end;

procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: Char);
begin

    if not (key in ['0'..'9',#8]) then
  key:=#0;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
     if key=#13 then
Edit2.SetFocus;
if  (key in ['0'..'9']) then
  key:=#0;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
ComboBox1.SetFocus;
if  (key in ['0'..'9']) then
  key:=#0;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
if (edit3.text<>'') and (edit4.Text<>'') then begin
vize:=StrToFloat(edit3.text);
final:=strtofloat(edit4.text);
ortalama:=(vize*0.3)+(final*0.70);
ShowMessage('ortalamasý ' + FloatToStr(ortalama));
end
else  begin
ShowMessage('Bir Sayi Girin')

end;
    end;
procedure TForm1.BitBtn1Click(Sender: TObject);
begin
// güzel messagebox sor:=Application.MessageBox('Veriler Kaydedilsin Mi ?','Baslik',44+32+256);
sor:=MessageDlg(edit1.text+' '+ edit2.Text+'Kisinin Bilgileri Kaydedilsin mi ?',
mtInformation,[mbYes,mbNo],0);

if(sor = 6 )then begin
ListBox1.Items.Add(edit1.Text);
ListBox1.Items.Add(edit2.Text);
listbox1.Items.add(combobox1.Text);
ListBox1.Items.Add(edit3.Text);
ListBox1.Items.Add(edit4.Text);
ListBox1.Items.Add(edit1.Text);
ListBox1.Items.Add(FloatToStr(ortalama));
tembel;
end
else tembel
end;


end.
