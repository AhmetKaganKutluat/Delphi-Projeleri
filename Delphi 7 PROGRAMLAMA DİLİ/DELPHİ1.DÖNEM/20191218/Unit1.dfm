object Form1: TForm1
  Left = 256
  Top = 120
  BorderStyle = bsToolWindow
  Caption = 'Form1'
  ClientHeight = 245
  ClientWidth = 441
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object ListBox1: TListBox
    Left = 8
    Top = 8
    Width = 137
    Height = 217
    ItemHeight = 13
    Items.Strings = (
      'ANTALYA'
      'SAMSUN'
      'ED'#304'RNE'
      #304'STANBUL'
      'KIRKLAREL'#304
      #350'ANLIURFA'
      'A'#286'RI'
      'YOZGAT'
      'ISPARTA'
      'ANKARA'
      'BURDUR'
      #304'ZM'#304'R')
    TabOrder = 0
  end
  object ListBox2: TListBox
    Left = 296
    Top = 8
    Width = 137
    Height = 217
    ItemHeight = 13
    TabOrder = 1
  end
  object Button1: TButton
    Left = 152
    Top = 16
    Width = 129
    Height = 33
    Caption = 'EKLE-->'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 152
    Top = 64
    Width = 129
    Height = 33
    Caption = 'T'#220'M'#220'N'#220' EKLE-->>>'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 192
    Top = 120
  end
end
