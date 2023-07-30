object Form1: TForm1
  Left = 402
  Top = 164
  BorderStyle = bsDialog
  ClientHeight = 426
  ClientWidth = 681
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
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 665
    Height = 137
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 192
    Width = 665
    Height = 145
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object ADOTable1: TADOTable
    Left = 496
    Top = 104
  end
  object DataSource1: TDataSource
    Left = 448
    Top = 104
  end
  object DataSource2: TDataSource
    Left = 456
    Top = 248
  end
  object ADOTable2: TADOTable
    Left = 496
    Top = 248
  end
end
