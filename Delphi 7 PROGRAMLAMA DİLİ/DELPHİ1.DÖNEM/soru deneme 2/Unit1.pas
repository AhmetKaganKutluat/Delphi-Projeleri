unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    ADOTable1say: TIntegerField;
    ADOTable1faktoriyeli: TIntegerField;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  sayi,sonuc:integer;
  i:integer;
  fakt:integer;
implementation

{$R *.dfm}

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in['0'..'9',#8]) then
key:=#0
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  sayi:=strtoint(Edit1.Text);
  sonuc:=1;
  for i:=1 to sayi do begin

  sonuc:=sonuc*i;

  end;
    ShowMessage('faktoriyel : ' + inttostr(sonuc));
    ADOTable1.Append;
    ADOTable1.FieldValues['sayý']:=Edit1.text;
    ADOTable1.FieldValues['faktoriyeli']:=sonuc;
    ADOTable1.Post;

  end;

end.
