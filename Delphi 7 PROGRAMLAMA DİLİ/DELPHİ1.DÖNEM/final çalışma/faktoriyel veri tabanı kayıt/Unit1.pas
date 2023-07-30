unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    DBGrid1: TDBGrid;
    ADOTable1sayi: TWideStringField;
    ADOTable1faktoriyel: TWideStringField;
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
faktoriyel,i,sayi:integer;
begin
faktoriyel:=1;
sayi:=StrToInt(edit1.text);
for i:=1 to sayi do begin
faktoriyel:=faktoriyel*i;
end;
ShowMessage(IntToStr(faktoriyel));
ADOTable1.Append;
ADOTable1['sayi']:=trim(edit1.text);
ADOTable1['faktoriyel']:=trim(inttostr(faktoriyel));
end;

end.
