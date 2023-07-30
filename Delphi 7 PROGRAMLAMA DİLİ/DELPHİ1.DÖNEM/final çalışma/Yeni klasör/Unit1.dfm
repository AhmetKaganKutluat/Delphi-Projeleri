object Form1: TForm1
  Left = 252
  Top = 128
  Width = 343
  Height = 398
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
  object Edit1: TEdit
    Left = 16
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 16
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 16
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 2
    OnKeyPress = Edit3KeyPress
  end
  object Button1: TButton
    Left = 160
    Top = 40
    Width = 121
    Height = 33
    Caption = 'HESAPLA'
    TabOrder = 3
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 101
    Width = 310
    Height = 328
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 96
    Top = 256
  end
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=./islemler.mdb;Pers' +
      'ist Security Info=False'
    CursorType = ctStatic
    TableName = 'Tablo1'
    Left = 160
    Top = 256
    object ADOTable1sayi1: TWideStringField
      FieldName = 'sayi1'
      Size = 10
    end
    object ADOTable1sayi2: TWideStringField
      FieldName = 'sayi2'
      Size = 10
    end
    object ADOTable1islem: TWideStringField
      FieldName = 'islem'
      Size = 10
    end
    object ADOTable1sonuc: TWideStringField
      FieldName = 'sonuc'
      Size = 10
    end
  end
end
