unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids;

type
  TForm2 = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin

ADOTable2.ConnectionString:='Provider=SQLOLEDB.1;Integrated Security=SSPI;Initial Catalog=PZT;Data Source=user-Bilgisayar';
ADOTable2.TableName:='Tablo1';
DataSource2.DataSet:=ADOTable2;
DBGrid2.DataSource:=DataSource2;
ADOTable2.Active:=true;
//inital catalog yerine database data source yerine server
end;

end.
