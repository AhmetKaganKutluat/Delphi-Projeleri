unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ImgList;

type
  TForm2 = class(TForm)
    PopupMenu1: TPopupMenu;
    ImageList1: TImageList;
    BenKimim1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BenKimim1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
uses unit1;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=caFree;
 form1.YEni1.Enabled:=true;
end;

procedure TForm2.BenKimim1Click(Sender: TObject);
begin
ShowMessage('ADEM ÜNLÜ');
end;

end.
 