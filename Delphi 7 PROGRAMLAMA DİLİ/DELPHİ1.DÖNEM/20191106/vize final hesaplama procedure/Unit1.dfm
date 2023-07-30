object Form1: TForm1
  Left = 316
  Top = 183
  Width = 735
  Height = 196
  BorderStyle = bsSizeToolWin
  Caption = 'Form1'
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
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 24
    Height = 13
    Caption = 'V'#304'ZE'
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 30
    Height = 13
    Caption = 'F'#304'NAL'
  end
  object Edit1: TEdit
    Left = 96
    Top = 24
    Width = 121
    Height = 21
    MaxLength = 2
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 96
    Top = 56
    Width = 121
    Height = 21
    MaxLength = 2
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 96
    Top = 88
    Width = 577
    Height = 21
    Color = clYellow
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInfoBk
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Button1: TButton
    Left = 288
    Top = 24
    Width = 193
    Height = 49
    Caption = 'HESAPLA VE SONU'#199'LA'
    TabOrder = 3
    OnClick = Button1Click
  end
end
