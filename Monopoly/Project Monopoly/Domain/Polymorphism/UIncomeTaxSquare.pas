unit UIncomeTaxSquare;

interface

uses USquare;

type
  TIncomeTaxSquare = class(TSquare)
  public
    function landedOn: TSquare; override; // TList
  end;

implementation

{ TIncomeTaxSquare }

function TIncomeTaxSquare.landedOn: TSquare;
begin
  //
end;

end.
