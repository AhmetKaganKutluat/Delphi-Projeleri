unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids;

type
  TForm3 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
    ADOTable2: TADOTable;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
ADOTable2.ConnectionString:='Provider=SQLOLEDB.1;Integrated Security=SSPI;Initial Catalog=LCW;Data Source=User-Bilgisayar';
ADOTable2.TableName:='Table_1';
DataSource2.DataSet:=ADOTable2;
DBGrid2.DataSource:=DataSource2;
ADOTable2.Open;

end;

end.
