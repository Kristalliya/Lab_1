unit USquare;

interface

type
  TSquare = class
  private
    name: string;
    nextSquare: TSquare;
    index: integer;
  published
     constructor create(name: string; index: integer);
  public
    procedure setNextSquare(s: TSquare);
    function getNextSquare: TSquare;
    function getName: String;
    function getIndex: integer;
  end;

implementation

{ TSquare }

constructor TSquare.create(name: string; index: integer);
begin
  self.name := name;
  self.index := index;
end;

function TSquare.getIndex: integer;
begin
  result := index;
end;

function TSquare.getName: String;
begin
  result := name;
end;

function TSquare.getNextSquare: TSquare;
begin
  result := nextSquare;
end;

procedure TSquare.setNextSquare(s: TSquare);
begin
  nextSquare := s;
end;

end.
