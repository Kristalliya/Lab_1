unit USquare;

interface

type
  TSquare = class;
  ISquare = class            //TSquare
    procedure setNextSquare(s: TSquare);virtual;abstract;
    function getNextSquare: TSquare;virtual;abstract;
    function getName: string;virtual;abstract;
    function getIndex: integer;virtual;abstract;
    function landedOn: TSquare;virtual;abstract;
  end;

  TSquare = class(ISquare)
  private
    name: string;
    nextSquare: TSquare;
    index: integer;
  published
    constructor create(name: string; index: integer);
  public
    procedure setNextSquare(s: TSquare);override;
    function getNextSquare: TSquare;override;
    function getName: String;override;
    function getIndex: integer;override;
    function landedOn: TSquare;override; // TList
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

function TSquare.landedOn: TSquare;
begin
  //
end;

procedure TSquare.setNextSquare(s: TSquare);
begin
  nextSquare := s;
end;

end.
