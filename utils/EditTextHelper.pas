unit EditTextHelper;

interface

uses
  System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TEditTextHelper = class helper for TCustomEdit
    function isEmpty: Boolean;
    function isNotEmpty: Boolean;
    function trimmedText: string;
  end;

implementation

{ TEditTextHelper }

function TEditTextHelper.isEmpty: Boolean;
begin
  result := Self.trimmedText = '';
end;

function TEditTextHelper.isNotEmpty: Boolean;
begin
  result := Self.trimmedText <> '';
end;

function TEditTextHelper.trimmedText: string;
begin
  result := Trim(Self.Text);
end;

end.

