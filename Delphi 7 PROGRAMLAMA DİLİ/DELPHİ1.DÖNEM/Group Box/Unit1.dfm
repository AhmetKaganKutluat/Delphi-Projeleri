object Form1: TForm1
  Left = 327
  Top = 179
  Width = 837
  Height = 470
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 821
    Height = 217
    Align = alTop
    TabOrder = 0
    DesignSize = (
      821
      217)
    object BitBtn1: TBitBtn
      Left = 621
      Top = 56
      Width = 193
      Height = 89
      Anchors = [akTop, akRight]
      Caption = '   HESAPLA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkAll
    end
    object Edit1: TEdit
      Left = 613
      Top = 176
      Width = 201
      Height = 32
      Anchors = [akTop, akRight]
      Color = clYellow
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 621
      Top = 16
      Width = 81
      Height = 28
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 2
      OnKeyPress = Edit2KeyPress
    end
    object Edit3: TEdit
      Left = 733
      Top = 16
      Width = 81
      Height = 28
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 3
      ParentFont = False
      TabOrder = 3
      OnKeyPress = Edit3KeyPress
    end
    object RadioGroup1: TRadioGroup
      Left = 1
      Top = 1
      Width = 232
      Height = 215
      Align = alLeft
      Caption = ' Aritmetik '#304#351'lemler '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        'TOPLAMA '#304#350'LEM'#304
        #199'IKARMA '#304#350'LEM'#304
        #199'ARPMA '#304#350'LEM'#304
        'B'#214'LME '#304#350'LEM'#304
        'MOD ALMA '#304#350'LEM'#304)
      ParentFont = False
      TabOrder = 4
    end
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 232
    Top = 64
  end
end
