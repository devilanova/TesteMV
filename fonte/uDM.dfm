object DM: TDM
  Height = 480
  Width = 640
  object Connection: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    SQLHourGlass = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 5432
    Database = ''
    User = 'postgres'
    Password = 'tuxlinux'
    Protocol = 'postgresql'
    LibraryLocation = 'C:\Program Files (x86)\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 184
    Top = 56
  end
end
