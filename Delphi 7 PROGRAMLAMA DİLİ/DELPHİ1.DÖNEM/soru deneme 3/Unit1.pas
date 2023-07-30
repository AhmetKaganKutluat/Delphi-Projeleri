unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Menus, StdCtrls, ExtCtrls, DB, ADODB;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    RadioGroup1: TRadioGroup;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    ADOTable1SAYI1: TIntegerField;
    ADOTable1SAY2: TIntegerField;
    ADOTable1ARET: TWideStringField;
    ADOTable1SONUC: TIntegerField;
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

procedure TForm1.Button1Click(Sender: TObject);
var
x,y:integer;
isaret:char;
sonuc:integer;
begin
x:=strtoint(edit1.Text);
y:=strtoint(edit2.text);
case (RadioGroup1.ItemIndex) of
0: begin
   sonuc:=x+y; label1.Caption:=IntToStr(sonuc );  isaret:='+';
end;
 1: begin
   sonuc:=x-y; label1.Caption:=IntToStr(sonuc );    isaret:='-';
end;
  2: begin
   sonuc:=x*y; label1.Caption:=IntToStr(sonuc );      isaret:='*';
end;
3: begin
   sonuc:=x div y; label1.Caption:=IntToStr(sonuc);     isaret:='/';
end;
4: begin
   sonuc:=x mod y; label1.Caption:=IntToStr(sonuc);      isaret:='.';
end;
end;
  ADOTable1.Append;
  ADOTable1.FieldValues['SAYI1']:=Edit1.Text;
  ADOTable1.FieldValues['SAYÝ2']:=Edit2.Text;
  ADOTable1.FieldValues['ÝÞARET']:=isaret;
  ADOTable1.FieldValues['SONUC']:=sonuc;
  ADOTable1.Post;
 END;
end.
