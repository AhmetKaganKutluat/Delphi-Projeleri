object Form1: TForm1
  Left = 290
  Top = 149
  Width = 667
  Height = 499
  AlphaBlendValue = 180
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSizeToolWin
  Caption = 'Bakyols'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 55
    Top = 8
    Width = 82
    Height = 20
    Caption = 'Ogrenci Ad'#305
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 27
    Top = 32
    Width = 111
    Height = 20
    Caption = 'Ogrenc'#305' Soyad'#305' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 65
    Top = 56
    Width = 73
    Height = 20
    Caption = 'Memleket '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 136
    Top = 216
    Width = 31
    Height = 20
    Caption = 'Vize'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 136
    Top = 264
    Width = 34
    Height = 20
    Caption = 'Final'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 136
    Top = 8
    Width = 145
    Height = 21
    Hint = 'Ogrenc'#305'n'#305'n ad'#305'  alan'#305'd'#305'r.'
    CharCase = ecUpperCase
    MaxLength = 20
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 136
    Top = 32
    Width = 145
    Height = 21
    Hint = 'Ogrenc'#305'n'#305'n Soyad'#305' Alan'#305'd'#305'r.'
    CharCase = ecUpperCase
    MaxLength = 20
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object ComboBox1: TComboBox
    Left = 136
    Top = 56
    Width = 145
    Height = 21
    Hint = 'L'#252'tfen Listeden Uygun Bir Memleket Se'#231'iniz.'
    Style = csDropDownList
    ItemHeight = 13
    ParentShowHint = False
    ShowHint = True
    Sorted = True
    TabOrder = 2
  end
  object C1: TCheckBox
    Left = 136
    Top = 80
    Width = 97
    Height = 17
    Caption = 'Haz'#305'rl'#305'k S'#305'n'#305'f'#305
    TabOrder = 3
    OnClick = C1Click
  end
  object C2: TCheckBox
    Left = 136
    Top = 104
    Width = 97
    Height = 17
    Caption = 'Birinci S'#305'n'#305'f'
    TabOrder = 4
    OnClick = C2Click
  end
  object C3: TCheckBox
    Left = 136
    Top = 128
    Width = 97
    Height = 17
    Caption = #304'kinci S'#305'n'#305'f '
    TabOrder = 5
    OnClick = C3Click
  end
  object BitBtn1: TBitBtn
    Left = 144
    Top = 152
    Width = 97
    Height = 33
    Caption = 'Kaydet'
    TabOrder = 6
    OnClick = BitBtn1Click
    Kind = bkAll
  end
  object Edit3: TEdit
    Left = 176
    Top = 216
    Width = 57
    Height = 21
    TabOrder = 7
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 176
    Top = 264
    Width = 57
    Height = 21
    TabOrder = 8
    OnKeyPress = Edit4KeyPress
  end
  object Button1: TButton
    Left = 152
    Top = 304
    Width = 75
    Height = 33
    Caption = 'Hesapla'
    TabOrder = 9
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 296
    Top = 8
    Width = 321
    Height = 417
    ItemHeight = 13
    TabOrder = 10
  end
end
