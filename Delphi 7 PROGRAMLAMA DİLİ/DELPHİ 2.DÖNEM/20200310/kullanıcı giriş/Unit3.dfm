object Form3: TForm3
  Left = 192
  Top = 124
  BorderStyle = bsToolWindow
  Caption = 'Form3'
  ClientHeight = 384
  ClientWidth = 788
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 297
    Height = 361
    Caption = #304'S'#304'M VE SOY'#304'S'#304'M ALANI'
    TabOrder = 0
    object Edit1: TEdit
      Left = 8
      Top = 56
      Width = 273
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 8
      Top = 112
      Width = 273
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button1: TButton
      Left = 32
      Top = 192
      Width = 233
      Height = 105
      Caption = 'KAYIT ARA'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 312
    Top = 8
    Width = 465
    Height = 361
    Caption = 'BULUNAN KAYITLI B'#304'LG'#304'LER'
    TabOrder = 1
    object Edit3: TEdit
      Left = 24
      Top = 48
      Width = 417
      Height = 21
      CharCase = ecUpperCase
      Color = clYellow
      TabOrder = 0
    end
    object Edit4: TEdit
      Left = 24
      Top = 96
      Width = 417
      Height = 21
      CharCase = ecUpperCase
      Color = clYellow
      TabOrder = 1
    end
    object Edit5: TEdit
      Left = 24
      Top = 144
      Width = 417
      Height = 21
      CharCase = ecUpperCase
      Color = clYellow
      TabOrder = 2
    end
    object Edit6: TEdit
      Left = 24
      Top = 200
      Width = 417
      Height = 21
      CharCase = ecUpperCase
      Color = clYellow
      TabOrder = 3
    end
    object Button2: TButton
      Left = 32
      Top = 248
      Width = 233
      Height = 89
      Caption = 'G'#220'NCELLE'#350'T'#304'R'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 280
      Top = 248
      Width = 153
      Height = 89
      Caption = 'S'#304'L'
      TabOrder = 5
      OnClick = Button3Click
    end
  end
  object ADOQuery1: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=.\bilgiler.accdb;P' +
      'ersist Security Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tablo2')
    Left = 296
    Top = 88
  end
end
