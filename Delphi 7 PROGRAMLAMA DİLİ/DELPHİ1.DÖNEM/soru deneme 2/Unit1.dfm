object Form1: TForm1
  Left = 216
  Top = 125
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
  object Button1: TButton
    Left = 528
    Top = 16
    Width = 161
    Height = 185
    Caption = 'kaydet'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 176
    Top = 96
    Width = 273
    Height = 21
    TabOrder = 1
    OnKeyPress = Edit1KeyPress
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 288
    Width = 916
    Height = 161
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 440
    Top = 352
  end
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\fuck.mdb;Persist ' +
      'Security Info=False'
    CursorType = ctStatic
    TableName = 'Tablo1'
    Left = 488
    Top = 352
    object ADOTable1say: TIntegerField
      FieldName = 'say'#305
    end
    object ADOTable1faktoriyeli: TIntegerField
      FieldName = 'faktoriyeli'
    end
  end
end
