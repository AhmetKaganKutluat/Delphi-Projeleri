unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls;

type
  TForm3 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button2: TButton;
    ADOQuery1: TADOQuery;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  soru:integer;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin

if (trim(edit1.text)='') or (trim(edit2.text)='') then
ShowMessage('AD VEYA SOYAD BÖLÜMÜ BOÞ OLAMAZ!')
else begin
ADOQuery1.close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from tablo2 where');
ADOQuery1.SQL.Add('ADI="'+Trim(Edit1.text)+'" and SOYADI="'+trim(edit2.text)+'"');
ADOQuery1.Open;
if (ADOQuery1.RecordCount <1) then ShowMessage('SÝSTEMDE BÖYLE BÝR KAYIT YOKTUR.')
else begin
ShowMessage('ARANAN KAYITLI BÝLGÝ LÝSTELENECEKTÝR.'+#13+'LÜTFEN TAMAM TUÞUNA BASINIZ.');
edit3.Text:=ADOQuery1['ADI'];
edit4.Text:=ADOQuery1['SOYADI'];
edit5.Text:=ADOQuery1['MEMLEKET'];
edit6.Text:=ADOQuery1['ADRES'];
button2.Enabled:=true;
end;
end;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
ADOQuery1.close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('update tablo2 set ADI="'+edit3.text+'",SOYADI="'+edit4.text+'",MEMLEKET="'+edit5.text+'",ADRES="'+edit6.text+'"  ');
ADOQuery1.SQL.Add('where ADI="'+trim(edit1.Text)+'" and SOYADI="'+trim(edit2.text)+'"');
ADOQuery1.ExecSQL;
ShowMessage('BÝLGÝLER BAÞARI ÝLE GÜNCELLENDÝ');
edit1.Clear;
edit2.Clear;
edit3.Clear;
edit4.Clear;
edit5.Clear;
edit6.Clear;

end;

procedure TForm3.FormCreate(Sender: TObject);
begin
Button2.Enabled:=false;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin

if (trim(edit1.text)='') or (trim(edit2.text)='') then
ShowMessage('AD VEYA SOYAD BÖLÜMÜ BOÞ OLAMAZ!')
else begin
ADOQuery1.close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from tablo2 where');
ADOQuery1.SQL.Add('ADI="'+Trim(Edit1.text)+'" and SOYADI="'+trim(edit2.text)+'"');
ADOQuery1.Open;

if (ADOQuery1.RecordCount <1) then ShowMessage('SÝSTEMDE BÖYLE BÝR KAYIT YOKTUR.')
else begin
soru:=Application.MessageBox('kayýt silinsin mi?','silme',4+48);

if(soru=6)  then begin
ADOQuery1.close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('delete from tablo2 where ADI="'+trim(edit1.Text)+'" and SOYADI="'+trim(edit2.text)+'"');
ADOQuery1.ExecSQL;
ShowMessage('ÝLGÝLÝ KAYIT BAÞARI ÝLE SÝLÝNMÝÞTÝR.');
end;
end;
end;
end;

end.
