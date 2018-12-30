unit u_integer_column;

interface

uses
  SQLField, IntHelper;

type
  TIntegerType = (itInt, itTinyInt, itSmallInt, itLong);

  TIntegerColumn = class(TSQLField)
  private
    var
      fieldType: TIntegerType;
      fieldName: string;
      nullable: Boolean;
      default: Integer;
  protected
  public
    function getCreateSQL: string; override;
    constructor Create(fieldType: TIntegerType; fieldName: string; nullable: Boolean; default:
      Integer);
  published
  end;

implementation

{ TIntegerColumn }

constructor TIntegerColumn.Create(fieldType: TIntegerType; fieldName: string; nullable: Boolean;
  default: Integer);
begin
  self.fieldType := fieldType;
  Self.fieldName := fieldName;
  Self.nullable := nullable;
  self.default := default;
end;

function TIntegerColumn.getCreateSQL: string;
begin
  case self.fieldType of
    itInt: Result := fieldName + ' INTEGER ';
    itTinyInt: Result := fieldName + ' TINYINT ';
    itSmallInt: Result := fieldName + ' SMALLINT ';
    itLong: Result := fieldName + ' LONGINT ';
  end;
  Result := result + isNullable(nullable) + ' DEFAULT ' + default.toString;
end;

end.

