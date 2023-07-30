object Form1: TForm1
  Left = 192
  Top = 125
  BorderStyle = bsToolWindow
  Caption = 'Form1'
  ClientHeight = 355
  ClientWidth = 457
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
    Left = 280
    Top = 24
    Width = 33
    Height = 13
    Caption = 'SAYI 1'
  end
  object Label2: TLabel
    Left = 280
    Top = 56
    Width = 33
    Height = 13
    Caption = 'SAYI 2'
  end
  object Label3: TLabel
    Left = 304
    Top = 88
    Width = 98
    Height = 13
    Caption = #304#350'LEM'#304'N SONUCU :'
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 8
    Width = 249
    Height = 169
    Caption = #304#350'LEM SE'#199'ENEKLER'#304
    Items.Strings = (
      'TOPLAMA'
      #199'IKARMA'
      #199'ARPMA'
      'B'#214'LME'
      'ARADAK'#304' FARK')
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 320
    Top = 24
    Width = 121
    Height = 21
    MaxLength = 20
    TabOrder = 1
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 320
    Top = 56
    Width = 121
    Height = 21
    MaxLength = 20
    TabOrder = 2
    OnKeyPress = Edit2KeyPress
  end
  object Button1: TButton
    Left = 288
    Top = 120
    Width = 153
    Height = 41
    Caption = #304#350'LEM YAP'
    TabOrder = 3
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 235
    Width = 457
    Height = 120
    Align = alBottom
    DataSource = DataSource1
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 152
    Top = 296
  end
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\sonuclar.mdb;Pers' +
      'ist Security Info=False'
    CursorType = ctStatic
    TableName = 'Tablo1'
    Left = 208
    Top = 280
    object ADOTable1SAYI1: TWideStringField
      FieldName = 'SAYI1'
      Size = 10
    end
    object ADOTable1SAYI2: TWideStringField
      FieldName = 'SAYI2'
      Size = 10
    end
    object ADOTable1ISARET: TWideStringField
      FieldName = 'ISARET'
      Size = 1
    end
    object ADOTable1SONUC: TWideStringField
      FieldName = 'SONUC'
      Size = 30
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 328
    Top = 184
  end
end
