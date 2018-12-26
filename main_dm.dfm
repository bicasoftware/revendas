object DMMain: TDMMain
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object zconMain: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Connected = True
    HostName = ''
    Port = 0
    Database = 'comercio'
    User = 'adm'
    Password = 'master'
    Protocol = 'mysql'
    Left = 40
    Top = 32
  end
  object zqry1: TZQuery
    Params = <>
    Left = 120
    Top = 48
  end
end
