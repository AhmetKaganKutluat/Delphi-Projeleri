unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, Grids, DBGrids;

type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADOTable1: TADOTable;
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    ADOTable1birincisayi: TIntegerField;
    ADOTable1ikincisayi: TIntegerField;
    ADOTable1ncsayi: TIntegerField;
    Timer1: TTimer;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit2.SetFocus;
if not (key in['0'..'9',#8]) then
key:=#0;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit3.SetFocus;
if not (key in['0'..'9',#8]) then
key:=#0;
end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin

if not (key in['0'..'9',#8]) then
key:=#0;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
ShowMessage('birinci sayi :'+edit1.text + #13 + 'ikinci sayi : ' + edit2.text + #13 + 'üçüncü sayi : ' +edit3.Text      );
ADOTable1.Append;
ADOTable1.FieldValues['birinci sayi']:= Edit1.Text;
ADOTable1.FieldValues['ikinci sayi']:=  Edit2.Text;
ADOTable1.FieldValues['üçüncü sayi']:=  Edit3.Text;
ADOTable1.Post;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
if (Edit1.Text='')  or (Edit2.Text='') or (Edit3.Text='') then
Button1.Enabled:=false
else begin
Button1.Enabled:=true;
end;
end;

end.
