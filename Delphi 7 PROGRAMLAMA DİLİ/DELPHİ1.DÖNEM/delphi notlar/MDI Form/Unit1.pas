unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ImgList;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Dosya1: TMenuItem;
    Yeni1: TMenuItem;
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
    SELAMKAMAZ1: TMenuItem;
    ImageList1: TImageList;
    Yerletir1: TMenuItem;
    Basamakla1: TMenuItem;
    YanYana1: TMenuItem;
    N3: TMenuItem;
    mnKapat1: TMenuItem;
    procedure Yeni1Click(Sender: TObject);
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
   uses unit2,unit3;
   //Bu  kodlarý ben yazdým
procedure TForm1.Yeni1Click(Sender: TObject);
begin
TForm2.Create(Self);
Yeni1.Enabled :=false;
end;

procedure TForm1.A1Click(Sender: TObject);
begin
TForm3.Create(Self);
A1.Enabled :=false;
end;

procedure TForm1.Basamakla1Click(Sender: TObject);
begin
Cascade;
end;

procedure TForm1.YanYana1Click(Sender: TObject);
begin
Tile;
end;

procedure TForm1.mnKapat1Click(Sender: TObject);
var
i:integer;
begin
for i:=0 to MDIChildCount-1 do
MDIChildren[i].Close; 
end;

end.
