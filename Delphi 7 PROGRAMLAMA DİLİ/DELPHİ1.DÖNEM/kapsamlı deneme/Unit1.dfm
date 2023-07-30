object Form1: TForm1
  Left = 236
  Top = 95
  Width = 1010
  Height = 587
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
  object Label1: TLabel
    Left = 40
    Top = 40
    Width = 109
    Height = 13
    Caption = #214#286'RENC'#304' NUMARASI'
  end
  object Label2: TLabel
    Left = 112
    Top = 72
    Width = 18
    Height = 13
    Caption = 'ADI'
  end
  object Label3: TLabel
    Left = 104
    Top = 112
    Width = 40
    Height = 13
    Caption = 'SOYADI'
  end
  object Label4: TLabel
    Left = 160
    Top = 288
    Width = 46
    Height = 13
    Caption = 'B'#214'L'#220'M'#220
  end
  object Label5: TLabel
    Left = 152
    Top = 320
    Width = 68
    Height = 13
    Caption = 'ALDI'#286'I DERS'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 464
    Width = 1002
    Height = 92
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 351
    Width = 1002
    Height = 113
    Align = alBottom
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 160
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 2
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 160
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 3
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 160
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 4
    OnKeyPress = Edit3KeyPress
  end
  object GroupBox1: TGroupBox
    Left = 160
    Top = 144
    Width = 177
    Height = 121
    Caption = 'SINIFI'
    TabOrder = 5
    object CheckBox1: TCheckBox
      Left = 32
      Top = 40
      Width = 97
      Height = 17
      Caption = 'HAZIRLIK'
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 32
      Top = 64
      Width = 97
      Height = 17
      Caption = '1.SINIF'
      TabOrder = 1
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 32
      Top = 88
      Width = 97
      Height = 17
      Caption = '2.SINIF'
      TabOrder = 2
      OnClick = CheckBox3Click
    end
  end
  object ComboBox1: TComboBox
    Left = 224
    Top = 280
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    OnChange = ComboBox1Change
    Items.Strings = (
      'B'#304'LG'#304'SAYAR'
      'GASTRONOM'#304)
  end
  object ComboBox2: TComboBox
    Left = 224
    Top = 312
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 7
  end
  object GroupBox2: TGroupBox
    Left = 480
    Top = 24
    Width = 425
    Height = 169
    Caption = 'NOT G'#304'R'#304#350' EKRANI'
    TabOrder = 8
    object Label6: TLabel
      Left = 24
      Top = 32
      Width = 24
      Height = 13
      Caption = 'V'#304'ZE'
    end
    object Label7: TLabel
      Left = 24
      Top = 56
      Width = 30
      Height = 13
      Caption = 'F'#304'NAL'
    end
    object Label8: TLabel
      Left = 280
      Top = 32
      Width = 98
      Height = 13
      Caption = 'DERS ORTALAMA :'
    end
    object Label9: TLabel
      Left = 216
      Top = 64
      Width = 79
      Height = 13
      Caption = 'SINIF DURUMU'
    end
    object Label10: TLabel
      Left = 312
      Top = 64
      Width = 5
      Height = 13
      Caption = '/'
    end
    object Label11: TLabel
      Left = 336
      Top = 64
      Width = 81
      Height = 13
      Caption = 'HARF DURUMU'
    end
    object Edit4: TEdit
      Left = 64
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
      OnKeyPress = Edit4KeyPress
    end
    object Edit5: TEdit
      Left = 64
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 1
      OnKeyPress = Edit5KeyPress
    end
    object Button1: TButton
      Left = 80
      Top = 96
      Width = 129
      Height = 57
      Caption = 'HESAPLA'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object Button2: TButton
    Left = 496
    Top = 224
    Width = 401
    Height = 105
    Caption = 'S'#304'STEME Y'#220'KLE'
    TabOrder = 9
    OnClick = Button2Click
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 328
    Top = 496
  end
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\MEHMET\Des' +
      'ktop\kapsaml'#305' deneme\tablo1.mdb;Persist Security Info=False'
    CursorType = ctStatic
    TableName = 'Tablo1'
    Left = 472
    Top = 504
    object ADOTable1OGRNO: TIntegerField
      FieldName = 'OGRNO'
    end
    object ADOTable1ADI: TWideStringField
      DisplayWidth = 20
      FieldName = 'ADI'
      Size = 255
    end
    object ADOTable1SOYADI: TWideStringField
      DisplayWidth = 20
      FieldName = 'SOYADI'
      Size = 255
    end
    object ADOTable1SINIFI: TWideStringField
      DisplayWidth = 20
      FieldName = 'SINIFI'
      Size = 255
    end
    object ADOTable1BOLUMU: TWideStringField
      DisplayWidth = 20
      FieldName = 'BOLUMU'
      Size = 255
    end
  end
  object ADOTable2: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\MEHMET\Des' +
      'ktop\kapsaml'#305' deneme\tablo2.mdb;Persist Security Info=False'
    CursorType = ctStatic
    TableName = 'Tablo2'
    Left = 520
    Top = 416
    object ADOTable2OGRNO: TIntegerField
      FieldName = 'OGRNO'
    end
    object ADOTable2DERS: TWideStringField
      DisplayWidth = 20
      FieldName = 'DERS'
      Size = 255
    end
    object ADOTable2VZE: TIntegerField
      FieldName = 'V'#304'ZE'
    end
    object ADOTable2FNAL: TIntegerField
      FieldName = 'F'#304'NAL'
    end
    object ADOTable2ORTALAMA: TIntegerField
      FieldName = 'ORTALAMA'
    end
    object ADOTable2DURUM: TWideStringField
      DisplayWidth = 20
      FieldName = 'DURUM'
      Size = 255
    end
    object ADOTable2HARF: TWideStringField
      DisplayWidth = 20
      FieldName = 'HARF'
      Size = 255
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 400
    Top = 416
  end
end
