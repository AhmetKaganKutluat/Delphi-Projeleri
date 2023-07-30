object Form1: TForm1
  Left = 413
  Top = 198
  BorderStyle = bsSingle
  Caption = 'Form1'
  ClientHeight = 181
  ClientWidth = 196
  Color = clBtnFace
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
  object ComboBox1: TComboBox
    Left = 24
    Top = 24
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 0
    OnChange = ComboBox1Change
    OnClick = ComboBox1Click
  end
  object ComboBox2: TComboBox
    Left = 24
    Top = 64
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 1
  end
  object Button1: TButton
    Left = 24
    Top = 104
    Width = 145
    Height = 41
    Caption = 'G'#214'STER'
    TabOrder = 2
    OnClick = Button1Click
  end
end
