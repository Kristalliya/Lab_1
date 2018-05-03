unit UMonopolyGame;

interface

uses UBoard, UDie, UPlayer, SysUtils, Generics.Collections, Generics.Defaults;

type
  IMonopolyGame = class
    procedure playGame;virtual;abstract;
    function getPlayers: TList<TPlayer>;virtual;abstract;
    procedure playRound;virtual;abstract;
  end;

  TMonopolyGame = class(IMonopolyGame)
  const
    ROUNDS_TOTAL = 20;
    PLAYERS_TOTAL = 2;
  private
    Players: TList<TPlayer>;
    board: TBoard;
    dice: TDie;
  published
    constructor create;
  public
    procedure playGame;override;
    function getPlayers: TList<TPlayer>;override;
    procedure playRound;override;
  end;

implementation

{ TMonopolyGame }

constructor TMonopolyGame.create;
var
  p: TPlayer;
begin
  dice := TDie.create;/// ///
  Players := TList<TPlayer>.create;/// //////
  board := TBoard.create;/// /////
  p := TPlayer.create('Лошадь', dice, board);
  Players.add(p);
  p := TPlayer.create('Автомобиль', dice, board);
  Players.add(p);
end;

function TMonopolyGame.getPlayers: TList<TPlayer>;
begin
  result := Players;
end;

procedure TMonopolyGame.playGame;
var
  i: integer;
begin
  for i := 0 to ROUNDS_TOTAL do
    playRound;
end;

procedure TMonopolyGame.playRound;
var
  Player: TPlayer;
begin
  for Player in Players do
    Player.takeTurn;
end;

end.
