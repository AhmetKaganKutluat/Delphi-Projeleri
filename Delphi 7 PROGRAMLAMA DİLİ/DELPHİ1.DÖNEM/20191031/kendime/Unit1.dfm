object Form1: TForm1
  Left = 246
  Top = 179
  Width = 781
  Height = 490
  AlphaBlendValue = 210
  BorderStyle = bsSizeToolWin
  Caption = 'ADEM '#220'NL'#220
  Color = clBtnShadow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 40
    Width = 86
    Height = 16
    Caption = 'M'#252#351'teri Ad'#305' :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 6
    Top = 64
    Width = 112
    Height = 16
    Caption = 'M'#252#351'teri Soyad'#305' :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 42
    Top = 88
    Width = 76
    Height = 16
    Caption = 'Memleket :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 58
    Top = 16
    Width = 57
    Height = 16
    Caption = 'T.C. No:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 128
    Top = 16
    Width = 177
    Height = 21
    Hint = #214#287'rencinin ad'#305' alan'#305'd'#305'r'
    MaxLength = 11
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 128
    Top = 40
    Width = 177
    Height = 21
    Hint = #214#287'rencinin soyad'#305' alan'#305'd'#305'r'
    CharCase = ecUpperCase
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 128
    Top = 64
    Width = 177
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object ComboBox1: TComboBox
    Left = 128
    Top = 88
    Width = 177
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 3
  end
  object GroupBox1: TGroupBox
    Left = 328
    Top = 8
    Width = 425
    Height = 105
    Caption = #214#287'renci S'#305'n'#305'f'#305
    TabOrder = 4
    object CheckBox1: TCheckBox
      Left = 16
      Top = 24
      Width = 113
      Height = 17
      Caption = 'Haz'#305'rl'#305'k S'#305'n'#305'f'#305
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 16
      Top = 48
      Width = 105
      Height = 17
      Caption = 'Birinci S'#305'n'#305'f'
      TabOrder = 1
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 16
      Top = 72
      Width = 105
      Height = 17
      Caption = #304'kinci S'#305'n'#305'f'
      TabOrder = 2
      OnClick = CheckBox3Click
    end
  end
  object BitBtn1: TBitBtn
    Left = 552
    Top = 32
    Width = 161
    Height = 65
    Caption = 'KAYDET'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn1Click
    Kind = bkAll
  end
  object ListBox1: TListBox
    Left = 8
    Top = 128
    Width = 745
    Height = 313
    ItemHeight = 13
    TabOrder = 6
  end
end
