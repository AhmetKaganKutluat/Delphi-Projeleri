unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ImgList;

type
  TForm2 = class(TForm)
    PopupMenu1: TPopupMenu;
    benkimim1: TMenuItem;
    ImageList1: TImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
action:=cafree;
form1.n11.Enabled:=true;
end;

end.
 