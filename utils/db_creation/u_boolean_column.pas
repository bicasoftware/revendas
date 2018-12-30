unit u_boolean_column;

interface

uses
  SQLField, System.SysUtils;

type
  TBooleanColumn = class(TSQLField)
  private
    var
      fieldName: string;
      default: Boolean;
  public
    constructor create(fieldName: String; default: boolean);
    function getCreateSQL: String; override;
  end;

implementation

{ TBooleanColumn }

constructor TBooleanColumn.create(fieldName: String; default: boolean);
begin
  self.fieldName := fieldName;
  self.default := default;
end;

function TBooleanColumn.getCreateSQL: String;
begin
  Result := fieldName + ' BOOLEAN NOT NULL DEFAULT ' + booltostr(default, true);
end;

end.
