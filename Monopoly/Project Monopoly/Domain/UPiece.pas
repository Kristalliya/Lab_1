unit UPiece;

interface

uses USquare;

type
  IPiece = class
    function getLocation: TSquare;virtual;abstract;
    procedure setLocation(location: TSquare);virtual;abstract;
  end;

  TPiece = class(IPiece)
  private
    location: TSquare;
  published
    constructor create(location: TSquare);
  public
    function getLocation: TSquare;override;
    procedure setLocation(location: TSquare);override;
  end;

implementation

{ TPiece }

constructor TPiece.create(location: TSquare);
begin
  self.location := location;
end;

function TPiece.getLocation: TSquare;
begin
  result := location;
end;

procedure TPiece.setLocation(location: TSquare);
begin
  self.location := location;
end;

end.
