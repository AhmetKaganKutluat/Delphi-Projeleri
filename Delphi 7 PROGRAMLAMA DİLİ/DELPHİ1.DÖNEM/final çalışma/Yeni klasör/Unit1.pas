unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADOTable1: TADOTable;
    ADOTable1sayi1: TWideStringField;
    ADOTable1sayi2: TWideStringField;
    ADOTable1islem: TWideStringField;
    ADOTable1sonuc: TWideStringField;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if (key=#13) then edit2.setfocus;
if not (key in ['0'..'9',#8]) then begin
key:=#0;
end;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if (key=#13) then edit3.setfocus;
if not (key in ['0'..'9',#8]) then begin
key:=#0;
end;
end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in['+','-','*','/',#8]) then begin
key:=#0;
end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
sayi1,sayi2:integer;
islem:string;
sonuc:real;
begin
sayi1:=strtoint(edit1.text);
sayi2:=StrToInt(edit2.text);
islem:=edit3.text;

if (islem='+') then
begin
sonuc:=sayi1+sayi2;
ShowMessage(floatToStr(sonuc));
end;

if (islem='-') then
begin
sonuc:=sayi1-sayi2;
ShowMessage(floatToStr(sonuc));
end;

if (islem='*') then
begin
sonuc:=sayi1*sayi2;
ShowMessage(floatToStr(sonuc));
end;

if (islem='/') then
begin
sonuc:=sayi1 / sayi2;
ShowMessage(floatToStr(sonuc));
end;

if (islem='+') or (islem='-') or (islem='/') or (islem='*') then
begin
adotable1.Append;
adotable1['sayi1']:=edit1.text;
adotable1['sayi2']:=edit2.text;
adotable1['islem']:=edit3.text;
adotable1['sonuc']:=sonuc;
end else
showmessage('yanlýþ iþlem seçimi');


end;

end.
