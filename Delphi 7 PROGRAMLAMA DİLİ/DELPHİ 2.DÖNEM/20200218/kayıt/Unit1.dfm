object Form1: TForm1
  Left = 192
  Top = 124
  BorderStyle = bsToolWindow
  Caption = 'Form1'
  ClientHeight = 353
  ClientWidth = 484
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 16
    Top = 16
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 20
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 16
    Top = 48
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 20
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 16
    Top = 80
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 16
    Top = 112
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 3
    TabOrder = 3
  end
  object Button1: TButton
    Left = 176
    Top = 16
    Width = 153
    Height = 113
    Caption = 'SAVE DATA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 189
    Width = 484
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
    Left = 128
    Top = 80
  end
  object DataSource1: TDataSource
    DataSet = ADOTable2
    Left = 272
    Top = 216
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Tablo1'
    Left = 232
    Top = 216
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\bilgiler.mdb;Pers' +
      'ist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 192
    Top = 216
  end
end
