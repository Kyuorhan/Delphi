object dmPrincipal: TdmPrincipal
  OldCreateOrder = False
  Height = 360
  Width = 498
  object DBase: TZConnection
    ControlsCodePage = cCP_UTF16
    AutoEncodeStrings = True
    Properties.Strings = (
      'controls_cp=CP_UTF16')
    Connected = True
    DesignConnection = True
    HostName = 'localhost'
    Port = 0
    Database = 'sistema'
    User = 'root'
    Password = '123'
    Protocol = 'MariaDB-10'
    LibraryLocation = 'C:\Program Files (x86)\MariaDB 10.5\lib\libmariadb.dll'
    Left = 48
    Top = 40
  end
  object qTemp: TZQuery
    Connection = DBase
    Params = <>
    Left = 48
    Top = 104
  end
end
