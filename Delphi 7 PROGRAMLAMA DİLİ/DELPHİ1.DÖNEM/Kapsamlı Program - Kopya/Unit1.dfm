object Form1: TForm1
  Left = 350
  Top = 107
  Width = 736
  Height = 599
  Caption = #304'LK KAYIT'
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 96
    Height = 13
    Caption = #214#287'renci Numaras'#305' = '
  end
  object Label2: TLabel
    Left = 40
    Top = 40
    Width = 67
    Height = 13
    Caption = #214#287'renci Ad'#305' = '
  end
  object Label3: TLabel
    Left = 24
    Top = 72
    Width = 84
    Height = 13
    Caption = #214#287'renci Soyad'#305' = '
  end
  object Label4: TLabel
    Left = 24
    Top = 240
    Width = 47
    Height = 13
    Caption = 'B'#246'l'#252'm'#252' = '
  end
  object Label5: TLabel
    Left = 8
    Top = 264
    Width = 62
    Height = 13
    Caption = 'Ald'#305#287#305' Ders = '
  end
  object Edit1: TEdit
    Left = 120
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 120
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 120
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 64
    Top = 104
    Width = 185
    Height = 105
    Caption = 'SINIFI'
    TabOrder = 3
    object CheckBox1: TCheckBox
      Left = 16
      Top = 24
      Width = 97
      Height = 17
      Caption = 'Haz'#305'rl'#305'k S'#305'n'#305'f'#305'  (0)'
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 16
      Top = 48
      Width = 97
      Height = 17
      Caption = 'Birinci S'#305'n'#305'f    (1)'
      TabOrder = 1
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 16
      Top = 72
      Width = 97
      Height = 17
      Caption = #304'kinci S'#305'n'#305'f     (2)'
      TabOrder = 2
      OnClick = CheckBox3Click
    end
  end
  object ComboBox1: TComboBox
    Left = 80
    Top = 232
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    OnChange = ComboBox1Change
    Items.Strings = (
      'B'#304'LG'#304'SAYAR PROGRAMLAMA'
      #304#350'LETME Y'#214'NET'#304'M'#304
      'PAZARLAMA')
  end
  object ComboBox2: TComboBox
    Left = 80
    Top = 264
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 5
  end
  object GroupBox2: TGroupBox
    Left = 280
    Top = 8
    Width = 417
    Height = 185
    Caption = 'Not Giri'#351' Ekran'#305' '
    TabOrder = 6
    object Label6: TLabel
      Left = 24
      Top = 40
      Width = 32
      Height = 13
      Caption = 'Vize = '
    end
    object Label7: TLabel
      Left = 24
      Top = 72
      Width = 34
      Height = 13
      Caption = 'Final = '
    end
    object Label8: TLabel
      Left = 248
      Top = 40
      Width = 108
      Height = 13
      Caption = 'DERS ORTALAMASI  '
    end
    object Label9: TLabel
      Left = 248
      Top = 80
      Width = 71
      Height = 13
      Caption = 'SINIFI GE'#199'T'#304'  '
    end
    object Label10: TLabel
      Left = 320
      Top = 80
      Width = 5
      Height = 13
      Caption = '/'
    end
    object Label11: TLabel
      Left = 336
      Top = 80
      Width = 41
      Height = 13
      Caption = 'DURUM'
    end
    object Edit4: TEdit
      Left = 72
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit5: TEdit
      Left = 72
      Top = 72
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Button1: TButton
      Left = 56
      Top = 120
      Width = 105
      Height = 41
      Caption = 'Hesapla'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object Button2: TButton
    Left = 320
    Top = 216
    Width = 313
    Height = 73
    Caption = 'Sisteme Y'#252'kle'
    TabOrder = 7
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 328
    Width = 728
    Height = 120
    Align = alBottom
    DataSource = DataSource1
    Enabled = False
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 448
    Width = 728
    Height = 120
    Align = alBottom
    DataSource = DataSource2
    Enabled = False
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 352
    Top = 368
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 336
    Top = 472
  end
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\OGRENCI_BILGISI.m' +
      'db;Persist Security Info=False'
    CursorType = ctStatic
    TableName = 'Tablo1'
    Left = 400
    Top = 368
    object ADOTable1OGRNO: TIntegerField
      DisplayWidth = 20
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
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\DERS_B'#304'LG'#304'S'#304'.mdb;' +
      'Persist Security Info=False'
    CursorType = ctStatic
    TableName = 'Tablo1'
    Left = 392
    Top = 472
    object ADOTable2OGRNO: TIntegerField
      DisplayWidth = 20
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
      DisplayWidth = 10
      FieldName = 'DURUM'
      Size = 255
    end
    object ADOTable2HARF: TWideStringField
      DisplayWidth = 10
      FieldName = 'HARF'
      Size = 255
    end
  end
end
