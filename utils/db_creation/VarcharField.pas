unit VarcharField;

interface

uses
  SQLField, StringHelper, IntHelper;

type
  TVarcharField = class(TSQLField)
  private
    var
      fieldName: string;
      size: Integer;
      nullable: Boolean;
      default: string;
  protected
    function getCreateSQL: string; override;
  public
    constructor Create(fieldName: string; size: Integer; nullable: Boolean; default: string);
  published
    { published declarations }
  end;

implementation

constructor TVarcharField.Create(fieldName: string; size: Integer; nullable: Boolean; default:
  string);
begin
  self.fieldName := fieldName;
  Self.size := size;
  Self.nullable := nullable;
  Self.default := default;
end;

function TVarcharField.getCreateSQL: string;
begin
  Result := fieldName + '(' + size.toString + ')';
  if (not nullable) then begin
    result := result + ' not null';
  end;

  if (default.isNotEmpty) then begin
    result := result + ' default ' + default;
  end;
end;

end.

