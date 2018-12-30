unit SQLField;

interface

uses
  field_types, StringHelper;

type
  TSQLField = class
  protected
    function isNullable(n: Boolean): string;
  public
    function getCreateSQL: string; dynamic; abstract;
    function getDefault<T>(value: T): string;
  end;

implementation

function TSQLField.getDefault<T>(value: T): string;
var
  def: string;
begin
  def := PString(@value)^;
  if (TypeInfo(T) = TypeInfo(string)) then begin
    result := 'default "' + def + '" ';
  end
  else if (TypeInfo(T) = TypeInfo(Integer)) then begin
    result := 'default ' + def + ' ';
  end
//  else if (TypeInfo(value) = TypeInfo(Boolean)) then begin
//    result := 'default ' + value + ' ';
//  end;
end;

function TSQLField.isNullable(n: Boolean): string;
begin
  Result := '';
  if (not n) then begin
    result := ' not null ';
  end;
end;

end.

