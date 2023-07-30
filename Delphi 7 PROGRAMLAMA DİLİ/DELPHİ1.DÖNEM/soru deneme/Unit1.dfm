object Form1: TForm1
  Left = 223
  Top = 91
  Width = 924
  Height = 480
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 329
    Width = 916
    Height = 120
    Align = alBottom
    DataSource = DataSource1
    Enabled = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 913
    Height = 329
    TabOrder = 1
    object Label1: TLabel
      Left = 72
      Top = 32
      Width = 74
      Height = 13
      Caption = 'TC NUMARASI'
    end
    object Label2: TLabel
      Left = 120
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
      Left = 88
      Top = 144
      Width = 62
      Height = 13
      Caption = 'MEMLEKET'#304
    end
    object Label5: TLabel
      Left = 104
      Top = 192
      Width = 33
      Height = 13
      Caption = #304'L'#199'ES'#304
    end
    object Edit1: TEdit
      Left = 160
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 160
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object Edit3: TEdit
      Left = 160
      Top = 104
      Width = 121
      Height = 21
      TabOrder = 2
      OnKeyPress = Edit3KeyPress
    end
    object ComboBox1: TComboBox
      Left = 160
      Top = 144
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      OnChange = ComboBox1Change
      Items.Strings = (
        'istanbul'
        'ankara'
        'artvin')
    end
    object ComboBox2: TComboBox
      Left = 160
      Top = 184
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 4
    end
    object GroupBox1: TGroupBox
      Left = 368
      Top = 16
      Width = 521
      Height = 281
      Caption = 'SATI'#350' '#304#350'LEMLER'#304
      TabOrder = 5
      object Label6: TLabel
        Left = 8
        Top = 40
        Width = 114
        Height = 13
        Caption = 'SATI'#350' YAPILAN '#220'R'#220'N'
      end
      object Label7: TLabel
        Left = 40
        Top = 80
        Width = 30
        Height = 13
        Caption = 'F'#304'YAT'
      end
      object Label8: TLabel
        Left = 24
        Top = 104
        Width = 44
        Height = 13
        Caption = 'TOPLAM'
      end
      object Label9: TLabel
        Left = 216
        Top = 80
        Width = 29
        Height = 13
        Caption = 'ADET'
      end
      object Label10: TLabel
        Left = 16
        Top = 168
        Width = 53
        Height = 13
        Caption = 'TESL'#304'MAT'
      end
      object Label11: TLabel
        Left = 32
        Top = 240
        Width = 37
        Height = 13
        Caption = 'ADRES'
      end
      object Label12: TLabel
        Left = 112
        Top = 152
        Width = 35
        Height = 13
        Caption = #351'ehir i'#231'i'
      end
      object Label13: TLabel
        Left = 112
        Top = 176
        Width = 40
        Height = 13
        Caption = #351'ehir d'#305#351#305
      end
      object Edit4: TEdit
        Left = 80
        Top = 72
        Width = 121
        Height = 21
        TabOrder = 0
        OnKeyPress = Edit4KeyPress
      end
      object Edit5: TEdit
        Left = 80
        Top = 104
        Width = 121
        Height = 21
        Enabled = False
        TabOrder = 1
        OnKeyPress = Edit5KeyPress
      end
      object CheckBox1: TCheckBox
        Left = 80
        Top = 152
        Width = 25
        Height = 17
        TabOrder = 2
        OnClick = CheckBox1Click
      end
      object CheckBox2: TCheckBox
        Left = 80
        Top = 176
        Width = 17
        Height = 17
        TabOrder = 3
        OnClick = CheckBox2Click
      end
      object ComboBox3: TComboBox
        Left = 136
        Top = 32
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 4
        Items.Strings = (
          's'#252'p'#252'rge'
          #252't'#252
          'telefon'
          'kilima')
      end
      object ComboBox4: TComboBox
        Left = 256
        Top = 72
        Width = 41
        Height = 21
        ItemHeight = 13
        TabOrder = 5
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6')
      end
      object Button1: TButton
        Left = 304
        Top = 48
        Width = 81
        Height = 65
        Caption = 'KAYDET'
        TabOrder = 6
        OnClick = Button1Click
      end
      object BitBtn1: TBitBtn
        Left = 400
        Top = 48
        Width = 105
        Height = 65
        Caption = #199'IKI'#350
        TabOrder = 7
      end
      object Edit6: TEdit
        Left = 88
        Top = 240
        Width = 409
        Height = 21
        TabOrder = 8
        OnKeyPress = Edit6KeyPress
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 376
    Top = 384
  end
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\APOLLO 11.mdb;Per' +
      'sist Security Info=False'
    CursorType = ctStatic
    TableName = 'Tablo1'
    Left = 464
    Top = 376
    object ADOTable1TCNO: TIntegerField
      FieldName = 'TC NO'
    end
    object ADOTable1ADI: TWideStringField
      DisplayWidth = 10
      FieldName = 'ADI'
      Size = 255
    end
    object ADOTable1SOYADI: TWideStringField
      DisplayWidth = 10
      FieldName = 'SOYADI'
      Size = 255
    end
    object ADOTable1MEMLEKET: TWideStringField
      DisplayWidth = 10
      FieldName = 'MEMLEKET'
      Size = 255
    end
    object ADOTable1LE: TWideStringField
      DisplayWidth = 10
      FieldName = #304'L'#199'E'
      Size = 255
    end
    object ADOTable1URUN_ADI: TWideStringField
      DisplayWidth = 10
      FieldName = 'URUN_ADI'
      Size = 255
    end
    object ADOTable1FYAT: TWideStringField
      DisplayWidth = 10
      FieldName = 'F'#304'YAT'
      Size = 255
    end
    object ADOTable1ADET: TWideStringField
      DisplayWidth = 5
      FieldName = 'ADET'
      Size = 255
    end
    object ADOTable1TOPLAM_FYAT: TWideStringField
      DisplayWidth = 10
      FieldName = 'TOPLAM_F'#304'YAT'
      Size = 255
    end
    object ADOTable1TESLMAT: TWideStringField
      DisplayWidth = 20
      FieldName = 'TESL'#304'MAT'
      Size = 255
    end
    object ADOTable1ADRES: TWideStringField
      DisplayWidth = 20
      FieldName = 'ADRES'
      Size = 255
    end
  end
end
