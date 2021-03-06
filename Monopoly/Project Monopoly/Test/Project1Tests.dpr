program Project1Tests;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  TestUBoard in 'TestUBoard.pas',
  UBoard in '..\Domain\UBoard.pas',
  TestUDie in 'TestUDie.pas',
  UDie in '..\Domain\UDie.pas',
  TestUMonopolyGame in 'TestUMonopolyGame.pas',
  UMonopolyGame in '..\Domain\UMonopolyGame.pas',
  TestUPiece in 'TestUPiece.pas',
  UPiece in '..\Domain\UPiece.pas',
  TestUPlayer in 'TestUPlayer.pas',
  UPlayer in '..\Domain\UPlayer.pas',
  TestUSquare in 'TestUSquare.pas',
  USquare in '..\Domain\USquare.pas';

{$R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

