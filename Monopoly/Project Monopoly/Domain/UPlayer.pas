unit UPlayer;

interface

uses UPiece, UBoard, UDie, USquare, SysUtils, Generics.Collections,Generics.Defaults;

type
  TPlayer = class
  private
    name: String;
    piece: TPiece;
    board: TBoard;
    dice: TList<TDie>;
  published
    constructor create(name: String; dice: TDie; board: TBoard);
  public
    procedure takeTurn;
    function getLocation: TSquare;
    function getName: String;
  end;


implementation

uses Unit1,UCup;
{ TPlayer }

constructor TPlayer.create(name: String; dice: TDie; board: TBoard);
begin
  self.name := name;
  self.dice := TList<TDie>.create;
  self.dice.add(dice);
  //self.dice.add(dice);//self.dice.add(dice);self.dice.add(dice);
  self.board := board;
  piece := TPiece.create(board.getStartSquare);
end;

function TPlayer.getLocation: TSquare;
begin
  result := piece.getLocation;
end;

function TPlayer.getName: String;
begin
  result := name;
end;

procedure TPlayer.takeTurn;
var
  rollTotal, i: Integer;
  newLoc: TSquare;
begin
  rollTotal := 0;
  {for i := 0 to dice.count - 1 do
  begin
    dice.Items[i].roll;
    rollTotal := rollTotal + self.dice.Items[i].getFaceValue;/// /////self.dice
    //Form1.Label3.Caption:='Второму игроку выпало: '+IntToStr(rollTotal);///
  end;}
  //rollTotal:=TCup.getTotal(dice);   //почему не вызывает? где ошибка?
  newLoc := board.getSquare(piece.getLocation, rollTotal);
  piece.setLocation(newLoc);
end;

end.
