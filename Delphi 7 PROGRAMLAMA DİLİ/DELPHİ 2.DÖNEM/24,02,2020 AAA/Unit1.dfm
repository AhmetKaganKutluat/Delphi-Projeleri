object Form1: TForm1
  Left = 230
  Top = 167
  Width = 979
  Height = 563
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
    Left = 96
    Top = 32
    Width = 161
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 96
    Top = 64
    Width = 161
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 96
    Top = 96
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    OnChange = ComboBox1Change
  end
  object ComboBox2: TComboBox
    Left = 96
    Top = 128
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 3
  end
  object GroupBox1: TGroupBox
    Left = 320
    Top = 32
    Width = 537
    Height = 161
    TabOrder = 4
    object CheckBox1: TCheckBox
      Left = 40
      Top = 24
      Width = 81
      Height = 25
      Caption = 'EVL'#304
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 40
      Top = 56
      Width = 89
      Height = 17
      Caption = 'BEKAR'
      TabOrder = 1
      OnClick = CheckBox2Click
    end
    object MaskEdit1: TMaskEdit
      Left = 40
      Top = 96
      Width = 149
      Height = 21
      EditMask = '!\(999\)000-00-00;1;_'
      MaxLength = 14
      TabOrder = 2
      Text = '(   )   -  -  '
    end
    object BitBtn1: TBitBtn
      Left = 256
      Top = 40
      Width = 177
      Height = 57
      Caption = 'BURAYA BAS'
      TabOrder = 3
      OnClick = BitBtn1Click
      Kind = bkOK
    end
  end
  object Edit3: TEdit
    Left = 96
    Top = 208
    Width = 753
    Height = 21
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 120
    Top = 264
    Width = 761
    Height = 217
    DataSource = DataSource1
    Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 6
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
    TableName = 'Tablo1'
    Left = 192
    Top = 88
  end
  object ADOTable2: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\bilgiler.mdb;Pers' +
      'ist Security Info=False'
    CursorType = ctStatic
    TableName = 'Tablo2'
    Left = 192
    Top = 128
  end
  object ADOQuery1: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\bilgiler.mdb;Pers' +
      'ist Security Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Tablo3'
      '')
    Left = 504
    Top = 312
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 464
    Top = 312
  end
end
