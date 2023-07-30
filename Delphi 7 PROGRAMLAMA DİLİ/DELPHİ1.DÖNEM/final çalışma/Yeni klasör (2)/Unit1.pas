unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADOTable1: TADOTable;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
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

procedure TForm1.FormShow(Sender: TObject);
begin
case (MessageDlg('bilgiler yüklensin mi?',mtConfirmation,[mbyes,mbno],0)) of
mrno: form1.close;
end;
end;



procedure TForm1.Button1Click(Sender: TObject);
begin
case (MessageDlg('bilgiler yüklensin mi?',mtConfirmation,[mbyes,mbno],0)) of
mryes: form1.close;
end;
end;

end.
