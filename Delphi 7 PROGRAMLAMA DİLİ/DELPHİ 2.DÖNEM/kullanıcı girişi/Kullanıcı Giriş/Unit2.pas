unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, DB, ADODB, Buttons;

type
  TForm2 = class(TForm)
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
  Form2: TForm2;
  sayac:integer;
  bilgi:string;

implementation
uses unit1;


{$R *.dfm}

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
if (Trim(edit1.text)='') then begin
edit1.Color:=clGrayText;
ShowMessage('KULLANICI ADI BOS BIRAKILAMAZ!');
edit1.SetFocus
end else begin
if (Trim(edit2.text)='') then begin
edit2.Color:=clGrayText;
ShowMessage('SIFRE BOS BIRAKILAMAZ!');
edit2.SetFocus;
end else begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM TABLO4 WHERE');
ADOQuery1.SQL.Add('KULLANICI="'+Trim(edit1.text)+'" and SIFRE="'+trim(edit2.text)+'"');
ADOQuery1.Open;
if (sayac=0) then begin
ShowMessage('3 DEN FAZLA HATALI GIRIS YAPTINIZ PROGRAM KAPATILIYOR');
close;
end;
if (ADOQuery1.RecordCount =1) then begin
AssignFile(dosya,'girenler.txt');
Append(dosya);
Writeln(dosya,edit1.text,'  Kullanýcýsý','  ',datetimetostr(now),' Tarihinde Sisteme Girdi.');
CloseFile(dosya);


bilgi:=trim(edit1.text);
Form2.Hide;
Form1.ShowModal;
close
end else begin
ShowMessage('KULLANICI ADI VEYA SIFRE UYUSMUYOR  '+inttostr(sayac)+'  HAKKINIZ KALDI');
edit1.Clear;
edit2.Clear;
edit1.SetFocus;
sayac:=sayac-1;




end;
end;
end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
sayac:=3;
end;

end.
