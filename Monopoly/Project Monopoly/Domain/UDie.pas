unit UDie;

interface

type
  TDie = class
  const
    Max = 6;
  private
    faceValue: integer;
  published
    constructor create;
  public
    Procedure roll;
    function getFaceValue: integer;
  end;

implementation

{ TDie }

constructor TDie.create;
begin
  roll;
end;

function TDie.getFaceValue: integer;
begin
  result := faceValue;
end;

procedure TDie.roll;
begin
  faceValue := random(Max) + 1;
end;

end.
