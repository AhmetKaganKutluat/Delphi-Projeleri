unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DBCtrls,
  DB, ADODB, Menus;

type
  TForm2 = class(TForm)
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    K1: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure temizle;
    procedure K1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
 uses unit1, Unit3;
 procedure TForm2.temizle;
 begin
 edit1.Clear;
 edit2.Clear;
 edit4.Clear;
 ComboBox1.ItemIndex:=-1;
 end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
StatusBar1.Panels[0].text:='AKTÝF KULLANICI : '+kimo;
StatusBar1.Panels[1].text:=DateTimeToStr(now);
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('insert into tablo2(ADI,SOYADI,MEMLEKET,ADRES) values');
ADOQuery1.SQL.Add('("'+trim(Edit1.text)+'","'+Trim(Edit2.text)+'","'+ComboBox1.text+'","'+Trim(Edit4.text)+'")');
ADOQuery1.ExecSQL;

ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from tablo2');
ADOQuery1.Open;
ShowMessage('BÝLGÝLER KAYIT EDÝLDÝ.');
temizle;

end;

procedure TForm2.FormCreate(Sender: TObject);
begin
ComboBox1.Items.LoadFromFile('iller.txt');
end;

procedure TForm2.K1Click(Sender: TObject);
begin
form3.Showmodal;
end;

end.
