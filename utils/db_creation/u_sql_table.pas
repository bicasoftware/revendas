unit u_sql_table;

interface

uses
  SQLField, System.Generics.Collections, System.Classes;

type
  TSQLTable = class(TObject)
  private
    var
      tableName: string;
      fields: TList<TSQLField>;
  protected
  public
    constructor Create(tableName: string);
    procedure addField(newField: TSQLField);
    function generateCreateSyntax: string;
  published
  end;

implementation

{ TSQLTable }

procedure TSQLTable.addField(newField: TSQLField);
begin
  self.fields.Add(newField);
end;

constructor TSQLTable.Create(tableName: string);
var
  lista: TList<String>;
begin
  fields := TList<TSQLField>.Create();
  self.tableName := tableName;
end;

function TSQLTable.generateCreateSyntax: string;
var
  f: TSQLField;
  i: Integer;
  sql: TStringList;
begin

  sql := TStringList.Create;
  for i := 0 to Self.fields.Count - 1 do begin
    f := fields[i];
    sql.Add(f.getCreateSQL);
  end;

  result := sql.CommaText;

end;

end.

