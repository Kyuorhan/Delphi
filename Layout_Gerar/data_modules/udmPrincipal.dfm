object dmPrincipal: TdmPrincipal
  OldCreateOrder = False
  Height = 360
  Width = 431
  object DBase: TZConnection
    ControlsCodePage = cCP_UTF16
    AutoEncodeStrings = True
    Connected = True
    HostName = 'localhost'
    Port = 0
    Database = 'my_test'
    User = 'root'
    Password = '123'
    Protocol = 'MariaDB-10'
    LibraryLocation = 'C:\Program Files (x86)\MariaDB 10.5\lib\libmariadb.dll'
    Left = 36
    Top = 22
  end
  object qTemp: TZQuery
    Connection = DBase
    CachedUpdates = True
    Params = <>
    Left = 35
    Top = 80
  end
end
