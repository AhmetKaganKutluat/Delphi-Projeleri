object Form1: TForm1
  Left = 350
  Top = 187
  BorderStyle = bsDialog
  Caption = 'KAYIT '#304#350'LEMLER'#304
  ClientHeight = 460
  ClientWidth = 715
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 64
    Top = 40
    Width = 233
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 64
    Top = 80
    Width = 233
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 64
    Top = 152
    Width = 57
    Height = 25
    TabOrder = 2
  end
  object ComboBox1: TComboBox
    Left = 64
    Top = 120
    Width = 233
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 3
  end
  object Button1: TButton
    Left = 328
    Top = 32
    Width = 177
    Height = 113
    Caption = 'KAYDET'
    TabOrder = 4
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 296
    Width = 715
    Height = 164
    Align = alBottom
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\bilgiler.mdb;Pers' +
      'ist Security Info=False'
    CursorType = ctStatic
    TableName = 'Tablo2'
    Left = 32
    Top = 120
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Tablo1'
    Left = 552
    Top = 320
  end
  object DataSource1: TDataSource
    DataSet = ADOTable2
    Left = 504
    Top = 320
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\bilgiler.mdb;Pers' +
      'ist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 408
    Top = 320
  end
end
