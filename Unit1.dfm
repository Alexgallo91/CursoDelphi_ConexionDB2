object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 393
  ClientWidth = 357
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = -7
    Width = 369
    Height = 89
    TabOrder = 0
    object Button1: TButton
      Left = 175
      Top = 11
      Width = 121
      Height = 55
      Caption = 'Mostrar Municipios'
      TabOrder = 0
      OnClick = Button1Click
    end
    object entidad: TSpinEdit
      Left = 24
      Top = 28
      Width = 121
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 80
    Width = 369
    Height = 313
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=CAPACITACIONECOPRUEBAS;Data' +
      ' Source=ARTHUR07;Initial File Name="";Server SPN=""'
    LoginPrompt = False
    Provider = 'SQLNCLI11.1'
    Left = 232
    Top = 192
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = ADOConnection1
    DataSource = DataSource1
    ProcedureName = 'agarrarCliente;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end
      item
        Name = '@idCliente'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end>
    Left = 192
    Top = 120
  end
  object DataSource1: TDataSource
    Left = 272
    Top = 120
  end
end
