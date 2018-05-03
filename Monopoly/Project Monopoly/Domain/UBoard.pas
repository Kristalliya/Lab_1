unit UBoard;

interface

uses USquare, Classes, SysUtils, Generics.Collections, Generics.Defaults;

type
  IBoard = class
    function getSquare(start: TSquare; distance: Integer): TSquare;virtual;abstract;
    function getStartSquare: TSquare;virtual;abstract;
    procedure buildSquares;virtual;abstract;
    procedure build(i: Integer);virtual;abstract;
    procedure linkSquares;virtual;abstract;
    procedure link(i: Integer);virtual;abstract;
  end;

  TBoard = class(IBoard)
  const
    SIZE = 40;
  private
    squares: TList<TSquare>;
  published
    constructor create;
  public
    function getSquare(start: TSquare; distance: Integer): TSquare;override;
    function getStartSquare: TSquare;override;
    procedure buildSquares; override;
    procedure build(i: Integer);override;
    procedure linkSquares; override;
    procedure link(i: Integer);override;
  end;

implementation

{ TBoard }

procedure TBoard.build(i: Integer);
var
  s: TSquare;
begin
  s := TSquare.create('Square ' + IntToStr(i), i);    ///
  squares.Add(s);
end;

procedure TBoard.buildSquares;
var
  i: Integer;
begin
  squares := TList<TSquare>.create;
  for i := 0 to (SIZE - 1) do           //от 0 до 39
    build(i);
end;

constructor TBoard.create;
begin
  buildSquares;
  linkSquares;
end;

function TBoard.getSquare(start: TSquare; distance: Integer): TSquare;
var
  endIndex: Integer;
begin
  endIndex := ((start.getIndex + distance) mod 40);///
  if endIndex=0 then endIndex:=1;    ////
  result := squares.Items[endIndex];
end;

function TBoard.getStartSquare: TSquare;
begin
  result := squares.First;
end;

procedure TBoard.link(i: Integer);
var
  current, next: TSquare;
begin
  current := squares.Items[i];
  {if (i+1)<>size then }
  next := squares.Items[i];//+1];/////////
  current.setNextSquare(next);
end;

procedure TBoard.linkSquares;
var
  i: Integer;
  First, last: TSquare;
begin
  for i := 0 to (SIZE - 1) do
    link(i);
  First := squares.First;
  last := squares.last;
  last.setNextSquare(First);
end;

end.
