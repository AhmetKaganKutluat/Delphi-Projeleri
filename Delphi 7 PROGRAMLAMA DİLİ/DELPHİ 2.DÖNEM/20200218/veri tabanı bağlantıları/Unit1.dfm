object Form1: TForm1
  Left = 192
  Top = 124
  BorderStyle = bsToolWindow
  Caption = 'Form1'
  ClientHeight = 525
  ClientWidth = 963
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 963
    Height = 273
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 961
      Height = 271
      Align = alClient
      DataSource = DataSource1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 280
    Width = 963
    Height = 245
    Align = alBottom
    Caption = 'Panel2'
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 961
      Height = 243
      Align = alClient
      DataSource = DataSource2
      Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\bilgiler1.mdb;Per' +
      'sist Security Info=False'
    CursorType = ctStatic
    TableName = 'Tablo1'
    Left = 424
    Top = 200
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 480
    Top = 208
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 448
    Top = 440
  end
  object ADOTable2: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=.\bilgiler2.accdb;' +
      'Persist Security Info=False'
    CursorType = ctStatic
    TableName = 'Tablo1'
    Left = 392
    Top = 456
  end
end
