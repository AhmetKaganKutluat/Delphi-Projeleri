unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
   // procedure faktoriyel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
procedure faktoriyel();
var
sayi:integer;
i:integer;
fakt:integer;

begin
sayi:=StrToInt(form2.Edit1.text);
if (sayi>15)then
ShowMessage('girilen say� 0-15 aras�nda olmal�')
else begin
fakt:=1;
for i:=1 to sayi do begin
fakt:=fakt*i;
end;
ShowMessage('sonu� : '+IntToStr(fakt));
end;
end;

//butona t�kland���nda edit kutusuna girilen bir say�n�n (sadece say� de�erini)
//fakt�riyelini mesajla g�steriniz. e�er girilen say� negatif ya da 15 den b�y�kse
//hata mesaj� vererek edit alan�n� temizler
procedure TForm2.Button1Click(Sender: TObject);
begin
 faktoriyel;
end;

procedure TForm2.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if not(key in['0'..'9',#8]) then
key:=#0;
end;

end.
