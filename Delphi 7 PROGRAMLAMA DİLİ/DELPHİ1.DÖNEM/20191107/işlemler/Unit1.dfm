object Form1: TForm1
  Left = 470
  Top = 142
  BorderStyle = bsToolWindow
  Caption = 'AR'#304'TMET'#304'K '#304#350'LEMLER'
  ClientHeight = 597
  ClientWidth = 555
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 555
    Height = 265
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    object RadioGroup1: TRadioGroup
      Left = 1
      Top = 1
      Width = 553
      Height = 263
      Align = alClient
      Caption = 'RadioGroup1'
      Color = clActiveCaption
      Items.Strings = (
        'TOPLAMA'
        #199'IKARMA'
        #199'ARPMA'
        'B'#214'LME'
        'MOD ALMA')
      ParentColor = False
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
    object Edit1: TEdit
      Left = 328
      Top = 24
      Width = 145
      Height = 29
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 328
      Top = 56
      Width = 145
      Height = 29
      TabOrder = 2
    end
    object StaticText1: TStaticText
      Left = 288
      Top = 32
      Width = 37
      Height = 17
      Caption = 'SAYI 1'
      Color = clActiveCaption
      ParentColor = False
      TabOrder = 3
    end
    object StaticText2: TStaticText
      Left = 288
      Top = 64
      Width = 37
      Height = 17
      Caption = 'SAYI 2'
      Color = clActiveCaption
      ParentColor = False
      TabOrder = 4
    end
    object BitBtn1: TBitBtn
      Left = 328
      Top = 96
      Width = 145
      Height = 65
      Caption = #304#350'LEMLE'
      TabOrder = 5
      OnClick = BitBtn1Click
      Kind = bkAll
    end
  end
end
