unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ImgList;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    ImageList1: TImageList;
    a1: TMenuItem;
    N11: TMenuItem;
    N21: TMenuItem;
    N1: TMenuItem;
    k1: TMenuItem;
    dzen1: TMenuItem;
    yan1: TMenuItem;
    aa1: TMenuItem;
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure yan1Click(Sender: TObject);
    procedure aa1Click(Sender: TObject);
    procedure k1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses unit2,unit3;

procedure TForm1.N11Click(Sender: TObject);
begin
tform2.Create(self);
n11.enabled:=false;
end;

procedure TForm1.N21Click(Sender: TObject);
begin
tform3.Create(self);
n21.enabled:=false;
end;

procedure TForm1.yan1Click(Sender: TObject);
begin
tile;
end;

procedure TForm1.aa1Click(Sender: TObject);
begin
cascade;
end;

procedure TForm1.k1Click(Sender: TObject);
var
i:integer;
begin
for i:=0 to MDIChildCount-1 do begin
MDIChildren[i].close;
end;
end;

end.
