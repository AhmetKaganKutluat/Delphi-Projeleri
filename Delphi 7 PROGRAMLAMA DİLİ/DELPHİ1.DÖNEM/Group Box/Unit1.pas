unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    RadioGroup1: TRadioGroup;
    Timer1: TTimer;
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
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

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8])  then
 key:=#0;
end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8])  then
 key:=#0;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 BitBtn1.Enabled :=false;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
if (RadioGroup1.ItemIndex <> -1 ) and
(edit2.Text <> '') and (edit3.Text <>'') then
BitBtn1.Enabled :=true
else
BitBtn1.Enabled :=false;

end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var
x,y:integer;
begin
x:=StrToInt(edit2.Text); y:=StrToInt(Edit3.Text);
{
if(RadioGroup1.ItemIndex =0) then
edit1.Text :='toplamýn sonucu:'+ IntTostr(x+y);
if(RadioGroup1.ItemIndex =1) then
edit1.Text :='çýkarma sonucu:'+ IntTostr(x-y);

if(RadioGroup1.ItemIndex =2) then
edit1.Text :='çarpma sonucu:'+ IntTostr(x*y);

if(RadioGroup1.ItemIndex =3) then
edit1.Text :='bölmenin sonucu:'+ IntTostr(x div y);

if(RadioGroup1.ItemIndex =4) then
edit1.Text :='mod sonucu:'+ IntTostr(x mod y);
 }


 case  (RadioGroup1.ItemIndex )  of
 0:edit1.Text :='toplamýn sonucu:'+ IntTostr(x+y);
 1:edit1.Text :='çýkarma sonucu:'+ IntTostr(x-y);
 2:edit1.Text :='çarpma sonucu:'+ IntTostr(x*y);
 3:edit1.Text :='bölmenin sonucu:'+ IntTostr(x div y);
 4:edit1.Text :='mod sonucu:'+ IntTostr(x mod y);
 end;







 end;

end.
