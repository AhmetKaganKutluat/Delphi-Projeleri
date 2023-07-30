object Form2: TForm2
  Left = 285
  Top = 202
  BorderStyle = bsToolWindow
  Caption = 'M'#220#350'TER'#304' KAYI EKRANI'
  ClientHeight = 366
  ClientWidth = 664
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
  object Label1: TLabel
    Left = 56
    Top = 8
    Width = 24
    Height = 13
    Caption = 'ADI :'
  end
  object Label2: TLabel
    Left = 56
    Top = 40
    Width = 46
    Height = 13
    Caption = 'SOYADI :'
  end
  object Label3: TLabel
    Left = 56
    Top = 72
    Width = 65
    Height = 13
    Caption = 'MEMLEKET :'
  end
  object Label4: TLabel
    Left = 56
    Top = 104
    Width = 43
    Height = 13
    Caption = 'ADRES :'
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 333
    Width = 664
    Height = 33
    Panels = <
      item
        Width = 200
      end
      item
        Width = 150
      end
      item
        Alignment = taCenter
        Width = 100
      end
      item
        Width = 50
      end>
  end
  object Edit1: TEdit
    Left = 128
    Top = 8
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 30
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 128
    Top = 40
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 30
    TabOrder = 2
  end
  object ComboBox1: TComboBox
    Left = 128
    Top = 72
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 128
    Top = 104
    Width = 521
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 150
    TabOrder = 4
  end
  object BitBtn1: TBitBtn
    Left = 464
    Top = 16
    Width = 177
    Height = 73
    Cursor = crHandPoint
    Caption = 'S'#304'STEME Y'#220'KLE'
    TabOrder = 5
    OnClick = BitBtn1Click
    Kind = bkAll
    Layout = blGlyphBottom
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 180
    Width = 664
    Height = 153
    Align = alBottom
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ADI'
        Title.Alignment = taCenter
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOYADI'
        Title.Alignment = taCenter
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MEMLEKET'
        Title.Alignment = taCenter
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ADRES'
        Title.Alignment = taCenter
        Width = 250
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 143
    Width = 664
    Height = 37
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Align = alBottom
    Hints.Strings = (
      #304'lk Kay'#305't'
      #214'nceki Kay'#305't'
      'Sonraki Kay'#305't'
      'Son Kay'#305't'
      'Edit record'
      'Post edit'
      'Cancel edit'
      'Refresh data')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 368
    Top = 48
  end
  object ADOQuery1: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=.\bilgiler.accdb;P' +
      'ersist Security Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tablo2')
    Left = 296
    Top = 232
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 344
    Top = 232
  end
end
