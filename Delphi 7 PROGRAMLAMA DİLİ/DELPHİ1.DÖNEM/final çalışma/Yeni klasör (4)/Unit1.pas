unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Button1: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADOTable1: TADOTable;
    ADOTable1SAYI1: TWideStringField;
    ADOTable1SAYI2: TWideStringField;
    ADOTable1ISARET: TWideStringField;
    ADOTable1SONUC: TWideStringField;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  sayi1,sayi2:integer;
  islem:string;
  sonuc:real;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
form1.Caption:='Grup Ýþlemi ve Sonuç Ekraný '+DateTimeToStr(now);
Button1.Enabled:=false;

end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if (key=#13) then edit2.SetFocus;
if not(key in['0'..'9',#8]) then key:=#0;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if not(key in['0'..'9',#8]) then key:=#0;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
if not(RadioGroup1.ItemIndex=-1) then Button1.Enabled:=true;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
sayi1:=StrToInt(Edit1.text);
sayi2:=StrToInt(edit2.text);
case RadioGroup1.ItemIndex of
0: begin
islem:='+';
sonuc:=sayi1+sayi2;
label3.Caption:='ÝÞLEMÝN SONUCU : '+FloatToStr(sonuc);
end;

1: begin
islem:='-';
sonuc:=sayi1-sayi2;
label3.Caption:='ÝÞLEMÝN SONUCU : '+FloatToStr(sonuc);
end;

2: begin
islem:='*';
sonuc:=sayi1*sayi2;
label3.Caption:='ÝÞLEMÝN SONUCU : '+FloatToStr(sonuc);
end;

3: begin
islem:='/';
sonuc:=sayi1/sayi2;
label3.Caption:='ÝÞLEMÝN SONUCU : '+FloatToStr(sonuc);
end;

4: begin
islem:='_';
if (sayi1>sayi2) then begin
sonuc:=sayi1-sayi2;
if (sonuc<0) then sonuc:=sonuc*-1;
label3.Caption:='ÝÞLEMÝN SONUCU : '+FloatToStr(sonuc);
end;

if (sayi2>sayi1) then begin
sonuc:=sayi2-sayi1;
if (sonuc<0) then sonuc:=sonuc*-1;
label3.Caption:='ÝÞLEMÝN SONUCU : '+FloatToStr(sonuc);
end;
if (sayi2=sayi1) then begin
sonuc:=0;
end;
end;
end;
ADOTable1.Append;
ADOTable1['SAYI1']:=edit1.text;
ADOTable1['SAYI2']:=edit2.text;
ADOTable1['ISARET']:=islem;
ADOTable1['SONUC']:=sonuc;
ADOTable1.Post;


end;

end.
