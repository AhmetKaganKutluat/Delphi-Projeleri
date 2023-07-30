unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    Edit3: TEdit;
    Button1: TButton;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADOTable2: TADOTable;
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
ComboBox1.Items.Add(ADOTable1.FieldValues['IL']);
ADOTable1.Next;
end;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
ADOTable2.Insert;
ADOTable2.FieldByName('ADI').AsString:=edit1.text;
ADOTable2.FieldByName('SOYADI').AsString:=edit2.text;
ADOTable2.FieldByName('MEMLEKET').AsString:=ComboBox1.text;
ADOTable2.FieldByName('YAS').AsInteger:=StrToInt(edit3.Text);
ADOTable2.post;
edit1.Clear;
edit3.Clear;
edit2.Clear;
ComboBox1.ItemIndex:=-1;

end;

end.
