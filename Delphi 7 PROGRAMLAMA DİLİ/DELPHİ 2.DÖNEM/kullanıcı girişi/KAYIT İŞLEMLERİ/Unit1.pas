unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    procedure FormCreate(Sender: TObject);
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

procedure TForm1.FormCreate(Sender: TObject);
var
i:integer;
begin
for i:=1 to ADOTable1.RecordCount do begin
ComboBox1.Items.Add(ADOTable1['IL']);
ADOTable1.Next;
end;
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
ADOTable2.Append;
ADOTable2.FieldByName('ADI').asstring:=edit1.text;
ADOTable2.FieldByName('SOYADI').asstring:=edit2.text;
ADOTable2.FieldByName('MEMLEKET').asstring:=ComboBox1.Text;
ADOTable2.FieldByName('YAS').asinteger:=strtoint(edit3.text);
ADOTable2.Post;
end;

end.
