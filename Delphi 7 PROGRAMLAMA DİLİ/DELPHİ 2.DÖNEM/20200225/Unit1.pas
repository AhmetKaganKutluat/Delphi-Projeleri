unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DB, ADODB, Grids, DBGrids, ExtCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    MaskEdit1: TMaskEdit;
    GroupBox3: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOQuery3: TADOQuery;
    Timer1: TTimer;
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  durum:string;
  i:integer;

implementation

{$R *.dfm}

procedure TForm1.CheckBox1Click(Sender: TObject);
begin

if (CheckBox1.Checked) then begin
durum:='EVLÝ';
CheckBox2.Checked:=false;
end;

end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin

if (CheckBox2.Checked) then begin
durum:=CheckBox2.Caption;
CheckBox1.Checked:=false;
end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
for i := 1 to ADOQuery1.RecordCount do begin
ComboBox1.Items.Add(ADOQuery1['IL']);
ADOQuery1.Next;
end;



end;



procedure TForm1.ComboBox1Click(Sender: TObject);
begin
ComboBox2.Clear;
ADOQuery2.first;
//ADOQuery2.Requery();
if (ComboBox1.ItemIndex=0) then begin
for i := 1 to ADOQuery2.RecordCount do begin
ComboBox2.Items.Add(ADOQuery2['ÝSTANBUL']);
ADOQuery2.Next;
end;
end;

if (ComboBox1.ItemIndex=1) then begin
for i := 1 to ADOQuery2.RecordCount do begin
ComboBox2.Items.Add(ADOQuery2['ANTALYA']);
ADOQuery2.Next;
end;
end;

if (ComboBox1.ItemIndex=2) then begin
for i := 1 to ADOQuery2.RecordCount do begin
ComboBox2.Items.Add(ADOQuery2['ANKARA']);
ADOQuery2.Next;
end;
end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
if (trim(edit1.text)<>'') and (trim(edit2.text)<>'') then
BitBtn1.Enabled:=true
else
BitBtn1.Enabled:=false;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
ADOQuery3.Close;
ADOQuery3.SQL.Clear;
ADOQuery3.SQL.add('insert into tablo3(ADI,SOYADI,IL,ÝLÇE,DURUM,TELEFON,ADRES)');
ADOQuery3.SQL.add('values("'+edit1.text+'","'+edit2.Text+'","'+ComboBox1.text+'","'+ComboBox2.Text+'","'+durum+'","'+MaskEdit1.Text+'","'+edit3.Text+'")');
ADOQuery3.ExecSQL; //oynama yapmak için gerekli kod

ADOQuery3.Close;
ADOQuery3.SQL.Clear;
ADOQuery3.sql.add('select * from tablo3');
ADOQuery3.Open;

edit1.Clear;
edit2.Clear;
edit3.Clear;
ComboBox1.ItemIndex:=-1;
ComboBox2.Items.Clear;
MaskEdit1.Clear;
CheckBox1.Checked:=false;
CheckBox2.Checked:=false;


end;

end.
