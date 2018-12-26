unit ConfigFileReader;

interface

uses
  System.SysUtils, System.Classes;

type
  TConfigFileReader = class
  private
    var
      content: TStringList;

    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
    constructor Create(AOwner: TComponent);
    procedure read;
    function getConfigFileDir: string;
    function doConfigFileExist: Boolean;
    procedure saveFile();
    procedure setHostPort(host: String; port: string);
    function getHost: string;
    function getPort: string;
  published
    { published declarations }
  end;

implementation

uses
  StringHelper, IntHelper;

{ TConfigFileReader }

constructor TConfigFileReader.Create(AOwner: TComponent);
begin
  content := TStringList.Create;
end;

procedure TConfigFileReader.read();
begin
  content.LoadFromFile(getConfigFileDir);
end;

function TConfigFileReader.doConfigFileExist: Boolean;
begin
  Result := FileExists(getConfigFileDir)
end;

function TConfigFileReader.getConfigFileDir: string;
begin
  Result := GetCurrentDir + '/configs.ini';
end;

function TConfigFileReader.getHost: string;
begin
  Result := content[0];
end;

function TConfigFileReader.getPort: string;
begin
  Result := content[1];
end;

procedure TConfigFileReader.saveFile;
begin
  content.SaveToFile(getConfigFileDir);
end;

procedure TConfigFileReader.setHostPort(host: string; port: string);
begin
  if (content.Count = 0) then begin
    content.Add(host);
    content.add(port);
  end
  else begin
    content[0] := host;
    content[1] := port;
  end;
end;

end.

