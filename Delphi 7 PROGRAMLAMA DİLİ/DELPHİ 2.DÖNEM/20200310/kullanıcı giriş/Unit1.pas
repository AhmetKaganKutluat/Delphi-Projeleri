unit Unit1;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, DB, ADODB;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    BitBtn1: TBitBtn;
    ADOQuery1: TADOQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  hak:integer;
  kimo:string;
  dosya:textfile;



implementation

{$R *.dfm}
uses unit2;
procedure TForm1.BitBtn1Click(Sender: TObject);
begin
if (trim(edit1.text)='') then begin
ShowMessage('KULLANICI ADI BO� GE��LEMEZ!');
edit1.Color:=clYellow
end else begin
if (trim(edit2.text)='') then begin
ShowMessage('��FRE BO� BIRAKILAMAZ!');
edit2.Color:=clYellow;
end else begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from tablo1 where');
ADOQuery1.SQL.Add('KULLANICI="'+trim(edit1.text)+'" and SIFRE="'+trim(edit2.text)+'"');
ADOQuery1.Active:=True;
if (ADOQuery1.RecordCount=1) then begin
Assignfile(dosya,'kimgirmis.txt');
Append(dosya);
Writeln(dosya,edit1.text,' kullan�c�s� ',DateTimeToStr(now),' tarihinde giri� yapt�.');
CloseFile(dosya);
kimo:=Trim(edit1.text);
//Form1.Hide;
Form2.ShowModal;
//close;
end else begin
//hak:=hak-1;
Dec(hak);
ShowMessage('KULLANICI ADI VEYA SIFRESI UYU�MUYOR!'+#13+'KALAN HAKKINIZ : '+IntToStr(hak));
if (hak=0) then begin
ShowMessage('NOLUYO YAAA. �YLE DENEMEK OLMAZ. KAPATIYORUZ D�KKANI...');
close;
end;

end;


end;
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
hak:=3;
end;

end.
