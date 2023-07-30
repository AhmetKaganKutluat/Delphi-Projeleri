unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB;

type
  TForm1 = class(TForm)
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
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
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
ADOTable1.ConnectionString:='Provider=Microsoft.Jet.Oledb.4.0;Data source=bilgiler1.mdb';
ADOTable1.TableName:='Tablo1';
DataSource1.DataSet:=ADOTable1;
DBGrid1.DataSource:=DataSource1;
ADOTable1.Active:=true;


ADOTable2.ConnectionString:='Provider=Microsoft.Ace.Oledb.12.0;data source=bilgiler2.accdb';
ADOTable2.TableName:='Tablo1';
DataSource2.DataSet:=ADOTable2;
DBGrid2.DataSource:=DataSource2;
ADOTable2.Active:=true;

end;

end.
