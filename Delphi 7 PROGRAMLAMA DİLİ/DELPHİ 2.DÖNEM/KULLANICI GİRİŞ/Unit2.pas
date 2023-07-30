unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Buttons, DB, ADODB;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
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
  Form2: TForm2;
  sayac:integer;
  bilgi:string;
implementation

{$R *.dfm}
  uses  unit1;
procedure TForm2.BitBtn1Click(Sender: TObject);
begin
if (trim(edit1.text)='') then begin
edit1.Color :=clLime;
ShowMessage('KULLANICI ADINI YAZMADINIZ!');
edit1.SetFocus
end else begin
if (trim(edit2.text)='') then begin
edit2.Color :=clLime;
ShowMessage('KULLANICI ÞÝFRESÝNÝ YAZMADINIZ');
edit2.SetFocus
end else begin
ADOQuery1.Close;
ADOQuery1.sql.Clear;
ADOQuery1.SQL.add('SELECT * FROM TABLO4 WHERE');
ADOQuery1.SQL.add('KULLANICI="'+trim(edit1.Text)+'" and SIFRE="'+trim(edit2.Text)+'"');
ADOQuery1.Active:=true;

if (ADOQuery1.RecordCount =1) then begin
AssignFile (dosya,'girenler.txt');
Append (dosya);
Writeln(dosya,edit1.text,' kullanýcýsý ',
'  ',datetimetostr(now),' tarihinde sisteme girdi.');
CloseFile(dosya);

bilgi:=trim(edit1.Text);
Form2.Hide;
form1.ShowModal;
close
end else
Dec(sayac);
ShowMessage('KULLANICI ADI VEYA ÞÝFRE UYUÞMUYOR. '+
#13+'kalan hakkýnýz:'+inttostr(sayac));
//sayac:=sayac-1;

if (sayac=0) then begin
ShowMessage('3 hakkýnýzda doldu...');
close;
end;
end;end;
end;
procedure TForm2.FormCreate(Sender: TObject);
begin
sayac:=3;
end;

end.
