unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    ListBox2: TListBox;
    Button1: TButton;
    Button2: TButton;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
begin
if (ListBox1.ItemIndex < 0) then
ShowMessage('LÜTFEN ÝLLERDEN BÝRÝNÝ SEÇÝNÝZ!')
else  begin
ListBox2.Items.Add(ListBox1.Items.Strings[ListBox1.itemindex] );
ListBox1.Items.Delete(ListBox1.itemindex);

end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
//if (ListBox1.ItemIndex >-1) then
//Button1.Enabled :=true
//else
//Button1.Enabled :=false;

if (ListBox1.Items.Count <1) then
//yada count = 0 da aynýdýr
Button1.Enabled :=false;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
i:integer;
begin
for i:=0 to ListBox1.Items.Count -1 do
begin
ListBox2.Items.Add(ListBox1.Items[i] );
end;
ListBox1.Items.Clear;
Button2.Enabled :=false;
end;

end.
