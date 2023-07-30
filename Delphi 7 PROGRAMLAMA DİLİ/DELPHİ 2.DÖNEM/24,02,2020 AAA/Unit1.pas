unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DB, ADODB, Grids, DBGrids;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    MaskEdit1: TMaskEdit;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  durum:string;
  sec:integer;
  d:string;

implementation

{$R *.dfm}

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
if(CheckBox1.Checked) then begin
d:='EVLÝ';
 durum:=CheckBox1.Caption;
CheckBox2.Checked:=false;
end;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
if(CheckBox2.Checked) then begin
d:='BEKAR';
  durum:=CheckBox2.Caption;
CheckBox1.Checked:=false;
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
i:integer;
begin
ComboBox2.Clear;
for i:=1 to   ADOTable1.RecordCount do begin
ComboBox1.Items.add(ADOTable1['ÝL']);
ADOTable1.Next;
end;


end;


procedure TForm1.ComboBox1Change(Sender: TObject);
var
i:integer;
begin
sec:=ComboBox1.ItemIndex;
case sec of
0:begin
ComboBox2.Clear;
ADOTable2.First;
for i:=1 to   ADOTable2.RecordCount do begin
ComboBox2.Items.add(ADOTable2['ÝSTANBUL']);
ADOTable2.Next;
end;

end;
1:begin
ComboBox2.Clear;
ADOTable2.First;
for i:=1 to   ADOTable2.RecordCount do begin

ComboBox2.Items.add(ADOTable2['ANKARA']);

ADOTable2.Next;
end;

end;
2:begin
ComboBox2.Clear;
ADOTable2.First;
for i:=1 to   ADOTable2.RecordCount do begin

ComboBox2.Items.add(ADOTable2['ANTALYA']);
ADOTable2.Next;
end;

end;
end;
    end;
procedure TForm1.BitBtn1Click(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('INSERT INTO Tablo3(ADI,SOYADI,ÝL,ÝLÇE,TELEFON,DURUM,ADRES) VALUES("'+Edit1.Text+'","'+Edit2.Text+'","'+ComboBox1.Text+'","'+ComboBox2.Text+'","'+MaskEdit1.Text+'","'+d+'","'+Edit3.Text+'")');
ADOQuery1.ExecSQL;

ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Tablo3');
ADOQuery1.Open;
end;

end.
