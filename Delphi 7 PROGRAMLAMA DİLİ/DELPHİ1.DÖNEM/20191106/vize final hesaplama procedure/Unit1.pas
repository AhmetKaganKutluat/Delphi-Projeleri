unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure temizle;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  vize,final,ortalama:real;
  durum:string;
  harfnotu:string;
implementation

{$R *.dfm}

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in['0'..'9',#8]) then
key:=#8
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in['0'..'9',#8]) then
key:=#0
end;
{
procedure temizle;
begin
form1.Edit1.text:='';
Form1.Edit2.clear;
form1.edit1.SetFocus;
end;
}

procedure TForm1.temizle;
begin
edit1.Clear; edit2.Clear; edit1.SetFocus;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
vize:=0;
final:=0;
vize:=StrToFloat(edit1.text);
final:=StrToFloat(edit2.text);
ortalama :=round(vize*0.40) + round(final*0.60);
//ShowMessage(FloatToStr(ortalama));
if (ortalama<60) then
durum:='sýnýfta kaldý'
else
durum:='sýnýfý geçti';
//ShowMessage(durum);
if(ortalama>=0) and (ortalama<=40) then harfnotu:='FF'
else
if(ortalama>=41) and (ortalama<=50) then harfnotu:='DD'
else
if(ortalama>=51) and (ortalama<=60) then harfnotu:='CC'
else
if(ortalama>=61) and (ortalama<=70) then harfnotu:='BC'
else
if(ortalama>=71) and (ortalama<=80) then harfnotu:='BB'
else
if(ortalama>=81) and (ortalama<=90) then harfnotu:='BA'
else
if(ortalama>=91) and (ortalama<=99) then harfnotu:='AA';
//ShowMessage(floattostr(ortalama)+#13+durum+#13+harfnotu);
edit3.Text:=floattostr(ortalama)+'   '+durum+'   '+harfnotu;
temizle;
//edit1.Clear; edit2.clear; edit1.SetFocus;
end;
end.
