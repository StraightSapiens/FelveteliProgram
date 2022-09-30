object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 445
  Width = 813
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=Test;Data Source=ZSOLT-PC;I' +
      'nitial File Name="";Server SPN=""'
    LoginPrompt = False
    Provider = 'SQLNCLI11.1'
    Left = 271
    Top = 102
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Partnerek')
    Left = 383
    Top = 102
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 472
    Top = 112
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Term'#233'kek ')
    Left = 376
    Top = 192
  end
  object ADOQuery3: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM T'#233'telek')
    Left = 376
    Top = 288
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 472
    Top = 192
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 472
    Top = 296
  end
  object ADOQuery4: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM T'#233'telek')
    Left = 384
    Top = 368
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery4
    Left = 472
    Top = 376
  end
end
