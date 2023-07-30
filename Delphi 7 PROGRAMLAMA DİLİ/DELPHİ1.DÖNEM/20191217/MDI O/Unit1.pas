unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ImgList;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Dosya1: TMenuItem;
    YEni1: TMenuItem;
    A1: TMenuItem;
    Kaydet1: TMenuItem;
    FarklKaydet1: TMenuItem;
    N1: TMenuItem;
    k1: TMenuItem;
    Dzen1: TMenuItem;
    Kes1: TMenuItem;
    Kopyala1: TMenuItem;
    Yaptr1: TMenuItem;
    N2: TMenuItem;
    mnSe1: TMenuItem;
    Ademnl1: TMenuItem;
    ImageList1: TImageList;
    Yerletir1: TMenuItem;
    Basamakla1: TMenuItem;
    YanYana1: TMenuItem;
    N3: TMenuItem;
    mnKapat1: TMenuItem;
    procedure YEni1Click(Sender: TObject);
    procedure A1Click(Sender: TObject);
    procedure Basamakla1Click(Sender: TObject);
    procedure YanYana1Click(Sender: TObject);
    procedure mnKapat1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation



{$R *.dfm}

// bu kodlarý ben yazdým
uses Unit2,unit3;


procedure TForm1.YEni1Click(Sender: TObject);
begin
TForm2.Create(self);
YEni1.Enabled:=false;
end;

procedure TForm1.A1Click(Sender: TObject);
begin
tform3.create(self);
A1.Enabled:=false;
end;

procedure TForm1.Basamakla1Click(Sender: TObject);
begin
cascade;
end;

procedure TForm1.YanYana1Click(Sender: TObject);
begin
tile;
end;

procedure TForm1.mnKapat1Click(Sender: TObject);
var
i:integer;
begin
for i:=0 to MDIChildcount -1 do
MDIChildren[i].Close;

end;

end.
