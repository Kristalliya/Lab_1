unit UDie;

interface

type
  IDie = class
    procedure roll;virtual;abstract;
    function getFaceValue: integer;virtual;abstract;
  end;

  TDie = class(IDie)
  const
    Max = 6;
  private
    faceValue: integer;
  published
    constructor create;
  public
    Procedure roll;override;
    function getFaceValue: integer;override;
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
