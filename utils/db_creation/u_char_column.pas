unit u_char_column;

interface

uses
  SQLField, StringHelper, IntHelper;

type
  TCharType = (ctVarchar, ctChar, ctText);

  TCharColumn = class(TSQLField)
  private
    var
      fieldType: TCharType;
      fieldName: String;
      size: Integer;
      nullable: Boolean;
      default: string;
  protected
  public
    function getCreateSQL: string; override;
    constructor Create(fieldType: TCharType; fieldName: string; size: integer; nullable: Boolean;
      default: string);
  published
  end;

implementation

{ TVarcharColumn }

constructor TCharColumn.Create(fieldType: TCharType; fieldName: string; size: integer;
  nullable: Boolean; default: string);
begin
  self.fieldType := fieldType;
  self.fieldName := fieldName;
  self.size:= size;
  self.nullable := nullable;
  self.default := default;
end;

function TCharColumn.getCreateSQL: string;
begin
  Result := fieldName;
  case self.fieldType of
    ctVarchar: Result := result + ' VARCHAR(' + Self.size.toString + ') ';
    ctChar: Result := result + ' CHAR(' + Self.size.toString + ') ';
    ctText: Result := result + ' TEXT ';
  end;
  Result := result + isNullable(nullable) + getDefault(default);
end;

end.

