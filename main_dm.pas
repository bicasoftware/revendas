unit main_dm;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection, StringHelper, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TDMMain = class(TDataModule)
    zconMain: TZConnection;
    zqry1: TZQuery;
    procedure DataModuleCreate(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
    var
      username: string;
      accessLevel: Integer;
    procedure setUsername(username: string);
    procedure setAccesslevel(level: Integer);
    procedure reset;
  end;

var
  DMMain: TDMMain;

implementation

uses
  ConfigFileReader;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDMMain }

procedure TDMMain.DataModuleCreate(Sender: TObject);
//var
//  fileName: string;
//  configs: TStringList;
begin
//  fileName := GetCurrentDir + '/configs.ini';
//
//  try
//    if (FileExists(fileName)) then begin
//      configs := TStringList.Create;
//      configs.LoadFromFile(fileName);
//      with DMMain.zconMain do begin
//        HostName := configs[0];
//        port := configs[1].toInt;
//        Database := 'comercio';
//        Connect;
//      end;
//    end;
//
//  except
//
//  end;
end;

procedure TDMMain.setAccesslevel(level: Integer);
begin
  accessLevel := level;
end;

procedure TDMMain.setUsername(username: string);
begin
  self.username := username;
end;

procedure TDMMain.reset();
begin
  setUsername('');
  setAccesslevel(0);
end;

end.

