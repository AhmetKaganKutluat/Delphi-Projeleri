unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, Grids, DBGrids;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOTable1Kimlik: TAutoIncField;
    ADOTable1ADI: TWideStringField;
    ADOTable1SOYADI: TWideStringField;
    ADOTable1MEMLEKET: TWideStringField;
    ADOTable1MEDENIDURUM: TWideStringField;
    ADOTable1YAS: TWideStringField;
    ADOTable1ADRES: TWideStringField;
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  durum:string;

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
durum:='BEKAR';
CheckBox1.Checked:=false;
end;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
adotable1.Append;//kayýt yapmak için satýr açar.
adotable1.FieldValues['ADI']:=trim(edit1.text);
adotable1.fieldvalues['SOYADI']:=trim(edit2.text);
adotable1['MEMLEKET']:=ComboBox1.text;
adotable1['MEDENIDURUM']:=durum;
adotable1['YAS']:=trim(edit3.text);
adotable1['ADRES']:=trim(edit4.text);
adotable1.Post;
edit1.Clear;
edit2.Clear;
edit3.clear;
edit4.clear;
ComboBox1.itemindex:=-1;
CheckBox1.Checked:=false;
CheckBox2.Checked:=false;
ShowMessage('BÝLGÝLER BAÞARI ÝLE VERÝ TABANINA KAYDEDÝLDÝ!');


end;

end.
