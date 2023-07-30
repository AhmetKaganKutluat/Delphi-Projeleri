object Form1: TForm1
  Left = 526
  Top = 254
  Width = 468
  Height = 282
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 24
    Top = 48
    Width = 113
    Height = 65
    Caption = 'hesapla'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 16
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 123
    Width = 452
    Height = 120
    Align = alBottom
    DataSource = DataSource1
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 128
    Top = 176
  end
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=./faktoriyelveritab' +
      'ani.mdb;Persist Security Info=False'
    CursorType = ctStatic
    TableName = 'Tablo1'
    Left = 168
    Top = 176
    object ADOTable1sayi: TWideStringField
      FieldName = 'sayi'
      Size = 10
    end
    object ADOTable1faktoriyel: TWideStringField
      FieldName = 'faktoriyel'
      Size = 10
    end
  end
end
