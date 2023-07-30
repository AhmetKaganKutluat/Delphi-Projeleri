object Form1: TForm1
  Left = 223
  Top = 280
  Width = 979
  Height = 587
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
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 2
    OnChange = ComboBox1Change
  end
  object ComboBox2: TComboBox
    Left = 96
    Top = 128
    Width = 161
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 3
  end
  object GroupBox1: TGroupBox
    Left = 320
    Top = 32
    Width = 537
    Height = 233
    TabOrder = 4
    object CheckBox1: TCheckBox
      Left = 8
      Top = 16
      Width = 81
      Height = 25
      Caption = 'EVL'#304
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 8
      Top = 40
      Width = 89
      Height = 17
      Caption = 'BEKAR'
      TabOrder = 1
      OnClick = CheckBox2Click
    end
    object MaskEdit1: TMaskEdit
      Left = 8
      Top = 64
      Width = 97
      Height = 21
      EditMask = '!\(999\)000-00-00;1;_'
      MaxLength = 14
      TabOrder = 2
      Text = '(   )   -  -  '
    end
    object BitBtn1: TBitBtn
      Left = 24
      Top = 96
      Width = 121
      Height = 49
      Caption = 'KAYDET'
      TabOrder = 3
      OnClick = BitBtn1Click
      Kind = bkOK
    end
    object Edit4: TEdit
      Left = 232
      Top = 24
      Width = 105
      Height = 21
      TabOrder = 4
    end
    object Edit5: TEdit
      Left = 360
      Top = 24
      Width = 105
      Height = 21
      TabOrder = 5
    end
    object Button2: TButton
      Left = 232
      Top = 104
      Width = 233
      Height = 57
      Caption = 'G'#220'NCELLEME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = Button2Click
    end
  end
  object Edit3: TEdit
    Left = 96
    Top = 168
    Width = 177
    Height = 97
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 310
    Width = 963
    Height = 210
    Align = alBottom
    DataSource = DataSource1
    Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 520
    Width = 963
    Height = 29
    Panels = <
      item
        Width = 250
      end
      item
        Alignment = taCenter
        Width = 200
      end
      item
        Width = 50
      end>
  end
  object Button1: TButton
    Left = 552
    Top = 88
    Width = 233
    Height = 33
    Caption = 'S'#304'L'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = Button1Click
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
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 40
    Top = 208
  end
  object Timer2: TTimer
    Interval = 1
    OnTimer = Timer2Timer
    Left = 512
    Top = 88
  end
end
