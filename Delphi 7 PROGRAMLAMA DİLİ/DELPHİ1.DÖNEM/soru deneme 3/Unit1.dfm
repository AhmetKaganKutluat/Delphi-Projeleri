object Form1: TForm1
  Left = 191
  Top = 106
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
  object Label1: TLabel
    Left = 552
    Top = 176
    Width = 32
    Height = 13
    Caption = 'sonuc '
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 288
    Width = 916
    Height = 161
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object RadioGroup1: TRadioGroup
    Left = 32
    Top = 24
    Width = 273
    Height = 241
    Caption = 'hesaplama'
    Items.Strings = (
      'toplama'
      #231#305'karma'
      #231'arpma'
      'b'#246'lme'
      'mod alma')
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 504
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 504
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 488
    Top = 112
    Width = 145
    Height = 41
    Caption = 'Button1'
    TabOrder = 4
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 472
    Top = 368
  end
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\AMCIK.mdb;Persist' +
      ' Security Info=False'
    CursorType = ctStatic
    TableName = 'Tablo1'
    Left = 544
    Top = 368
    object ADOTable1SAYI1: TIntegerField
      FieldName = 'SAYI1'
    end
    object ADOTable1SAY2: TIntegerField
      FieldName = 'SAY'#304'2'
    end
    object ADOTable1ARET: TWideStringField
      DisplayWidth = 5
      FieldName = #304#350'ARET'
      Size = 255
    end
    object ADOTable1SONUC: TIntegerField
      FieldName = 'SONUC'
    end
  end
end
