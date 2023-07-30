unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    Edit1: TEdit;
    Edit2: TEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
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
begin
BitBtn1.enabled:=false;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
if (RadioGroup1.ItemIndex <>-1) then
BitBtn1.Enabled:=true;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var
s1,s2:integer;
sec:char;

begin

if(edit1.Text='') then
ShowMessage('lutfen birinci sayiyi giriniz!')
else
if(edit2.Text='') then
ShowMessage('lutfen ikinci sayiyi giriniz!')
else begin //ana begin
s1:=StrToInt(edit1.Text); s2:=StrToInt(edit2.text);
case RadioGroup1.ItemIndex of
0: ShowMessage('�ki Say�n�n Toplam� : '+IntToStr(s1+s2));
1: ShowMessage('�ki Say�n�n Farki : '+IntToStr(s1-s2));
2: ShowMessage('�ki Say�n�n �arp�m� : '+IntToStr(s1*s2));
3: ShowMessage('�ki Say�n�n B�l�m� : '+IntToStr(s1 div s2));
4: ShowMessage('�ki Say�n�n Toplam� : '+IntToStr(s1 mod s2));
end;
{
if (RadioGroup1.ItemIndex = 0) then
ShowMessage('�ki Say�n�n Toplam� : '+IntToStr(s1+s2));

if (RadioGroup1.ItemIndex = 1) then
ShowMessage('�ki Say�n�n Farki : '+IntToStr(s1-s2));

if (RadioGroup1.ItemIndex = 2) then
ShowMessage('�ki Say�n�n �arp�m� : '+IntToStr(s1*s2));

if (RadioGroup1.ItemIndex = 3) then
ShowMessage('�ki Say�n�n B�l�m� : '+IntToStr(s1 div s2));

if (RadioGroup1.ItemIndex = 4) then
ShowMessage('�ki Say�n�n Toplam� : '+IntToStr(s1 mod s2));
}
end; //ana begin sonu
end;

end.
