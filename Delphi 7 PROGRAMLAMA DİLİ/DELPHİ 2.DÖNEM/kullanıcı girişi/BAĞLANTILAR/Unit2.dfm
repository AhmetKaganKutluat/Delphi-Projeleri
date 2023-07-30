object Form2: TForm2
  Left = 412
  Top = 209
  Width = 647
  Height = 488
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 617
    Height = 129
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 312
    Width = 617
    Height = 129
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=PZT;Data Source=user-Bilgisayar'
    CursorType = ctStatic
    TableName = 'Tablo1'
    Left = 472
    Top = 48
  end
  object ADOTable2: TADOTable
    Left = 456
    Top = 344
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 400
    Top = 48
  end
  object DataSource2: TDataSource
    Left = 408
    Top = 344
  end
end
