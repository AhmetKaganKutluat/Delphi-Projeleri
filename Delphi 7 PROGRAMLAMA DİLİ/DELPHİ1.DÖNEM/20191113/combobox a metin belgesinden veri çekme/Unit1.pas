unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
ComboBox1.Items.LoadFromFile('il.txt')
end;
//change ve click iventlerinde ayn� sonucu ald�k
procedure TForm1.ComboBox1Change(Sender: TObject);
begin
case ComboBox1.ItemIndex of
0:
begin
ComboBox2.Clear;
ComboBox2.items.add('MANAVGAT');
ComboBox2.items.add('ELMALI');
ComboBox2.items.add('KORKUTEL�');
ComboBox2.items.add('GAZ�PA�A');
ComboBox2.items.add('AKSU');
end;
1:
begin
ComboBox2.Clear;
ComboBox2.items.add('BA�CILAR');
ComboBox2.items.add('ESENYURT');
ComboBox2.items.add('�MRAN�YE');
ComboBox2.items.add('KADIK�Y');
ComboBox2.items.add('AVCILAR');
end;
2:
begin
ComboBox2.Clear;
ComboBox2.items.add('GAZ�EM�R');
ComboBox2.items.add('BORNOVA');
ComboBox2.items.add('BAL�OVA');
ComboBox2.items.add('URLA');
ComboBox2.items.add('KAR�IYAKA');
end;


{
if (ComboBox1.ItemIndex=0) then begin
ComboBox2.Clear;
ComboBox2.items.add('MANAVGAT');
ComboBox2.items.add('ELMALI');
ComboBox2.items.add('KORKUTEL�');
ComboBox2.items.add('GAZ�PA�A');
ComboBox2.items.add('AKSU');
end;

if (ComboBox1.ItemIndex=1) then begin
ComboBox2.Clear;
ComboBox2.items.add('BA�CILAR');
ComboBox2.items.add('ESENYURT');
ComboBox2.items.add('�MRAN�YE');
ComboBox2.items.add('KADIK�Y');
ComboBox2.items.add('AVCILAR');
end;

if (ComboBox1.ItemIndex=2) then BEGIN
ComboBox2.Clear;
ComboBox2.items.add('GAZ�EM�R');
ComboBox2.items.add('BORNOVA');
ComboBox2.items.add('BAL�OVA');
ComboBox2.items.add('URLA');
ComboBox2.items.add('KAR�IYAKA');
end;
}

{
if (ComboBox1.ItemIndex=0) then
ComboBox2.items.LoadFromFile('antalya.txt');
if (ComboBox1.ItemIndex=1) then
ComboBox2.items.LoadFromFile('istanbul.txt');
if (ComboBox1.ItemIndex=2) then
ComboBox2.items.LoadFromFile('izmir.txt');
}
end;
end;
procedure TForm1.ComboBox1Click(Sender: TObject);
begin
{
if (ComboBox1.ItemIndex=0) then begin
ComboBox2.Clear;
ComboBox2.items.add('MANAVGAT');
ComboBox2.items.add('ELMALI');
ComboBox2.items.add('KORKUTEL�');
ComboBox2.items.add('GAZ�PA�A');
ComboBox2.items.add('AKSU');
end;

if (ComboBox1.ItemIndex=1) then begin
ComboBox2.Clear;
ComboBox2.items.add('BA�CILAR');
ComboBox2.items.add('ESENYURT');
ComboBox2.items.add('�MRAN�YE');
ComboBox2.items.add('KADIK�Y');
ComboBox2.items.add('AVCILAR');
end;

if (ComboBox1.ItemIndex=2) then BEGIN
ComboBox2.Clear;
ComboBox2.items.add('GAZ�EM�R');
ComboBox2.items.add('BORNOVA');
ComboBox2.items.add('BAL�OVA');
ComboBox2.items.add('URLA');
ComboBox2.items.add('KAR�IYAKA');
end;
}

{
if (ComboBox1.ItemIndex=0) then
ComboBox2.items.LoadFromFile('antalya.txt');
if (ComboBox1.ItemIndex=1) then
ComboBox2.items.LoadFromFile('istanbul.txt');
if (ComboBox1.ItemIndex=2) then
ComboBox2.items.LoadFromFile('izmir.txt');
}
end;
procedure TForm1.Button1Click(Sender: TObject);
begin
ShowMessage(ComboBox1.text+#13+ComboBox2.Text);
end;

end.
