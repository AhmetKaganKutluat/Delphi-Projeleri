object Form1: TForm1
  Left = 192
  Top = 89
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
    Top = 312
    Width = 916
    Height = 137
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 248
    Top = 24
    Width = 393
    Height = 281
    TabOrder = 1
    object Label1: TLabel
      Left = 56
      Top = 40
      Width = 48
      Height = 17
      Caption = 'birinci sayi'
    end
    object Label2: TLabel
      Left = 56
      Top = 72
      Width = 45
      Height = 13
      Caption = 'ikinci sayi'
    end
    object Label3: TLabel
      Left = 48
      Top = 96
      Width = 59
      Height = 13
      Caption = #252#231#252'nc'#252' soru'
    end
    object Edit1: TEdit
      Left = 112
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 112
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object Edit3: TEdit
      Left = 112
      Top = 88
      Width = 121
      Height = 21
      TabOrder = 2
      OnKeyPress = Edit3KeyPress
    end
    object Button1: TButton
      Left = 80
      Top = 144
      Width = 193
      Height = 89
      Caption = 'kaydet'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 376
    Top = 360
  end
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\MEHMET\Des' +
      'ktop\bonus deneme\bonus.mdb;Persist Security Info=False'
    CursorType = ctStatic
    TableName = 'Tablo1'
    Left = 448
    Top = 352
    object ADOTable1birincisayi: TIntegerField
      FieldName = 'birinci sayi'
    end
    object ADOTable1ikincisayi: TIntegerField
      FieldName = 'ikinci sayi'
    end
    object ADOTable1ncsayi: TIntegerField
      FieldName = #252#231#252'nc'#252' sayi'
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 576
    Top = 232
  end
end
