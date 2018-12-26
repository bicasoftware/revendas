unit StringHelper;

interface

uses
  System.SysUtils, System.Variants, System.Classes;

type
  TStringHelper = record helper for string
    function toInt: Integer;
    function isEmpty: Boolean;
    function isNotEmpty: Boolean;
    function isNotNull : Boolean;
    function isNull: Boolean;
    function isNotNullNorEmpty: Boolean;
  end;

implementation

{ TStringHelper }

function TStringHelper.isEmpty: Boolean;
begin
  Result := Self = '';
end;

function TStringHelper.isNotEmpty: Boolean;
begin
  Result := Self <> '';
end;

function TStringHelper.isNotNull: Boolean;
begin
  result := self <> null;
end;

function TStringHelper.isNotNullNorEmpty: Boolean;
begin
  Result := self.isNotNull and self.isNotEmpty;
end;

function TStringHelper.isNull: Boolean;
begin
  result := self = null;
end;

function TStringHelper.toInt: Integer;
begin
  result := strtoint(StringReplace(Trim(self), '_','',[rfReplaceAll]));
end;

end.

