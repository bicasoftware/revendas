unit IntHelper;

interface

uses
  System.SysUtils, System.Variants, System.Classes;

type
  TIntHelper = record helper for Integer
    function toString: string;
  end;

implementation

{ TIntHelper }

function TIntHelper.toString: string;
begin
  result := IntToStr(self);
end;

end.

