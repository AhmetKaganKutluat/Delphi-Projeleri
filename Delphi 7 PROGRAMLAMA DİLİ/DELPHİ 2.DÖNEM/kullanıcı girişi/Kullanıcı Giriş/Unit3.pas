unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg, DB, ADODB;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Button2: TButton;
    ADOQuery1: TADOQuery;
    Image1: TImage;
    Image2: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
uses unit1;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
ADOQuery1.close; ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT * FROM Tablo3 WHERE');
ADOQuery1.SQL.Add('ADI="'+trim(edit1.text)+'" AND SOYADI="'+trim(edit2.Text)+'"');
ADOQuery1.Open;
if (ADOQuery1.RecordCount=1) then begin
ShowMessage('KAYIT BULUNDU BÝLGÝLER ÝÇÝN TIKLAYINIZ');
edit3.Text:=ADOQuery1['ÝL'];
edit4.Text:=ADOQuery1['ÝLÇE'];
edit5.text:=ADOQuery1['DURUM'];
edit6.Text:=ADOQuery1['TELEFON'];
edit7.Text:=ADOQuery1['ADRES'];



end else begin
ShowMessage('KAYIT BULUNAMADI');
edit1.Clear; edit2.Clear;
end;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('UPDATE TABLO3 SET ÝL="'+edit3.Text+'",ÝLÇE="'+Edit4.Text+'",DURUM="'+edit5.Text+'",TELEFON="'+edit6.Text+'",ADRES="'+edit7.Text+'" WHERE ADI="'+edit1.Text+'" AND SOYADI="'+edit2.Text+'"');
ADOQuery1.ExecSQL;
edit1.clear; edit2.clear; edit3.clear; edit4.clear; edit5.Clear; edit6.Clear; edit7.Clear;

end;

end.
 