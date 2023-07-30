unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, ExtCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
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
ADOTable1.ConnectionString :='Provider=Microsoft.Jet.Oledb.4.0; Data Source=bilgiler1.mdb';
ADOTable1.TableName:='tablo1';
DataSource1.DataSet:=ADOTable1;
DBGrid1.DataSource:=DataSource1;
ADOTable1.Active:=true;

ADOTable2.ConnectionString :='Provider=Microsoft.Ace.Oledb.12.0; Data Source=bilgiler2.accdb';
ADOTable2.TableName:='tablo1';
DataSource2.DataSet:=ADOTable2;
DBGrid2.DataSource:=DataSource2;
ADOTable2.Active:=true;
end;

end.
