object Form1: TForm1
  Left = 189
  Top = 118
  BorderStyle = bsToolWindow
  ClientHeight = 453
  ClientWidth = 743
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
    Left = 48
    Top = 48
    Width = 161
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 48
    Top = 80
    Width = 161
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 48
    Top = 112
    Width = 161
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 2
    OnChange = ComboBox1Change
  end
  object ComboBox2: TComboBox
    Left = 48
    Top = 144
    Width = 161
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 3
  end
  object GroupBox1: TGroupBox
    Left = 240
    Top = 16
    Width = 457
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
      Left = 128
      Top = 24
      Width = 113
      Height = 57
      Caption = 'KAYDET'
      TabOrder = 3
      OnClick = BitBtn1Click
      Kind = bkOK
    end
    object Button1: TButton
      Left = 248
      Top = 24
      Width = 105
      Height = 57
      Caption = 'S'#304'L'
      TabOrder = 4
      OnClick = Button1Click
    end
  end
  object Edit3: TEdit
    Left = 24
    Top = 192
    Width = 681
    Height = 21
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 207
    Width = 743
    Height = 217
    Align = alBottom
    DataSource = DataSource1
    Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ADI'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOYADI'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = #304'L'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = #304'L'#199'E'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFON'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DURUM'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ADRES'
        Width = 100
        Visible = True
      end>
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 424
    Width = 743
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
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\bilgiler.mdb;Pers' +
      'ist Security Info=False'
    CursorType = ctStatic
    TableName = 'Tablo1'
    Left = 144
    Top = 104
  end
  object ADOTable2: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\bilgiler.mdb;Pers' +
      'ist Security Info=False'
    CursorType = ctStatic
    TableName = 'Tablo2'
    Left = 144
    Top = 144
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
    Left = 520
    Top = 400
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 456
    Top = 392
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 376
    Top = 288
  end
end
