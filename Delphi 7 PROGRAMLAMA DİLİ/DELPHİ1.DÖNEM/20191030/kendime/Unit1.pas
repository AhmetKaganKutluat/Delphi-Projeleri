unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    BitBtn1: TBitBtn;
    ListBox1: TListBox;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
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
begin
//form adý deðiþtirme
form1.Caption:='BÝLGÝSAYAR PROGRAMCILIÐI';
edit1.Hint:='Müþterinin adý alanýdýr.';
edit2.Hint:='Müþterinin soyadý alanýdýr.';
edit3.hint:='Müþterinin adresi alanýdýr.';
ComboBox1.Hint:='Lütfen burada memeleketi seçiniz.';
ComboBox1.ShowHint:=true;
Edit2.ShowHint:=true;
Edit1.ShowHint:=true;
edit3.ShowHint:=true;
ComboBox1.Items.Add('KAYSERÝ');
ComboBox1.Items.Add('ANTALYA');
ComboBox1.Items.Add('SAMSUN');
ComboBox1.Items.Add('ISPARTA');
ComboBox1.Items.Add('ARTVÝN');
ComboBox1.Sorted:=True;
end;
end.

