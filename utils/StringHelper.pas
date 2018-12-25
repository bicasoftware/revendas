unit StringHelper;

interface

uses
  System.SysUtils, System.Variants, System.Classes;

type
  TStringHelper = record helper for string
    function toInt: Integer;
    function isEmpty: Boolean;
    function isNotEmpty: Boolean;
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

function TStringHelper.toInt: Integer;
begin
  result := strtoint(self);
end;

end.

