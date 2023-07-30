object Form1: TForm1
  Left = 192
  Top = 124
  Width = 979
  Height = 563
  Caption = 'KAYIT '#304#350'LEMLER'#304
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
  object Edit1: TEdit
    Left = 160
    Top = 24
    Width = 177
    Height = 37
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 160
    Top = 72
    Width = 177
    Height = 41
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 160
    Top = 120
    Width = 177
    Height = 21
    ItemHeight = 13
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 160
    Top = 160
    Width = 145
    Height = 41
    TabOrder = 3
  end
  object Button1: TButton
    Left = 440
    Top = 48
    Width = 305
    Height = 161
    Caption = 'KAYDET'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 264
    Width = 963
    Height = 261
    Align = alBottom
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
    Left = 336
    Top = 168
  end
  object DataSource1: TDataSource
    DataSet = ADOTable2
    Left = 464
    Top = 376
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Tablo1'
    Left = 424
    Top = 376
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\bilgiler.mdb;Pers' +
      'ist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 384
    Top = 376
  end
end
