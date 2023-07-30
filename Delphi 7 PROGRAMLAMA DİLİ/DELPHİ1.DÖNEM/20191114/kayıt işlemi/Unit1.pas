unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
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
var
i:integer;
begin
ComboBox1.Items.LoadFromFile('urun.txt');
for i:=1 to 10 do begin
ComboBox2.items.add(IntToStr(i));
end;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var
bfiyat,adet:integer;
vergi,bkar,kazanc:real;
soru:integer;
begin
bfiyat:=StrToInt(edit1.text);
adet:=StrToInt(ComboBox2.text);
bkar:=bfiyat*adet;
vergi:=bkar*0.18;
kazanc:=bkar-vergi;
soru:=Application.MessageBox('bilgiler kayýt edilsin mi?','kayýt iþlemi',4+48);
if(soru=6) then
Memo1.Lines.Add(ComboBox1.text+'   '+ComboBox2.text+' adet   '+
edit1.text+' T.L   elde edilen kazanç : '+FloatToStr(kazanc)+' T.L');
ComboBox1.ItemIndex:=-1;
ComboBox2.ItemIndex:=-1;
Edit1.clear;
end;

end.
 