object Form1: TForm1
  Left = 287
  Top = 147
  BorderStyle = bsToolWindow
  ClientHeight = 525
  ClientWidth = 857
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
    Left = 0
    Top = 0
    Width = 857
    Height = 257
    Align = alTop
    Caption = 'KAYDED'#304'LECEK B'#304'LG'#304'LER'
    TabOrder = 0
    object Edit1: TEdit
      Left = 96
      Top = 64
      Width = 153
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 96
      Top = 88
      Width = 153
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object ComboBox1: TComboBox
      Left = 96
      Top = 112
      Width = 153
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      OnClick = ComboBox1Click
    end
    object ComboBox2: TComboBox
      Left = 96
      Top = 136
      Width = 153
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 3
    end
    object MaskEdit1: TMaskEdit
      Left = 96
      Top = 160
      Width = 147
      Height = 21
      EditMask = '(000)\-000\-0000;1;_'
      MaxLength = 14
      TabOrder = 4
      Text = '(   )-   -    '
    end
    object GroupBox3: TGroupBox
      Left = 456
      Top = 40
      Width = 393
      Height = 129
      Caption = 'MEDEN'#304' DURUM'
      TabOrder = 5
      object CheckBox1: TCheckBox
        Left = 32
        Top = 32
        Width = 65
        Height = 17
        Caption = 'EVL'#304
        TabOrder = 0
        OnClick = CheckBox1Click
      end
      object CheckBox2: TCheckBox
        Left = 32
        Top = 56
        Width = 65
        Height = 17
        Caption = 'BEKAR'
        TabOrder = 1
        OnClick = CheckBox2Click
      end
      object BitBtn1: TBitBtn
        Left = 176
        Top = 32
        Width = 193
        Height = 73
        Caption = 'T'#220'M'#220'N'#220' KAYDET'
        TabOrder = 2
        OnClick = BitBtn1Click
        Kind = bkYes
      end
    end
    object Edit3: TEdit
      Left = 96
      Top = 192
      Width = 753
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 6
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 264
    Width = 857
    Height = 261
    Align = alBottom
    Caption = 'KAYITLI B'#304'LG'#304'LER'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 853
      Height = 244
      Align = alClient
      DataSource = DataSource1
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ADI'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SOYADI'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IL'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = #304'L'#199'E'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DURUM'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELEFON'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ADRES'
          Width = 370
          Visible = True
        end>
    end
  end
  object ADOQuery1: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\bilgiler.mdb;Pers' +
      'ist Security Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tablo1')
    Left = 128
    Top = 104
  end
  object ADOQuery2: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\bilgiler.mdb;Pers' +
      'ist Security Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tablo2')
    Left = 176
    Top = 128
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery3
    Left = 304
    Top = 376
  end
  object ADOQuery3: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\bilgiler.mdb;Pers' +
      'ist Security Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tablo3')
    Left = 344
    Top = 376
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 392
    Top = 376
  end
end
