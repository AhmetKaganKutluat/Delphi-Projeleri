object Form1: TForm1
  Left = 249
  Top = 121
  BorderStyle = bsToolWindow
  Caption = 'Form1'
  ClientHeight = 481
  ClientWidth = 732
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
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 115
    Height = 13
    Caption = #214#286'RENC'#304' NUMARASI :'
  end
  object Label2: TLabel
    Left = 56
    Top = 40
    Width = 76
    Height = 13
    Caption = #214#286'RENC'#304' ADI :'
  end
  object Label3: TLabel
    Left = 32
    Top = 64
    Width = 98
    Height = 13
    Caption = #214#286'RENC'#304' SOYADI :'
  end
  object Label4: TLabel
    Left = 80
    Top = 192
    Width = 52
    Height = 13
    Caption = 'B'#214'L'#220'M'#220' :'
  end
  object Label5: TLabel
    Left = 56
    Top = 216
    Width = 77
    Height = 13
    Caption = 'ALDI'#286'I DERS : '
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 241
    Width = 732
    Height = 120
    Align = alBottom
    DataSource = DataSource1
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'OGRNO'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ADI'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOYADI'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SINIFI'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BOLUMU'
        Width = 200
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 361
    Width = 732
    Height = 120
    Align = alBottom
    DataSource = DataSource2
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'OGRNO'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DERS'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'V'#304'ZE'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F'#304'NAL'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORTALAMA'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DURUM'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HARF'
        Width = 60
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 136
    Top = 16
    Width = 169
    Height = 21
    MaxLength = 11
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 136
    Top = 40
    Width = 169
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 25
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 136
    Top = 64
    Width = 169
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 25
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 144
    Top = 88
    Width = 145
    Height = 89
    Caption = 'SINIFI'
    TabOrder = 3
    object CheckBox1: TCheckBox
      Left = 8
      Top = 16
      Width = 129
      Height = 17
      Caption = 'HAZIRLIK SINIFI   (0)'
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 8
      Top = 40
      Width = 129
      Height = 17
      Caption = 'B'#304'R'#304'NC'#304' SINIF       (1)'
      TabOrder = 1
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 8
      Top = 64
      Width = 129
      Height = 17
      Caption = #304'K'#304'NC'#304' SINIF          (2)'
      TabOrder = 2
      OnClick = CheckBox3Click
    end
  end
  object ComboBox1: TComboBox
    Left = 136
    Top = 192
    Width = 169
    Height = 21
    Style = csDropDownList
    CharCase = ecUpperCase
    ItemHeight = 13
    Sorted = True
    TabOrder = 4
    OnChange = ComboBox1Change
  end
  object ComboBox2: TComboBox
    Left = 136
    Top = 216
    Width = 169
    Height = 21
    Style = csDropDownList
    CharCase = ecUpperCase
    ItemHeight = 13
    Sorted = True
    TabOrder = 5
  end
  object GroupBox2: TGroupBox
    Left = 320
    Top = 16
    Width = 385
    Height = 129
    Caption = 'NOT G'#304'R'#304#350' EKRANI'
    TabOrder = 6
    object Label6: TLabel
      Left = 24
      Top = 32
      Width = 68
      Height = 13
      Caption = 'V'#304'ZE SINAVI :'
    end
    object Label7: TLabel
      Left = 16
      Top = 56
      Width = 74
      Height = 13
      Caption = 'F'#304'NAL SINAVI :'
    end
    object Label8: TLabel
      Left = 232
      Top = 32
      Width = 102
      Height = 13
      Caption = 'DERS ORTALAMASI'
    end
    object Label9: TLabel
      Left = 232
      Top = 56
      Width = 90
      Height = 13
      Caption = 'GE'#199'ME DURUMU'
    end
    object Edit4: TEdit
      Left = 96
      Top = 32
      Width = 121
      Height = 21
      MaxLength = 3
      TabOrder = 0
      OnKeyPress = Edit4KeyPress
    end
    object Edit5: TEdit
      Left = 96
      Top = 56
      Width = 121
      Height = 21
      MaxLength = 3
      TabOrder = 1
      OnKeyPress = Edit5KeyPress
    end
    object Button1: TButton
      Left = 120
      Top = 88
      Width = 137
      Height = 25
      Caption = 'HESAPLA'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object Button2: TButton
    Left = 320
    Top = 152
    Width = 385
    Height = 81
    Caption = 'S'#304'STEME Y'#220'KLE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = Button2Click
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 320
    Top = 296
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 328
    Top = 416
  end
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\bilgiler.mdb;Pers' +
      'ist Security Info=False'
    CursorType = ctStatic
    TableName = 'Tablo1'
    Left = 360
    Top = 296
    object ADOTable1OGRNO: TWideStringField
      FieldName = 'OGRNO'
      Size = 11
    end
    object ADOTable1ADI: TWideStringField
      FieldName = 'ADI'
    end
    object ADOTable1SOYADI: TWideStringField
      FieldName = 'SOYADI'
      Size = 15
    end
    object ADOTable1SINIFI: TWideStringField
      FieldName = 'SINIFI'
      Size = 1
    end
    object ADOTable1BOLUMU: TWideStringField
      FieldName = 'BOLUMU'
    end
  end
  object ADOTable2: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\bilgiler.mdb;Pers' +
      'ist Security Info=False'
    CursorType = ctStatic
    TableName = 'Tablo2'
    Left = 368
    Top = 416
    object ADOTable2OGRNO: TWideStringField
      FieldName = 'OGRNO'
      Size = 11
    end
    object ADOTable2DERS: TWideStringField
      FieldName = 'DERS'
      Size = 15
    end
    object ADOTable2VZE: TWideStringField
      FieldName = 'V'#304'ZE'
      Size = 3
    end
    object ADOTable2FNAL: TWideStringField
      FieldName = 'F'#304'NAL'
      Size = 3
    end
    object ADOTable2ORTALAMA: TWideStringField
      FieldName = 'ORTALAMA'
      Size = 10
    end
    object ADOTable2DURUM: TWideStringField
      FieldName = 'DURUM'
      Size = 5
    end
    object ADOTable2HARF: TWideStringField
      FieldName = 'HARF'
      Size = 2
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 72
    Top = 120
  end
end
