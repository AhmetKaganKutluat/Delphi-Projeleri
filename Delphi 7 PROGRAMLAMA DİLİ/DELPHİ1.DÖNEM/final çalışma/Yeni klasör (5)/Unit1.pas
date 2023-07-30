unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    ListBox2: TListBox;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  i:integer;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
Button1.enabled:=false;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
if not(ListBox1.ItemIndex<0) then begin
Button1.Enabled:=true;
end;

if (listbox1.items.count=0) then begin
button1.Enabled:=false;
button2.enabled:=false;
end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
listbox2.items.Add(listbox1.items.strings[listbox1.itemindex]);
listbox1.Items.Delete(listbox1.itemindex);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin

for i:=0 to ListBox1.Items.Count -1 do begin
ListBox2.Items.add(ListBox1.Items.Strings[i])
end;
listbox1.Clear;

end;

end.
