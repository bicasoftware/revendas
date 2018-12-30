unit u_decimal_column;

interface

uses
  SQLField, System.SysUtils;

type
  TDecimalColumn = class(TSQLField)
  private
    var
      fieldName: string;
      nullable: Boolean;
      default: Double;
  public
    function getCreateSQL: string; override;
    constructor Create(fieldName: string; default: Double);
  published
  end;

implementation

{ TDecimalColumn }

constructor TDecimalColumn.Create(fieldName: string; default: Double);
begin
  self.fieldName := fieldName;
  self.default := default;
end;

function TDecimalColumn.getCreateSQL: string;
begin
  result := fieldName +' NOT NULL DEFAULT ' + FloatToStr(default);
end;

end.

