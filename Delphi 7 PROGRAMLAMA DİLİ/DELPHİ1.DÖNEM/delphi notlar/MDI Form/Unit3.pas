unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm3 = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}
uses unit1;
procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action :=caFree;
Form1.A1.Enabled :=true;
end;

end.
 