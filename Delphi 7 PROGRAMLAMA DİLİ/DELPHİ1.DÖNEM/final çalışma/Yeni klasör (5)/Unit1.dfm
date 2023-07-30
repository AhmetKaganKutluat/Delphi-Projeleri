object Form1: TForm1
  Left = 192
  Top = 125
  Width = 679
  Height = 424
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ListBox1: TListBox
    Left = 16
    Top = 16
    Width = 233
    Height = 337
    ItemHeight = 13
    Items.Strings = (
      'ankara'
      'istanbul'
      'yozgat'
      'izmir'
      'eski'#351'ehir'
      'antalya'
      'burdur')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 280
    Top = 40
    Width = 75
    Height = 25
    Caption = 'ekle'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 280
    Top = 80
    Width = 75
    Height = 25
    Caption = 't'#252'm'#252'n'#252' ekle'
    TabOrder = 2
    OnClick = Button2Click
  end
  object ListBox2: TListBox
    Left = 384
    Top = 16
    Width = 217
    Height = 337
    ItemHeight = 13
    TabOrder = 3
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 296
    Top = 136
  end
end
