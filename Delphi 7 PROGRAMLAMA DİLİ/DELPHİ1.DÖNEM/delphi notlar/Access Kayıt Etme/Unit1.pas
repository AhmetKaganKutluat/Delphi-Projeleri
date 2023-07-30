unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    ADOTable1Kimlik: TAutoIncField;
    ADOTable1Ad: TWideStringField;
    ADOTable1Soyad: TWideStringField;
    ADOTable1Memleket: TWideStringField;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
ADOTable1.Append;
ADOTable1.FieldValues['Adý']:=Edit1.Text;
ADOTable1.FieldValues['Soyadý']:=Edit2.Text;
ADOTable1['MEMLEKET']:=ComboBox1.Text;
ADOTable1.Post;
edit1.Clear; Edit2.Clear;
ComboBox1.ItemIndex :=-1;
edit1.SetFocus;
end;

end.
